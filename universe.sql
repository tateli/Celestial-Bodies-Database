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
-- Name: blackhole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.blackhole (
    blackhole_id integer NOT NULL,
    age_in_millions_of_years integer,
    size_in_millions_of_km integer,
    name character varying(60) NOT NULL
);


ALTER TABLE public.blackhole OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    age_in_millions_of_years numeric,
    has_life boolean,
    description text,
    name character varying(60) NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    age_in_millions_of_years numeric,
    has_life boolean,
    planet_id integer NOT NULL,
    name character varying(60) NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    age_in_millions_of_years numeric,
    has_life boolean,
    star_id integer NOT NULL,
    name character varying(60) NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    age_in_millions_of_years numeric,
    galaxy_id integer NOT NULL,
    star_type character varying(60),
    name character varying(60) NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: blackhole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.blackhole VALUES (1, NULL, 44, 'Sagittarius A');
INSERT INTO public.blackhole VALUES (2, NULL, NULL, 'NGC 1023');
INSERT INTO public.blackhole VALUES (3, NULL, NULL, 'NGC 1194');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 13610, true, 'Our home galaxy', 'Milky Way');
INSERT INTO public.galaxy VALUES (2, 190, false, 'Acretion near the Milky Way', 'Canis Major Dwarf');
INSERT INTO public.galaxy VALUES (3, NULL, false, 'Spheroidal dwarf galaxy', 'Draco II');
INSERT INTO public.galaxy VALUES (4, NULL, false, 'Dwarf galaxy composed of very old stars', 'Tucana III');
INSERT INTO public.galaxy VALUES (5, NULL, false, 'Spheroidal galaxy in the Leo constellation', 'Segue 1');
INSERT INTO public.galaxy VALUES (6, NULL, false, 'Acretion by the Milky Way', 'SagDEG');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, NULL, false, 1, 'Moon');
INSERT INTO public.moon VALUES (2, NULL, false, 2, 'Europa');
INSERT INTO public.moon VALUES (3, NULL, false, 2, 'Ganymede');
INSERT INTO public.moon VALUES (4, NULL, false, 2, 'Io');
INSERT INTO public.moon VALUES (5, NULL, false, 2, 'Callisto');
INSERT INTO public.moon VALUES (6, NULL, false, 2, 'Amalthea');
INSERT INTO public.moon VALUES (7, NULL, false, 2, 'Himalia');
INSERT INTO public.moon VALUES (8, NULL, false, 2, 'Valetudo');
INSERT INTO public.moon VALUES (9, NULL, false, 2, 'Adrastea');
INSERT INTO public.moon VALUES (10, NULL, false, 2, 'Carme');
INSERT INTO public.moon VALUES (11, NULL, false, 3, 'Titan');
INSERT INTO public.moon VALUES (12, NULL, false, 3, 'Enceladus');
INSERT INTO public.moon VALUES (13, NULL, false, 3, 'Mimas');
INSERT INTO public.moon VALUES (14, NULL, false, 3, 'Tethys');
INSERT INTO public.moon VALUES (15, NULL, false, 3, 'Dione');
INSERT INTO public.moon VALUES (16, NULL, false, 3, 'Rhea');
INSERT INTO public.moon VALUES (17, NULL, false, 3, 'Hyperion');
INSERT INTO public.moon VALUES (18, NULL, false, 3, 'Epimetheus');
INSERT INTO public.moon VALUES (19, NULL, false, 3, 'Pan');
INSERT INTO public.moon VALUES (20, NULL, false, 3, 'Phoebe');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 4543, true, 1, 'Earth');
INSERT INTO public.planet VALUES (2, 4603, false, 1, 'Jupiter');
INSERT INTO public.planet VALUES (3, 4503, false, 1, 'Saturn');
INSERT INTO public.planet VALUES (4, 4503, false, 1, 'Mercury');
INSERT INTO public.planet VALUES (5, 4603, false, 1, 'Mars');
INSERT INTO public.planet VALUES (6, 4503, false, 1, 'Venus');
INSERT INTO public.planet VALUES (7, 4503, false, 1, 'Uranus');
INSERT INTO public.planet VALUES (8, 4503, false, 1, 'Neptune');
INSERT INTO public.planet VALUES (9, NULL, false, 3, 'Proxima Centauri b');
INSERT INTO public.planet VALUES (10, NULL, false, 3, 'Proxima Centauri c');
INSERT INTO public.planet VALUES (11, NULL, false, 3, 'Proxima Centauri d');
INSERT INTO public.planet VALUES (12, NULL, false, 4, 'Wolf 359 c');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 4600, 1, 'Yellow Dwarf Star', 'Sun');
INSERT INTO public.star VALUES (2, NULL, 1, 'White Dwarf Star', 'Sirius');
INSERT INTO public.star VALUES (3, NULL, 1, 'Red Dwarf Star', 'Proxima Centauri');
INSERT INTO public.star VALUES (4, NULL, 1, 'Red Dwarf Star', 'Wolf 359');
INSERT INTO public.star VALUES (5, NULL, 1, 'Red Supergiant Star', 'Betelgeuse');
INSERT INTO public.star VALUES (6, NULL, 1, 'Supergiant Star', 'Polaris');


--
-- Name: blackhole blackhole_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_name_key UNIQUE (name);


--
-- Name: blackhole blackhole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_pkey PRIMARY KEY (blackhole_id);


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

