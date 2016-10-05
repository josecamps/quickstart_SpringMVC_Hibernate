--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: quickstart; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE quickstart WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';


ALTER DATABASE quickstart OWNER TO postgres;

\connect quickstart

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: table1; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE table1 (
    id integer NOT NULL,
    text character(100)
);


ALTER TABLE public.table1 OWNER TO postgres;

--
-- Name: table12; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE table12 (
    table1_id integer NOT NULL,
    table2_id integer NOT NULL
);


ALTER TABLE public.table12 OWNER TO postgres;

--
-- Name: table1_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE table1_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.table1_id_seq OWNER TO postgres;

--
-- Name: table1_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE table1_id_seq OWNED BY table1.id;


--
-- Name: table2; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE table2 (
    id integer NOT NULL,
    text character(100)
);


ALTER TABLE public.table2 OWNER TO postgres;

--
-- Name: table2_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE table2_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.table2_id_seq OWNER TO postgres;

--
-- Name: table2_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE table2_id_seq OWNED BY table2.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY table1 ALTER COLUMN id SET DEFAULT nextval('table1_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY table2 ALTER COLUMN id SET DEFAULT nextval('table2_id_seq'::regclass);


--
-- Data for Name: table1; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY table1 (id, text) FROM stdin;
\.


--
-- Data for Name: table12; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY table12 (table1_id, table2_id) FROM stdin;
\.


--
-- Name: table1_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('table1_id_seq', 1, false);


--
-- Data for Name: table2; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY table2 (id, text) FROM stdin;
\.


--
-- Name: table2_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('table2_id_seq', 1, false);


--
-- Name: table12_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY table12
    ADD CONSTRAINT table12_pkey PRIMARY KEY (table1_id, table2_id);


--
-- Name: table1_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY table1
    ADD CONSTRAINT table1_pkey PRIMARY KEY (id);


--
-- Name: table2_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY table2
    ADD CONSTRAINT table2_pkey PRIMARY KEY (id);


--
-- Name: fki_table12_table2_id_fkey; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX fki_table12_table2_id_fkey ON table12 USING btree (table2_id);


--
-- Name: table12_table1_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY table12
    ADD CONSTRAINT table12_table1_id_fkey FOREIGN KEY (table1_id) REFERENCES table1(id);


--
-- Name: table12_table2_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY table12
    ADD CONSTRAINT table12_table2_id_fkey FOREIGN KEY (table2_id) REFERENCES table2(id);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

