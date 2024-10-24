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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    number_guess integer NOT NULL,
    user_id integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(20) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 10, 6);
INSERT INTO public.games VALUES (2, 791, 7);
INSERT INTO public.games VALUES (3, 799, 7);
INSERT INTO public.games VALUES (4, 980, 8);
INSERT INTO public.games VALUES (5, 51, 8);
INSERT INTO public.games VALUES (6, 830, 7);
INSERT INTO public.games VALUES (7, 895, 7);
INSERT INTO public.games VALUES (8, 158, 7);
INSERT INTO public.games VALUES (9, 560, 9);
INSERT INTO public.games VALUES (10, 122, 9);
INSERT INTO public.games VALUES (11, 378, 10);
INSERT INTO public.games VALUES (12, 572, 10);
INSERT INTO public.games VALUES (13, 374, 9);
INSERT INTO public.games VALUES (14, 415, 9);
INSERT INTO public.games VALUES (15, 149, 9);
INSERT INTO public.games VALUES (16, 349, 11);
INSERT INTO public.games VALUES (17, 869, 11);
INSERT INTO public.games VALUES (18, 964, 12);
INSERT INTO public.games VALUES (19, 429, 12);
INSERT INTO public.games VALUES (20, 634, 11);
INSERT INTO public.games VALUES (21, 593, 11);
INSERT INTO public.games VALUES (22, 634, 11);
INSERT INTO public.games VALUES (23, 348, 13);
INSERT INTO public.games VALUES (24, 399, 13);
INSERT INTO public.games VALUES (25, 252, 14);
INSERT INTO public.games VALUES (26, 320, 14);
INSERT INTO public.games VALUES (27, 956, 13);
INSERT INTO public.games VALUES (28, 397, 13);
INSERT INTO public.games VALUES (29, 955, 13);
INSERT INTO public.games VALUES (30, 862, 15);
INSERT INTO public.games VALUES (31, 402, 15);
INSERT INTO public.games VALUES (32, 255, 16);
INSERT INTO public.games VALUES (33, 11, 16);
INSERT INTO public.games VALUES (34, 781, 15);
INSERT INTO public.games VALUES (35, 717, 15);
INSERT INTO public.games VALUES (36, 802, 15);
INSERT INTO public.games VALUES (37, 344, 17);
INSERT INTO public.games VALUES (38, 971, 17);
INSERT INTO public.games VALUES (39, 816, 18);
INSERT INTO public.games VALUES (40, 277, 18);
INSERT INTO public.games VALUES (41, 950, 17);
INSERT INTO public.games VALUES (42, 885, 17);
INSERT INTO public.games VALUES (43, 742, 17);
INSERT INTO public.games VALUES (44, 240, 19);
INSERT INTO public.games VALUES (45, 672, 19);
INSERT INTO public.games VALUES (46, 783, 20);
INSERT INTO public.games VALUES (47, 725, 20);
INSERT INTO public.games VALUES (48, 769, 19);
INSERT INTO public.games VALUES (49, 183, 19);
INSERT INTO public.games VALUES (50, 150, 19);
INSERT INTO public.games VALUES (51, 982, 21);
INSERT INTO public.games VALUES (52, 975, 21);
INSERT INTO public.games VALUES (53, 210, 22);
INSERT INTO public.games VALUES (54, 686, 22);
INSERT INTO public.games VALUES (55, 987, 21);
INSERT INTO public.games VALUES (56, 633, 21);
INSERT INTO public.games VALUES (57, 251, 21);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1729787080488');
INSERT INTO public.users VALUES (2, 'user_1729787080487');
INSERT INTO public.users VALUES (3, 'Pavi');
INSERT INTO public.users VALUES (4, 'vidhya');
INSERT INTO public.users VALUES (5, '3');
INSERT INTO public.users VALUES (6, 'Murali');
INSERT INTO public.users VALUES (7, 'user_1729787408813');
INSERT INTO public.users VALUES (8, 'user_1729787408812');
INSERT INTO public.users VALUES (9, 'user_1729787725997');
INSERT INTO public.users VALUES (10, 'user_1729787725996');
INSERT INTO public.users VALUES (11, 'user_1729787755430');
INSERT INTO public.users VALUES (12, 'user_1729787755429');
INSERT INTO public.users VALUES (13, 'user_1729787764196');
INSERT INTO public.users VALUES (14, 'user_1729787764195');
INSERT INTO public.users VALUES (15, 'user_1729787919562');
INSERT INTO public.users VALUES (16, 'user_1729787919561');
INSERT INTO public.users VALUES (17, 'user_1729787991294');
INSERT INTO public.users VALUES (18, 'user_1729787991293');
INSERT INTO public.users VALUES (19, 'user_1729788029783');
INSERT INTO public.users VALUES (20, 'user_1729788029782');
INSERT INTO public.users VALUES (21, 'user_1729788344014');
INSERT INTO public.users VALUES (22, 'user_1729788344013');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 57, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 22, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

