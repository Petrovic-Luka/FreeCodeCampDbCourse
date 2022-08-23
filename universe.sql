--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: filler; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.filler (
    filler_id integer NOT NULL,
    name character varying(30) NOT NULL,
    unique_num integer
);


ALTER TABLE public.filler OWNER TO freecodecamp;

--
-- Name: filler_filler_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.filler_filler_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.filler_filler_id_seq OWNER TO freecodecamp;

--
-- Name: filler_filler_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.filler_filler_id_seq OWNED BY public.filler.filler_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size numeric(6,2),
    has_life boolean,
    unique_num integer
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
    planet_id integer,
    idk text,
    another_num integer
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
    has_moon boolean,
    surface integer,
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
    galaxy_id integer,
    unique_num integer,
    another_num integer
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
-- Name: filler filler_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.filler ALTER COLUMN filler_id SET DEFAULT nextval('public.filler_filler_id_seq'::regclass);


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
-- Data for Name: filler; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.filler VALUES (1, 'filler 1', 1);
INSERT INTO public.filler VALUES (2, 'filler 2', 2);
INSERT INTO public.filler VALUES (3, 'filler 3', 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 3000.00, true, 1);
INSERT INTO public.galaxy VALUES (2, 'Galaxy 2', 3100.00, false, 2);
INSERT INTO public.galaxy VALUES (3, 'Galaxy 3', 2100.00, false, 3);
INSERT INTO public.galaxy VALUES (4, 'Galaxy 4', 2130.00, false, 4);
INSERT INTO public.galaxy VALUES (5, 'Galaxy 5', 4130.00, true, 5);
INSERT INTO public.galaxy VALUES (6, 'Galaxy 6', 4730.00, false, 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon 1', 1, 'a', 1);
INSERT INTO public.moon VALUES (2, 'moon 2', 1, 'a', 2);
INSERT INTO public.moon VALUES (3, 'moon 3', 1, 'a', 3);
INSERT INTO public.moon VALUES (4, 'moon 4', 1, 'a', 4);
INSERT INTO public.moon VALUES (5, 'moon 5', 2, 'b', 5);
INSERT INTO public.moon VALUES (6, 'moon 6', 3, 'c', 6);
INSERT INTO public.moon VALUES (7, 'moon 7', 3, 'c', 7);
INSERT INTO public.moon VALUES (8, 'moon 8', 4, 'k', 8);
INSERT INTO public.moon VALUES (9, 'moon 9', 9, 'k', 9);
INSERT INTO public.moon VALUES (10, 'moon 10', 9, 'k', 10);
INSERT INTO public.moon VALUES (11, 'moon 11', 9, 'k', 11);
INSERT INTO public.moon VALUES (12, 'moon 11', 9, 'k', 12);
INSERT INTO public.moon VALUES (13, 'moon 11', 9, 'k', 13);
INSERT INTO public.moon VALUES (14, 'moon 11', 5, 'k', 14);
INSERT INTO public.moon VALUES (15, 'moon 11', 5, 'k', 15);
INSERT INTO public.moon VALUES (16, 'moon 11', 5, 'k', 16);
INSERT INTO public.moon VALUES (17, 'moon 11', 11, 'k', 17);
INSERT INTO public.moon VALUES (18, 'moon 11', 11, 'k', 18);
INSERT INTO public.moon VALUES (19, 'moon 11', 11, 'k', 19);
INSERT INTO public.moon VALUES (20, 'moon 11', 11, 'c', 20);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Planet 1', true, 3000, 1);
INSERT INTO public.planet VALUES (2, 'Planet 2', true, 3001, 1);
INSERT INTO public.planet VALUES (3, 'Planet 3', true, 3002, 1);
INSERT INTO public.planet VALUES (4, 'Planet 4', true, 3022, 2);
INSERT INTO public.planet VALUES (5, 'Planet 5', true, 3122, 3);
INSERT INTO public.planet VALUES (6, 'Planet 6', true, 3112, 4);
INSERT INTO public.planet VALUES (7, 'Planet 7', true, 3012, 5);
INSERT INTO public.planet VALUES (8, 'Planet 8', true, 2212, 1);
INSERT INTO public.planet VALUES (9, 'Planet 9', true, 2222, 2);
INSERT INTO public.planet VALUES (10, 'Planet 10', true, 2221, 3);
INSERT INTO public.planet VALUES (11, 'Planet 11', true, 2421, 5);
INSERT INTO public.planet VALUES (12, 'Planet 12', true, 3421, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Lynx', 1, 1, 1);
INSERT INTO public.star VALUES (2, 'Crux', 2, 2, 1);
INSERT INTO public.star VALUES (3, 'Lyra', 2, 3, 1);
INSERT INTO public.star VALUES (4, 'Leo', 3, 4, 1);
INSERT INTO public.star VALUES (5, 'Grus', 4, 5, 1);
INSERT INTO public.star VALUES (6, 'Draco', 6, 6, 2);


--
-- Name: filler_filler_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.filler_filler_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: filler filler_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.filler
    ADD CONSTRAINT filler_pkey PRIMARY KEY (filler_id);


--
-- Name: filler filler_unique_num_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.filler
    ADD CONSTRAINT filler_unique_num_key UNIQUE (unique_num);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_unique_num_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_unique_num_key UNIQUE (unique_num);


--
-- Name: moon moon_another_num_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_another_num_key UNIQUE (another_num);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_unique_num_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unique_num_key UNIQUE (unique_num);


--
-- Name: planet unique_coz; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_coz UNIQUE (surface);


--
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--