--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3
-- Dumped by pg_dump version 12.3

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

ALTER TABLE IF EXISTS taxa.event_types ALTER COLUMN event_type_id DROP DEFAULT;
ALTER TABLE IF EXISTS taxa.attributes ALTER COLUMN attribute_id DROP DEFAULT;
DROP TABLE IF EXISTS taxa.weather;
DROP SEQUENCE IF EXISTS taxa.event_types_event_type_id_seq;
DROP TABLE IF EXISTS taxa.coffee;
DROP TABLE IF EXISTS taxa.blood;
DROP SEQUENCE IF EXISTS taxa.attributes_attribute_id_seq;
DROP TABLE IF EXISTS taxa.attributes;
DROP TABLE IF EXISTS taxa.event_types;
DROP SCHEMA IF EXISTS taxa;
--
-- Name: taxa; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA taxa;


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: event_types; Type: TABLE; Schema: taxa; Owner: -
--

CREATE TABLE taxa.event_types (
    event_type_id integer NOT NULL,
    event_type text,
    plate_appearance integer,
    at_bat integer,
    hit integer,
    total_bases integer
);


--
-- Name: attributes; Type: TABLE; Schema: taxa; Owner: -
--

CREATE TABLE taxa.attributes (
    attribute_id integer NOT NULL,
    attribute_text character varying,
    attribute_desc character varying,
    attribute_objects integer[],
    attributes_short character varying,
    attribute_short character varying
);


--
-- Name: attributes_attribute_id_seq; Type: SEQUENCE; Schema: taxa; Owner: -
--

CREATE SEQUENCE taxa.attributes_attribute_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: attributes_attribute_id_seq; Type: SEQUENCE OWNED BY; Schema: taxa; Owner: -
--

ALTER SEQUENCE taxa.attributes_attribute_id_seq OWNED BY taxa.attributes.attribute_id;


--
-- Name: blood; Type: TABLE; Schema: taxa; Owner: -
--

CREATE TABLE taxa.blood (
    blood_id integer,
    blood_type character varying
);


--
-- Name: coffee; Type: TABLE; Schema: taxa; Owner: -
--

CREATE TABLE taxa.coffee (
    coffee_id integer,
    coffee_text character varying
);


--
-- Name: event_types_event_type_id_seq; Type: SEQUENCE; Schema: taxa; Owner: -
--

CREATE SEQUENCE taxa.event_types_event_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: event_types_event_type_id_seq; Type: SEQUENCE OWNED BY; Schema: taxa; Owner: -
--

ALTER SEQUENCE taxa.event_types_event_type_id_seq OWNED BY taxa.event_types.event_type_id;


--
-- Name: weather; Type: TABLE; Schema: taxa; Owner: -
--

CREATE TABLE taxa.weather (
    weather_id integer,
    weather_text character varying
);


--
-- Name: attributes attribute_id; Type: DEFAULT; Schema: taxa; Owner: -
--

ALTER TABLE ONLY taxa.attributes ALTER COLUMN attribute_id SET DEFAULT nextval('taxa.attributes_attribute_id_seq'::regclass);


--
-- Name: event_types event_type_id; Type: DEFAULT; Schema: taxa; Owner: -
--

ALTER TABLE ONLY taxa.event_types ALTER COLUMN event_type_id SET DEFAULT nextval('taxa.event_types_event_type_id_seq'::regclass);


--
-- Data for Name: attributes; Type: TABLE DATA; Schema: taxa; Owner: -
--

COPY taxa.attributes (attribute_id, attribute_text, attribute_desc, attribute_objects, attributes_short, attribute_short) FROM stdin;
1	anticapitalism	\N	\N	\N	A
2	base_thirst	\N	\N	\N	Bt
3	buoyancy	\N	\N	\N	Bu
4	chasiness	\N	\N	\N	Ch
5	coldness	\N	\N	\N	Co
6	continuation	\N	\N	\N	Cn
7	divinity	\N	\N	\N	Dv
8	ground_friction	\N	\N	\N	G
9	indulgence	\N	\N	\N	I
10	laserlikeness	\N	\N	\N	L
11	martyrdom	\N	\N	\N	Mr
12	moxie	\N	\N	\N	Mo
13	musclitude	\N	\N	\N	Ms
14	omniscience	\N	\N	\N	Om
15	overpowerment	\N	\N	\N	Ov
16	patheticism	\N	\N	\N	Pa
17	ruthlessness	\N	\N	\N	R
18	shakespearianism	\N	\N	\N	S
19	suppression	\N	\N	\N	
20	tenaciousness	\N	\N	\N	Te
21	thwackability	\N	\N	\N	Tw
22	tragicness	\N	\N	\N	Tr
23	unthwackability	\N	\N	\N	Un
24	watchfulness	\N	\N	\N	W
25	pressurization	\N	\N	\N	Pr
26	cinnamon	\N	\N	\N	Ci
27	total_fingers	\N	\N	\N	
28	soul	\N	\N	\N	
29	fate	\N	\N	\N	
30	peanut_allergy	\N	\N	\N	
31	coffee	\N	\N	\N	
32	blood	\N	\N	\N	
\.


--
-- Data for Name: blood; Type: TABLE DATA; Schema: taxa; Owner: -
--

COPY taxa.blood (blood_id, blood_type) FROM stdin;
0	A
1	AAA
2	AA
3	Acidic
4	Basic
5	O
6	O No
7	H₂O
8	Electric
9	Love
10	Fire
11	Psychic
12	Grass
\.


--
-- Data for Name: coffee; Type: TABLE DATA; Schema: taxa; Owner: -
--

COPY taxa.coffee (coffee_id, coffee_text) FROM stdin;
0	Black
1	Light & Sweet
2	Macchiato
3	Cream & Sugar
4	Cold Brew
5	Flat White
6	Americano
7	Expresso
8	Heavy Foam
9	Latte
10	Decaf
11	Milk Substitute
12	Plenty of Sugar
13	Anything
\.


--
-- Data for Name: event_types; Type: TABLE DATA; Schema: taxa; Owner: -
--

COPY taxa.event_types (event_type_id, event_type, plate_appearance, at_bat, hit, total_bases) FROM stdin;
1	CAUGHT_STEALING	0	0	0	0
3	DOUBLE	1	1	1	2
4	FIELDERS_CHOICE	1	1	0	1
5	HOME_RUN	1	1	1	4
6	OUT	1	1	0	0
7	SINGLE	1	1	1	1
8	STOLEN_BASE	0	0	0	0
9	STRIKEOUT	1	1	0	0
10	TRIPLE	1	1	1	3
12	UNKNOWN	1	0	0	0
11	WALK	0	0	0	1
\.


--
-- Data for Name: weather; Type: TABLE DATA; Schema: taxa; Owner: -
--

COPY taxa.weather (weather_id, weather_text) FROM stdin;
0	Void
1	Sunny
2	Overcast
3	Rainy
4	Sandstorm
5	Snowy
6	Acidic
7	Solar Eclipse
8	Glitter
9	Bloodwind
10	Peanuts
11	Birds
12	Feedback
13	Reverb
\.


--
-- Name: attributes_attribute_id_seq; Type: SEQUENCE SET; Schema: taxa; Owner: -
--

SELECT pg_catalog.setval('taxa.attributes_attribute_id_seq', 32, true);


--
-- Name: event_types_event_type_id_seq; Type: SEQUENCE SET; Schema: taxa; Owner: -
--

SELECT pg_catalog.setval('taxa.event_types_event_type_id_seq', 12, true);


--
-- PostgreSQL database dump complete
--
