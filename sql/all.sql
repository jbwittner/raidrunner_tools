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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: character; Type: TABLE; Schema: public; Owner: raidrunner_user
--

CREATE TABLE public."character" (
    average_item_level integer,
    character_id integer NOT NULL,
    character_level integer NOT NULL,
    equipped_item_level integer,
    is_active boolean NOT NULL,
    playable_class_id integer NOT NULL,
    playable_race_id integer NOT NULL,
    realm_id integer NOT NULL,
    user_id integer NOT NULL,
    last_login_timestamp bigint,
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
-- Data for Name: character; Type: TABLE DATA; Schema: public; Owner: raidrunner_user
--



--
-- Data for Name: playable_class; Type: TABLE DATA; Schema: public; Owner: raidrunner_user
--

INSERT INTO public.playable_class (playable_class_id, playable_class_slug) VALUES (3, 'Hunter');
INSERT INTO public.playable_class (playable_class_id, playable_class_slug) VALUES (9, 'Warlock');
INSERT INTO public.playable_class (playable_class_id, playable_class_slug) VALUES (11, 'Druid');
INSERT INTO public.playable_class (playable_class_id, playable_class_slug) VALUES (8, 'Mage');
INSERT INTO public.playable_class (playable_class_id, playable_class_slug) VALUES (6, 'Death Knight');
INSERT INTO public.playable_class (playable_class_id, playable_class_slug) VALUES (12, 'Demon Hunter');
INSERT INTO public.playable_class (playable_class_id, playable_class_slug) VALUES (10, 'Monk');
INSERT INTO public.playable_class (playable_class_id, playable_class_slug) VALUES (5, 'Priest');
INSERT INTO public.playable_class (playable_class_id, playable_class_slug) VALUES (2, 'Paladin');
INSERT INTO public.playable_class (playable_class_id, playable_class_slug) VALUES (4, 'Rogue');
INSERT INTO public.playable_class (playable_class_id, playable_class_slug) VALUES (7, 'Shaman');
INSERT INTO public.playable_class (playable_class_id, playable_class_slug) VALUES (1, 'Warrior');
INSERT INTO public.playable_class (playable_class_id, playable_class_slug) VALUES (13, 'Evoker');


--
-- Data for Name: playable_race; Type: TABLE DATA; Schema: public; Owner: raidrunner_user
--

INSERT INTO public.playable_race (is_allied_race, is_selectable, playable_race_id, faction, playable_race_slug) VALUES (false, true, 1, 'ALLIANCE', 'Human');
INSERT INTO public.playable_race (is_allied_race, is_selectable, playable_race_id, faction, playable_race_slug) VALUES (false, true, 8, 'HORDE', 'Troll');
INSERT INTO public.playable_race (is_allied_race, is_selectable, playable_race_id, faction, playable_race_slug) VALUES (false, true, 11, 'ALLIANCE', 'Draenei');
INSERT INTO public.playable_race (is_allied_race, is_selectable, playable_race_id, faction, playable_race_slug) VALUES (false, true, 10, 'HORDE', 'Blood Elf');
INSERT INTO public.playable_race (is_allied_race, is_selectable, playable_race_id, faction, playable_race_slug) VALUES (false, true, 4, 'ALLIANCE', 'Night Elf');
INSERT INTO public.playable_race (is_allied_race, is_selectable, playable_race_id, faction, playable_race_slug) VALUES (false, true, 3, 'ALLIANCE', 'Dwarf');
INSERT INTO public.playable_race (is_allied_race, is_selectable, playable_race_id, faction, playable_race_slug) VALUES (false, false, 25, 'ALLIANCE', 'Pandaren');
INSERT INTO public.playable_race (is_allied_race, is_selectable, playable_race_id, faction, playable_race_slug) VALUES (false, true, 6, 'HORDE', 'Tauren');
INSERT INTO public.playable_race (is_allied_race, is_selectable, playable_race_id, faction, playable_race_slug) VALUES (false, true, 5, 'HORDE', 'Undead');
INSERT INTO public.playable_race (is_allied_race, is_selectable, playable_race_id, faction, playable_race_slug) VALUES (false, true, 2, 'HORDE', 'Orc');
INSERT INTO public.playable_race (is_allied_race, is_selectable, playable_race_id, faction, playable_race_slug) VALUES (false, true, 7, 'ALLIANCE', 'Gnome');
INSERT INTO public.playable_race (is_allied_race, is_selectable, playable_race_id, faction, playable_race_slug) VALUES (true, true, 31, 'HORDE', 'Zandalari Troll');
INSERT INTO public.playable_race (is_allied_race, is_selectable, playable_race_id, faction, playable_race_slug) VALUES (false, true, 9, 'HORDE', 'Goblin');
INSERT INTO public.playable_race (is_allied_race, is_selectable, playable_race_id, faction, playable_race_slug) VALUES (true, true, 32, 'ALLIANCE', 'Kul Tiran');
INSERT INTO public.playable_race (is_allied_race, is_selectable, playable_race_id, faction, playable_race_slug) VALUES (true, true, 30, 'ALLIANCE', 'Lightforged Draenei');
INSERT INTO public.playable_race (is_allied_race, is_selectable, playable_race_id, faction, playable_race_slug) VALUES (true, true, 28, 'HORDE', 'Highmountain Tauren');
INSERT INTO public.playable_race (is_allied_race, is_selectable, playable_race_id, faction, playable_race_slug) VALUES (true, true, 27, 'HORDE', 'Nightborne');
INSERT INTO public.playable_race (is_allied_race, is_selectable, playable_race_id, faction, playable_race_slug) VALUES (false, true, 22, 'ALLIANCE', 'Worgen');
INSERT INTO public.playable_race (is_allied_race, is_selectable, playable_race_id, faction, playable_race_slug) VALUES (true, true, 34, 'ALLIANCE', 'Dark Iron Dwarf');
INSERT INTO public.playable_race (is_allied_race, is_selectable, playable_race_id, faction, playable_race_slug) VALUES (true, true, 35, 'HORDE', 'Vulpera');
INSERT INTO public.playable_race (is_allied_race, is_selectable, playable_race_id, faction, playable_race_slug) VALUES (true, true, 36, 'HORDE', 'Mag''har Orc');
INSERT INTO public.playable_race (is_allied_race, is_selectable, playable_race_id, faction, playable_race_slug) VALUES (false, true, 24, 'NEUTRAL', 'Pandaren');
INSERT INTO public.playable_race (is_allied_race, is_selectable, playable_race_id, faction, playable_race_slug) VALUES (false, false, 26, 'HORDE', 'Pandaren');
INSERT INTO public.playable_race (is_allied_race, is_selectable, playable_race_id, faction, playable_race_slug) VALUES (true, true, 29, 'ALLIANCE', 'Void Elf');
INSERT INTO public.playable_race (is_allied_race, is_selectable, playable_race_id, faction, playable_race_slug) VALUES (false, true, 52, 'ALLIANCE', 'Dracthyr');
INSERT INTO public.playable_race (is_allied_race, is_selectable, playable_race_id, faction, playable_race_slug) VALUES (false, true, 70, 'HORDE', 'Dracthyr');
INSERT INTO public.playable_race (is_allied_race, is_selectable, playable_race_id, faction, playable_race_slug) VALUES (true, true, 37, 'ALLIANCE', 'Mechagnome');


--
-- Data for Name: playable_specialization; Type: TABLE DATA; Schema: public; Owner: raidrunner_user
--

INSERT INTO public.playable_specialization (playable_class_id, playable_specialization_id, playable_specialization_slug, specialization_type) VALUES (7, 263, 'Enhancement', 'DAMAGE');
INSERT INTO public.playable_specialization (playable_class_id, playable_specialization_id, playable_specialization_slug, specialization_type) VALUES (10, 270, 'Mistweaver', 'HEALER');
INSERT INTO public.playable_specialization (playable_class_id, playable_specialization_id, playable_specialization_slug, specialization_type) VALUES (2, 66, 'Protection', 'TANK');
INSERT INTO public.playable_specialization (playable_class_id, playable_specialization_id, playable_specialization_slug, specialization_type) VALUES (3, 255, 'Survival', 'DAMAGE');
INSERT INTO public.playable_specialization (playable_class_id, playable_specialization_id, playable_specialization_slug, specialization_type) VALUES (5, 256, 'Discipline', 'HEALER');
INSERT INTO public.playable_specialization (playable_class_id, playable_specialization_id, playable_specialization_slug, specialization_type) VALUES (10, 268, 'Brewmaster', 'TANK');
INSERT INTO public.playable_specialization (playable_class_id, playable_specialization_id, playable_specialization_slug, specialization_type) VALUES (1, 72, 'Fury', 'DAMAGE');
INSERT INTO public.playable_specialization (playable_class_id, playable_specialization_id, playable_specialization_slug, specialization_type) VALUES (6, 252, 'Unholy', 'DAMAGE');
INSERT INTO public.playable_specialization (playable_class_id, playable_specialization_id, playable_specialization_slug, specialization_type) VALUES (4, 259, 'Assassination', 'DAMAGE');
INSERT INTO public.playable_specialization (playable_class_id, playable_specialization_id, playable_specialization_slug, specialization_type) VALUES (7, 264, 'Restoration', 'HEALER');
INSERT INTO public.playable_specialization (playable_class_id, playable_specialization_id, playable_specialization_slug, specialization_type) VALUES (8, 64, 'Frost', 'DAMAGE');
INSERT INTO public.playable_specialization (playable_class_id, playable_specialization_id, playable_specialization_slug, specialization_type) VALUES (8, 62, 'Arcane', 'DAMAGE');
INSERT INTO public.playable_specialization (playable_class_id, playable_specialization_id, playable_specialization_slug, specialization_type) VALUES (2, 65, 'Holy', 'HEALER');
INSERT INTO public.playable_specialization (playable_class_id, playable_specialization_id, playable_specialization_slug, specialization_type) VALUES (2, 70, 'Retribution', 'DAMAGE');
INSERT INTO public.playable_specialization (playable_class_id, playable_specialization_id, playable_specialization_slug, specialization_type) VALUES (1, 71, 'Arms', 'DAMAGE');
INSERT INTO public.playable_specialization (playable_class_id, playable_specialization_id, playable_specialization_slug, specialization_type) VALUES (1, 73, 'Protection', 'TANK');
INSERT INTO public.playable_specialization (playable_class_id, playable_specialization_id, playable_specialization_slug, specialization_type) VALUES (3, 253, 'Beast Mastery', 'DAMAGE');
INSERT INTO public.playable_specialization (playable_class_id, playable_specialization_id, playable_specialization_slug, specialization_type) VALUES (3, 254, 'Marksmanship', 'DAMAGE');
INSERT INTO public.playable_specialization (playable_class_id, playable_specialization_id, playable_specialization_slug, specialization_type) VALUES (5, 258, 'Shadow', 'DAMAGE');
INSERT INTO public.playable_specialization (playable_class_id, playable_specialization_id, playable_specialization_slug, specialization_type) VALUES (4, 261, 'Subtlety', 'DAMAGE');
INSERT INTO public.playable_specialization (playable_class_id, playable_specialization_id, playable_specialization_slug, specialization_type) VALUES (11, 103, 'Feral', 'DAMAGE');
INSERT INTO public.playable_specialization (playable_class_id, playable_specialization_id, playable_specialization_slug, specialization_type) VALUES (11, 104, 'Guardian', 'TANK');
INSERT INTO public.playable_specialization (playable_class_id, playable_specialization_id, playable_specialization_slug, specialization_type) VALUES (11, 105, 'Restoration', 'HEALER');
INSERT INTO public.playable_specialization (playable_class_id, playable_specialization_id, playable_specialization_slug, specialization_type) VALUES (9, 267, 'Destruction', 'DAMAGE');
INSERT INTO public.playable_specialization (playable_class_id, playable_specialization_id, playable_specialization_slug, specialization_type) VALUES (5, 257, 'Holy', 'HEALER');
INSERT INTO public.playable_specialization (playable_class_id, playable_specialization_id, playable_specialization_slug, specialization_type) VALUES (8, 63, 'Fire', 'DAMAGE');
INSERT INTO public.playable_specialization (playable_class_id, playable_specialization_id, playable_specialization_slug, specialization_type) VALUES (6, 250, 'Blood', 'TANK');
INSERT INTO public.playable_specialization (playable_class_id, playable_specialization_id, playable_specialization_slug, specialization_type) VALUES (6, 251, 'Frost', 'DAMAGE');
INSERT INTO public.playable_specialization (playable_class_id, playable_specialization_id, playable_specialization_slug, specialization_type) VALUES (4, 260, 'Outlaw', 'DAMAGE');
INSERT INTO public.playable_specialization (playable_class_id, playable_specialization_id, playable_specialization_slug, specialization_type) VALUES (7, 262, 'Elemental', 'DAMAGE');
INSERT INTO public.playable_specialization (playable_class_id, playable_specialization_id, playable_specialization_slug, specialization_type) VALUES (9, 265, 'Affliction', 'DAMAGE');
INSERT INTO public.playable_specialization (playable_class_id, playable_specialization_id, playable_specialization_slug, specialization_type) VALUES (9, 266, 'Demonology', 'DAMAGE');
INSERT INTO public.playable_specialization (playable_class_id, playable_specialization_id, playable_specialization_slug, specialization_type) VALUES (10, 269, 'Windwalker', 'DAMAGE');
INSERT INTO public.playable_specialization (playable_class_id, playable_specialization_id, playable_specialization_slug, specialization_type) VALUES (11, 102, 'Balance', 'DAMAGE');
INSERT INTO public.playable_specialization (playable_class_id, playable_specialization_id, playable_specialization_slug, specialization_type) VALUES (12, 577, 'Havoc', 'DAMAGE');
INSERT INTO public.playable_specialization (playable_class_id, playable_specialization_id, playable_specialization_slug, specialization_type) VALUES (12, 581, 'Vengeance', 'TANK');
INSERT INTO public.playable_specialization (playable_class_id, playable_specialization_id, playable_specialization_slug, specialization_type) VALUES (13, 1467, 'Devastation', 'DAMAGE');
INSERT INTO public.playable_specialization (playable_class_id, playable_specialization_id, playable_specialization_slug, specialization_type) VALUES (13, 1468, 'Preservation', 'HEALER');
INSERT INTO public.playable_specialization (playable_class_id, playable_specialization_id, playable_specialization_slug, specialization_type) VALUES (13, 1473, 'Augmentation', 'DAMAGE');


--
-- Data for Name: realm; Type: TABLE DATA; Schema: public; Owner: raidrunner_user
--

INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1080, 'English', 'khadgar');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1083, 'English', 'chromaggus');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1084, 'English', 'dentarg');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1086, 'French', 'la-croisade-écarlate');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (547, 'English', 'runetotem');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (548, 'English', 'shadowsong');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (549, 'English', 'silvermoon');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (511, 'English', 'sunstrider');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1087, 'English', 'executus');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1089, 'English', 'mazrigos');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1596, 'English', 'karazhan');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1597, 'English', 'auchindoun');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1598, 'English', 'shattered-halls');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1602, 'Russian', 'gordunni');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1604, 'Russian', 'soulflayer');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1605, 'Russian', 'deathguard');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1606, 'English', 'sporeggar');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1607, 'German', 'nethersturm');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1608, 'German', 'shattrath');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1609, 'Russian', 'deepholm');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1612, 'German', 'echsenkessel');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1613, 'German', 'blutkessel');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1614, 'Russian', 'galakrond');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1616, 'Russian', 'razuvious');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1617, 'Russian', 'deathweaver');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (551, 'English', 'terenas');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (552, 'English', 'thunderhorn');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (553, 'English', 'turalyon');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (554, 'English', 'ravencrest');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (556, 'English', 'shattered-hand');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (558, 'English', 'spinebreaker');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (560, 'English', 'stormscale');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (561, 'English', 'earthen-ring');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (562, 'German', 'alexstrasza');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (563, 'German', 'alleria');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (564, 'German', 'antonidas');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (566, 'German', 'blackhand');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (567, 'German', 'gilneas');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (568, 'German', 'kargath');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (569, 'German', 'khazgoroth');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (571, 'German', 'madmortem');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (573, 'German', 'zuluhed');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (574, 'German', 'nozdormu');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (575, 'German', 'perenolde');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (577, 'German', 'aegwynn');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (600, 'German', 'dun-morogh');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (604, 'German', 'thrall');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (605, 'German', 'theradras');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (606, 'English', 'genjuros');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (607, 'English', 'balnazzar');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (609, 'German', 'wrathbringer');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1090, 'English', 'talnivarr');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1091, 'English', 'emeriss');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1092, 'English', 'drakthul');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1093, 'English', 'ahnqiraj');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1097, 'German', 'ysera');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1098, 'German', 'malygos');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1104, 'German', 'anetheron');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1105, 'German', 'nazjatar');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1106, 'German', 'tichondrius');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1117, 'English', 'steamwheedle-cartel');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1118, 'German', 'die-ewige-wacht');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1119, 'German', 'die-todeskrallen');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1121, 'German', 'die-arguswacht');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1122, 'French', 'uldaman');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1127, 'French', 'confrérie-du-thorium');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (507, 'English', 'dragonblight');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1306, 'English', 'tarren-mill');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1381, 'Spanish', 'cthun');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1391, 'English', 'alonsus');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1416, 'English', 'blades-edge');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (505, 'English', 'doomhammer');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (513, 'English', 'twilights-hammer');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (526, 'English', 'daggerspine');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (546, 'French', 'sargeras');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (508, 'English', 'emerald-dream');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (623, 'English', 'quelthalas');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (522, 'English', 'bloodscalp');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (523, 'English', 'burning-blade');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (525, 'English', 'crushridge');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (528, 'English', 'dragonmaw');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (529, 'English', 'dunemaul');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (531, 'German', 'dethecus');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (535, 'German', 'durotan');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (500, 'English', 'aggramar');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (501, 'English', 'arathor');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (503, 'English', 'azjolnerub');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (506, 'English', 'draenor');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (510, 'French', 'voljin');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (512, 'French', 'arakarahm');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (515, 'English', 'zenedar');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (518, 'English', 'agamaggan');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (521, 'English', 'bladefist');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1337, 'French', 'culte-de-la-rive-noire');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (536, 'English', 'argent-dawn');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (610, 'German', 'onyxia');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (612, 'German', 'nefarian');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (614, 'German', 'das-syndikat');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (621, 'English', 'laughing-skull');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (624, 'English', 'neptulon');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (625, 'English', 'twisting-nether');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (627, 'English', 'the-maelstrom');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (630, 'English', 'bloodfeather');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (632, 'English', 'frostwhisper');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (633, 'English', 'korgall');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (635, 'English', 'defias-brotherhood');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (642, 'French', 'rashgarroth');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (647, 'French', 'les-sentinelles');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1331, 'French', 'suramar');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1401, 'German', 'garrosh');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1406, 'German', 'arygos');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1407, 'German', 'teldrassil');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1409, 'German', 'lordaeron');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1413, 'English', 'aggra-português');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1415, 'English', 'terokkar');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (565, 'German', 'baelgun');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (545, 'French', 'chogall');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (618, 'English', 'nordrassil');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (628, 'English', 'sylvanas');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (641, 'French', 'drekthar');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1588, 'English', 'ghostlands');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1595, 'English', 'the-shatar');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1620, 'French', 'chants-éternels');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1621, 'French', 'marécage-de-zangar');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1624, 'French', 'naxxramas');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (578, 'German', 'arthas');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (579, 'German', 'azshara');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (580, 'German', 'blackmoore');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (582, 'German', 'destromath');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (583, 'German', 'eredar');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (585, 'German', 'frostwolf');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (589, 'German', 'kiljaeden');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (590, 'German', 'malganis');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (592, 'German', 'zirkel-des-cenarius');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (629, 'English', 'vashj');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (542, 'French', 'hyjal');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1323, 'German', 'ulduar');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1615, 'Russian', 'howling-fjord');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (519, 'English', 'alakir');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (559, 'English', 'stormreaver');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (622, 'English', 'magtheridon');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (637, 'English', 'lightnings-blade');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (537, 'French', 'kirin-tor');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (539, 'French', 'archimonde');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (540, 'French', 'elune');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1307, 'English', 'chamber-of-aspects');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1308, 'English', 'ravenholdt');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1309, 'Italian', 'pozzo-delleternità');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1310, 'English', 'eonar');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1298, 'English', 'veknilash');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1300, 'English', 'frostmane');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (504, 'English', 'bloodhoof');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (543, 'French', 'kaelthas');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (638, 'English', 'haomarush');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (640, 'French', 'khaz-modan');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (645, 'French', 'varimathras');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (646, 'English', 'hakkar');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (581, 'German', 'blackrock');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (588, 'German', 'kelthuzad');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (591, 'German', 'mannoroth');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (593, 'German', 'proudmoore');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (509, 'French', 'garona');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1317, 'English', 'darkmoon-faire');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1318, 'German', 'veklor');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1319, 'German', 'mugthol');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1320, 'German', 'taerar');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1321, 'German', 'dalvengyr');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1322, 'German', 'rajaxx');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1324, 'German', 'malorne');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1326, 'German', 'der-abyssische-rat');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1327, 'German', 'der-mithrilorden');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1330, 'German', 'ambossar');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1332, 'French', 'krasus');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1334, 'French', 'arathi');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1335, 'French', 'ysondre');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1336, 'French', 'eldrethalas');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1311, 'English', 'kilrogg');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1313, 'English', 'wildhammer');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1314, 'English', 'saurfang');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1316, 'Italian', 'nemesis');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1623, 'Russian', 'fordragon');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1625, 'Russian', 'borean-tundra');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1626, 'French', 'les-clairvoyants');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (557, 'English', 'skullcrusher');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (570, 'German', 'lothar');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (533, 'French', 'sinstralis');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (615, 'German', 'terrordar');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1096, 'English', 'scarshield-legion');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1082, 'English', 'kul-tiras');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (550, 'English', 'stormrage');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (544, 'French', 'nerzhul');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1378, 'Spanish', 'dun-modr');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1379, 'Spanish', 'zuljin');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1380, 'Spanish', 'uldum');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1382, 'Spanish', 'sanguino');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1383, 'Spanish', 'shendralar');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1384, 'Spanish', 'tyrande');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1385, 'Spanish', 'exodar');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1387, 'Spanish', 'los-errantes');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1388, 'English', 'lightbringer');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1389, 'English', 'darkspear');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1392, 'English', 'burning-steppes');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1393, 'English', 'bronze-dragonflight');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1394, 'English', 'anachronos');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1395, 'Spanish', 'colinas-pardas');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1400, 'German', 'ungoro');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (541, 'French', 'illidan');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1099, 'German', 'rexxar');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1611, 'German', 'festung-der-stürme');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (587, 'German', 'guldan');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (502, 'English', 'aszune');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1312, 'English', 'aerie-peak');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (639, 'English', 'xavius');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (643, 'French', 'throkferoth');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1386, 'Spanish', 'minahonda');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1328, 'German', 'tirion');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (602, 'German', 'senjin');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1088, 'English', 'trollbane');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (601, 'German', 'amanthul');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1081, 'English', 'bronzebeard');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1618, 'German', 'die-aldor');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1622, 'French', 'temple-noir');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1925, 'Russian', 'eversong');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1926, 'Russian', 'thermaplugg');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1927, 'Russian', 'grom');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1928, 'Russian', 'goldrinn');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1929, 'Russian', 'blackscar');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (516, 'German', 'forscherliga');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1123, 'French', 'eitrigg');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1405, 'German', 'todeswache');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (538, 'French', 'dalaran');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (584, 'German', 'frostmourne');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (572, 'German', 'malfurion');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (616, 'German', 'kragjin');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (586, 'German', 'gorgonnash');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (524, 'English', 'burning-legion');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1417, 'English', 'azuremyst');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (608, 'German', 'anubarak');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (611, 'German', 'nerathor');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (613, 'German', 'kult-der-verdammten');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (617, 'German', 'der-rat-von-dalaran');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (619, 'English', 'hellscream');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (626, 'English', 'ragnaros');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (631, 'English', 'darksorrow');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (636, 'English', 'the-venture-co');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1303, 'English', 'grim-batol');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1304, 'English', 'jaedenar');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1305, 'English', 'kazzak');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1085, 'English', 'moonglade');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (644, 'French', 'conseil-des-ombres');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (594, 'German', 'nathrezim');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1619, 'German', 'das-konsortium');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1299, 'English', 'boulderfist');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (527, 'English', 'deathwing');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1404, 'German', 'area-52');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1333, 'German', 'die-nachtwache');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1924, 'Russian', 'booty-bay');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1603, 'Russian', 'lich-king');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1587, 'English', 'hellfire');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1301, 'English', 'outland');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1610, 'Russian', 'greymane');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (517, 'French', 'medivh');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (576, 'German', 'die-silberne-hand');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1589, 'English', 'nagrand');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1922, 'Russian', 'azuregos');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1923, 'Russian', 'ashenvale');
INSERT INTO public.realm (realm_id, realm_category, realm_slug) VALUES (1408, 'German', 'norgannon');


--
-- Data for Name: user_account; Type: TABLE DATA; Schema: public; Owner: raidrunner_user
--



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
-- Name: character fk_character_playableclass; Type: FK CONSTRAINT; Schema: public; Owner: raidrunner_user
--

ALTER TABLE ONLY public."character"
    ADD CONSTRAINT fk_character_playableclass FOREIGN KEY (playable_class_id) REFERENCES public.playable_class(playable_class_id);


--
-- Name: character fk_character_playablerace; Type: FK CONSTRAINT; Schema: public; Owner: raidrunner_user
--

ALTER TABLE ONLY public."character"
    ADD CONSTRAINT fk_character_playablerace FOREIGN KEY (playable_race_id) REFERENCES public.playable_race(playable_race_id);


--
-- Name: character fk_character_realm; Type: FK CONSTRAINT; Schema: public; Owner: raidrunner_user
--

ALTER TABLE ONLY public."character"
    ADD CONSTRAINT fk_character_realm FOREIGN KEY (realm_id) REFERENCES public.realm(realm_id);


--
-- Name: character fk_character_user; Type: FK CONSTRAINT; Schema: public; Owner: raidrunner_user
--

ALTER TABLE ONLY public."character"
    ADD CONSTRAINT fk_character_user FOREIGN KEY (user_id) REFERENCES public.user_account(user_id);


--
-- Name: playable_specialization fk_playableclass_playablespecialization; Type: FK CONSTRAINT; Schema: public; Owner: raidrunner_user
--

ALTER TABLE ONLY public.playable_specialization
    ADD CONSTRAINT fk_playableclass_playablespecialization FOREIGN KEY (playable_class_id) REFERENCES public.playable_class(playable_class_id);


--
-- PostgreSQL database dump complete
--

