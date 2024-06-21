--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size integer NOT NULL,
    years integer,
    gravity numeric(4,1) NOT NULL,
    description text,
    rock boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size integer NOT NULL,
    years integer,
    gravity numeric(4,1) NOT NULL,
    description text,
    rock boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size integer NOT NULL,
    years integer,
    gravity numeric(4,1) NOT NULL,
    description text,
    rock boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size integer NOT NULL,
    years integer,
    gravity numeric(4,1) NOT NULL,
    description text,
    rock boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.types (
    types_id integer NOT NULL,
    name character varying(30),
    grade integer NOT NULL,
    speed integer NOT NULL,
    height numeric(4,1),
    description text,
    indeed boolean
);


ALTER TABLE public.types OWNER TO freecodecamp;

--
-- Name: types_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.types_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.types_type_id_seq OWNER TO freecodecamp;

--
-- Name: types_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.types_type_id_seq OWNED BY public.types.types_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: types types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.types ALTER COLUMN types_id SET DEFAULT nextval('public.types_type_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 1000, 2000, 10.1, 'Is a galaxy', false);
INSERT INTO public.galaxy VALUES (3, 'Via Lactea', 1020, 42000, 14.1, 'Is a galaxy 1', false);
INSERT INTO public.galaxy VALUES (4, 'Triangle', 3020, 22001, 12.3, 'Is a galaxy 2', false);
INSERT INTO public.galaxy VALUES (5, 'Hubble', 4423, 82042, 20.3, 'Is a galaxy 8', false);
INSERT INTO public.galaxy VALUES (6, 'Galaxy example 1', 3920, 90990, 90.3, 'Description 1', false);
INSERT INTO public.galaxy VALUES (7, 'Galaxy example 2', 4920, 10580, 60.7, 'Description 2', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (13, 'Luna', 1869, 6645, 1.5, 'Description of Luna', false, 10);
INSERT INTO public.moon VALUES (14, 'Phobos', 4881, 9186, 0.4, 'Description of Phobos', false, 18);
INSERT INTO public.moon VALUES (15, 'Deimos', 384, 2812, 1.9, 'Description of Deimos', false, 19);
INSERT INTO public.moon VALUES (16, 'Io', 1969, 8204, 1.8, 'Description of Io', true, 25);
INSERT INTO public.moon VALUES (17, 'Europa', 1999, 5832, 1.5, 'Description of Europa', true, 11);
INSERT INTO public.moon VALUES (18, 'Ganymede', 3471, 1872, 0.6, 'Description of Ganymede', false, 19);
INSERT INTO public.moon VALUES (19, 'Callisto', 1374, 9258, 0.4, 'Description of Callisto', true, 9);
INSERT INTO public.moon VALUES (20, 'Titan', 4119, 5685, 1.9, 'Description of Titan', true, 12);
INSERT INTO public.moon VALUES (21, 'Rhea', 4600, 2329, 0.3, 'Description of Rhea', false, 12);
INSERT INTO public.moon VALUES (22, 'Iapetus', 178, 6686, 1.9, 'Description of Iapetus', true, 28);
INSERT INTO public.moon VALUES (23, 'Dione', 3633, 2148, 1.5, 'Description of Dione', true, 13);
INSERT INTO public.moon VALUES (24, 'Enceladus', 3606, 9031, 1.6, 'Description of Enceladus', true, 17);
INSERT INTO public.moon VALUES (25, 'Mimas', 4390, 3111, 1.9, 'Description of Mimas', false, 22);
INSERT INTO public.moon VALUES (26, 'Phoebe', 457, 8317, 1.8, 'Description of Phoebe', false, 24);
INSERT INTO public.moon VALUES (27, 'Janus', 3750, 3039, 1.7, 'Description of Janus', true, 12);
INSERT INTO public.moon VALUES (28, 'Epimetheus', 2852, 7713, 0.7, 'Description of Epimetheus', true, 17);
INSERT INTO public.moon VALUES (29, 'Helene', 4617, 3866, 1.6, 'Description of Helene', true, 9);
INSERT INTO public.moon VALUES (30, 'Telesto', 2390, 8928, 0.1, 'Description of Telesto', false, 18);
INSERT INTO public.moon VALUES (31, 'Calypso', 4305, 6715, 0.5, 'Description of Calypso', false, 16);
INSERT INTO public.moon VALUES (32, 'Atlas', 3746, 5995, 1.7, 'Description of Atlas', true, 14);
INSERT INTO public.moon VALUES (33, 'Prometheus', 1218, 5588, 1.7, 'Description of Prometheus', false, 19);
INSERT INTO public.moon VALUES (34, 'Pandora', 1212, 4744, 1.5, 'Description of Pandora', true, 27);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (9, 'Salacia', 18590, 1531, 17.4, 'Description of Salacia', true, 2);
INSERT INTO public.planet VALUES (10, 'Venus', 23336, 9452, 4.5, 'Description of Venus', true, 2);
INSERT INTO public.planet VALUES (11, 'Orcus', 47222, 4957, 13.9, 'Description of Orcus', true, 3);
INSERT INTO public.planet VALUES (12, 'Varuna', 9515, 4047, 19.0, 'Description of Varuna', true, 4);
INSERT INTO public.planet VALUES (13, 'Eris', 53298, 9539, 2.5, 'Description of Eris', true, 4);
INSERT INTO public.planet VALUES (14, 'Mercury', 11686, 7299, 0.9, 'Description of Mercury', true, 6);
INSERT INTO public.planet VALUES (15, 'Makemake', 60290, 9786, 19.6, 'Description of Makemake', false, 6);
INSERT INTO public.planet VALUES (16, 'Earth', 12542, 5223, 13.8, 'Description of Makemake', true, 5);
INSERT INTO public.planet VALUES (17, 'Dione', 54652, 7023, 13.8, 'Description of Eris', false, 5);
INSERT INTO public.planet VALUES (18, 'Titan', 17195, 8417, 4.3, 'Description of Salacia', true, 1);
INSERT INTO public.planet VALUES (19, 'Ixion', 28096, 8445, 22.0, 'Description of Ixion', true, 4);
INSERT INTO public.planet VALUES (20, 'Neptune', 44800, 1961, 15.0, 'Description of Neptune', false, 1);
INSERT INTO public.planet VALUES (21, 'Hyperion', 67477, 8965, 16.6, 'Description of Salacia', true, 5);
INSERT INTO public.planet VALUES (22, 'Haumea', 55799, 6247, 10.6, 'Description of Haumea', true, 3);
INSERT INTO public.planet VALUES (23, 'Uranus', 60996, 7188, 10.9, 'Description of Uranus', false, 5);
INSERT INTO public.planet VALUES (24, 'Europa', 9520, 1774, 20.4, 'Description of Uranus', true, 2);
INSERT INTO public.planet VALUES (25, 'Enceladus', 10261, 1550, 19.2, 'Description of Varuna', true, 3);
INSERT INTO public.planet VALUES (26, 'Saturn', 40982, 5444, 22.0, 'Description of Orcus', true, 3);
INSERT INTO public.planet VALUES (27, 'Tethys', 67240, 4613, 9.7, 'Description of Eris', false, 1);
INSERT INTO public.planet VALUES (28, 'Mars', 9687, 1259, 0.5, 'Description of Mars', true, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Earth', 5920, 10580, 9.7, 'Planet', true, 3);
INSERT INTO public.star VALUES (2, 'Sun', 5920, 10580, 9.7, 'StarLight', true, 4);
INSERT INTO public.star VALUES (3, 'Darksun', 5920, 10580, 9.7, 'StarLight', true, 3);
INSERT INTO public.star VALUES (4, 'SunPlay', 6920, 10580, 8.7, 'StarPlay', false, 4);
INSERT INTO public.star VALUES (5, 'SunMoon', 7820, 1160, 7.5, 'StarMoon', true, 7);
INSERT INTO public.star VALUES (6, 'Sun-Kilo', 1723, 1280, 3.6, 'Sun kilo', true, 6);


--
-- Data for Name: types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.types VALUES (1, 'TypeA', 5, 99, 6.0, 'Description of TypeA', false);
INSERT INTO public.types VALUES (2, 'TypeB', 3, 63, 5.3, 'Description of TypeB', false);
INSERT INTO public.types VALUES (3, 'TypeC', 1, 100, 7.7, 'Description of TypeC', false);
INSERT INTO public.types VALUES (4, 'TypeD', 5, 35, 6.3, 'Description of TypeD', true);
INSERT INTO public.types VALUES (5, 'TypeE', 5, 30, 6.1, 'Description of TypeE', false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 34, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 28, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: types_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.types_type_id_seq', 5, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: types types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.types
    ADD CONSTRAINT types_name_key UNIQUE (name);


--
-- Name: types types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.types
    ADD CONSTRAINT types_pkey PRIMARY KEY (types_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

