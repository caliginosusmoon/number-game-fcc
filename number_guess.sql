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
    user_id integer NOT NULL,
    guesses integer DEFAULT 0 NOT NULL
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
    username character varying(22) NOT NULL
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

INSERT INTO public.games VALUES (1, 1, 895);
INSERT INTO public.games VALUES (2, 1, 599);
INSERT INTO public.games VALUES (3, 2, 375);
INSERT INTO public.games VALUES (4, 2, 12);
INSERT INTO public.games VALUES (5, 1, 531);
INSERT INTO public.games VALUES (6, 1, 540);
INSERT INTO public.games VALUES (7, 1, 682);
INSERT INTO public.games VALUES (8, 3, 264);
INSERT INTO public.games VALUES (9, 3, 198);
INSERT INTO public.games VALUES (10, 4, 965);
INSERT INTO public.games VALUES (11, 4, 982);
INSERT INTO public.games VALUES (12, 3, 524);
INSERT INTO public.games VALUES (13, 3, 152);
INSERT INTO public.games VALUES (14, 3, 927);
INSERT INTO public.games VALUES (15, 5, 286);
INSERT INTO public.games VALUES (16, 5, 340);
INSERT INTO public.games VALUES (17, 6, 824);
INSERT INTO public.games VALUES (18, 6, 48);
INSERT INTO public.games VALUES (19, 5, 575);
INSERT INTO public.games VALUES (20, 5, 200);
INSERT INTO public.games VALUES (21, 5, 506);
INSERT INTO public.games VALUES (22, 7, 426);
INSERT INTO public.games VALUES (23, 7, 12);
INSERT INTO public.games VALUES (24, 8, 9);
INSERT INTO public.games VALUES (25, 8, 754);
INSERT INTO public.games VALUES (26, 7, 56);
INSERT INTO public.games VALUES (27, 7, 933);
INSERT INTO public.games VALUES (28, 7, 203);
INSERT INTO public.games VALUES (29, 9, 307);
INSERT INTO public.games VALUES (30, 9, 103);
INSERT INTO public.games VALUES (31, 10, 422);
INSERT INTO public.games VALUES (32, 10, 579);
INSERT INTO public.games VALUES (33, 9, 21);
INSERT INTO public.games VALUES (34, 9, 258);
INSERT INTO public.games VALUES (35, 9, 454);
INSERT INTO public.games VALUES (36, 11, 426);
INSERT INTO public.games VALUES (37, 11, 406);
INSERT INTO public.games VALUES (38, 12, 664);
INSERT INTO public.games VALUES (39, 12, 841);
INSERT INTO public.games VALUES (40, 11, 164);
INSERT INTO public.games VALUES (41, 11, 739);
INSERT INTO public.games VALUES (42, 11, 315);
INSERT INTO public.games VALUES (43, 13, 34);
INSERT INTO public.games VALUES (44, 13, 143);
INSERT INTO public.games VALUES (45, 14, 790);
INSERT INTO public.games VALUES (46, 14, 285);
INSERT INTO public.games VALUES (47, 13, 822);
INSERT INTO public.games VALUES (48, 13, 293);
INSERT INTO public.games VALUES (49, 13, 674);
INSERT INTO public.games VALUES (50, 15, 956);
INSERT INTO public.games VALUES (51, 15, 125);
INSERT INTO public.games VALUES (52, 16, 619);
INSERT INTO public.games VALUES (53, 16, 679);
INSERT INTO public.games VALUES (54, 15, 714);
INSERT INTO public.games VALUES (55, 15, 643);
INSERT INTO public.games VALUES (56, 15, 538);
INSERT INTO public.games VALUES (57, 17, 135);
INSERT INTO public.games VALUES (58, 17, 64);
INSERT INTO public.games VALUES (59, 18, 671);
INSERT INTO public.games VALUES (60, 18, 623);
INSERT INTO public.games VALUES (61, 17, 789);
INSERT INTO public.games VALUES (62, 17, 547);
INSERT INTO public.games VALUES (63, 17, 609);
INSERT INTO public.games VALUES (64, 19, 608);
INSERT INTO public.games VALUES (65, 19, 438);
INSERT INTO public.games VALUES (66, 20, 83);
INSERT INTO public.games VALUES (67, 20, 212);
INSERT INTO public.games VALUES (68, 19, 505);
INSERT INTO public.games VALUES (69, 19, 377);
INSERT INTO public.games VALUES (70, 19, 198);
INSERT INTO public.games VALUES (71, 23, 336);
INSERT INTO public.games VALUES (72, 23, 966);
INSERT INTO public.games VALUES (73, 24, 389);
INSERT INTO public.games VALUES (74, 24, 152);
INSERT INTO public.games VALUES (75, 23, 786);
INSERT INTO public.games VALUES (76, 23, 251);
INSERT INTO public.games VALUES (77, 23, 453);
INSERT INTO public.games VALUES (78, 25, 479);
INSERT INTO public.games VALUES (79, 25, 212);
INSERT INTO public.games VALUES (80, 26, 992);
INSERT INTO public.games VALUES (81, 26, 264);
INSERT INTO public.games VALUES (82, 25, 308);
INSERT INTO public.games VALUES (83, 25, 399);
INSERT INTO public.games VALUES (84, 25, 478);
INSERT INTO public.games VALUES (85, 29, 565);
INSERT INTO public.games VALUES (86, 29, 375);
INSERT INTO public.games VALUES (87, 30, 970);
INSERT INTO public.games VALUES (88, 30, 332);
INSERT INTO public.games VALUES (89, 29, 887);
INSERT INTO public.games VALUES (90, 29, 537);
INSERT INTO public.games VALUES (91, 29, 519);
INSERT INTO public.games VALUES (92, 31, 910);
INSERT INTO public.games VALUES (93, 31, 505);
INSERT INTO public.games VALUES (94, 32, 807);
INSERT INTO public.games VALUES (95, 32, 392);
INSERT INTO public.games VALUES (96, 31, 613);
INSERT INTO public.games VALUES (97, 31, 594);
INSERT INTO public.games VALUES (98, 31, 520);
INSERT INTO public.games VALUES (99, 33, 226);
INSERT INTO public.games VALUES (100, 33, 545);
INSERT INTO public.games VALUES (101, 34, 514);
INSERT INTO public.games VALUES (102, 34, 213);
INSERT INTO public.games VALUES (103, 33, 845);
INSERT INTO public.games VALUES (104, 33, 529);
INSERT INTO public.games VALUES (105, 33, 263);
INSERT INTO public.games VALUES (106, 35, 78);
INSERT INTO public.games VALUES (107, 35, 241);
INSERT INTO public.games VALUES (108, 36, 350);
INSERT INTO public.games VALUES (109, 36, 569);
INSERT INTO public.games VALUES (110, 35, 155);
INSERT INTO public.games VALUES (111, 35, 451);
INSERT INTO public.games VALUES (112, 35, 719);
INSERT INTO public.games VALUES (113, 37, 438);
INSERT INTO public.games VALUES (114, 37, 159);
INSERT INTO public.games VALUES (115, 38, 669);
INSERT INTO public.games VALUES (116, 38, 294);
INSERT INTO public.games VALUES (117, 37, 363);
INSERT INTO public.games VALUES (118, 37, 838);
INSERT INTO public.games VALUES (119, 37, 735);
INSERT INTO public.games VALUES (120, 39, 806);
INSERT INTO public.games VALUES (121, 39, 401);
INSERT INTO public.games VALUES (122, 40, 497);
INSERT INTO public.games VALUES (123, 40, 212);
INSERT INTO public.games VALUES (124, 39, 826);
INSERT INTO public.games VALUES (125, 39, 929);
INSERT INTO public.games VALUES (126, 39, 421);
INSERT INTO public.games VALUES (127, 41, 750);
INSERT INTO public.games VALUES (128, 41, 430);
INSERT INTO public.games VALUES (129, 42, 321);
INSERT INTO public.games VALUES (130, 42, 726);
INSERT INTO public.games VALUES (131, 41, 233);
INSERT INTO public.games VALUES (132, 41, 438);
INSERT INTO public.games VALUES (133, 41, 154);
INSERT INTO public.games VALUES (134, 43, 316);
INSERT INTO public.games VALUES (135, 43, 78);
INSERT INTO public.games VALUES (136, 44, 263);
INSERT INTO public.games VALUES (137, 44, 325);
INSERT INTO public.games VALUES (138, 43, 274);
INSERT INTO public.games VALUES (139, 43, 703);
INSERT INTO public.games VALUES (140, 43, 139);
INSERT INTO public.games VALUES (141, 45, 810);
INSERT INTO public.games VALUES (142, 45, 633);
INSERT INTO public.games VALUES (143, 45, 273);
INSERT INTO public.games VALUES (144, 47, 502);
INSERT INTO public.games VALUES (145, 47, 728);
INSERT INTO public.games VALUES (146, 48, 684);
INSERT INTO public.games VALUES (147, 48, 419);
INSERT INTO public.games VALUES (148, 47, 809);
INSERT INTO public.games VALUES (149, 47, 929);
INSERT INTO public.games VALUES (150, 47, 397);
INSERT INTO public.games VALUES (151, 49, 504);
INSERT INTO public.games VALUES (152, 49, 944);
INSERT INTO public.games VALUES (153, 50, 450);
INSERT INTO public.games VALUES (154, 50, 494);
INSERT INTO public.games VALUES (155, 49, 238);
INSERT INTO public.games VALUES (156, 49, 452);
INSERT INTO public.games VALUES (157, 49, 733);
INSERT INTO public.games VALUES (158, 51, 225);
INSERT INTO public.games VALUES (159, 51, 209);
INSERT INTO public.games VALUES (160, 52, 999);
INSERT INTO public.games VALUES (161, 52, 696);
INSERT INTO public.games VALUES (162, 51, 552);
INSERT INTO public.games VALUES (163, 51, 148);
INSERT INTO public.games VALUES (164, 51, 197);
INSERT INTO public.games VALUES (165, 53, 8720);
INSERT INTO public.games VALUES (166, 53, 8567);
INSERT INTO public.games VALUES (167, 54, 6037);
INSERT INTO public.games VALUES (168, 54, 6311);
INSERT INTO public.games VALUES (169, 53, 8225);
INSERT INTO public.games VALUES (170, 53, 1453);
INSERT INTO public.games VALUES (171, 53, 2408);
INSERT INTO public.games VALUES (172, 55, 656);
INSERT INTO public.games VALUES (173, 55, 322);
INSERT INTO public.games VALUES (174, 56, 8);
INSERT INTO public.games VALUES (175, 56, 28);
INSERT INTO public.games VALUES (176, 55, 350);
INSERT INTO public.games VALUES (177, 55, 86);
INSERT INTO public.games VALUES (178, 55, 229);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1725296372774');
INSERT INTO public.users VALUES (2, 'user_1725296372773');
INSERT INTO public.users VALUES (3, 'user_1725296550319');
INSERT INTO public.users VALUES (4, 'user_1725296550318');
INSERT INTO public.users VALUES (5, 'user_1725296747412');
INSERT INTO public.users VALUES (6, 'user_1725296747411');
INSERT INTO public.users VALUES (7, 'user_1725298156667');
INSERT INTO public.users VALUES (8, 'user_1725298156666');
INSERT INTO public.users VALUES (9, 'user_1725298164867');
INSERT INTO public.users VALUES (10, 'user_1725298164866');
INSERT INTO public.users VALUES (11, 'user_1725298181666');
INSERT INTO public.users VALUES (12, 'user_1725298181665');
INSERT INTO public.users VALUES (13, 'user_1725298199380');
INSERT INTO public.users VALUES (14, 'user_1725298199379');
INSERT INTO public.users VALUES (15, 'user_1725298221953');
INSERT INTO public.users VALUES (16, 'user_1725298221952');
INSERT INTO public.users VALUES (17, 'user_1725298256152');
INSERT INTO public.users VALUES (18, 'user_1725298256151');
INSERT INTO public.users VALUES (19, 'user_1725298278861');
INSERT INTO public.users VALUES (20, 'user_1725298278860');
INSERT INTO public.users VALUES (21, 'user_1725298325508');
INSERT INTO public.users VALUES (22, 'user_1725298325507');
INSERT INTO public.users VALUES (23, 'user_1725298332162');
INSERT INTO public.users VALUES (24, 'user_1725298332161');
INSERT INTO public.users VALUES (25, 'user_1725298459642');
INSERT INTO public.users VALUES (26, 'user_1725298459641');
INSERT INTO public.users VALUES (27, 'user_1725298502917');
INSERT INTO public.users VALUES (28, 'user_1725298502916');
INSERT INTO public.users VALUES (29, 'user_1725298509675');
INSERT INTO public.users VALUES (30, 'user_1725298509674');
INSERT INTO public.users VALUES (31, 'user_1725298756868');
INSERT INTO public.users VALUES (32, 'user_1725298756867');
INSERT INTO public.users VALUES (33, 'user_1725298771542');
INSERT INTO public.users VALUES (34, 'user_1725298771541');
INSERT INTO public.users VALUES (35, 'user_1725298774263');
INSERT INTO public.users VALUES (36, 'user_1725298774262');
INSERT INTO public.users VALUES (37, 'user_1725298776532');
INSERT INTO public.users VALUES (38, 'user_1725298776531');
INSERT INTO public.users VALUES (39, 'user_1725298778711');
INSERT INTO public.users VALUES (40, 'user_1725298778710');
INSERT INTO public.users VALUES (41, 'user_1725298780947');
INSERT INTO public.users VALUES (42, 'user_1725298780946');
INSERT INTO public.users VALUES (43, 'user_1725298785984');
INSERT INTO public.users VALUES (44, 'user_1725298785983');
INSERT INTO public.users VALUES (45, 'user_1725298792734');
INSERT INTO public.users VALUES (46, 'user_1725298792733');
INSERT INTO public.users VALUES (47, 'user_1725298805376');
INSERT INTO public.users VALUES (48, 'user_1725298805375');
INSERT INTO public.users VALUES (49, 'user_1725298826777');
INSERT INTO public.users VALUES (50, 'user_1725298826776');
INSERT INTO public.users VALUES (51, 'user_1725298836192');
INSERT INTO public.users VALUES (52, 'user_1725298836191');
INSERT INTO public.users VALUES (53, 'user_1725298892496');
INSERT INTO public.users VALUES (54, 'user_1725298892495');
INSERT INTO public.users VALUES (55, 'user_1725298907199');
INSERT INTO public.users VALUES (56, 'user_1725298907198');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 178, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 56, true);


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
-- Name: games fk_users_games; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_users_games FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

