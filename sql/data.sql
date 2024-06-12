--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3
-- Dumped by pg_dump version 16.3

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
-- Data for Name: faction; Type: TABLE DATA; Schema: public; Owner: raidrunner_user
--

COPY public.faction (faction_id, faction_type) FROM stdin;
\.


--
-- Data for Name: playable_class; Type: TABLE DATA; Schema: public; Owner: raidrunner_user
--

COPY public.playable_class (playable_class_id, playable_class_slug) FROM stdin;
\.


--
-- Data for Name: playable_race; Type: TABLE DATA; Schema: public; Owner: raidrunner_user
--

COPY public.playable_race (is_allied_race, is_selectable, playable_race_id, faction_id, playable_race_slug) FROM stdin;
\.


--
-- Data for Name: player_specialization_type; Type: TABLE DATA; Schema: public; Owner: raidrunner_user
--

COPY public.player_specialization_type (specialization_type_id, specialization_type_slug) FROM stdin;
\.


--
-- Data for Name: playable_specialization; Type: TABLE DATA; Schema: public; Owner: raidrunner_user
--

COPY public.playable_specialization (playable_specialization_id, faction_id, playable_specialization_slug) FROM stdin;
\.


--
-- PostgreSQL database dump complete
--

