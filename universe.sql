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
    name character varying NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth numeric(20,2),
    galaxy_types text,
    is_spherical boolean,
    has_life boolean,
    number_of_stars_in_thousands integer
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
    name character varying NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth numeric(20,2),
    moon_types text,
    is_spherical boolean,
    surface_temp_in_degreecelsius integer,
    planet_id integer,
    has_life boolean
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
    name character varying NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth numeric(10,2),
    planet_types text,
    is_spherical boolean,
    surface_temp_in_degreecelsius integer,
    star_id integer,
    has_life boolean
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
-- Name: region; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.region (
    region_id integer NOT NULL,
    name character varying NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth numeric(10,2),
    region_types text,
    is_spherical boolean,
    has_life boolean
);


ALTER TABLE public.region OWNER TO freecodecamp;

--
-- Name: region_region_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.region_region_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.region_region_id_seq OWNER TO freecodecamp;

--
-- Name: region_region_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.region_region_id_seq OWNED BY public.region.region_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth numeric(20,2),
    star_types text,
    is_spherical boolean,
    surface_temp_in_degreecelsius integer,
    galaxy_id integer,
    has_life boolean
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
-- Name: region region_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.region ALTER COLUMN region_id SET DEFAULT nextval('public.region_region_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13600, 0.00, 'Spiral', false, true, 250000000);
INSERT INTO public.galaxy VALUES (2, 'Andromeda (M31)', 10000, 2537000.00, 'Spiral', false, false, 1000000000);
INSERT INTO public.galaxy VALUES (3, 'Triangulum (M33)', 4000, 3000000.00, 'Spiral', false, false, 40000000);
INSERT INTO public.galaxy VALUES (4, 'Messier 87 (M87)', 11000, 53000000.00, 'Elliptical', true, false, 1000000000);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool Galaxy (M51)', 7500, 23000000.00, 'Spiral', false, false, 100000000);
INSERT INTO public.galaxy VALUES (6, 'Sombrero Galaxy (M104)', 10000, 29000000.00, 'Spiral', false, false, 80000000);
INSERT INTO public.galaxy VALUES (7, 'Large Magellanic Cloud (LMC)', 13000, 163000.00, 'Irregular', false, false, 10000000);
INSERT INTO public.galaxy VALUES (8, 'Small Magellanic Cloud (SMC)', 8000, 200000.00, 'Irregular', false, false, 3000000);
INSERT INTO public.galaxy VALUES (9, 'Pinwheel Galaxy (M101)', 9000, 21000000.00, 'Spiral', false, false, 100000000);
INSERT INTO public.galaxy VALUES (10, 'Cartwheel Galaxy', 150, 500000000.00, 'Ring', false, false, 5000000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 4500, 384400.00, 'Terrestrial', true, -20, 3, false);
INSERT INTO public.moon VALUES (2, 'Europa', 4600, 670900.00, 'Ice', true, -160, 4, false);
INSERT INTO public.moon VALUES (3, 'Ganymede', 4600, 1070400.00, 'Ice', true, -160, 4, false);
INSERT INTO public.moon VALUES (4, 'Callisto', 4600, 1882700.00, 'Ice', true, -139, 4, false);
INSERT INTO public.moon VALUES (5, 'Io', 4600, 421800.00, 'Volcanic', true, 130, 4, false);
INSERT INTO public.moon VALUES (6, 'Titan', 4600, 1221700.00, 'Atmospheric', true, -179, 5, false);
INSERT INTO public.moon VALUES (7, 'Enceladus', 4600, 237900.00, 'Ice', true, -201, 5, false);
INSERT INTO public.moon VALUES (8, 'Triton', 4600, 354800.00, 'Ice', true, -235, 6, false);
INSERT INTO public.moon VALUES (9, 'Rhea', 4600, 527100.00, 'Ice', true, -220, 5, false);
INSERT INTO public.moon VALUES (10, 'Iapetus', 4600, 3561000.00, 'Rocky', true, -143, 5, false);
INSERT INTO public.moon VALUES (11, 'Mimas', 4600, 185600.00, 'Ice', true, -200, 5, false);
INSERT INTO public.moon VALUES (12, 'Hyperion', 4600, 1480000.00, 'Ice', true, -228, 5, false);
INSERT INTO public.moon VALUES (13, 'Pallene', 4600, 212000.00, 'Ice', true, -184, 5, false);
INSERT INTO public.moon VALUES (14, 'Prometheus', 4600, 139000.00, 'Rocky', true, -189, 5, false);
INSERT INTO public.moon VALUES (15, 'Pan', 4600, 133580.00, 'Rocky', true, -184, 5, false);
INSERT INTO public.moon VALUES (16, 'Janus', 4600, 151500.00, 'Rocky', true, -152, 5, false);
INSERT INTO public.moon VALUES (17, 'Epimetheus', 4600, 151400.00, 'Rocky', true, -180, 5, false);
INSERT INTO public.moon VALUES (18, 'Phoebe', 4600, 2131000.00, 'Rocky', true, -205, 5, false);
INSERT INTO public.moon VALUES (19, 'Dione', 4600, 377400.00, 'Ice', true, -190, 5, false);
INSERT INTO public.moon VALUES (20, 'Tethys', 4600, 294700.00, 'Ice', true, -213, 5, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 4600, 77.00, 'Terrestrial', true, 430, 1, false);
INSERT INTO public.planet VALUES (2, 'Venus', 4600, 41.00, 'Terrestrial', true, 465, 1, false);
INSERT INTO public.planet VALUES (3, 'Earth', 4500, 0.00, 'Terrestrial', true, 15, 1, true);
INSERT INTO public.planet VALUES (4, 'Mars', 4600, 78.00, 'Terrestrial', true, -60, 1, false);
INSERT INTO public.planet VALUES (5, 'Jupiter', 4600, 628.00, 'Gas Giant', true, -145, 1, false);
INSERT INTO public.planet VALUES (6, 'Saturn', 4600, 1200.00, 'Gas Giant', true, -178, 1, false);
INSERT INTO public.planet VALUES (7, 'Uranus', 4600, 2600.00, 'Ice Giant', true, -197, 1, false);
INSERT INTO public.planet VALUES (8, 'Neptune', 4600, 4300.00, 'Ice Giant', true, -201, 1, false);
INSERT INTO public.planet VALUES (9, 'Pluto', 4600, 4300.00, 'Dwarf Planet', true, -225, 1, false);
INSERT INTO public.planet VALUES (10, 'Eris', 4600, 10000.00, 'Dwarf Planet', true, -243, 2, false);
INSERT INTO public.planet VALUES (11, 'Haumea', 4600, 6000.00, 'Dwarf Planet', true, -241, 3, false);
INSERT INTO public.planet VALUES (12, 'Makemake', 4600, 6500.00, 'Dwarf Planet', true, -239, 4, false);


--
-- Data for Name: region; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.region VALUES (1, 'Inner Solar System', 4600, 0.00, 'Planetary System', false, true);
INSERT INTO public.region VALUES (2, 'Asteroid Belt', 4600, 2.70, 'Asteroid Region', false, false);
INSERT INTO public.region VALUES (3, 'Galactic Core', 13000, 27000.00, 'Galactic Core', false, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirius', 242, 8.60, 'Main Sequence', true, 9940, 1, false);
INSERT INTO public.star VALUES (2, 'Mu Andromedae', 40, 130.00, 'Main Sequence', true, 12400, 2, false);
INSERT INTO public.star VALUES (3, 'HD 65005', 1000, 2750000.00, 'Giant', true, 3600, 3, false);
INSERT INTO public.star VALUES (4, 'Messier 87’s Giant Star', 10000, 53000000.00, 'Giant', true, 5000, 4, false);
INSERT INTO public.star VALUES (5, 'HD 113679', 220, 23000000.00, 'Main Sequence', true, 5800, 5, false);
INSERT INTO public.star VALUES (6, 'HD 83573', 1400, 29000000.00, 'Giant', true, 4900, 6, false);
INSERT INTO public.star VALUES (7, 'Betelgeuse', 8500, 643.00, 'Supergiant', true, 3500, 7, false);
INSERT INTO public.star VALUES (8, 'Nova SMC', 1200, 200000.00, 'Nova', true, 7000, 8, false);
INSERT INTO public.star VALUES (9, 'HD 97048', 7800, 21000000.00, 'Main Sequence', true, 9700, 9, false);
INSERT INTO public.star VALUES (10, 'HD 111150', 10, 500000000.00, 'Main Sequence', true, 5800, 10, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 11, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: region_region_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.region_region_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 10, true);


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
-- Name: region region_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.region
    ADD CONSTRAINT region_name_key UNIQUE (name);


--
-- Name: region region_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.region
    ADD CONSTRAINT region_pkey PRIMARY KEY (region_id);


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

