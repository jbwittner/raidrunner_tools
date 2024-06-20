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

ALTER TABLE ONLY public."character" DROP CONSTRAINT fkcharacter_playablerace;
ALTER TABLE ONLY public.wow_account DROP CONSTRAINT fk_wowaccount_user;
ALTER TABLE ONLY public.playable_specialization DROP CONSTRAINT fk_playableclass_playablespecialization;
ALTER TABLE ONLY public."character" DROP CONSTRAINT fk_character_wowaccount;
ALTER TABLE ONLY public."character" DROP CONSTRAINT fk_character_realm;
ALTER TABLE ONLY public."character" DROP CONSTRAINT fk_character_playableclass;
ALTER TABLE ONLY public.wow_account DROP CONSTRAINT wow_account_pkey;
ALTER TABLE ONLY public.user_account DROP CONSTRAINT user_account_pkey;
ALTER TABLE ONLY public.realm DROP CONSTRAINT realm_pkey;
ALTER TABLE ONLY public.playable_specialization DROP CONSTRAINT playable_specialization_pkey;
ALTER TABLE ONLY public.playable_race DROP CONSTRAINT playable_race_pkey;
ALTER TABLE ONLY public.playable_class DROP CONSTRAINT playable_class_pkey;
ALTER TABLE ONLY public."character" DROP CONSTRAINT character_pkey;
DROP TABLE public.wow_account;
DROP TABLE public.user_account;
DROP TABLE public.realm;
DROP TABLE public.playable_specialization;
DROP TABLE public.playable_race;
DROP TABLE public.playable_class;
DROP TABLE public."character";
SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: character; Type: TABLE; Schema: public; Owner: raidrunner_user
--

CREATE TABLE public."character" (
    account_id integer NOT NULL,
    character_id integer NOT NULL,
    character_level integer NOT NULL,
    playable_class_id integer NOT NULL,
    playable_race_id integer NOT NULL,
    realm_id integer NOT NULL,
    character_name character varying(255) NOT NULL
);


ALTER TABLE public."character" OWNER TO raidrunner_user;

--
-- Name: playable_class; Type: TABLE; Schema: public; Owner: raidrunner_user
--

CREATE TABLE public.playable_class (
    playable_class_id integer NOT NULL,
    playable_class_slug character varying(255) NOT NULL
);


ALTER TABLE public.playable_class OWNER TO raidrunner_user;

--
-- Name: playable_race; Type: TABLE; Schema: public; Owner: raidrunner_user
--

CREATE TABLE public.playable_race (
    is_allied_race boolean NOT NULL,
    is_selectable boolean NOT NULL,
    playable_race_id integer NOT NULL,
    faction character varying(255) NOT NULL,
    playable_race_slug character varying(255) NOT NULL
);


ALTER TABLE public.playable_race OWNER TO raidrunner_user;

--
-- Name: playable_specialization; Type: TABLE; Schema: public; Owner: raidrunner_user
--

CREATE TABLE public.playable_specialization (
    playable_class_id integer NOT NULL,
    playable_specialization_id integer NOT NULL,
    playable_specialization_slug character varying(255) NOT NULL,
    specialization_type character varying(255) NOT NULL
);


ALTER TABLE public.playable_specialization OWNER TO raidrunner_user;

--
-- Name: realm; Type: TABLE; Schema: public; Owner: raidrunner_user
--

CREATE TABLE public.realm (
    realm_id integer NOT NULL,
    realm_category character varying(255) NOT NULL,
    realm_slug character varying(255) NOT NULL
);


ALTER TABLE public.realm OWNER TO raidrunner_user;

--
-- Name: user_account; Type: TABLE; Schema: public; Owner: raidrunner_user
--

CREATE TABLE public.user_account (
    user_id integer NOT NULL,
    battle_tag character varying(255) NOT NULL,
    user_name character varying(255) NOT NULL
);


ALTER TABLE public.user_account OWNER TO raidrunner_user;

--
-- Name: wow_account; Type: TABLE; Schema: public; Owner: raidrunner_user
--

CREATE TABLE public.wow_account (
    account_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.wow_account OWNER TO raidrunner_user;

--
-- Name: character character_pkey; Type: CONSTRAINT; Schema: public; Owner: raidrunner_user
--

ALTER TABLE ONLY public."character"
    ADD CONSTRAINT character_pkey PRIMARY KEY (character_id);


--
-- Name: playable_class playable_class_pkey; Type: CONSTRAINT; Schema: public; Owner: raidrunner_user
--

ALTER TABLE ONLY public.playable_class
    ADD CONSTRAINT playable_class_pkey PRIMARY KEY (playable_class_id);


--
-- Name: playable_race playable_race_pkey; Type: CONSTRAINT; Schema: public; Owner: raidrunner_user
--

ALTER TABLE ONLY public.playable_race
    ADD CONSTRAINT playable_race_pkey PRIMARY KEY (playable_race_id);


--
-- Name: playable_specialization playable_specialization_pkey; Type: CONSTRAINT; Schema: public; Owner: raidrunner_user
--

ALTER TABLE ONLY public.playable_specialization
    ADD CONSTRAINT playable_specialization_pkey PRIMARY KEY (playable_specialization_id);


--
-- Name: realm realm_pkey; Type: CONSTRAINT; Schema: public; Owner: raidrunner_user
--

ALTER TABLE ONLY public.realm
    ADD CONSTRAINT realm_pkey PRIMARY KEY (realm_id);


--
-- Name: user_account user_account_pkey; Type: CONSTRAINT; Schema: public; Owner: raidrunner_user
--

ALTER TABLE ONLY public.user_account
    ADD CONSTRAINT user_account_pkey PRIMARY KEY (user_id);


--
-- Name: wow_account wow_account_pkey; Type: CONSTRAINT; Schema: public; Owner: raidrunner_user
--

ALTER TABLE ONLY public.wow_account
    ADD CONSTRAINT wow_account_pkey PRIMARY KEY (account_id);


--
-- Name: character fk_character_playableclass; Type: FK CONSTRAINT; Schema: public; Owner: raidrunner_user
--

ALTER TABLE ONLY public."character"
    ADD CONSTRAINT fk_character_playableclass FOREIGN KEY (playable_class_id) REFERENCES public.playable_class(playable_class_id);


--
-- Name: character fk_character_realm; Type: FK CONSTRAINT; Schema: public; Owner: raidrunner_user
--

ALTER TABLE ONLY public."character"
    ADD CONSTRAINT fk_character_realm FOREIGN KEY (realm_id) REFERENCES public.realm(realm_id);


--
-- Name: character fk_character_wowaccount; Type: FK CONSTRAINT; Schema: public; Owner: raidrunner_user
--

ALTER TABLE ONLY public."character"
    ADD CONSTRAINT fk_character_wowaccount FOREIGN KEY (account_id) REFERENCES public.wow_account(account_id);


--
-- Name: playable_specialization fk_playableclass_playablespecialization; Type: FK CONSTRAINT; Schema: public; Owner: raidrunner_user
--

ALTER TABLE ONLY public.playable_specialization
    ADD CONSTRAINT fk_playableclass_playablespecialization FOREIGN KEY (playable_class_id) REFERENCES public.playable_class(playable_class_id);


--
-- Name: wow_account fk_wowaccount_user; Type: FK CONSTRAINT; Schema: public; Owner: raidrunner_user
--

ALTER TABLE ONLY public.wow_account
    ADD CONSTRAINT fk_wowaccount_user FOREIGN KEY (user_id) REFERENCES public.user_account(user_id);


--
-- Name: character fkcharacter_playablerace; Type: FK CONSTRAINT; Schema: public; Owner: raidrunner_user
--

ALTER TABLE ONLY public."character"
    ADD CONSTRAINT fkcharacter_playablerace FOREIGN KEY (playable_race_id) REFERENCES public.playable_race(playable_race_id);


--
-- PostgreSQL database dump complete
--

