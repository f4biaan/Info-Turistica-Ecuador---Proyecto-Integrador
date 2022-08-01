<!-- # Info-Turistica-Ecuador---Proyecto-Integrador -->

# PROYECTO INTEGRADOR

El proyecto integrador de saberes se orienta a la realización de análisis de datos complementando el componente de base de datos para el procesamiento de la data y creación de la base de dato y el componente de programación para realizar análisis estadísticos y extracción de información desde la base de datos creada con el SGBD MySQL. 

# Integrantes
* [Arianna Ramón](https://github.com/Arianna0206)
* [Fabián Montoya](https://github.com/f4biaan)
* [Giovanni Villavicencio](https://github.com/GiovanniVV)
* [Jandry Jaramillo](https://github.com/JandryJaramillo)

# Tutores
* [Eduardo Encalada](https://github.com/aeencalada)
* [Jorge López](https://github.com/jorgaf)

## [COMPONENTE DE BASE DE DATOS](https://github.com/f4biaan/Info-Turistica-Ecuador---Proyecto-Integrador/tree/main/ComponenteBaseDatos)

### [Preprocesamiento de datos](https://github.com/f4biaan/Info-Turistica-Ecuador---Proyecto-Integrador/tree/main/ComponenteBaseDatos/Data-Preprocesamiento)

* Corrección de la data recuperada del Ministerio de turismo, y agregación de nueva información para obtener mas información de la que se puede obtener con la Data original.

### [Creación de la base de datos y carga de datos](https://github.com/f4biaan/Info-Turistica-Ecuador---Proyecto-Integrador/tree/main/ComponenteBaseDatos/DataBase)

* [Modelado](https://github.com/f4biaan/Info-Turistica-Ecuador---Proyecto-Integrador/tree/main/ComponenteBaseDatos/DataBase/ModeladoBaseDatos) de la base de datos: [Modelo E/R](https://github.com/f4biaan/Info-Turistica-Ecuador---Proyecto-Integrador/blob/main/ComponenteBaseDatos/DataBase/ModeladoBaseDatos/EntidadRelacion-Model.drawio.png) y [Modelo Lógico](https://github.com/f4biaan/Info-Turistica-Ecuador---Proyecto-Integrador/blob/main/ComponenteBaseDatos/DataBase/ModeladoBaseDatos/Modelo-Logico.png)
* [Script DDL](https://github.com/f4biaan/Info-Turistica-Ecuador---Proyecto-Integrador/blob/main/ComponenteBaseDatos/DataBase/DDL-cracionDB-cargaData-MySQL.sql) para la creación de la base de datos, [carga de la data](https://github.com/f4biaan/Info-Turistica-Ecuador---Proyecto-Integrador/tree/main/ComponenteBaseDatos/DataBase/CargarData), creacion y asignación de permisos a un usuario para realizar la conexión y posteriores consultas a la base de datos

### [Otros archivos](https://github.com/f4biaan/Info-Turistica-Ecuador---Proyecto-Integrador/tree/main/ComponenteBaseDatos/ExtraccionData-from-BD)

* [Extracción de datos](https://github.com/f4biaan/Info-Turistica-Ecuador---Proyecto-Integrador/tree/main/ComponenteBaseDatos/ExtraccionData-from-BD) por medio de consulta SQL a la Base de Datos creada

---

## [COMPONENTE DE PROGRAMACIÓN](https://github.com/f4biaan/Info-Turistica-Ecuador---Proyecto-Integrador/tree/main/ComponenteProgramacion)

### [Notebook Zeppelin](https://github.com/f4biaan/Info-Turistica-Ecuador---Proyecto-Integrador/blob/main/ComponenteProgramacion/ComponenteProgramacion-PI_2H83H5BHK.zpln)

* NoteBook donde se encuentran las sentencias realizadas para los análisis estadísticos tanto con lenguaje Scala y SQL, con la Base de Datos MySQL y Data almacenada en Dataframes.

### [Otros archivos](https://github.com/f4biaan/Info-Turistica-Ecuador---Proyecto-Integrador/tree/main/ComponenteProgramacion/data-clean-consultas)

* Data de [establecientos](https://github.com/f4biaan/Info-Turistica-Ecuador---Proyecto-Integrador/blob/main/ComponenteProgramacion/data-clean-consultas/ESTABLECIMIENTOS.csv) procesada que se ha utilizado para realizar análisis con la Data original sin agregaciones de datos.

* Data de [capacidad de provincias para hospedaje](https://github.com/f4biaan/Info-Turistica-Ecuador---Proyecto-Integrador/blob/main/ComponenteProgramacion/data-clean-consultas/CAPACIDADES.csv) procesada para realizar análisis estadisticos relacionado con la capacidad en cuanto habitaciones y camas en cada canton y dependiendo de su categoria.

* [Metadata](https://github.com/f4biaan/Info-Turistica-Ecuador---Proyecto-Integrador/blob/main/ComponenteProgramacion/Reglamento%20Tur%C3%ADstico%20de%20Alimentos%20y%20Bebidas.pdf)  de las categorias de los establecimientos de Alimentación y Bebida que han sido extraidos del [Reglamento Turístico de Alimentos y Bebidas](https://www.gob.ec/sites/default/files/regulations/2018-10/Reglamento%20Tur%C3%ADstico%20de%20Alimentos%20y%20Bebidas.pdf)

---
## [Memoria final](https://github.com/f4biaan/Info-Turistica-Ecuador---Proyecto-Integrador/blob/main/MemoriaFinal-ProyectoIntegrador-Practicum1-2.pdf)

En este [documento](https://github.com/f4biaan/Info-Turistica-Ecuador---Proyecto-Integrador/blob/main/MemoriaFinal-ProyectoIntegrador-Practicum1-2.pdf) se puede encontrar un resumen donde se detalla cada una de las fases en que se realizado el presente proyecto de análisis de información de establecimientos de Ecuador que se han registrado en el Ministerio de turismo
