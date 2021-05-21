--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.4
-- Dumped by pg_dump version 13.2

-- Started on 2021-05-20 13:57:47

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 11 (class 2615 OID 94741)
-- Name: gdo; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA gdo;


--
-- TOC entry 10 (class 2615 OID 94742)
-- Name: tn; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA tn;


--
-- TOC entry 3727 (class 0 OID 0)
-- Dependencies: 10
-- Name: SCHEMA tn; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA tn IS '05 - TRANSPORTES';


--
-- TOC entry 3 (class 3079 OID 94743)
-- Name: postgis; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS postgis WITH SCHEMA public;


--
-- TOC entry 3728 (class 0 OID 0)
-- Dependencies: 3
-- Name: EXTENSION postgis; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION postgis IS 'PostGIS geometry, geography, and raster spatial types and functions';


--
-- TOC entry 2 (class 3079 OID 96109)
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;


--
-- TOC entry 3729 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


SET default_tablespace = '';

--
-- TOC entry 200 (class 1259 OID 96120)
-- Name: attributeproperties; Type: TABLE; Schema: gdo; Owner: -
--

CREATE TABLE gdo.attributeproperties (
    iskeyfield boolean,
    fielddescription character varying(255),
    indexid integer NOT NULL,
    fieldformat character varying(255),
    fieldtype integer,
    isfielddisplayable boolean,
    fieldprecision integer
);


--
-- TOC entry 201 (class 1259 OID 96126)
-- Name: fieldlookup; Type: TABLE; Schema: gdo; Owner: -
--

CREATE TABLE gdo.fieldlookup (
    indexid integer NOT NULL,
    featurename character varying(127),
    fieldname character varying(127)
);


--
-- TOC entry 202 (class 1259 OID 96129)
-- Name: galiastable; Type: TABLE; Schema: gdo; Owner: -
--

CREATE TABLE gdo.galiastable (
    tabletype character varying(128) NOT NULL,
    tablename character varying(128) NOT NULL
);


--
-- TOC entry 203 (class 1259 OID 96132)
-- Name: gcoordsystem; Type: TABLE; Schema: gdo; Owner: -
--

CREATE TABLE gdo.gcoordsystem (
    csguid character varying(40) NOT NULL,
    csguidtype integer,
    name character varying(100),
    description character varying(256),
    basestoragetype "char",
    stor2compmatrix1 double precision,
    stor2compmatrix2 double precision,
    stor2compmatrix3 double precision,
    stor2compmatrix4 double precision,
    stor2compmatrix5 double precision,
    stor2compmatrix6 double precision,
    stor2compmatrix7 double precision,
    stor2compmatrix8 double precision,
    stor2compmatrix9 double precision,
    stor2compmatrix10 double precision,
    stor2compmatrix11 double precision,
    stor2compmatrix12 double precision,
    stor2compmatrix13 double precision,
    stor2compmatrix14 double precision,
    stor2compmatrix15 double precision,
    stor2compmatrix16 double precision,
    heightstoragetype "char",
    lonnormstorageopt "char",
    geodeticdatum smallint,
    ellipsoid smallint,
    equatorialradius double precision,
    inverseflattening double precision,
    projalgorithm smallint,
    azimuthangle double precision,
    falsex double precision,
    falsey double precision,
    hemisphere "char",
    latoforigin double precision,
    latoftruescale double precision,
    lonoforigin double precision,
    radofstandcircle double precision,
    scalereductfact double precision,
    standpar1 double precision,
    standpar2 double precision,
    zone smallint,
    pathnumber smallint,
    rownumber smallint,
    satellite smallint,
    xazdefopt "char",
    geomheightoforig double precision,
    geomheightofpoint1 double precision,
    geomheightofpoint2 double precision,
    latofpoint1 double precision,
    latofpoint2 double precision,
    lonofpoint1 double precision,
    lonofpoint2 double precision,
    argumentofperigee double precision,
    earthrotperiod double precision,
    fourierexpansiondegree "char",
    nodesinsimpsonintegration "char",
    orbearthrotperiodratio double precision,
    orbecc double precision,
    orbinclination double precision,
    orboff double precision,
    orbperiod double precision,
    orbsemimajaxis double precision,
    oblmercdefmode "char",
    latofmapcenter double precision,
    obllamconfcondefmode "char",
    rotnorthpolelat double precision,
    rotnorthpolelon double precision,
    gaussianlat double precision,
    sphermodel double precision,
    spherradius double precision,
    latofbasispointa double precision,
    latofbasispointb double precision,
    latofbasispointc double precision,
    lonofbasispointa double precision,
    lonofbasispointb double precision,
    lonofbasispointc double precision,
    chamtriorigindefmode "char",
    angorientationprojplanedefmode "char",
    azofupwardtilt double precision,
    focallength double precision,
    heightaboveellipatnadir double precision,
    heightorigoflocalhorizsys double precision,
    latorigoflocalhorizsys double precision,
    locationofprojplanedefmode smallint,
    lonorigoflocalhorizsys double precision,
    perspcentergeocx double precision,
    perspcentergeocy double precision,
    perspcentergeocz double precision,
    perspcenterheight double precision,
    perspcenterlat double precision,
    perspcenterlon double precision,
    perspcenterxeast double precision,
    perspcenterynorth double precision,
    perspcenterzup double precision,
    refcoordsysdefmode "char",
    rotaboutxaxis double precision,
    rotaboutyaxis double precision,
    rotaboutzaxis double precision,
    swingang double precision,
    tiltang double precision,
    extendprojmatrix1 double precision,
    extendprojmatrix2 double precision,
    extendprojmatrix3 double precision,
    extendprojmatrix4 double precision,
    extendprojmatrix5 double precision,
    extendprojmatrix6 double precision,
    extendprojmatrix7 double precision,
    extendprojmatrix8 double precision,
    extendprojmatrix9 double precision,
    extendprojmatrix10 double precision,
    extendprojmatrix11 double precision,
    extendprojmatrix12 double precision,
    extendprojmatrix13 double precision,
    extendprojmatrix14 double precision,
    extendprojmatrix15 double precision,
    extendprojmatrix16 double precision,
    verticaldatum smallint,
    undulationmodel smallint,
    averageundulation double precision,
    namedgeodeticdatum character varying(100)
);


--
-- TOC entry 204 (class 1259 OID 96138)
-- Name: geometryproperties; Type: TABLE; Schema: gdo; Owner: -
--

CREATE TABLE gdo.geometryproperties (
    primarygeometryflag boolean,
    geometrytype integer,
    gcoordsystemguid character varying(255),
    fielddescription character varying(255),
    indexid integer NOT NULL
);


--
-- TOC entry 205 (class 1259 OID 96144)
-- Name: gfeaturesbase; Type: TABLE; Schema: gdo; Owner: -
--

CREATE TABLE gdo.gfeaturesbase (
    featurename character varying(127) NOT NULL,
    geometrytype integer,
    primarygeometryfieldname character varying(127),
    featuredescription character varying(255)
);


--
-- TOC entry 206 (class 1259 OID 96150)
-- Name: gfeatures; Type: VIEW; Schema: gdo; Owner: -
--

CREATE VIEW gdo.gfeatures AS
 SELECT gfeaturesbase.ctid,
    gfeaturesbase.featurename,
    gfeaturesbase.geometrytype,
    gfeaturesbase.primarygeometryfieldname,
    gfeaturesbase.featuredescription
   FROM gdo.gfeaturesbase
  WHERE (((gfeaturesbase.featurename)::text = lower((gfeaturesbase.featurename)::text)) AND (((gfeaturesbase.featurename)::text IN ( SELECT (fieldlookup.featurename)::text AS featurename
           FROM gdo.fieldlookup
          WHERE (NOT ((fieldlookup.featurename)::text IN ( SELECT fieldlookup_1.featurename
                   FROM gdo.fieldlookup fieldlookup_1
                  WHERE ((fieldlookup_1.fieldname)::text <> lower((fieldlookup_1.fieldname)::text))))))) OR (NOT ((gfeaturesbase.featurename)::text IN ( SELECT (fieldlookup.featurename)::text AS featurename
           FROM gdo.fieldlookup)))) AND (((gfeaturesbase.featurename)::text IN ( SELECT (((tables.table_schema)::text || '.'::text) || (tables.table_name)::text)
           FROM information_schema.tables)) OR ((gfeaturesbase.featurename)::text IN ( SELECT tables.table_name
           FROM information_schema.tables
          WHERE ((tables.table_schema)::text = 'public'::text))) OR (NOT (((gfeaturesbase.featurename)::text IN ( SELECT (((pg_tables.schemaname)::text || '.'::text) || (pg_tables.tablename)::text)
           FROM pg_tables)) OR ((gfeaturesbase.featurename)::name IN ( SELECT pg_tables.tablename
           FROM pg_tables
          WHERE (pg_tables.schemaname = 'public'::name))) OR ((gfeaturesbase.featurename)::text IN ( SELECT (((pg_views.schemaname)::text || '.'::text) || (pg_views.viewname)::text)
           FROM pg_views)) OR ((gfeaturesbase.featurename)::name IN ( SELECT pg_views.viewname
           FROM pg_views
          WHERE (pg_views.schemaname = 'public'::name)))))));


--
-- TOC entry 207 (class 1259 OID 96155)
-- Name: gfieldmapping; Type: TABLE; Schema: gdo; Owner: -
--

CREATE TABLE gdo.gfieldmapping (
    f_table_schema name NOT NULL,
    f_table_name name NOT NULL,
    f_graphic_column name NOT NULL,
    coord_dimension integer,
    srid integer,
    type name,
    f_native_geom_column name,
    csguid name,
    subtype integer
);


--
-- TOC entry 208 (class 1259 OID 96158)
-- Name: gindexcolumns; Type: TABLE; Schema: gdo; Owner: -
--

CREATE TABLE gdo.gindexcolumns (
    object_schema name NOT NULL,
    object_name name NOT NULL,
    index_name name NOT NULL,
    column_name name NOT NULL,
    column_position integer,
    index_type name
);


--
-- TOC entry 209 (class 1259 OID 96161)
-- Name: gparameters; Type: TABLE; Schema: gdo; Owner: -
--

CREATE TABLE gdo.gparameters (
    gparameter character varying(63) NOT NULL,
    gvalue character varying(255) NOT NULL
);


--
-- TOC entry 210 (class 1259 OID 96164)
-- Name: gpicklisttable; Type: TABLE; Schema: gdo; Owner: -
--

CREATE TABLE gdo.gpicklisttable (
    featurename character varying(127) NOT NULL,
    fieldname character varying(127) NOT NULL,
    picklisttablename character varying(127),
    valuefieldname character varying(127),
    descriptionfieldname character varying(127),
    filterclause character varying(255)
);


--
-- TOC entry 211 (class 1259 OID 96170)
-- Name: gsqloperatortable; Type: TABLE; Schema: gdo; Owner: -
--

CREATE TABLE gdo.gsqloperatortable (
    operator character varying(32),
    operatorclass character varying(100),
    description text
);


--
-- TOC entry 212 (class 1259 OID 96176)
-- Name: librarytables; Type: TABLE; Schema: gdo; Owner: -
--

CREATE TABLE gdo.librarytables (
    tabletype character varying(255) NOT NULL,
    tablename character varying(255)
);


--
-- TOC entry 213 (class 1259 OID 96182)
-- Name: modificationlog; Type: TABLE; Schema: gdo; Owner: -
--

CREATE TABLE gdo.modificationlog (
    modificationnumber integer NOT NULL,
    type smallint,
    modifiedtableid integer,
    keyvalue1 character varying(255),
    keyvalue2 character varying(255),
    keyvalue3 character varying(255),
    keyvalue4 character varying(255),
    keyvalue5 character varying(255),
    keyvalue6 character varying(255),
    keyvalue7 character varying(255),
    keyvalue8 character varying(255),
    keyvalue9 character varying(255),
    keyvalue10 character varying(255),
    sessionid integer NOT NULL,
    modifieddate timestamp without time zone DEFAULT now() NOT NULL
);


--
-- TOC entry 214 (class 1259 OID 96189)
-- Name: modifiedtables; Type: TABLE; Schema: gdo; Owner: -
--

CREATE TABLE gdo.modifiedtables (
    modifiedtableid integer NOT NULL,
    tablename character varying(127) NOT NULL,
    keyfield1 character varying(127),
    keyfield2 character varying(127),
    keyfield3 character varying(127),
    keyfield4 character varying(127),
    keyfield5 character varying(127),
    keyfield6 character varying(127),
    keyfield7 character varying(127),
    keyfield8 character varying(127),
    keyfield9 character varying(127),
    keyfield10 character varying(127)
);


--
-- TOC entry 215 (class 1259 OID 96195)
-- Name: eixos_via; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.eixos_via (
    id integer NOT NULL,
    ddccff character varying(6),
    cod_eixo_via character varying(11),
    cod_arruamento character varying(11),
    inicio_objeto timestamp without time zone,
    gestao character varying(255),
    jurisdicao character varying(255),
    pavimentado boolean DEFAULT false,
    valor_caract_fisica_rodov character varying(10),
    valor_estado_via_rodov character varying(10),
    valor_posicao_vertical_transportes character varying(10),
    valor_restricao_acesso character varying(10),
    valor_sentido character varying(10),
    valor_tipo_troco_rodoviario character varying(10),
    largura_via_rodov real,
    multipla_faixa_rodagem boolean DEFAULT false,
    num_vias_transito smallint,
    velocidade_max smallint,
    geometria public.geometry(GeometryZ,5016)
);


--
-- TOC entry 216 (class 1259 OID 96203)
-- Name: eixos_via2; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.eixos_via2 (
    ddccff character varying(6),
    cod_eixo_via character varying(11),
    cod_arruamento character varying(11),
    inicio_objeto timestamp without time zone,
    gestao character varying(255),
    jurisdicao character varying(255),
    pavimentado boolean DEFAULT false,
    valor_caract_fisica_rodov character varying(10),
    valor_estado_via_rodov character varying(10),
    valor_posicao_vertical_transportes character varying(10),
    valor_restricao_acesso character varying(10),
    valor_sentido character varying(10),
    valor_tipo_troco_rodoviario character varying(10),
    largura_via_rodov real,
    multipla_faixa_rodagem boolean DEFAULT false,
    num_vias_transito smallint,
    velocidade_max smallint,
    id1 integer NOT NULL,
    geometria public.geometry(GeometryZ,5016)
);


--
-- TOC entry 217 (class 1259 OID 96211)
-- Name: area_infra_trans_rodov; Type: TABLE; Schema: tn; Owner: -
--

CREATE TABLE tn.area_infra_trans_rodov (
    identificador uuid DEFAULT public.uuid_generate_v1mc() NOT NULL,
    inicio_objeto timestamp without time zone NOT NULL,
    fim_objeto timestamp without time zone,
    infra_trans_rodov_id uuid NOT NULL,
    geometria public.geometry(Polygon,5016) NOT NULL
);


--
-- TOC entry 218 (class 1259 OID 96218)
-- Name: infra_trans_rodov; Type: TABLE; Schema: tn; Owner: -
--

CREATE TABLE tn.infra_trans_rodov (
    identificador uuid DEFAULT public.uuid_generate_v1mc() NOT NULL,
    inicio_objeto timestamp without time zone NOT NULL,
    fim_objeto timestamp without time zone,
    nome character varying(255),
    valor_tipo_infra_trans_rodov character varying(10) NOT NULL,
    geometria public.geometry(Point,5016) NOT NULL
);


--
-- TOC entry 219 (class 1259 OID 96225)
-- Name: lig_infratransrodov_notransrodov; Type: TABLE; Schema: tn; Owner: -
--

CREATE TABLE tn.lig_infratransrodov_notransrodov (
    identificador uuid DEFAULT public.uuid_generate_v1mc() NOT NULL,
    infra_trans_rodov_id uuid NOT NULL,
    no_trans_rodov_id uuid NOT NULL
);


--
-- TOC entry 220 (class 1259 OID 96229)
-- Name: lig_segviarodov_viarodov; Type: TABLE; Schema: tn; Owner: -
--

CREATE TABLE tn.lig_segviarodov_viarodov (
    identificador uuid DEFAULT public.uuid_generate_v1mc() NOT NULL,
    seg_via_rodov_id uuid NOT NULL,
    via_rodov_id uuid NOT NULL
);


--
-- TOC entry 221 (class 1259 OID 96233)
-- Name: lig_segviarodov_viarodovlimite; Type: TABLE; Schema: tn; Owner: -
--

CREATE TABLE tn.lig_segviarodov_viarodovlimite (
    identificador uuid DEFAULT public.uuid_generate_v1mc() NOT NULL,
    seg_via_rodov_id uuid NOT NULL,
    via_rodov_limite_id uuid NOT NULL
);


--
-- TOC entry 222 (class 1259 OID 96237)
-- Name: lig_valor_tipo_circulacao_seg_via_rodov; Type: TABLE; Schema: tn; Owner: -
--

CREATE TABLE tn.lig_valor_tipo_circulacao_seg_via_rodov (
    identificador uuid DEFAULT public.uuid_generate_v1mc() NOT NULL,
    seg_via_rodov_id uuid NOT NULL,
    valor_tipo_circulacao_id character varying(10) NOT NULL
);


--
-- TOC entry 223 (class 1259 OID 96241)
-- Name: lig_valor_tipo_servico_infra_trans_rodov; Type: TABLE; Schema: tn; Owner: -
--

CREATE TABLE tn.lig_valor_tipo_servico_infra_trans_rodov (
    identificador uuid DEFAULT public.uuid_generate_v1mc() NOT NULL,
    infra_trans_rodov_id uuid NOT NULL,
    valor_tipo_servico_id character varying(10) NOT NULL
);


--
-- TOC entry 224 (class 1259 OID 96245)
-- Name: no_trans_rodov; Type: TABLE; Schema: tn; Owner: -
--

CREATE TABLE tn.no_trans_rodov (
    identificador uuid DEFAULT public.uuid_generate_v1mc() NOT NULL,
    inicio_objeto timestamp without time zone NOT NULL,
    fim_objeto timestamp without time zone,
    valor_tipo_no_trans_rodov character varying(10) NOT NULL,
    geometria public.geometry(PointZ,5016) NOT NULL
);


--
-- TOC entry 225 (class 1259 OID 96252)
-- Name: obra_arte; Type: TABLE; Schema: tn; Owner: -
--

CREATE TABLE tn.obra_arte (
    identificador uuid DEFAULT public.uuid_generate_v1mc() NOT NULL,
    inicio_objeto timestamp without time zone NOT NULL,
    fim_objeto timestamp without time zone,
    nome character varying(255),
    valor_tipo_obra_arte character varying(10) NOT NULL,
    geometria public.geometry(PolygonZ,5016) NOT NULL
);


--
-- TOC entry 226 (class 1259 OID 96259)
-- Name: seg_via_rodov; Type: TABLE; Schema: tn; Owner: -
--

CREATE TABLE tn.seg_via_rodov (
    identificador uuid DEFAULT public.uuid_generate_v1mc() NOT NULL,
    inicio_objeto timestamp without time zone NOT NULL,
    fim_objeto timestamp without time zone,
    gestao character varying(255),
    largura_via_rodov real,
    multipla_faixa_rodagem boolean,
    num_vias_transito integer,
    pavimentado boolean NOT NULL,
    velocidade_max integer,
    jurisdicao character varying(255),
    valor_caract_fisica_rodov character varying(10),
    valor_estado_via_rodov character varying(10),
    valor_posicao_vertical_transportes character varying(10) NOT NULL,
    valor_restricao_acesso character varying(10),
    valor_sentido character varying(10),
    valor_tipo_troco_rodoviario character varying(10),
    geometria public.geometry(LineStringZ,5016) NOT NULL,
    ddccff character varying(6),
    cod_eixo_via character varying(11),
    cod_arruamento character varying(11)
);


--
-- TOC entry 227 (class 1259 OID 96266)
-- Name: valor_caract_fisica_rodov; Type: TABLE; Schema: tn; Owner: -
--

CREATE TABLE tn.valor_caract_fisica_rodov (
    identificador character varying(10) NOT NULL,
    descricao character varying(255) NOT NULL
);


--
-- TOC entry 228 (class 1259 OID 96269)
-- Name: valor_estado_via_rodov; Type: TABLE; Schema: tn; Owner: -
--

CREATE TABLE tn.valor_estado_via_rodov (
    identificador character varying(10) NOT NULL,
    descricao character varying(255) NOT NULL
);


--
-- TOC entry 229 (class 1259 OID 96272)
-- Name: valor_posicao_vertical_transportes; Type: TABLE; Schema: tn; Owner: -
--

CREATE TABLE tn.valor_posicao_vertical_transportes (
    identificador character varying(10) NOT NULL,
    descricao character varying(255) NOT NULL
);


--
-- TOC entry 230 (class 1259 OID 96275)
-- Name: valor_restricao_acesso; Type: TABLE; Schema: tn; Owner: -
--

CREATE TABLE tn.valor_restricao_acesso (
    identificador character varying(10) NOT NULL,
    descricao character varying(255) NOT NULL
);


--
-- TOC entry 231 (class 1259 OID 96278)
-- Name: valor_sentido; Type: TABLE; Schema: tn; Owner: -
--

CREATE TABLE tn.valor_sentido (
    identificador character varying(10) NOT NULL,
    descricao character varying(255) NOT NULL
);


--
-- TOC entry 232 (class 1259 OID 96281)
-- Name: valor_tipo_circulacao; Type: TABLE; Schema: tn; Owner: -
--

CREATE TABLE tn.valor_tipo_circulacao (
    identificador character varying(10) NOT NULL,
    descricao character varying(255) NOT NULL
);


--
-- TOC entry 233 (class 1259 OID 96284)
-- Name: valor_tipo_infra_trans_rodov; Type: TABLE; Schema: tn; Owner: -
--

CREATE TABLE tn.valor_tipo_infra_trans_rodov (
    identificador character varying(10) NOT NULL,
    descricao character varying(255) NOT NULL
);


--
-- TOC entry 234 (class 1259 OID 96287)
-- Name: valor_tipo_limite; Type: TABLE; Schema: tn; Owner: -
--

CREATE TABLE tn.valor_tipo_limite (
    identificador character varying(10) NOT NULL,
    descricao character varying(255) NOT NULL
);


--
-- TOC entry 235 (class 1259 OID 96290)
-- Name: valor_tipo_no_trans_rodov; Type: TABLE; Schema: tn; Owner: -
--

CREATE TABLE tn.valor_tipo_no_trans_rodov (
    identificador character varying(10) NOT NULL,
    descricao character varying(255) NOT NULL
);


--
-- TOC entry 236 (class 1259 OID 96293)
-- Name: valor_tipo_obra_arte; Type: TABLE; Schema: tn; Owner: -
--

CREATE TABLE tn.valor_tipo_obra_arte (
    identificador character varying(10) NOT NULL,
    descricao character varying(255) NOT NULL
);


--
-- TOC entry 237 (class 1259 OID 96296)
-- Name: valor_tipo_servico; Type: TABLE; Schema: tn; Owner: -
--

CREATE TABLE tn.valor_tipo_servico (
    identificador character varying(10) NOT NULL,
    descricao character varying(255) NOT NULL
);


--
-- TOC entry 238 (class 1259 OID 96299)
-- Name: valor_tipo_troco_rodoviario; Type: TABLE; Schema: tn; Owner: -
--

CREATE TABLE tn.valor_tipo_troco_rodoviario (
    identificador character varying(10) NOT NULL,
    descricao character varying(255) NOT NULL
);


--
-- TOC entry 239 (class 1259 OID 96302)
-- Name: via_rodov; Type: TABLE; Schema: tn; Owner: -
--

CREATE TABLE tn.via_rodov (
    identificador uuid DEFAULT public.uuid_generate_v1mc() NOT NULL,
    inicio_objeto timestamp without time zone NOT NULL,
    fim_objeto timestamp without time zone,
    codigo_via_rodov character varying(255) NOT NULL,
    data_cat date NOT NULL,
    fonte_aquisicao_dados character varying(255) NOT NULL,
    nome character varying(255) NOT NULL,
    nome_alternativo character varying(255),
    tipo_via_rodov_abv character varying(255),
    tipo_via_rodov_c character varying(255) NOT NULL,
    tipo_via_rodov_d character varying(255) NOT NULL,
    cod_arruamento character varying(11),
    ddccff character(6),
    ddcc character(4)
);


--
-- TOC entry 240 (class 1259 OID 96309)
-- Name: via_rodov_limite; Type: TABLE; Schema: tn; Owner: -
--

CREATE TABLE tn.via_rodov_limite (
    identificador uuid DEFAULT public.uuid_generate_v1mc() NOT NULL,
    inicio_objeto timestamp without time zone NOT NULL,
    fim_objeto timestamp without time zone,
    valor_tipo_limite character varying(10) NOT NULL,
    geometria public.geometry(LineStringZ,5016) NOT NULL
);


--
-- TOC entry 3504 (class 2606 OID 96336)
-- Name: attributeproperties attributeproperties_pkey; Type: CONSTRAINT; Schema: gdo; Owner: -
--

ALTER TABLE ONLY gdo.attributeproperties
    ADD CONSTRAINT attributeproperties_pkey PRIMARY KEY (indexid);


--
-- TOC entry 3506 (class 2606 OID 96338)
-- Name: fieldlookup fieldlookup_pkey; Type: CONSTRAINT; Schema: gdo; Owner: -
--

ALTER TABLE ONLY gdo.fieldlookup
    ADD CONSTRAINT fieldlookup_pkey PRIMARY KEY (indexid);


--
-- TOC entry 3508 (class 2606 OID 96340)
-- Name: galiastable galiastable_pkey; Type: CONSTRAINT; Schema: gdo; Owner: -
--

ALTER TABLE ONLY gdo.galiastable
    ADD CONSTRAINT galiastable_pkey PRIMARY KEY (tabletype);


--
-- TOC entry 3510 (class 2606 OID 96342)
-- Name: gcoordsystem gcoordsystem_pkey; Type: CONSTRAINT; Schema: gdo; Owner: -
--

ALTER TABLE ONLY gdo.gcoordsystem
    ADD CONSTRAINT gcoordsystem_pkey PRIMARY KEY (csguid);


--
-- TOC entry 3512 (class 2606 OID 96344)
-- Name: geometryproperties geometryproperties_pkey; Type: CONSTRAINT; Schema: gdo; Owner: -
--

ALTER TABLE ONLY gdo.geometryproperties
    ADD CONSTRAINT geometryproperties_pkey PRIMARY KEY (indexid);


--
-- TOC entry 3514 (class 2606 OID 96346)
-- Name: gfeaturesbase gfeaturesbase_pkey; Type: CONSTRAINT; Schema: gdo; Owner: -
--

ALTER TABLE ONLY gdo.gfeaturesbase
    ADD CONSTRAINT gfeaturesbase_pkey PRIMARY KEY (featurename);


--
-- TOC entry 3516 (class 2606 OID 96348)
-- Name: gfieldmapping gfieldmapping_pkey; Type: CONSTRAINT; Schema: gdo; Owner: -
--

ALTER TABLE ONLY gdo.gfieldmapping
    ADD CONSTRAINT gfieldmapping_pkey PRIMARY KEY (f_table_schema, f_table_name, f_graphic_column);


--
-- TOC entry 3518 (class 2606 OID 96350)
-- Name: gindexcolumns gindexcolumns_pkey; Type: CONSTRAINT; Schema: gdo; Owner: -
--

ALTER TABLE ONLY gdo.gindexcolumns
    ADD CONSTRAINT gindexcolumns_pkey PRIMARY KEY (object_schema, object_name, index_name, column_name);


--
-- TOC entry 3520 (class 2606 OID 96352)
-- Name: gparameters gparameters_pkey; Type: CONSTRAINT; Schema: gdo; Owner: -
--

ALTER TABLE ONLY gdo.gparameters
    ADD CONSTRAINT gparameters_pkey PRIMARY KEY (gparameter);


--
-- TOC entry 3522 (class 2606 OID 96354)
-- Name: gpicklisttable gpicklisttable_pkey; Type: CONSTRAINT; Schema: gdo; Owner: -
--

ALTER TABLE ONLY gdo.gpicklisttable
    ADD CONSTRAINT gpicklisttable_pkey PRIMARY KEY (featurename, fieldname);


--
-- TOC entry 3524 (class 2606 OID 96356)
-- Name: librarytables librarytables_pkey; Type: CONSTRAINT; Schema: gdo; Owner: -
--

ALTER TABLE ONLY gdo.librarytables
    ADD CONSTRAINT librarytables_pkey PRIMARY KEY (tabletype);


--
-- TOC entry 3526 (class 2606 OID 96358)
-- Name: modificationlog modificationlog_pkey; Type: CONSTRAINT; Schema: gdo; Owner: -
--

ALTER TABLE ONLY gdo.modificationlog
    ADD CONSTRAINT modificationlog_pkey PRIMARY KEY (modificationnumber);


--
-- TOC entry 3528 (class 2606 OID 96360)
-- Name: modifiedtables modifiedtables_pkey; Type: CONSTRAINT; Schema: gdo; Owner: -
--

ALTER TABLE ONLY gdo.modifiedtables
    ADD CONSTRAINT modifiedtables_pkey PRIMARY KEY (modifiedtableid);


--
-- TOC entry 3530 (class 2606 OID 96362)
-- Name: modifiedtables modifiedtables_tablename_key; Type: CONSTRAINT; Schema: gdo; Owner: -
--

ALTER TABLE ONLY gdo.modifiedtables
    ADD CONSTRAINT modifiedtables_tablename_key UNIQUE (tablename);


--
-- TOC entry 3534 (class 2606 OID 96364)
-- Name: eixos_via2 eixos_via2_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.eixos_via2
    ADD CONSTRAINT eixos_via2_pkey PRIMARY KEY (id1);


--
-- TOC entry 3532 (class 2606 OID 96366)
-- Name: eixos_via eixos_via_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.eixos_via
    ADD CONSTRAINT eixos_via_pkey PRIMARY KEY (id);


--
-- TOC entry 3536 (class 2606 OID 96368)
-- Name: area_infra_trans_rodov area_infra_trans_rodov_pkey; Type: CONSTRAINT; Schema: tn; Owner: -
--

ALTER TABLE ONLY tn.area_infra_trans_rodov
    ADD CONSTRAINT area_infra_trans_rodov_pkey PRIMARY KEY (identificador);


--
-- TOC entry 3538 (class 2606 OID 96370)
-- Name: infra_trans_rodov infra_trans_rodov_pkey; Type: CONSTRAINT; Schema: tn; Owner: -
--

ALTER TABLE ONLY tn.infra_trans_rodov
    ADD CONSTRAINT infra_trans_rodov_pkey PRIMARY KEY (identificador);


--
-- TOC entry 3540 (class 2606 OID 96372)
-- Name: lig_infratransrodov_notransrodov lig_infratransrodov_notransrodov_pkey; Type: CONSTRAINT; Schema: tn; Owner: -
--

ALTER TABLE ONLY tn.lig_infratransrodov_notransrodov
    ADD CONSTRAINT lig_infratransrodov_notransrodov_pkey PRIMARY KEY (identificador);


--
-- TOC entry 3542 (class 2606 OID 96374)
-- Name: lig_segviarodov_viarodov lig_segviarodov_viarodov_pkey; Type: CONSTRAINT; Schema: tn; Owner: -
--

ALTER TABLE ONLY tn.lig_segviarodov_viarodov
    ADD CONSTRAINT lig_segviarodov_viarodov_pkey PRIMARY KEY (identificador);


--
-- TOC entry 3544 (class 2606 OID 96376)
-- Name: lig_segviarodov_viarodovlimite lig_segviarodov_viarodovlimite_pkey; Type: CONSTRAINT; Schema: tn; Owner: -
--

ALTER TABLE ONLY tn.lig_segviarodov_viarodovlimite
    ADD CONSTRAINT lig_segviarodov_viarodovlimite_pkey PRIMARY KEY (identificador);


--
-- TOC entry 3546 (class 2606 OID 96378)
-- Name: lig_valor_tipo_circulacao_seg_via_rodov lig_valor_tipo_circulacao_seg_via_rodov_pkey; Type: CONSTRAINT; Schema: tn; Owner: -
--

ALTER TABLE ONLY tn.lig_valor_tipo_circulacao_seg_via_rodov
    ADD CONSTRAINT lig_valor_tipo_circulacao_seg_via_rodov_pkey PRIMARY KEY (identificador);


--
-- TOC entry 3548 (class 2606 OID 96380)
-- Name: lig_valor_tipo_servico_infra_trans_rodov lig_valor_tipo_servico_infra_trans_rodov_pkey; Type: CONSTRAINT; Schema: tn; Owner: -
--

ALTER TABLE ONLY tn.lig_valor_tipo_servico_infra_trans_rodov
    ADD CONSTRAINT lig_valor_tipo_servico_infra_trans_rodov_pkey PRIMARY KEY (identificador);


--
-- TOC entry 3550 (class 2606 OID 96382)
-- Name: no_trans_rodov no_trans_rodov_pkey; Type: CONSTRAINT; Schema: tn; Owner: -
--

ALTER TABLE ONLY tn.no_trans_rodov
    ADD CONSTRAINT no_trans_rodov_pkey PRIMARY KEY (identificador);


--
-- TOC entry 3552 (class 2606 OID 96384)
-- Name: obra_arte obra_arte_pkey; Type: CONSTRAINT; Schema: tn; Owner: -
--

ALTER TABLE ONLY tn.obra_arte
    ADD CONSTRAINT obra_arte_pkey PRIMARY KEY (identificador);


--
-- TOC entry 3554 (class 2606 OID 96386)
-- Name: seg_via_rodov seg_via_rodov_pkey; Type: CONSTRAINT; Schema: tn; Owner: -
--

ALTER TABLE ONLY tn.seg_via_rodov
    ADD CONSTRAINT seg_via_rodov_pkey PRIMARY KEY (identificador);


--
-- TOC entry 3556 (class 2606 OID 96388)
-- Name: valor_caract_fisica_rodov valor_caract_fisica_rodov_pkey; Type: CONSTRAINT; Schema: tn; Owner: -
--

ALTER TABLE ONLY tn.valor_caract_fisica_rodov
    ADD CONSTRAINT valor_caract_fisica_rodov_pkey PRIMARY KEY (identificador);


--
-- TOC entry 3558 (class 2606 OID 96390)
-- Name: valor_estado_via_rodov valor_estado_via_rodov_pkey; Type: CONSTRAINT; Schema: tn; Owner: -
--

ALTER TABLE ONLY tn.valor_estado_via_rodov
    ADD CONSTRAINT valor_estado_via_rodov_pkey PRIMARY KEY (identificador);


--
-- TOC entry 3560 (class 2606 OID 96392)
-- Name: valor_posicao_vertical_transportes valor_posicao_vertical_transportes_pkey; Type: CONSTRAINT; Schema: tn; Owner: -
--

ALTER TABLE ONLY tn.valor_posicao_vertical_transportes
    ADD CONSTRAINT valor_posicao_vertical_transportes_pkey PRIMARY KEY (identificador);


--
-- TOC entry 3562 (class 2606 OID 96394)
-- Name: valor_restricao_acesso valor_restricao_acesso_pkey; Type: CONSTRAINT; Schema: tn; Owner: -
--

ALTER TABLE ONLY tn.valor_restricao_acesso
    ADD CONSTRAINT valor_restricao_acesso_pkey PRIMARY KEY (identificador);


--
-- TOC entry 3564 (class 2606 OID 96396)
-- Name: valor_sentido valor_sentido_pkey; Type: CONSTRAINT; Schema: tn; Owner: -
--

ALTER TABLE ONLY tn.valor_sentido
    ADD CONSTRAINT valor_sentido_pkey PRIMARY KEY (identificador);


--
-- TOC entry 3566 (class 2606 OID 96398)
-- Name: valor_tipo_circulacao valor_tipo_circulacao_pkey; Type: CONSTRAINT; Schema: tn; Owner: -
--

ALTER TABLE ONLY tn.valor_tipo_circulacao
    ADD CONSTRAINT valor_tipo_circulacao_pkey PRIMARY KEY (identificador);


--
-- TOC entry 3568 (class 2606 OID 96400)
-- Name: valor_tipo_infra_trans_rodov valor_tipo_infra_trans_rodov_pkey; Type: CONSTRAINT; Schema: tn; Owner: -
--

ALTER TABLE ONLY tn.valor_tipo_infra_trans_rodov
    ADD CONSTRAINT valor_tipo_infra_trans_rodov_pkey PRIMARY KEY (identificador);


--
-- TOC entry 3570 (class 2606 OID 96402)
-- Name: valor_tipo_limite valor_tipo_limite_pkey; Type: CONSTRAINT; Schema: tn; Owner: -
--

ALTER TABLE ONLY tn.valor_tipo_limite
    ADD CONSTRAINT valor_tipo_limite_pkey PRIMARY KEY (identificador);


--
-- TOC entry 3572 (class 2606 OID 96404)
-- Name: valor_tipo_no_trans_rodov valor_tipo_no_trans_rodov_pkey; Type: CONSTRAINT; Schema: tn; Owner: -
--

ALTER TABLE ONLY tn.valor_tipo_no_trans_rodov
    ADD CONSTRAINT valor_tipo_no_trans_rodov_pkey PRIMARY KEY (identificador);


--
-- TOC entry 3574 (class 2606 OID 96406)
-- Name: valor_tipo_obra_arte valor_tipo_obra_arte_pkey; Type: CONSTRAINT; Schema: tn; Owner: -
--

ALTER TABLE ONLY tn.valor_tipo_obra_arte
    ADD CONSTRAINT valor_tipo_obra_arte_pkey PRIMARY KEY (identificador);


--
-- TOC entry 3576 (class 2606 OID 96408)
-- Name: valor_tipo_servico valor_tipo_servico_pkey; Type: CONSTRAINT; Schema: tn; Owner: -
--

ALTER TABLE ONLY tn.valor_tipo_servico
    ADD CONSTRAINT valor_tipo_servico_pkey PRIMARY KEY (identificador);


--
-- TOC entry 3578 (class 2606 OID 96410)
-- Name: valor_tipo_troco_rodoviario valor_tipo_troco_rodoviario_pkey; Type: CONSTRAINT; Schema: tn; Owner: -
--

ALTER TABLE ONLY tn.valor_tipo_troco_rodoviario
    ADD CONSTRAINT valor_tipo_troco_rodoviario_pkey PRIMARY KEY (identificador);


--
-- TOC entry 3582 (class 2606 OID 96412)
-- Name: via_rodov_limite via_rodov_limite_pkey; Type: CONSTRAINT; Schema: tn; Owner: -
--

ALTER TABLE ONLY tn.via_rodov_limite
    ADD CONSTRAINT via_rodov_limite_pkey PRIMARY KEY (identificador);


--
-- TOC entry 3580 (class 2606 OID 96414)
-- Name: via_rodov via_rodov_pkey; Type: CONSTRAINT; Schema: tn; Owner: -
--

ALTER TABLE ONLY tn.via_rodov
    ADD CONSTRAINT via_rodov_pkey PRIMARY KEY (identificador);


--
-- TOC entry 3719 (class 2618 OID 96415)
-- Name: gfeatures gfeatures_del; Type: RULE; Schema: gdo; Owner: -
--

CREATE RULE gfeatures_del AS
    ON DELETE TO gdo.gfeatures DO INSTEAD  DELETE FROM gdo.gfeaturesbase
  WHERE (gfeaturesbase.ctid = old.ctid);


--
-- TOC entry 3720 (class 2618 OID 96416)
-- Name: gfeatures gfeatures_ins; Type: RULE; Schema: gdo; Owner: -
--

CREATE RULE gfeatures_ins AS
    ON INSERT TO gdo.gfeatures DO INSTEAD  INSERT INTO gdo.gfeaturesbase (featurename, geometrytype, primarygeometryfieldname, featuredescription)
  VALUES (new.featurename, new.geometrytype, new.primarygeometryfieldname, new.featuredescription)
  RETURNING gfeaturesbase.ctid,
    gfeaturesbase.featurename,
    gfeaturesbase.geometrytype,
    gfeaturesbase.primarygeometryfieldname,
    gfeaturesbase.featuredescription;


--
-- TOC entry 3721 (class 2618 OID 96417)
-- Name: gfeatures gfeatures_upd; Type: RULE; Schema: gdo; Owner: -
--

CREATE RULE gfeatures_upd AS
    ON UPDATE TO gdo.gfeatures DO INSTEAD  UPDATE gdo.gfeaturesbase SET featurename = new.featurename, geometrytype = new.geometrytype, primarygeometryfieldname = new.primarygeometryfieldname, featuredescription = new.featuredescription
  WHERE (gfeaturesbase.ctid = old.ctid)
  RETURNING gfeaturesbase.ctid,
    gfeaturesbase.featurename,
    gfeaturesbase.geometrytype,
    gfeaturesbase.primarygeometryfieldname,
    gfeaturesbase.featuredescription;


--
-- TOC entry 3590 (class 2606 OID 96418)
-- Name: seg_via_rodov valor_caract_fisica_rodov_id; Type: FK CONSTRAINT; Schema: tn; Owner: -
--

ALTER TABLE ONLY tn.seg_via_rodov
    ADD CONSTRAINT valor_caract_fisica_rodov_id FOREIGN KEY (valor_caract_fisica_rodov) REFERENCES tn.valor_caract_fisica_rodov(identificador);


--
-- TOC entry 3591 (class 2606 OID 96423)
-- Name: seg_via_rodov valor_estado_via_rodov_id; Type: FK CONSTRAINT; Schema: tn; Owner: -
--

ALTER TABLE ONLY tn.seg_via_rodov
    ADD CONSTRAINT valor_estado_via_rodov_id FOREIGN KEY (valor_estado_via_rodov) REFERENCES tn.valor_estado_via_rodov(identificador);


--
-- TOC entry 3592 (class 2606 OID 96428)
-- Name: seg_via_rodov valor_posicao_vertical_transportes_id; Type: FK CONSTRAINT; Schema: tn; Owner: -
--

ALTER TABLE ONLY tn.seg_via_rodov
    ADD CONSTRAINT valor_posicao_vertical_transportes_id FOREIGN KEY (valor_posicao_vertical_transportes) REFERENCES tn.valor_posicao_vertical_transportes(identificador);


--
-- TOC entry 3593 (class 2606 OID 96433)
-- Name: seg_via_rodov valor_restricao_acesso_id; Type: FK CONSTRAINT; Schema: tn; Owner: -
--

ALTER TABLE ONLY tn.seg_via_rodov
    ADD CONSTRAINT valor_restricao_acesso_id FOREIGN KEY (valor_restricao_acesso) REFERENCES tn.valor_restricao_acesso(identificador);


--
-- TOC entry 3594 (class 2606 OID 96438)
-- Name: seg_via_rodov valor_sentido_id; Type: FK CONSTRAINT; Schema: tn; Owner: -
--

ALTER TABLE ONLY tn.seg_via_rodov
    ADD CONSTRAINT valor_sentido_id FOREIGN KEY (valor_sentido) REFERENCES tn.valor_sentido(identificador);


--
-- TOC entry 3584 (class 2606 OID 96443)
-- Name: lig_valor_tipo_circulacao_seg_via_rodov valor_tipo_circulacao_seg_via_rodov_seg_via_rodov; Type: FK CONSTRAINT; Schema: tn; Owner: -
--

ALTER TABLE ONLY tn.lig_valor_tipo_circulacao_seg_via_rodov
    ADD CONSTRAINT valor_tipo_circulacao_seg_via_rodov_seg_via_rodov FOREIGN KEY (seg_via_rodov_id) REFERENCES tn.seg_via_rodov(identificador) ON DELETE CASCADE;


--
-- TOC entry 3585 (class 2606 OID 96448)
-- Name: lig_valor_tipo_circulacao_seg_via_rodov valor_tipo_circulacao_seg_via_rodov_valor_tipo_circulacao; Type: FK CONSTRAINT; Schema: tn; Owner: -
--

ALTER TABLE ONLY tn.lig_valor_tipo_circulacao_seg_via_rodov
    ADD CONSTRAINT valor_tipo_circulacao_seg_via_rodov_valor_tipo_circulacao FOREIGN KEY (valor_tipo_circulacao_id) REFERENCES tn.valor_tipo_circulacao(identificador);


--
-- TOC entry 3583 (class 2606 OID 96453)
-- Name: infra_trans_rodov valor_tipo_infra_trans_rodov_id; Type: FK CONSTRAINT; Schema: tn; Owner: -
--

ALTER TABLE ONLY tn.infra_trans_rodov
    ADD CONSTRAINT valor_tipo_infra_trans_rodov_id FOREIGN KEY (valor_tipo_infra_trans_rodov) REFERENCES tn.valor_tipo_infra_trans_rodov(identificador);


--
-- TOC entry 3596 (class 2606 OID 96458)
-- Name: via_rodov_limite valor_tipo_limite_id; Type: FK CONSTRAINT; Schema: tn; Owner: -
--

ALTER TABLE ONLY tn.via_rodov_limite
    ADD CONSTRAINT valor_tipo_limite_id FOREIGN KEY (valor_tipo_limite) REFERENCES tn.valor_tipo_limite(identificador);


--
-- TOC entry 3588 (class 2606 OID 96463)
-- Name: no_trans_rodov valor_tipo_no_trans_rodov_id; Type: FK CONSTRAINT; Schema: tn; Owner: -
--

ALTER TABLE ONLY tn.no_trans_rodov
    ADD CONSTRAINT valor_tipo_no_trans_rodov_id FOREIGN KEY (valor_tipo_no_trans_rodov) REFERENCES tn.valor_tipo_no_trans_rodov(identificador);


--
-- TOC entry 3589 (class 2606 OID 96468)
-- Name: obra_arte valor_tipo_obra_arte_id; Type: FK CONSTRAINT; Schema: tn; Owner: -
--

ALTER TABLE ONLY tn.obra_arte
    ADD CONSTRAINT valor_tipo_obra_arte_id FOREIGN KEY (valor_tipo_obra_arte) REFERENCES tn.valor_tipo_obra_arte(identificador);


--
-- TOC entry 3586 (class 2606 OID 96473)
-- Name: lig_valor_tipo_servico_infra_trans_rodov valor_tipo_servico_infra_trans_rodov_infra_trans_rodov; Type: FK CONSTRAINT; Schema: tn; Owner: -
--

ALTER TABLE ONLY tn.lig_valor_tipo_servico_infra_trans_rodov
    ADD CONSTRAINT valor_tipo_servico_infra_trans_rodov_infra_trans_rodov FOREIGN KEY (infra_trans_rodov_id) REFERENCES tn.infra_trans_rodov(identificador) ON DELETE CASCADE;


--
-- TOC entry 3587 (class 2606 OID 96478)
-- Name: lig_valor_tipo_servico_infra_trans_rodov valor_tipo_servico_infra_trans_rodov_valor_tipo_servico; Type: FK CONSTRAINT; Schema: tn; Owner: -
--

ALTER TABLE ONLY tn.lig_valor_tipo_servico_infra_trans_rodov
    ADD CONSTRAINT valor_tipo_servico_infra_trans_rodov_valor_tipo_servico FOREIGN KEY (valor_tipo_servico_id) REFERENCES tn.valor_tipo_servico(identificador);


--
-- TOC entry 3595 (class 2606 OID 96483)
-- Name: seg_via_rodov valor_tipo_troco_rodoviario_id; Type: FK CONSTRAINT; Schema: tn; Owner: -
--

ALTER TABLE ONLY tn.seg_via_rodov
    ADD CONSTRAINT valor_tipo_troco_rodoviario_id FOREIGN KEY (valor_tipo_troco_rodoviario) REFERENCES tn.valor_tipo_troco_rodoviario(identificador);


-- Completed on 2021-05-20 13:57:48

--
-- PostgreSQL database dump complete
--

