use catastro_turistico;

SELECT 'id_establecimiento', 'nombre_comercial', 'direccion', 'referencia', 'pet_friendly',
		'puntuacion', 'id_categoria_1', 'categoria_1', 'id_categoria_2', 'categoria_2',
        'id_actividad', 'actividad', 'id_sub_actividad', 'sub_actividad', 'codigo_parroquia', 'parroquia',
        'codigo_canton', 'canton', 'codigo_provincia', 'provincia', 'codigo_clima', 'clima', 'correo', 'web',
        'web_funcional', 'telefono_principal', 'telefono_secundario'
UNION ALL
SELECT e.id_estab, e.nombre_comercial, e.direccion, e.referencia, e.pet_friendly, e.puntuacion, 
		cat1.id_categoria, cat1.nombre, cat2.id_categoria, cat2.nombre, a.id_act, a.actividad, 
        sa.id_sub_act, sa.sub_actividad, parr.cod_parroquias, parr.nombre, can.cod_canton, 
        can.nombre, pro.cod_provincia, pro.nombre, cli.cod_clima, cli.descripcion,
        c.correo, c.web, c.web_funcional, c.tel_principal, c.tel_secundario
FROM establecimientos e 
	LEFT JOIN contacto c ON e.id_contacto = c.id_contacto
    LEFT JOIN sub_actividades sa ON e.id_sub_act = sa.id_sub_act
    LEFT JOIN actividades a ON sa.id_act = a.id_act
    LEFT JOIN categorias cat1 ON e.id_categoria_1 = cat1.id_categoria
    LEFT JOIN categorias cat2 ON e.id_categoria_2 = cat2.id_categoria
    LEFT JOIN parroquias parr ON e.cod_parroquias = parr.cod_parroquias
    LEFT JOIN cantones can ON parr.cod_canton = can.cod_canton
    LEFT JOIN provincias pro ON can.cod_provincias = pro.cod_provincia
    LEFT JOIN climas cli ON can.cod_clima = cli.cod_clima
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/DatosBD-ProyectoIntegrador/establecimientos.csv'
FIELDS TERMINATED BY '|' ENCLOSED BY '"' LINES TERMINATED BY '\n';
    
SELECT 'id_guia', 'nombre', 'correo', 'emision_licencia', 'nacionalidad_1', 'nacionalidad_2',
	'id_clase_guia', 'clase_guia', 'cod_idioma', 'idioma', 'codigo_provincia', 'provincia', 
    'codigo_canton', 'canton'
UNION ALL
SELECT g.id_guia, g.nombre, g.correo, g.emision_licencia, g.nacionalidad_1, g.nacionalidad_2,
	cg.id_clase_guia, cg.descripcion, i.cod_idioma, i.nombre, p.cod_provincia, p.cod_provincia,
    c.cod_canton, c.nombre
FROM guias g
	LEFT JOIN clase_guia cg ON g.id_clase_guia = cg.id_clase_guia
    LEFT JOIN idioma_habla ih ON g.id_guia = ih.id_guia
    LEFT JOIN idiomas i ON ih.cod_idioma = i.cod_idioma
    LEFT JOIN cantones c ON g.cod_canton = c.cod_canton
    LEFT JOIN provincias p ON c.cod_provincias = p.cod_provincia
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/DatosBD-ProyectoIntegrador/guias.csv'
FIELDS TERMINATED BY '|' ENCLOSED BY '"' LINES TERMINATED BY '\n';

SELECT 'id_capacidad', 'num_habitaciones', 'num_camas', 'id_categoria', 'categoria',
	'id_actividad', 'actividad', 'id_sub_actividad', 'sub_actividad', 'codigo_provincia',
    'provincia', 'cod_canton', 'canton', 'codigo_clima',  'clima'
UNION ALL
SELECT c.id_capacidad, c.habitaciones, c.camas, cat.id_categoria, cat.nombre,
	a.id_act, a.actividad, sa.id_sub_act, sa.sub_actividad, p.cod_provincia,
    p.nombre, can.cod_canton, can.nombre, cli.cod_clima, cli.descripcion
FROM capacidad c
	LEFT JOIN categorias cat ON c.id_categoria = cat.id_categoria
    LEFT JOIN sub_actividades sa ON c.id_sub_act = sa.id_sub_act
    LEFT JOIN actividades a ON sa.id_act = a.id_act
    LEFT JOIN cantones can ON c.cod_canton = can.cod_canton
    LEFT JOIN provincias p ON can.cod_provincias = p.cod_provincia
    LEFT JOIN climas cli ON can.cod_clima = cli.cod_clima
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/DatosBD-ProyectoIntegrador/capacidad-alojamiento.csv'
FIELDS TERMINATED BY '|' ENCLOSED BY '"' LINES TERMINATED BY '\n';