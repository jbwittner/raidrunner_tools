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
3	Hunter
9	Warlock
11	Druid
8	Mage
6	Death Knight
12	Demon Hunter
10	Monk
5	Priest
2	Paladin
4	Rogue
7	Shaman
1	Warrior
13	Evoker
\.


--
-- Data for Name: playable_race; Type: TABLE DATA; Schema: public; Owner: raidrunner_user
--

COPY public.playable_race (is_allied_race, is_selectable, playable_race_id, faction, playable_race_slug) FROM stdin;
f	t	1	ALLIANCE	Human
f	t	8	HORDE	Troll
f	t	11	ALLIANCE	Draenei
f	t	10	HORDE	Blood Elf
f	t	4	ALLIANCE	Night Elf
f	t	3	ALLIANCE	Dwarf
f	f	25	ALLIANCE	Pandaren
f	t	6	HORDE	Tauren
f	t	5	HORDE	Undead
f	t	2	HORDE	Orc
f	t	7	ALLIANCE	Gnome
t	t	31	HORDE	Zandalari Troll
f	t	9	HORDE	Goblin
t	t	32	ALLIANCE	Kul Tiran
t	t	30	ALLIANCE	Lightforged Draenei
t	t	28	HORDE	Highmountain Tauren
t	t	27	HORDE	Nightborne
f	t	22	ALLIANCE	Worgen
t	t	34	ALLIANCE	Dark Iron Dwarf
t	t	35	HORDE	Vulpera
t	t	36	HORDE	Mag'har Orc
f	t	24	NEUTRAL	Pandaren
f	f	26	HORDE	Pandaren
t	t	29	ALLIANCE	Void Elf
f	t	52	ALLIANCE	Dracthyr
f	t	70	HORDE	Dracthyr
t	t	37	ALLIANCE	Mechagnome
\.


--
-- Data for Name: realm; Type: TABLE DATA; Schema: public; Owner: raidrunner_user
--

COPY public.realm (realm_id, realm_category, realm_slug) FROM stdin;
1080	English	khadgar
1083	English	chromaggus
1084	English	dentarg
1086	French	la-croisade-écarlate
547	English	runetotem
548	English	shadowsong
549	English	silvermoon
511	English	sunstrider
1087	English	executus
1089	English	mazrigos
1596	English	karazhan
1597	English	auchindoun
1598	English	shattered-halls
1602	Russian	gordunni
1604	Russian	soulflayer
1605	Russian	deathguard
1606	English	sporeggar
1607	German	nethersturm
1608	German	shattrath
1609	Russian	deepholm
1612	German	echsenkessel
1613	German	blutkessel
1614	Russian	galakrond
1616	Russian	razuvious
1617	Russian	deathweaver
551	English	terenas
552	English	thunderhorn
553	English	turalyon
554	English	ravencrest
556	English	shattered-hand
558	English	spinebreaker
560	English	stormscale
561	English	earthen-ring
562	German	alexstrasza
563	German	alleria
564	German	antonidas
566	German	blackhand
567	German	gilneas
568	German	kargath
569	German	khazgoroth
571	German	madmortem
573	German	zuluhed
574	German	nozdormu
575	German	perenolde
577	German	aegwynn
600	German	dun-morogh
604	German	thrall
605	German	theradras
606	English	genjuros
607	English	balnazzar
609	German	wrathbringer
1090	English	talnivarr
1091	English	emeriss
1092	English	drakthul
1093	English	ahnqiraj
1097	German	ysera
1098	German	malygos
1104	German	anetheron
1105	German	nazjatar
1106	German	tichondrius
1117	English	steamwheedle-cartel
1118	German	die-ewige-wacht
1119	German	die-todeskrallen
1121	German	die-arguswacht
1122	French	uldaman
1127	French	confrérie-du-thorium
507	English	dragonblight
1306	English	tarren-mill
1381	Spanish	cthun
1391	English	alonsus
1416	English	blades-edge
505	English	doomhammer
513	English	twilights-hammer
526	English	daggerspine
546	French	sargeras
508	English	emerald-dream
623	English	quelthalas
522	English	bloodscalp
523	English	burning-blade
525	English	crushridge
528	English	dragonmaw
529	English	dunemaul
531	German	dethecus
535	German	durotan
500	English	aggramar
501	English	arathor
503	English	azjolnerub
506	English	draenor
510	French	voljin
512	French	arakarahm
515	English	zenedar
518	English	agamaggan
521	English	bladefist
1337	French	culte-de-la-rive-noire
536	English	argent-dawn
610	German	onyxia
612	German	nefarian
614	German	das-syndikat
621	English	laughing-skull
624	English	neptulon
625	English	twisting-nether
627	English	the-maelstrom
630	English	bloodfeather
632	English	frostwhisper
633	English	korgall
635	English	defias-brotherhood
642	French	rashgarroth
647	French	les-sentinelles
1331	French	suramar
1401	German	garrosh
1406	German	arygos
1407	German	teldrassil
1409	German	lordaeron
1413	English	aggra-português
1415	English	terokkar
565	German	baelgun
545	French	chogall
618	English	nordrassil
628	English	sylvanas
641	French	drekthar
1588	English	ghostlands
1595	English	the-shatar
1620	French	chants-éternels
1621	French	marécage-de-zangar
1624	French	naxxramas
578	German	arthas
579	German	azshara
580	German	blackmoore
582	German	destromath
583	German	eredar
585	German	frostwolf
589	German	kiljaeden
590	German	malganis
592	German	zirkel-des-cenarius
629	English	vashj
542	French	hyjal
1323	German	ulduar
1615	Russian	howling-fjord
519	English	alakir
559	English	stormreaver
622	English	magtheridon
637	English	lightnings-blade
537	French	kirin-tor
539	French	archimonde
540	French	elune
1307	English	chamber-of-aspects
1308	English	ravenholdt
1309	Italian	pozzo-delleternità
1310	English	eonar
1298	English	veknilash
1300	English	frostmane
504	English	bloodhoof
543	French	kaelthas
638	English	haomarush
640	French	khaz-modan
645	French	varimathras
646	English	hakkar
581	German	blackrock
588	German	kelthuzad
591	German	mannoroth
593	German	proudmoore
509	French	garona
1317	English	darkmoon-faire
1318	German	veklor
1319	German	mugthol
1320	German	taerar
1321	German	dalvengyr
1322	German	rajaxx
1324	German	malorne
1326	German	der-abyssische-rat
1327	German	der-mithrilorden
1330	German	ambossar
1332	French	krasus
1334	French	arathi
1335	French	ysondre
1336	French	eldrethalas
1311	English	kilrogg
1313	English	wildhammer
1314	English	saurfang
1316	Italian	nemesis
1623	Russian	fordragon
1625	Russian	borean-tundra
1626	French	les-clairvoyants
557	English	skullcrusher
570	German	lothar
533	French	sinstralis
615	German	terrordar
1096	English	scarshield-legion
1082	English	kul-tiras
550	English	stormrage
544	French	nerzhul
1378	Spanish	dun-modr
1379	Spanish	zuljin
1380	Spanish	uldum
1382	Spanish	sanguino
1383	Spanish	shendralar
1384	Spanish	tyrande
1385	Spanish	exodar
1387	Spanish	los-errantes
1388	English	lightbringer
1389	English	darkspear
1392	English	burning-steppes
1393	English	bronze-dragonflight
1394	English	anachronos
1395	Spanish	colinas-pardas
1400	German	ungoro
541	French	illidan
1099	German	rexxar
1611	German	festung-der-stürme
587	German	guldan
502	English	aszune
1312	English	aerie-peak
639	English	xavius
643	French	throkferoth
1386	Spanish	minahonda
1328	German	tirion
602	German	senjin
1088	English	trollbane
601	German	amanthul
1081	English	bronzebeard
1618	German	die-aldor
1622	French	temple-noir
1925	Russian	eversong
1926	Russian	thermaplugg
1927	Russian	grom
1928	Russian	goldrinn
1929	Russian	blackscar
516	German	forscherliga
1123	French	eitrigg
1405	German	todeswache
538	French	dalaran
584	German	frostmourne
572	German	malfurion
616	German	kragjin
586	German	gorgonnash
524	English	burning-legion
1417	English	azuremyst
608	German	anubarak
611	German	nerathor
613	German	kult-der-verdammten
617	German	der-rat-von-dalaran
619	English	hellscream
626	English	ragnaros
631	English	darksorrow
636	English	the-venture-co
1303	English	grim-batol
1304	English	jaedenar
1305	English	kazzak
1085	English	moonglade
644	French	conseil-des-ombres
594	German	nathrezim
1619	German	das-konsortium
1299	English	boulderfist
527	English	deathwing
1404	German	area-52
1333	German	die-nachtwache
1924	Russian	booty-bay
1603	Russian	lich-king
1587	English	hellfire
1301	English	outland
1610	Russian	greymane
517	French	medivh
576	German	die-silberne-hand
1589	English	nagrand
1922	Russian	azuregos
1923	Russian	ashenvale
1408	German	norgannon
\.


--
-- Data for Name: user_account; Type: TABLE DATA; Schema: public; Owner: raidrunner_user
--

COPY public.user_account (user_id, battle_tag, user_name) FROM stdin;
\.


--
-- Data for Name: character; Type: TABLE DATA; Schema: public; Owner: raidrunner_user
--

COPY public."character" (average_item_level, character_id, character_level, equipped_item_level, is_active, playable_class_id, playable_race_id, realm_id, user_id, last_login_timestamp, character_name) FROM stdin;
\.


--
-- Data for Name: playable_specialization; Type: TABLE DATA; Schema: public; Owner: raidrunner_user
--

COPY public.playable_specialization (playable_class_id, playable_specialization_id, playable_specialization_slug, specialization_type) FROM stdin;
7	263	Enhancement	DAMAGE
10	270	Mistweaver	HEALER
2	66	Protection	TANK
3	255	Survival	DAMAGE
5	256	Discipline	HEALER
10	268	Brewmaster	TANK
1	72	Fury	DAMAGE
6	252	Unholy	DAMAGE
4	259	Assassination	DAMAGE
7	264	Restoration	HEALER
8	64	Frost	DAMAGE
8	62	Arcane	DAMAGE
2	65	Holy	HEALER
2	70	Retribution	DAMAGE
1	71	Arms	DAMAGE
1	73	Protection	TANK
3	253	Beast Mastery	DAMAGE
3	254	Marksmanship	DAMAGE
5	258	Shadow	DAMAGE
4	261	Subtlety	DAMAGE
11	103	Feral	DAMAGE
11	104	Guardian	TANK
11	105	Restoration	HEALER
9	267	Destruction	DAMAGE
5	257	Holy	HEALER
8	63	Fire	DAMAGE
6	250	Blood	TANK
6	251	Frost	DAMAGE
4	260	Outlaw	DAMAGE
7	262	Elemental	DAMAGE
9	265	Affliction	DAMAGE
9	266	Demonology	DAMAGE
10	269	Windwalker	DAMAGE
11	102	Balance	DAMAGE
12	577	Havoc	DAMAGE
12	581	Vengeance	TANK
13	1467	Devastation	DAMAGE
13	1468	Preservation	HEALER
13	1473	Augmentation	DAMAGE
\.


--
-- PostgreSQL database dump complete
--

