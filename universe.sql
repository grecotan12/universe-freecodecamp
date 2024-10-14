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
    age_in_million_of_years integer,
    description text,
    is_good boolean
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
    is_good boolean,
    is_bad boolean
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
    age_in_million_of_years integer,
    distance_from_earth numeric,
    is_spherical boolean,
    has_life boolean,
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
    galaxy_id integer NOT NULL,
    is_good boolean,
    is_bad boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_galaxy_id_seq OWNED BY public.star.galaxy_id;


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
-- Name: universe; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.universe (
    universe_id integer NOT NULL,
    name character varying(30) NOT NULL,
    extra integer
);


ALTER TABLE public.universe OWNER TO freecodecamp;

--
-- Name: universe_universe_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.universe_universe_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.universe_universe_id_seq OWNER TO freecodecamp;

--
-- Name: universe_universe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.universe_universe_id_seq OWNED BY public.universe.universe_id;


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
-- Name: star galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN galaxy_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);


--
-- Name: universe universe_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe ALTER COLUMN universe_id SET DEFAULT nextval('public.universe_universe_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Mercury', 2, 'gray shape', NULL);
INSERT INTO public.galaxy VALUES (2, 'two', 3, 'lolone', NULL);
INSERT INTO public.galaxy VALUES (3, 'three', 4, 'loltwo', NULL);
INSERT INTO public.galaxy VALUES (4, 'four', 5, 'lolthree', NULL);
INSERT INTO public.galaxy VALUES (5, 'five', 6, 'lolfour', NULL);
INSERT INTO public.galaxy VALUES (6, 'six', 7, 'lolfive', NULL);
INSERT INTO public.galaxy VALUES (7, 'seven', 8, 'lolsix', true);
INSERT INTO public.galaxy VALUES (8, 'eight', 9, 'lolseven', true);
INSERT INTO public.galaxy VALUES (9, 'nine', 10, 'loleight', true);
INSERT INTO public.galaxy VALUES (10, 'ten', 11, 'lolnine', true);
INSERT INTO public.galaxy VALUES (11, 'eleven', 12, 'lolten', true);
INSERT INTO public.galaxy VALUES (12, 'twelves', 13, 'loleven', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (23, 'moon_two', 2, true, false);
INSERT INTO public.moon VALUES (24, 'moon_three', 2, true, false);
INSERT INTO public.moon VALUES (25, 'moon_four', 2, true, false);
INSERT INTO public.moon VALUES (26, 'moon_five', 2, true, false);
INSERT INTO public.moon VALUES (27, 'moon_six', 2, true, false);
INSERT INTO public.moon VALUES (28, 'moon_seven', 2, true, false);
INSERT INTO public.moon VALUES (29, 'moon_eight', 2, true, false);
INSERT INTO public.moon VALUES (30, 'moon_nine', 2, true, false);
INSERT INTO public.moon VALUES (31, 'moon_10', 2, true, false);
INSERT INTO public.moon VALUES (32, 'moon_11', 2, true, false);
INSERT INTO public.moon VALUES (33, 'moon_12', 2, true, false);
INSERT INTO public.moon VALUES (34, 'moon_13', 2, true, false);
INSERT INTO public.moon VALUES (35, 'moon_14', 2, true, false);
INSERT INTO public.moon VALUES (36, 'moon_15', 2, true, false);
INSERT INTO public.moon VALUES (37, 'moon_16', 2, true, false);
INSERT INTO public.moon VALUES (38, 'moon_17', 2, true, false);
INSERT INTO public.moon VALUES (39, 'moon_18', 2, true, false);
INSERT INTO public.moon VALUES (40, 'moon_19', 2, true, false);
INSERT INTO public.moon VALUES (41, 'moon_20', 2, true, false);
INSERT INTO public.moon VALUES (42, 'moon_21', 2, true, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'Mercury Planet', 3, 3.6, true, false, 1);
INSERT INTO public.planet VALUES (5, 'two', 4, 3.8, true, false, 3);
INSERT INTO public.planet VALUES (6, 'three', 5, 4, true, false, 4);
INSERT INTO public.planet VALUES (7, 'four', 6, 5, true, false, 5);
INSERT INTO public.planet VALUES (8, 'five', 7, 6, true, false, 6);
INSERT INTO public.planet VALUES (11, 'six', 8, 7, true, false, 8);
INSERT INTO public.planet VALUES (12, 'seven', 9, 8, true, false, 9);
INSERT INTO public.planet VALUES (13, 'eight', 10, 9, true, false, 10);
INSERT INTO public.planet VALUES (14, 'nine', 11, 10, true, false, 11);
INSERT INTO public.planet VALUES (15, 'ten', 12, 11, true, false, 12);
INSERT INTO public.planet VALUES (16, 'eleven', 13, 12, true, false, 13);
INSERT INTO public.planet VALUES (18, 'twelve', 14, 13, true, false, 8);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'one', 1, NULL, NULL);
INSERT INTO public.star VALUES (2, 'two', 2, NULL, NULL);
INSERT INTO public.star VALUES (3, 'three', 3, NULL, NULL);
INSERT INTO public.star VALUES (4, 'four', 4, NULL, NULL);
INSERT INTO public.star VALUES (5, 'five', 5, NULL, NULL);
INSERT INTO public.star VALUES (6, 'six', 6, NULL, NULL);
INSERT INTO public.star VALUES (8, 'seven', 7, true, false);
INSERT INTO public.star VALUES (9, 'eight', 8, true, false);
INSERT INTO public.star VALUES (10, 'nine', 9, true, false);
INSERT INTO public.star VALUES (11, 'ten', 10, true, false);
INSERT INTO public.star VALUES (12, 'eleven', 11, true, false);
INSERT INTO public.star VALUES (13, 'twelves', 12, true, false);


--
-- Data for Name: universe; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.universe VALUES (1, 'one', 1);
INSERT INTO public.universe VALUES (2, 'two', 2);
INSERT INTO public.universe VALUES (3, 'three', 3);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 42, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 18, true);


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 1, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 13, true);


--
-- Name: universe_universe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.universe_universe_id_seq', 3, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key1 UNIQUE (name);


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
-- Name: universe universe_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe
    ADD CONSTRAINT universe_name_key UNIQUE (name);


--
-- Name: universe universe_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe
    ADD CONSTRAINT universe_pkey PRIMARY KEY (universe_id);


--
-- Name: star galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey1 FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: planet star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

