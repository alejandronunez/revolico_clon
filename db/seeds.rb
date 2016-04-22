# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#ParentCategoy
ParentCategory.all.destroy_all
pc1 = ParentCategory.create(name: 'Computadoras')
pc4 = ParentCategory.create(name: 'Viviendas')
pc2 = ParentCategory.create(name: 'Compra / Venta')
pc6 = ParentCategory.create(name: 'Empleos')
pc3 = ParentCategory.create(name: 'Servicios')
pc5 = ParentCategory.create(name: 'Autos')

#Category
Category.all.destroy_all
Category.create(name: 'Pc de Escritorio',parent_category: pc1)
Category.create(name: 'Microprocesador',parent_category: pc1)
Category.create(name: 'Motherboard ',parent_category: pc1)
Category.create(name: 'Disco',parent_category: pc1)
Category.create(name: 'Chasis/Fuente ',parent_category: pc1)
Category.create(name: 'Tarjeta de Video',parent_category: pc1)
Category.create(name: 'Tarjeta de Sonido/Bocinas',parent_category: pc1)
Category.create(name: 'Quemador/Lector DVD/CD ',parent_category: pc1)
Category.create(name: 'Backup/UPS ',parent_category: pc1)
Category.create(name: 'Impresora/Cartuchos',parent_category: pc1)
Category.create(name: 'Modem/Wifi/Red',parent_category: pc1)
Category.create(name: 'Webcam/Microf/Audífono ',parent_category: pc1)
Category.create(name: 'Teclado/Mouse',parent_category: pc1)
Category.create(name: 'Internet/Email',parent_category: pc1)
Category.create(name: 'CD/DVD Virgen',parent_category: pc1)
Category.create(name: 'Internet/Email',parent_category: pc1)
Category.create(name: 'Otros',parent_category: pc1)
Category.create(name: 'Internet/Email',parent_category: pc1)

Category.create(name: 'Celulares/Líneas/Accesorios',parent_category: pc2)
Category.create(name: 'Reproductor MP3/MP4/IPOD',parent_category: pc2)
Category.create(name: 'Reproductor DVD/VCD/DVR',parent_category: pc2)
Category.create(name: 'Televisor',parent_category: pc2)
Category.create(name: 'Cámara Foto/Video',parent_category: pc2)
Category.create(name: 'Aire Acondicionado',parent_category: pc2)
Category.create(name: 'Consola Videojuego/Juegos',parent_category: pc2)
Category.create(name: 'Satélite',parent_category: pc2)
Category.create(name: 'Electrodomésticos',parent_category: pc2)
Category.create(name: 'Muebles/Decoración',parent_category: pc2)
Category.create(name: 'Ropa/Zapato/Accesorios',parent_category: pc2)
Category.create(name: 'Intercambio/Regalo',parent_category: pc2)
Category.create(name: 'Mascotas/Animales',parent_category: pc2)
Category.create(name: 'Divisas',parent_category: pc2)
Category.create(name: 'Libros/Revistas',parent_category: pc2)
Category.create(name: 'Joyas/Relojes',parent_category: pc2)
Category.create(name: 'Antiguedades/Colección',parent_category: pc2)
Category.create(name: 'Implementos Deportivos',parent_category: pc2)
Category.create(name: 'Arte',parent_category: pc2)
Category.create(name: 'Otros',parent_category: pc2)

Category.create(name: 'Clases/Cursos',parent_category: pc3)
Category.create(name: 'Informática/Programación',parent_category: pc3)
Category.create(name: 'Películas/Series/Videos',parent_category: pc3)
Category.create(name: 'Limpieza/Doméstico',parent_category: pc3)
Category.create(name: 'Foto/Video',parent_category: pc3)
Category.create(name: 'Construcción/Mantenimiento',parent_category: pc3)
Category.create(name: 'Reparación Electrónica',parent_category: pc3)
Category.create(name: 'Peluquería/Barbería/Belleza',parent_category: pc3)
Category.create(name: 'Restaurantes/Gastronomía',parent_category: pc3)
Category.create(name: 'Diseño/Decoración ',parent_category: pc3)
Category.create(name: 'Música/Animación/Shows ',parent_category: pc3)
Category.create(name: 'Relojero/Joyero',parent_category: pc3)
Category.create(name: 'Gimnasio/Masaje/Entrenador',parent_category: pc3)
Category.create(name: 'Otros',parent_category: pc3)

Category.create(name: 'Compra/Venta',parent_category: pc4)
Category.create(name: 'Permuta',parent_category: pc4)
Category.create(name: 'Alquiler a cubanos',parent_category: pc4)
Category.create(name: 'Alquiler a extranjeros',parent_category: pc4)
Category.create(name: 'Casa en la playa',parent_category: pc4)

Category.create(name: 'Carros',parent_category: pc5)
Category.create(name: 'Motos',parent_category: pc5)
Category.create(name: 'Bicicletas',parent_category: pc5)
Category.create(name: 'Piezas/Accesorios',parent_category: pc5)
Category.create(name: 'Alquiler',parent_category: pc5)
Category.create(name: 'Mecánico',parent_category: pc5)
Category.create(name: 'Otros',parent_category: pc5)

Category.create(name: 'Ofertas de empleo',parent_category: pc6)
Category.create(name: 'Busco empleo',parent_category: pc6)

Post.all.destroy_all