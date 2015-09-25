PGDMP                         s            CIMBUC    9.4.4    9.4.4 %    &           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            '           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false                        2615    16396 	   spectradb    SCHEMA        CREATE SCHEMA spectradb;
    DROP SCHEMA spectradb;
             CIMBUC    false            3           1247    16397    cedulas    DOMAIN     |   CREATE DOMAIN cedulas AS character varying(10)
	CONSTRAINT cedulas_check CHECK (((VALUE)::text ~ '^[V|E]\d{1,10}$'::text));
    DROP DOMAIN spectradb.cedulas;
    	   spectradb       CIMBUC    false    7            (           0    0    DOMAIN cedulas    COMMENT        COMMENT ON DOMAIN cedulas IS 'Las cedulas solo pueden ser o Venezolanas (V) o extranjeras (E). Ejemplo:

V26845931
E65324920';
         	   spectradb       CIMBUC    false    563            @           1247    16505    claves    DOMAIN     �   CREATE DOMAIN claves AS character varying(16) NOT NULL
	CONSTRAINT claves_check CHECK (((VALUE)::text ~ '^((?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,16})$'::text));
    DROP DOMAIN spectradb.claves;
    	   spectradb       CIMBUC    false    7            )           0    0    DOMAIN claves    COMMENT     �   COMMENT ON DOMAIN claves IS 'La clave debe comprender entre 8 y 16 caracteres, tener al menos 1 numero, 1 letra en mayuscula y 1 letra en minuscula.';
         	   spectradb       CIMBUC    false    576            !           1247    16401    fechas    DOMAIN     �   CREATE DOMAIN fechas AS character(10) NOT NULL
	CONSTRAINT fechas_check CHECK ((VALUE ~ '^(1[0-9][0-9][0-9]|2[0-9][0-9][0-9])-(0[1-9]|1[012])-(0[1-9]|1[0-9]|2[0-9]|3[01])$'::text));
    DROP DOMAIN spectradb.fechas;
    	   spectradb       CIMBUC    false    7            *           0    0    DOMAIN fechas    COMMENT     �   COMMENT ON DOMAIN fechas IS 'Las fechas deben tener el formato xxxx-xx-xx y deben comprenderse entre el anio 1000 y el anio 2999';
         	   spectradb       CIMBUC    false    545            #           1247    16403 	   fototipos    DOMAIN     �   CREATE DOMAIN fototipos AS character(1)
	CONSTRAINT fototipos_check CHECK (((((((VALUE ~ '1'::text) OR (VALUE ~ '2'::text)) OR (VALUE ~ '3'::text)) OR (VALUE ~ '4'::text)) OR (VALUE ~ '5'::text)) OR (VALUE ~ '6'::text)));
 !   DROP DOMAIN spectradb.fototipos;
    	   spectradb       CIMBUC    false    7            %           1247    16405    generos    DOMAIN        CREATE DOMAIN generos AS character(1) NOT NULL
	CONSTRAINT generos_check CHECK (((VALUE ~ 'M'::text) OR (VALUE ~ 'F'::text)));
    DROP DOMAIN spectradb.generos;
    	   spectradb       CIMBUC    false    7            C           1247    33033    palabras    DOMAIN     �   CREATE DOMAIN palabras AS character varying NOT NULL
	CONSTRAINT palabras_check CHECK (((VALUE)::text ~ '^([A-Z]+([ ]?[A-Z]?[A-Z]+)*)$'::text));
     DROP DOMAIN spectradb.palabras;
    	   spectradb       CIMBUC    false    7            '           1247    16411    roles    DOMAIN     �   CREATE DOMAIN roles AS character varying(15) NOT NULL
	CONSTRAINT roles_check CHECK (((((VALUE)::text ~ 'dermatologo'::text) OR ((VALUE)::text ~ 'investigador'::text)) OR ((VALUE)::text ~ 'administrador'::text)));
    DROP DOMAIN spectradb.roles;
    	   spectradb       CIMBUC    false    7            )           1247    16413    tipos_muestras    DOMAIN     �   CREATE DOMAIN tipos_muestras AS character varying(10) NOT NULL
	CONSTRAINT tipos_muestras_check CHECK ((((VALUE)::text ~ 'fototipo'::text) OR ((VALUE)::text ~ 'lesion'::text)));
 &   DROP DOMAIN spectradb.tipos_muestras;
    	   spectradb       CIMBUC    false    7            �            1259    16415    datos_adicionales    TABLE     �  CREATE TABLE datos_adicionales (
    cie_x real NOT NULL,
    cie_y real NOT NULL,
    cie_z real NOT NULL,
    cie_l real NOT NULL,
    cie_a real NOT NULL,
    cie_b real NOT NULL,
    coeficiente_absorcion real NOT NULL,
    coeficiente_esparcimiento real NOT NULL,
    indice_eritema real NOT NULL,
    id_datos_adicionales integer NOT NULL,
    datos_espectrales integer NOT NULL
);
 (   DROP TABLE spectradb.datos_adicionales;
    	   spectradb         CIMBUC    false    7            �            1259    16418 *   datos_adicionales_id_datos_adicionales_seq    SEQUENCE     �   CREATE SEQUENCE datos_adicionales_id_datos_adicionales_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE spectradb.datos_adicionales_id_datos_adicionales_seq;
    	   spectradb       CIMBUC    false    7    173            +           0    0 *   datos_adicionales_id_datos_adicionales_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE datos_adicionales_id_datos_adicionales_seq OWNED BY datos_adicionales.id_datos_adicionales;
         	   spectradb       CIMBUC    false    174            �            1259    16420    datos_espectrales    TABLE     t  CREATE TABLE datos_espectrales (
    nm_400 real NOT NULL,
    nm_410 real NOT NULL,
    nm_420 real NOT NULL,
    nm_430 real NOT NULL,
    nm_440 real NOT NULL,
    nm_450 real NOT NULL,
    nm_460 real NOT NULL,
    nm_470 real NOT NULL,
    nm_480 real NOT NULL,
    nm_490 real NOT NULL,
    nm_500 real NOT NULL,
    nm_510 real NOT NULL,
    nm_520 real NOT NULL,
    nm_530 real NOT NULL,
    nm_540 real NOT NULL,
    nm_550 real NOT NULL,
    nm_560 real NOT NULL,
    nm_570 real NOT NULL,
    nm_580 real NOT NULL,
    nm_590 real NOT NULL,
    nm_600 real NOT NULL,
    nm_610 real NOT NULL,
    nm_620 real NOT NULL,
    nm_630 real NOT NULL,
    nm_640 real NOT NULL,
    nm_650 real NOT NULL,
    nm_660 real NOT NULL,
    nm_670 real NOT NULL,
    nm_680 real NOT NULL,
    nm_690 real NOT NULL,
    nm_700 real NOT NULL,
    id_datos_espectrales integer NOT NULL
);
 (   DROP TABLE spectradb.datos_espectrales;
    	   spectradb         CIMBUC    false    7            �            1259    16423 *   datos_espectrales_id_datos_espectrales_seq    SEQUENCE     �   CREATE SEQUENCE datos_espectrales_id_datos_espectrales_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE spectradb.datos_espectrales_id_datos_espectrales_seq;
    	   spectradb       CIMBUC    false    7    175            ,           0    0 *   datos_espectrales_id_datos_espectrales_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE datos_espectrales_id_datos_espectrales_seq OWNED BY datos_espectrales.id_datos_espectrales;
         	   spectradb       CIMBUC    false    176            �            1259    16425    historia    TABLE       CREATE TABLE historia (
    cedula cedulas,
    nombre palabras NOT NULL,
    apellido palabras NOT NULL,
    fecha_nac fechas NOT NULL,
    fecha_ingreso fechas NOT NULL,
    sexo generos NOT NULL,
    fototipo fototipos,
    id_historia integer NOT NULL
);
    DROP TABLE spectradb.historia;
    	   spectradb         CIMBUC    false    547    7    579    579    563    545    545    549            �            1259    32901    historia_id_historia_seq    SEQUENCE     z   CREATE SEQUENCE historia_id_historia_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE spectradb.historia_id_historia_seq;
    	   spectradb       CIMBUC    false    177    7            -           0    0    historia_id_historia_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE historia_id_historia_seq OWNED BY historia.id_historia;
         	   spectradb       CIMBUC    false    181            �            1259    16439    muestra    TABLE     N  CREATE TABLE muestra (
    id_muestra integer NOT NULL,
    tipo_muestra tipos_muestras NOT NULL,
    fecha_muestra fechas NOT NULL,
    nombre_muestra palabras NOT NULL,
    area_muestra palabras NOT NULL,
    observaciones text,
    usuario cedulas NOT NULL,
    historia integer NOT NULL,
    datos_espectrales integer NOT NULL
);
    DROP TABLE spectradb.muestra;
    	   spectradb         CIMBUC    false    563    553    545    7    579    579            .           0    0    TABLE muestra    COMMENT     �   COMMENT ON TABLE muestra IS 'Esta tabla almacena los datos de una muestra, la cual es tomada por un usuario y perteneciente a una historia';
         	   spectradb       CIMBUC    false    178            �            1259    41325    muestra_datos_espectrales_seq    SEQUENCE        CREATE SEQUENCE muestra_datos_espectrales_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE spectradb.muestra_datos_espectrales_seq;
    	   spectradb       CIMBUC    false    178    7            /           0    0    muestra_datos_espectrales_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE muestra_datos_espectrales_seq OWNED BY muestra.datos_espectrales;
         	   spectradb       CIMBUC    false    183            �            1259    32912    muestra_historia_seq    SEQUENCE     v   CREATE SEQUENCE muestra_historia_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE spectradb.muestra_historia_seq;
    	   spectradb       CIMBUC    false    7    178            0           0    0    muestra_historia_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE muestra_historia_seq OWNED BY muestra.historia;
         	   spectradb       CIMBUC    false    182            �            1259    16445    muestra_id_muestra_seq    SEQUENCE     x   CREATE SEQUENCE muestra_id_muestra_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE spectradb.muestra_id_muestra_seq;
    	   spectradb       CIMBUC    false    178    7            1           0    0    muestra_id_muestra_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE muestra_id_muestra_seq OWNED BY muestra.id_muestra;
         	   spectradb       CIMBUC    false    179            �            1259    16447    usuario    TABLE     �   CREATE TABLE usuario (
    cedula cedulas NOT NULL,
    nombre palabras NOT NULL,
    apellido palabras NOT NULL,
    fecha_nac fechas NOT NULL,
    clave claves NOT NULL,
    rol roles NOT NULL,
    sexo generos NOT NULL
);
    DROP TABLE spectradb.usuario;
    	   spectradb         CIMBUC    false    551    7    579    549    576    545    563    579            2           0    0    TABLE usuario    COMMENT     K   COMMENT ON TABLE usuario IS 'Esta tabla almacena los datos de un usuario';
         	   spectradb       CIMBUC    false    180            �           2604    16453    id_datos_adicionales    DEFAULT     �   ALTER TABLE ONLY datos_adicionales ALTER COLUMN id_datos_adicionales SET DEFAULT nextval('datos_adicionales_id_datos_adicionales_seq'::regclass);
 X   ALTER TABLE spectradb.datos_adicionales ALTER COLUMN id_datos_adicionales DROP DEFAULT;
    	   spectradb       CIMBUC    false    174    173            �           2604    16454    id_datos_espectrales    DEFAULT     �   ALTER TABLE ONLY datos_espectrales ALTER COLUMN id_datos_espectrales SET DEFAULT nextval('datos_espectrales_id_datos_espectrales_seq'::regclass);
 X   ALTER TABLE spectradb.datos_espectrales ALTER COLUMN id_datos_espectrales DROP DEFAULT;
    	   spectradb       CIMBUC    false    176    175            �           2604    32903    id_historia    DEFAULT     n   ALTER TABLE ONLY historia ALTER COLUMN id_historia SET DEFAULT nextval('historia_id_historia_seq'::regclass);
 F   ALTER TABLE spectradb.historia ALTER COLUMN id_historia DROP DEFAULT;
    	   spectradb       CIMBUC    false    181    177            �           2604    16456 
   id_muestra    DEFAULT     j   ALTER TABLE ONLY muestra ALTER COLUMN id_muestra SET DEFAULT nextval('muestra_id_muestra_seq'::regclass);
 D   ALTER TABLE spectradb.muestra ALTER COLUMN id_muestra DROP DEFAULT;
    	   spectradb       CIMBUC    false    179    178           