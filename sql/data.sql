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
-- Data for Name: playable_class; Type: TABLE DATA; Schema: public; Owner: raidrunner_user
--

COPY public.playable_class (playable_class_id, playable_class_slug) FROM stdin;
\.


--
-- Data for Name: playable_race; Type: TABLE DATA; Schema: public; Owner: raidrunner_user
--

COPY public.playable_race (is_allied_race, is_selectable, playable_race_id, faction, playable_race_slug) FROM stdin;
\.


--
-- Data for Name: playable_specialization; Type: TABLE DATA; Schema: public; Owner: raidrunner_user
--

COPY public.playable_specialization (playable_class_id, playable_specialization_id, playable_specialization_slug, specialization_type) FROM stdin;
\.


--
-- Data for Name: realm; Type: TABLE DATA; Schema: public; Owner: raidrunner_user
--

COPY public.realm (realm_id, realm_category, realm_slug) FROM stdin;
\.


--
-- Data for Name: user_account; Type: TABLE DATA; Schema: public; Owner: raidrunner_user
--

COPY public.user_account (user_id, battle_tag, user_name) FROM stdin;
\.


--
-- PostgreSQL database dump complete
--

