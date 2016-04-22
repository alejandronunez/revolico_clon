class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all
  end

  def index_front

    @parent_category = ParentCategory.find(params['parent_category_id'])
    @title = @parent_category.name
    if(params['category_id'])
      @category = @parent_category.categories.find(params['category_id'])
      @posts = @category.posts.order(:created_at => 'desc')
      @title = @title + ' >> ' + @category.name
      @action_url = '/home/find/' + params['parent_category_id'].to_s + '/' + params['category_id'].to_s
    else
      @posts = @parent_category.posts.order(:created_at => 'desc')
      @action_url = '/home/find/' + params['parent_category_id'].to_s
    end

    if(@params_find && @params_find['price_min'])
      @posts = @posts.where('price >= :price',:price => @params_find['price_min'])
    end

    # byebug
    if(@params_find && @params_find['price_max'])
      @posts = @posts.where('price <= :price',:price => @params_find['price_max'])
    end

    if(@params_find && @params_find['subject'])
      @posts = @posts.where('subject like :subject',:subject => '%'+@params_find['subject']+'%')
      # byebug
    end

    # @post = [{'price_min': 0,'price_max': 9999, 'subject':'']
    # byebug
  end

  def index_find
    @params_find = params.require(:post).permit(:price_min,:price_max,:subject)
    # params['parent_category_id'] = 13
    self.index_front
    render :index_front

  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    # byebug
  end

  # GET /posts/new
  def new
    @post = Post.new
    @categories = Category.all.collect{|category|[category.parent_category.name + ' >> '+ category.name,category.id]}
  end

  # GET /posts/1/edit
  def edit
    @categories = Category.all.collect{|category|[category.parent_category.name + ' >> '+ category.name,category.id]}
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)
# byebug
    respond_to do |format|
      if @post.save
        format.html { redirect_to root_path, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def home
    @parent_categories = ParentCategory.all
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:price,:subject,:email,:name,:phone,:content,:image1,:image2,:image3,:category_ids => [])


    end
end
