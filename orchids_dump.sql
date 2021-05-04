--
-- PostgreSQL database dump
--

-- Dumped from database version 12.6 (Ubuntu 12.6-1.pgdg16.04+1)
-- Dumped by pg_dump version 13.0

-- Started on 2021-05-04 00:43:11

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
-- TOC entry 202 (class 1259 OID 18807161)
-- Name: Category; Type: TABLE; Schema: public; Owner: uxbuvhokbbocan
--

CREATE TABLE public."Category" (
    "Id" integer NOT NULL,
    "Name" text NOT NULL,
    "Image" text
);


ALTER TABLE public."Category" OWNER TO uxbuvhokbbocan;

--
-- TOC entry 203 (class 1259 OID 18807167)
-- Name: Category_Id_seq; Type: SEQUENCE; Schema: public; Owner: uxbuvhokbbocan
--

ALTER TABLE public."Category" ALTER COLUMN "Id" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Category_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 204 (class 1259 OID 18807169)
-- Name: Orchids; Type: TABLE; Schema: public; Owner: uxbuvhokbbocan
--

CREATE TABLE public."Orchids" (
    "Id" integer NOT NULL,
    "Name" text NOT NULL,
    "Size" text NOT NULL,
    "Price" double precision NOT NULL,
    "Stock" integer NOT NULL,
    "CategoryId" integer NOT NULL,
    "Image" text NOT NULL
);


ALTER TABLE public."Orchids" OWNER TO uxbuvhokbbocan;

--
-- TOC entry 205 (class 1259 OID 18807175)
-- Name: Orchids_Id_seq; Type: SEQUENCE; Schema: public; Owner: uxbuvhokbbocan
--

ALTER TABLE public."Orchids" ALTER COLUMN "Id" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Orchids_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 206 (class 1259 OID 18807177)
-- Name: OrderItems; Type: TABLE; Schema: public; Owner: uxbuvhokbbocan
--

CREATE TABLE public."OrderItems" (
    "Id" integer NOT NULL,
    "OrderId" integer NOT NULL,
    "ItemId" integer NOT NULL,
    "Quantity" integer NOT NULL
);


ALTER TABLE public."OrderItems" OWNER TO uxbuvhokbbocan;

--
-- TOC entry 207 (class 1259 OID 18807180)
-- Name: OrderItems_Id_seq; Type: SEQUENCE; Schema: public; Owner: uxbuvhokbbocan
--

ALTER TABLE public."OrderItems" ALTER COLUMN "Id" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."OrderItems_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 208 (class 1259 OID 18807182)
-- Name: Orders; Type: TABLE; Schema: public; Owner: uxbuvhokbbocan
--

CREATE TABLE public."Orders" (
    "Id" integer NOT NULL,
    "DeliveryType" text NOT NULL,
    "TakeAwayId" integer,
    "NPDeliveryId" integer,
    "PaymentMethod" text NOT NULL,
    "PaymentStatus" text NOT NULL,
    "UserId" integer NOT NULL,
    "Overall" integer
);


ALTER TABLE public."Orders" OWNER TO uxbuvhokbbocan;

--
-- TOC entry 209 (class 1259 OID 18807188)
-- Name: Orders_Id_seq; Type: SEQUENCE; Schema: public; Owner: uxbuvhokbbocan
--

ALTER TABLE public."Orders" ALTER COLUMN "Id" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Orders_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 210 (class 1259 OID 18807190)
-- Name: Users; Type: TABLE; Schema: public; Owner: uxbuvhokbbocan
--

CREATE TABLE public."Users" (
    "Id" integer NOT NULL,
    "Phone" bigint NOT NULL,
    "Username" text NOT NULL,
    "Password" text NOT NULL,
    "Region" text NOT NULL,
    "City" text NOT NULL,
    "Adress" text NOT NULL,
    "Type" text
);


ALTER TABLE public."Users" OWNER TO uxbuvhokbbocan;

--
-- TOC entry 211 (class 1259 OID 18807196)
-- Name: Users_Id_seq; Type: SEQUENCE; Schema: public; Owner: uxbuvhokbbocan
--

ALTER TABLE public."Users" ALTER COLUMN "Id" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Users_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 3876 (class 0 OID 18807161)
-- Dependencies: 202
-- Data for Name: Category; Type: TABLE DATA; Schema: public; Owner: uxbuvhokbbocan
--

COPY public."Category" ("Id", "Name", "Image") FROM stdin;
1	Вандовые	https://static.orchids.in.ua/img/renanthera-imschootiana-foto-4343.jpg
4	Природные виды орхидей	https://static.orchids.in.ua/img/renanthera-imschootiana-foto-4343.jpg
10	Фаленопсисы	https://static.orchids.in.ua/img/renanthera-imschootiana-foto-4343.jpg
2	Дендробиумы	https://static.orchids.in.ua/img/renanthera-imschootiana-foto-4343.jpg
3	Дракулы и масдеваллии	https://static.orchids.in.ua/img/renanthera-imschootiana-foto-4343.jpg
5	Зигопеталюмы	https://static.orchids.in.ua/img/renanthera-imschootiana-foto-4343.jpg
6	Катазетумы	https://static.orchids.in.ua/img/renanthera-imschootiana-foto-4343.jpg
8	Онцидиумные	https://static.orchids.in.ua/img/renanthera-imschootiana-foto-4343.jpg
9	Пафиопедилумы	https://static.orchids.in.ua/img/renanthera-imschootiana-foto-4343.jpg
11	Цимбидиумы	https://static.orchids.in.ua/img/renanthera-imschootiana-foto-4343.jpg
7	Каттлеи и лелии	https://static.orchids.in.ua/img/renanthera-imschootiana-foto-4343.jpg
\.


--
-- TOC entry 3878 (class 0 OID 18807169)
-- Dependencies: 204
-- Data for Name: Orchids; Type: TABLE DATA; Schema: public; Owner: uxbuvhokbbocan
--

COPY public."Orchids" ("Id", "Name", "Size", "Price", "Stock", "CategoryId", "Image") FROM stdin;
3	Perreiraara Rapeepath (orange)	B/S	390	0	1	https://static.orchids.in.ua/img/2-foto-6864.jpg
5	Perreiraara Rapeepath (yellow)	B/S	350	0	1	https://static.orchids.in.ua/img/perreiraara-rapeepath-yellow-foto-6863.jpg
6	Renanthera imschootiana	NB/S	628	0	1	https://static.orchids.in.ua/img/renanthera-imschootiana-foto-4343.jpg
8	Rhynchorides Dragon Charmy (Sedirea japonica x Rhynchostylis gigantea)	NB/S	580	0	1	https://static.orchids.in.ua/img/rhynchorides-dragon-charmy-sedirea-japonica-x-rhynchostylis-gigantea-foto-5415.jpg
9	Rhynchostylis coelestis blue	F/S	548	0	1	https://static.orchids.in.ua/img/rhynchostylis-coelestis-blue-foto-2344.jpg
4	Aerides lawrenciae	F/S	520	0	1	https://static.orchids.in.ua/img/aerides-lawrenciae-foto-3044.jpg
7	Aerides quinquevulnera var calayana	F/S	754	0	1	https://static.orchids.in.ua/img/2-foto-3049.jpg
10	Rhynchostylis gigantea Orange	B/S	480	0	1	https://static.orchids.in.ua/img/rhynchostylis-gigantea-orange-foto-900.jpg
11	(Sedirea japonica-Vandopsis parishii) x Rhynchostylis gigiantea	B/S	660	0	1	https://static.orchids.in.ua/img/sedirea-japonica-vandopsis-parishii-x-rhynchostylis-gigiantea-foto-5402.jpg
12	Vanda Bangkhunthian x gigantea	B/S	390	0	1	https://static.orchids.in.ua/img/bangkhunthian-x-gigantea-foto-6867.jpg
13	Vanda Bangsia Green x Rhynchostylis coelestis blue	B/S	498	0	1	https://static.orchids.in.ua/img/vanda-bangsia-green-x-rhynchostylis-coelestis-blue-foto-6551.jpg
14	Vanda Chantra	B/S	390	0	1	https://static.orchids.in.ua/img/vanda-chantra-foto-6860.jpg
15	Vanda Cherry Bomb	B/S	390	0	1	https://static.orchids.in.ua/img/vanda-cherry-bomb-foto-6865.jpg
16	Vanda cristata	S/S	546	0	1	https://static.orchids.in.ua/img/vanda-cristata-foto-4169.jpg
17	Vanda Dr Anek x Mimi Palmer	B/S	450	0	1	https://static.orchids.in.ua/img/vanda-dr-anek-x-mimipalmer-foto-6856.jpg
18	Vanda Kru Chom 'Dark Knight'	B/S	390	0	1	https://static.orchids.in.ua/img/vanda-kru-chom-dark-knight-foto-6858.jpg
19	Vanda Kultana Gold x Kultana Scarlett	B/S	340	0	1	https://static.orchids.in.ua/img/vanda-kultana-gold-x-kultana-scarlett-foto-6556.jpg
20	Vanda Kulwadee Fragrance #27	B/S	390	0	1	https://static.orchids.in.ua/img/vanda-kulwadee-fragrance-foto-6866.jpg
21	Vanda Kulwadee Fragrance x Dr Anek	F/S	810	0	1	https://static.orchids.in.ua/img/vanda-kulwadee-fragrance-x-dr-anek-foto-4409.jpg
22	Vanda Kulwadee x Dr Anek	B/S	340	0	1	https://static.orchids.in.ua/img/vanda-kulwadee-x-dr-anek-foto-6558.jpg
23	Vanda Paramate Star x Bitz's Heartthrob	B/S	390	0	1	https://static.orchids.in.ua/img/vanda-paramate-star-x-bitzs-heartthrob-foto-6859.jpg
24	Vanda Pitchaon	B/S	390	0	1	https://static.orchids.in.ua/img/vanda-pitchaon-foto-6554.jpg
25	Vanda Robert's Delight x Mimi Palmer	B/S	390	0	1	https://static.orchids.in.ua/img/vanda-roberts-delight-x-mimi-palmer-foto-6861.jpg
26	Vanda Somsri Blue Classic x Fuchs Delight Black	NB/S	250	0	1	https://static.orchids.in.ua/img/vanda-somsri-blue-classic-x-fuchs-delight-black-foto-6547.jpg
27	Vanda Thonglor Sand x Taweesuksa	B/S	290	0	1	https://static.orchids.in.ua/img/vanda-thonglor-sand--x-taweesuksa-foto-6857.jpg
28	Vanda tricolor	B/S	486	0	1	https://static.orchids.in.ua/img/vanda-tricolor-foto-1674.jpg
29	Vanda tricolor coerulea	S/S	324	0	1	https://static.orchids.in.ua/img/1-foto-6428.jpg
30	Wuttiphanara Manoonya	B/S	390	0	1	https://static.orchids.in.ua/img/wuttiphanara-manoonya-foto-6553.jpg
31	Dendrobium aduncum	B/S	498	0	2	https://static.orchids.in.ua/img/dendrobium-aduncum-foto-6682.jpg
32	Dendrobium amethystoglossum	F/S	390	0	2	https://static.orchids.in.ua/img/dendrobium-amethystoglossum-foto-3065.jpg
33	Dendrobium anosmum	B/S	275	0	2	https://static.orchids.in.ua/img/dendrobium-anosmum-foto-1009.jpg
34	Dendrobium anosmum semi-alba	B/S	275	0	2	https://static.orchids.in.ua/img/dendrobium-anosmum-semi-alba-foto-6681.jpg
35	Dendrobium anosmum var. giganteum	F/S	788	0	2	https://static.orchids.in.ua/img/dendrobium-anosmum-var-giganteum-foto-2066.jpg
36	Dendrobium auriculatum	B/S	580	0	2	https://static.orchids.in.ua/img/dendrobium-auriculatum-foto-6689.jpg
37	Dendrobium bellatulum	B/S	320	0	2	https://static.orchids.in.ua/img/dendrobium-bellatulum-foto-3129.jpg
38	Dendrobium biloculare x convolutum	F/S	910	0	2	https://static.orchids.in.ua/img/2-foto-6882.jpg
39	Dendrobium bracteosum	B/S	398	0	2	https://static.orchids.in.ua/img/dendrobium-bracteosum-foto-6588.jpg
40	Dendrobium brymerianum	B/S	560	0	2	https://static.orchids.in.ua/img/dendrobium-brymerianum-foto-3404.jpg
41	Dendrobium capituliflorum	B/S	780	0	2	https://static.orchids.in.ua/img/dendrobium-capituliflorum-foto-6590.jpg
42	Dendrobium cariniferum	NB/S	525	0	2	https://static.orchids.in.ua/img/1-foto-6749.jpg
43	Dendrobium chittimae	B/S	750	0	2	https://static.orchids.in.ua/img/dendrobium-chittimae-foto-6674.jpg
44	Dendrobium christyanum	B/S	452	0	2	https://static.orchids.in.ua/img/dendrobium-christyanum-foto-1016.jpg
45	Dendrobium chrysanthum	F/S	498	0	2	https://static.orchids.in.ua/img/dendrobium-chrysanthum-foto-6677.jpg
46	Dendrobium chrysocrepis	B/S	678	0	2	https://static.orchids.in.ua/img/dendrobium-chrysocrepis-foto-6728.jpg
47	Dendrobium chrysotoxum	F/S	420	0	2	https://static.orchids.in.ua/img/dendrobium-chrysotoxum-foto-1911.jpg
48	Dendrobium crepidatum	B/S	546	0	2	https://static.orchids.in.ua/img/dendrobium-crepidatum-foto-6589.jpg
49	Dendrobium cretaceum	NB/S	178	0	2	https://static.orchids.in.ua/img/dendrobium-cretaceum-foto-2091.jpg
50	Dendrobium cumulatum	B/S	480	0	2	https://static.orchids.in.ua/img/dendrobium-cumulatum-foto-6673.jpg
51	Dendrobium Cybelle	F/S	788	0	2	https://static.orchids.in.ua/img/dendrobium-cybelle-foto-770.jpg
53	Dendrobium Dawn Marie	F/S	425	0	2	https://static.orchids.in.ua/img/dendrobium-dawn-marie-foto-6505.jpg
55	Dendrobium delacourii	B/S	385	0	2	https://static.orchids.in.ua/img/dendrobium-delacourii-foto-1675.jpg
56	Dendrobium draconis	B/S	398	0	2	https://static.orchids.in.ua/img/dendrobium-draconis-foto-1945.jpg
58	Dendrobium fimbriatum	F/S	540	0	2	https://static.orchids.in.ua/img/dendrobium-fimbriatum-foto-2083.jpg
60	Dendrobium Fire Wings (Big Alex x Silver Wings) (4N)	B/S	1260	0	2	https://static.orchids.in.ua/img/1-foto-6146.jpg
62	Dendrobium friedericksianum	B/S	420	0	2	https://static.orchids.in.ua/img/dendrobium-friedericksianum-foto-6669.jpg
64	Dendrobium Hamana Lake 'Prism'	B/S	398	0	2	https://static.orchids.in.ua/img/dendrobium-hamana-lake-prism-foto-6679.jpg
67	Dendrobium henryi	B/S	420	0	2	https://static.orchids.in.ua/img/dendrobium-henryi-foto-6626.jpg
71	Dendrobium jenkinsii	B/S	275	0	2	https://static.orchids.in.ua/img/1-foto-1023.jpg
74	Dendrobium linawianum	F/S	356	0	2	https://static.orchids.in.ua/img/dendrobium-linawianum-foto-6670.jpg
77	Dendrobium Maiden Charlotte x Micro Chip	B/S	498	0	2	https://static.orchids.in.ua/img/dendrobium-maiden-charlotte-x-micro-chip-foto-6179.jpg
80	Dendrobium mohlianum	B/S	300	0	2	https://static.orchids.in.ua/img/1-foto-5917.jpg
82	Dendrobium nobile giganteum	F/S	788	0	2	https://static.orchids.in.ua/img/dendrobium-nobile-giganteum-foto-1678.jpg
85	Dendrobium parishii 'Six Eyes' x self	B/S	486	0	2	https://static.orchids.in.ua/img/dendrobium-parishii-six-eyes-x-self-foto-6506.jpg
93	Dendrobium pendulum	B/S	650	0	2	https://static.orchids.in.ua/img/dendrobium-pendulum-foto-1037.jpg
102	Dendrobium Roy Tokunaga	NB/S	465	0	2	https://static.orchids.in.ua/img/1-foto-6148.jpg
110	Dendrobium Sherry Abe (Peter Shen x spectabile)		580	0	2	https://static.orchids.in.ua/img/1-foto-6149.jpg
118	Dendrobium sulawesiense x lawesii 'Orange'	B/S	380	0	2	https://static.orchids.in.ua/img/dendrobium-sulawesiense-x-lawesii-orange-foto-5921.jpg
129	Dendrobium trantuanii	B/S	675	0	2	https://static.orchids.in.ua/img/dendrobium-trantuanii-foto-1049.jpg
139	Dracula gigas	F/S	1215	0	3	https://static.orchids.in.ua/img/dracula-gigas-foto-1841.jpg
146	Aerangis mooreana	NB/S	380	0	4	https://static.orchids.in.ua/img/aerangis-mooreana-foto-131.jpg
156	Angraecum equitans	NB/S	270	0	4	https://static.orchids.in.ua/img/angraecum-equitans-foto-108.jpg
166	Barkeria whartoniana	B/S	527	0	4	https://static.orchids.in.ua/img/1-foto-5918.jpg
176	Bulbophyllum hirundinis	B/S	693	0	4	https://static.orchids.in.ua/img/bulbophyllum-hirundinis-foto-1983.jpg
185	Capanemia superflua	NB/S	420	0	4	https://static.orchids.in.ua/img/capanemia-superflua-foto-4084.jpg
194	Coelogyne marmorata	F/S	520	0	4	https://static.orchids.in.ua/img/coelogyne-marmorata-foto-3061.jpg
204	Cymbidiella pardalina	NB/S	1080	0	4	https://static.orchids.in.ua/img/cymbidiella-pardalina-foto-3473.jpg
214	Encyclia mooreana	B/S	435	0	4	https://static.orchids.in.ua/img/1-foto-5785.jpg
224	Epidendrum radioferens	B/S	448	0	4	https://static.orchids.in.ua/img/epidendrum-radioferens-foto-6055.jpg
233	Lepanthes adrianae	B/S	998	0	4	https://static.orchids.in.ua/img/lepanthes-adrianae-foto-5065.jpg
243	Lycaste aromatica	B/S	420	0	4	https://static.orchids.in.ua/img/lycaste-aromatica-foto-580.jpg
253	Lycaste Southern Cross 'Splash' x Katsuragawa 'Yellow Bird' SM/JGP	S/S	1456	0	4	https://static.orchids.in.ua/img/lycaste-southern-cross-splash-x-katsuragawa-yellow-bird-foto-6194.jpg
263	Maxillaria desvauxiana	F/S	1092	0	4	https://static.orchids.in.ua/img/maxillaria-desvauxiana-foto-421.jpg
272	Maxillaria Padre Jorge Moreno	B/S	1215	0	4	https://static.orchids.in.ua/img/maxillaria-padre-jorge-moreno-foto-5748.jpg
282	Maxillaria venusta	B/S	498	0	4	https://static.orchids.in.ua/img/maxillaria-venusta-foto-4807.jpg
292	Neofinetia falcata Shoutenno x Renanthera citrina	S/S	468	0	4	https://static.orchids.in.ua/img/neofinetia-falcata-shoutenno-x-renanthera-citrina-foto-5209.jpg
304	Pleurothallis dilemma	NB/S	544	0	4	https://static.orchids.in.ua/img/pleurothalis-dilemma-foto-5780.jpg
314	Rhynchostele bictoniense	F/S	766	0	4	https://static.orchids.in.ua/img/rhynchostele-bictoniense-foto-591.jpg
324	Stanhopea wardii	B/S	1080	0	4	https://static.orchids.in.ua/img/stanhopea-wardii-foto-998.jpg
334	Catasetum Intermedium (spitzii x vinaceum)	B/S	985	0	6	
343	Catasetum pileatum (cream x red)	B/S	1170	0	6	
352	Catasetum tigrinum	B/S	1200	0	6	https://static.orchids.in.ua/img/catasetum-tigrinum-foto-5194.jpg
363	Clowesia Rebecca Northen 'Grapefruit Pink' x Catasetum Melana Davison 'Bombshell'	B/S	1350	0	6	https://static.orchids.in.ua/img/clowesia-rebecca-northen-grapefruit-pink-x-catasetum-melana-davison-bombshell-foto-5553.jpg
373	Fredclarkeara Dark There After 'SVO Winter Night' x Catasetum Louise Clarke 'SVO'	B/S	1305	0	6	https://static.orchids.in.ua/img/1-foto-5560.jpg
383	Fredclarkeara (Mormodia Painted Desert 'SVO' x Catasetum spitzii 'Red 48')	B/S	1276	0	6	https://static.orchids.in.ua/img/1-foto-5559.jpg
393	Brassavola fragrans x Laelia anceps	F/S	432	0	7	https://static.orchids.in.ua/img/brassavola-fragrans-x-laelia-anceps-foto-2621.jpg
403	Brassocattleya Amethyst (Laelia purpurata x Brassavola cucullata)	B/S	750	0	7	https://static.orchids.in.ua/img/brassocattleya-amethyst-foto-6668.jpg
413	Brassocattleya Tsiku Archangel	B/S	760	0	7	https://static.orchids.in.ua/img/brassocattleya-tsiku-archangel-foto-5996.jpg
422	Brassolaeliocattleya Delta King Tangerglow (George King x John Sexton)	B/S	980	0	7	https://static.orchids.in.ua/img/1-foto-3601.jpg
433	Brassolaeliocattleya Gisele 'Bundchen'	B/S	1220	0	7	https://static.orchids.in.ua/img/brassolaeliocattleya-gisele-bundchen-foto-5652.jpg
443	Brassolaeliocattleya Lucky Strike 'Mangkorn'	F/S	827	0	7	https://static.orchids.in.ua/img/1-foto-2918.jpg
54	Dendrobium dearei	F/S	633	0	2	https://static.orchids.in.ua/img/dendrobium-dearei-foto-3066.jpg
66	Dendrobium hellwigianum x hellwigianum Warren	B/S	375	0	2	https://static.orchids.in.ua/img/1-foto-6445.jpg
69	Dendrobium ionopus	F/S	654	0	2	https://static.orchids.in.ua/img/dendrobium-ionopus-foto-1006.jpg
72	Dendrobium leucocyanum	B/S	980	0	2	https://static.orchids.in.ua/img/1-foto-6443.jpg
75	Dendrobium loddigesii variegated	NB/S	375	0	2	https://static.orchids.in.ua/img/dendrobium-loddigesii-variegated-foto-6691.jpg
79	Dendrobium Mini Snowflake x Micro Chip	B/S	498	0	2	https://static.orchids.in.ua/img/1-foto-6182.jpg
83	Dendrobium nobile var. nobilius	F/S	788	0	2	https://static.orchids.in.ua/img/1-foto-774.jpg
86	Dendrobium parvulum white	F/S	750	0	2	https://static.orchids.in.ua/img/dendrobium-parvulum-white-foto-5040.jpg
99	Dendrobium pulchellum alba	B/S	750	0	2	https://static.orchids.in.ua/img/dendrobium-pulchellum-alba-foto-6627.jpg
109	Dendrobium setigerum	F/S	796	0	2	https://static.orchids.in.ua/img/dendrobium-setigerum-foto-3091.jpg
119	Dendrobium sulawesiense x lawesii (white lip)	B/S	450	0	2	https://static.orchids.in.ua/img/dendrobium-sulawesiense-x-lawesii-white-lip-foto-5922.jpg
128	Dendrobium tortile	F/S	520	0	2	https://static.orchids.in.ua/img/dendrobium-tortile-foto-6672.jpg
138	Dracula diana	B/S	810	0	3	https://static.orchids.in.ua/img/dracula-diana-foto-1835.jpg
149	Aerangis somalensis	B/S	370	0	4	https://static.orchids.in.ua/img/1-foto-85.jpg
158	Angraecum leonis	B/S	675	0	4	https://static.orchids.in.ua/img/angraecum-leonis-foto-109.jpg
169	Broughtonia sanguinea x Epidendrum radicans	F/S	528	0	4	https://static.orchids.in.ua/img/broughtonia-sanguinea-x-epidendrum-radicans-foto-5227.jpg
180	Bulbophyllum moniliforme	F/S	390	0	4	https://static.orchids.in.ua/img/bulbophyllum-moniliforme-foto-541.jpg
191	Coelogyne dayana	B/S	980	0	4	https://static.orchids.in.ua/img/coelogyne-dayana-foto-2963.jpg
201	Coryanthes leucocorys	B/S	1080	0	4	https://static.orchids.in.ua/img/1-foto-4787.jpg
211	Encyclia garciana	B/S	980	0	4	https://static.orchids.in.ua/img/encyclia-garciana-foto-4886.jpg
221	Epidendrum lacustre	S/S	192	0	4	https://static.orchids.in.ua/img/epidendrum-lacustre-foto-5058.jpg
231	Holcoglossum wangii	B/S	270	0	4	https://static.orchids.in.ua/img/holcoglossum-wangii-foto-3546.jpg
240	Lycaste Andromeda (nana x Sunray 'Odette')	B/S	1700	0	4	https://static.orchids.in.ua/img/lycaste-andromeda-nana-x-sunray-odette-foto-4644.jpg
250	Lycaste Shimogamo (Mem Kageyuki Mito x locusta)	B/S	1680	0	4	https://static.orchids.in.ua/img/1-foto-6200.jpg
261	Maxillaria callichroma	F/S	593	0	4	https://static.orchids.in.ua/img/maxillaria-callichroma-foto-3991.jpg
271	Maxillaria molitor	F/S	1215	0	4	https://static.orchids.in.ua/img/maxillaria-molitor-foto-414.jpg
280	Maxillaria turkeliae	B/S	1072	0	4	https://static.orchids.in.ua/img/maxillaria-turkeliae-foto-4806.jpg
291	Neofinetia falcata Kisei Gyoku	F/S	1489	0	4	https://static.orchids.in.ua/img/neofinetia-falcata-kisei-gyoku-foto-3160.jpg
302	Plectrelminthus caudatus	NB/S	420	0	4	https://static.orchids.in.ua/img/1-foto-1075.jpg
312	Pleurothallis titan	B/S	1300	0	4	https://static.orchids.in.ua/img/pleurothallis-titan-foto-5082.jpg
322	Stanhopea platyceras	B/S	1620	0	4	https://static.orchids.in.ua/img/stanhopea-platyceras-foto-5728.jpg
332	Catasetum Frilly Doris 'SVO II' x Catasetum saccatum 'Brooklyn Botanical Garden'	B/S	1480	0	6	https://static.orchids.in.ua/img/catasetum-frilly-doris-svo-ii-x-catasetum-saccatum-brooklyn-botanical-garden-foto-5946.jpg
342	Catasetum pileatum (albo x albo)	B/S	1125	0	6	https://static.orchids.in.ua/img/catasetum-pileatum-albo-x-albo-foto-2017.jpg
353	Catasetum viridiflavum	B/S	920	0	6	https://static.orchids.in.ua/img/catasetum-viridiflavum-foto-856.jpg
364	Clowesia Rebecca Northen 'Grapefruit Pink' x Catasetum semicirculatum 'The Best One'	B/S	1460	0	6	https://static.orchids.in.ua/img/clowesia-rebecca-northen-grapefruit-pink-x-catasetum-semicirculatum-the--best-one-foto-5940.jpg
375	Fredclarkeara Enter Light 'SVO Dark Beauty' x Catasetum John C Burchett 'Ursa Major'	B/S	1345	0	6	https://static.orchids.in.ua/img/fredclarkeara-enter-light-%E2%80%98svo-dark-beauty%E2%80%99-x-catasetum-john-c-burchett-%E2%80%98ursa-major%E2%80%99-foto-5587.jpg
385	Brassavola Aristocrat (Brassavola glauca x digbyana)	F/S	270	0	7	https://static.orchids.in.ua/img/brassavola-aristocrat-brassavola-glauca-x-digbyana-foto-2622.jpg
395	Brassavola George Tyler 'Diamond Orchids' x Brassavola digbyana 'Shamrock'	NB/S	975	0	7	https://static.orchids.in.ua/img/1-foto-5869.jpg
405	Brassocattleya Cynthia (Brassavola digbyana x Cattleya walkeriana)	F/S	320	0	7	https://static.orchids.in.ua/img/1-foto-339.jpg
415	Brassolaeliocattleya Aloha Spirit 'Lenette'	B/S	583	0	7	https://static.orchids.in.ua/img/brassolaeliocattleya-aloha-spirit-lenette-foto-2417.jpg
425	Brassolaeliocattleya Durigan 'Aphrodite'	B/S	1620	0	7	https://static.orchids.in.ua/img/brassolaeliocattleya-durigan-aphrodite-foto-6849.jpg
435	Brassolaeliocattleya Goldenzelle 'Saddle Peak'	B/S	980	0	7	https://static.orchids.in.ua/img/brassolaeliocattleya-goldenzelle-saddle-peak-foto-2816.jpg
445	Brassolaeliocattleya Miriam Suzuki	B/S	980	0	7	https://static.orchids.in.ua/img/1-foto-5644.jpg
455	Brassolaeliocattleya Sanyung Ruby (Waianae Coast x Chia Lin)	B/S	540	0	7	https://static.orchids.in.ua/img/brassolaeliocattleya-sanyung-ruby-foto-917.jpg
465	Cattleya aclandiae ('Big Lip' x 'Bela Vista')	S/S	978	0	7	https://static.orchids.in.ua/img/cattleya-aclandiae-big-lip-x-bela-vista-foto-6905.jpg
475	Cattleya amethystoglossa	F/S	1560	0	7	https://static.orchids.in.ua/img/cattleya-amethystoglossa-foto-4658.jpg
485	Cattleya amethystoglossa coerulea ('Multiflora' x 'Paulo UHL')		780	0	7	
495	Cattleya bicolor albescens 'Armageddon'	NB/S	1080	0	7	https://static.orchids.in.ua/img/cattleya-bicolor-albescens-armageddon-foto-6272.jpg
505	Cattleya Coral Gem	B/S	1196	0	7	https://static.orchids.in.ua/img/1-foto-6830.jpg
88	Aerides lawrenciae var. sanderiana	F/S	754	0	1	https://static.orchids.in.ua/img/aerides-lawrenciae-var-sanderiana-foto-3046.jpg
95	Dendrobium pentapterum x Dendrobium vexillarius red	B/S	1560	0	2	https://static.orchids.in.ua/img/dendrobium-pentapterum-x-dendrobium-vexillarius-red-foto-6643.jpg
107	Dendrobium scabrilingue	B/S	420	0	2	https://static.orchids.in.ua/img/dendrobium-scabrilingue-foto-6693.jpg
115	Dendrobium strebroceras	B/S	848	0	2	https://static.orchids.in.ua/img/dendrobium-strebroceras-foto-4050.jpg
123	Dendrobium Supernova	F/S	327	0	2	https://static.orchids.in.ua/img/dendrobium-supernova-foto-2927.jpg
135	Dockrillia casuarinae	B/S	270	0	2	https://static.orchids.in.ua/img/dockrillia-casuarinae-foto-3859.jpg
148	Aerangis punctata	B/S	540	0	4	https://static.orchids.in.ua/img/aerangis-punctata-foto-87.jpg
159	Angraecum Longiscott	B/S	475	0	4	https://static.orchids.in.ua/img/angraecum-longiscott-foto-6504.jpg
168	Broughtonia sanguinea aurea splash	B/S	1200	0	4	https://static.orchids.in.ua/img/1-foto-6039.jpg
178	Bulbophyllum lepidum	F/S	420	0	4	https://static.orchids.in.ua/img/bulbophyllum-lepidum-foto-1944.jpg
188	Cirrhopetalum brevibrachiatum	F/S	633	0	4	https://static.orchids.in.ua/img/cirrhopetalum-brevibrachiatum-foto-3058.jpg
198	Coelogyne speciosa	F/S	416	0	4	https://static.orchids.in.ua/img/coelogyne-speciosa-foto-5326.jpg
207	Dendrochilum saccolabium	B/S	380	0	4	https://static.orchids.in.ua/img/dendrochilum-saccolabium-foto-4901.jpg
217	Epidendrum Chien Ya Smile 'K S' (Epi. polybulbon x E. cordigera)	B/S	672	0	4	https://static.orchids.in.ua/img/epidendrum-chien-ya-smile-k-s-foto-4708.jpg
228	Eurychone rothschildiana	B/S	1576	0	4	https://static.orchids.in.ua/img/eurychone-rothschildiana-foto-1893.jpg
238	Lycamerlycaste Procyon (campbellii x nana)	B/S	1100	0	4	https://static.orchids.in.ua/img/lycamerlycaste-procyon-campbellii-x-nana-foto-6222.jpg
248	Lycaste linguella	B/S	1560	0	4	https://static.orchids.in.ua/img/lycaste-linguella-foto-4560.jpg
258	Maxillaria Alan Digby	B/S	1782	0	4	https://static.orchids.in.ua/img/maxillaria-alan-digby-foto-5747.jpg
268	Maxillaria Johann Blatter	B/S	1215	0	4	https://static.orchids.in.ua/img/maxillaria-johann-blatter-foto-4804.jpg
278	Maxillaria sanguinea	F/S	450	0	4	https://static.orchids.in.ua/img/maxillaria-sanguinea-foto-4528.jpg
287	Neofinetia falcata Furan Takachiho	F/S	990	0	4	https://static.orchids.in.ua/img/neofinetia-falcata-furan-takachiho-foto-1861.jpg
297	Osmoglossum pulchellum	B/S	320	0	4	https://static.orchids.in.ua/img/osmoglossum-pulchellum-foto-1087.jpg
307	Pleurothallis resupinata	F/S	672	0	4	https://static.orchids.in.ua/img/pleurothallis-resupinata-foto-574.jpg
317	Schoenorchis scolopendria	F/S	980	0	4	https://static.orchids.in.ua/img/schoenorchis-scolopendria-foto-4417.jpg
327	Trichoceros muralis	B/S	697	0	4	https://static.orchids.in.ua/img/trichoceros-muralis-foto-5014.jpg
337	Catasetum macroglossum	F/S	878	0	6	https://static.orchids.in.ua/img/catasetum-macroglossum-foto-3532.jpg
347	Catasetum Portagee Star 'Brian Lawson's Sunrise' x Catasetum Melana Davison 'Fox Tail'	B/S	1080	0	6	https://static.orchids.in.ua/img/catasetum-portagee-star-brian-lawsons-sunrise-x-catasetum-melana-davison-fox-tail-foto-5947.jpg
357	Clowesia Grace Dunn 'Live Oak' x Catasetum tigrinum 'SVO'	B/S	1350	0	6	https://static.orchids.in.ua/img/clowesia-grace-dunn-live-oak-x-catasetum-tigrinum-svo-foto-5937.jpg
367	Cycnoches Jumbo Cooper 'SVO' x Cycnoches Alexis Jesus Pardo 'Sleeper Keeper'	B/S	1044	0	6	https://static.orchids.in.ua/img/1-foto-5573.jpg
377	Fredclarkeara Majestic Orchids Shopper (Fredclarkeara After Midnight 'SVO Dark Beauty' x Catasetum John C Burchett 'Ursa Major')	B/S	1345	0	6	https://static.orchids.in.ua/img/1-foto-5563.jpg
387	Brassavola cucullata	F/S	380	0	7	https://static.orchids.in.ua/img/brassavola-cucullata-foto-337.jpg
397	Brassavola Jiminy Cricket 'Superbug' (Brassavola nodosa x Rhyncholaelia digbyana)	F/S	360	0	7	https://static.orchids.in.ua/img/brassavola-jiminy-cricket-superbug-foto-6752.jpg
407	Brassocattleya Hippodamia x Cattleya aclandiae	B/S	796	0	7	https://static.orchids.in.ua/img/1-foto-5616.jpg
417	Brassolaeliocattleya Art Sound 'Ginga'	F/S	693	0	7	https://static.orchids.in.ua/img/brassolaeliocattleya-art-sound-ginga-foto-516.jpg
427	Brassolaeliocattleya Durigan 'Cruzeiro do Sul'	B/S	1620	0	7	https://static.orchids.in.ua/img/1-foto-6847.jpg
437	Brassolaeliocattleya Haw Yuan Beauty 'Hong' x Brassavola digbyana 'Uncle Pig'	B/S	324	0	7	https://static.orchids.in.ua/img/brassolaeliocattleya-haw-yuan-beauty-hong-x-brassavola-digbyana-uncle-pig-foto-3332.jpg
448	Brassolaeliocattleya Nobile's Tropicana 'TP09'	NB/S	480	0	7	https://static.orchids.in.ua/img/blctropicana-foto-4758.jpg
458	Brassolaeliocattleya Shiniti Ishikawa Amarelo	B/S	1450	0	7	https://static.orchids.in.ua/img/1-foto-5647.jpg
468	Cattleya aclandiae alba 'Pure Joy' x self	S/S	2295	0	7	https://static.orchids.in.ua/img/cattleya-aclandiae-alba-pure-joy-foto-6654.jpg
477	Cattleya amethystoglossa 'Colibri'	B/S	980	0	7	https://static.orchids.in.ua/img/1-foto-4660.jpg
488	Cattleya araguaiensis	S/S	490	0	7	https://static.orchids.in.ua/img/cattleya-araguaiensis-x-self-foto-825.jpg
498	Cattleya bowringiana coerulea	B/S	675	0	7	https://static.orchids.in.ua/img/cattleya-bowringiana-coerulea-foto-867.jpg
507	Cattleya Dominiana (intermedia var. coerulea x maxima var. coerulea 'Hector')	F/S	540	0	7	https://static.orchids.in.ua/img/cattleya-dominiana-foto-2778.jpg
517	Cattleya eldorado	F/S	1218	0	7	https://static.orchids.in.ua/img/1-foto-6919.jpg
527	Cattleya gaskelliana 'Luna' x self	NB/S	810	0	7	https://static.orchids.in.ua/img/1-foto-6273.jpg
537	Cattleya gigas type x Cattleya violacea	F/S	675	0	7	https://static.orchids.in.ua/img/cattleya-gigas-type-x-cattleya-violacea-foto-3612.jpg
547	Cattleya guttata verde sem pintas 'AWZ' x SELF		1378	0	7	https://static.orchids.in.ua/img/cattleya-guttata-verde-sem-pintas-awz-x-self-foto-6130.jpg
89	Aerides quinquevulnera var. purpurata	F/S	754	0	1	https://static.orchids.in.ua/img/aerides-quinquevulnera-var-purpurata-foto-3050.jpg
101	Dendrobium Red - Black	F/S	270	0	2	https://static.orchids.in.ua/img/dendrobium-red---black-foto-3173.jpg
111	Dendrobium shixingense	F/S	420	0	2	https://static.orchids.in.ua/img/dendrobium-shixingense-foto-6671.jpg
117	Dendrobium subuliferum	F/S	1080	0	2	https://static.orchids.in.ua/img/1-foto-6452.jpg
127	Dendrobium thyrsiflorum	F/S	788	0	2	https://static.orchids.in.ua/img/dendrobium-thyrsiflorum-foto-1048.jpg
137	Dracula cordobae	F/S	1092	0	3	https://static.orchids.in.ua/img/dracula-cordobae-foto-3616.jpg
147	Aerangis mystacidii	NB/S	520	0	4	https://static.orchids.in.ua/img/1-foto-83.jpg
157	Angraecum infundibulare	B/S	820	0	4	https://static.orchids.in.ua/img/angraecum-infundibulare-foto-5153.jpg
167	Broughtonia sanguinea 'H&R Star Splash'	NB/S	765	0	4	https://static.orchids.in.ua/img/1-foto-6183.jpg
177	Bulbophyllum inunctum	B/S	540	0	4	https://static.orchids.in.ua/img/bulbophyllum-inunctum-foto-4877.jpg
187	Christensonia vietnamica	B/S	580	0	4	https://static.orchids.in.ua/img/christensonia-vietnamica-foto-4044.jpg
196	Coelogyne pachystachya	B/S	380	0	4	https://static.orchids.in.ua/img/coelogyne-pachystachya-foto-6684.jpg
206	Cyrtorchis arcuata	S/S	485	0	4	https://static.orchids.in.ua/img/1-foto-5795.jpg
215	Encyclia phoenicea	S/S	180	0	4	https://static.orchids.in.ua/img/1-foto-5797.jpg
225	Epidendrum schlechterianum	F/S	280	0	4	https://static.orchids.in.ua/img/1-foto-6050.jpg
235	Leptotes unicolor	F/S	847	0	4	https://static.orchids.in.ua/img/leptotes-unicolor-foto-351.jpg
245	Lycaste Kamigamo ((Leo x Imshootiana) x Mem Kageyuki Mito 'Yellow Fantasy')	B/S	1196	0	4	https://static.orchids.in.ua/img/lycaste-kamigamo-foto-4638.jpg
255	Lycomormium squalidum	S/S	673	0	4	https://static.orchids.in.ua/img/lycomormium-squalidum-foto-1680.jpg
265	Maxillaria fletcheriana	F/S	1215	0	4	https://static.orchids.in.ua/img/maxillaria-fletcheriana-foto-5023.jpg
275	Maxillaria sanderiana	B/S	1875	0	4	https://static.orchids.in.ua/img/1-foto-1831.jpg
285	Neofinetia falcata Awaharibeni	F/S	980	0	4	https://static.orchids.in.ua/img/neofinetia-falcata-awaharibeni-foto-357.jpg
295	Ornithocephalus cochleariformis	B/S	420	0	4	https://static.orchids.in.ua/img/ornithocephalus-cochleariformis-foto-4955.jpg
303	Pleurothallis cardiostola	F/S	840	0	4	https://static.orchids.in.ua/img/pleurothallis-cardiostola-foto-6169.jpg
313	Rhynchostele aptera	B/S	698	0	4	https://static.orchids.in.ua/img/rhynchostele-aptera-foto-592.jpg
323	Stanhopea shuttleworthii	B/S	1300	0	4	https://static.orchids.in.ua/img/stanhopea-shuttleworthii-foto-6172.jpg
333	Catasetum Frilly Doris 'SVO II' x Catasetum tigrinum 'SVO'	B/S	1280	0	6	https://static.orchids.in.ua/img/catasetum-frilly-doris-svo-ii-x-catasetum-tigrinum-svo-foto-5945.jpg
344	Catasetum pileatum (redgreen x aurantiacum)	B/S	1125	0	6	
354	Clowesia Grace Dunn	B/S	540	0	6	https://static.orchids.in.ua/img/1-foto-5846.jpg
365	Clowesia Upper Echelon 'SVO Sun Blast' x Catasetum Jose Abalo 'SVO'	B/S	1260	0	6	https://static.orchids.in.ua/img/clowesia-upper-echelon-svo-sun-blast-x-catasetum-jose-abalo-svo-foto-5941.jpg
374	Fredclarkeara Enter Light 'SVO Dark Beauty' x Catasetum Frilly Doris 'SVOII'	B/S	1276	0	6	https://static.orchids.in.ua/img/fredclarkeara-enter-light-svo-dark-beauty-x-catasetum-frilly-doris-svoii-foto-5569.jpg
384	Brassanthe Maikai x Brassocattleya Star Ruby	B/S	345	0	7	https://static.orchids.in.ua/img/brassanthe-maikai-x-brassocattleya-star-ruby-orchis-foto-2175.jpg
394	Brassavola fragrans x Laeliocattleya Elizabeth Hearn	F/S	540	0	7	https://static.orchids.in.ua/img/brassavola-fragrans-x-laeliocattleya-elizabeth-hearn-foto-3703.jpg
404	Brassocattleya Chief Pink 'Diana'	F/S	435	0	7	https://static.orchids.in.ua/img/brassocattleya-chief-pink-diana-foto-1770.jpg
414	Brassoepidendrum Jim Wallace 'Leo'	B/S	810	0	7	https://static.orchids.in.ua/img/brassoepidendrum-jim-wallace-leo-foto-513.jpg
419	Brassolaeliocattleya Chia Lin 'New City' (Oconee x Maitland)	NB/S	398	0	7	https://static.orchids.in.ua/img/brassolaeliocattleya-chia-lin-new-city-foto-1673.jpg
429	Brassolaeliocattleya Eve Marie Barnett 'Magnificent Watermelon Gold' x Blc. Oconee x Sunset Say 'Birds of Paradise' x Blc. Guaninm City	B/S	754	0	7	https://static.orchids.in.ua/img/brassolaeliocattleya-eve-marie-barnett-magnificent-watermelon-gold-x-blc-oconee-x-sunset-say-birds-of-paradise-x-blc-guaninm-city-foto-3232.jpg
439	Brassolaeliocattleya Keowee 'Mendenhall'	F/S	2120	0	7	https://static.orchids.in.ua/img/brassolaeliocattleya-keowee-mendenhall-foto-6747.jpg
449	Brassolaeliocattleya Owen Holmes 'Mendenhall'	B/S	720	0	7	https://static.orchids.in.ua/img/brassolaeliocattleya-owen-holmes-mendenhall-foto-6829.jpg
459	Brassolaeliocattleya Suzuki's Red Flare	B/S	840	0	7	https://static.orchids.in.ua/img/brassolaeliocattleya-suzukis-red-flare-foto-5645.jpg
469	Cattleya aclandiae aurea 'Luiza' x albescens (Caliman)	B/S	1120	0	7	https://static.orchids.in.ua/img/1-foto-6275.jpg
478	Cattleya amethystoglossa 'FPA-E' x Cattleya amethystoglossa rubra	NB/S	705	0	7	https://static.orchids.in.ua/img/cattleya-amethystoglossa-fpa-e-x-cattleya-amethystoglossa-rubra-foto-5138.jpg
487	Cattleya amethystoglossa rubra 'Orchidglade'	NB/S	1180	0	7	https://static.orchids.in.ua/img/cattleya-amethystoglossa-rubra-orchidglade-foto-5137.jpg
497	Cattleya bicolor tipo (do pinheiral) x bicolor 'Nilton'		594	0	7	https://static.orchids.in.ua/img/cattleya-bicolor-tipo-do-pinheiral-x-bicolor-nilton-foto-6076.jpg
508	Cattleya dowiana	NB/S	980	0	7	https://static.orchids.in.ua/img/cattleya-dowiana-foto-4777.jpg
518	Cattleya eldorado 'M. Ito'	S/S	360	0	7	https://static.orchids.in.ua/img/1-foto-5374.jpg
528	Cattleya gaskelliana coerulea ('Aida' x 'Alexis') x SELF	B/S	1080	0	7	https://static.orchids.in.ua/img/cattleya-gaskelliana-coerulea-aida-x-alexis-x-self-foto-1185.jpg
538	Cattleya Green Emerald 'Orchid Queen' (Cattleya Elizabeth Mahon x Cattleya Thospol Spot)	B/S	420	0	7	https://static.orchids.in.ua/img/1-foto-651.jpg
90	Ascocenda Fuchs Harvest Moon x Chaopaya Sapphire) x Vanda Bitz's	B/S	340	0	1	https://static.orchids.in.ua/img/ascocenda-fuchs-harvest-moon-x-chaopaya-sapphire-x-vanda-bitzs-foto-6557.jpg
464	Cattleya aclandiae	B/S	1370	0	7	https://static.orchids.in.ua/img/1-foto-6921.jpg
94	Dendrobium pierardii x loddigesii	F/S	849	0	2	https://static.orchids.in.ua/img/dendrobium-pierardii-x-loddigesii-foto-4397.jpg
103	Dendrobium sanderae	F/S	633	0	2	https://static.orchids.in.ua/img/dendrobium-sanderae-foto-3070.jpg
112	Dendrobium signatum	F/S	325	0	2	https://static.orchids.in.ua/img/dendrobium-signatum-foto-6685.jpg
124	Dendrobium tangerinum	B/S	480	0	2	https://static.orchids.in.ua/img/dendrobium-tangerinum-foto-6748.jpg
134	Dendrobium wilsonii	F/S	385	0	2	https://static.orchids.in.ua/img/dendrobium-wilsonii-foto-6675.jpg
144	Aerangis kirkii	B/S	300	0	4	https://static.orchids.in.ua/img/1-foto-5793.jpg
155	Angraecum didieri x Neofinetia falcata	NB/S	1360	0	4	https://static.orchids.in.ua/img/angraecum-didieri-x-neofinetia-falcata-foto-5392.jpg
165	Barkeria skinneri	F/S	405	0	4	https://static.orchids.in.ua/img/barkeria-skinneri-foto-300.jpg
175	Bulbophyllum fascinator	F/S	540	0	4	https://static.orchids.in.ua/img/bulbophyllum-fascinator-foto-1942.jpg
186	Chiloschista exuperei	B/S	540	0	4	https://static.orchids.in.ua/img/chiloschista-exuperei-foto-5225.jpg
197	Coelogyne rochussenii	B/S	460	0	4	https://static.orchids.in.ua/img/coelogyne-rochussenii-foto-2861.jpg
208	Dendrochilum uncatum	F/S	324	0	4	https://static.orchids.in.ua/img/dendrochilum-uncatum-foto-3319.jpg
218	Epidendrum cochlidium	F/S	998	0	4	https://static.orchids.in.ua/img/epidendrum-cochlidium-foto-5055.jpg
227	Euchile mariae	F/S	998	0	4	https://static.orchids.in.ua/img/1-foto-263.jpg
237	Lycamerlycaste Orion (Sudamerlycaste nana x Lycaste Shoalhaven 'Kyoto')	B/S	1380	0	4	https://static.orchids.in.ua/img/1-foto-6197.jpg
247	Lycaste leucantha x Auburn '392-3'	B/S	1190	0	4	https://static.orchids.in.ua/img/lycaste-leucantha-x-auburn-392-3-foto-6215.jpg
257	Macropodanthus alatus	S/S	326	0	4	https://static.orchids.in.ua/img/macropodanthus-alatus-foto-5397.jpg
267	Maxillaria huebschii	B/S	972	0	4	https://static.orchids.in.ua/img/maxillaria-huebschii-foto-411.jpg
277	Maxillaria Sangai x Maxillaria molitor orange	B/S	1215	0	4	https://static.orchids.in.ua/img/maxillaria-sangai-x-maxillaria-molitor-orange-foto-5749.jpg
288	Neofinetia falcata Hime Manjushage	F/S	1139	0	4	
298	Panarica ionocentra	F/S	720	0	4	https://static.orchids.in.ua/img/panarica-ionocentra-foto-4945.jpg
308	Pleurothallis sarracenia	F/S	627	0	4	https://static.orchids.in.ua/img/1-foto-5802.jpg
318	Stanhopea candida	B/S	1260	0	4	https://static.orchids.in.ua/img/stanhopea-candida-foto-989.jpg
328	Pabstia modestior	S/S	1040	0	5	https://static.orchids.in.ua/img/pabstia-modestior-foto-5078.jpg
338	Catasetum Orchidglade 'Davie Ranches' x Catasetum tiginum 'SVO'	B/S	1280	0	6	https://static.orchids.in.ua/img/catasetum-orchidglade-davie-ranches-x-catasetum-tiginum-svo-foto-5948.jpg
348	Catasetum Portagee Star 'Brian Lawson's Sunrise' x Catasetum tigrinum 'SVO'	B/S	1080	0	6	https://static.orchids.in.ua/img/catasetum-portagee-star-brian-lawsons-sunrise-x-catasetum-tigrinum-svo-foto-5950.jpg
358	Clowesia Jumbo Grace 'Jumbo Orchids'	S/S	540	0	6	https://static.orchids.in.ua/img/clowesia-jumbo-grace-jumbo-orchids-foto-776.jpg
368	Cycnodes Taiwan Gold 'Taiwan Orange'	F/S	936	0	6	https://static.orchids.in.ua/img/cycnodes-taiwan-gold-taiwan-orange-foto-4891.jpg
378	Fredclarkeara Midnight Lace 'SVO' x Catasetum Frilly Doris 'SVO II’	B/S	1276	0	6	https://static.orchids.in.ua/img/1-foto-5562.jpg
388	Brassavola David Sander (Brassavola cuculata x Rhyncholaelia digbyana)	F/S	384	0	7	https://static.orchids.in.ua/img/brassavola-david-sander-b-cuculata-x-rhy-digbyana-foto-335.jpg
398	Brassavola Little Star x (Encyclia tampensis x phonesia)	B/S	375	0	7	https://static.orchids.in.ua/img/brassavola-little-star-x-encyclia-tampensis-x-phonesia-foto-5972.jpg
408	Brassocattleya Jairak Canary x Encyclia randii	B/S	324	0	7	https://static.orchids.in.ua/img/brassocattleya-jairak-canary-x-encyclia-randii-foto-5973.jpg
418	Brassolaeliocattleya Chia Lin 'Chang Tai' x Brassolaeliocattleya Pamela Finney 'Big Bull'	B/S	834	0	7	https://static.orchids.in.ua/img/brassolaeliocattleya-chia-lin-chang-tai--x-brassolaeliocattleya-pamela-finney-big-bull-foto-3334.jpg
428	Brassolaeliocattleya Durigan x Cattleya Little Leopard	S/S	480	0	7	https://static.orchids.in.ua/img/1-foto-6067.jpg
438	Brassolaeliocattleya Hsinying Home Run 'Ching Hua'	F/S	565	0	7	https://static.orchids.in.ua/img/brassolaeliocattleya-hsinying-home-run-ching-hua-foto-660.jpg
446	Brassolaeliocattleya Muscadine Wine (Blc. Lake Murray x Blc. Eagle Island)	B/S	754	0	7	https://static.orchids.in.ua/img/brassolaeliocattleya-muscadine-wine-foto-2423.jpg
456	Brassolaeliocattleya Shang Ding Dragon '文欽1號'	B/S	425	0	7	https://static.orchids.in.ua/img/1-foto-6503.jpg
466	Cattleya aclandiae ('Desbotata' x albina 'AWZ')	S/S	1080	0	7	https://static.orchids.in.ua/img/cattleya-aclandiae-desbotata-x-albina-awz-foto-6341.jpg
476	Cattleya amethystoglossa 'Albarus' x amethystoglossa 'Andromeda'		756	0	7	https://static.orchids.in.ua/img/cattleya-amethystoglossa-albarus-x-amethystoglossa-andromeda-foto-6136.jpg
486	Cattleya amethystoglossa dark spots x sib	NB/S	675	0	7	https://static.orchids.in.ua/img/cattleya-amethystoglossa-dark-spots-x-sibl-foto-2260.jpg
496	Cattleya bicolor chocolate XXX x SELF	B/S	1260	0	7	https://static.orchids.in.ua/img/cattleya-bicolor-chocolate-xxx-x-self-foto-2660.jpg
506	Cattleya dolosa var alba	B/S	320	0	7	https://static.orchids.in.ua/img/cattleya-dolosa-var-alba-foto-314.jpg
516	Cattleya Duckitt Ruby No 5 x Laelia anceps lineata	B/S	480	0	7	https://static.orchids.in.ua/img/cattleya-duckitt-ruby-no-5-x-laelia-anceps-lineata-foto-5226.jpg
526	Cattleya Fort Motte 'Leopard'	NB/S	722	0	7	https://static.orchids.in.ua/img/cattleya-fort-motte-leopard-foto-2429.jpg
536	Cattleya Gaudii coerulea (loddigesii coerulea x leopoldii coerulea)	B/S	1270	0	7	https://static.orchids.in.ua/img/cattleya-gaudii-coerulea-loddigesii-coerulea-x-leopoldii-coerulea-foto-6496.jpg
91	Ascocentrum miniatum	F/S	360	0	1	https://static.orchids.in.ua/img/ascocentrum-miniatum-foto-196.jpg
97	Dendrobium primulinum	F/S	788	0	2	https://static.orchids.in.ua/img/dendrobium-primulinum-foto-1039.jpg
105	Dendrobium sanderae var. luzonicum	F/S	696	0	2	https://static.orchids.in.ua/img/dendrobium-sanderae-var-luzonicum-foto-3071.jpg
113	Dendrobium speciosum	S/S	150	0	2	https://static.orchids.in.ua/img/dendrobium-speciosum-foto-4289.jpg
122	Dendrobium Super Pioneer	F/S	498	0	2	
131	Dendrobium wardianum	B/S	416	0	2	https://static.orchids.in.ua/img/1-foto-1051.jpg
140	Masdevallia polysticta blue	B/S	1650	0	3	https://static.orchids.in.ua/img/masdevallia-polysticta-blue-foto-5075.jpg
151	Aerangis stylosa	B/S	714	0	4	https://static.orchids.in.ua/img/aerangis-stylosa-foto-132.jpg
161	Angulocaste 'Surprise'	B/S	4050	0	4	https://static.orchids.in.ua/img/angulocaste-surprise-foto-6721.jpg
171	Bulbophyllum bootanoides	F/S	310	0	4	https://static.orchids.in.ua/img/2-foto-6629.jpg
181	Bulbophyllum phalaenopsis	S/S	416	0	4	https://static.orchids.in.ua/img/bulbophyllum-phalaenopsis-foto-1671.jpg
190	Cochleanthes (amazonica x lobata)	F/S	608	0	4	https://static.orchids.in.ua/img/cochleanthes-amazonica-x-lobata-foto-3626.jpg
200	Coryanthes bruchmuelleri x sib	S/S	312	0	4	https://static.orchids.in.ua/img/2-foto-6460.jpg
209	Encyclia citrina	F/S	1150	0	4	https://static.orchids.in.ua/img/1-foto-5000.jpg
219	Epidendrum ferrugineum	S/S	398	0	4	https://static.orchids.in.ua/img/epidendrum-ferrugineum-foto-4900.jpg
229	Gomesa gutfreundiana	F/S	998	0	4	https://static.orchids.in.ua/img/gomesa-gutfreundiana-foto-5061.jpg
239	Lycamerlycaste Uranus x Lycaste dyeriana	B/S	1196	0	4	https://static.orchids.in.ua/img/1-foto-6214.jpg
249	Lycaste longipetala x Maxillaria grandiflora	F/S	788	0	4	https://static.orchids.in.ua/img/lycaste-longipetala-x-maxillaria-grandiflora-foto-1353.jpg
259	Maxillaria arachnites x striata	B/S	810	0	4	https://static.orchids.in.ua/img/maxillaria-arachnites-x-striata-foto-5750.jpg
269	Maxillaria lepidota	F/S	972	0	4	https://static.orchids.in.ua/img/maxillaria-lepidota-foto-3621.jpg
279	Maxillaria schunkeana	F/S	548	0	4	https://static.orchids.in.ua/img/maxillaria-schunkeana-foto-3458.jpg
289	Neofinetia falcata Kasen	F/S	2225	0	4	https://static.orchids.in.ua/img/neofinetia-falcata-kasen-foto-3165.jpg
299	Paraphalaenopsis labukensis	S/S	478	0	4	https://static.orchids.in.ua/img/paraphalaenopsis-labukensis-foto-837.jpg
310	Pleurothallis teaguei	F/S	1940	0	4	https://static.orchids.in.ua/img/pleurothallis-teaguei-foto-6168.jpg
320	Stanhopea grandiflora	F/S	1620	0	4	https://static.orchids.in.ua/img/stanhopea-grandiflora-foto-911.jpg
330	Zygopetalum hybrid	F/S	810	0	5	https://static.orchids.in.ua/img/1-foto-3912.jpg
340	Catasetum pileatum 'Jumbo Green Gold'	B/S	988	0	6	https://static.orchids.in.ua/img/catasetum-pileatum-jumbo-green-gold-foto-2393.jpg
350	Catasetum (spitzii x spitzii yellow)	B/S	820	0	6	
360	Clowesia Jumbo Lace 'SVO' x Catasetum Frilly Doris 'SVO II'	B/S	1280	0	6	https://static.orchids.in.ua/img/clowesia-jumbo-lace-svo-x-catasetum-frilly-doris-svo-ii-foto-5944.jpg
370	Fredclarkeara After Midnight 'SVO Dark Beauty’ x Catasetum Orchidglade 'JTM'	B/S	1160	0	6	https://static.orchids.in.ua/img/fredclarkeara-after-midnight-svo-dark-beauty%E2%80%99-x-catasetum-orchidglade-jtm-foto-5570.jpg
380	Fredclarkeara (Mormodia Barnabas Collins ‘SVO Dark Night’ x Catasetum Orchidglade ‘JTM’)	B/S	1276	0	6	https://static.orchids.in.ua/img/1-foto-5557.jpg
391	(Brassavola digbyana x Rhyncholaeliocattleya Young Kong) 'ORCHIS'	F/S	1470	0	7	https://static.orchids.in.ua/img/brassavola-digbyana-x-rhyncholaeliocattleya-young-kong-orchis-foto-2177.jpg
402	Brassocattleya Amethyst (Laelia purpurata x Brassavola cucullata)	B/S	750	0	7	https://static.orchids.in.ua/img/brassocattleya-amethyst-foto-6668.jpg
412	Brassocattleya Mount Hood 'Mary'	B/S	380	0	7	https://static.orchids.in.ua/img/brassocattleya-mount-hood-mary-foto-2416.jpg
424	Brassolaeliocattleya Don De Michaels 'Z995' x Brassavola digbyana 'Mr Pig'	B/S	675	0	7	https://static.orchids.in.ua/img/1-foto-3230.jpg
434	Brassolaeliocattleya Golden 'Green Angel' x Brassavola digbyana 'Uncle Pig'	F/S	425	0	7	https://static.orchids.in.ua/img/brassolaeliocattleya-golden--x-brassavola-digbyana-foto-3234.jpg
444	Brassolaeliocattleya Memoria Tiang 'Pipob'	NB/S	460	0	7	https://static.orchids.in.ua/img/brassolaeliocattleya-memoria-tiang-pipob-foto-528.jpg
453	Brassolaeliocattleya Rugeley's Mill 'Mendenhall'	NB/S	743	0	7	https://static.orchids.in.ua/img/brassolaeliocattleya-rugeleys-mill-mendenhall-foto-2818.jpg
463	Brassolaeliocattleya Tropical Upgrade (Lc. Tropical Sunset 'Oceans Heaven' x Blc. Guess What 'SVO' AM/AOS)	B/S	756	0	7	https://static.orchids.in.ua/img/1-foto-5872.jpg
474	Cattleya aclandiae tipo 'Oxente' x dark 'Rainha da bateria'	S/S	810	0	7	
483	Cattleya amethystoglossa coerulea 'Avelina' x amethystoglossa coerulea 'AM'		3480	0	7	
494	Cattleya bicolor 'Nei' x 'Colibri Bronze'	NB/S	658	0	7	https://static.orchids.in.ua/img/cattleya-bicolor-nei-x-colibri-bronze-foto-4743.jpg
503	Cattleya Chief Sunny 'Sun Kiss'	NB/S	298	0	7	https://static.orchids.in.ua/img/1-foto-6414.jpg
514	Cattleya dowiana x Schomburgkia splendida	B/S	1740	0	7	https://static.orchids.in.ua/img/cattleya-dowiana-x-schomburgkia-splendida-foto-6175.jpg
524	Cattleya Fabia (dowiana x labiata)	S/S	425	0	7	https://static.orchids.in.ua/img/cattleya-fabia-dowiana-x-labiata-foto-5208.jpg
529	Cattleya gaskelliana coerulea 'Blue Dragon'	S/S	405	0	7	https://static.orchids.in.ua/img/cattleya-gaskelliana-coerulea-blue-dragon-foto-6184.jpg
539	Cattleya guttata albina 'Cetro de Rubis' SELF		864	0	7	https://static.orchids.in.ua/img/cattleya-guttata-albina-foto-5134.jpg
549	Cattleya harrisoniana clara 'Formosinha' x Cattleya harrisoniana escura 'Cheung's Delight'	F/S	1080	0	7	https://static.orchids.in.ua/img/cattleya-harrisoniana-clara-formosinha-x-cattleya-harrisoniana-escura-cheungs-delight-foto-3431.jpg
92	Holcoglossum flavescens x Vanda coerulescens	S/S	240	0	1	https://static.orchids.in.ua/img/holcoglossum-flavescens-x-vanda-coerulescens-foto-5404.jpg
473	Cattleya aclandiae H&R	B/S	1242	0	7	
96	Dendrobium polyanthum yellow	B/S	275	0	2	https://static.orchids.in.ua/img/dendrobium-polyanthum-yellow-foto-6680.jpg
106	Dendrobium sanderae var. major	F/S	627	0	2	https://static.orchids.in.ua/img/dendrobium-sanderae-var-major-foto-3072.jpg
114	Dendrobium spectabile var alba x self	S/S	270	0	2	https://static.orchids.in.ua/img/1-foto-6526.jpg
120	Dendrobium sulawesii	F/S	690	0	2	https://static.orchids.in.ua/img/dendrobium-sulawesii-foto-4539.jpg
130	Dendrobium vexillarius red	B/S	1980	0	2	https://static.orchids.in.ua/img/1-foto-6645.jpg
141	Aerangis articulata	B/S	450	0	4	https://static.orchids.in.ua/img/aerangis-articulata-foto-1530.jpg
150	Aerangis spiculata	B/S	370	0	4	https://static.orchids.in.ua/img/aerangis-spiculata-foto-86.jpg
160	Angraecum magdalenae	B/S	750	0	4	https://static.orchids.in.ua/img/angraecum-magdalenae-foto-110.jpg
170	Bulbophyllum arfakianum	B/S	1560	0	4	https://static.orchids.in.ua/img/bulbophyllum-arfakianum-foto-6694.jpg
179	Bulbophyllum longissimum	B/S	625	0	4	https://static.orchids.in.ua/img/1-foto-6527.jpg
189	Cleisocentron gokusingii	S/S	540	0	4	https://static.orchids.in.ua/img/cleisocentron-gokusingii-foto-4920.jpg
199	Coelogyne viscosa	B/S	345	0	4	https://static.orchids.in.ua/img/1-foto-6683.jpg
210	Embreea rodigasiana	B/S	1300	0	4	https://static.orchids.in.ua/img/embreea-rodigasiana-foto-4789.jpg
220	Epidendrum Gonzalez Tamayoi	F/S	530	0	4	https://static.orchids.in.ua/img/epidendrum-gonzalez-tamayoi-foto-2625.jpg
230	Gomesa sarcodes	F/S	675	0	4	https://static.orchids.in.ua/img/gomesa-sarcodes-foto-5062.jpg
241	Lycaste Arashiyama (macrobulbon x Shoalhaven 'Kobe')	B/S	1380	0	4	https://static.orchids.in.ua/img/lycaste-arashiyama-macrobulbon-x-shoalhaven-kobe-foto-3653.jpg
252	Lycaste skinneri '375' x Sunray	B/S	435	0	4	https://static.orchids.in.ua/img/lycaste-skinneri-375-x-sunray-foto-6539.jpg
262	Maxillaria chrysantha	F/S	440	0	4	https://static.orchids.in.ua/img/maxillaria-chrysantha-foto-1355.jpg
273	Maxillaria platypetala	B/S	1980	0	4	https://static.orchids.in.ua/img/maxillaria-platypetala-foto-422.jpg
283	Meiracyllium trinasutum	F/S	457	0	4	https://static.orchids.in.ua/img/1-foto-267.jpg
293	Neofinetia falcata Suikaden	F/S	1420	0	4	https://static.orchids.in.ua/img/neofinetia-falcata-suikaden-foto-288.jpg
301	Pholidota chinensis	F/S	420	0	4	https://static.orchids.in.ua/img/pholidota-chinensis-foto-3892.jpg
311	Pleurothallis teres	F/S	567	0	4	https://static.orchids.in.ua/img/pleurothallis-teres-foto-1053.jpg
321	Stanhopea Lydia Bush	B/S	1540	0	4	https://static.orchids.in.ua/img/stanhopea-lydia-bush-foto-5725.jpg
331	Catanoches Jumbo Bard	B/S	978	0	6	https://static.orchids.in.ua/img/catanoches-jumbo-bard-foto-4513.jpg
341	Catasetum pileatum 'Oro Verde'	B/S	798	0	6	https://static.orchids.in.ua/img/catasetum-pileatum-oro-verde-foto-556.jpg
351	Catasetum tenebrosum 'Ed#2' x Catasetum Double Down 'BPYL'	B/S	1280	0	6	https://static.orchids.in.ua/img/catasetum-tenebrosum-ed2-x-catasetum-double-down-bpyl-foto-5949.jpg
362	Clowesia Rebecca Northen 'Grapefruit Pink' x Catasetum kleberianum 'SVO'	B/S	1580	0	6	https://static.orchids.in.ua/img/1-foto-5555.jpg
372	Fredclarkeara Dark There After 'SVO Crazy Good' x Catasetum Jose Abalo 'SVO'	B/S	1200	0	6	https://static.orchids.in.ua/img/fredclarkeara-dark-there-after-svo-crazy-good-x-catasetum-jose-abalo-svo-foto-5582.jpg
382	Fredclarkeara Twin Peaks (Fredclarkeara Dark There After 'SVO Crazy Good' x Catasetum Orchidglade 'Davie Ranches')	B/S	1160	0	6	https://static.orchids.in.ua/img/fredclarkeara-twin-peaks-foto-5579.jpg
392	Brassavola flagellaris	S/S	250	0	7	https://static.orchids.in.ua/img/brassavola-flagellaris-foto-341.jpg
401	Brassocattleya Air Mososa 'Mickey Mouse' (Cattleya moscombe x Brassavola nodosa)	B/S	460	0	7	https://static.orchids.in.ua/img/cattleya-moscombe-x-brassavola-nodosa-foto-5413.jpg
411	Brassocattleya Marasri	B/S	548	0	7	https://static.orchids.in.ua/img/brassocattleya-marasri-foto-2916.jpg
426	Brassolaeliocattleya Durigan 'Aries'	B/S	1620	0	7	https://static.orchids.in.ua/img/brassolaeliocattleya-durigan-aries-foto-6848.jpg
436	Brassolaeliocattleya Goldenzelle 'Taida' - T3	B/S	1350	0	7	https://static.orchids.in.ua/img/1-foto-5642.jpg
447	Brassolaeliocattleya Mystic Isles 'Island Mystic' x Brassocattleya Golf Green 'Hair Pig'	NB/S	925	0	7	https://static.orchids.in.ua/img/brassolaeliocattleya-mystic-isles-island-mystic-x-brassocattleya-golf-green-hair-pig-foto-3327.jpg
457	Brassolaeliocattleya Shiniti Ishikawa 'Nobile's Golden Beauty'	B/S	1160	0	7	https://static.orchids.in.ua/img/brassolaeliocattleya-shiniti-ishikawa-nobiles-golden-beauty-foto-5648.jpg
467	Cattleya aclandiae ('Raio de Sol' x black 'Black')	S/S	810	0	7	https://static.orchids.in.ua/img/cattleya-aclandiae-raio-de-sol-x-black-black-foto-6323.jpg
479	Cattleya amethystoglossa 'H&R' AM/HOS 4N	S/S	675	0	7	https://static.orchids.in.ua/img/1-foto-6163.jpg
489	Cattleya araguaiensis	S/S	490	0	7	https://static.orchids.in.ua/img/cattleya-araguaiensis-x-self-foto-825.jpg
499	Cattleya bowringiana coerulea x Encyclia cochleata	B/S	368	0	7	https://static.orchids.in.ua/img/cattleya-bowringiana-x-encyclia-cochleata-foto-6692.jpg
509	Cattleya dowiana 'Luma#1'	S/S	625	0	7	https://static.orchids.in.ua/img/cattleya-dowiana-luma1-foto-6667.jpg
520	Cattleya eldorado alba	F/S	1890	0	7	https://static.orchids.in.ua/img/cattleya-eldorado-alba-foto-5288.jpg
534	Cattleya gaskelliana concolor 'Yamile' SELF		1015	0	7	https://static.orchids.in.ua/img/cattleya-gaskelliana-concolor-yamile-self-foto-5135.jpg
544	Cattleya guttata creme (sem pintas) 'Edelweiss' x SELF		1680	0	7	https://static.orchids.in.ua/img/cattleya-guttata-creme-sem-pintas-edelweiss-x-self-foto-6131.jpg
554	Cattleya intermedia alba x self	B/S	458	0	7	https://static.orchids.in.ua/img/cattleya-intermedia-alba-foto-6514.jpg
565	Cattleya iricolor	F/S	1750	0	7	https://static.orchids.in.ua/img/cattleya-iricolor-foto-3613.jpg
98	Holcoglossum rupestre x Vanda lamellata var boxallii	S/S	240	0	1	https://static.orchids.in.ua/img/1-foto-5613.jpg
121	Dendrobium sulcatum	B/S	405	0	2	https://static.orchids.in.ua/img/dendrobium-sulcatum-foto-1046.jpg
133	Dendrobium williamsianum	B/S	650	0	2	https://static.orchids.in.ua/img/dendrobium-williamsianum-foto-6628.jpg
143	Aerangis jacksonii	B/S	816	0	4	https://static.orchids.in.ua/img/1-foto-6010.jpg
153	Angraecum bosseri	B/S	765	0	4	https://static.orchids.in.ua/img/angraecum-bosseri-foto-4203.jpg
163	Angulocaste Pink Charm	B/S	4050	0	4	https://static.orchids.in.ua/img/angulocaste-pink-charm-foto-6719.jpg
174	Bulbophyllum dayanum	F/S	980	0	4	https://static.orchids.in.ua/img/bulbophyllum-dayanum-foto-2855.jpg
184	Calanthe rosea	B/S	420	0	4	https://static.orchids.in.ua/img/calanthe-rosea-foto-5974.jpg
195	Coelogyne mutiflora	F/S	680	0	4	https://static.orchids.in.ua/img/coelogyne-mutiflora-foto-6688.jpg
205	Cyrtopodium andersonii	S/S	270	0	4	https://static.orchids.in.ua/img/cyrtopodium-andersonii-foto-4899.jpg
216	Epidendrum capricornu	NB/S	435	0	4	https://static.orchids.in.ua/img/epidendrum-capricornu-foto-5781.jpg
226	Epidendrum schweinfurthianum	F/S	1397	0	4	https://static.orchids.in.ua/img/epidendrum-schweinfurthianum-foto-4795.jpg
236	Lockhartia oerstedii	B/S	324	0	4	https://static.orchids.in.ua/img/lockarthia-oerstedii-foto-1350.jpg
246	Lycaste Kibune (Kitayama 'Yellow Bird' x Mem Kageyuki Mito 'Kaiho')	B/S	1380	0	4	https://static.orchids.in.ua/img/lycaste-kibune-foto-3654.jpg
256	Macroclinium manabinum	B/S	495	0	4	https://static.orchids.in.ua/img/macroclinium-manabinum-foto-1842.jpg
266	Maxillaria fractiflexa	F/S	840	0	4	https://static.orchids.in.ua/img/maxillaria-fractiflexa-foto-2309.jpg
276	Maxillaria Sangai (Maxillaria pulla x Maxillaria striata)	B/S	576	0	4	https://static.orchids.in.ua/img/maxillaria-sangai-foto-2308.jpg
286	Neofinetia falcata Fukujumaru	B/S	1420	0	4	
296	Ornithocephalus inflexus	F/S	432	0	4	https://static.orchids.in.ua/img/ornithocephalus-inflexus-foto-575.jpg
306	Pleurothallis phalangifera	F/S	798	0	4	https://static.orchids.in.ua/img/pleurothallis-phalangifera-foto-4814.jpg
316	Rhynchostele rossii	F/S	540	0	4	https://static.orchids.in.ua/img/rhynchostele-rossii-foto-590.jpg
326	Taeniophyllum obtusum	F/S	675	0	4	https://static.orchids.in.ua/img/1-foto-5794.jpg
336	Catasetum (John Burchett x Suzan Fuchs) x Orchidglade	B/S	1245	0	6	
346	Catasetum Portagee Star 'Brian Lawson's Sunrise' x Catasetum lucis 'Dana's Bird of Paradise'	B/S	1180	0	6	https://static.orchids.in.ua/img/catasetum-portagee-star-brian-lawsons-sunrise-x-catasetum-lucis-danas-bird-of-paradise-foto-5952.jpg
356	Clowesia Grace Dunn 'Live Oak' x Catasetum Dentigrianum 'SVO Excellent'	B/S	1420	0	6	https://static.orchids.in.ua/img/clowesia-grace-dunn-live-oak-x-catasetum-dentigrianum-svo-excellent-foto-5936.jpg
366	Clowesia warscewiczii	NB/S	1120	0	6	https://static.orchids.in.ua/img/clowesia-warscewiczii-foto-3109.jpg
376	Fredclarkeara Kelly Longley (Mo. Painted Desert 'SVO' x Ctsm. Jose Abalo 'SVO')	B/S	1350	0	6	https://static.orchids.in.ua/img/fredclarkeara-kelly-longley-foto-5574.jpg
386	Brassavola cucullata	F/S	380	0	7	https://static.orchids.in.ua/img/brassavola-cucullata-foto-337.jpg
396	Brassavola glauca x SELF	S/S	270	0	7	https://static.orchids.in.ua/img/brassavola-glauca-foto-342.jpg
406	Brassocattleya Golf Green 'Hair Pig' (Cattleya Moscombe x Brassavola digbyana)	B/S	415	0	7	https://static.orchids.in.ua/img/brassocattleya-golf-green-hair-pig-foto-353.jpg
416	Brassolaeliocattleya Apricot Flare x Cattleya Shellie Compton	B/S	360	0	7	https://static.orchids.in.ua/img/1-foto-6402.jpg
420	Brassolaeliocattleya Chia Lin 'New City' (Oconee x Maitland)	NB/S	398	0	7	https://static.orchids.in.ua/img/brassolaeliocattleya-chia-lin-new-city-foto-1673.jpg
430	Brassolaeliocattleya Eve Marie Barnett 'Magnificent Watermelon Gold' x Brassolaeliocattleya Sanyung Ruby 'Shin Mei'	B/S	925	0	7	https://static.orchids.in.ua/img/brassolaeliocattleya-eve-marie-barnett-magnificent-watermelon-gold-x-brassolaeliocattleya-sanyung-ruby-shin-mei-foto-3229.jpg
440	Brassolaeliocattleya Keowee 'VI Galaxy'	NB/S	752	0	7	https://static.orchids.in.ua/img/brassolaeliocattleya-keowee-vi-galaxy-foto-5331.jpg
450	Brassolaeliocattleya Owen Holmes 'Newberry'	NB/S	754	0	7	https://static.orchids.in.ua/img/brassolaeliocattleya-owen-holmes-newberry-foto-2426.jpg
460	Brassolaeliocattleya Suzuki's Yellow Flare	B/S	840	0	7	https://static.orchids.in.ua/img/brassolaeliocattleya-suzukis-yellow-flare-foto-5651.jpg
470	Cattleya aclandiae escura 'Minha nega' x 'XXX'	B/S	1120	0	7	https://static.orchids.in.ua/img/3-foto-6931.jpg
481	Cattleya amethystoglossa 4N ('HR Super Spots' x 'Big Spots')		675	0	7	https://static.orchids.in.ua/img/1-foto-6150.jpg
491	Cattleya aurantiaca x Brassavola glauca	B/S	430	0	7	https://static.orchids.in.ua/img/cattleya-aurantiaca-x-brassavola-glauca-foto-864.jpg
501	Cattleya Cantagalo (Pedra da Gavea x Kerchoveana)	B/S	680	0	7	https://static.orchids.in.ua/img/cattleya-cantagalo-pedra-da-gavea-x-kerchoveana-foto-2261.jpg
510	Cattleya dowiana 'Rosita'	S/S	1080	0	7	https://static.orchids.in.ua/img/2-foto-6233.jpg
519	Cattleya eldorado 'Rainha Azul' x eldorado concolor	NB/S	796	0	7	https://static.orchids.in.ua/img/cattleya-eldorado-rainha-azul-x-eldorado-concolor-foto-6121.jpg
531	Cattleya gaskelliana coerulea (12-1) x coerulea (11-1)	B/S	873	0	7	https://static.orchids.in.ua/img/cattleya-gaskelliana-coerulea-12-1-x-coerulea-11-1-foto-2516.jpg
542	Cattleya guttata coerulea 'AWZ' SELF	F/S	2980	0	7	https://static.orchids.in.ua/img/cattleya-guttata-coerulea-foto-5132.jpg
552	Cattleya intermedia	F/S	405	0	7	https://static.orchids.in.ua/img/cattleya-intermedia-foto-3422.jpg
562	Cattleya intermedia var irrorata	B/S	450	0	7	https://static.orchids.in.ua/img/1-foto-5619.jpg
572	Cattleya jenmanii semi-alba ('Canaima's Lipstick' x 'Kathleen')	B/S	2400	0	7	https://static.orchids.in.ua/img/1-foto-6944.jpg
104	Aerides odorata	F/S	754	0	1	https://static.orchids.in.ua/img/aerides-odorata-foto-3047.jpg
125	Dendrobium tetragonum	B/S	580	0	2	https://static.orchids.in.ua/img/dendrobium-tetragonum-foto-6528.jpg
132	Dendrobium wassellii	B/S	522	0	2	https://static.orchids.in.ua/img/dendrobium-wassellii-foto-4081.jpg
142	Aerangis ellisii	B/S	300	0	4	https://static.orchids.in.ua/img/aerangis-ellisii-foto-3573.jpg
152	Alamania punicea	F/S	1450	0	4	https://static.orchids.in.ua/img/1-foto-6052.jpg
162	Angulocaste Aurora	B/S	2600	0	4	https://static.orchids.in.ua/img/angulocaste-aurora-foto-6720.jpg
172	Bulbophyllum costatum	B/S	675	0	4	https://static.orchids.in.ua/img/bulbophyllum-costatum-foto-4831.jpg
182	Bulbophyllum purpureorhachis	F/S	540	0	4	https://static.orchids.in.ua/img/bulbophyllum-purpureorhachis-foto-3317.jpg
192	Coelogyne lindleyana	F/S	578	0	4	https://static.orchids.in.ua/img/coelogyne-lindleyana-foto-2234.jpg
202	Cuitlauzina pendulum	B/S	820	0	4	https://static.orchids.in.ua/img/cuitlauzina-pendulum-foto-1343.jpg
212	Encyclia incumbens	S/S	398	0	4	https://static.orchids.in.ua/img/1-foto-5792.jpg
222	Epidendrum pseudepidendrum	NB/S	300	0	4	https://static.orchids.in.ua/img/epidendrum-pseudepidendrum-foto-4713.jpg
232	Ida grandis	F/S	1620	0	4	https://static.orchids.in.ua/img/ida-grandis-foto-711.jpg
242	Lycaste Arisugawa (Kitayama x Shoalhaven 'Kyoto')	B/S	1380	0	4	https://static.orchids.in.ua/img/lycaste-arisugawa-kitayama-x-shoalhaven-kyoto-foto-3643.jpg
251	Lycaste Shoalhaven ('WinterFairy' x 'Kobe')	S/S	1792	0	4	https://static.orchids.in.ua/img/lycaste-shoalhaven-winterfairy-x-kobe-foto-6196.jpg
260	Maxillaria calantha	B/S	972	0	4	https://static.orchids.in.ua/img/maxillaria-calantha-foto-412.jpg
270	Maxillaria longissima	F/S	1215	0	4	https://static.orchids.in.ua/img/maxillaria-longissima-foto-2636.jpg
281	Maxillaria variabilis	F/S	312	0	4	https://static.orchids.in.ua/img/maxillaria-variabilis-foto-4768.jpg
290	Neofinetia falcata Kinku Jaku	F/S	1494	0	4	
300	Paraphalaenopsis laycockii	NB/S	540	0	4	https://static.orchids.in.ua/img/paraphalaenopsis-laycockii-foto-5223.jpg
309	Pleurothallis sonderana	F/S	320	0	4	https://static.orchids.in.ua/img/pleurothallis-sonderana-foto-755.jpg
319	Stanhopea embreei orange	F/S	1134	0	4	https://static.orchids.in.ua/img/stanhopea-embreei-foto-3663.jpg
329	Zygonisia Murasakikomachi	B/S	398	0	5	https://static.orchids.in.ua/img/zygonisia-murasakikomachi-foto-6538.jpg
339	Catasetum Orchidglade Jack of Diamond	B/S	917	0	6	https://static.orchids.in.ua/img/catasetum-orchidglade-jack-of-diamond-foto-4514.jpg
349	Catasetum rodigasianum x atratum	B/S	865	0	6	
359	Clowesia Jumbo Lace 'SVO' x Catasetum denticulatum 'Orange Lip'	B/S	1350	0	6	https://static.orchids.in.ua/img/clowesia-jumbo-lace-svo-x-catasetum-denticulatum-orange-lip-foto-5935.jpg
369	Fredclarkeara After Hours 'SVO Heaven Scent' x Catasetum Orchidglade 'JTM'	B/S	1218	0	6	https://static.orchids.in.ua/img/1-foto-5564.jpg
379	Fredclarkeara (Mo. Painted Desert 'SVO' HCC/AOS x Ctsm. spitzii 'SVO Gold' FCC/AOS)	B/S	1350	0	6	https://static.orchids.in.ua/img/1-foto-5888.jpg
389	Brassavola digbyana x Cattleya Little Oliver	B/S	963	0	7	https://static.orchids.in.ua/img/1-foto-2179.jpg
399	Brassavola nodosa x Sophronitis coccinea flava	F/S	1437	0	7	https://static.orchids.in.ua/img/brassavola-nodosa-x-sophronitis-coccinea-flava-foto-4037.jpg
409	Brassocattleya Jairak Kiku	B/S	345	0	7	https://static.orchids.in.ua/img/1-foto-5969.jpg
421	Brassolaeliocattleya Chunyeah x Brassavola digbyana	B/S	780	0	7	https://static.orchids.in.ua/img/brassolaeliocattleya-chunyeah-x-brassavola-digbyana-foto-5637.jpg
432	Brassolaeliocattleya George King 'Serendipity'	B/S	980	0	7	https://static.orchids.in.ua/img/brassolaeliocattleya-george-king-serendipity-foto-760.jpg
442	Brassolaeliocattleya Liu's Joyance 'Panther'	B/S	300	0	7	https://static.orchids.in.ua/img/1-foto-6513.jpg
452	Brassolaeliocattleya Pink Empress 'Ju-Sen' (Bc. Mount Hood x Blc. Bryce Canyon)	B/S	345	0	7	https://static.orchids.in.ua/img/brassolaeliocattleya-pink-empress-ju-sen-foto-680.jpg
462	Brassolaeliocattleya Taiwan Golden Girl 'New Red Point'	B/S	945	0	7	https://static.orchids.in.ua/img/brassolaeliocattleya-taiwan-golden-girl-new-red-point-foto-5649.jpg
472	Cattleya aclandiae escura 'Oxiente' x self	NB/S	870	0	7	
482	Cattleya amethystoglossa albescens x coerulea	B/S	1480	0	7	https://static.orchids.in.ua/img/2-foto-6854.jpg
492	Cattleya Batemannia x Brassavola nodosa	NB/S	540	0	7	https://static.orchids.in.ua/img/1-foto-5836.jpg
502	Cattleya Chian-Tzy Loddisong 'Summer Beauty'	F/S	420	0	7	https://static.orchids.in.ua/img/cattleya-chian-tzy-loddisong-summer-beauty-foto-4487.jpg
512	Cattleya dowiana (Hui Yun)	NB/S	817	0	7	https://static.orchids.in.ua/img/cattleya-dowiana-hui-yun-foto-5340.jpg
522	Cattleya Elegans	F/S	720	0	7	https://static.orchids.in.ua/img/cattleya-elegans-foto-6843.jpg
532	Cattleya gaskelliana coerulea x sibling (H&R)	B/S	1620	0	7	https://static.orchids.in.ua/img/2-foto-6315.jpg
541	Cattleya guttata amarela sem pintas 'Onca Parda' x SELF		1280	0	7	https://static.orchids.in.ua/img/cattleya-guttata-amarela-sem-pintas-onca-parda-x-self-foto-6112.jpg
551	Cattleya Hawaiian Wedding Song 'Virgin'	B/S	475	0	7	https://static.orchids.in.ua/img/cattleya-hawaiian-wedding-song-virgin-foto-6542.jpg
561	Cattleya intermedia sanguinea 'do Padre Vitus' x Cattleya intermedia flamea 'BF-96'	B/S	1340	0	7	https://static.orchids.in.ua/img/1-foto-1916.jpg
571	Cattleya jenmanii rubra ('HR Red Lip' x 'HR Grand Ruby')	B/S	1080	0	7	https://static.orchids.in.ua/img/cattleya-jenmanii-rubra-hr-red-lip-x-hr-grand-ruby-foto-6158.jpg
582	Cattleya labiata 'Yellow Eyes' x self	NB/S	766	0	7	https://static.orchids.in.ua/img/cattleya-labiata-yellow-eyes-x-self-foto-3433.jpg
593	Cattleya labiata (coerulea 'Azul' x coerulescens 'Da Norma Dreher')	NB/S	1080	0	7	https://static.orchids.in.ua/img/cattleya-labiata-coerulea-azul-x-coerulescens-da-norma-dreher-foto-6338.jpg
441	Brassolaeliocattleya Kuwale Gem 'Shin Shin' (Bc. Segundina Vizcarra x Lc. Shellia Compton)	B/S	435	0	7	https://static.orchids.in.ua/img/brassolaeliocattleya-kuwale-gem-shin-shin-foto-677.jpg
451	Brassolaeliocattleya Pastoral Innocence	B/S	345	0	7	https://static.orchids.in.ua/img/1-foto-6000.jpg
461	Brassolaeliocattleya Suzuki´s Golden Stipes	B/S	840	0	7	https://static.orchids.in.ua/img/brassolaeliocattleya-suzuki%C2%B4s-golden-stipes-foto-5653.jpg
471	Cattleya aclandiae escura 'Ochente' x self	NB/S	720	0	7	
480	Cattleya amethystoglossa 'Multiflora'	NB/S	540	0	7	https://static.orchids.in.ua/img/cattleya-amethystoglossa-multiflora-foto-3157.jpg
490	Cattleya araguaiensis Hui Yun		810	0	7	
500	Cattleya bowringiana suave 'Tower Grove' x labiata alba 'HI'	B/S	598	0	7	https://static.orchids.in.ua/img/cattleya-bowringiana-suave-tower-grove-x-labiata-alba-hi-foto-6328.jpg
511	Cattleya dowiana aurea x Brassavola nodosa	F/S	3645	0	7	https://static.orchids.in.ua/img/cattleya-dowiana-aurea-x-brassavola-nodosa-foto-5036.jpg
521	Cattleya eldorado concolor	B/S	1780	0	7	https://static.orchids.in.ua/img/cattleya-eldorado-concolor-foto-6920.jpg
530	Cattleya gaskelliana coerulea 'Vista Linda' (Z-360) x Cattleya gaskelliana coerulea 'Boas Vista' (Z-360)	B/S	1420	0	7	https://static.orchids.in.ua/img/cattleya-gaskelliana-coerulea-vista-linda-z-360-x-boas-vista-z-360-foto-2515.jpg
540	Cattleya guttata albina 'Interlagos' x guttata albina 'Vitor Couto'		756	0	7	https://static.orchids.in.ua/img/cattleya-guttata-albina-interlagos-x-guttata-albina-vitor-couto-foto-6134.jpg
550	Cattleya harrisoniana coerulescens-perola x SELF		879	0	7	
560	Cattleya intermedia orlatao 'Pedra Azul' x Cattleya intermedia flamea	B/S	763	0	7	https://static.orchids.in.ua/img/cattleya-intermedia-orlatao-pedra-azul-x-cattleya-intermedia-flamea-foto-2807.jpg
570	Cattleya jenmanii coerulea	B/S	780	0	7	https://static.orchids.in.ua/img/cattleya-jenmanii-coerulea-foto-6396.jpg
580	Cattleya labiata 'Sangue Azul' x bowringiana coerulea	B/S	1120	0	7	https://static.orchids.in.ua/img/cattleya-labiata-sangue-azul-x-bowringiana-coerulea-foto-6912.jpg
590	Cattleya labiata amesiana lineata 'AWZ' (Z-8) x Cattleya labiata amesiana lineata 'Pedra Azul'	B/S	810	0	7	https://static.orchids.in.ua/img/cattleya-labiata-amesiana-lineata-awz-z-8-x-cattleya-labiata-amesiana-lineata-pedra-azul-foto-6559.jpg
599	Cattleya labiata punctata x Cattleya labiata punctata (quase concolor) 'AWZ'	B/S	1218	0	7	https://static.orchids.in.ua/img/1-foto-2522.jpg
609	Cattleya labiata semi-alba ('Marina x perola 'Vila Velha')	B/S	1350	0	7	https://static.orchids.in.ua/img/cattleya-labiata-semi-alba-marina-x-perola-vila-velha-foto-6344.jpg
619	Cattleya leopoldii coerulea trilabelo 'Mariah' x 'Divina'	S/S	1160	0	7	https://static.orchids.in.ua/img/2-foto-6930.jpg
628	Cattleya loddigesii punctata coerulea x SELF		978	0	7	https://static.orchids.in.ua/img/cattleya-loddigesii-punctata-coerulea-x-self-foto-6085.jpg
638	Cattleya lueddemanniana coerulea 'Pedra Azul' XXX x Cattleya lueddemanniana coerulea 'Caribe'		1026	0	7	https://static.orchids.in.ua/img/1-foto-2526.jpg
648	Cattleya lueddemanniana (flamea aquinada 'Carabobo' x atropurpurea 'Guacamuco')	B/S	695	0	7	https://static.orchids.in.ua/img/cattleya-lueddemanniana-flamea-aquinada-carabobo-x-atropurpurea-guacamuco-foto-6322.jpg
658	Cattleya luteola (GC 4N x H&R 4N)	S/S	430	0	7	https://static.orchids.in.ua/img/1-foto-6160.jpg
668	Cattleya maxima alba	NB/S	594	0	7	https://static.orchids.in.ua/img/1-foto-6001.jpg
678	Cattleya maxima concolor white lip 'America' x SELF	NB/S	864	0	7	https://static.orchids.in.ua/img/1-foto-5107.jpg
688	Cattleya maxima var suave	B/S	1320	0	7	https://static.orchids.in.ua/img/cattleya-maxima-var-suave-foto-6890.jpg
699	Cattleya mossiae semi-alba x sib ('HR3424' x 'Southern')	B/S	1820	0	7	https://static.orchids.in.ua/img/1-foto-6438.jpg
710	Cattleya nobilior (escura 'Rio Verde' x 'Lori')	B/S	1288	0	7	https://static.orchids.in.ua/img/1-foto-6901.jpg
719	Cattleya percivaliana ('Albert's' x 20-6)	B/S	1480	0	7	https://static.orchids.in.ua/img/cattleya-percivaliana-alberts-x-20-6-foto-6347.jpg
729	Cattleya percivaliana tipo 'Black Lip' x semi-alba 'Farah Diba'	S/S	580	0	7	https://static.orchids.in.ua/img/cattleya-percivaliana-tipo-black-lip-x-semi-alba-farah-diba-foto-6289.jpg
740	Cattleya Sapphirata coerulea 'Azure Sky'	B/S	1200	0	7	https://static.orchids.in.ua/img/cattleya-sapphirata-coerulea-foto-5809.jpg
753	Cattleya schilleriana 'Surpresa' x 'Preciosa'	B/S	1680	0	7	https://static.orchids.in.ua/img/cattleya-schilleriana-surpresa-x-preciosa-foto-5778.jpg
763	Cattleya schilleriana (DSC08 x Ouro Negro)	B/S	2680	0	7	
773	Cattleya schilleriana x Schomburgkia splendida	B/S	945	0	7	https://static.orchids.in.ua/img/cattleya-schilleriana-x-schomburgkia-splendida-foto-5016.jpg
782	Cattleya schofieldiana escura 'Gloriosa' (ES) x schofieldiana 'GU' (ES)		730	0	7	https://static.orchids.in.ua/img/cattleya-schofieldiana-escura-gloriosa-es-x-schofieldiana-gu-es-foto-6126.jpg
792	Cattleya Sonia Altenburg		596	0	7	https://static.orchids.in.ua/img/cattleya-sonia-altenburg-foto-6614.jpg
806	Cattleya trianae alba 'AWZ' x Cattleya trianae alba 'Suzi' (31-8)	NB/S	1170	0	7	https://static.orchids.in.ua/img/cattleya-trianae-alba-awz-x-cattleya-trianae-alba-suzi-31-8-foto-3442.jpg
815	Cattleya trianae coerulea (H&R)	F/S	1680	0	7	https://static.orchids.in.ua/img/1-foto-6312.jpg
826	Cattleya Valentine x Cattleya loddigesii coerulea	F/S	1922	0	7	https://static.orchids.in.ua/img/cattleya-valentine-x-cattleya-loddigesii-coerulea-foto-2223.jpg
836	Cattleya violacea flamea 'Por Do Sol' x self	NB/S	997	0	7	https://static.orchids.in.ua/img/1-foto-6291.jpg
846	Cattleya violacea x Cattleya gigas var. sanderiana	F/S	698	0	7	
856	Cattleya walkeriana tipo 'Rio Claro' x walkeriana rubra flamea 'Portinari'		848	0	7	https://static.orchids.in.ua/img/cattleya-walkeriana-tipo-rio-claro-x-walkeriana-rubra-flamea-portinari-foto-6141.jpg
862	Cattleya warneri alba ('Jaco Silva' x 'Da Mercedes')	NB/S	594	0	7	https://static.orchids.in.ua/img/cattleya-warneri-alba-jaco-silva-x-da-mercedes-foto-6335.jpg
454	Brassolaeliocattleya Sanyang Ruby 'Tzeng-Wen Rainbow' x Brassolaeliocattleya Golf Pink	B/S	788	0	7	https://static.orchids.in.ua/img/brassolaeliocattleya-sanyang-ruby-tzeng-wen-rainbow-x-brassolaeliocattleya-golf-pink-foto-3413.jpg
484	Cattleya amethystoglossa coerulea ('Fabio' x 'Paulo UHL')	S/S	936	0	7	
493	Cattleya Becky Culver (Loddiglossa coerulea 'SVO' x bicolor coerulea 'SVO')	B/S	1040	0	7	https://static.orchids.in.ua/img/1-foto-5861.jpg
504	Cattleya Chief Waikiki Green	B/S	498	0	7	https://static.orchids.in.ua/img/1-foto-5839.jpg
513	Cattleya dowiana var. aurea	B/S	4080	0	7	https://static.orchids.in.ua/img/1-foto-3421.jpg
523	Cattleya Empress	NB/S	230	0	7	https://static.orchids.in.ua/img/1-foto-6403.jpg
533	Cattleya gaskelliana coerulescens 'Mimi' SELF		1015	0	7	https://static.orchids.in.ua/img/cattleya-gaskelliana-caerulescens-foto-5136.jpg
543	Cattleya guttata coerulea sem pintas 'Monte Verde'	B/S	2980	0	7	https://static.orchids.in.ua/img/cattleya-guttata-coerulea-sem-pintas-monte-verde-foto-5133.jpg
553	Cattleya intermedia 'Redonda' x intermedia pelorica 'Maravilha'		798	0	7	https://static.orchids.in.ua/img/1-foto-6070.jpg
563	Cattleya intermedia vinho punctatissima x SELF		798	0	7	https://static.orchids.in.ua/img/cattleya-intermedia-vinho-punctatissima-x-self-foto-6081.jpg
573	Cattleya jenmanii var coerulea x sib	B/S	525	0	7	https://static.orchids.in.ua/img/cattleya-jenmanii-var-coerulea-x-sib-foto-6535.jpg
583	Cattleya labiata alba	NB/S	675	0	7	https://static.orchids.in.ua/img/1-foto-6501.jpg
592	Cattleya labiata coerulea	S/S	398	0	7	https://static.orchids.in.ua/img/1-foto-6461.jpg
603	Cattleya labiata rubra-integra-orlata 'Z-41' x Cattleya labiata rubra-integra-orlata pincelada 'ZAS-1'	NB/S	750	0	7	https://static.orchids.in.ua/img/cattleya-labiata-rubra-integra-orlata-z-41-x-cattleya-labiata-rubra-integra-orlata-pincelada-zas-1-foto-3192.jpg
613	Cattleya lawrenceana coerulea 'Aulisi'	S/S	560	0	7	https://static.orchids.in.ua/img/1-foto-6563.jpg
623	Cattleya loddigesii alba 'Rina Graciano Brizola' x Cattleya loddigesii alba 'HI'	B/S	799	0	7	https://static.orchids.in.ua/img/cattleya-loddigesii-alba-rina-graciano-brizola-x-cattleya-loddigesii-alba-hi-foto-2671.jpg
633	Cattleya lueddemanniana 'Negrita' x Cattleya lueddemanniana 'Dark'	B/S	1280	0	7	https://static.orchids.in.ua/img/1-foto-1186.jpg
644	Cattleya lueddemanniana escura 'Roja' x Cattleya lueddemanniana escura 'Orinoco'	B/S	594	0	7	https://static.orchids.in.ua/img/cattleya-lueddemanniana-escura-roja-x-cattleya-lueddemanniana-escura-orinoco-foto-2529.jpg
654	Cattleya lueddemanniana tipo 'Pinky' x Cattleya lueddemanniana rubra 'Gesia'	B/S	1680	0	7	
664	Cattleya maxima 'Natural World'		7200	0	7	https://static.orchids.in.ua/img/cattleya-maxima-natural-world-foto-6617.jpg
674	Cattleya maxima coerulea 'Hector'	F/S	1680	0	7	https://static.orchids.in.ua/img/1-foto-5325.jpg
684	Cattleya maxima semi-alba 'La Pedrena'	NB/S	525	0	7	https://static.orchids.in.ua/img/cattleya-maxima-semi-alba-la-pedrena-foto-2781.jpg
694	Cattleya Moscombe x (Brassolaeliocattleya Ports of Paradise 'Emerald Isle' x Brassavola digbyana 'Mr Pig')	B/S	435	0	7	https://static.orchids.in.ua/img/cattleya-moscombe-x-brassolaeliocattleya-ports-of-paradise-emerald-isle-x-brassavola-digbyana-mr-pig-foto-5551.jpg
705	Cattleya nobilior alba	NB/S	675	0	7	https://static.orchids.in.ua/img/cattleya-nobilior-alba-foto-6267.jpg
715	Cattleya Orchidglade x Laelia milleri	B/S	378	0	7	https://static.orchids.in.ua/img/cattleya-orchidglade-x-laelia-milleri-foto-6177.jpg
725	Cattleya percivaliana (Albert´s' x 'Aniel') x SIBLING	B/S	1680	0	7	https://static.orchids.in.ua/img/cattleya-percivaliana-albert%C2%B4s-x-aniel-x-sibling-foto-6348.jpg
735	Cattleya quadricolor ('Sombrero' x flamea 'AWZ')	S/S	870	0	7	https://static.orchids.in.ua/img/cattleya-quadricolor-sombrero-x-flamea-awz-foto-6351.jpg
745	Cattleya schilleriana 'Daniel Endringer' x schilleriana 'Sublime'	B/S	1256	0	7	https://static.orchids.in.ua/img/cattleya-schilleriana-daniel-endringer-x-schilleriana-sublime-foto-6366.jpg
750	Cattleya schilleriana 'Sem ID'	B/S	1213	0	7	https://static.orchids.in.ua/img/cattleya-schilleriana-sem-id-foto-908.jpg
760	Cattleya schilleriana coerulea 'Nagara'	NB/S	1560	0	7	https://static.orchids.in.ua/img/%D1%81attleya-schilleriana-coerulea-nagara-foto-6509.jpg
766	Cattleya schilleriana semi-alba	S/S	4980	0	7	https://static.orchids.in.ua/img/cattleya-schilleriana-semi-alba-foto-6367.jpg
777	Cattleya schofieldiana 'GU' x Cattleya schofieldiana 'Ano Novo'		850	0	7	https://static.orchids.in.ua/img/cattleya-schofieldiana-gu-x-cattleya-schofieldiana-ano-novo-foto-3441.jpg
787	Cattleya Sea Breeze	F/S	1120	0	7	https://static.orchids.in.ua/img/cattleya-sea-breeze-foto-1668.jpg
797	Cattleya trianae 'Elegance' x trianae OV727	B/S	1180	0	7	https://static.orchids.in.ua/img/cattleya-trianae-elegance-x-trianae-ov727-foto-6187.jpg
807	Cattleya trianae alba 'Castro' x Cattleya trianae integra orlata vinho	B/S	905	0	7	https://static.orchids.in.ua/img/cattleya-trianae-alba-castro-x-cattleya-trianae-integra-orlata-vinho-foto-3196.jpg
812	Cattleya trianae amoena XXX x Cattleya trianae amoena 'TA's'	B/S	1449	0	7	https://static.orchids.in.ua/img/cattleya-trianae-amoena-xxx-x-cattleya-trianae-amoena-tas-foto-2705.jpg
825	Cattleya (Valentine coerulea x intermedia coerulea aquinii)	B/S	621	0	7	https://static.orchids.in.ua/img/cattleya-valentine-coerulea-x-intermedia-coerulea-aquinii-foto-2259.jpg
835	Cattleya violacea coerulea	F/S	1680	0	7	https://static.orchids.in.ua/img/cattleya-violacea-coerulea-foto-6399.jpg
845	Cattleya violacea (Urupa x self) x concolor 'Casellato'	S/S	1750	0	7	https://static.orchids.in.ua/img/1-foto-6929.jpg
855	Cattleya walkeriana semi-alba x self	B/S	987	0	7	https://static.orchids.in.ua/img/cattleya-walkeriana-semi-alba-foto-6510.jpg
865	Cattleya warneri amesiana 'Mem. Roberto Kautsky' x Cattleya warneri amesiana 'Feu Rosa'	B/S	980	0	7	https://static.orchids.in.ua/img/1-foto-3444.jpg
515	Cattleya dowiana x self (Rosita type)	S/S	1080	0	7	https://static.orchids.in.ua/img/1-foto-6156.jpg
525	Cattleya forbesii var aurea	F/S	698	0	7	https://static.orchids.in.ua/img/cattleya-forbesii-foto-6937.jpg
535	Cattleya gaskelliana semi-alba 'Maruja' x 'Naria'	B/S	1260	0	7	https://static.orchids.in.ua/img/1-foto-6185.jpg
545	Cattleya guttata tipo escura - boa (55-12) x Brassavola tuberculata		698	0	7	
555	Cattleya intermedia aquini alba 'Neve' x Cattleya intermedia aquini alba 'Sublime'	B/S	864	0	7	https://static.orchids.in.ua/img/cattleya-intermedia-aquini-alba-neve-x-cattleya-intermedia-aquini-alba-sublime-foto-1183.jpg
564	Cattleya intermedia x Epidendrum cochleatum	B/S	378	0	7	https://static.orchids.in.ua/img/cattleya-intermedia-x-epidendrum-cochleatum-foto-5999.jpg
574	Cattleya kerri	NB/S	658	0	7	https://static.orchids.in.ua/img/cattleya-kerri-foto-4753.jpg
584	Cattleya labiata alba 'Jassira' (Z-86) x Cattleya labiata alba 'Pernambuco' (BH-200)	B/S	1350	0	7	https://static.orchids.in.ua/img/cattleya-labiata-alba-jassira-z-86-x-cattleya-labiata-alba-pernambuco-bh-200-foto-2520.jpg
594	Cattleya labiata coerulea 'Bastiao' x Cattleya labiata coerulea 'Lourival'	F/S	1620	0	7	https://static.orchids.in.ua/img/1-foto-2656.jpg
604	Cattleya labiata rubra-orlata-splash 'Z-68' x SELF	B/S	1670	0	7	https://static.orchids.in.ua/img/cattleya-labiata-rubra-orlata-splash-z-68-x-self-foto-6340.jpg
614	Cattleya lawrenceana flammea 'N1' x lawrenceana flammea 'N 2'		652	0	7	https://static.orchids.in.ua/img/cattleya-lawrenceana-flammea-n1-x-lawrenceana-flammea-n-2-foto-5127.jpg
624	Cattleya loddigesii alba 'Z-492' x Brassavola glauca		364	0	7	https://static.orchids.in.ua/img/cattleya-loddigesii-alba-z-492-x-brassavola-glauca-foto-6100.jpg
635	Cattleya lueddemanniana (alba x alba BV)	B/S	1120	0	7	https://static.orchids.in.ua/img/1-foto-6904.jpg
645	Cattleya lueddemanniana escura 'Roja' x Cattleya lueddemanniana escura 'Red'	B/S	594	0	7	https://static.orchids.in.ua/img/cattleya-lueddemanniana-escura-roja-x-cattleya-lueddemanniana-escura-red-foto-1181.jpg
655	Cattleya lueddemanniana tipo 'Royal Flash' x Cattleya lueddemanniana tipo 'Drago'	B/S	1430	0	7	https://static.orchids.in.ua/img/cattleya-lueddemanniana-tipo-royal-flash-x-cattleya-lueddemanniana-tipo-drago-foto-6948.jpg
665	Cattleya maxima 'Peruana' x SELF	B/S	1120	0	7	https://static.orchids.in.ua/img/2-foto-2537.jpg
675	Cattleya maxima coerulea 'Hector' x nobilior coerulea 'Luar do Sertao'	NB/S	720	0	7	https://static.orchids.in.ua/img/cattleya-maxima-coerulea-hector-x-nobilior-coerulea-luar-do-sertao-foto-5798.jpg
685	Cattleya maxima semi-alba 'La Pedrena'	NB/S	525	0	7	https://static.orchids.in.ua/img/cattleya-maxima-semi-alba-la-pedrena-foto-2781.jpg
695	Cattleya mossiae alba	F/S	1680	0	7	https://static.orchids.in.ua/img/cattleya-mossiae-alba-foto-6927.jpg
704	Cattleya nobilior	F/S	1139	0	7	https://static.orchids.in.ua/img/cattleya-nobilior-foto-1142.jpg
714	Cattleya Old Sierra (Old Whitey x Sierra Blanca)	F/S	1229	0	7	https://static.orchids.in.ua/img/cattleya-old-sierra-old-whitey-x-sierra-blanca-foto-2803.jpg
724	Cattleya percivaliana alba		960	0	7	https://static.orchids.in.ua/img/cattleya-percivaliana-alba-foto-6622.jpg
734	Cattleya Pittiae x Cattleya schilleriana	B/S	420	0	7	https://static.orchids.in.ua/img/cattleya-pittiae-x-cattleya-schilleriana-foto-6562.jpg
744	Cattleya schilleriana 'Daniel Endringer' x schilleriana 'Preciosa'	B/S	1280	0	7	https://static.orchids.in.ua/img/cattleya-schilleriana-daniel-endringer-x-schilleriana-preciosa-foto-6139.jpg
755	Cattleya schilleriana (atro 'Coluna Vermelha' x 'Chocolate II')	B/S	1480	0	7	https://static.orchids.in.ua/img/cattleya-schilleriana-atro-coluna-vermelha-x-chocolate-ii-foto-6342.jpg
765	Cattleya schilleriana rubra (do Fabio x do Caliman)	B/S	3120	0	7	
775	Cattleya schofieldiana 'Caioaba' (ES) x schofieldiana 'Sta Leopoldina' (ES)		756	0	7	https://static.orchids.in.ua/img/cattleya-schofieldiana-caioaba-es-x-schofieldiana-sta-leopoldina-es-foto-6127.jpg
785	Cattleya schroederae	NB/S	780	0	7	https://static.orchids.in.ua/img/1-foto-1627.jpg
794	Cattleya Suzanne Hye (gaskelliana x mossiae)		2240	0	7	https://static.orchids.in.ua/img/cattleya-suzanne-hye-gaskelliana-x-mossiae-foto-6566.jpg
805	Cattleya trianae 'Waldemar Silva' x trianae lab escuro-integro 'Monte Verde'	B/S	918	0	7	https://static.orchids.in.ua/img/cattleya-trianae-waldemar-silva-x-trianae-lab-escuro-integro-monte-verde-foto-6071.jpg
816	Cattleya trianae coerulea x SELF	B/S	1180	0	7	https://static.orchids.in.ua/img/cattleya-trianae-coerulea-x-self-foto-2552.jpg
822	Cattleya trianae tipo 'Fine Variety' (98-8) x Cattleya trianae 'India' (10-8)	B/S	757	0	7	https://static.orchids.in.ua/img/cattleya-trianae-tipo-fine-variety-98-8-x-india-10-8-foto-2555.jpg
832	Cattleya violacea 'Pink'	F/S	675	0	7	https://static.orchids.in.ua/img/2-foto-6459.jpg
842	Cattleya violacea semi-alba x sib	B/S	1053	0	7	https://static.orchids.in.ua/img/2-foto-6293.jpg
848	Cattleya walkeriana blue x sib	B/S	945	0	7	https://static.orchids.in.ua/img/1-foto-6425.jpg
858	Cattleya walkeriana var semi-alba ('Puanani' x 'Tancho')	B/S	1480	0	7	https://static.orchids.in.ua/img/cattleya-walkeriana-var-semi-alba-puanani-x-tancho-foto-4571.jpg
868	Cattleya warneri atropurpurea 'AWZ x Cattleya warneri escura 'XII Expo Vitoria'	B/S	996	0	7	https://static.orchids.in.ua/img/cattleya-warneri-atropurpurea-awz-x-cattleya-warneri-escura-xii-expo-vitoria-foto-2556.jpg
878	Cattleya warneri concolor 'Vento Sul' x warneri concolor 'Junior'	NB/S	598	0	7	https://static.orchids.in.ua/img/cattleya-warneri-concolor-vento-sul-x-warneri-concolor-junior-foto-6107.jpg
887	Cattleya warneri integra orlata 'FCC' x Cattleya warneri tipo 'Lua Cheia'	B/S	905	0	7	
897	Cattleya warneri semi alba 'Pedra Azul' x Cattleya warneri semi alba 'Nr. 1'	B/S	1121	0	7	https://static.orchids.in.ua/img/cattleya-warneri-semi-alba-pedra-azul-x-cattleya-warneri-semi-alba-nr-1-foto-2565.jpg
907	Cattleya warscewiczii ('Alexander's Var' x 'Michael')	NB/S	1680	0	7	
918	Cattleya warscewiczii semi-alba 'Katia'		14800	0	7	https://static.orchids.in.ua/img/cattleya-warscewiczii-semi-alba-katia-foto-5347.jpg
546	Cattleya guttata verde sem pintas 'AWZ' x guttata amarela sem pintas 'Onca Parda'		1620	0	7	https://static.orchids.in.ua/img/cattleya-guttata-verde-sem-pintas-awz-x-guttata-amarela-sem-pintas-onca-parda-foto-6110.jpg
556	Cattleya intermedia coerulea aquini flamea 'AWZ' x Cattleya intermedia aquinii coerulea 'AP'	NB/S	836	0	7	https://static.orchids.in.ua/img/cattleya-intermedia-coerulea-aquini-flamea-awz-x-cattleya-intermedia-aquinii-coerulea-ap-foto-2518.jpg
566	Cattleya Jairak Dolly	B/S	378	0	7	https://static.orchids.in.ua/img/cattleya-jairak-dolly-foto-5971.jpg
575	Cattleya kerrii 'Bahia'		798	0	7	https://static.orchids.in.ua/img/cattleya-kerrii-bahia-foto-5131.jpg
585	Cattleya labiata alba 'Otima' XXX x Cattleya labiata roxo bispo 'Urbano'	F/S	1350	0	7	https://static.orchids.in.ua/img/cattleya-labiata-alba-otima-xxx-x-roxo-bispo-urbano-foto-2521.jpg
596	Cattleya labiata coerulea ('Panelas' x 'Sangue Azul')	NB/S	1300	0	7	https://static.orchids.in.ua/img/cattleya-labiata-coerulea-panelas-x-sangue-azul-foto-6474.jpg
605	Cattleya labiata semi alba 'Garganta Escura' x Cattleya labiata semi alba ('Cooksoniae' x 'Gloriosa')	B/S	1280	0	7	https://static.orchids.in.ua/img/cattleya-labiata-semi-alba-garganta-escura-x-cattleya-labiata-semi-alba-cooksoniae-x-gloriosa-foto-1168.jpg
615	Cattleya Leoloddiglossa 'SVO Speckled Blue' x loddigesii coerulea 'Blue Sky'	NB/S	972	0	7	https://static.orchids.in.ua/img/1-foto-5865.jpg
625	Cattleya loddigesii caerulescens 'Botucatu' x SELF		1486	0	7	https://static.orchids.in.ua/img/cattleya-loddigesii-caerulescens-botucatu-x-self-foto-6082.jpg
634	Cattleya lueddemanniana alba 'OMG' x Cattleya lueddemanniana coerulea 'Siquesique'	B/S	918	0	7	https://static.orchids.in.ua/img/1-foto-2874.jpg
643	Cattleya lueddemanniana concolor (clara) x self	B/S	1296	0	7	https://static.orchids.in.ua/img/cattleya-lueddemanniana-concolor-clara-x-self-foto-1162.jpg
652	Cattleya lueddemanniana (rubra flamea 'Tango' x escura '3')	NB/S	540	0	7	
662	Cattleya maxima 'Alice' x self	B/S	810	0	7	
672	Cattleya maxima coerulea 'Gigi' x self	F/S	6120	0	7	https://static.orchids.in.ua/img/cattleya-maxima-coerulea-gigi-foto-6844.jpg
682	Cattleya maxima semi alba ('TA' x maxima semi alba 'AWZ')		798	0	7	https://static.orchids.in.ua/img/cattleya-maxima-semi-alba-ta-x-maxima-semi-alba-awz-foto-6101.jpg
692	Cattleya mendelii x sib	B/S	675	0	7	https://static.orchids.in.ua/img/1-foto-6432.jpg
702	Cattleya mossiae var coerulea x sib ('Dark Lip' x '#123')	B/S	1820	0	7	https://static.orchids.in.ua/img/1-foto-6437.jpg
713	Cattleya nobilior semi-alba	B/S	1080	0	7	https://static.orchids.in.ua/img/cattleya-nobilior-semi-alba-foto-6511.jpg
722	Cattleya percivaliana ('Summit -Mutant' x 'Thiago')	S/S	1080	0	7	https://static.orchids.in.ua/img/cattleya-percivaliana-summit--mutant-x-thiago-foto-6343.jpg
732	Cattleya percivaliana tipo x percivaliana fma pelorica 'Hercules'	S/S	1480	0	7	https://static.orchids.in.ua/img/cattleya-percivaliana-tipo-x-percivaliana-fma-pelorica-hercules-foto-6639.jpg
743	Cattleya schilleriana 'Cleber Munhol' x Cattleya schilleriana 'Pedra do Vento'	B/S	1320	0	7	
754	Cattleya schilleriana 'Zaslawski' x 'Surpresa'	NB/S	894	0	7	https://static.orchids.in.ua/img/cattleya-schilleriana-zaslawski-x-surpresa-foto-5777.jpg
764	Cattleya schilleriana escura 'Jucu' x Cattleya schilleriana 'Paredao'	B/S	1213	0	7	https://static.orchids.in.ua/img/cattleya-schilleriana-escura-jucu-x-cattleya-schilleriana-paredao-foto-2547.jpg
774	Cattleya schofieldiana 'Arraial D'Ajuda' (BA) SELF	B/S	810	0	7	https://static.orchids.in.ua/img/1-foto-5351.jpg
784	Cattleya schroederae	NB/S	780	0	7	https://static.orchids.in.ua/img/1-foto-1627.jpg
795	Cattleya Tian Mu 'Sesame'	B/S	420	0	7	https://static.orchids.in.ua/img/1-foto-6494.jpg
801	Cattleya trianae 'Mooreana'	F/S	4800	0	7	https://static.orchids.in.ua/img/1-foto-6290.jpg
811	Cattleya trianae amoena 'Maria Ines' x Cattleya trianae amoena 'President Geisel'	NB/S	902	0	7	https://static.orchids.in.ua/img/cattleya-trianae-amoena-maria-ines-x-cattleya-trianae-amoena-president-geisel-foto-2706.jpg
823	Cattleya trianae tipo 'Giant' x Cattleya trianae (Rolf Altenburg x Vitoria Castro)	B/S	1319	0	7	https://static.orchids.in.ua/img/cattleya-trianae-tipo-giant-x-cattleya-trianae-rolf-altenburg-x-vitoria-castro-foto-2880.jpg
834	Cattleya violacea alba	B/S	2680	0	7	https://static.orchids.in.ua/img/1-foto-6316.jpg
844	Cattleya violacea semialba ('Snowfire' x 'Incredible Flame')	NB/S	2160	0	7	
854	Cattleya walkeriana rubra pelorica 'Esperada' x (walkeriana rubra flamea 'Portinari' x SLF)		848	0	7	https://static.orchids.in.ua/img/cattleya-walkeriana-rubra-pelorica-esperada-x-walkeriana-rubra-flamea-portinari-x-slf-foto-6142.jpg
864	Cattleya warneri amesiana 'Mem R Kautsky' (EC) x warneri suave flamea 'ES'		798	0	7	https://static.orchids.in.ua/img/cattleya-warneri-amesiana-mem-r-kautsky-ec-x-warneri-suave-flamea-es-foto-6097.jpg
875	Cattleya warneri concolor 'Bonificacao' x SELF	NB/S	598	0	7	https://static.orchids.in.ua/img/cattleya-warneri-concolor-bonificacao-x-self-foto-6088.jpg
886	Cattleya warneri integra escura 'AWZ' x Cattleya warneri flameada	B/S	1213	0	7	https://static.orchids.in.ua/img/cattleya-warneri-integra-escura-awz-x-cattleya-warneri-flameada-foto-2564.jpg
896	Cattleya warneri semi alba 'Goiabeiras' (Z-108) x Cattleya warneri semi alba 'Guindani'	B/S	1179	0	7	
906	Cattleya warneri venosa suave 'Vento Sul' x SELF	NB/S	978	0	7	https://static.orchids.in.ua/img/cattleya-warneri-venosa-suave-vento-sul-x-self-foto-6089.jpg
917	Cattleya warscewiczii semi-alba 'Kathleen' x self	B/S	12200	0	7	https://static.orchids.in.ua/img/1-foto-6945.jpg
927	Cattlianthe Siamese Doll 'Kiwi'	B/S	478	0	7	https://static.orchids.in.ua/img/1-foto-5893.jpg
928	Cattlianthe Tiny Treasure 'Star Amethyst'	B/S	325	0	7	https://static.orchids.in.ua/img/laeliocattleya-tiny-treasure-foto-5859.jpg
937	Epidendrum parkinsonianum x Brassavola digbyana	F/S	480	0	7	https://static.orchids.in.ua/img/epidendrum-parkinsonianum-x-brassavola-digbyana-foto-3455.jpg
938	Guarisophleya Kauai Starbright x (Faye Miyamoto x President Fortune)	F/S	490	0	7	https://static.orchids.in.ua/img/guarisophleya-kauai-starbright-x-faye-miyamoto-x-president-fortune-foto-5222.jpg
548	Cattleya Hardyana coerulea 'Natural World'	NB/S	4450	0	7	
558	Cattleya intermedia orlata marginata coerulea 'AWZ' x Cattleya intermedia coerulea aquini flamea 'AWZ'	B/S	958	0	7	https://static.orchids.in.ua/img/cattleya-intermedia-orlata-marginata-coerulea-awz-x-cattleya-intermedia-coerulea-aquini-flamea-awz-foto-1917.jpg
568	Cattleya jemannii (rubra x rubra)	B/S	936	0	7	https://static.orchids.in.ua/img/cattleya-jemannii-rubra-x-rubra-foto-6473.jpg
578	Cattleya Korat Spot	F/S	1080	0	7	https://static.orchids.in.ua/img/cattleya-korat-spot-foto-2920.jpg
589	Cattleya labiata amesiana 'Mandarim' x self	NB/S	709	0	7	https://static.orchids.in.ua/img/cattleya-labiata-amesiana-mandarim-foto-3434.jpg
600	Cattleya labiata rubra ('Franchinii' x 'Redonda')	B/S	1196	0	7	https://static.orchids.in.ua/img/1-foto-6483.jpg
610	Cattleya labiata var venosa	B/S	870	0	7	https://static.orchids.in.ua/img/1-foto-6917.jpg
621	Cattleya leopoldii flamea 'Retorica'	F/S	15000	0	7	https://static.orchids.in.ua/img/cattleya-leopoldii-flamea-retorica-foto-6940.jpg
631	Cattleya Loddiglossa	F/S	657	0	7	https://static.orchids.in.ua/img/cattleya-loddiglossa-foto-4754.jpg
641	Cattleya lueddemanniana coerulea splash 'Bela' x SELF	B/S	1188	0	7	https://static.orchids.in.ua/img/cattleya-lueddemanniana-coerulea-splash-bela-x-self-foto-2528.jpg
653	Cattleya lueddemanniana rubra x lueddemanniana escura	B/S	1680	0	7	https://static.orchids.in.ua/img/1-foto-1215.jpg
663	Cattleya maxima 'Light Pink'	B/S	1215	0	7	https://static.orchids.in.ua/img/cattleya-maxima-light-pink-foto-6271.jpg
673	Cattleya maxima coerulea 'Hector'	F/S	1680	0	7	https://static.orchids.in.ua/img/1-foto-5325.jpg
683	Cattleya maxima semi alba (Hui Yun)	B/S	675	0	7	https://static.orchids.in.ua/img/1-foto-6309.jpg
693	Cattleya mendelli alba 'Clayton' SELF	NB/S	648	0	7	https://static.orchids.in.ua/img/cattleya-mendelli-alba-clayton-self-foto-5125.jpg
703	Cattleya mossiae yellow lip x coerulea 'Pablo'	B/S	1920	0	7	https://static.orchids.in.ua/img/cattleya-mossiae-yellow-lip-x-coerulea-pablo-foto-5714.jpg
712	Cattleya nobilior rubra 'Lou Menezes' x tipo 'Rei da Serra'	B/S	3770	0	7	
723	Cattleya percivaliana 'Summit -Mutant' x SELF	S/S	810	0	7	https://static.orchids.in.ua/img/cattleya-percivaliana-summit--mutant-x-self-foto-6360.jpg
733	Cattleya percivaliana var alba x sib ('Canaima's Malandro' BM/JOGA x 'Select')	NB/S	1560	0	7	https://static.orchids.in.ua/img/cattleya-percivalliana-var-alba-x-sib-foto-6436.jpg
742	Cattleya schilleriana 'Chapeu' x 'Guarapari'	B/S	9450	0	7	
752	Cattleya schilleriana 'Sublime' x 'Preciosa'	B/S	894	0	7	https://static.orchids.in.ua/img/cattleya-schilleriana-sublime-x-preciosa-foto-5779.jpg
762	Cattleya schilleriana dark x Laelia alaorii alba	B/S	520	0	7	https://static.orchids.in.ua/img/cattleya-schilleriana-dark-x-laelia-alaorii-alba-foto-6561.jpg
772	Cattleya schilleriana x schilleriana (4N)	NB/S	810	0	7	https://static.orchids.in.ua/img/1-foto-6237.jpg
783	Cattleya schroderae x schroderae fma delicata (C)	S/S	525	0	7	
793	Cattleya speciosissima semi alba 'Stanley'	NB/S	597	0	7	https://static.orchids.in.ua/img/cattleya-speciosissima-semi-alba-stanley-foto-4971.jpg
804	Cattleya trianae 'Sangre de Toro II' (25-8) x Cattleya trianae tipo 'Martinelli' (78-8)	B/S	894	0	7	https://static.orchids.in.ua/img/cattleya-trianae-sangre-de-toro-ii-25-8-x-cattleya-trianae-tipo-martinelli-78-8-foto-2550.jpg
813	Cattleya trianae coerulea (36-8) x Cattleya lueddemanniana coerulea 'Pedra Azul'	B/S	675	0	7	https://static.orchids.in.ua/img/1-foto-5552.jpg
821	Cattleya trianae splash x coerulea	S/S	405	0	7	https://static.orchids.in.ua/img/1-foto-6189.jpg
829	Cattleya velutina aurea x self	B/S	1620	0	7	https://static.orchids.in.ua/img/cattleya-velutina-aurea-foto-6256.jpg
838	Cattleya violacea semi alba flamea 'Red Berry Creme’ 4N x 'Fire Walker'	NB/S	1305	0	7	https://static.orchids.in.ua/img/1-foto-6153.jpg
847	Cattleya walkeriana alba x sib	NB/S	520	0	7	https://static.orchids.in.ua/img/1-foto-6435.jpg
857	Cattleya walkeriana var alba x Brassocattleya Mount Hood 'Mary'	B/S	540	0	7	https://static.orchids.in.ua/img/cattleya-walkeriana-var-alba-x-brassocattleya-mount-hood-mary-foto-3336.jpg
867	Cattleya warneri amesiana 'Santa Leopoldina' x SELF		675	0	7	https://static.orchids.in.ua/img/cattleya-warneri-amesiana-santa-leopoldina-x-self-foto-1063.jpg
877	Cattleya warneri concolor 'Sao Gabriel' x warneri concolor 'E Colnago'		598	0	7	https://static.orchids.in.ua/img/cattleya-warneri-concolor-sao-gabriel-x-warneri-concolor-e-colnago-foto-6106.jpg
888	Cattleya warneri (integra orlata pincelada 'Z-529' x integra orlata flamea 'Negrita')	NB/S	598	0	7	
898	Cattleya warneri semi alba (boa forma) x Cattleya warneri semi alba 'Rubi'	F/S	1026	0	7	https://static.orchids.in.ua/img/1-foto-2566.jpg
908	Cattleya warscewiczii 'F M B' x 'Katia'	NB/S	4050	0	7	https://static.orchids.in.ua/img/2-foto-6946.jpg
914	Cattleya warscewiczii coerulea 'La Floresta' x self	S/S	840	0	7	https://static.orchids.in.ua/img/cattleya-warscewiczii-caerulea-la-floresta-x-self-foto-5098.jpg
923	(Cattleytonia Why Not x Blc Tzeng-wen Beauty) x Potinara Ahchung Yoyo	B/S	368	0	7	https://static.orchids.in.ua/img/cattleytonia-why-not-x-blc-tzeng-wen-beauty-x-potinara-ahchung-yoyo-foto-5291.jpg
933	Epicattleya Kyoguchi 'Peter's Pick' x Brassolaeliocattleya Trick or Treat 'Orange Magic'	NB/S	756	0	7	https://static.orchids.in.ua/img/1-foto-5882.jpg
943	Laelia alaori x praestans	F/S	587	0	7	https://static.orchids.in.ua/img/laelia-alaorii-x-praestans-foto-579.jpg
947	Laelia anceps Dawsonii f. Chiapensis	F/S	791	0	7	https://static.orchids.in.ua/img/laelia-anceps-dawsonii-f-chiapensis-foto-1749.jpg
953	Laelia autumnallis	F/S	783	0	7	https://static.orchids.in.ua/img/laelia-autumnalis-foto-721.jpg
957	Laelia crispa	B/S	641	0	7	https://static.orchids.in.ua/img/laelia-crispa-foto-2211.jpg
963	Laelia crispa (tipo x flamea)	B/S	940	0	7	https://static.orchids.in.ua/img/1-foto-6906.jpg
967	Laelia fournieri	F/S	498	0	7	https://static.orchids.in.ua/img/laelia-fournieri-foto-762.jpg
557	Cattleya intermedia orlata '061-Quadrado' x intermedia flamea 'Sander'		798	0	7	https://static.orchids.in.ua/img/cattleya-intermedia-orlata-061-quadrado-x-intermedia-flamea-sander-foto-6079.jpg
567	Cattleya jemannii ('Bela Vista' x rubra)	B/S	1288	0	7	https://static.orchids.in.ua/img/cattleya-jemannii-bela-vista-x-rubra-foto-6472.jpg
577	Cattleya Kiwanda 4N (mossiae 4N x skinneri 4N)	NB/S	870	0	7	https://static.orchids.in.ua/img/cattleya-kiwanda-4n-mossiae-4n-x-skinneri-4n-foto-6176.jpg
587	Cattleya labiata alba x concolor	B/S	1120	0	7	https://static.orchids.in.ua/img/1-foto-6911.jpg
597	Cattleya labiata coerulescens 'Da. Norma Dreher' x self	B/S	1450	0	7	https://static.orchids.in.ua/img/cattleya-labiata-coerulescens-da-norma-dreher-x-self-foto-1064.jpg
607	Cattleya labiata semi-alba	B/S	840	0	7	https://static.orchids.in.ua/img/1-foto-6264.jpg
618	Cattleya leopoldii albina 'Dr Kley' x SELF		1260	0	7	https://static.orchids.in.ua/img/1-foto-6138.jpg
629	Cattleya loddigesii striata 'Bastiao' x loddigesii punctata escura 'Guaxupe'		978	0	7	https://static.orchids.in.ua/img/cattleya-loddigesii-striata-bastiao-x-loddigesii-punctata-escura-guaxupe-foto-6086.jpg
640	Cattleya lueddemanniana coerulea (Siquesique x Amparo) x Cattleya lueddemanniana tipo escura 'Guacamuco'	B/S	1480	0	7	
650	Cattleya lueddemanniana rubra 'Dark Giant' x Cattleya lueddemanniana escura 'Fennel IX'	B/S	1294	0	7	https://static.orchids.in.ua/img/cattleya-lueddemanniana-rubra-dark-giant-x-cattleya-lueddemanniana-escura-fennel-ix-foto-2532.jpg
660	Cattleya Massiliensis semialba (dowiana aurea x trianae semialba)	B/S	3430	0	7	https://static.orchids.in.ua/img/cattleya-massiliensis-semialba-dowiana-aurea-x-trianae-semialba-foto-6042.jpg
671	Cattleya maxima coerulea	S/S	625	0	7	https://static.orchids.in.ua/img/1-foto-6852.jpg
681	Cattleya maxima semi alba 'AWZ' x SELF	B/S	964	0	7	https://static.orchids.in.ua/img/cattleya-maxima-semi-alba-awz-x-self-foto-1067.jpg
691	Cattleya mendelii semi-alba 'Carlos Arango' x self	NB/S	1357	0	7	https://static.orchids.in.ua/img/cattleya-mendelii-semi-alba-carlos-arango-x-self-foto-2433.jpg
701	Cattleya mossiae (tipo) 'Gabriel Trujillo' x SELF	NB/S	897	0	7	https://static.orchids.in.ua/img/cattleya-mossiae-tipo-gabriel-trujillo-x-self-foto-6346.jpg
711	Cattleya nobilior rubra 'Aurora'	F/S	11600	0	7	https://static.orchids.in.ua/img/1-foto-6935.jpg
721	Cattleya percivaliana ('Labelo Lindo' x 'Pedra Azul')	B/S	1280	0	7	https://static.orchids.in.ua/img/cattleya-percivaliana-labelo-lindo-x-pedra-azul-foto-6349.jpg
731	Cattleya percivaliana tipo select XXX x 'Summit - Mutante'	B/S	1280	0	7	https://static.orchids.in.ua/img/cattleya-percivaliana-tipo-xxx-x-summit-mutante-foto-2543.jpg
741	Cattleya schilleriana	B/S	1740	0	7	https://static.orchids.in.ua/img/cattleya-schilleriana-foto-4841.jpg
751	Cattleya schilleriana 'Shimoda' x Laelia pumila boa f (Z-1028)	B/S	486	0	7	https://static.orchids.in.ua/img/cattleya-schilleriana-shimoda-x-laelia-pumila-boa-f-z-1028-foto-6093.jpg
761	Cattleya schilleriana coerulea Bravim x Caliman	B/S	2830	0	7	https://static.orchids.in.ua/img/cattleya-schilleriana-coerulea-bravim-x-caliman-foto-6363.jpg
771	Cattleya schilleriana x Myrmecophila tibicinis	B/S	750	0	7	https://static.orchids.in.ua/img/cattleya-schilleriana-x-myrmecophila-tibicinis-foto-6664.jpg
781	Cattleya schofieldiana 'Potira' XXX SELF	NB/S	729	0	7	https://static.orchids.in.ua/img/cattleya-schofieldiana-potira-xxx-self-foto-5123.jpg
791	Cattleya skinneri 'Casa Luna'	NB/S	754	0	7	https://static.orchids.in.ua/img/cattleya-skinneri-casa-luna-foto-2440.jpg
802	Cattleya trianae 'Mooreana'	F/S	4800	0	7	https://static.orchids.in.ua/img/1-foto-6290.jpg
817	Cattleya trianae concolor	S/S	348	0	7	https://static.orchids.in.ua/img/cattleya-trianae-concolor-foto-3602.jpg
828	Cattleya velutina aurea x aurea	B/S	1180	0	7	https://static.orchids.in.ua/img/cattleya-velutina-aurea-x-aurea-foto-6280.jpg
839	Cattleya violacea semi alba flamea 'Red Berry Creme’ 4N x self	NB/S	1320	0	7	https://static.orchids.in.ua/img/1-foto-6635.jpg
850	Cattleya walkeriana coerulea 'Edwards' x coerulea 'Celebridade'	NB/S	1404	0	7	https://static.orchids.in.ua/img/cattleya-walkeriana-coerulea-edwards-x-coerulea-celebridade-foto-6308.jpg
859	Cattleya walkeriana x Cattleya dolosa alba	F/S	790	0	7	https://static.orchids.in.ua/img/cattleya-walkeriana-x-cattleya-dolosa-alba-foto-1079.jpg
869	Cattleya warneri coerulea 'Carolina' x Cattleya warneri coerulea 'Raasch'	B/S	864	0	7	https://static.orchids.in.ua/img/1-foto-1202.jpg
879	Cattleya warneri concolor 'Z-300' x warneri striata 'EC'	B/S	598	0	7	https://static.orchids.in.ua/img/cattleya-warneri-concolor-z-300-x-warneri-striata-ec-foto-5149.jpg
890	Cattleya warneri orlata flameada x Cattleya warneri integra flameada	F/S	905	0	7	https://static.orchids.in.ua/img/cattleya-warneri-orlata-flameada-x-cattleya-warneri-integra-flameada-foto-2717.jpg
899	Cattleya warneri semi alba (good shape x 'Rubi')	B/S	786	0	7	
909	Cattleya warscewiczii ('Halo' x 'Michael') AM/AOS	B/S	1560	0	7	https://static.orchids.in.ua/img/1-foto-5886.jpg
919	Cattleya warscewiczii var coerulea 'Hsinying'	S/S	1170	0	7	
929	Cattlianthe White Bridal 'Yuki' (Cattleya Angelwalker x Cattlianthe Candy Tuft)	B/S	634	0	7	https://static.orchids.in.ua/img/cattlianthe-white-bridal-yuki-foto-672.jpg
940	Kirchara Jairak Kiss Spot Lip	F/S	783	0	7	https://static.orchids.in.ua/img/kirchara-jairak-kiss-spot-lip-foto-4378.jpg
948	Laelia anceps Guerrero flamea	B/S	1200	0	7	https://static.orchids.in.ua/img/laelia-anceps-var-veitchiana-foto-6846.jpg
949	Laelia anceps guerrero x Laelia rubescens	F/S	855	0	7	https://static.orchids.in.ua/img/laelia-anceps-guerrero-x-laelia-rubescens-foto-585.jpg
958	Laelia crispa	B/S	641	0	7	https://static.orchids.in.ua/img/laelia-crispa-foto-2211.jpg
959	Laelia crispa alba 'Blanca' SELF		1378	0	7	https://static.orchids.in.ua/img/laelia-crispa-alba-blanca-self-foto-5120.jpg
968	Laelia furfuracea	B/S	783	0	7	https://static.orchids.in.ua/img/laelia-furfuracea-foto-1517.jpg
969	Laelia ghillanyi	F/S	560	0	7	https://static.orchids.in.ua/img/laelia-ghillanyi-foto-1518.jpg
559	Cattleya intermedia orlatao 'AWZ' x intermedia 'Quantum'		798	0	7	https://static.orchids.in.ua/img/cattleya-intermedia-orlatao-awz-x-intermedia-quantum-foto-6072.jpg
569	Cattleya jenmanii alba (H&R)	B/S	1215	0	7	https://static.orchids.in.ua/img/cattleya-jenmanii-alba-foto-6314.jpg
579	Cattleya labiata 'Labelo Grande' x Cattleya labiata 'Feliz Páscoa'	B/S	1180	0	7	https://static.orchids.in.ua/img/cattleya-labiata-labelo-grande-x-cattleya-labiata-feliz-pascoa-foto-2667.jpg
588	Cattleya labiata amesiana	B/S	1080	0	7	
598	Cattleya labiata (escura 'Z-322' x rubra 'Pernambuco')	B/S	810	0	7	
608	Cattleya labiata semi-alba ('Arlequim' x 'Branca de Neve')	F/S	1470	0	7	https://static.orchids.in.ua/img/cattleya-labiata-semi-alba-arlequim-x-branca-de-neve-foto-6321.jpg
617	Cattleya leopoldii 'SVO Prince' x leopoldii 'Paul'	NB/S	1215	0	7	https://static.orchids.in.ua/img/1-foto-5870.jpg
627	Cattleya loddigesii punctata coerulea SELF	B/S	857	0	7	https://static.orchids.in.ua/img/cattleya-loddigesii-punctata-coerulea-self-foto-5126.jpg
637	Cattleya lueddemanniana coerulea 'Monte Verde' x Cattleya lueddemanniana coerulea 'Mar azul'	B/S	1148	0	7	https://static.orchids.in.ua/img/cattleya-lueddemanniana-coerulea-monte-verde-x-cattleya-lueddemanniana-coerulea-mar-azul-foto-2525.jpg
647	Cattleya lueddemanniana escura x Cattleya lueddemanniana 'Labelo Dourado'	B/S	1394	0	7	https://static.orchids.in.ua/img/1-foto-2531.jpg
657	Cattleya luteola	B/S	756	0	7	https://static.orchids.in.ua/img/cattleya-luteola-foto-426.jpg
667	Cattleya maxima (1507)	B/S	810	0	7	https://static.orchids.in.ua/img/1-foto-6257.jpg
677	Cattleya maxima concolor	B/S	1200	0	7	https://static.orchids.in.ua/img/1-foto-5348.jpg
687	Cattleya maxima (The King x Hirooka) x sib	NB/S	780	0	7	https://static.orchids.in.ua/img/cattleya-maxima-the-king-x-hirooka-x-sib-foto-6531.jpg
697	Cattleya mossiae coerulea 'Pedra Azul' x mossiae coerulea 'BH-134'		1160	0	7	https://static.orchids.in.ua/img/cattleya-mossiae-caerulea-pedra-azul-x-mossiae-caerulea-bh-134-foto-5382.jpg
708	Cattleya nobilior coerulea x coerulea 'Francisco'	B/S	1812	0	7	https://static.orchids.in.ua/img/1-foto-6157.jpg
717	Cattleya (Penny Kuroda x Corcovado)	B/S	796	0	7	https://static.orchids.in.ua/img/cattleya-penny-kuroda-x-corcovado-foto-5229.jpg
728	Cattleya percivaliana (Hui Yun)	NB/S	780	0	7	https://static.orchids.in.ua/img/cattleya-percivaliana-hui-yun-foto-6397.jpg
738	Cattleya rex (M1)	B/S	2625	0	7	https://static.orchids.in.ua/img/cattleya-rex-foto-6640.jpg
748	Cattleya schilleriana 'Guarapari' x '99'	B/S	4500	0	7	https://static.orchids.in.ua/img/1-foto-6934.jpg
758	Cattleya schilleriana coerulea '#1' x albescens 'LH'	B/S	1120	0	7	https://static.orchids.in.ua/img/15-foto-6932.jpg
767	Cattleya schilleriana (tipo 'Aphri' x coerulea 'Sto Antonio')		1210	0	7	https://static.orchids.in.ua/img/cattleya-schilleriana-tipo-aphri-x-caerulea-sto-antonio-foto-6359.jpg
776	Cattleya schofieldiana 'GU' (ES) x schofieldiana 'Caioaba' (ES)		725	0	7	https://static.orchids.in.ua/img/cattleya-schofieldiana-gu-es-x-schofieldiana-caioaba-es-foto-6124.jpg
786	Cattleya schroederae 'Popayan' x self	NB/S	920	0	7	https://static.orchids.in.ua/img/1-foto-6499.jpg
796	Cattleya trianae 'Da. Vitoria' x Cattleya trianae concolor 'Rinaldi'	B/S	1188	0	7	https://static.orchids.in.ua/img/cattleya-trianae-da-vitoria-x-cattleya-trianae-concolor-rinaldi-foto-2548.jpg
803	Cattleya trianae 'Newberry' x trianae 'Cashens' FCC/AOS	NB/S	1170	0	7	https://static.orchids.in.ua/img/cattleya-trianae-newberry-x-trianae-cashens-foto-6491.jpg
814	Cattleya trianae coerulea c22151 (H&R)	B/S	1880	0	7	https://static.orchids.in.ua/img/1-foto-6317.jpg
824	Cattleya trianae tipo x self (H&R)	B/S	1350	0	7	https://static.orchids.in.ua/img/cattleya-trianae-tipo-x-self-hr-foto-6313.jpg
833	Cattleya violacea 'Snow Blaze' x self	NB/S	1890	0	7	https://static.orchids.in.ua/img/cattleya-violacea-snow-blaze-x-self-foto-6311.jpg
843	Cattleya violacea semialba ('Snowfire' x 'Incredible Flame')	NB/S	2160	0	7	
853	Cattleya walkeriana rubra 'Mineirinha' x Cattleya walkeriana caerulea 'Sta. Luzia'	B/S	689	0	7	https://static.orchids.in.ua/img/cattleya-walkeriana-rubra-mineirinha-x-cattleya-walkeriana-caerulea-sta-luzia-foto-3443.jpg
863	Cattleya warneri amesiana 'Mem Pedro Schaffel'	NB/S	2025	0	7	https://static.orchids.in.ua/img/cattleya-warneri-amesiana-mem-pedro-schaffel-foto-6231.jpg
873	Cattleya warneri coerulea 'Todos os Santos' x warneri coerulea 'Raasch'	B/S	599	0	7	
883	Cattleya warneri escura 'Érico' XXX x Cattleya warneri rosea 'Érico'	NB/S	841	0	7	https://static.orchids.in.ua/img/cattleya-warneri-escura-erico-xxx-x-cattleya-warneri-rosea-erico-foto-2562.jpg
893	Cattleya warneri semi alba 'Alto Sapucaia' x Cattleya warneri semi alba 'Guindani'	B/S	1392	0	7	https://static.orchids.in.ua/img/cattleya-warneri-semi-alba-alto-sapucaia-x-cattleya-warneri-semi-alba-guindani-foto-1206.jpg
904	Cattleya warneri trilabelo 'EM' x warneri escura 'Belezinha'	NB/S	598	0	7	https://static.orchids.in.ua/img/cattleya-warneri-trilabelo-em-x-warneri-escura-belezinha-foto-6102.jpg
916	Cattleya warscewiczii semi-alba 'CH' x warscewiczii semi-alba 'Lovesome'	S/S	750	0	7	
925	Cattlianthe Doris and Byron 'Christmas Rose'	B/S	420	0	7	https://static.orchids.in.ua/img/cattlianthe-doris-and-byron-christmas-rose-foto-468.jpg
934	Epicattleya Magic Wand (Epc. Kyoguchi 'Peter's Pick' x Lc. Trick or Treat 'Orange Magic' AM/AOS)	F/S	945	0	7	https://static.orchids.in.ua/img/1-foto-5874.jpg
945	Laelia anceps	F/S	698	0	7	https://static.orchids.in.ua/img/1-foto-658.jpg
954	Laelia autumnallis var. xanthotrophis	B/S	1480	0	7	https://static.orchids.in.ua/img/laelia-autumnalis-var-xanthotrophis-foto-722.jpg
964	Laelia crispa (vinicolor x flamea)	B/S	1120	0	7	https://static.orchids.in.ua/img/laelia-crispa-vinicolor-x-flamea-foto-6902.jpg
973	Laelia grandis labelo vinho 'Red Wine' x SELF		675	0	7	https://static.orchids.in.ua/img/laelia-grandis-labelo-vinho-red-wine-x-self-foto-6133.jpg
975	Laelia grandis tipo 'Edmundo' x SELF		675	0	7	https://static.orchids.in.ua/img/laelia-grandis-tipo-edmundo-x-self-foto-6118.jpg
576	Cattleya kerrii 'Pink Leprechaun' x self	NB/S	1170	0	7	https://static.orchids.in.ua/img/1-foto-5863.jpg
586	Cattleya labiata alba x Cattleya labiata roxo bispo 'Urbano'	B/S	1482	0	7	https://static.orchids.in.ua/img/cattleya-labiata-alba-x-cattleya-labiata-roxo-bispo-urbano-foto-3520.jpg
595	Cattleya labiata coerulea 'Filha de Junior' x coerulea 'Filha de Panelas'	B/S	1680	0	7	https://static.orchids.in.ua/img/cattleya-labiata-coerulea-filha-de-junior-x-coerulea-filha-de-panelas-foto-3188.jpg
606	Cattleya labiata semi alba 'Garganta Escura' x Cattleya labiata semi alba sanguinea 'Paccione'	B/S	1539	0	7	https://static.orchids.in.ua/img/cattleya-labiata-semi-alba-garganta-escura-x-cattleya-labiata-semi-alba-sanguinea-paccione-foto-2661.jpg
616	Cattleya leopoldii 'Dark Show' x Cattleya dowiana aurea 'Uraba-A'	B/S	675	0	7	https://static.orchids.in.ua/img/cattleya-leopoldii-dark-show-x-cattleya-aurea-uraba-a-foto-3514.jpg
626	Cattleya loddigesii pelorica x SELF		1160	0	7	https://static.orchids.in.ua/img/cattleya-loddigesii-pelorica-x-self-foto-6090.jpg
636	Cattleya lueddemanniana (coerulea 'Mariauxi' x tipo) x lueddemanniana coerulea 'Tania'	B/S	675	0	7	https://static.orchids.in.ua/img/cattleya-lueddemanniana-coerulea-mariauxi-x-tipo-x-lueddemanniana-coerulea-tania-foto-1217.jpg
646	Cattleya lueddemanniana escura x Cattleya lueddemanniana 'America'	B/S	594	0	7	https://static.orchids.in.ua/img/cattleya-lueddemanniana-escura-x-cattleya-lueddemanniana-america-foto-2530.jpg
656	Cattleya lueddmanniana semi-alba ('BelaVista' x 'Ricardo Gioria')	B/S	1180	0	7	https://static.orchids.in.ua/img/1-foto-6908.jpg
666	Cattleya maxima 'Priscila' x 'Daniela'		2020	0	7	https://static.orchids.in.ua/img/1-foto-6593.jpg
676	Cattleya maxima coerulea ’Hector’ x ‘Gigi-Autouro’	S/S	1480	0	7	https://static.orchids.in.ua/img/1-foto-6638.jpg
686	Cattleya maxima tall	F/S	2160	0	7	https://static.orchids.in.ua/img/3-foto-6851.jpg
696	Cattleya mossiae amoena	B/S	840	0	7	https://static.orchids.in.ua/img/cattleya-mossiae-amoena-foto-6888.jpg
706	Cattleya nobilior amalie	B/S	870	0	7	https://static.orchids.in.ua/img/cattleya-nobilior-amalie-foto-171.jpg
716	Cattleya Pedra da Gavea	F/S	975	0	7	https://static.orchids.in.ua/img/cattleya-pedra-da-gavea-foto-6781.jpg
726	Cattleya percivaliana coerulea 'Happy Birthday' x self	B/S	4850	0	7	https://static.orchids.in.ua/img/1-foto-6655.jpg
736	Cattleya quadricolor alba x Cattleya quadricolor suavissima	B/S	753	0	7	https://static.orchids.in.ua/img/cattleya-quadricolor-alba-x-cattleya-quadricolor-suavissima-foto-1189.jpg
747	Cattleya schilleriana 'Formosinha' x 'Guarapari'	B/S	9450	0	7	
756	Cattleya schilleriana (Aurea Carmelo x Chocolate)	B/S	2030	0	7	
769	Cattleya schilleriana x Cattleya aclandiae	F/S	925	0	7	https://static.orchids.in.ua/img/cattleya-schilleriana-x-cattleya-aclandiae-foto-2392.jpg
779	Cattleya schofieldiana 'Onca Pintada' (ES) x schofieldiana 'Caioaba' (ES)		730	0	7	https://static.orchids.in.ua/img/cattleya-schofieldiana-onca-pintada-es-x-schofieldiana-caioaba-es-foto-6128.jpg
789	Cattleya Sedlescombe 'Variegated' (Annette x Suavior)	B/S	560	0	7	https://static.orchids.in.ua/img/cattleya-sedlescombe-variegated-foto-861.jpg
799	Cattleya trianae 'Fine Variety' x Cattleya trianae 'Oscura Posada' XXX	B/S	1142	0	7	https://static.orchids.in.ua/img/cattleya-trianae-fine-variety-x-cattleya-trianae-oscura-posada-xxx-foto-1196.jpg
809	Cattleya trianae albescens XXX x Cattleya trianae amoena 'Rainha'	B/S	1150	0	7	https://static.orchids.in.ua/img/cattleya-trianae-albescens-xxx-x-cattleya-trianae-amoena-rainha-foto-2551.jpg
819	Cattleya trianae escura 'Jean Groben' (11-8) x Cattleya trianae 'Mariposa' (14-8)	B/S	990	0	7	https://static.orchids.in.ua/img/cattleya-trianae-escura-jean-groben-11-8-x-cattleya-trianae-mariposa-14-8-foto-2553.jpg
830	Cattleya Vestalis (maxima x dowiana)	B/S	820	0	7	https://static.orchids.in.ua/img/cattleya-vestalis-maxima-x-dowiana-foto-5097.jpg
840	Cattleya violacea semi-alba	NB/S	698	0	7	https://static.orchids.in.ua/img/cattleya-violacea-semi-alba-foto-4894.jpg
851	Cattleya walkeriana coerulea 'Patricia' x A15 coerulea (#3 x Cinquentenario)	NB/S	1404	0	7	
861	Cattleya warneri alba 'Alvinha' x Laelia praestans alba	F/S	892	0	7	https://static.orchids.in.ua/img/cattleya-warneri-alba-alvinha-x-laelia-praestans-alba-foto-1566.jpg
871	Cattleya warneri coerulea 'Suzuki' x warneri coerulea '351'	B/S	1026	0	7	https://static.orchids.in.ua/img/cattleya-warneri-coerulea-suzuki-x-warneri-coerulea-351-foto-5147.jpg
881	Cattleya warneri concolor-venosa 'Domingos Martins' x SELF	B/S	1504	0	7	https://static.orchids.in.ua/img/cattleya-warneri-concolor-venosa-domingos-martins-x-self-foto-2561.jpg
892	Cattleya warneri semi alba 'Aline' x Cattleya warneri semi alba integra orlata	B/S	1080	0	7	https://static.orchids.in.ua/img/cattleya-warneri-semi-alba-aline-x-cattleya-warneri-semi-alba-integra-orlata-foto-3446.jpg
902	Cattleya warneri striata 'EC' x warneri concolor 'Z-300' XXX		978	0	7	
911	Cattleya warscewiczii coerulea	B/S	13500	0	7	https://static.orchids.in.ua/img/13-foto-6938.jpg
921	Cattleya Whitei coerulea (warneri coerulea 'Carolina' x schilleriana coerulea 'Moises')		960	0	7	https://static.orchids.in.ua/img/cattleya-whitei-coerulea-warneri-coerulea-carolina-x-schilleriana-coerulea-moises-foto-5327.jpg
932	Epicatanthe Volcano Trick 'Volcano Queen'	B/S	325	0	7	https://static.orchids.in.ua/img/epicattleya-volcano-trick-fire-dance-foto-6750.jpg
942	Laelia alaori escura 'Carnaval' x alaori escura 'Gemini I'	B/S	756	0	7	https://static.orchids.in.ua/img/laelia-alaori-escura-carnaval-x-alaori-escura-gemini-i-foto-6140.jpg
952	Laelia anceps x Cattleya Molly Tiler	F/S	980	0	7	https://static.orchids.in.ua/img/laelia-anceps-x-cattleya-molly-tiler-foto-4741.jpg
962	Laelia crispa flamea 'Baronesa' x self	B/S	1080	0	7	https://static.orchids.in.ua/img/laelia-crispa-flamea-baronesa-foto-3448.jpg
972	Laelia grandis coerulea venosa 'Estrela do Norte'	B/S	1188	0	7	https://static.orchids.in.ua/img/laelia-grandis-coerulea-venosa-estrela-do-norte-foto-5118.jpg
977	Laelia harpophylla	F/S	840	0	7	https://static.orchids.in.ua/img/laelia-harpophylla-foto-1141.jpg
981	Laelia liliputana	F/S	560	0	7	https://static.orchids.in.ua/img/laelia-liliputana-foto-1515.jpg
581	Cattleya labiata 'Yellow Eyes' x Cattleya labiata tipo escura (Z-68)	B/S	959	0	7	https://static.orchids.in.ua/img/cattleya-labiata-yellow-eyes-x-cattleya-labiata-tipo-escura-z-68-foto-2670.jpg
591	Cattleya labiata amoena 'Preciosa' (Z-8) x Cattleya labiata alba 'Cisne Branco' (Z-268)	B/S	1180	0	7	https://static.orchids.in.ua/img/cattleya-labiata-amoena-preciosa-z-8-x-cattleya-labiata-alba-cisne-branco-z-268-foto-3435.jpg
601	Cattleya labiata rubra 'Redonda' x labiata rubra 'Black'	NB/S	798	0	7	
611	Cattleya labiata vinicolor Jr x self	NB/S	1300	0	7	
620	Cattleya leopoldii escura x escura	F/S	980	0	7	https://static.orchids.in.ua/img/1-foto-6913.jpg
630	Cattleya loddigesii tipo 'Gigante' x Cattleya loddigesii 'Erica'	B/S	998	0	7	https://static.orchids.in.ua/img/cattleya-loddigesii-tipo-gigante-x-cattleya-loddigesii-erica-foto-2672.jpg
639	Cattleya lueddemanniana coerulea 'Pedra Azul' XXX x lueddemanniana coerulea 'Monte Verde'		1026	0	7	
649	Cattleya lueddemanniana (Morena x OK-2) 'N 1' x lueddemanniana dark lip splash	B/S	594	0	7	https://static.orchids.in.ua/img/cattleya-lueddemanniana-morena-x-ok-2-n-1-x-lueddemanniana-dark-lip-splash-foto-2524.jpg
659	Cattleya luteola x Sophronitis coccinea Yellow	B/S	540	0	7	
669	Cattleya maxima alba 'Drago' x coerulea 'Hector'	F/S	1680	0	7	https://static.orchids.in.ua/img/cattleya-maxima-alba-drago-x-coerulea-hector-foto-5341.jpg
679	Cattleya maxima Ecuador	B/S	870	0	7	https://static.orchids.in.ua/img/cattleya-maxima-ecuador-foto-6166.jpg
689	Cattleya mendelii	B/S	2280	0	7	https://static.orchids.in.ua/img/cattleya-mendelii-foto-2172.jpg
698	Cattleya mossiae semi alba aquini 'Caribe' x self	NB/S	1180	0	7	https://static.orchids.in.ua/img/cattleya-mossiae-semi-alba-aquini-caribe-x-self-foto-3467.jpg
707	Cattleya nobilior coerulea	NB/S	730	0	7	https://static.orchids.in.ua/img/cattleya-nobilior-coerulea-foto-6269.jpg
718	Cattleya Penny Kuroda x Laeliocattleya Amber Penny	F/S	696	0	7	https://static.orchids.in.ua/img/cattleya-penny-kuroda-x-laeliocattleya-amber-penny-foto-483.jpg
727	Cattleya percivaliana coerulea 'San Cristobal' x 'Petersen'	B/S	6950	0	7	
737	Cattleya quadricolor flamea 'All Star' x quadricolor 'AWZ'	S/S	594	0	7	https://static.orchids.in.ua/img/cattleya-quadricolor-flamea-all-star-x-quadricolor-awz-foto-6105.jpg
746	Cattleya schilleriana 'DSC 08' x sib	NB/S	1680	0	7	https://static.orchids.in.ua/img/1-foto-6933.jpg
757	Cattleya schilleriana carnea x self	NB/S	2240	0	7	https://static.orchids.in.ua/img/1-foto-6925.jpg
770	Cattleya schilleriana x Cattleya Peckhaviensis	B/S	925	0	7	https://static.orchids.in.ua/img/cattleya-schilleriana-x-cattleya-peckhaviensis-foto-2437.jpg
780	Cattleya schofieldiana 'Potira' x schofieldiana 'Janaína'		729	0	7	https://static.orchids.in.ua/img/cattleya-schofieldiana-potira-x-schofieldiana-jana%C3%ADna-foto-6111.jpg
790	Cattleya skinneri	F/S	430	0	7	https://static.orchids.in.ua/img/cattleya-skinneri-foto-912.jpg
800	Cattleya trianae ('Fine Variety' x orlata rosea 'AWZ')	B/S	786	0	7	https://static.orchids.in.ua/img/cattleya-trianae-fine-variety-x-orlata-rosea-awz-foto-6339.jpg
810	Cattleya trianae amesiana A x Cattleya trianae amesiana B	B/S	1653	0	7	https://static.orchids.in.ua/img/1-foto-1980.jpg
820	Cattleya trianae orlata 'TT' XXX x Cattleya trianae 'Cecilia' (04-8)	B/S	1140	0	7	https://static.orchids.in.ua/img/cattleya-trianae-orlata-tt-xxx-x-cattleya-trianae-cecilia-04-8-foto-3199.jpg
831	Cattleya violacea	F/S	670	0	7	https://static.orchids.in.ua/img/cattleya-violacea-foto-1852.jpg
841	Cattleya violacea semi-alba flamea	B/S	675	0	7	https://static.orchids.in.ua/img/cattleya-violacea-semi-alba-flamea-foto-6292.jpg
852	Cattleya walkeriana flamea 'Da Terezinha' x walkeriana flamea 'Athayde'		2320	0	7	https://static.orchids.in.ua/img/cattleya-walkeriana-flamea-da-terezinha-x-walkeriana-flamea-athayde-foto-6095.jpg
866	Cattleya warneri amesiana 'Mem. Roberto Kautsky' x SELF	B/S	1080	0	7	https://static.orchids.in.ua/img/cattleya-warneri-amesiana-mem-roberto-kautsky-x-self-foto-1203.jpg
876	Cattleya warneri concolor 'HI' x Cattleya warneri venosa suave	B/S	1260	0	7	https://static.orchids.in.ua/img/cattleya-warneri-concolor-hi-x-cattleya-warneri-venosa-suave-foto-1208.jpg
885	Cattleya warneri integra 'Evandro Perini' x Cattleya warneri inegra-orlata-pincelada 'Leonor'	B/S	890	0	7	https://static.orchids.in.ua/img/cattleya-warneri-integra-evandro-perini-x-inegra-orlata-pincelada-leonor-foto-2563.jpg
895	Cattleya warneri semi alba ('Goiabeiras' x 'Guindani')	B/S	1026	0	7	https://static.orchids.in.ua/img/cattleya-warneri-semi-alba-goiabeiras-x-guindani-foto-6350.jpg
905	Cattleya warneri trilabelo 'Marcos Zanoni' x Cattleya schilleriana	B/S	1092	0	7	https://static.orchids.in.ua/img/cattleya-warneri-trilabelo-marcos-zanoni-x-cattleya-schilleriana-foto-3447.jpg
913	Cattleya warscewiczii coerulea ('La Floresta' x '62614')	S/S	870	0	7	
924	Cattleytonia Why Not (yellow) 4N x sib	B/S	1160	0	7	https://static.orchids.in.ua/img/1-foto-6143.jpg
935	Epicattleya Siam Jade 'Avo'	NB/S	280	0	7	https://static.orchids.in.ua/img/1-foto-6406.jpg
944	Laelia alaori x sincorana	B/S	420	0	7	https://static.orchids.in.ua/img/1-foto-4245.jpg
955	Laelia bradei	F/S	524	0	7	https://static.orchids.in.ua/img/1-foto-6914.jpg
965	Laelia dayana coerulea 'Blue'	NB/S	567	0	7	https://static.orchids.in.ua/img/1-foto-5894.jpg
974	Laelia grandis tipo 'Edmundo Num 04' x SELF		675	0	7	https://static.orchids.in.ua/img/laelia-grandis-tipo-edmundo-num-04-x-self-foto-6117.jpg
978	Laelia jongheana	B/S	1392	0	7	https://static.orchids.in.ua/img/1-foto-262.jpg
984	Laelia lobata tipo ('Bela Vista' x 'Dna Niedja')	NB/S	840	0	7	https://static.orchids.in.ua/img/1-foto-6907.jpg
987	Laelia mantiqueirae x pumila alba	F/S	1080	0	7	https://static.orchids.in.ua/img/laelia-mantiqueirae-x-pumila-alba-foto-3969.jpg
988	Laelia milleri	F/S	580	0	7	https://static.orchids.in.ua/img/laelia-milleri-foto-1523.jpg
994	Laelia perrinii semi-alba	B/S	1248	0	7	https://static.orchids.in.ua/img/laelia-perrinii-semi-alba-foto-1210.jpg
602	Cattleya labiata rubra integra orlata x labiata rubra integra orlata pincelada	NB/S	1300	0	7	https://static.orchids.in.ua/img/1-foto-6604.jpg
612	Cattleya lawrenceana coerulea 'A' x lawrenceana coerulea 'B'		1480	0	7	
622	Cattleya Little Fairy 'Yellow Hydrangea'	B/S	320	0	7	https://static.orchids.in.ua/img/1-foto-6404.jpg
632	Cattleya Loogtone x Chocolate Drop	F/S	368	0	7	https://static.orchids.in.ua/img/cattleya-loogtone-x-chocolate-drop-foto-6822.jpg
642	Cattleya lueddemanniana concolor	S/S	490	0	7	https://static.orchids.in.ua/img/cattleya-lueddemanniana-concolor-foto-5618.jpg
651	Cattleya lueddemanniana rubra 'Dark Giant' x self	B/S	702	0	7	https://static.orchids.in.ua/img/cattleya-lueddemanniana-rubra-dark-giant-x-self-foto-3436.jpg
661	Cattleya maxima	B/S	720	0	7	https://static.orchids.in.ua/img/1-foto-3389.jpg
670	Cattleya maxima alba x semi-alba	B/S	720	0	7	
680	Cattleya maxima semi alba	NB/S	675	0	7	https://static.orchids.in.ua/img/cattleya-maxima-semi-alba-awz-x-self-foto-1536.jpg
690	Cattleya mendelii (Hui Yun)	B/S	1080	0	7	https://static.orchids.in.ua/img/cattleya-mendelii-hui-yun-foto-6369.jpg
700	Cattleya mossiae semialba x Cattleya Sierra Blanca 'Mount Whitney'	F/S	1056	0	7	https://static.orchids.in.ua/img/cattleya-mossiae-semialba-x-cattleya-sierra-blanca-mount-whitney-foto-6845.jpg
709	Cattleya nobilior coerulescens	NB/S	617	0	7	https://static.orchids.in.ua/img/1-foto-6268.jpg
720	Cattleya percivaliana ('Kawasaki' x 'Selecao')	B/S	1280	0	7	
730	Cattleya percivaliana tipo ('Summit' x ‘Centro Remolacha')	B/S	1450	0	7	https://static.orchids.in.ua/img/cattleya-percivaliana-tipo-summit-x-%E2%80%98centro-remolacha-foto-6345.jpg
739	Cattleya Royal Cognac 'The Best'	F/S	1260	0	7	https://static.orchids.in.ua/img/cattleya-royal-cognac-the-best-foto-5994.jpg
749	Cattleya schilleriana 'Ibiraçú' x Cattleya schilleriana 'Água Surda'	B/S	1560	0	7	https://static.orchids.in.ua/img/1-foto-1191.jpg
759	Cattleya schilleriana coerulea 'Caliman' x coerulea 'Gilson'	NB/S	3480	0	7	
768	Cattleya schilleriana var sanderiana	NB/S	560	0	7	https://static.orchids.in.ua/img/cattleya-schilleriana-var-sanderiana-foto-6285.jpg
778	Cattleya schofieldiana 'GU' x Cattleya schofieldiana 'Jubarte'	B/S	756	0	7	https://static.orchids.in.ua/img/cattleya-schofieldiana-gu-x-cattleya-schofieldiana-jubarte-foto-6115.jpg
788	Cattleya Sea Breeze 'Fellraths Pride'	B/S	320	0	7	https://static.orchids.in.ua/img/cattleya-sea-breeze-fellraths-pride-foto-172.jpg
798	Cattleya trianae 'Fine Variety' (98-8) x Cattleya trianae 'Junio' (12-8)	B/S	675	0	7	https://static.orchids.in.ua/img/cattleya-trianae-fine-variety-98-8-x-cattleya-trianae-junio-12-8-foto-6327.jpg
808	Cattleya trianae alba XXXX x Cattleya trianae amoena 'Rainha'	B/S	1450	0	7	https://static.orchids.in.ua/img/1-foto-3197.jpg
818	Cattleya trianae concolor 'Orion'	B/S	5980	0	7	https://static.orchids.in.ua/img/1-foto-5813.jpg
827	Cattleya velutina	B/S	1350	0	7	https://static.orchids.in.ua/img/cattleya-velutina-foto-4663.jpg
837	Cattleya violacea flamea 'SVO' x violacea flamea 'Icabaru'	NB/S	1170	0	7	https://static.orchids.in.ua/img/1-foto-5883.jpg
849	Cattleya walkeriana coerulea 'Blue Moon'	B/S	1300	0	7	https://static.orchids.in.ua/img/1-foto-5799.jpg
860	Cattleya warneri alba 'Alvinha' x Cattleya warneri semi alba integra orlata	B/S	925	0	7	https://static.orchids.in.ua/img/cattleya-warneri-alba-alvinha-x-cattleya-warneri-semi-alba-integra-orlata-foto-2688.jpg
870	Cattleya warneri coerulea 'Carolina' x SELF	NB/S	540	0	7	https://static.orchids.in.ua/img/cattleya-warneri-caerulea-carolina-x-self-foto-2557.jpg
880	Cattleya warneri concolor escura 'Blumenfest' x warneri concolor 'Z-300' XXX		598	0	7	https://static.orchids.in.ua/img/cattleya-warneri-concolor-escura-blumenfest-x-warneri-concolor-z-300-xxx-foto-6104.jpg
889	Cattleya warneri integra orlata-pincelada 'Superba' x SELF	B/S	980	0	7	https://static.orchids.in.ua/img/cattleya-warneri-integra-orlata-pincelada-superba-x-self-foto-1207.jpg
900	Cattleya warneri semi-alba ('Guindani' x 'Pater Noster')	B/S	1080	0	7	https://static.orchids.in.ua/img/cattleya-warneri-semi-alba-guindani-x-pater-noster-foto-6336.jpg
910	Cattleya warscewiczii alba 'Leo Holguin'	F/S	8100	0	7	https://static.orchids.in.ua/img/cattleya-warscewiczii-alba-leo-holguin-foto-6884.jpg
920	Cattleya Whitei alba (warneri alba x schilleriana alba)	NB/S	894	0	7	
930	Caulocattleya Chantilly Lace Twinkle	B/S	980	0	7	https://static.orchids.in.ua/img/caulocattleya-chantilly-lace-twinkle-foto-4932.jpg
939	Hawkinsara Koolau Sunset 'Hawaii'	B/S	925	0	7	https://static.orchids.in.ua/img/hawkinsara-koolau-sunset-hawaii-foto-2443.jpg
950	Laelia anceps semi alba	B/S	360	0	7	https://static.orchids.in.ua/img/2-foto-6631.jpg
960	Laelia crispa (alba x tipo striata)	B/S	1380	0	7	https://static.orchids.in.ua/img/laelia-crispa-alba-x-tipo%C2%A0striata-foto-6903.jpg
970	Laelia gouldiana	F/S	650	0	7	https://static.orchids.in.ua/img/1-foto-2819.jpg
979	Laelia jongheana 'Big pink'	B/S	1134	0	7	https://static.orchids.in.ua/img/laelia-jongheana-foto-6284.jpg
982	Laelia lobata alba plena	B/S	1980	0	7	https://static.orchids.in.ua/img/laelia-lobata-var-alba-plena-foto-1513.jpg
989	Laelia perinii semi alba 'W.F.' x Laelia perrinii alba 'R.A.'	B/S	1317	0	7	https://static.orchids.in.ua/img/1-foto-2573.jpg
991	Laelia perrinii alba 'AM' x Laelia perrinii alba 'RK'	B/S	990	0	7	https://static.orchids.in.ua/img/laelia-perrinii-alba-am-x-laelia-perrinii-alba-rk-foto-2574.jpg
992	Laelia perrinii concolor 'AWZ' x Laelia perrinii concolor 'HG'	NB/S	990	0	7	https://static.orchids.in.ua/img/laelia-perrinii-concolor-awz-x-laelia-perrinii-concolor-hg-foto-2590.jpg
1000	Laelia praestans (rubra 'Tormenta' x escura 'Bella')	B/S	598	0	7	https://static.orchids.in.ua/img/laelia-praestans-rubra-tormenta-x-escura-bella-foto-6329.jpg
1001	Laelia praestans x Brassavola digbyana	S/S	320	0	7	https://static.orchids.in.ua/img/laelia-praestans-x-brassavola-digbyana-foto-4288.jpg
1002	Laelia pumila	B/S	560	0	7	https://static.orchids.in.ua/img/laelia-pumila-foto-220.jpg
872	Cattleya warneri coerulea 'Suzuki' x warneri coerulea 'Carolina'	B/S	1026	0	7	https://static.orchids.in.ua/img/cattleya-warneri-coerulea-suzuki-x-warneri-coerulea-carolina-x-self-foto-5148.jpg
882	Cattleya warneri escura 'Corrego D'antas' x Cattleya warneri escura integra orlata	B/S	540	0	7	https://static.orchids.in.ua/img/1-foto-3445.jpg
891	Cattleya warneri rubra 'Jetiba' x warneri escura 'Belezinha'	NB/S	598	0	7	https://static.orchids.in.ua/img/cattleya-warneri-rubra-jetiba-x-warneri-escura-belezinha-foto-6103.jpg
901	Cattleya warneri semi-alba ('Pater Noster' x 'Guindani')	B/S	1080	0	7	https://static.orchids.in.ua/img/1-foto-6337.jpg
912	Cattleya warscewiczii coerulea 'Angarita' x self	F/S	13500	0	7	https://static.orchids.in.ua/img/cattleya-warscewiczii-coerulea-angarita-x-self-foto-5336.jpg
922	Cattleya x Whitei (schilleriana x warneri)	B/S	523	0	7	https://static.orchids.in.ua/img/cattleya-x-whitei-schilleriana-x-warneri-foto-4039.jpg
931	(Dialaeliocattleya Silver Star x Laeliocattleya Angel Heart) 'SVO') x Laelia Finckeniana 'Kennedys' 4N	B/S	945	0	7	https://static.orchids.in.ua/img/1-foto-5880.jpg
941	Laelia alaori alba 'Snow Flakes' x Laelia alaori alba 'SC'	F/S	1839	0	7	https://static.orchids.in.ua/img/laelia-alaori-alba-snow-flakes-x-laelia-alaori-alba-sc-foto-829.jpg
951	Laelia anceps var disciplianta lineata striata x self	B/S	1875	0	7	https://static.orchids.in.ua/img/laelia-anceps-var-disciplianta-lineata-striata-x-self-foto-6756.jpg
961	Laelia crispa carnea 'Mignon' x self		1189	0	7	https://static.orchids.in.ua/img/1-foto-1061.jpg
971	Laelia grandis	NB/S	780	0	7	https://static.orchids.in.ua/img/laelia-grandis-foto-1520.jpg
980	Laelia jongheana alba	B/S	1680	0	7	https://static.orchids.in.ua/img/laelia-jongheana-alba-foto-4075.jpg
983	Laelia lobata (coerulea x alba) x (coerulea)	F/S	1480	0	7	https://static.orchids.in.ua/img/1-foto-6909.jpg
990	Laelia perrini concolor 'AWZ' x Laelia perrini delicata 'AM' XXXX	B/S	1270	0	7	https://static.orchids.in.ua/img/laelia-perrini-concolor-awz-x-laelia-perrini-delicata-am-xxxx-foto-3501.jpg
993	Laelia perrinii concolor 'HG' x SELF	B/S	1026	0	7	https://static.orchids.in.ua/img/laelia-perrinii-concolor-hg-x-self-foto-2575.jpg
997	Laelia praestans (escura 'Bella' x rubra 'Tormenta')	B/S	598	0	7	https://static.orchids.in.ua/img/laelia-praestans-escura-bella-x-rubra-tormenta-foto-6332.jpg
999	Laelia praestans rosada	B/S	594	0	7	https://static.orchids.in.ua/img/laelia-praestans-rosada-foto-6333.jpg
1003	Laelia pumila 'Black Diamond x 'Kam' x Laelia pumila 'Gerson'	F/S	1080	0	7	https://static.orchids.in.ua/img/laelia-pumila-black-diamond-x-kam-x-laelia-pumila-gerson-foto-2606.jpg
1004	Laelia pumila ('Z-15' x 'Jungle')	B/S	756	0	7	https://static.orchids.in.ua/img/laelia-pumila-z-15-x-jungle-foto-6352.jpg
1007	Laelia pumila coerulea 'Paraopeba'	B/S	5400	0	7	https://static.orchids.in.ua/img/laelia-pumila-coerulea-paraopeba-foto-6254.jpg
1009	Laelia pumila (oculata 'Imperatriz' x coerulea 'OK')	B/S	810	0	7	https://static.orchids.in.ua/img/laelia-pumila-oculata-imperatriz-x-caerulea-ok-foto-6354.jpg
1011	Laelia pumila (vinho 'Vinho' x oculata 'Imperatriz')	B/S	598	0	7	https://static.orchids.in.ua/img/laelia-pumila-vinho-vinho-x-oculata-imperatriz-foto-6330.jpg
1013	Laelia purpurata alba ('Cunha' x 'Campea') x Cattleya leopoldii 'Cetro de Esmeraldas'	F/S	1215	0	7	https://static.orchids.in.ua/img/laelia-purpurata-alba-cunha-x-campea-x-cattleya-leopoldii-cetro-de-esmeraldas-foto-4214.jpg
1014	Laelia purpurata (Anelata 'Adans' x Anelata)	B/S	1467	0	7	https://static.orchids.in.ua/img/laelia-purpurata-anelata-adans-x-anelata-foto-2030.jpg
1017	Laelia purpurata atropurpurea (rubra) 'Black' x SELF	B/S	1480	0	7	https://static.orchids.in.ua/img/purpurata-atropurpurea-rubra-black-x-self-foto-2577.jpg
1019	Laelia purpurata estriata 'Doracy' x self	B/S	925	0	7	https://static.orchids.in.ua/img/laelia-purpurata-estriata-doracy-x-self-foto-2274.jpg
1021	Laelia purpurata flamea	B/S	1120	0	7	https://static.orchids.in.ua/img/1-foto-6915.jpg
1023	Laelia purpurata flamea-sanguinea x sib	NB/S	756	0	7	https://static.orchids.in.ua/img/1-foto-6434.jpg
1024	Laelia purpurata flammea 'Jean Webster' x self	NB/S	847	0	7	https://static.orchids.in.ua/img/laelia-purpurata-flammea-jean-webster-x-self-foto-2806.jpg
1027	Laelia purpurata roxo-violeta x carnea	F/S	1476	0	7	
1029	Laelia purpurata rubra		980	0	7	https://static.orchids.in.ua/img/1-foto-6613.jpg
1031	Laelia purpurata rubra x sanguinea		980	0	7	https://static.orchids.in.ua/img/1-foto-6623.jpg
1033	Laelia purpurata Russelliana	F/S	1120	0	7	https://static.orchids.in.ua/img/1-foto-6916.jpg
1034	Laelia purpurata russelliana x self	B/S	336	0	7	https://static.orchids.in.ua/img/1-foto-6540.jpg
1036	Laelia purpurata schusteriana	B/S	656	0	7	https://static.orchids.in.ua/img/1-foto-6878.jpg
1039	Laelia purpurata striata	F/S	1120	0	7	https://static.orchids.in.ua/img/laelia-purpurata-striata-hsinying-foto-2616.jpg
1040	Laelia purpurata suave 'Sissi' x Laelia purpurata russeliana 'Maria Cristina'		1370	0	7	https://static.orchids.in.ua/img/laelia-purpurata-suave-sissi-x--laelia-purpurata-russeliana-maria-cristina-foto-2581.jpg
1041	Laelia purpurata (tipo x flamea)		1300	0	7	
1044	Laelia purpurata werkhauseri	F/S	1260	0	7	https://static.orchids.in.ua/img/laelia-purpurata-werkhauseri-foto-4127.jpg
1047	Laelia rubescens semi alba	F/S	469	0	7	https://static.orchids.in.ua/img/1-foto-5543.jpg
1049	Laelia sincorana	B/S	692	0	7	https://static.orchids.in.ua/img/1-foto-6922.jpg
1050	Laelia sincorana (concolor 'BO' x (sincorana alba x SELF))	NB/S	594	0	7	https://static.orchids.in.ua/img/laelia-sincorana-concolor-bo-x-l-sincorana-alba-x-self-foto-6355.jpg
1051	Laelia sincorana (quase semi alba) x SELF	NB/S	1780	0	7	https://static.orchids.in.ua/img/laelia-sincorana-quase-semi-alba-x-self-foto-6356.jpg
1052	Laelia sincorana XXXX x Laelia sincorana coerulea	F/S	1015	0	7	https://static.orchids.in.ua/img/laelia-sincorana-xxxx-x-laelia-sincorana-coerulea-foto-1154.jpg
1058	Laelia tenebrosa aurea x sib	B/S	1980	0	7	https://static.orchids.in.ua/img/1-foto-6877.jpg
874	Cattleya warneri coerulescens 'J. Dias de Castro' x SELF	B/S	980	0	7	https://static.orchids.in.ua/img/1-foto-2558.jpg
884	Cattleya warneri escura integra 'Sao Rafael' x SELF	B/S	598	0	7	
894	Cattleya warneri semi alba 'Geneva' x Laelia praestans alba	F/S	799	0	7	https://static.orchids.in.ua/img/cattleya-warneri-semi-alba-geneva-x-laelia-praestans-alba-foto-2597.jpg
903	Cattleya warneri suavissima 'Ricardo Bells' x SELF		1189	0	7	https://static.orchids.in.ua/img/1-foto-2567.jpg
915	Cattleya warscewiczii sanderiana x self	S/S	698	0	7	https://static.orchids.in.ua/img/1-foto-6191.jpg
926	Cattlianthe Sagarik Wax 'Dark Africa' (Cattleya Summerland Girl x Cattlianthe Chocolate Drop)	F/S	793	0	7	https://static.orchids.in.ua/img/cattlianthe-sagarik-wax-dark-africa-foto-2782.jpg
936	Epicattleya Siam Jade (Cattleya Penny Kuroda x Epicattleya Vienna Woods)	F/S	435	0	7	https://static.orchids.in.ua/img/epicattleya-siam-jade-avo-foto-1667.jpg
946	Laelia anceps coerulea 'Fort Caroline'	B/S	5625	0	7	https://static.orchids.in.ua/img/1-foto-6758.jpg
956	Laelia cinnabarina	B/S	560	0	7	https://static.orchids.in.ua/img/laelia-cinnabarina-foto-724.jpg
966	Laelia dayana tipo x self	B/S	940	0	7	https://static.orchids.in.ua/img/laelia-dayana-tipo-x-self-foto-1150.jpg
976	Laelia grandis (vinicolor x vinicolor)	NB/S	857	0	7	https://static.orchids.in.ua/img/laelia-grandis-vinicolor-x-vinicolor-foto-2732.jpg
985	Laelia lucasiana	F/S	560	0	7	https://static.orchids.in.ua/img/laelia-lucasiana1-foto-763.jpg
986	Laelia majale (sin. speciosa)	F/S	1566	0	7	https://static.orchids.in.ua/img/laelia-majale-foto-2629.jpg
995	Laelia praestans	F/S	660	0	7	https://static.orchids.in.ua/img/laelia-praestans-foto-1525.jpg
996	Laelia praestans ('Lena' x 'Edelweiss')	B/S	594	0	7	https://static.orchids.in.ua/img/laelia-praestans-lena-x-edelweiss-foto-6324.jpg
998	Laelia praestans (escura 'Safira' x 'California Star')	B/S	698	0	7	https://static.orchids.in.ua/img/laelia-praestans-escura-safira-x-california-star-foto-6325.jpg
1005	Laelia pumila alba	B/S	3940	0	7	https://static.orchids.in.ua/img/laelia-pumila-alba-foto-4077.jpg
1006	Laelia pumila (coerulea 'Nr 1' x alba 'HI) x SIBLING	B/S	1080	0	7	https://static.orchids.in.ua/img/laelia-pumila-coerulea-nr-1-x-alba-hi-x-sibling-foto-6353.jpg
1008	Laelia pumila coerulea 'Paraopeba'	B/S	5400	0	7	https://static.orchids.in.ua/img/laelia-pumila-coerulea-paraopeba-foto-6254.jpg
1010	Laelia pumila rubra 'Charme da Morada' x self	B/S	840	0	7	https://static.orchids.in.ua/img/laelia-pumila-rubra-charme-da-morada-foto-6255.jpg
1012	Laelia purpurata 'Three Lip'	B/S	925	0	7	https://static.orchids.in.ua/img/laelia-purpurata-three-lip-foto-3154.jpg
1015	Laelia purpurata argolao x sib	B/S	1192	0	7	https://static.orchids.in.ua/img/laelia-purpurata-argolao-x-sib-foto-2272.jpg
1016	Laelia purpurata atropurpurea 'Black' x Laelia purpurata atro-rubra	NB/S	715	0	7	https://static.orchids.in.ua/img/laelia-purpurata-atropurpurea-black-x-laelia-purpurata-atro-rubra-foto-2576.jpg
1018	Laelia purpurata carnea ('Rosaura' x 'Ohara')	NB/S	744	0	7	https://static.orchids.in.ua/img/laelia-purpurata-carnea-rosaura-x-ohara-foto-6478.jpg
1020	Laelia purpurata estriata suave 'AWZ' x Laelia purpurata estriata suave 'Pedra Azul'	B/S	1498	0	7	https://static.orchids.in.ua/img/1-foto-3489.jpg
1022	Laelia purpurata (flamea marginata x flamea marginata)	B/S	834	0	7	https://static.orchids.in.ua/img/laelia-purpurata-flamea-marginata-x-flamea-marginata-foto-3166.jpg
1025	Laelia purpurata graciana 'Ano Novo' x Laelia purpurata graciana 'Reis Magos'	NB/S	715	0	7	https://static.orchids.in.ua/img/laelia-purpurata-graciana-ano-novo-x-laelia-purpurata-graciana-reis-magos-foto-2578.jpg
1026	Laelia purpurata mandayana		1300	0	7	https://static.orchids.in.ua/img/1-foto-6612.jpg
1028	Laelia purpurata roxo-violeta x self	B/S	1200	0	7	https://static.orchids.in.ua/img/laelia-purpurata-roxo-violeta-x-self-foto-2275.jpg
1030	Laelia purpurata rubra flamea 'Osorio' x Cattleya leopoldii 'Marrom Glace'	B/S	1180	0	7	https://static.orchids.in.ua/img/laelia-purpurata-rubra-flamea-osorio-x-cattleya-leopoldii-marrom-glace-foto-3500.jpg
1032	Laelia purpurata rubra-sanguinea 'Black' x Laelia purpurata sanguinea 'Cardeal'	B/S	803	0	7	https://static.orchids.in.ua/img/laelia-purpurata-rubra-sanguinea-black-x-laelia-purpurata-sanguinea-cardeal-foto-2579.jpg
1035	Laelia purpurata sanguinea x striata	B/S	1080	0	7	https://static.orchids.in.ua/img/laelia-purpurata-sanguinea-x-striata-foto-3903.jpg
1037	Laelia purpurata seideliana sanguinea	F/S	1120	0	7	https://static.orchids.in.ua/img/1-foto-6924.jpg
1038	Laelia purpurata semi alba 'Deschamps' x Laelia purpurata semi alba 'Sindarosa'	B/S	750	0	7	
1042	Laelia purpurata (trilabelo x Striata orla bca 'Cheida')	B/S	1467	0	7	https://static.orchids.in.ua/img/laelia-purpurata-trilabelo-x-striata-orla-bca-cheida-foto-2032.jpg
1043	Laelia purpurata var russelliana 'Gracicata'		980	0	7	https://static.orchids.in.ua/img/1-foto-6611.jpg
1045	Laelia purpurata werkhauseri x sib	B/S	1048	0	7	https://static.orchids.in.ua/img/laelia-purpurata-werkhauseri-x-sib-foto-2276.jpg
1046	Laelia reginae	F/S	650	0	7	https://static.orchids.in.ua/img/laelia-reginae-foto-1122.jpg
1048	Laelia rupestris	B/S	450	0	7	https://static.orchids.in.ua/img/laelia-rupestris-foto-1156.jpg
1053	Laelia superbiens	F/S	1940	0	7	https://static.orchids.in.ua/img/laelia-superbiens-foto-1121.jpg
1054	Laelia tenebrosa 'Aline' x Laelia tenebrosa 'Gloriosa'	B/S	754	0	7	https://static.orchids.in.ua/img/laelia-tenebrosa-aline-x-laelia-tenebrosa-gloriosa-foto-2686.jpg
1055	Laelia tenebrosa 'Fumacina Fujita' x Laelia tenebrosa extra XXX		1015	0	7	https://static.orchids.in.ua/img/laelia-tenebrosa-fumacina-fujita-x-laelia-tenebrosa-extra-xxx-foto-2586.jpg
1056	Laelia tenebrosa 'Fumacina Fujita' x SELF		725	0	7	https://static.orchids.in.ua/img/laelia-tenebrosa-fumacina-fujita-x-self-foto-6129.jpg
1057	Laelia tenebrosa ('Stewarts 68807' x 'Rainforest')	S/S	540	0	7	https://static.orchids.in.ua/img/1-foto-5889.jpg
1059	Laelia tenebrosa (Tipo x Maria Fumaca')	B/S	870	0	7	https://static.orchids.in.ua/img/laelia-tenebrosa-tipo-x-maria-fumaca-foto-2277.jpg
52	Dendrobium Dawn Maree 4N x Peng Seng	NB/S	398	0	2	https://static.orchids.in.ua/img/dendrobium-dawn-maree-4n-x-peng-seng-foto-6636.jpg
57	Dendrobium farmeri	B/S	430	0	2	https://static.orchids.in.ua/img/dendrobium-farmeri-foto-6529.jpg
59	Dendrobium findlayanum	F/S	786	0	2	https://static.orchids.in.ua/img/dendrobium-findlayanum-foto-2084.jpg
61	Dendrobium forbesii	F/S	810	0	2	https://static.orchids.in.ua/img/1-foto-2848.jpg
63	Dendrobium Frosty Dawn 'Eye' (formosa x Dawn Marie)	NB/S	274	0	2	https://static.orchids.in.ua/img/1-foto-6525.jpg
65	Dendrobium hancockii	B/S	414	0	2	https://static.orchids.in.ua/img/dendrobium-hancockii-foto-3093.jpg
68	Dendrobium hymenanthum	F/S	405	0	2	https://static.orchids.in.ua/img/dendrobium-hymenanthum-foto-4946.jpg
70	Dendrobium Jairak Splash	F/S	226	0	2	https://static.orchids.in.ua/img/dendrobium-jairak-splash-foto-3922.jpg
73	Dendrobium lichenastrum var printecei	B/S	240	0	2	https://static.orchids.in.ua/img/dendrobium-lichenastrum-var-prenticei-foto-3932.jpg
76	Dendrobium Luwin Park x stratiotes	B/S	375	0	2	https://static.orchids.in.ua/img/dendrobium-luwin-park-x-stratiotes-foto-6637.jpg
78	Dendrobium Micro Chip x Nida	B/S	675	0	2	https://static.orchids.in.ua/img/1-foto-6180.jpg
81	Dendrobium moniliforme variegata	B/S	625	0	2	https://static.orchids.in.ua/img/dendrobium-moniliforme-variegata-foto-6592.jpg
84	Dendrobium nobile var. sanderianum	F/S	788	0	2	https://static.orchids.in.ua/img/dendrobium-nobile-var-sanderianum-foto-1907.jpg
87	Dendrobium peguanum	B/S	425	0	2	https://static.orchids.in.ua/img/dendrobium-peguanum-foto-1036.jpg
100	Dendrobium quadrangulare	B/S	551	0	2	
108	Dendrobium seranicum	B/S	1300	0	2	https://static.orchids.in.ua/img/1-foto-6644.jpg
116	Dendrobium striolatum	F/S	540	0	2	https://static.orchids.in.ua/img/dendrobium-striolatum-foto-1045.jpg
126	Dendrobium tetragonum gigantea	NB/S	320	0	2	https://static.orchids.in.ua/img/dendrobium-tetragonum-foto-1047.jpg
136	Dracula chimaera extra big	B/S	1080	0	3	https://static.orchids.in.ua/img/1-foto-6440.jpg
145	Aerangis kotschyana	NB/S	369	0	4	https://static.orchids.in.ua/img/aerangis-kotschyana-foto-4046.jpg
154	Angraecum conchoglossum	S/S	520	0	4	https://static.orchids.in.ua/img/angraecum-conchoglossum-foto-5604.jpg
164	Angulocaste Red Jewel	F/S	270	0	4	https://static.orchids.in.ua/img/angulocaste-red-jewel-foto-2836.jpg
173	Bulbophyllum cruentum	B/S	980	0	4	https://static.orchids.in.ua/img/bulbophyllum-cruentum-foto-4828.jpg
183	Bulbophyllum taiwanense	F/S	547	0	4	https://static.orchids.in.ua/img/bulbophyllum-taiwanense-foto-4835.jpg
193	Coelogyne loheri	B/S	298	0	4	https://static.orchids.in.ua/img/coelogyne-loheri-foto-6687.jpg
203	Cuitlauzina pulchella	F/S	674	0	4	https://static.orchids.in.ua/img/cuitlauzina-pulchella-foto-3946.jpg
213	Encyclia Jan Ragan (profusa x fowliei)	NB/S	405	0	4	https://static.orchids.in.ua/img/1-foto-6144.jpg
223	Epidendrum pseudepidendrum x melanoporphyreum	NB/S	320	0	4	https://static.orchids.in.ua/img/epidendrum-pseudepidendrum-x-melanoporphyreum-foto-5782.jpg
234	Leptotes tenuis	F/S	680	0	4	https://static.orchids.in.ua/img/leptotes-tenuis-foto-6923.jpg
244	Lycaste Auburn '392-3' x Chita Melody 'Green Star'	S/S	1456	0	4	https://static.orchids.in.ua/img/lycaste-auburn-392-3-x-chita-melody-green-star-foto-6211.jpg
254	Lycomormium fiskei	B/S	1514	0	4	https://static.orchids.in.ua/img/lycomormium-fiskei-foto-4801.jpg
264	Maxillaria Fabricio Suarez	B/S	1134	0	4	https://static.orchids.in.ua/img/maxillaria-fabricio-suarez-foto-1357.jpg
274	Maxillaria pseudoreichenheimiana	B/S	810	0	4	https://static.orchids.in.ua/img/maxillaria-pseudoreichenheimiana-foto-5751.jpg
284	Neofinetia falcata	F/S	290	0	4	https://static.orchids.in.ua/img/neofinetia-falcata-foto-1494.jpg
294	Omoea philippinensis	F/S	810	0	4	https://static.orchids.in.ua/img/1-foto-5214.jpg
305	Pleurothallis marthae	B/S	1370	0	4	https://static.orchids.in.ua/img/pleurothallis-marthae-foto-1070.jpg
315	Rhynchostele maculatum	B/S	698	0	4	https://static.orchids.in.ua/img/rhynchostele-maculatum-foto-1140.jpg
325	Stereochilus dalatensis	S/S	425	0	4	https://static.orchids.in.ua/img/stereochilus-dalatensis-foto-5207.jpg
335	Catasetum Joao Stivali x pileatum Imperiales	B/S	1125	0	6	
345	Catasetum pileatum x schmidtianum	B/S	985	0	6	
355	Clowesia Grace Dunn 'Chadds Ford' x Catasetum Orchidglade 'Davie Ranches'	B/S	1260	0	6	https://static.orchids.in.ua/img/1-foto-5554.jpg
361	Clowesia Rebecca Northen 'Grapefruit Pink' x Catasetum cirrhaeoides 'SVO Darkness'	B/S	1420	0	6	https://static.orchids.in.ua/img/clowesia-rebecca-northen-grapefruit-pink-x-catasetum-cirrhaeoides-svo-darkness-foto-5939.jpg
371	Fredclarkeara Dark There After 'SVO Crazy Good' x Catasetum John C Burchett 'Ursa Major'	B/S	1160	0	6	https://static.orchids.in.ua/img/fredclarkeara-dark-there-after-svo-crazy-good-x-catasetum-john-c-burchett-ursa-major-foto-5578.jpg
381	Fredclarkeara (Mormodia Painted Desert 'SVO' x Catasetum Alexa 'Good One')	B/S	1450	0	6	https://static.orchids.in.ua/img/fredclarkeara-mormodia-painted-desert-svo--x-catasetum-alexa-good-one-foto-5934.jpg
390	Brassavola digbyana x Rhyncholaeliocattleya Green Devil	B/S	963	0	7	https://static.orchids.in.ua/img/brassavola-digbyana-x-rhyncholaeliocattleya-green-devil-foto-2180.jpg
400	Brassocatanthe Jairak Fire Star	B/S	275	0	7	https://static.orchids.in.ua/img/1-foto-5970.jpg
410	Brassocattleya Keowee 'Wings of Fire'	B/S	360	0	7	https://static.orchids.in.ua/img/brassocattleya-keowee-wings-of-fire-foto-6663.jpg
423	Brassolaeliocattleya Dickie Brooks 'Cole #6' x Brassolaeliocattleya Chia Lin 'Shinsu #1'	NB/S	754	0	7	https://static.orchids.in.ua/img/brassolaeliocattleya-dickie-brooks-cole-6-x-brassolaeliocattleya-chia-lin-shinsu-1-foto-2418.jpg
431	Brassolaeliocattleya Fort Watson 'Mendenhall'	B/S	1174	0	7	https://static.orchids.in.ua/img/brassolaeliocattleya-fort-watson-mendenhall-foto-2420.jpg
1063	Laelia tereticaulis	F/S	840	0	7	https://static.orchids.in.ua/img/1-foto-6926.jpg
1060	Laelia tenebrosa vinicolor 'Eduardo' x Laelia tenebrosa 'Fumacina Fujita'		1015	0	7	https://static.orchids.in.ua/img/laelia-tenebrosa-vinicolor-eduardo-x-laelia-tenebrosa-fumacina-fujita-foto-909.jpg
1071	Laeliocattleya Canhamiana coerulea 'Azure Skies' (C. mossiae x L. purpurata)	S/S	250	0	7	https://static.orchids.in.ua/img/1-foto-636.jpg
1077	Laeliocattleya Dorothy Fiene 'Sydney'	B/S	405	0	7	https://static.orchids.in.ua/img/1-foto-6408.jpg
1086	Laeliocattleya Joao Paulo Fontes x Brassolaeliocattleya Oconee Mendenhall		724	0	7	https://static.orchids.in.ua/img/laeliocattleya-joao-paulo-fontes-x-brassolaeliocattleya-oconee-mendenhall-foto-484.jpg
1096	Laeliocattleya Sierra Skies 'Leone' (Lc. Parysatis x C. mossiae)	F/S	695	0	7	https://static.orchids.in.ua/img/1-foto-6400.jpg
1106	Laeliocattleya Voltaire (C G Roebling х Cattleya dowiana)	NB/S	810	0	7	https://static.orchids.in.ua/img/laeliocattleya-voltaire-c-g-roebling-%D1%85-cattleya-dowiana-foto-6850.jpg
1116	Potinara Chief Free 'Happy Tuesday'	F/S	693	0	7	https://static.orchids.in.ua/img/potinara-chief-free-happy-tuesday-foto-1609.jpg
1127	Potinara Oconee Circle	NB/S	925	0	7	https://static.orchids.in.ua/img/potinara-oconee-circle-foto-2455.jpg
1136	Potinara Tzeng-wen Free x (PrincessTakamado x Blc Chianhoo Beauty)	B/S	320	0	7	https://static.orchids.in.ua/img/potinara-tzeng-wen-free-x-princesstakamado-x-blc-chianhoo-beauty-foto-5292.jpg
1146	Rhyncholaeliocattleya Amazing Thailand 'Magican'	B/S	550	0	7	https://static.orchids.in.ua/img/rhyncholaeliocattleya-amazing-thailand-magican-foto-6696.jpg
1152	Rhyncholaeliocattleya Chialin Ruby '88-1'	B/S	540	0	7	https://static.orchids.in.ua/img/1-foto-6411.jpg
1162	Rhyncholaeliocattleya Haadyai Delight x Cattleya Tainan City	B/S	415	0	7	https://static.orchids.in.ua/img/rhyncholaeliocattleya-haadyai-delight-x-cattleya-tainan-city-foto-6736.jpg
1172	Rhyncholaeliocattleya (King Harold x Monroe Walk)	B/S	670	0	7	https://static.orchids.in.ua/img/rhyncholaeliocattleya-king-harold-x-monroe-walk-foto-4442.jpg
1178	Rhyncholaeliocattleya Rungnapha Fancy 'Warm Welcome' x Amazing Thailand 'Ranbow'	NB/S	175	0	7	https://static.orchids.in.ua/img/rhyncholaeliocattleya-rungnapha-fancy-warm-welcome-x-amazing-thailand-ranbow-foto-6733.jpg
1188	Rhyncholaeliocattleya Subprasert '#1'	B/S	960	0	7	https://static.orchids.in.ua/img/rhyncholaeliocattleya-subprasert-1-foto-6869.jpg
1199	Rhyncholaeliocattleya Waianae Leopard 'Ching Hua'	B/S	810	0	7	https://static.orchids.in.ua/img/rhyncholaeliocattleya-waianae-leopard-ching-hua-foto-2093.jpg
1209	Sophrocattleya Crystelle Smith 'N R'	B/S	320	0	7	https://static.orchids.in.ua/img/1-foto-5851.jpg
1218	Sophrolaeliocattleya Newberry Radiance x Sophrolaeliocattleya Sierra Doll 'Lenette'	NB/S	925	0	7	https://static.orchids.in.ua/img/sophrolaeliocattleya-newberry-radiance-x-sophrolaeliocattleya-sierra-doll-lenette-foto-2462.jpg
1229	Ada aurantiaca	B/S	972	0	8	https://static.orchids.in.ua/img/ada-aurantiaca-foto-68.jpg
1239	Mclellanara Pagan Love Song 'Cupid's Beau'	F/S	270	0	8	https://static.orchids.in.ua/img/mclellanara-pagan-love-song-cupids-beau-foto-2594.jpg
1250	Odontonia Papageno 'Lavender Lady'	B/S	530	0	8	https://static.orchids.in.ua/img/odontonia-papageno-lavender-lady-foto-2160.jpg
1261	Oncidium (Tolumnia) hybrids	F/S	328	0	8	https://static.orchids.in.ua/img/oncidium-tolumnea-mix-foto-1490.jpg
1270	Rossioglossum 'Rawdon Jester' (Rossioglossum grande x Rossoiglossum williamsianum)	B/S	464	0	8	https://static.orchids.in.ua/img/rossioglossum-rawdon-jester-foto-1624.jpg
1279	Wilsonara Golden Afternoon	B/S	528	0	8	https://static.orchids.in.ua/img/wilsonara-golden-afternoon-foto-2046.jpg
1288	Paphiopedilum ang-thong 'Sogo' x Paphiopedilum concolor alba 'Golden Emperor'	B/S	1358	0	9	https://static.orchids.in.ua/img/paphiopedilum-ang-thong-sogo-x-paphiopedilum-concolor-alba-golden-emperor-foto-604.jpg
1299	Paphiopedilum charlesworthii x sib	B/S	378	0	9	https://static.orchids.in.ua/img/1-foto-6418.jpg
1309	Paphiopedilum delenatii vinicolor	B/S	897	0	9	https://static.orchids.in.ua/img/paphiopedilum-delenatii-vinicolor-foto-3305.jpg
1319	Paphiopedilum Fanaticum (malipoense x micranthum)	B/S	1090	0	9	https://static.orchids.in.ua/img/1-foto-937.jpg
1330	Paphiopedilum Hama Chilwin x wenshanense	B/S	780	0	9	https://static.orchids.in.ua/img/1-foto-5678.jpg
1340	Paphiopedilum Hsinying Anita 'Shih Yueh' x rothschildianum (Ds 6 NS 29)	B/S	1957	0	9	
1346	Paphiopedilum (Incharm Circle x Enzan Winston's Vale) x Red Shift	B/S	970	0	9	https://static.orchids.in.ua/img/1-foto-5848.jpg
1357	Paphiopedilum Lady Isabel x Susan Booth	B/S	1764	0	9	https://static.orchids.in.ua/img/paphiopedilum-lady-isabel-x-susan-booth-foto-4614.jpg
1367	Paphiopedilum Memoria Larry Heuer (malipoense x emersonii)	NB/S	438	0	9	https://static.orchids.in.ua/img/paphiopedilum-memoria-larry-heuer-malipoense-x-emersonii-foto-1439.jpg
1377	Paphiopedilum Norito Hasegawa (malipoense x armeniacum)	B/S	652	0	9	https://static.orchids.in.ua/img/paphiopedilum-norito-hasegawa-malipoense-x-armeniacum-foto-499.jpg
1387	Paphiopedilum rothschildianum 'Shih Yueh 96-1' x anitum 'Shih Yueh Black'	B/S	3045	0	9	
1398	Paphiopedilum Shun-Fa Golden (hangianum x malipoense)	B/S	480	0	9	https://static.orchids.in.ua/img/paphiopedilum-shun-fa-golden-hangianum-x-malipoense-foto-4349.jpg
1410	Paphiopedilum thaianum	B/S	1160	0	9	https://static.orchids.in.ua/img/paphiopedilum-thaianum-foto-2464.jpg
1421	Paphiopedilum wenshanense x Lippewunder	B/S	700	0	9	
1431	Phragmipedium Franz Glanz (richteri x besseae)	B/S	675	0	9	https://static.orchids.in.ua/img/1-foto-3639.jpg
1440	Phragmipedium Memory Dick Clements (besseae x sargentianum)	B/S	480	0	9	https://static.orchids.in.ua/img/phragmipedium-memoria-dick-clements-foto-1461.jpg
1450	Doritaenopsis Little Gem Stripe x Phalaenopsis Joy Dreamy Jade	F/S	625	0	10	https://static.orchids.in.ua/img/doritaenopsis-little-gem-stripe-x-phalaenopsis-joy-dreamy-jade-foto-4282.jpg
1459	Phalaenopsis AL Peacock x AL Sun Tiger	S/S	780	0	10	https://static.orchids.in.ua/img/phalaenopsis-al-peacock-x-al-sun-tiger-foto-5284.jpg
1468	Phalaenopsis amboinensis x Phalaenopsis Penang Girl	F/S	540	0	10	https://static.orchids.in.ua/img/1-foto-1783.jpg
1067	Laeliocattleya Ballet Folklorico 'Eloquence' (Cattleya Song of Norway x Laelia speciosa)	B/S	780	0	7	https://static.orchids.in.ua/img/laeliocattleya-ballet-folklorico-eloquence-foto-1666.jpg
1072	Laeliocattleya Cariad's Mini-Quinee 'Angel Kiss' (Lc. Mini Purple x C. intermedia)	B/S	658	0	7	https://static.orchids.in.ua/img/laeliocattleya-cariads-mini-quinee-angel-kiss-foto-475.jpg
1062	Laelia tenebrosa x Cattleya Penny Kuroda 'spots'	B/S	675	0	7	https://static.orchids.in.ua/img/laelia-tenebrosa-x-cattleya-penny-kuroda-spots-foto-2278.jpg
1076	Laeliocattleya Dinard 'Blue Heaven'	B/S	550	0	7	https://static.orchids.in.ua/img/laeliocattleya-dinard-blue-heaven-foto-126.jpg
1080	Laeliocattleya Esbetts Clown 'Blumen Insel'	NB/S	1178	0	7	https://static.orchids.in.ua/img/1-foto-5643.jpg
1087	Laeliocattleya Love Knot coerulea x Cattleya mossiae coerulea	B/S	1170	0	7	https://static.orchids.in.ua/img/laeliocattleya-love-knot-coerulea-x-cattleya-mossiae-coerulea-foto-6490.jpg
1090	Laeliocattleya Melody Fair 'Carol'	B/S	1450	0	7	https://static.orchids.in.ua/img/1-foto-5659.jpg
1097	Laeliocattleya Statteriana (Laelia perrinii x Cattleya Labiata)	F/S	1465	0	7	https://static.orchids.in.ua/img/laeliocattleya-statteriana-laelia-perrinii-x-cattleya-labiata-foto-2212.jpg
1099	Laeliocattleya Tahoe Rose fma. coerulea 'G.C.' ( walkeriana x purpurata)	B/S	925	0	7	https://static.orchids.in.ua/img/laeliocattleya-tahoe-rose-coerulea-g-c-foto-671.jpg
1107	Laeliocattleya Wrigleyi 'Blue Heaven'	F/S	1196	0	7	https://static.orchids.in.ua/img/laeliocattleya-wrigleyi-blue-heaven-foto-6826.jpg
1109	Myrmecocattleya Luster	B/S	550	0	7	https://static.orchids.in.ua/img/myrmecocattleya-luster-foto-6656.jpg
1118	Potinara Fordyce Prelude 'First Act'	B/S	810	0	7	https://static.orchids.in.ua/img/potinara-fordyce-prelude-first-act-foto-2453.jpg
1119	Potinara Free Spirit x Brassavola digbyana 'Uncle Pig'	B/S	420	0	7	https://static.orchids.in.ua/img/1-foto-3235.jpg
1128	Potinara Ruby Ace 'Abe' (Lc. Mini Purple x Pot. Waianae Comet)	F/S	556	0	7	https://static.orchids.in.ua/img/potinara-ruby-ace-abe-foto-3630.jpg
1130	Potinara Spanish Eyes 'Tian Mu' (Apricot Flare x Memoria Wang Tzu-Chang)	B/S	540	0	7	https://static.orchids.in.ua/img/potinara-spanish-eyes-tian-mu-foto-330.jpg
1138	Rhyncattleanthe Young-min Orange 'Golden Satisfaction'	F/S	598	0	7	https://static.orchids.in.ua/img/rhyncattleanthe-young-min-orange-golden-satisfaction-foto-4889.jpg
1140	Rhynchocattleya Varut Startrack 'Golden Tiger'	NB/S	234	0	7	https://static.orchids.in.ua/img/rhynchocattleya-varut-startrack-golden-tiger-foto-5820.jpg
1147	Rhyncholaeliocattleya Amazing Thailand 'Rainbow'	S/S	240	0	7	https://static.orchids.in.ua/img/rhyncholaeliocattleya-amazing-thailand-ranbow-foto-6732.jpg
1150	Rhyncholaeliocattleya Chaweewan Sunset '#1'	B/S	725	0	7	https://static.orchids.in.ua/img/rhyncholaeliocattleya-chaweewan-sunset-1-foto-6868.jpg
1153	Rhyncholaeliocattleya Chief Buterfly	S/S	210	0	7	https://static.orchids.in.ua/img/1-foto-5830.jpg
1159	Rhyncholaeliocattleya (Faymiyamoto x President Fortune) x Kaui Starbright x Yen Surprise	NB/S	450	0	7	https://static.orchids.in.ua/img/rhyncholaeliocattleya-faymiyamoto-x-president-fortune-x-kaui-starbright-x-yen-surprise-foto-6824.jpg
1164	Rhyncholaeliocattleya Haadyai Delight x Siam White 'The Best'	B/S	512	0	7	https://static.orchids.in.ua/img/rhyncholaeliocattleya-haadyai-delight-x-siam-white-%E2%80%98the-best%E2%80%99-foto-6738.jpg
1169	Rhyncholaeliocattleya Hsinying Scarlet 'C H'	B/S	520	0	7	https://static.orchids.in.ua/img/1-foto-6666.jpg
1174	Rhyncholaeliocattleya Mem John Yee 'Halona' (Rlc. Waikiki Gold x Rlc. Cool Green)	F/S	2380	0	7	https://static.orchids.in.ua/img/1-foto-5335.jpg
1182	Rhyncholaeliocattleya Shinfong Luohyang x Haadyai Delight	NB/S	130	0	7	https://static.orchids.in.ua/img/1-foto-5418.jpg
1184	Rhyncholaeliocattleya Siam City	B/S	375	0	7	https://static.orchids.in.ua/img/rhyncholaeliocattleya-siam-city-foto-6739.jpg
1192	Rhyncholaeliocattleya Taiwan Chief Wine 'Van Gogh'	NB/S	120	0	7	https://static.orchids.in.ua/img/1-foto-5840.jpg
1194	Rhyncholaeliocattleya Tapestry Peak x Ports Of Paradise 'Big Green'	NB/S	162	0	7	https://static.orchids.in.ua/img/2-foto-5831.jpg
1203	Schomburgkia superbiens alba x SELF		798	0	7	https://static.orchids.in.ua/img/schomburgkia-superbiens-alba-x-self-foto-6091.jpg
1204	Schomburgkia superbiens tipo x superbiens alba		978	0	7	https://static.orchids.in.ua/img/schomburgkia-superbiens-tipo-x-superbiens-alba-foto-6078.jpg
1213	Sophrolaeliocattleya Empress of Mercury 'Guo Lun'	F/S	972	0	7	https://static.orchids.in.ua/img/1-foto-6431.jpg
1214	Sophrolaeliocattleya Endless Love 'Eros' (Lc. Tokyo Magic x Slc. Jeweler's Art)	F/S	608	0	7	https://static.orchids.in.ua/img/sophrolaeliocattleya-endless-love-eros-foto-3589.jpg
1223	Sophronitis cernua	B/S	591	0	7	https://static.orchids.in.ua/img/sophronitis-cernua-foto-986.jpg
1224	Sophronitis cernua var mineira	F/S	1248	0	7	https://static.orchids.in.ua/img/sophronitis-cernua-foto-659.jpg
1233	Beallara Pacific Pastel 'Mauna Loa'	F/S	530	0	8	https://static.orchids.in.ua/img/beallara-pacific-pastel-mauna-loa-foto-3207.jpg
1235	Beallara Tropic Lily 'Ice Palace'	B/S	530	0	8	https://static.orchids.in.ua/img/beallara-tropic-lily-ice-palace-foto-2166.jpg
1241	Miltonia candida	B/S	810	0	8	https://static.orchids.in.ua/img/miltonia-candida-foto-3996.jpg
1245	Miltonia spectabilis	B/S	405	0	8	https://static.orchids.in.ua/img/miltonia-spectabilis-foto-1950.jpg
1253	Oncidium beyrodtioides	B/S	1215	0	8	https://static.orchids.in.ua/img/oncidium-beyrodtioides-foto-5077.jpg
1256	Oncidium nanum	B/S	870	0	8	https://static.orchids.in.ua/img/oncidium-nanum-foto-3831.jpg
1263	Oncidium Tsiku Marguerite 'Chian-Tzy Dragon #1'	B/S	270	0	8	https://static.orchids.in.ua/img/oncidiumtsiku-marguerite-chian-tzy-dragon-1-foto-6534.jpg
1267	Psychopsis Mariposa 'Twins'	F/S	624	0	8	https://static.orchids.in.ua/img/1-foto-6415.jpg
1273	Tolumnia Jairak Rainbow 'Charming'	F/S	383	0	8	https://static.orchids.in.ua/img/tolumnia-jairak-rainbow-charming-foto-4036.jpg
1277	Vuylstekeara Yokara 'Perfection' x Oncidium leucochillum	F/S	375	0	8	https://static.orchids.in.ua/img/vuylstekeara-yokara-perfection-x-oncidium-leucochillum-foto-1747.jpg
1068	Laeliocattleya Bella var rubra (Cattleya labiata rubra 'Red Queen' BM/JOGA x Laelia purpurata rubra)	B/S	1034	0	7	https://static.orchids.in.ua/img/laeliocattleya-bella-var-rubra-foto-2447.jpg
1073	Laeliocattleya Chan Hsiu Jewel 'San Mei' (Cattleya Moscombe x Laeliocattleya Wayndora)	F/S	432	0	7	https://static.orchids.in.ua/img/laeliocattleya-chan-hsiu-jewel-san-mei-foto-356.jpg
1064	Laelia xanthina x Cattleya schilleriana	F/S	1268	0	7	https://static.orchids.in.ua/img/laelia-xanthina-x-cattleya-schilleriana-foto-1853.jpg
1078	Laeliocattleya Elizabeth Fulton 'Michel'	NB/S	532	0	7	https://static.orchids.in.ua/img/laeliocattleya-elizabeth-fulton-michel-foto-4435.jpg
1081	Laeliocattleya Fonte da Saudade	F/S	920	0	7	https://static.orchids.in.ua/img/laeliocattleya-fonte-da-saudade-foto-478.jpg
1088	Laeliocattleya Luminosa (tenebrosa х dowiana)	B/S	1240	0	7	https://static.orchids.in.ua/img/1-foto-4667.jpg
1091	Laeliocattleya Miss Wonderful 'Imperialis' (C. Mari's Song x L. anceps)	B/S	1260	0	7	https://static.orchids.in.ua/img/1-foto-5995.jpg
1098	Laeliocattleya Summerland Girl 'Orchidglade' x Schomburgkia schultzei 'Old Sherry'	NB/S	1080	0	7	https://static.orchids.in.ua/img/1-foto-5868.jpg
1101	Laeliocattleya Taiwan Beauty	F/S	336	0	7	https://static.orchids.in.ua/img/laeliocattleya-taiwan-beauty-foto-6523.jpg
1108	Laeliocattleya Yellow Bird 'Venice'	B/S	493	0	7	https://static.orchids.in.ua/img/laeliocattleya-yellow-bird-venice-foto-6745.jpg
1111	Myrmecocattleya RIO's Little Treasure	B/S	750	0	7	https://static.orchids.in.ua/img/myrmecocattleya-rios-little-treasure-foto-6718.jpg
1114	Myrmecophila tibicinis x Brassavola nodosa	B/S	550	0	7	https://static.orchids.in.ua/img/1-foto-6855.jpg
1122	Potinara Haw Yuan Gold x Brassolaeliocattleya Pamela Hetherington 'Coronation'	B/S	780	0	7	https://static.orchids.in.ua/img/potinara-haw-yuan-gold-x-brassolaeliocattleya-pamela-hetherington-coronation-foto-5907.jpg
1124	Potinara Love Tapestry 'Popular Song' (Sl. Psyche x Blc. Love Sound)	B/S	540	0	7	https://static.orchids.in.ua/img/2-foto-670.jpg
1133	Potinara Susan Fender 'Cover Girl'	B/S	841	0	7	https://static.orchids.in.ua/img/potinara-susan-fender-cover-girl-foto-2457.jpg
1134	Potinara Susan Fender 'Newberry'	B/S	760	0	7	https://static.orchids.in.ua/img/potinara-susan-fender-newberry-foto-2458.jpg
1143	Rhyncholaeliocattleya Amamzing Thailand 'Rainbow' x Haadyai Delight	B/S	695	0	7	https://static.orchids.in.ua/img/rhyncholaeliocattleya-amamzing-thailand-rainbow-x-haadyai-delight-foto-6735.jpg
1144	Rhyncholaeliocattleya Amazing Tailand x Yen 24 Carat	NB/S	320	0	7	https://static.orchids.in.ua/img/rhyncholaeliocattleya-amazing-tailand-x-yen-24-carat-foto-6710.jpg
1155	Rhyncholaeliocattleya Chief Sunlight 'Yellow Ruby'	NB/S	234	0	7	https://static.orchids.in.ua/img/rhyncholaeliocattleya-chief-sunlight-yellow-ruby-foto-5821.jpg
1156	Rhyncholaeliocattleya Chushan	NB/S	320	0	7	https://static.orchids.in.ua/img/1-foto-5414.jpg
1165	Rhyncholaeliocattleya Hall of Flame	S/S	175	0	7	https://static.orchids.in.ua/img/rhyncholaeliocattleya-hall-of-flame-foto-6708.jpg
1167	Rhyncholaeliocattleya Hey Song 'Amazing Thailand'	F/S	17300	0	7	https://static.orchids.in.ua/img/rhyncholaeliocattleya-hey-song-amazing-thailand-foto-6713.jpg
1176	Rhyncholaeliocattleya Napa Valentine x Amazing Tailand	NB/S	175	0	7	https://static.orchids.in.ua/img/rhyncholaeliocattleya-napa-valentine-x-amazing-tailand-foto-6712.jpg
1177	Rhyncholaeliocattleya Pathom Gold	NB/S	360	0	7	https://static.orchids.in.ua/img/rhyncholaeliocattleya-pathom-gold-foto-6823.jpg
1186	Rhyncholaeliocattleya Siam Red	B/S	460	0	7	https://static.orchids.in.ua/img/rhyncholaeliocattleya-siam-red-foto-6705.jpg
1187	Rhyncholaeliocattleya Siam White 'The Best'	F/S	460	0	7	https://static.orchids.in.ua/img/rhyncholaeliocattleya-siam-white-the-best-foto-6703.jpg
1196	Rhyncholaeliocattleya Tzeng-Wen Sunset 'Sweet potato'	B/S	325	0	7	https://static.orchids.in.ua/img/rhyncholaeliocattleya-tzeng-wen-sunset-sweet-potato-foto-6512.jpg
1197	Rhyncholaeliocattleya Village Chief Rose	B/S	540	0	7	https://static.orchids.in.ua/img/1-foto-5852.jpg
1206	Sophrocattleya Ann Komine 'Breathless'	F/S	1120	0	7	https://static.orchids.in.ua/img/sophrocattleya-ann-komine-breathless-foto-567.jpg
1208	Sophrocattleya Candy Ball	B/S	978	0	7	https://static.orchids.in.ua/img/sophrocattleya-candy-ball-foto-5095.jpg
1216	Sophrolaeliocattleya Jillicoc (Sophrolaeliocattleya Jillian Lee x Sophronitis coccinea)	S/S	273	0	7	https://static.orchids.in.ua/img/sophrolaeliocattleya-jillicoc-foto-4290.jpg
1219	Sophrolaeliocattleya Pink Doll 'Garnet Sea' (Slc. Tangerine Jewel x L. pumila)	B/S	820	0	7	https://static.orchids.in.ua/img/sophrolaeliocattleya-pink-doll-garnet-sea-foto-668.jpg
1225	Sophronitis coccinea flava	S/S	574	0	7	https://static.orchids.in.ua/img/1-foto-6011.jpg
1227	Sophronitis coccinea var lobbii	S/S	435	0	7	https://static.orchids.in.ua/img/1-foto-6013.jpg
1230	Beallara Dreamy 'Kool 'n Kinky'	B/S	530	0	8	https://static.orchids.in.ua/img/beallara-dreamy-kool-n-kinky-foto-2165.jpg
1237	Beallara Tropic Tom 'Pale Face'	B/S	530	0	8	https://static.orchids.in.ua/img/beallara-tropic-tom-pale-face-foto-2617.jpg
1240	Miltassia Estrelita 'Sweet Senorita'	B/S	336	0	8	https://static.orchids.in.ua/img/miltassia-estrelita-sweet-senorita-foto-2491.jpg
1247	Odontioda Atahualpa	F/S	816	0	8	https://static.orchids.in.ua/img/odontioda-atahualpa-foto-4568.jpg
1249	Odontoglossum trilobum x Odontocidium Tiger Glow	B/S	580	0	8	https://static.orchids.in.ua/img/1-foto-728.jpg
1258	Oncidium stacyi	B/S	810	0	8	https://static.orchids.in.ua/img/oncidium-stacyi-foto-5849.jpg
1259	Oncidium stramineum	B/S	643	0	8	https://static.orchids.in.ua/img/oncidium-stramineum-foto-4436.jpg
1268	Psychopsis Mariposa Three Lip	F/S	624	0	8	https://static.orchids.in.ua/img/psychopsis-mariposa-three-lip-foto-6899.jpg
1269	Psychopsis papilio	S/S	480	0	8	https://static.orchids.in.ua/img/psychopsis-papilio-foto-6676.jpg
1280	Wilsonara Pacific Panache 'Kenny Boy'	B/S	530	0	8	https://static.orchids.in.ua/img/wilsonara-pacific-panache-kenny-boy-foto-2502.jpg
1281	Wilsonara Space Mine 'Red Rendezvous'	NB/S	484	0	8	https://static.orchids.in.ua/img/wilsonara-space-mine-red-rendezvous-foto-2503.jpg
1069	Laeliocattleya Bonanza Queen	B/S	405	0	7	https://static.orchids.in.ua/img/1-foto-6407.jpg
1065	Laelia Zip (tenebrosa x milleri)	B/S	695	0	7	https://static.orchids.in.ua/img/1-foto-6065.jpg
1074	Laeliocattleya Chyong Guu Swan 'Ruby Lip'	F/S	498	0	7	https://static.orchids.in.ua/img/1-foto-5968.jpg
1079	Laeliocattleya Ericoi (C. warneri alba x L. praestans alba)	B/S	492	0	7	https://static.orchids.in.ua/img/laeliocattleya-ericoi-foto-6331.jpg
1085	Laeliocattleya Irene Finney x Cattleya mossiae 4N	S/S	324	0	7	https://static.orchids.in.ua/img/laeliocattleya-irene-finney-x-cattleya-mossiae-4n-foto-6310.jpg
1089	Laeliocattleya Magic Bell 'New Trick'	NB/S	672	0	7	https://static.orchids.in.ua/img/laeliocattleya-magic-bell-new-trick-foto-5332.jpg
1095	Laeliocattleya Sagarik Wax 'Silk Ball' x Sophrolaeliocattleya Aloha Jewel 'Ho May'	B/S	487	0	7	https://static.orchids.in.ua/img/2-foto-3340.jpg
1100	Laeliocattleya Tainan City 'General' (Royal Emperor x Waianae Sunset)	B/S	675	0	7	https://static.orchids.in.ua/img/laeliocattleya-tainan-city-general-foto-6737.jpg
1105	Laeliocattleya Vivi Arosemena	F/S	1215	0	7	https://static.orchids.in.ua/img/1-foto-5810.jpg
1110	Myrmecocattleya RIO's 'Little Red'	B/S	550	0	7	https://static.orchids.in.ua/img/5-foto-6695.jpg
1115	Potinara Chief Emperor 'Sunset'	B/S	487	0	7	https://static.orchids.in.ua/img/potinara-chief-emperor-sunset-foto-2408.jpg
1120	Potinara Fu Shu Glory 'Happy Holiday'	B/S	420	0	7	https://static.orchids.in.ua/img/fu-shu-glory-ks-foto-5372.jpg
1125	Potinara Luna Jaune 'Celebration' x Brassavola digbyana	F/S	788	0	7	https://static.orchids.in.ua/img/potinara-luna-jaune-celebration-x-brassavola-digbyana-foto-3228.jpg
1129	Potinara Shinfong Little Love x Blc. Tzeng-Wen Beauty	B/S	459	0	7	https://static.orchids.in.ua/img/1-foto-5842.jpg
1135	Potinara Tzeng-Wen Free (Pot. Free Spirit x Blc. Tzeng-Wen Beauty)	B/S	405	0	7	https://static.orchids.in.ua/img/1-foto-5857.jpg
1139	Rhynchobrassoleya Chief Cindy 'Perfume'	B/S	670	0	7	https://static.orchids.in.ua/img/1-foto-4440.jpg
1145	Rhyncholaeliocattleya Amazing Thailand 'Gold Star'	B/S	2260	0	7	https://static.orchids.in.ua/img/rhyncholaeliocattleya-amazing-thailand-gold-star-foto-6734.jpg
1149	Rhyncholaeliocattleya Bangkok Sunlight	NB/S	360	0	7	https://static.orchids.in.ua/img/rhyncholaeliocattleya-bangkok-sunlight-foto-6827.jpg
1157	Rhyncholaeliocattleya Chyong Guu Linnet 'Smile'	B/S	540	0	7	https://static.orchids.in.ua/img/1-foto-5738.jpg
1160	Rhyncholaeliocattleya Focus Taiwan 'Persimmon'	B/S	470	0	7	https://static.orchids.in.ua/img/rhyncholaeliocattleya-focus-taiwan-persimmon-foto-6661.jpg
1166	Rhyncholaeliocattleya Hey Song	F/S	1480	0	7	https://static.orchids.in.ua/img/rhyncholaeliocattleya-hey-song-foto-6742.jpg
1170	Rhyncholaeliocattleya Kawnprapa	B/S	414	0	7	https://static.orchids.in.ua/img/rhyncholaeliocattleya-kawnprapa-foto-6707.jpg
1175	Rhyncholaeliocattleya (Mems Tiang x Mari song) x Amazing Tailand	NB/S	320	0	7	https://static.orchids.in.ua/img/rhyncholaeliocattleya-mems-tiang-x-mari-song-x-amazing-tailand-foto-6711.jpg
1180	Rhyncholaeliocattleya Shinaphat Diamond 'Golden Wing'	B/S	345	0	7	https://static.orchids.in.ua/img/rhyncholaeliocattleya-shinaphat-diamond-golden-wing-foto-6709.jpg
1185	Rhyncholaeliocattleya Siam Fancy x Nell Hammer	B/S	520	0	7	
1190	Rhyncholaeliocattleya Suvarnabhumi Delight 'Salmon Queen'	B/S	345	0	7	https://static.orchids.in.ua/img/rhyncholaeliocattleya-suvarnabhumi-delight-salmon-queen-foto-6715.jpg
1195	Rhyncholaeliocattleya Thong Suparn 'Siam' x Petch Phaithoon	B/S	345	0	7	https://static.orchids.in.ua/img/rhyncholaeliocattleya-thong-suparn-siam-x-petch-phaithoon-foto-6741.jpg
1200	Rhyncholaeliocattleya Yen Golden Master Piece x Cattleya Tainan City	B/S	416	0	7	https://static.orchids.in.ua/img/rhyncholaeliocattleya-yen-golden-master-piece-x-cattleya-tainan-city-foto-6740.jpg
1205	Schoomburgkia marginata	B/S	980	0	7	https://static.orchids.in.ua/img/schomburgkia-marginata-foto-4701.jpg
1210	Sophrolaelia Orpetii 'Bella Vista'	NB/S	347	0	7	https://static.orchids.in.ua/img/1-foto-6016.jpg
1215	Sophrolaeliocattleya Hsin Buu Lady 'Red Beauty' (Laelia anceps x Sophrolaeliocattleya Wendy's Valentine)	B/S	675	0	7	https://static.orchids.in.ua/img/sophrolaeliocattleya-hsin-buu-lady-red-beauty-foto-2481.jpg
1220	((Sophrolaeliocattleya Pink Splash x Sophronitis cernua) x Laelia milleri) 'CT-Peach River'	NB/S	270	0	7	https://static.orchids.in.ua/img/1-foto-6537.jpg
1226	Sophronitis coccinea flava Tomiyama	S/S	435	0	7	https://static.orchids.in.ua/img/1-foto-6012.jpg
1231	Beallara Mathias 'Bai Bai Blackbird'	B/S	530	0	8	https://static.orchids.in.ua/img/beallara-mathias-bai-bai-blackbird-foto-2483.jpg
1236	Beallara Tropic Splendor 'Everglades'	F/S	501	0	8	https://static.orchids.in.ua/img/beallara-tropic-splendour-everglade-foto-1997.jpg
1243	Miltonia flavescens	F/S	672	0	8	https://static.orchids.in.ua/img/1-foto-2601.jpg
1246	Miltonidium Rosy Sunset	F/S	528	0	8	https://static.orchids.in.ua/img/miltonidium-rosy-sunset-foto-3776.jpg
1251	Odontonia Papageno 'Mi Amour'	B/S	530	0	8	https://static.orchids.in.ua/img/odontonia-papageno-mi-amour-foto-2155.jpg
1254	Oncidium limminghei	NB/S	572	0	8	https://static.orchids.in.ua/img/oncidium-limminghei-foto-2281.jpg
1260	Oncidium Sweet Sugar 'Yellow King'	F/S	528	0	8	https://static.orchids.in.ua/img/oncidium-sweet-sugar-yellow-king-foto-2371.jpg
1264	Oncidium Twinkle 'CT-Red Fantasy'	B/S	270	0	8	https://static.orchids.in.ua/img/oncidium-twinkle-ct-red-fantasy-foto-6536.jpg
1271	Tolumnia hawkesiana	B/S	375	0	8	https://static.orchids.in.ua/img/tolumnia-hawkesiana-foto-6690.jpg
1274	Trichocentrum cebolleta	F/S	446	0	8	https://static.orchids.in.ua/img/trichocentrum-cebolleta-foto-4466.jpg
1282	Wilsonara Tan Treasures 'Autumn Nights'	B/S	530	0	8	https://static.orchids.in.ua/img/wilsonara-tan-treasures-autumn-nights-foto-2504.jpg
1283	Wilsonara Tan Treasures 'Puppy Pleasures'	B/S	810	0	8	https://static.orchids.in.ua/img/wilsonara-tan-treasures-puppy-pleasures-foto-2505.jpg
1292	Paphiopedilum armeniacum x godefroyae	NB/S	898	0	9	https://static.orchids.in.ua/img/1-foto-4942.jpg
1070	Laeliocattleya C G Roebling 'Blue Indigo' (Cattleya gaskelliana x Laelia purpurata)	B/S	598	0	7	https://static.orchids.in.ua/img/laeliocattleya-c-g-roebling-blue-indigo-foto-644.jpg
1066	Laeliocattleya Antonetta Mahan 'S-10' (Lc. Marcia Foster x C. J A Carbone)	F/S	480	0	7	https://static.orchids.in.ua/img/laeliocattleya-antonetta-mahan-s10-foto-638.jpg
1075	Laeliocattleya Cornelia coerulea	F/S	959	0	7	https://static.orchids.in.ua/img/laeliocattleya-cornelia-coerulea-foto-761.jpg
1083	Laeliocattleya Haw Yuan Angel 'Small Beauty' x Brassavola digbyana 'Mr. Pig'	B/S	788	0	7	https://static.orchids.in.ua/img/1-foto-3339.jpg
1084	Laeliocattleya Hiroshima Melody 'Blue Genie'	NB/S	405	0	7	https://static.orchids.in.ua/img/laeliocattleya-hiroshima-melody-blue-genie-foto-6409.jpg
1093	Laeliocattleya Sagarik Wax	B/S	675	0	7	https://static.orchids.in.ua/img/laeliocattleya-sagarik-wax-foto-6543.jpg
1094	Laeliocattleya Sagarik Wax 'Fragrant Sky' x Cattleya walkeriana 'tipo'	B/S	420	0	7	https://static.orchids.in.ua/img/laeliocattleya-sagarik-wax-x-cattleya-walkeriana-tipo-foto-3224.jpg
1103	Laeliocattleya Tropical Sunset 'Oceans Heaven' x Brassolaeliocattleya Tropical Upgrade 'SVO'	B/S	945	0	7	https://static.orchids.in.ua/img/1-foto-5876.jpg
1104	Laeliocattleya Tyl Belle 'Fantasy' (Tyl x Edgard Van Bele)	B/S	1620	0	7	https://static.orchids.in.ua/img/2-foto-2279.jpg
1112	Myrmecophila thomsoniana x Cattleya intermedia	B/S	1450	0	7	https://static.orchids.in.ua/img/1-foto-5983.jpg
1117	Potinara Chief Sweet Orange 'Sweet Orange'	F/S	475	0	7	https://static.orchids.in.ua/img/potinara-chief-sweet-orange-sweet-orange-foto-2409.jpg
1121	Potinara Haw Yuan Gold 'YC#2' (Pot. Lemon Tree x Blc. Tassie Barbero)	B/S	345	0	7	https://static.orchids.in.ua/img/1-foto-2808.jpg
1126	Potinara Miki Fire Ball (Pot. Kat E-Sun x Ctt. Little Fairy 'MIKI')	S/S	178	0	7	https://static.orchids.in.ua/img/1-foto-6401.jpg
1131	Potinara Star Fire (Pot. Rubescence 'SVO' AM/AOS x Lc. Trick or Treat 'Orange Magic' AM/AOS)	NB/S	756	0	7	https://static.orchids.in.ua/img/1-foto-5875.jpg
1137	Recchara Frances Fox	F/S	580	0	7	https://static.orchids.in.ua/img/recchara-frances-fox-foto-4472.jpg
1142	Rhyncholaeliocattleya Ahchung Ruby 'Siam'	F/S	840	0	7	https://static.orchids.in.ua/img/rhyncholaeliocattleya-ahchung-ruby-siam-foto-6825.jpg
1148	Rhyncholaeliocattleya Amazing Thailand x Thong Suparn 'Pure Yellow'	NB/S	140	0	7	https://static.orchids.in.ua/img/rhyncholaeliocattleya-amazing-thailand-x-thong-suparn-pure-yellow-foto-6731.jpg
1151	Rhyncholaeliocattleya Chialin Ruby	B/S	540	0	7	https://static.orchids.in.ua/img/1-foto-6410.jpg
1158	Rhyncholaeliocattleya Cornerstone	B/S	498	0	7	https://static.orchids.in.ua/img/1-foto-6412.jpg
1161	Rhyncholaeliocattleya Green Rattana 'Golden Angel' (Greenwich x Udomrattana)	B/S	560	0	7	https://static.orchids.in.ua/img/rhyncholaeliocattleya-green-rattana-golden-angel-greenwich-x-udomrattana-foto-2794.jpg
1168	Rhyncholaeliocattleya Hey Song Orange	F/S	576	0	7	https://static.orchids.in.ua/img/1-foto-6831.jpg
1171	Rhyncholaeliocattleya King Harold x intermedia	F/S	768	0	7	https://static.orchids.in.ua/img/rhyncholaeliocattleya-king-harold-x-intermedia-foto-4443.jpg
1179	Rhyncholaeliocattleya Rungnapha Fancy x Haw Yuan Beauty (Lady gaga)	B/S	780	0	7	https://static.orchids.in.ua/img/2-foto-6836.jpg
1181	Rhyncholaeliocattleya Shinfong Imperor	B/S	460	0	7	https://static.orchids.in.ua/img/rhyncholaeliocattleya-shinfong-imperor-foto-6704.jpg
1189	Rhyncholaeliocattleya Suriyon Sunset	B/S	773	0	7	https://static.orchids.in.ua/img/rhyncholaeliocattleya-suriyon-sunset-foto-4445.jpg
1191	Rhyncholaeliocattleya Suvarnabhumi Delight 'Salmon Queen' X Cattleya Tainan City 'General'	B/S	540	0	7	https://static.orchids.in.ua/img/1-foto-6871.jpg
1198	Rhyncholaeliocattleya Village Chief Topaz (Chunyeah #1 x Shinfong Luohyang)	B/S	625	0	7	https://static.orchids.in.ua/img/rhyncholaeliocattleya-village-chief-topaz-chunyeah-1-x-shinfong-luohyang-foto-6541.jpg
1201	Rhyncholaeliocattleya Yingluck Smile 'Heart of Gold'	S/S	184	0	7	https://static.orchids.in.ua/img/rhyncholaeliocattleya-yingluck-smile-heart-of-gold-foto-6702.jpg
1207	(Sophrocattleya Beaufort x Laeliocattleya Orglade’s Glow) 'Kewpie'	B/S	315	0	7	https://static.orchids.in.ua/img/1-foto-5837.jpg
1212	Sophrolaeliocattleya Cosmic Dekite	B/S	578	0	7	https://static.orchids.in.ua/img/sophrolaeliocattleya-cosmic-dekite-foto-5850.jpg
1217	Sophrolaeliocattleya Love Castle	F/S	596	0	7	https://static.orchids.in.ua/img/sophrolaeliocattleya-love-castle-foto-493.jpg
1222	Sophronitis bicolor x xanthoglossa	NB/S	485	0	7	https://static.orchids.in.ua/img/sophronitis-bicolor-x-xanthoglossa-foto-5796.jpg
1228	Sophronitis violacea	F/S	698	0	7	https://static.orchids.in.ua/img/sophronitis-violacea-foto-988.jpg
1234	Beallara Tropic 'Tom 'Kinky'	NB/S	530	0	8	https://static.orchids.in.ua/img/beallara-tropic-tom-kinky-foto-2163.jpg
1238	Colmanara Wild Cat 'Bob Cat'	NB/S	272	0	8	https://static.orchids.in.ua/img/colmanara-wild-cat-bob-cat-foto-2875.jpg
1244	Miltonia regnellii	F/S	834	0	8	https://static.orchids.in.ua/img/miltonia-regnellii-foto-2238.jpg
1248	Odontioda Lovely Morning Sayaka 'Very Dark'	F/S	1326	0	8	https://static.orchids.in.ua/img/odontioda-lovely-morning-sayaka-very-dark-foto-4569.jpg
1255	Oncidium Namboh Waltz 'Boso Sweet'	F/S	338	0	8	https://static.orchids.in.ua/img/oncidium-namboh-waltz-boso-sweet1-foto-732.jpg
1257	Oncidium Ron's Rippling Delight 'Pacific Parfait'	B/S	530	0	8	https://static.orchids.in.ua/img/oncidium-rons-rippling-delight-pacific-parfait-foto-2496.jpg
1265	Oncidium vulcanicum	B/S	936	0	8	https://static.orchids.in.ua/img/oncidium-vulcanicum-foto-4812.jpg
1266	Psychopsis Mariposa 'Green Valley'	F/S	624	0	8	https://static.orchids.in.ua/img/2-foto-6900.jpg
1275	Trichopilia Senne Star (tortilis 'large' x turialbae 'alpha')	F/S	435	0	8	https://static.orchids.in.ua/img/trichopillia-senne-star-tortilis-large-x-turialbae-alpha-foto-999.jpg
1276	Vuylstekeara Cindy 'Pinky Lee'	B/S	530	0	8	https://static.orchids.in.ua/img/vuylstekeara-cindy-pinky-lee-foto-2157.jpg
1287	Paphiopedilum ang thong alba	NB/S	895	0	9	https://static.orchids.in.ua/img/paphiopedilum-ang-thong-alba-foto-4941.jpg
1284	Wilsonara Wicked 'Red Head'	F/S	530	0	8	https://static.orchids.in.ua/img/wilsonara-wicked-red-head-foto-2507.jpg
1294	Paphiopedilum bellatulum x anitum	B/S	1260	0	9	https://static.orchids.in.ua/img/1-foto-4623.jpg
1305	Paphiopedilum Daisy Barclay (rothschildianum x leucochilum)	B/S	986	0	9	https://static.orchids.in.ua/img/paphiopedilum-daisy-barclay-rothschildianum-x-leucochilum-foto-4191.jpg
1316	Paphiopedilum Enzan Fruit x Emerald Sea	B/S	847	0	9	https://static.orchids.in.ua/img/paphiopedilum-enzan-fruit-x-emerald-sea-foto-1705.jpg
1321	Paphiopedilum godefroyae	F/S	1080	0	9	https://static.orchids.in.ua/img/paphiopedilum-godefroyae-foto-1426.jpg
1336	Paphiopedilum herrmannii	F/S	405	0	9	https://static.orchids.in.ua/img/paphiopedilum-herrmannii-foto-3583.jpg
1332	Paphiopedilum Harold Koopowitz (rothschildianum 'Eagle' x malipoense)	B/S	810	0	9	https://static.orchids.in.ua/img/paphiopedilum-harold-koopowitz-rothschildianum-eagle-x-malipoense-foto-2744.jpg
1342	Paphiopedilum Hung Sheng Eagle x sanderianum	B/S	1170	0	9	https://static.orchids.in.ua/img/paphiopedilum-hung-sheng-eagle-x-sanderianum-foto-5300.jpg
1352	Paphiopedilum La Honda 'In-Charm' x Paphiopedilum spicerianum 'St. Alban'	B/S	1080	0	9	https://static.orchids.in.ua/img/paphiopedilum-la-honda-in-charm-x-paphiopedilum-spicerianum-st-alban-foto-619.jpg
1363	Paphiopedilum Magic Lantern (micranthum x delenatii)	F/S	480	0	9	https://static.orchids.in.ua/img/paphiopedilum-magic-lantern-micranthum-delenatii-foto-154.jpg
1373	Paphiopedilum niveum	B/S	580	0	9	https://static.orchids.in.ua/img/1-foto-155.jpg
1383	Paphiopedilum Red Shift x Maudiae	B/S	364	0	9	https://static.orchids.in.ua/img/1-foto-6524.jpg
1392	Paphiopedilum Ruby Leopard Vini x charlesworthii	F/S	557	0	9	https://static.orchids.in.ua/img/paphiopedilum-ruby-leopard-vini-x-charlesworthii-foto-3483.jpg
1401	Paphiopedilum St Gratrix x Usuzuki	B/S	1480	0	9	https://static.orchids.in.ua/img/paphiopedilum-st-gratrix-x-usuzuki-foto-5322.jpg
1408	Paphiopedilum superbiens	NB/S	1098	0	9	https://static.orchids.in.ua/img/paphiopedilum-superbiens-foto-1452.jpg
1418	Paphiopedilum Wellesleyanum alba	B/S	1117	0	9	https://static.orchids.in.ua/img/paphiopedilum-wellesleyanum-alba-foto-5143.jpg
1427	Paphiopedilum Yi-Ying Colorful Clouds x Knight's Niveum	B/S	1680	0	9	https://static.orchids.in.ua/img/1-foto-5681.jpg
1437	Phragmipedium kovachii x longifolium	NB/S	1680	0	9	https://static.orchids.in.ua/img/phragmipedium-kovachii-x-longifolium-foto-1688.jpg
1446	Asconopsis Irene Dobkin	B/S	432	0	10	https://static.orchids.in.ua/img/asconopsis-irene-dobkin-elmhurst-foto-217.jpg
1457	Phalaenopsis Ailiao Princess Gelb (Yungho Princess Gelb x Princess Spot)	B/S	610	0	10	https://static.orchids.in.ua/img/phalaenopsis-ailiao-princess-gelb-yungho-princess-gelb-x-princess-spot-foto-5897.jpg
1467	Phalaenopsis amboinensis v common	F/S	810	0	10	https://static.orchids.in.ua/img/1-foto-6581.jpg
1477	Phalaenopsis (Auspice Neihun-lueddemanniana) x Phalaenopsis Kung's Red Cherry	B/S	424	0	10	https://static.orchids.in.ua/img/1-foto-3671.jpg
1487	Phalaenopsis bellina big size	F/S	1250	0	10	https://static.orchids.in.ua/img/phalaenopsis-bellina-foto-6579.jpg
1497	Phalaenopsis Brother Princess 'Hai-Tung'	B/S	470	0	10	https://static.orchids.in.ua/img/phalaenopsis-brother-princess-hai-tung-foto-4303.jpg
1507	Phalaenopsis Chienlung Azure Dragon	S/S	675	0	10	https://static.orchids.in.ua/img/1-foto-5435.jpg
1513	Phalaenopsis Chienlung Dream Bouquet	B/S	2106	0	10	https://static.orchids.in.ua/img/phalaenopsis-chienlung-dream-bouquet-foto-5301.jpg
1523	Phalaenopsis Chienlung Mosaics (Yaphon Sir x hieroglyphica)	B/S	768	0	10	https://static.orchids.in.ua/img/phalaenopsis-chienlung-mosaics-yaphon-sir-x-hieroglyphica-foto-3313.jpg
1534	Phalaenopsis Coral Isles x Phalaenopsis corningiana	F/S	540	0	10	https://static.orchids.in.ua/img/3-foto-2405.jpg
1544	Phalaenopsis CTL Beauty x Yungho Princess Gelb	B/S	675	0	10	https://static.orchids.in.ua/img/phalaenopsis-ctl-beauty-x-yungho-princess-gelb-foto-4227.jpg
1554	Phalaenopsis equestris aurea	B/S	750	0	10	https://static.orchids.in.ua/img/1-foto-6521.jpg
1564	Phalaenopsis (Gelblieber x I-Hsin Spot Eagle)	S/S	522	0	10	https://static.orchids.in.ua/img/phalaenopsis-gelblieber-x-i-hsin-spot-eagle-foto-5508.jpg
1574	Phalaenopsis gigantea 'KF' x lueddemanniana 'KF#8'	F/S	1778	0	10	https://static.orchids.in.ua/img/phalaenopsis-gigantea-kf-x-lueddemanniana-kf8-foto-3673.jpg
1585	Phalaenopsis gigantea x Mituo Venosa	B/S	1160	0	10	https://static.orchids.in.ua/img/1-foto-4551.jpg
1593	Phalaenopsis Guadalupe Pineda 'Red' (MC)	NB/S	405	0	10	https://static.orchids.in.ua/img/1-foto-5271.jpg
1602	Phalaenopsis (Hsinying Fanjo x Mituo Sun) x gigantea	S/S	870	0	10	https://static.orchids.in.ua/img/phalaenopsis-hsinying-fanjo-x-mituo-sun-x-gigantea-foto-4926.jpg
1613	Phalaenopsis javanica x Ld's Bear Queen	B/S	675	0	10	https://static.orchids.in.ua/img/phalaenopsis-javanica-x-lds-bear-queen-foto-5472.jpg
1623	Phalaenopsis Jong's Gigan Cherry 'Jon'	B/S	780	0	10	https://static.orchids.in.ua/img/phalaenopsis-jongs-gigan-cherry-jon-foto-5899.jpg
1631	Phalaenopsis Joy spring Tina 'Tina'	B/S	648	0	10	https://static.orchids.in.ua/img/1-foto-4236.jpg
1642	Phalaenopsis KS Happy Eagle x Jennifer Palermo C-1 Type	B/S	749	0	10	https://static.orchids.in.ua/img/phalaenopsis-ks-happy-eagle-x-jennifer-palermo-c-1-type-foto-4304.jpg
1652	Phalaenopsis KS Surer Zebra (clone)	B/S	810	0	10	https://static.orchids.in.ua/img/ks-surer-zebra-clone-foto-5755.jpg
1663	Phalaenopsis LD Sun Dragon '98' x gigantea 'M-2'	B/S	750	0	10	https://static.orchids.in.ua/img/phalaenopsis-ld-sun-dragon-98-x-gigantea-m-2-foto-6700.jpg
1674	Phalaenopsis LD's Bear King 'YK-14' x Miro Super Star	B/S	940	0	10	https://static.orchids.in.ua/img/phalaenopsis-lds-bear-king-yk-14-x-miro-super-star-foto-5824.jpg
1685	Phalaenopsis LD's Bear Queen x violacea blue	F/S	637	0	10	https://static.orchids.in.ua/img/phalaenopsis-lds-bear-queen-x-violacea-blue-foto-4645.jpg
1694	Phalaenopsis lueddemanniana x amboinensis	F/S	1083	0	10	https://static.orchids.in.ua/img/phalaenopsis-lueddemanniana-x-amboinensis-foto-3688.jpg
1703	Phalaenopsis Magnificent Mibs 'Mituo #3' x Corona 'M-1'	B/S	540	0	10	https://static.orchids.in.ua/img/1-foto-5252.jpg
1285	Paphiopedilum Alma Gavaert 'H.B' x Paphiopedilum In-Charm White 'Chao Chou'	F/S	1313	0	9	https://static.orchids.in.ua/img/paphiopedilum-alma-gavaert-hb-x-paphiopedilum-in-charm-white-chao-chou-foto-933.jpg
1295	Paphiopedilum bellatulum x Shin-Yi Heart	NB/S	1170	0	9	https://static.orchids.in.ua/img/paphiopedilum-bellatulum-x-shin-yi-heart-foto-5026.jpg
1304	Paphiopedilum curtisii	NB/S	495	0	9	https://static.orchids.in.ua/img/paphiopedilum-curtisii-foto-1415.jpg
1314	Paphiopedilum emersonii	NB/S	447	0	9	https://static.orchids.in.ua/img/2-foto-1704.jpg
1325	Paphiopedilum godefroyae P733	B/S	2160	0	9	https://static.orchids.in.ua/img/paphiopedilum-godefroyae-p733-foto-5960.jpg
1370	Paphiopedilum (Michael Koopowitz x sanderianum ) x sanderianum	NB/S	795	0	9	
1344	Paphiopedilum In-Charm Gold	B/S	620	0	9	https://static.orchids.in.ua/img/1-foto-5686.jpg
1354	Paphiopedilum (Lady Isabel x godefroyae)	F/S	1011	0	9	https://static.orchids.in.ua/img/paphiopedilum-lady-isabel-x-godefroyae-foto-3622.jpg
1364	Paphiopedilum malipoense	B/S	486	0	9	https://static.orchids.in.ua/img/1-foto-1438.jpg
1375	Paphiopedilum niveum x Shin-Yi Heart	F/S	876	0	9	https://static.orchids.in.ua/img/paphiopedilum-niveum-x-shin-yi-heart-foto-5320.jpg
1384	Paphiopedilum Rosy Dawn	B/S	870	0	9	https://static.orchids.in.ua/img/paphiopedilum-rosy-dawn-foto-3266.jpg
1395	Paphiopedilum Shin Yi Isabel x rothschildianum	B/S	1480	0	9	https://static.orchids.in.ua/img/paphiopedilum-shin-yi-isabel-x-rothschildianum-foto-4613.jpg
1405	Paphiopedilum stonei x niveum	B/S	560	0	9	https://static.orchids.in.ua/img/paphiopedilum-stonei-x-niveum-foto-5140.jpg
1415	Paphiopedilum venustum x sib	B/S	870	0	9	https://static.orchids.in.ua/img/paphiopedilum-venustum-x-sib-foto-5319.jpg
1426	Paphiopedilum Xia Ya Swallow x sanderianum	B/S	2458	0	9	https://static.orchids.in.ua/img/paphiopedilum-xia-ya-swallow-x-sanderianum-foto-4374.jpg
1436	Phragmipedium kovachii x besseae	NB/S	1120	0	9	https://static.orchids.in.ua/img/1-foto-5610.jpg
1447	Asconopsis Jiaho's Orange x Rhynchostylis coelestis blue	NB/S	675	0	10	https://static.orchids.in.ua/img/1-foto-5176.jpg
1456	Phalaenopsis speciosa 'Miki Purple' (MC)	B/S	870	0	10	https://static.orchids.in.ua/img/phalaenopsis--speciosa-miki-purple-mc-foto-6003.jpg
1464	Phalaenopsis amabilis 'Surabaya'	B/S	1080	0	10	https://static.orchids.in.ua/img/1-foto-6421.jpg
1474	Phalaenopsis Anna-Larati Soekardi x Rhynchostylis coelestis (blue)	B/S	648	0	10	https://static.orchids.in.ua/img/1-foto-5425.jpg
1483	Phalaenopsis bellina 'Fire' x sib	B/S	698	0	10	https://static.orchids.in.ua/img/phalaenopsis-bellina-fire-x-sib-foto-6423.jpg
1493	Phalaenopsis bellina x sib	B/S	520	0	10	https://static.orchids.in.ua/img/1-foto-5914.jpg
1502	Phalaenopsis Chang Maw Jade	B/S	1890	0	10	https://static.orchids.in.ua/img/1-foto-5901.jpg
1512	Phalaenopsis Chienlung Cute Lobi	S/S	540	0	10	https://static.orchids.in.ua/img/phalaenopsis-chienlung-cute-lobi-foto-5189.jpg
1522	Phalaenopsis Chienlung Moonlight x Chienlung Cricket	NB/S	540	0	10	https://static.orchids.in.ua/img/phalaenopsis-chienlung-moonlight-x-chienlung-cricket-foto-5159.jpg
1531	Phalaenopsis Chingher Buddha x Sogo Dio	S/S	420	0	10	https://static.orchids.in.ua/img/phalaenopsis-chingher-buddha-x-sogo-dio-foto-5368.jpg
1540	Phalaenopsis corningiana x sib	B/S	780	0	10	https://static.orchids.in.ua/img/phalaenopsis-corningiana-x-sib-foto-125.jpg
1549	Phalaenopsis Dragon Tree Eagle 'DT168 x Chienlung Golden Diamond	B/S	680	0	10	https://static.orchids.in.ua/img/phalaenopsis-dragon-tree-eagle-dt168-x--chienlung-golden-diamond-foto-5362.jpg
1560	Phalaenopsis (Fortune Buddha x Haur Jin Diamond) x (Ching Her Buddha x Tai-Yi Yellow Bird)	NB/S	320	0	10	https://static.orchids.in.ua/img/phalaenopsis-fortune-buddha-x-haur-jin-diamond-x-ching-her-buddha-x-tai-yi-yellow-bird-foto-5455.jpg
1571	Phalaenopsis gigantea 'Jumbo' x sumatrana green (big)	B/S	695	0	10	
1580	Phalaenopsis gigantea x bellina blue	NB/S	798	0	10	https://static.orchids.in.ua/img/phalaenopsis-gigantea-x-bellina-blue-foto-4542.jpg
1591	Phalaenopsis gigantea x Zheng Min Tyranosaurus	B/S	675	0	10	https://static.orchids.in.ua/img/phalaenopsis-gigantea-x-zheng-min-tyranosaurus-foto-6495.jpg
1601	Phalaenopsis (Hsinying Fanjo x Mituo Sun) Eddy	B/S	810	0	10	https://static.orchids.in.ua/img/phalaenopsis-hsinying-fanjo-x-mituo-sun-eddy-su-foto-4599.jpg
1611	Phalaenopsis javanica alba	B/S	1080	0	10	https://static.orchids.in.ua/img/phalaenopsis-javanica-alba-foto-5403.jpg
1620	Phalaenopsis Joey (gigantea x lueddemanniana)	B/S	810	0	10	
1630	Phalaenopsis Joy Spring Tina 'Anaconda' (Natasha x Hsu Li-Shian)	B/S	22400	0	10	https://static.orchids.in.ua/img/phalaenopsis-joy-spring-tina-anaconda-natasha-x-hsu-li-shian-foto-5247.jpg
1640	Phalaenopsis KS Happy Eagle #3 x bellina blue	B/S	405	0	10	https://static.orchids.in.ua/img/1-foto-4364.jpg
1646	Phalaenopsis KS Martin Tris	B/S	560	0	10	https://static.orchids.in.ua/img/phalaenopsis-ks-martin-tris-foto-5295.jpg
1655	Phalaenopsis LD Bellina Eagle 'Red' x Mituo Princess 'YR'	B/S	680	0	10	https://static.orchids.in.ua/img/1-foto-6387.jpg
1666	Phalaenopsis Ld's Bear King 'Blue Lip' x LD Purple Bear	B/S	672	0	10	https://static.orchids.in.ua/img/phalaenopsis-lds-bear-king-blue-lip-x-ld-purple-bear-foto-5501.jpg
1675	Phalaenopsis Ld's Bear King 'YK-14' x (Ya-Yi Qin x Yin's Bellina Kaiulani)	B/S	810	0	10	https://static.orchids.in.ua/img/phalaenopsis-lds-bear-king-yk-14-x-ya-yi-qin-x-yins-bellina-kaiulani-foto-5377.jpg
1684	Phalaenopsis LD's Bear Queen x Jennifer Palermo	F/S	675	0	10	https://static.orchids.in.ua/img/phalaenopsis-lds-bear-queen-x-jennifer-palermo-foto-5447.jpg
1695	Phalaenopsis Lyndon Bright Sun	F/S	1168	0	10	https://static.orchids.in.ua/img/phalaenopsis-lyndon-bright-sun-foto-6024.jpg
1706	Phalaenopsis mannii black x schilleriana	F/S	485	0	10	https://static.orchids.in.ua/img/1-foto-5275.jpg
1717	Phalaenopsis Mituo Champion King 'Brick Red'	B/S	1080	0	10	https://static.orchids.in.ua/img/phalaenopsis-mituo-champion-king-brick-red-foto-6382.jpg
1286	Paphiopedilum Alma Geveart 'Hager's' x Paphiopedilum philippinense var. alba 'Kou'	F/S	675	0	9	https://static.orchids.in.ua/img/paphiopedilum-alma-geveart-hagers-x-paphiopedilum-philippinense-var-alba-kou-foto-3488.jpg
1296	Paphiopedilum bellatulum x wenshanense	B/S	540	0	9	https://static.orchids.in.ua/img/paphiopedilum--bellatulum-x-wenshanense-foto-5142.jpg
1306	Paphiopedilum Daisy Barclay x leucochilum	B/S	2340	0	9	https://static.orchids.in.ua/img/daisy-barclay-x-leucochilum-foto-5091.jpg
1315	Paphiopedilum emersonii	NB/S	447	0	9	https://static.orchids.in.ua/img/2-foto-1704.jpg
1324	Paphiopedilum godefroyae P729	B/S	1080	0	9	https://static.orchids.in.ua/img/paphiopedilum-godefroyae-p729-foto-5965.jpg
1327	Paphiopedilum godefroyae P747	B/S	1080	0	9	https://static.orchids.in.ua/img/paphiopedilum-godefroyae-p747-foto-5961.jpg
1604	Phalaenopsis hybrid	NB/S	135	0	10	
1338	Paphiopedilum hirsutissimum var esquirolei fma viride 'Rico' SM-DOG	NB/S	624	0	9	https://static.orchids.in.ua/img/paphiopedilum-hirsutissimum-var-esquirolei-fma-viride-rico-sm-dog-foto-6726.jpg
1350	Paphiopedilum kolopakingii topperi x leucochilum alba	B/S	1120	0	9	https://static.orchids.in.ua/img/paphiopedilum-kolopakingii-topperi-x-leucochilum-alba-foto-4974.jpg
1360	Paphiopedilum Liberty Taiwan (micranthum x hangianum)	B/S	980	0	9	https://static.orchids.in.ua/img/paphiopedilum-liberty-taiwan-micranthum-x-hangianum-foto-5032.jpg
1366	Paphiopedilum Maudiae alba	F/S	270	0	9	https://static.orchids.in.ua/img/paphiopedilum-maudiae-alba-foto-3181.jpg
1376	Paphiopedilum niveum x Valwin	B/S	1080	0	9	https://static.orchids.in.ua/img/1-foto-5679.jpg
1386	Paphiopedilum rothschildianum 'In-Charm' x Paphiopedilum Stoned Susan 'In-Charm'	B/S	1943	0	9	https://static.orchids.in.ua/img/paphiopedilum-rothschildianum-in-charm-x-paphiopedilum-stoned-susan-in-charm-foto-2750.jpg
1396	Paphiopedilum Shin-Yi Lady x Michael Koopowitz	B/S	1440	0	9	https://static.orchids.in.ua/img/1-foto-4596.jpg
1407	Paphiopedilum supardii x gigantifolium	B/S	947	0	9	https://static.orchids.in.ua/img/paphiopedilum-supardii-x-gigantifolium-foto-4144.jpg
1416	Paphiopedilum vietnamense	B/S	1620	0	9	https://static.orchids.in.ua/img/paphiopedilum-vietnamense-foto-1456.jpg
1423	Paphiopedilum Winston Churchill x bellatulum	F/S	840	0	9	https://static.orchids.in.ua/img/2-foto-5547.jpg
1432	Phragmipedium Fritz Schomburg (besseae x kovachii)	B/S	3153	0	9	https://static.orchids.in.ua/img/phragmipedium-fritz-schomburg-foto-2304.jpg
1443	Phragmipedium schlimii	B/S	912	0	9	https://static.orchids.in.ua/img/phragmipedium-schlimii-foto-1879.jpg
1453	Doritis pulcherrima var marmorata	F/S	420	0	10	https://static.orchids.in.ua/img/doritis-pulcherrima-var-marmorata-foto-6165.jpg
1462	Phalaenopsis AL Sun Tiger x Zheng Min Tyrannosaurus	NB/S	750	0	10	https://static.orchids.in.ua/img/phalaenopsis-al-sun-tiger-x-zheng-min-tyrannosaurus-foto-4600.jpg
1473	Phalaenopsis Anna-Larati Soekardi x Ascocentrum miniatum	B/S	293	0	10	https://static.orchids.in.ua/img/phalaenopsis-anna-larati-soekardi-x-ascocentrum-miniatum-foto-5770.jpg
1484	Phalaenopsis bellina 'LD' x bellina 'Lee'	B/S	1260	0	10	https://static.orchids.in.ua/img/phalaenopsis--bellina-ld-x-bellina-lee-foto-4590.jpg
1494	Phalaenopsis Brother 'Golden Wave' x Yaphon Goldlight '#3'	B/S	894	0	10	https://static.orchids.in.ua/img/phalaenopsis-brother-golden-wave-x-yaphon-goldlight-3-foto-4286.jpg
1505	Phalaenopsis chibae	B/S	642	0	10	https://static.orchids.in.ua/img/phalaenopsis-chibae-foto-4438.jpg
1517	Phalaenopsis Chienlung Happy Girl CL Red x Black Eagle Tian	B/S	930	0	10	https://static.orchids.in.ua/img/phalaenopsis-chienlung-happy-girl-cl-red-x-black-eagle-tian-foto-4501.jpg
1525	Phalaenopsis Chienlung Puple Rose	B/S	420	0	10	https://static.orchids.in.ua/img/1-foto-5262.jpg
1535	Phalaenopsis Coral Isles x Princess Kaiulani 'TH'	B/S	810	0	10	https://static.orchids.in.ua/img/phalaenopsis-coral-isles-x-princess-kaiulani-th-foto-4230.jpg
1546	Phalaenopsis Diamond Beauty '1202' x Miro Supper Star 'MO198'	B/S	1680	0	10	https://static.orchids.in.ua/img/phalaenopsis-diamond-beauty-1202-x-miro-supper-star-mo198-foto-6303.jpg
1555	Phalaenopsis equestris coerulea	B/S	405	0	10	https://static.orchids.in.ua/img/phalaenopsis-equestris-coerulea-foto-6319.jpg
1565	Phalaenopsis (Gelblieber x mariae)	B/S	754	0	10	https://static.orchids.in.ua/img/phalaenopsis-gelblieber-x-mariae-foto-2884.jpg
1575	Phalaenopsis gigantea 'Meir #1' HCC/AOS	NB/S	1080	0	10	https://static.orchids.in.ua/img/2-foto-5267.jpg
1584	Phalaenopsis gigantea x Mituo Coral Mambonosa	B/S	1160	0	10	https://static.orchids.in.ua/img/phalaenopsis-gigantea-x-mituo-coral-mambonosa-foto-4589.jpg
1595	Phalaenopsis Hannover Passion 'Ching Ruey' x Jong's Red Cherry '#2'	B/S	980	0	10	https://static.orchids.in.ua/img/phalaenopsis-hannover-passion-ching-ruey--x-jongs-red-cherry-2-foto-4270.jpg
1605	Phalaenopsis I-Hsin 'Spot Eagle'	B/S	540	0	10	https://static.orchids.in.ua/img/1-foto-4598.jpg
1614	Phalaenopsis Jennifer Palermo 'C1 type'	F/S	675	0	10	https://static.orchids.in.ua/img/phalaenopsis-jennifer-palermo-c1-type-foto-4301.jpg
1624	Phalaenopsis Jong's Gigan Cherry 'Yaphon'	B/S	560	0	10	
1634	Phalaenopsis Joy Spring Venus 'Tina'	B/S	1890	0	10	https://static.orchids.in.ua/img/1-foto-5666.jpg
1644	Phalaenopsis KS Happy Eagle x tetraspis 'Red #1'	F/S	420	0	10	https://static.orchids.in.ua/img/phalaenopsis-ks-happy-eagle-x-tetraspis-red-1-foto-4370.jpg
1654	Phalaenopsis LD Bear King 'LD' x George Vasquez 'Eureka'	NB/S	290	0	10	https://static.orchids.in.ua/img/3-foto-5381.jpg
1664	Phalaenopsis LD Sun Dragon 'MO98' x Mituo Reflex Dragon 'B1'	B/S	780	0	10	https://static.orchids.in.ua/img/1-foto-6384.jpg
1673	Phalaenopsis LD's Bear King 'YK-10' x spesiosa 'Blue'	B/S	540	0	10	https://static.orchids.in.ua/img/phalaenopsis-lds-bear-king-yk-10-x-spesiosa-blue-foto-6207.jpg
1683	Phalaenopsis Ld's Bear Queen x Chang Mow Evergreen	F/S	1075	0	10	https://static.orchids.in.ua/img/phalaenopsis-lds-bear-queen-x-chang-mow-evergreen-foto-3880.jpg
1691	Phalaenopsis lobbii 'Vietnam' x lobbii var orange	B/S	780	0	10	https://static.orchids.in.ua/img/phalaenopsis-lobbii-vietnam-x-lobbii-var-orange-foto-5279.jpg
1702	Phalaenopsis (Lyndon Reflex x LD's Bear KIng ) 'flava#1'	B/S	1350	0	10	https://static.orchids.in.ua/img/1-foto-6392.jpg
1290	Paphiopedilum (Angel Hair x rothschildianum) x anitum 'Shih yueh'	B/S	1350	0	9	https://static.orchids.in.ua/img/paphiopedilum-angel-hair-x-rothschildianum-x-anitum-shih-yueh-foto-5008.jpg
1300	Paphiopedilum concolor	B/S	425	0	9	https://static.orchids.in.ua/img/1-foto-1700.jpg
1311	Paphiopedilum Delrosi (delenatii x rothschildianum)	F/S	840	0	9	https://static.orchids.in.ua/img/1-foto-1703.jpg
1320	Paphiopedilum Gloria Naugle (rothschildianum x micranthum)	B/S	1160	0	9	https://static.orchids.in.ua/img/paphiopedilum-gloria-naugle-rothschildianum-x-micranthum-foto-3382.jpg
1331	Paphiopedilum hangianum	B/S	878	0	9	https://static.orchids.in.ua/img/1-foto-1708.jpg
1341	Paphiopedilum Hung Sheng Curet × Enzan Fruit	B/S	828	0	9	https://static.orchids.in.ua/img/paphiopedilum-hung-sheng-curet-enzan-fruit-foto-488.jpg
1351	Paphiopedilum kolopakingii var topperi x Betty Bracey	B/S	816	0	9	https://static.orchids.in.ua/img/paphiopedilum-kolopakingii-var-topperi-x-betty-bracey-foto-4534.jpg
1361	Paphiopedilum Lippewunder hybrid	B/S	768	0	9	https://static.orchids.in.ua/img/1-foto-282.jpg
1371	Paphiopedilum micranthum	B/S	540	0	9	https://static.orchids.in.ua/img/paphiopedilum-micranthum-foto-1443.jpg
1380	Paphiopedilum philippinense	NB/S	1170	0	9	https://static.orchids.in.ua/img/paphiopedilum-philippinense-foto-2463.jpg
1389	Paphiopedilum rothschildianum x emersonii	B/S	2700	0	9	https://static.orchids.in.ua/img/paphiopedilum-rothschildianum-x-emersonii-foto-5294.jpg
1399	Paphiopedilum spicerianum	B/S	582	0	9	https://static.orchids.in.ua/img/paphiopedilum-spicerianum-foto-1716.jpg
1409	Paphiopedilum Susanville x Maudiae	B/S	398	0	9	https://static.orchids.in.ua/img/paphiopedilum-susanville-x-maudiae-foto-6522.jpg
1419	Paphiopedilum wellesleyanum album x Iratsume album	F/S	678	0	9	https://static.orchids.in.ua/img/paphiopedilum-wellesleyanum-album-x-iratsume-album-foto-4474.jpg
1429	Phragmipedium besseae flava	B/S	5480	0	9	https://static.orchids.in.ua/img/phragmipedium-besseae-flava-foto-5144.jpg
1439	Phragmipedium Memoria Garren Weaver (pearcei x wallisii)	B/S	398	0	9	https://static.orchids.in.ua/img/phragmipedium-pearcei-x-wallisii-foto-1574.jpg
1449	Doritaenopsis Kenneth Schubert x Phalaenopsis bellina blue	B/S	695	0	10	https://static.orchids.in.ua/img/doritaenopsis-kenneth-schubert-x-phalaenopsis-bellina-blue-foto-3757.jpg
1460	Phalaenopsis AL Sun Hannover 'A-Liang' (MC)	B/S	1620	0	10	https://static.orchids.in.ua/img/phalaenopsis-al-sun-hannover-a-liang-mc-foto-5283.jpg
1470	Phalaenopsis Ambotrana x Kung's Red Cherry	F/S	1080	0	10	https://static.orchids.in.ua/img/phalaenopsis-ambotrana-x-kungs-red-cherry-foto-3875.jpg
1480	Phalaenopsis bellina '#20' x Joshua Irwin Ginsberg 'Su Weay'	B/S	851	0	10	https://static.orchids.in.ua/img/phalaenopsis-bellina-20-x-joshua-irwin-ginsberg-su-weay-foto-4261.jpg
1490	Phalaenopsis bellina coerulea x sib	B/S	378	0	10	https://static.orchids.in.ua/img/1-foto-4403.jpg
1499	Phalaenopsis Buena Jewel x Princess Kaiulani	B/S	540	0	10	https://static.orchids.in.ua/img/phalaenopsis-buena-jewel-x-princess-kaiulani-foto-5371.jpg
1509	Phalaenopsis Chienlung Black Parrot x javanica	B/S	1080	0	10	https://static.orchids.in.ua/img/phalaenopsis-chienlung-black-parrot-x-javanica-foto-5303.jpg
1519	Phalaenopsis Chienlung Kaiulani	B/S	580	0	10	https://static.orchids.in.ua/img/1-foto-5437.jpg
1530	Phalaenopsis Chienlung Zebra	B/S	405	0	10	https://static.orchids.in.ua/img/phalaenopsis-chienlung-zebra-foto-5296.jpg
1541	Phalaenopsis cornu-cervi	F/S	580	0	10	
1551	Phalaenopsis Eddy Phantom (Ruby Vasquez x Chang Yi Halo)	B/S	375	0	10	https://static.orchids.in.ua/img/1-foto-5268.jpg
1561	Phalaenopsis Friday's Princess 'Brother' (Natasha x Princess Kaiulani)	B/S	675	0	10	https://static.orchids.in.ua/img/phalaenopsis-fridays-princess-brother-natasha-x-princess-kaiulani-foto-5900.jpg
1570	Phalaenopsis gigantea	B/S	1560	0	10	https://static.orchids.in.ua/img/1-foto-5746.jpg
1581	Phalaenopsis gigantea x Brother Ambo Passion	NB/S	768	0	10	https://static.orchids.in.ua/img/phalaenopsis-gigantea-x-brother-ambo-passion-foto-3223.jpg
1590	Phalaenopsis gigantea x Yaphon Sir	B/S	405	0	10	https://static.orchids.in.ua/img/phalaenopsis-gigantea-x-yaphon-sir-foto-4031.jpg
1599	Phalaenopsis Ho's Green Marble '#1' x Chang Maw Evergreen 'U-Bix'	B/S	725	0	10	https://static.orchids.in.ua/img/1-foto-4281.jpg
1609	Phalaenopsis Jade Gold (gigantea x venosa 'Red')	B/S	810	0	10	https://static.orchids.in.ua/img/phalaenopsis-jade-gold-gigantea-x-venosa-red-foto-1661.jpg
1617	Phalaenopsis Jennifer Palermo x Dragon Tree Eagle 'DT-168'	B/S	405	0	10	
1625	Phalaenopsis Jong's Gigan Cherry x Kingfisher's Dragon Wing	B/S	405	0	10	https://static.orchids.in.ua/img/1-foto-5533.jpg
1635	Phalaenopsis Joy Spring Venus x Joy Spring Canary 'Orange'	NB/S	675	0	10	https://static.orchids.in.ua/img/phalaenopsis-joy-spring-venus-x-joy-spring-canary-orange-foto-5458.jpg
1647	Phalaenopsis KS Pride Golden Diamond	B/S	580	0	10	https://static.orchids.in.ua/img/1-foto-5721.jpg
1657	Phalaenopsis Ld Emerald Bear x gigantea	S/S	320	0	10	https://static.orchids.in.ua/img/phalaenopsis-ld-emerald-bear-x-gigantea-foto-5581.jpg
1665	Phalaenopsis LD Sun Dragon 'Snake Scales'	B/S	540	0	10	https://static.orchids.in.ua/img/phalaenopsis-ld-sun-dragon-snake-scales-foto-6892.jpg
1676	Phalaenopsis Ld's Bear King 'YK-7' x Dragon Tree Eagle '168'	F/S	920	0	10	https://static.orchids.in.ua/img/phalaenopsis-lds-bear-king-yk-7--x-dragon-tree-eagle-168-foto-4583.jpg
1687	Phalaenopsis Lianher Focus	B/S	480	0	10	https://static.orchids.in.ua/img/phalaenopsis-lianher-focus-foto-6002.jpg
1698	Phalaenopsis Lyndon Crystal Schilleriana (Chingruey's Crystal x schilleriana)	F/S	1260	0	10	https://static.orchids.in.ua/img/phalaenopsis-lyndon-crystal-schilleriana-chingrueys-crystal-x-schilleriana-foto-6022.jpg
1707	Phalaenopsis Meidarland Goldsmith 'MD'	F/S	990	0	10	https://static.orchids.in.ua/img/phalaenopsis-meidarland-goldsmith-md-foto-3929.jpg
1716	Phalaenopsis Mituo Blue Bear 'M-5'	B/S	540	0	10	https://static.orchids.in.ua/img/1-foto-6896.jpg
1726	Phalaenopsis Mituo Golden Jewel 'Point'	B/S	780	0	10	https://static.orchids.in.ua/img/1-foto-5827.jpg
1291	Paphiopedilum armeniacum	B/S	540	0	9	https://static.orchids.in.ua/img/paphiopedilum-armeniacum-foto-1698.jpg
1302	Paphiopedilum concolor var album	F/S	2030	0	9	https://static.orchids.in.ua/img/paphiopedilum-concolor-var-album-foto-5269.jpg
1312	Paphiopedilum dianthum	B/S	1550	0	9	https://static.orchids.in.ua/img/dianthum-foto-5676.jpg
1326	Paphiopedilum godefroyae P738	B/S	1080	0	9	https://static.orchids.in.ua/img/paphiopedilum-godefroyae-p738-foto-5966.jpg
1337	Paphiopedilum hirsutissimum	B/S	870	0	9	https://static.orchids.in.ua/img/paphiopedilum-hirsutissimum-foto-2102.jpg
1349	Paphiopedilum kolopakingii	B/S	810	0	9	https://static.orchids.in.ua/img/paphiopedilum-kolopakingii-foto-4185.jpg
1358	Paphiopedilum leucochilum	F/S	698	0	9	https://static.orchids.in.ua/img/paphiopedilum-leucochilum-foto-2753.jpg
1381	Paphiopedilum primulinum alba	F/S	420	0	9	https://static.orchids.in.ua/img/paphiopedilum-primulinum-alba-foto-4012.jpg
1391	Paphiopedilum rothschildianum x Sunshine Glory x concolor	NB/S	617	0	9	https://static.orchids.in.ua/img/paphiopedilum-rothschildianum-x-sunshine-glory-x-concolor-foto-3923.jpg
1402	Paphiopedilum stonei 'Chou Yi' x anitum	B/S	1172	0	9	https://static.orchids.in.ua/img/paphiopedilum-stonei-chou-yi-x-anitum-foto-4358.jpg
1413	Paphiopedilum venustum	B/S	680	0	9	https://static.orchids.in.ua/img/paphiopedilum-venustum-foto-6743.jpg
1425	Paphiopedilum Woluwense (niveum x rothschildianum)	B/S	679	0	9	https://static.orchids.in.ua/img/paphiopedilum-woluwense-niveum-x-rothschildianum-foto-4040.jpg
1434	Phragmipedium kovachii	B/S	9600	0	9	https://static.orchids.in.ua/img/phragmipedium-kovachii-foto-2329.jpg
1444	Phragmipedium Sedenii	B/S	2340	0	9	https://static.orchids.in.ua/img/phragmipedium-sedenii-foto-3533.jpg
1455	Phalaenopsis bellina x Zuma's Garnet	B/S	728	0	10	https://static.orchids.in.ua/img/phalaenopsis--bellina-x-zumas-garnet-foto-5438.jpg
1466	Phalaenopsis amboinensis 'TH' x Penang Girl 'Chin Ruey'	F/S	711	0	10	https://static.orchids.in.ua/img/phalaenopsis-amboinensis-th-x-penang-girl-chin-ruey-foto-4213.jpg
1476	Phalaenopsis Auspice Knight 'Malayan'	B/S	1080	0	10	https://static.orchids.in.ua/img/phalaenopsis-auspice-knight-malayan-foto-373.jpg
1486	Phalaenopsis bellina alba	B/S	1125	0	10	https://static.orchids.in.ua/img/phalaenopsis-bellina-alba-foto-5310.jpg
1496	Phalaenopsis Brother Peoker 'BL' x gigantea	B/S	973	0	10	https://static.orchids.in.ua/img/phalaenopsis-brother-peoker-bl-x-gigantea-foto-3734.jpg
1506	Phalaenopsis Chielung Kingdom	B/S	1092	0	10	https://static.orchids.in.ua/img/1-foto-5436.jpg
1514	Phalaenopsis Chienlung Eagle King	NB/S	580	0	10	https://static.orchids.in.ua/img/phalaenopsis-chienlung-eagle-king-foto-5179.jpg
1524	Phalaenopsis Chienlung Phoenix	B/S	598	0	10	https://static.orchids.in.ua/img/phalaenopsis-chienlung-phoenix-foto-5164.jpg
1533	Phalaenopsis Chiu Jih Pearl 'Chiu Jih' x Yaphon Goldnight '#3'	B/S	738	0	10	https://static.orchids.in.ua/img/phalaenopsis-chiu-jih-pearl-chiu-jih-x-yaphon-goldnight-3-foto-4279.jpg
1543	Phalaenopsis cornu-cervi (Green peloric) 'Joseph Wu'	F/S	640	0	10	https://static.orchids.in.ua/img/1-foto-5424.jpg
1553	Phalaenopsis equestris alba	B/S	378	0	10	https://static.orchids.in.ua/img/phalaenopsis-equestris-alba-foto-3876.jpg
1562	Phalaenopsis (Gelblieber 'B#1' x Hsia's Focus) x Magnificent Mibs	B/S	780	0	10	https://static.orchids.in.ua/img/phalaenopsis-gelblieber-b1-x-hsias-focus-x-magnificent-mibs-foto-5468.jpg
1573	Phalaenopsis gigantea 'KF#8' x Ho's Kungfong Glory 'KF'	B/S	3524	0	10	https://static.orchids.in.ua/img/phalaenopsis-gigantea-kf8-x-hos-kungfong-glory-kf-foto-4066.jpg
1582	Phalaenopsis gigantea x Corie	NB/S	675	0	10	https://static.orchids.in.ua/img/phalaenopsis-gigantea-x-corie-foto-5365.jpg
1592	Phalaenopsis Grosbeak	F/S	624	0	10	https://static.orchids.in.ua/img/phalaenopsis-grosbeak-foto-2885.jpg
1603	Phalaenopsis Hsinying Fanjo x Sogo Relex ’A-Liang’ (MC)	B/S	1890	0	10	https://static.orchids.in.ua/img/phalaenopsis-hsinying-fanjo-x-sogo-relex-%E2%80%99a-liang%E2%80%99-mc-foto-5442.jpg
1612	Phalaenopsis javanica x gigantea	B/S	780	0	10	https://static.orchids.in.ua/img/phalaenopsis-jawanica-x-gigantea-foto-6723.jpg
1622	Phalaenopsis Jong's Gigan Cherry 'Prince'	B/S	675	0	10	https://static.orchids.in.ua/img/1-foto-5989.jpg
1632	Phalaenopsis Joy spring Tina 'Tina' (Joseph Wu)	B/S	2160	0	10	https://static.orchids.in.ua/img/3-foto-5902.jpg
1641	Phalaenopsis KS Happy Eagle 'LD' x Phalaenopsis bellina 'LD'	F/S	724	0	10	https://static.orchids.in.ua/img/phalaenopsis-ks-happy-eagle-ld-x-phalaenopsis-bellina-ld-foto-3692.jpg
1651	Phalaenopsis KS Super Zebra x Mituo Sun 'AL'	B/S	780	0	10	https://static.orchids.in.ua/img/phalaenopsis-ks-super-zebra-x-mituo-sun-al-foto-4999.jpg
1660	Phalaenopsis LD Purple Bear x bellina	F/S	758	0	10	https://static.orchids.in.ua/img/phalaenopsis-ld-purple-bear-x-bellina-foto-4648.jpg
1670	Phalaenopsis LD's Bear King 'RK-6'	B/S	1250	0	10	https://static.orchids.in.ua/img/1-foto-6028.jpg
1681	Phalaenopsis Ld's Bear King x Samera	B/S	810	0	10	https://static.orchids.in.ua/img/2-foto-5745.jpg
1692	Phalaenopsis lowii	B/S	780	0	10	https://static.orchids.in.ua/img/phalaenopsis-lowii-foto-2105.jpg
1701	Phalaenopsis Lyndon Reflex x LD's Bear King	F/S	765	0	10	https://static.orchids.in.ua/img/phalaenopsis-lyndon-reflex-x-lds-bear-king-foto-4631.jpg
1712	Phalaenopsis Miro Sun Beauty 'Goose Yellow'	B/S	1755	0	10	https://static.orchids.in.ua/img/phalaenopsis-miro-sun-beauty-goose-yellow-foto-5823.jpg
1722	Phalaenopsis Mituo Diamond 'DT Sun'	B/S	1350	0	10	https://static.orchids.in.ua/img/phalaenopsis-mituo-diamond-dt-sun-foto-6299.jpg
1735	Phalaenopsis Mituo Prince 'Bb' x Mituo Reflex 'Dragon'	B/S	1375	0	10	https://static.orchids.in.ua/img/phalaenopsis-mituo-prince-bb-x-mituo-reflex-dragon-foto-6306.jpg
1746	Phalaenopsis Mituo Purple Bear x LD's Bear King	B/S	540	0	10	https://static.orchids.in.ua/img/phalaenopsis-mituo-purple-bear-x-lds-bear-king-foto-6206.jpg
1757	Phalaenopsis Mituo Sun King 'S-R-Spots'	B/S	540	0	10	https://static.orchids.in.ua/img/phalaenopsis-mituo-sun-king-s-r-spots-foto-6891.jpg
1293	Paphiopedilum bellatulum	F/S	498	0	9	https://static.orchids.in.ua/img/paphiopedilum-bellatulum-foto-2107.jpg
1303	Paphiopedilum concolor x emersonii	B/S	576	0	9	https://static.orchids.in.ua/img/paphiopedilum-concolor-x-emersonii-foto-4332.jpg
1313	Paphiopedilum Dollgoldi (armeniacum x rothschildianum)	B/S	1160	0	9	https://static.orchids.in.ua/img/paphiopedilum-dollgoldi-armeniacum-x-rothschildianum-foto-3381.jpg
1322	Paphiopedilum godefroyae alba x philippinense alba	B/S	2720	0	9	https://static.orchids.in.ua/img/paphiopedilum-godefroyae-alba-x-philippinense-alba-foto-5451.jpg
1333	Paphiopedilum helenae	B/S	970	0	9	https://static.orchids.in.ua/img/1-foto-1710.jpg
1343	Paphiopedilum Hung Sheng Knight x bellatulum	NB/S	1170	0	9	https://static.orchids.in.ua/img/paphiopedilum-hung-sheng-knight-x-bellatulum-foto-4847.jpg
1353	Paphiopedilum Lady Isabel	B/S	1672	0	9	https://static.orchids.in.ua/img/paphiopedilum-lady-isabel-foto-4233.jpg
1362	Paphiopedilum lowii album 'Albino Beauty'	NB/S	3200	0	9	https://static.orchids.in.ua/img/paphiopedilum-lowii-album-albino-beauty-foto-5449.jpg
1372	Paphiopedilum micranthum var eburneum	B/S	1215	0	9	https://static.orchids.in.ua/img/paphiopedilum-micranthum-var-eburneum-foto-1442.jpg
1382	Paphiopedilum primulinum x Greyi	B/S	870	0	9	https://static.orchids.in.ua/img/paphiopedilum-primulinum-x-greyi-foto-6947.jpg
1393	Paphiopedilum sanderianum	B/S	3045	0	9	https://static.orchids.in.ua/img/1-foto-3307.jpg
1403	Paphiopedilum stonei 'In-Charm' x self	F/S	1560	0	9	https://static.orchids.in.ua/img/paphiopedilum-stonei-foto-3410.jpg
1412	Paphiopedilum tranlienianum 'In-Charm' x sib '#A'	B/S	1301	0	9	https://static.orchids.in.ua/img/paphiopedilum-tranlienianum-in-charm-x-sib-a-foto-1453.jpg
1420	Paphiopedilum wenshanense	B/S	680	0	9	https://static.orchids.in.ua/img/paphiopedilum-wenshanense-foto-1719.jpg
1430	Phragmipedium Carol Kanzer (Phragmipedium pearcei x schlimii)	NB/S	1980	0	9	https://static.orchids.in.ua/img/1-foto-1817.jpg
1441	Phragmipedium Peruflora's Angel (kovachii x richteri)	B/S	2362	0	9	https://static.orchids.in.ua/img/phragmipedium-perufloras-angel-foto-4603.jpg
1452	Doritaenopsis Sogo Meili x Phalaenopsis Ld's Bear Queen	B/S	758	0	10	https://static.orchids.in.ua/img/doritaenopsis-sogo-meili-x-phalaenopsis-lds-bear-queen-foto-2403.jpg
1463	Phalaenopsis amabilis	F/S	560	0	10	https://static.orchids.in.ua/img/phalaenopsis-amabilis-foto-887.jpg
1471	Phalaenopsis Anna-Larati Soekardi 'Little Ear'	B/S	675	0	10	https://static.orchids.in.ua/img/phalaenopsis-anna-larati-soekardi-little-ear-foto-5245.jpg
1482	Phalaenopsis bellina 'blue' x Mituo Prince 'M#1'	B/S	810	0	10	https://static.orchids.in.ua/img/phalaenopsis-bellina-blue-x-mituo-prince-m1-foto-5110.jpg
1492	Phalaenopsis bellina x KS Happy Eagle	B/S	698	0	10	https://static.orchids.in.ua/img/phalaenopsis-bellina-x-ks-happy-eagle-foto-3766.jpg
1503	Phalaenopsis Chang Yi Green Giant x Yaphon Godboy	F/S	540	0	10	https://static.orchids.in.ua/img/1-foto-4584.jpg
1516	Phalaenopsis Chienlung Green Parrot	S/S	648	0	10	https://static.orchids.in.ua/img/chienlung-green-parrot-foto-5433.jpg
1526	Phalaenopsis Chienlung Red King (Ld's Bear King x pulchra)	B/S	570	0	10	https://static.orchids.in.ua/img/phalaenopsis-chienlung-red-king-lds-bear-king-x-pulchra-foto-3218.jpg
1536	Phalaenopsis Corning's Violet indigo type	B/S	540	0	10	https://static.orchids.in.ua/img/phalaenopsis-cornings-violet-indigo-type-foto-5155.jpg
1545	Phalaenopsis Diamond Beauty '1202' x Ld's Bear King 'YK7' (select)	F/S	2680	0	10	
1556	Phalaenopsis equestris three lips	F/S	432	0	10	https://static.orchids.in.ua/img/1-foto-6422.jpg
1566	Phalaenopsis George Vasquez	B/S	1174	0	10	https://static.orchids.in.ua/img/phalaenopsis-george-vasquez-foto-4093.jpg
1576	Phalaenopsis gigantea 'Meir #1' HCC/AOS	NB/S	1080	0	10	https://static.orchids.in.ua/img/2-foto-5267.jpg
1588	Phalaenopsis gigantea x Singher Pure Love	B/S	650	0	10	https://static.orchids.in.ua/img/1-foto-6468.jpg
1597	Phalaenopsis hieroglyphica var flava	B/S	450	0	10	https://static.orchids.in.ua/img/1-foto-3686.jpg
1607	Phalaenopsis I-Hsin Venus x lindenii	S/S	493	0	10	https://static.orchids.in.ua/img/phalaenopsis-i-hsin-venus-x-lindenii-foto-5985.jpg
1618	Phalaenopsis (Jiaho's Orange x schilleriana ) 'KF'	B/S	378	0	10	https://static.orchids.in.ua/img/phalaenopsis-jiahos-orange-x-schilleriana--foto-4993.jpg
1629	Phalaenopsis Joy Spring Canary ’Taipei’ (MC)	B/S	780	0	10	https://static.orchids.in.ua/img/phalaenopsis-joy-spring-canary-%E2%80%99taipei%E2%80%99-mc-foto-5440.jpg
1638	Phalaenopsis KS Evergreen x KS Happy Eagle	F/S	780	0	10	https://static.orchids.in.ua/img/1-foto-3910.jpg
1645	Phalaenopsis KS Happy Eagle x Zheng Min Tyrannosaurus	B/S	484	0	10	https://static.orchids.in.ua/img/phalaenopsis-ks-happy-eagle-x-zheng-min-tyrannosaurus-foto-5317.jpg
1656	Phalaenopsis Ld Bellina Eagle x Prima	B/S	1015	0	10	https://static.orchids.in.ua/img/phalaenopsis-ld-bellina-eagle-x-prima-foto-3580.jpg
1667	Phalaenopsis LD's Bear King 'Bronze' x Mituo Princess 'Blue'	B/S	980	0	10	https://static.orchids.in.ua/img/1-foto-6386.jpg
1677	Phalaenopsis Ld's Bear King 'YK10' x Ld's Bear King 'RK3'	S/S	336	0	10	https://static.orchids.in.ua/img/phalaenopsis-lds-bear-king-yk10-x-lds-bear-king-rk3-foto-5494.jpg
1686	Phalaenopsis LDs Bear Queen x violacea blue 'Big'	F/S	780	0	10	https://static.orchids.in.ua/img/phalaenopsis-lds-bear-queen-x-violacea-blue-big-foto-4554.jpg
1696	Phalaenopsis Lyndon Canary Cupid #6 (Tying Shin Cupid x Yungho Gelb Canary)	S/S	1080	0	10	https://static.orchids.in.ua/img/2-foto-5674.jpg
1705	Phalaenopsis mannii 'Black'	NB/S	378	0	10	https://static.orchids.in.ua/img/phalaenopsis-mannii-black-foto-2293.jpg
1714	Phalaenopsis Miro Supper Star 'MO198' x LD Sun Dragon 'MO98'	B/S	780	0	10	https://static.orchids.in.ua/img/2-foto-6385.jpg
1725	Phalaenopsis Mituo Golden 'M-2' x Ld's Bear Queen	F/S	780	0	10	https://static.orchids.in.ua/img/1-foto-5822.jpg
1733	Phalaenopsis Mituo Prima 'Mituo#10'	B/S	1680	0	10	https://static.orchids.in.ua/img/1-foto-5696.jpg
1742	Phalaenopsis Mituo Prince x Samera	B/S	580	0	10	https://static.orchids.in.ua/img/1-foto-5100.jpg
1297	Paphiopedilum Berenice (lowii x philippinense)	B/S	1200	0	9	https://static.orchids.in.ua/img/paphiopedilum-berenice-lowii-x-philippinense-foto-4141.jpg
1307	Paphiopedilum dayanum х kolopakingii	B/S	675	0	9	
1317	Paphiopedilum esquirolei chiuvanum alba	B/S	680	0	9	https://static.orchids.in.ua/img/paphiopedilum-esquirolei-chiuvanum-alba-foto-6725.jpg
1328	Paphiopedilum godefroyae var. ang-thong x lowii	B/S	580	0	9	https://static.orchids.in.ua/img/paphiopedilum-godefroyae-var-ang-thong-x-lowii-foto-4180.jpg
1339	Paphiopedilum hirsutissimum var. esquirolei	B/S	1740	0	9	https://static.orchids.in.ua/img/paphiopedilum-hirsutissimum-var-esquirolei-foto-3306.jpg
1348	Paphiopedilum Julius Orchidfactory (rothschildianum x lowii)	B/S	898	0	9	https://static.orchids.in.ua/img/paphiopedilum-julius-orchidfactory-foto-4072.jpg
1359	Paphiopedilum leucochilum Yilung	B/S	820	0	9	https://static.orchids.in.ua/img/2-foto-5349.jpg
1369	Paphiopedilum Michael Koopowitz x sanderianum	B/S	1215	0	9	https://static.orchids.in.ua/img/1-foto-5958.jpg
1379	Paphiopedilum parishii	B/S	2640	0	9	https://static.orchids.in.ua/img/paphiopedilum-parishii-foto-4112.jpg
1390	Paphiopedilum rothschildianum x niveum	B/S	580	0	9	https://static.orchids.in.ua/img/1-foto-5139.jpg
1400	Paphiopedilum Sorcerer's Stone	B/S	987	0	9	https://static.orchids.in.ua/img/paphiopedilum-sorcerers-stone-foto-3459.jpg
1411	Paphiopedilum tranlienianum	B/S	450	0	9	https://static.orchids.in.ua/img/paphiopedilum-tranlienianum-foto-2465.jpg
1422	Paphiopedilum White Knight x Ice Age	B/S	987	0	9	https://static.orchids.in.ua/img/10-foto-6161.jpg
1433	Phragmipedium Inca Fire (Andean Fire x besseae)	B/S	430	0	9	https://static.orchids.in.ua/img/phragmipedium-inca-fire-andean-fire-x-besseae-foto-3638.jpg
1442	Phragmipedium Petit Anquette (pearcei x dalessandroi)	B/S	1334	0	9	https://static.orchids.in.ua/img/phragmipedium-petit-anquette-foto-1816.jpg
1451	Doritaenopsis Lius Sakura KF	B/S	648	0	10	https://static.orchids.in.ua/img/1-foto-775.jpg
1461	Phalaenopsis AL Sun Hannover 'Red' x Chingruey’s Tiger	B/S	920	0	10	https://static.orchids.in.ua/img/phalaenopsis-al-sun-hannover-red-x-chingruey%E2%80%99s-tiger-foto-5181.jpg
1472	Phalaenopsis Anna-Larati Soekardi (Joseph Wu)	B/S	540	0	10	https://static.orchids.in.ua/img/1-foto-5246.jpg
1481	Phalaenopsis bellina 'B-1' x Mituo Princess 'B'	B/S	540	0	10	https://static.orchids.in.ua/img/phalaenopsis-bellina-b-1-x-mituo-princess-b-foto-6300.jpg
1491	Phalaenopsis bellina pink	B/S	650	0	10	https://static.orchids.in.ua/img/1-foto-6898.jpg
1501	Phalaenopsis Chang Jo (Chang Jhih Rose x Jong's Gigan Cherry)	B/S	874	0	10	https://static.orchids.in.ua/img/phalaenopsis-chang-jo-chang-jhih-rose-x-jongs-gigan-cherry-foto-3877.jpg
1515	Phalaenopsis Chienlung Giant Leopard	F/S	1620	0	10	https://static.orchids.in.ua/img/phalaenopsis-chienlung-giant-leopard-foto-5161.jpg
1527	Phalaenopsis Chienlung Red Parrot	B/S	810	0	10	https://static.orchids.in.ua/img/1-foto-5263.jpg
1537	Phalaenopsis corningiana 'Chienlung' x bastianii 'CLR'	B/S	540	0	10	https://static.orchids.in.ua/img/phalaenopsis-corningiana-chienlung-x-bastianii-clr-foto-5162.jpg
1547	Phalaenopsis Diamond Beauty '1202' x Mituo Reflex Dragon 'B-1'	B/S	1080	0	10	https://static.orchids.in.ua/img/1-foto-6433.jpg
1557	Phalaenopsis equestris var leacopsis 'Anne' JC/AOS	F/S	432	0	10	https://static.orchids.in.ua/img/1-foto-5240.jpg
1567	Phalaenopsis George Vasquez 'An Lin' x George Vasquez 'Eureka'	B/S	1372	0	10	https://static.orchids.in.ua/img/phalaenopsis-george-vasquez-an-lin-x-george-vasquez-eureka-foto-4269.jpg
1577	Phalaenopsis gigantea alba 'Ta Wei'	B/S	1960	0	10	https://static.orchids.in.ua/img/phalaenopsis-gigantea-var-alba-ta-wei-foto-4769.jpg
1586	Phalaenopsis gigantea x pulchra red	NB/S	982	0	10	https://static.orchids.in.ua/img/phalaenopsis-gigantea-x-pulchra-red-foto-4975.jpg
1596	Phalaenopsis hieroglyphica	NB/S	398	0	10	https://static.orchids.in.ua/img/phalaenopsis-hieroglyphica-foto-6516.jpg
1606	Phalaenopsis I-Hsin Ice Coke 'peloric'	B/S	1960	0	10	https://static.orchids.in.ua/img/1-foto-5524.jpg
1615	Phalaenopsis Jennifer Palermo (C1 type) x Phalaenopsis LD's Bear Queen	F/S	749	0	10	https://static.orchids.in.ua/img/phalaenopsis-jennifer-palermo-c1-type-x-phalaenopsis-lds-bear-queen-foto-3314.jpg
1627	Phalaenopsis Joy Micholuedde x bellina blue	NB/S	405	0	10	https://static.orchids.in.ua/img/phalaenopsis-joy-micholuedde-x-bellina-blue-foto-5456.jpg
1636	Phalaenopsis Joy Viol Kaiulani (Sogo Kaiulani x violacea indigo)	NB/S	397	0	10	https://static.orchids.in.ua/img/phalaenopsis-joy-viol-kaiulani-sogo-kaiulani-x-violacea-indigo-foto-5459.jpg
1650	Phalaenopsis KS Super Zebra x AL Sun Tiger	NB/S	405	0	10	https://static.orchids.in.ua/img/phalaenopsis-ks-super-zebra-x-al-sun-tiger-foto-5282.jpg
1661	Phalaenopsis LD Purple Bear x Mituo Prince	B/S	698	0	10	https://static.orchids.in.ua/img/phalaenopsis-ld-purple-baer-x-mituo-prince-foto-6033.jpg
1672	Phalaenopsis Ld's Bear King 'Yellow King' x Dragon Tree Eagle	B/S	990	0	10	https://static.orchids.in.ua/img/lds-bear-king-yellow-king-x-dragon-tree-eagle-foto-4368.jpg
1680	Phalaenopsis LD's Bear King x LD Purple 3S	B/S	698	0	10	https://static.orchids.in.ua/img/phalaenopsis-lds-bear-king-x-ld-purple-3s-foto-5818.jpg
1689	Phalaenopsis Liu's Berry 'ES'	F/S	540	0	10	https://static.orchids.in.ua/img/1-foto-5406.jpg
1697	Phalaenopsis Lyndon Coral Grosbeak x gigantea	S/S	648	0	10	https://static.orchids.in.ua/img/2-foto-4555.jpg
1708	Phalaenopsis Meidarland Pulcheglad Blue	B/S	405	0	10	https://static.orchids.in.ua/img/phalaenopsis-meidarland-pulcheglad-blue-foto-4502.jpg
1718	Phalaenopsis Mituo Coral Mambonosa x LD's bear Queen	F/S	820	0	10	https://static.orchids.in.ua/img/phalaenopsis-mituo-coral-mambonosa-x-lds-bear-queen-foto-4630.jpg
1729	Phalaenopsis Mituo King 'April Blood'	B/S	2256	0	10	https://static.orchids.in.ua/img/1-foto-6029.jpg
1739	Phalaenopsis Mituo Prince 'Y' x Mituo King Bellina 'R'	B/S	486	0	10	https://static.orchids.in.ua/img/phalaenopsis-mituo-prince-y-x-mituo-king-bellina-r-foto-5258.jpg
1748	Phalaenopsis Mituo Reflex Dragon 'Y-purple'	B/S	1300	0	10	https://static.orchids.in.ua/img/phalaenopsis-mituo-reflex-dragon-y-purple-foto-6701.jpg
1301	Paphiopedilum concolor striatum	B/S	810	0	9	https://static.orchids.in.ua/img/5-foto-6236.jpg
1310	Paphiopedilum delenatii x Lady Isabel	B/S	560	0	9	https://static.orchids.in.ua/img/1-foto-5323.jpg
1323	Paphiopedilum godefroyae P727	B/S	2160	0	9	https://static.orchids.in.ua/img/paphiopedilum-godefroyae-p727-foto-5962.jpg
1334	Paphiopedilum helenae x sukhakulii	B/S	420	0	9	https://static.orchids.in.ua/img/paphiopedilum-helenae-x-sukhakulii-foto-4522.jpg
1345	Paphiopedilum In-Charm Lady (Lady Isabel 'In-Charm' x Paphiopedilum moqueateanum 'In-Charm')	F/S	480	0	9	https://static.orchids.in.ua/img/paphiopedilum-in-charm-lady-lady-isabel-in-charm-x-paphiopedilum-moqueateanum-in-charm-foto-606.jpg
1355	Paphiopedilum Lady Isabel x Mar New	B/S	1172	0	9	https://static.orchids.in.ua/img/lady-isabel-x-mar-new-foto-4355.jpg
1365	Paphiopedilum Mar New x rothschildianum	NB/S	480	0	9	https://static.orchids.in.ua/img/paphiopedilum-mar-new-x-rothschildianum-foto-4356.jpg
1374	Paphiopedilum niveum x micranthum	B/S	810	0	9	https://static.orchids.in.ua/img/1-foto-5677.jpg
1385	Paphiopedilum rothschildianum 'Chao Chou' x Paphiopedilum gigantiferum '#1'	B/S	1945	0	9	https://static.orchids.in.ua/img/paphiopedilum-rothschildianum-chao-chou-x-paphiopedilum-gigantiferum-1-foto-3396.jpg
1394	Paphiopedilum sanderianum 'Daya' x Paphiopedilum rothschildianum 'Robber'	NB/S	1466	0	9	https://static.orchids.in.ua/img/paphiopedilum-sanderianum-daya-x-paphiopedilum-rothschildianum-robber-foto-3521.jpg
1404	Paphiopedilum stonei x anitum	NB/S	398	0	9	https://static.orchids.in.ua/img/paphiopedilum-stonei-x-anitum-foto-4377.jpg
1414	Paphiopedilum venustum alba	B/S	540	0	9	https://static.orchids.in.ua/img/paphiopedilum-venustum-alba-foto-1455.jpg
1424	Paphiopedilum wolterianum alba	B/S	810	0	9	https://static.orchids.in.ua/img/paphiopedilum-wolterianum-alba-foto-6727.jpg
1435	Phragmipedium kovachii	B/S	9600	0	9	https://static.orchids.in.ua/img/phragmipedium-kovachii-foto-2329.jpg
1445	Aerides houlletiana x Phalaenopsis equestris alba	S/S	675	0	10	https://static.orchids.in.ua/img/aerides-houlletiana-x--phalaenopsis-equestris-alba-foto-5434.jpg
1454	Phalaenopsis ( gigantea var alba x YangYang Blueberry)	B/S	498	0	10	https://static.orchids.in.ua/img/1-foto-6380.jpg
1465	Phalaenopsis amboinensis 'Dark Brown' x Phalaenopsis lueddemanniana 'Nita'	F/S	1217	0	10	https://static.orchids.in.ua/img/phalaenopsis-amboinensis-dark-brown-x-phalaenopsis-lueddemanniana-nita-foto-2838.jpg
1475	Phalaenopsis Auspice Knight 'KF'	B/S	650	0	10	https://static.orchids.in.ua/img/1-foto-5360.jpg
1485	Phalaenopsis bellina 'Mituo'	B/S	780	0	10	https://static.orchids.in.ua/img/phalaenopsis-bellina-mituo-foto-6305.jpg
1495	Phalaenopsis Brother Glory 'Long Fong'	B/S	675	0	10	https://static.orchids.in.ua/img/phalaenopsis-brother-glory-long-fong-foto-4770.jpg
1504	Phalaenopsis Cherry Spot alba (pulchra alba x bellina alba)	B/S	675	0	10	https://static.orchids.in.ua/img/1-foto-5427.jpg
1511	Phalaenopsis Chienlung Claret x Java	S/S	324	0	10	https://static.orchids.in.ua/img/phalaenopsis-chienlung-claret-x-java-foto-5503.jpg
1520	Phalaenopsis Chienlung Little Orange	B/S	998	0	10	https://static.orchids.in.ua/img/2-foto-5429.jpg
1529	Phalaenopsis Chienlung Sweetheart ‘Light’ (clone)	B/S	698	0	10	https://static.orchids.in.ua/img/1-foto-5762.jpg
1538	Phalaenopsis corningiana (Ching Hua)	B/S	624	0	10	https://static.orchids.in.ua/img/phalaenopsis-corningiana-ching-hua-foto-5315.jpg
1548	Phalaenopsis Dragon Tree Eagle 'DT' x tetraspis 'C#1'	F/S	398	0	10	https://static.orchids.in.ua/img/phalaenopsis-dragon-tree-eagle-dt-x-tetraspis-c1-foto-4650.jpg
1558	Phalaenopsis equestris x minus	F/S	520	0	10	https://static.orchids.in.ua/img/phalaenopsis-equestris-x-minus-foto-6471.jpg
1568	Phalaenopsis Germaine Vincent indigo type x tetraspis	B/S	540	0	10	https://static.orchids.in.ua/img/germaine-vincent-indigo-type-x-tetraspis-foto-5156.jpg
1579	Phalaenopsis gigantea alba x amboinensis flava	B/S	750	0	10	https://static.orchids.in.ua/img/phalaenopsis-gigantea-alba-x-amboinensis-flava-foto-6570.jpg
1589	Phalaenopsis gigantea x Tying Sin Popularity	B/S	405	0	10	https://static.orchids.in.ua/img/phalaenopsis-gigantea-x-tying-sin-popularity-foto-5895.jpg
1600	Phalaenopsis ((Hos Kungfong Glory x (violacea -rofino) x Tsays (violacea -rofino) x Tsays Evergreen ) x Dragon Tree Eagle) x tetraspis c-1	F/S	1031	0	10	https://static.orchids.in.ua/img/phalaenopsis-hos-kungfong-glory-x-violacea--rofino-x-tsays-violacea--rofino-x-tsays-evergreen--x-dragon-tree-eagle-x-tetraspis-c-1-foto-4258.jpg
1610	Phalaenopsis javanica	F/S	560	0	10	https://static.orchids.in.ua/img/phalaenopsis-javanica-foto-264.jpg
1621	Phalaenopsis Joey x Samera indigo	B/S	378	0	10	https://static.orchids.in.ua/img/phalaenopsis-joey-x-samera-indigo-foto-5187.jpg
1633	Phalaenopsis Joy Spring Tina x LD's Bear Queen	NB/S	405	0	10	https://static.orchids.in.ua/img/phalaenopsis-joy-spring-tina-x-lds-bear-queen-foto-5457.jpg
1643	Phalaenopsis KS Happy Eagle x Ld's Bear Queen	F/S	1060	0	10	https://static.orchids.in.ua/img/phalaenopsis-ks-happy-eagle-x-lds-bear-queen-foto-3878.jpg
1653	Phalaenopsis Kungs Princess x gigantea	NB/S	1120	0	10	https://static.orchids.in.ua/img/phalaenopsis-kungs-princess-x-gigantea-foto-4977.jpg
1662	Phalaenopsis LD Sun Dragon	B/S	598	0	10	https://static.orchids.in.ua/img/phalaenopsis-ld-sun-dragon-foto-6519.jpg
1671	Phalaenopsis Ld's Bear King 'Snake Eye'	B/S	1680	0	10	https://static.orchids.in.ua/img/phalaenopsis-lds-bear-king-snake-eye-foto-5697.jpg
1682	Phalaenopsis Ld's Bear King x violacea indigo	F/S	543	0	10	https://static.orchids.in.ua/img/phalaenopsis-lds-bear-king-x-violacea-indigo-foto-4064.jpg
1693	Phalaenopsis lueddemanniana coerulea	B/S	2830	0	10	https://static.orchids.in.ua/img/1-foto-5705.jpg
1704	Phalaenopsis (Mambo x Corning's Violet) x gigantea	B/S	1170	0	10	https://static.orchids.in.ua/img/1-foto-5266.jpg
1715	Phalaenopsis Mituo Ambo 'Mituo #1'	B/S	2720	0	10	https://static.orchids.in.ua/img/phalaenopsis-mituo-ambo-mituo-1-foto-5469.jpg
1724	Phalaenopsis Mituo Diamond Canary 'Z'	B/S	1350	0	10	https://static.orchids.in.ua/img/1-foto-6389.jpg
1734	Phalaenopsis Mituo Prince 'Bb'	B/S	540	0	10	https://static.orchids.in.ua/img/phalaenopsis-mituo-prince-bb-foto-6893.jpg
1478	Phalaenopsis Ba-Shi Blackspot x Samera 'blue'	S/S	298	0	10	https://static.orchids.in.ua/img/phalaenopsis-ba-shi-blackspot-x-samera-blue-foto-5512.jpg
1488	Phalaenopsis bellina blue	F/S	580	0	10	https://static.orchids.in.ua/img/phalaenopsis-bellina-blue-foto-6575.jpg
1498	Phalaenopsis (Brother Sara Gold x Chiada Spark) 'ES'	B/S	416	0	10	https://static.orchids.in.ua/img/1-foto-5706.jpg
1508	Phalaenopsis Chienlung Black Conch	NB/S	540	0	10	https://static.orchids.in.ua/img/phalaenopsis-chienlung-black-conch-foto-5178.jpg
1518	Phalaenopsis Chienlung Jewel Parrot	B/S	480	0	10	https://static.orchids.in.ua/img/phalaenopsis-jewel-parrot-foto-5302.jpg
1528	Phalaenopsis Chienlung Sweet Heart 'Green'	B/S	840	0	10	https://static.orchids.in.ua/img/1-foto-5758.jpg
1539	Phalaenopsis corningiana x lueddemanniana	F/S	698	0	10	https://static.orchids.in.ua/img/1-foto-3747.jpg
1550	Phalaenopsis Dragon Tree Eagle x Emeraude	B/S	468	0	10	https://static.orchids.in.ua/img/1-foto-4243.jpg
1559	Phalaenopsis fimbriata x sib	B/S	540	0	10	https://static.orchids.in.ua/img/1-foto-6427.jpg
1569	Phalaenopsis gigantea	B/S	1560	0	10	https://static.orchids.in.ua/img/1-foto-5746.jpg
1578	Phalaenopsis gigantea alba big type	B/S	1980	0	10	https://static.orchids.in.ua/img/4-foto-6577.jpg
1587	Phalaenopsis gigantea x schilleriana	B/S	1080	0	10	https://static.orchids.in.ua/img/phalaenopsis-gigantea-x-schilleriana-foto-5237.jpg
1598	Phalaenopsis Ho's Amaglad	B/S	270	0	10	https://static.orchids.in.ua/img/phalaenopsis-hos-amaglad-foto-5741.jpg
1608	Phalaenopsis intermedia	B/S	725	0	10	https://static.orchids.in.ua/img/phalaenopsis-x-intermedia-foto-4302.jpg
1619	Phalaenopsis Jiaho's Pink Girl	B/S	320	0	10	https://static.orchids.in.ua/img/phalaenopsis-jiahos-pink-girl-foto-1792.jpg
1628	Phalaenopsis Joy Micholuedde x gigantea	NB/S	395	0	10	https://static.orchids.in.ua/img/1-foto-5428.jpg
1639	Phalaenopsis KS Happy Eagle	F/S	1100	0	10	https://static.orchids.in.ua/img/phalaenopsis-ks-happy-eagle-foto-2755.jpg
1649	Phalaenopsis KS Super Zebra 'WR‘ (clone)	B/S	648	0	10	https://static.orchids.in.ua/img/phalaenopsis-ks-super-zebra-wr%E2%80%98-clone-foto-6020.jpg
1659	Phalaenopsis Ld Mok Chio	S/S	486	0	10	https://static.orchids.in.ua/img/phalaenopsis-ld-mok-chio-foto-5408.jpg
1669	Phalaenopsis Ld's Bear King 'RK-3' x Fushang's Beauty Star	F/S	810	0	10	https://static.orchids.in.ua/img/phalaenopsis-lds-bear-king-rk-3-x-fushangs-beauty-star-foto-4588.jpg
1679	Phalaenopsis Ld's Bear King x gigantea	B/S	560	0	10	https://static.orchids.in.ua/img/phalaenopsis-lds-bear-king-x-gigantea-foto-4772.jpg
1690	Phalaenopsis Liu's Rainbow alba 'Joseph Wu'	B/S	520	0	10	https://static.orchids.in.ua/img/phalaenopsis-lius-rainbow-alba-joseph-wu-foto-5454.jpg
1700	Phalaenopsis Lyndon Gold Ring x (Yin's Bellina Kaiulani x Ya-Yi Qin) 'Rainbow'	B/S	540	0	10	https://static.orchids.in.ua/img/1-foto-5703.jpg
1709	Phalaenopsis Meidarland Violet Beauty 'MD'	B/S	848	0	10	https://static.orchids.in.ua/img/phalaenopsis-meidarland-violet-beauty-foto-4229.jpg
1719	Phalaenopsis Mituo Diamond 'B-2'	B/S	810	0	10	https://static.orchids.in.ua/img/1-foto-5255.jpg
1728	Phalaenopsis (Mituo Golden x Sogo Nihou) x Mituo Prince	B/S	675	0	10	https://static.orchids.in.ua/img/1-foto-5250.jpg
1738	Phalaenopsis Mituo Prince 'Orange'	B/S	1180	0	10	https://static.orchids.in.ua/img/1-foto-5699.jpg
1749	Phalaenopsis Mituo Reflex Dragon x LD Purple 3S	B/S	1566	0	10	https://static.orchids.in.ua/img/phalaenopsis-mituo-reflex-dragon-x-ld-purple-3s-foto-6584.jpg
1760	Phalaenopsis Mituo Sun Queen x Samera	F/S	850	0	10	https://static.orchids.in.ua/img/phalaenopsis-mituo-sun-queen-x-samera-foto-4624.jpg
1769	Phalaenopsis Mok Choi Yew '1723'	F/S	18600	0	10	https://static.orchids.in.ua/img/1-foto-5232.jpg
1776	Phalaenopsis Nobby's Fox x Zheng Min Muscadine	F/S	486	0	10	https://static.orchids.in.ua/img/phalaenopsis-nobbys-fox-x-zheng-min-muscadine-foto-5274.jpg
1787	Phalaenopsis (philippinensis 'Kung Sir' x amabilis 'Sabah')	B/S	675	0	10	https://static.orchids.in.ua/img/1-foto-5915.jpg
1798	Phalaenopsis Red Jaguar (Phalaenopsis Hsu Li-Shian x Phalaenopsis gigantea)	B/S	875	0	10	https://static.orchids.in.ua/img/red-jaguar-foto-3211.jpg
1808	Phalaenopsis sanderiana	B/S	432	0	10	https://static.orchids.in.ua/img/phalaenopsis-sanderiana-foto-1483.jpg
1818	Phalaenopsis (speciosa 'All Purple' x Tzu Chiang Tetralitz)	B/S	540	0	10	https://static.orchids.in.ua/img/1-foto-6394.jpg
1829	Phalaenopsis stuartiana punctatissima	B/S	678	0	10	https://static.orchids.in.ua/img/1-foto-4193.jpg
1839	Phalaenopsis Summer Breath '401' (Sogo Yukidian x Chian Xen Pearl)	NB/S	347	0	10	https://static.orchids.in.ua/img/phalaenopsis-summer-breath-401-sogo-yukidian-x-chian-xen-pearl-foto-6517.jpg
1849	Phalaenopsis tetraspis red x bellina blue	F/S	420	0	10	https://static.orchids.in.ua/img/phalaenopsis-tetraspis-red-x-bellina-blue-foto-5478.jpg
1859	Phalaenopsis Tzu Chiang Chrisna x Phalaenopsis LD's Bear Queen	B/S	710	0	10	https://static.orchids.in.ua/img/phalaenopsis-tzu-chiang-chrisna-x-phalaenopsis-lds-bear-queen-foto-3503.jpg
1870	Phalaenopsis Ya-YI Qin x AL Sun Tiger	B/S	945	0	10	https://static.orchids.in.ua/img/phalaenopsis-ya-yi-qin-x-al-sun-tiger-foto-5281.jpg
1880	Phalaenopsis Yaphon Goodboy x (Chang Mow Jade x Yungho Gelb Canary)	B/S	826	0	10	https://static.orchids.in.ua/img/phalaenopsis-yaphon-goodboy-x-chang-mow-jade-x-yungho-gelb-canary-foto-4366.jpg
1891	Phalaenopsis Yaphon Oh My God (Phal. KS Happy Eagle x tetraspis C1)	B/S	866	0	10	https://static.orchids.in.ua/img/phalaenopsis-yaphon-oh-my-god-foto-3750.jpg
1901	Phalaenopsis Yin's Belliambo x Chang Maw Evergreen	B/S	894	0	10	https://static.orchids.in.ua/img/phalaenopsis-yins-belliambo-x-chang-maw-evergreen-foto-4276.jpg
1913	Phalaenopsis zebrina 'Palawan'	B/S	378	0	10	https://static.orchids.in.ua/img/phalaenopsis-zebrina-palawan-foto-5276.jpg
1924	Phalaenopsis Zheng Min Quetzalcoatlus #3	B/S	1120	0	10	https://static.orchids.in.ua/img/1-foto-5481.jpg
1934	Rhynchonopsis Chienlung Purple Fox	B/S	1740	0	10	https://static.orchids.in.ua/img/1-foto-5260.jpg
1532	Phalaenopsis Chingruey's Fancy 'Red Wine'	F/S	698	0	10	https://static.orchids.in.ua/img/phalaenopsis-chingrueys-fancy-red-wine-foto-3101.jpg
1542	Phalaenopsis cornu-cervi flava	B/S	450	0	10	https://static.orchids.in.ua/img/phalaenopsis-cornu-cervi-alba-foto-1939.jpg
1552	Phalaenopsis equestris 'Pink'	F/S	346	0	10	https://static.orchids.in.ua/img/1-foto-6520.jpg
1563	Phalaenopsis (Gelblieber x Coral Isles) x violacea	B/S	675	0	10	https://static.orchids.in.ua/img/phalaenopsis-gelblieber-x-coral-isles-x-violacea-foto-3748.jpg
1572	Phalaenopsis gigantea 'KF#8' x Ho's Kungfong Glory	B/S	2478	0	10	
1583	Phalaenopsis gigantea x lueddemanniana 'Joy' Mindanao type	B/S	878	0	10	https://static.orchids.in.ua/img/phalaenopsis-gigantea-x-lueddemanniana-joy-mindanao-type-foto-5538.jpg
1594	Phalaenopsis Hannover Parrion x Zheng Min Tyrannosaurus 'Red'	F/S	1560	0	10	https://static.orchids.in.ua/img/phalaenopsis-hannover-parrion-x-zheng-min-tyrannosaurus-red-foto-5306.jpg
1616	Phalaenopsis (Jennifer Palermo C-1 type x Ld's Bear Queen) 'flava'	F/S	785	0	10	https://static.orchids.in.ua/img/phalaenopsis-jennifer-palermo-c-1-type-x-lds-bear-queen-flava-foto-4215.jpg
1626	Phalaenopsis Joy Jewel Box (Joy Spring Venus x Buena Jewel)	B/S	1080	0	10	https://static.orchids.in.ua/img/1-foto-5238.jpg
1637	Phalaenopsis Kenneth Schubert x Rhynchovanda 'Thailand'	NB/S	987	0	10	https://static.orchids.in.ua/img/phalaenopsis-kenneth-schubert-x-rhynchovanda-thailand-foto-4601.jpg
1648	Phalaenopsis KS Super Zebra	B/S	650	0	10	https://static.orchids.in.ua/img/1-foto-3716.jpg
1658	Phalaenopsis LD Emerald Bear x LD Double Dragon	F/S	998	0	10	https://static.orchids.in.ua/img/phalaenopsis-ld-emerald-bear-x-ld-double-dragon-foto-4606.jpg
1668	Phalaenopsis Ld's Bear King 'Red King' x Su-An Super Star	B/S	1107	0	10	https://static.orchids.in.ua/img/phalaenopsis-lds-bear-king-red-king-x-su-an-super-star-foto-4369.jpg
1678	Phalaenopsis Ld's Bear King 'YKY' x Hawaii Dragon Girl 'DT-1'	F/S	675	0	10	https://static.orchids.in.ua/img/phalaenopsis-lds-bear-king-yky-x-hawaii-dragon-girl-dt-1-foto-4587.jpg
1688	Phalaenopsis lindenii x celebensis	B/S	522	0	10	https://static.orchids.in.ua/img/1-foto-5707.jpg
1699	Phalaenopsis Lyndon Gold Ring (clone)	B/S	780	0	10	https://static.orchids.in.ua/img/1-foto-5759.jpg
1710	Phalaenopsis micholitzii 'green' x Yaphon Evergreen 'Yaphon'	B/S	724	0	10	https://static.orchids.in.ua/img/phalaenopsis-micholitzii-green-x-yaphon-evergreen-yaphon-foto-3761.jpg
1720	Phalaenopsis Mituo Diamond 'B-B'	B/S	810	0	10	https://static.orchids.in.ua/img/1-foto-5700.jpg
1727	Phalaenopsis Mituo Golden Tiger White Tiger x Yaphon Lover Yaphon	B/S	1305	0	10	https://static.orchids.in.ua/img/phalaenopsis-mituo-golden-tiger-white-tiger-x-yaphon-lover-yaphon-foto-6897.jpg
1736	Phalaenopsis Mituo Prince 'Chin Ming'	F/S	998	0	10	https://static.orchids.in.ua/img/phalaenopsis-mituo-prince-chin-ming-foto-5102.jpg
1744	Phalaenopsis Mituo Princess 'Orange Coffee'	B/S	1480	0	10	https://static.orchids.in.ua/img/phalaenopsis-mituo-princess-orange-coffee-foto-6697.jpg
1755	Phalaenopsis Mituo Sun 'Mituo#2' x Mituo King Bellina	B/S	648	0	10	https://static.orchids.in.ua/img/phalaenopsis-mituo-sun-mituo2-x-mituo-king-bellina-foto-5379.jpg
1766	Phalaenopsis modesta	B/S	378	0	10	https://static.orchids.in.ua/img/1-foto-90.jpg
1778	Phalaenopsis (Nobby's Green Eagle x DTE) x (violacea x Su-An Super Star)	B/S	480	0	10	https://static.orchids.in.ua/img/phalaenopsis-nobbys-green-eagle-x-dte-x-violacea-x-su-an-super-star-foto-4372.jpg
1789	Phalaenopsis (PK x Chang Maw Jade) x LD Mok Chio	S/S	378	0	10	https://static.orchids.in.ua/img/phalaenopsis-pk-x-chang-maw-jade-x-ld-mok-chio-foto-5498.jpg
1800	Phalaenopsis Samera	B/S	592	0	10	https://static.orchids.in.ua/img/phalaenopsis-samera-foto-4491.jpg
1810	Phalaenopsis schilleriana Mainshow	B/S	540	0	10	https://static.orchids.in.ua/img/phalaenopsis-schilleriana-mainshow-foto-5670.jpg
1821	Phalaenopsis (speciosa 'c-1' x violacea) x Phalaenopsis LD's Bear Queen	B/S	698	0	10	https://static.orchids.in.ua/img/phalaenopsis-speciosa-c-1-x-violacea-x-phalaenopsis-lds-bear-queen-foto-3690.jpg
1831	Phalaenopsis (stuartiana x celebensis) x Ld’s Bear Queen	F/S	998	0	10	https://static.orchids.in.ua/img/phalaenopsis-stuartiana-x-celebensis-x-ld%E2%80%99s-bear-queen-foto-5027.jpg
1841	Phalaenopsis Telu (lueddemanniana coerulea x tetraspis 'Blue Lip')	B/S	1120	0	10	https://static.orchids.in.ua/img/1-foto-5490.jpg
1852	Phalaenopsis tetraspisis (All red x All red with white middle)	B/S	1350	0	10	https://static.orchids.in.ua/img/1-foto-5517.jpg
1863	Phalaenopsis violacea	B/S	591	0	10	https://static.orchids.in.ua/img/phalaenopsis-violacea-foto-2619.jpg
1873	Phalaenopsis YangYang Gigan Cherry ‘#1’	B/S	810	0	10	https://static.orchids.in.ua/img/1-foto-6019.jpg
1883	Phalaenopsis Yaphon Green Batman 'ES'	B/S	385	0	10	https://static.orchids.in.ua/img/1-foto-6470.jpg
1893	Phalaenopsis Yaphon Pink Bee	F/S	480	0	10	https://static.orchids.in.ua/img/phalaenopsis-yaphon-pink-bee-foto-5580.jpg
1903	Phalaenopsis (Yin's Bellina Kaiulani x Ld's Bear Queen ) x Dragon Tree Eagle 'Red Eagle'	B/S	420	0	10	https://static.orchids.in.ua/img/1-foto-5249.jpg
1912	Phalaenopsis zebrina	B/S	405	0	10	https://static.orchids.in.ua/img/phalaenopsis-zebrina-foto-88.jpg
1922	Phalaenopsis Zheng Min Muscadine x Tying Shin Fly Eagle	F/S	932	0	10	https://static.orchids.in.ua/img/phalaenopsis-zheng-min-muscadine-x-tying-shin-fly-eagle-foto-4503.jpg
1931	Renanthopsis Chienlung Little Beauty	B/S	1947	0	10	https://static.orchids.in.ua/img/1-foto-5261.jpg
1711	Phalaenopsis Miki Pink Planet '173'	S/S	173	0	10	https://static.orchids.in.ua/img/1-foto-6419.jpg
1721	Phalaenopsis Mituo Diamond 'Big Spots'	B/S	540	0	10	https://static.orchids.in.ua/img/phalaenopsis-mituo-diamond-foto-5256.jpg
1731	Phalaenopsis Mituo King 'Spider Web' x Black Eagle 'DT'	B/S	897	0	10	https://static.orchids.in.ua/img/1-foto-6032.jpg
1740	Phalaenopsis Mituo Prince 'YR'	B/S	644	0	10	https://static.orchids.in.ua/img/phalaenopsis-mituo-prince-yr-foto-5896.jpg
1751	Phalaenopsis Mituo Sun 'Mituo # 1' x (Yungho Princess Gelb x Sogo Kaiulani)	B/S	876	0	10	https://static.orchids.in.ua/img/phalaenopsis-mituo-sun-mituo--1-x-yunpho-princess-gelb-x-sogo-kaiulani-foto-6699.jpg
1762	Phalaenopsis Mituo Sun x Ld's Bear King	B/S	4160	0	10	https://static.orchids.in.ua/img/phalaenopsis-mituo-sun-x-lds-bear-king-foto-4610.jpg
1771	Phalaenopsis Mok Choi Yew (gigantea x violacea)	B/S	2620	0	10	https://static.orchids.in.ua/img/phalaenopsis-mok-choi-yew-gigantea-x-violacea-foto-5038.jpg
1779	Phalaenopsis Nobby's Green Eagle x Hawaii Dragon Girl	B/S	744	0	10	https://static.orchids.in.ua/img/phalaenopsis-nobbys-green-eagle-x-hawaii-dragon-girl-foto-4305.jpg
1788	Phalaenopsis (PK x Chang Maw Jade) x LD Mok Chio	S/S	378	0	10	https://static.orchids.in.ua/img/phalaenopsis-pk-x-chang-maw-jade-x-ld-mok-chio-foto-5498.jpg
1795	Phalaenopsis Pylo's Mosaic	B/S	650	0	10	https://static.orchids.in.ua/img/phalaenopsis-pylos-mosaic-foto-5111.jpg
1803	Phalaenopsis Samera blue x (Nobby Green Eagle x DT) x Samera Blue	B/S	405	0	10	https://static.orchids.in.ua/img/1-foto-6894.jpg
1820	Phalaenopsis speciosa 'Blue' x lueddemanniana 'Blue'	B/S	780	0	10	https://static.orchids.in.ua/img/1-foto-6391.jpg
1812	Phalaenopsis schilleriana stripes (clone)	B/S	560	0	10	https://static.orchids.in.ua/img/phalaenopsis-schilleriana-stripes-foto-6875.jpg
1822	Phalaenopsis (speciosa 'coffee&blue' x YangYang Blueberry)	B/S	584	0	10	https://static.orchids.in.ua/img/1-foto-6379.jpg
1832	Phalaenopsis stuartiana x equestris	F/S	845	0	10	https://static.orchids.in.ua/img/phalaenopsis-stuartiana-x-equestris-foto-4546.jpg
1843	Phalaenopsis tetraspis	F/S	560	0	10	https://static.orchids.in.ua/img/phalaenopsis-tetraspis-foto-2394.jpg
1854	Phalaenopsis Timothy Christopher 'Joseph Wu'	F/S	390	0	10	https://static.orchids.in.ua/img/phalaenopsis-timothy-christopher-foto-5514.jpg
1864	Phalaenopsis violacea 'Borneo'	F/S	788	0	10	https://static.orchids.in.ua/img/phalaenopsis-violacea-borneo-foto-1943.jpg
1874	Phalaenopsis YangYang Prince (Jong's Gigan Cherry x LD Bear King)	B/S	627	0	10	https://static.orchids.in.ua/img/1-foto-5752.jpg
1886	Phalaenopsis (Yaphon Lobspis x Liu's Bright Ruby) x schilleriana ‘(TKB-Tayabas)’	S/S	560	0	10	https://static.orchids.in.ua/img/phalaenopsis-yaphon-lobspis-x-lius-bright-ruby-x-schilleriana-%E2%80%98tkb-tayabas%E2%80%99-foto-5984.jpg
1895	Phalaenopsis Yaphon Red Jewel x Ld's Bear King	B/S	675	0	10	https://static.orchids.in.ua/img/phalaenopsis-yaphon-red-jewel-x-lds-bear-king-foto-4387.jpg
1904	Phalaenopsis Yuda Red Blood x Chingruey's Fancy	B/S	689	0	10	https://static.orchids.in.ua/img/phalaenopsis-yuda-red-blood-x-chingrueys-fancy-foto-4632.jpg
1914	Phalaenopsis Zeng Min Muscadine x violacea indigo	F/S	405	0	10	https://static.orchids.in.ua/img/phalaenopsis-zeng-min-muscadine-x-violacea-indigo-foto-4625.jpg
1923	Phalaenopsis Zheng Min Oak (Natasha 'Joy #3' x Yungho Princess Gelb 'Huey Fong')	B/S	520	0	10	https://static.orchids.in.ua/img/phalaenopsis--zheng-min-oak-foto-5720.jpg
1933	Renanthopsis Chienlung Pink Squirrel	B/S	1260	0	10	https://static.orchids.in.ua/img/renanthopsis-chienlung-pink-squirrel-foto-5157.jpg
1713	Phalaenopsis Miro Super Star 'Rainbow' x Mituo Prima 'Mituo #1'	B/S	940	0	10	https://static.orchids.in.ua/img/1-foto-5826.jpg
1723	Phalaenopsis Mituo Diamond Canary 'Green Circle'	B/S	2456	0	10	https://static.orchids.in.ua/img/phalaenopsis-mituo-diamond-canary-green-circle-foto-6489.jpg
1732	Phalaenopsis Mituo King x Black Eagle	S/S	428	0	10	https://static.orchids.in.ua/img/phalaenopsis-mituo-king-x-black-eagle-foto-5513.jpg
1743	Phalaenopsis Mituo princess 'Blue' x gigantea	B/S	1280	0	10	https://static.orchids.in.ua/img/phalaenopsis-mituo-princess-blue-x-gigantea-foto-6585.jpg
1752	Phalaenopsis Mituo Sun 'Mituo #1' x Ld's Bear King 'RK-1'	B/S	940	0	10	https://static.orchids.in.ua/img/phalaenopsis-mituo-sun-mituo-1-x-lds-bear-king-rk-1-foto-5698.jpg
1761	Phalaenopsis (Mituo Sun x Ching Her Buddha) x Mituo Sun	F/S	1620	0	10	https://static.orchids.in.ua/img/phalaenopsis-mituo-sun-x-ching-her-buddha-x-mituo-sun-foto-4617.jpg
1772	Phalaenopsis Mok Choi Yew Indigo	NB/S	625	0	10	https://static.orchids.in.ua/img/mok-cho-yew-gigantea-x-violacea-indigo-foto-3866.jpg
1780	Phalaenopsis Nobby's Green Eagle x mannii black	B/S	675	0	10	https://static.orchids.in.ua/img/phalaenopsis-nobbys-green-eagle-x-mannii-black-foto-5445.jpg
1790	Phalaenopsis Princess Kaiulani x Coral Isles 'Yungho'	F/S	940	0	10	https://static.orchids.in.ua/img/phalaenopsis-princess-kaiulani-x-coral-isles-yungho-foto-4284.jpg
1799	Phalaenopsis Ruby Vasquez x Kung's Spice 'Auspice'	B/S	596	0	10	https://static.orchids.in.ua/img/phalaenopsis-ruby-vasquez-x-kungs-spice-auspice-foto-5265.jpg
1809	Phalaenopsis (schilleriana 'M608' x sanderiana 'Big Pink')	B/S	625	0	10	https://static.orchids.in.ua/img/1-foto-5912.jpg
1819	Phalaenopsis speciosa ('All Red' x 'Su's Coffee Candy)	B/S	720	0	10	https://static.orchids.in.ua/img/1-foto-5975.jpg
1828	Phalaenopsis stuartiana 'Sogo'	B/S	780	0	10	https://static.orchids.in.ua/img/phalaenopsis-stuartiana-sogo-foto-4612.jpg
1837	Phalaenopsis Su An Cricket 'SW'	B/S	640	0	10	https://static.orchids.in.ua/img/phalaenopsis-su-an-cricket-sw-foto-4210.jpg
1847	Phalaenopsis tetraspis 'Red' x 'Blue'	NB/S	280	0	10	https://static.orchids.in.ua/img/1-foto-5388.jpg
1858	Phalaenopsis Tzu Chiang Chrisna (Phalaenopsis Timothy Christopher x Phalaenopsis Yungho Geld Canary)	B/S	540	0	10	https://static.orchids.in.ua/img/1-foto-778.jpg
1868	Phalaenopsis violacea indigo x (violacea x Su-An Super Star)	B/S	840	0	10	https://static.orchids.in.ua/img/phalaenopsis-violacea-indigo-x-violacea-x-su-an-super-star-foto-5305.jpg
1878	Phalaenopsis Yaphon Evergreen x Yungho Gelb Canary 'Joseph Wu'	F/S	696	0	10	https://static.orchids.in.ua/img/phalaenopsis-yaphon-evergreen-x-yungho-gelb-canary-joseph-wu-foto-5031.jpg
1889	Phalaenopsis Yaphon Nicegirl x Zheng Min Tyrannosaurus	F/S	540	0	10	https://static.orchids.in.ua/img/1-foto-5150.jpg
1899	Phalaenopsis Yaphon Sir x Mituo Sun	F/S	1015	0	10	https://static.orchids.in.ua/img/1-foto-4211.jpg
1909	Phalaenopsis Yungho Gelblitz 'TW' x gigantea 'Jumbo Huang'	S/S	840	0	10	https://static.orchids.in.ua/img/phalaenopsis-yungho-gelblitz-tw-x-gigantea-jumbo-huang-foto-5507.jpg
1916	Phalaenopsis Zheng Min Fregata (Natasha 'Joy #3' x Zheng Min Brontosaurus 'Peter')	B/S	840	0	10	https://static.orchids.in.ua/img/phalaenopsis-zheng-min-fregata-natasha-joy-3-x-zheng-min-brontosaurus-peter-foto-5489.jpg
1927	Phalaenopsis Zheng Min Tyrannosaurus x Ld's Bear Queen	B/S	405	0	10	https://static.orchids.in.ua/img/phalaenopsis-zheng-min-tyrannosaurus-x-lds-bear-queen-foto-4363.jpg
1937	Cymbidium Cliff Hutchings	F/S	1504	0	11	https://static.orchids.in.ua/img/cymbidium-cliff-hutchings-foto-3492.jpg
1730	Phalaenopsis Mituo King 'RK1' (Mituo Sun x LD's Bear King 'RK-1')	S/S	336	0	10	https://static.orchids.in.ua/img/phalaenopsis-mituo-king-rk1-mituo-sun-x-lds-bear-king-rk-1-foto-5497.jpg
1741	Phalaenopsis Mituo Prince x LD Emerald Bear	B/S	435	0	10	https://static.orchids.in.ua/img/1-foto-5532.jpg
1750	Phalaenopsis Mituo Shin Perfume 'MO95'	B/S	1620	0	10	https://static.orchids.in.ua/img/1-foto-5701.jpg
1759	Phalaenopsis Mituo Sun Queen 'Mituo#1'	B/S	2640	0	10	https://static.orchids.in.ua/img/2-foto-5695.jpg
1770	Phalaenopsis Mok Choi Yew 'Joy'	F/S	10800	0	10	https://static.orchids.in.ua/img/1-foto-5171.jpg
1830	Phalaenopsis stuartiana var nobilis	B/S	485	0	10	https://static.orchids.in.ua/img/2-foto-363.jpg
1777	Phalaenopsis Nobby's Green Eagle x (Chang Mow Jade x Yungho Gelb Canary)	F/S	826	0	10	https://static.orchids.in.ua/img/phalaenopsis-nobbys-green-eagle-x-chang-mow-jade-x-yungho-gelb-canary-foto-4339.jpg
1786	Phalaenopsis Penang x gigantea	NB/S	1840	0	10	https://static.orchids.in.ua/img/phalaenopsis-penang-x-phalaenopsis-gigantea-foto-2398.jpg
1797	Phalaenopsis Rainbow Falconer x celebensis	B/S	498	0	10	https://static.orchids.in.ua/img/phalaenopsis-rainbow-falconer-x-celebensis-foto-6544.jpg
1806	Phalaenopsis Samera x gigantea	S/S	798	0	10	https://static.orchids.in.ua/img/phalaenopsis-samera-x-gigantea-foto-4548.jpg
1815	Phalaenopsis schilleriana x sib	B/S	425	0	10	https://static.orchids.in.ua/img/1-foto-5671.jpg
1824	Phalaenopsis speciosa coerulea ('Su's Bluish' x 'Su's Coffee Candy')	B/S	1400	0	10	https://static.orchids.in.ua/img/1-foto-6393.jpg
1835	Phalaenopsis stuartiana yellow strain	F/S	780	0	10	https://static.orchids.in.ua/img/1-foto-5764.jpg
1846	Phalaenopsis tetraspis 'Hua Yi'	S/S	324	0	10	https://static.orchids.in.ua/img/1-foto-5375.jpg
1855	Phalaenopsis Tristar Snow Princess 'Tristar'	S/S	448	0	10	https://static.orchids.in.ua/img/1-foto-5742.jpg
1865	Phalaenopsis violacea alba	B/S	625	0	10	https://static.orchids.in.ua/img/2-foto-1895.jpg
1876	Phalaenopsis Yaphon Cousin (KS Happy Eagle x Zheng Min Tyrannosaurus)	F/S	1140	0	10	https://static.orchids.in.ua/img/3-foto-5386.jpg
1887	Phalaenopsis Yaphon Lueddemanniana Star (lueddemanniana x Su An Super Star)	B/S	360	0	10	https://static.orchids.in.ua/img/1-foto-6573.jpg
1897	Phalaenopsis Yaphon Sensational	S/S	298	0	10	https://static.orchids.in.ua/img/phalaenopsis-yaphon-sensational-foto-5504.jpg
1908	Phalaenopsis Yungho Gelb Canary 'Joseph' x Chang Maw Jade 'Eddy's Snow'	B/S	867	0	10	https://static.orchids.in.ua/img/phalaenopsis-yungho-gelb-canary-joseph-x-chang-maw-jade-eddys-snow-foto-4990.jpg
1917	Phalaenopsis Zheng Min Jacaranda 'Yungho'	B/S	698	0	10	https://static.orchids.in.ua/img/phalaenopsis-zheng-min-jacaranda-foto-4027.jpg
1926	Phalaenopsis Zheng Min Tyrannosaurus x gigantea	B/S	1080	0	10	https://static.orchids.in.ua/img/zheng-min-tyrannosaurus-x-gigantea-foto-4547.jpg
1935	Rhynchonopsis Fire Foxtail 'DY'	B/S	1080	0	10	https://static.orchids.in.ua/img/rhynchonopsis-fire-foxtail-dy-foto-5431.jpg
1737	Phalaenopsis Mituo Prince 'Mituo#1' x speciosa	B/S	675	0	10	
1747	Phalaenopsis Mituo Reflex Dragon 'B-3' x gigantea 'M-2'	B/S	1080	0	10	https://static.orchids.in.ua/img/1-foto-6383.jpg
1756	Phalaenopsis Mituo Sun 'Mituo#2' x Ya-Yi Qin	B/S	460	0	10	https://static.orchids.in.ua/img/phalaenopsis-mituo-sun-mituo2-x-ya-yi-qin-foto-6304.jpg
1765	Phalaenopsis (Mituo Venosa x Hannover Passion) x gigantea	B/S	2347	0	10	https://static.orchids.in.ua/img/phalaenopsis-mituo-venosa-x-hannover-passion-x-gigantea-foto-4865.jpg
1774	Phalaenopsis Natasha 'Aiko'	NB/S	540	0	10	https://static.orchids.in.ua/img/2-foto-2886.jpg
1784	Phalaenopsis Penang Girl	B/S	380	0	10	https://static.orchids.in.ua/img/phalaenopsis-penang-girl-foto-2887.jpg
1792	Phalaenopsis pulcherrima alba 'Joseph Wu'	B/S	405	0	10	https://static.orchids.in.ua/img/phalaenopsis-pulcherrima-alba-foto-5515.jpg
1801	Phalaenopsis Samera 'Chien Lung'	F/S	2430	0	10	https://static.orchids.in.ua/img/2-foto-5384.jpg
1814	Phalaenopsis schilleriana x mannii black	B/S	575	0	10	https://static.orchids.in.ua/img/1-foto-6278.jpg
1825	Phalaenopsis (speciosa coerulea 'Su's Coffee Candy' x lueddemanniana coerulea)	B/S	416	0	10	https://static.orchids.in.ua/img/1-foto-5913.jpg
1834	Phalaenopsis stuartiana yellow 'Joseph Wu'	F/S	1080	0	10	https://static.orchids.in.ua/img/phalaenopsis-stuartiana-yellow-joseph-wu-foto-5667.jpg
1845	Phalaenopsis tetraspis 'Galaxy' AM/AOS	B/S	980	0	10	https://static.orchids.in.ua/img/2-foto-6202.jpg
1856	Phalaenopsis Tying Shin Blue Jay x Bacchus	B/S	780	0	10	https://static.orchids.in.ua/img/phalaenopsis-tying-shin-blue-jay-x-bacchus-foto-5304.jpg
1867	Phalaenopsis violacea indigo x micholitzii	B/S	540	0	10	
1877	Phalaenopsis Yaphon Database	F/S	1970	0	10	https://static.orchids.in.ua/img/1-foto-5622.jpg
1888	Phalaenopsis Yaphon Nicegirl x gigantea	B/S	990	0	10	https://static.orchids.in.ua/img/phalaenopsis-yaphon-nicegirl-x-gigantea-foto-4458.jpg
1898	Phalaenopsis Yaphon Sir 'Yaphon #2' x Zheng Min Jacaranda 'Peter'	B/S	881	0	10	https://static.orchids.in.ua/img/phalaenopsis-yaphon-sir-yaphon-2-x-zheng-min-jacaranda-peter-foto-3928.jpg
1906	Phalaenopsis Yuanshan Girl	B/S	810	0	10	https://static.orchids.in.ua/img/phalaenopsis-yuanshan-girl-peter-foto-6621.jpg
1915	Phalaenopsis Zheng Min Anaconda 'Yaphon'	B/S	650	0	10	https://static.orchids.in.ua/img/1-foto-6463.jpg
1925	Phalaenopsis Zheng Min Tyrannosaurus 'Yaphon' x LD's Bear Queen 'Yaphon'	B/S	425	0	10	
1936	Trichoglottis philippinensis x Phalaenopsis equestris alba	NB/S	1326	0	10	https://static.orchids.in.ua/img/trichoglottis-philippinensis-x-phalaenopsis-equestris-alba-foto-5297.jpg
1745	Phalaenopsis Mituo Princess 'YR-11'	B/S	1560	0	10	https://static.orchids.in.ua/img/1-foto-6390.jpg
1754	Phalaenopsis Mituo Sun 'Mituo #1' x Ld's Bear King 'YK-14'	F/S	920	0	10	https://static.orchids.in.ua/img/phalaenopsis-mituo-sun-mituo-1-x-lds-bear-king-yk-14-foto-4585.jpg
1764	Phalaenopsis Mituo Sun x Zheng Min Tyrannosaurus	B/S	780	0	10	https://static.orchids.in.ua/img/phalaenopsis-mituo-sun-x-zheng-min-tyrannosaurus-foto-6583.jpg
1775	Phalaenopsis Natasha 'Auspice'	NB/S	845	0	10	https://static.orchids.in.ua/img/phalaenopsis-natasha-auspice-foto-4544.jpg
1785	Phalaenopsis Penang Violacea 'indigo'	B/S	495	0	10	https://static.orchids.in.ua/img/3-foto-6881.jpg
1796	Phalaenopsis Pylo's Novelty (Mituo King Bellina #1 X Brother Ambo Passion 'OK')	NB/S	270	0	10	https://static.orchids.in.ua/img/pylos-novelty-mituo-king-bellina-1-x-brother-ambo-passion-ok-foto-5520.jpg
1807	Phalaenopsis San Shia Appendo	B/S	680	0	10	https://static.orchids.in.ua/img/phalaenopsis-san-shia-appendo-foto-3886.jpg
1811	Phalaenopsis schilleriana silver leaves	F/S	840	0	10	https://static.orchids.in.ua/img/phalaenopsis-schilleriana-silver-leaves-foto-5669.jpg
1842	Phalaenopsis Tetrasambo x lindenii	B/S	845	0	10	https://static.orchids.in.ua/img/phalaenopsis-tetrasambo-x-lindenii-foto-5615.jpg
1851	Phalaenopsis tetraspisis (All red x All red with white middle)	B/S	1350	0	10	https://static.orchids.in.ua/img/1-foto-5517.jpg
1861	Phalaenopsis venosa red x bellina blue	B/S	650	0	10	https://static.orchids.in.ua/img/phalaenopsis-venosa-red-x-bellina-blue-foto-4367.jpg
1872	Phalaenopsis YangYang Gigan Cherry	B/S	2340	0	10	https://static.orchids.in.ua/img/phalaenopsis-yangyang-gigan-cherry-foto-5188.jpg
1882	Phalaenopsis Yaphon Goodboy x Ld's Bear Queen	B/S	698	0	10	https://static.orchids.in.ua/img/phalaenopsis-yaphon-goodboy-x-lds-bear-queen-foto-4238.jpg
1892	Phalaenopsis Yaphon Perfume 'Yellow' x celebensis 'Yellow'	B/S	478	0	10	https://static.orchids.in.ua/img/phalaenopsis-yaphon-perfume-yellow-x-celebensis-yellow-foto-6469.jpg
1902	Phalaenopsis Yin's Belliambo x Joshua Irwin Ginsberg	B/S	894	0	10	https://static.orchids.in.ua/img/phalaenopsis-yins-belliambo-x-joshua-irwin-ginsberg-foto-4277.jpg
1911	Phalaenopsis (Yungho Gelblitz x venosa) x lueddemanniana Yungho	B/S	810	0	10	https://static.orchids.in.ua/img/phalaenopsis-yungho-gelblitz-x-venosa-x-lueddemanniana-yungho-foto-5766.jpg
1921	Phalaenopsis Zheng Min Muscadine x (Ld's Bear Queen x DTE)	F/S	853	0	10	https://static.orchids.in.ua/img/phalaenopsis-zheng-min-muscadine-x-lds-bear-queen-x-dte-foto-4341.jpg
1932	Renanthopsis Chienlung Little Cricket	B/S	598	0	10	https://static.orchids.in.ua/img/renanthopsis-chienlung-little-cricket-foto-5158.jpg
1753	Phalaenopsis Mituo Sun 'Mituo #1' x Ld's Bear King 'YK-10'	B/S	810	0	10	https://static.orchids.in.ua/img/phalaenopsis-mituo-sun-mituo-1-x-lds-bear-king-yk-10-foto-5474.jpg
1763	Phalaenopsis Mituo Sun x Palace Reef	B/S	650	0	10	https://static.orchids.in.ua/img/phalaenopsis-mituo-sun-x-palace-reef-foto-5182.jpg
1773	Phalaenopsis Mok Choi Yew x Yaphon Sir	B/S	780	0	10	https://static.orchids.in.ua/img/1-foto-5744.jpg
1783	Phalaenopsis parishii	F/S	870	0	10	https://static.orchids.in.ua/img/phalaenopsis-parishii-foto-1110.jpg
1794	Phalaenopsis pulchra	B/S	625	0	10	https://static.orchids.in.ua/img/phalaenopsis-pulchra-foto-1125.jpg
1805	Phalaenopsis Samera x bellina blue	B/S	845	0	10	https://static.orchids.in.ua/img/phalaenopsis-samera-x-bellina-blue-foto-4545.jpg
1816	Phalaenopsis Sogo Pony x (Hannover Passion x Zheng Min Tyrannosaurus)	B/S	378	0	10	https://static.orchids.in.ua/img/phalaenopsis-sogo-pony-x-hannover-passion-x-zheng-min-tyrannosaurus-foto-5280.jpg
1827	Phalaenopsis speciosa x Mituo Prince 'Bb'	B/S	840	0	10	https://static.orchids.in.ua/img/phalaenopsis-speciosa-x-mituo-prince-bb-foto-5471.jpg
1838	Phalaenopsis sumatrana x self	B/S	432	0	10	https://static.orchids.in.ua/img/1-foto-6381.jpg
1848	Phalaenopsis tetraspis 'Red' x 'Purple'	NB/S	560	0	10	https://static.orchids.in.ua/img/1-foto-5385.jpg
1857	Phalaenopsis Tying Shin Fly Eagle	B/S	405	0	10	
1866	Phalaenopsis violacea alba 'Yin#2' x amboinensis semi-alba 'Yin#1'	F/S	780	0	10	https://static.orchids.in.ua/img/3-foto-5719.jpg
1875	Phalaenopsis Yaphon 'Oh Mygod' x Chienlung 'Happy Queen'	B/S	809	0	10	https://static.orchids.in.ua/img/phalaenopsis-yaphon-oh-mygod-x-chienlung-happy-queen-foto-5432.jpg
1884	Phalaenopsis Yaphon in Taiwan (Yaphon Super Jaguar x gigantea)	B/S	2166	0	10	https://static.orchids.in.ua/img/phalaenopsis-yaphon-in-taiwan-yaphon-super-jaguar-x-gigantea-foto-5534.jpg
1894	Phalaenopsis Yaphon Red Jewel x Hawaii Dragon Girl	F/S	498	0	10	https://static.orchids.in.ua/img/phalaenopsis-yaphon-red-jewel-x-hawaii-dragon-girl-foto-4237.jpg
1907	Phalaenopsis Yungho Gelb Canary	B/S	1080	0	10	https://static.orchids.in.ua/img/yungho-gelb-canary-foto-5358.jpg
1919	Phalaenopsis Zheng Min Muscadine '323' x speciosa '41-S'	B/S	432	0	10	https://static.orchids.in.ua/img/phalaenopsis-zheng-min-muscadine-323--x--speciosa-41-s-foto-5702.jpg
1930	Phalaenopsis Zuma Jo (Joey 'Yin#1' x amboinensis 'Nicole')	S/S	270	0	10	https://static.orchids.in.ua/img/phalaenopsis-zuma-jo-joey-yin1-x-amboinensis-nicole-foto-5496.jpg
1758	Phalaenopsis Mituo Sun Queen 'Lotus'	B/S	2080	0	10	https://static.orchids.in.ua/img/1-foto-5254.jpg
1767	Phalaenopsis modesta x sib	B/S	702	0	10	https://static.orchids.in.ua/img/1-foto-6426.jpg
1781	Phalaenopsis Palace Reef	B/S	820	0	10	https://static.orchids.in.ua/img/phalaenopsis-palace-reef-foto-6574.jpg
1791	Phalaenopsis Princess Spot x Misty Green	B/S	3706	0	10	https://static.orchids.in.ua/img/phalaenopsis-princess-spot-x-misty-green-foto-4399.jpg
1802	Phalaenopsis Samera Blue 'Mituo#1'	B/S	540	0	10	https://static.orchids.in.ua/img/phalaenopsis-samera-blue-foto-4994.jpg
1813	Phalaenopsis schilleriana x lindenii	B/S	450	0	10	https://static.orchids.in.ua/img/1-foto-4930.jpg
1823	Phalaenopsis speciosa 'SWR -38' x Mituo King Bellina '126'	B/S	624	0	10	
1833	Phalaenopsis stuartiana x schilleriana 'Joseph Wu'	B/S	980	0	10	https://static.orchids.in.ua/img/phalaenopsis-stuartiana-x-schilleriana-foto-6602.jpg
1844	Phalaenopsis tetraspis 'C1'	NB/S	325	0	10	https://static.orchids.in.ua/img/1-foto-6515.jpg
1853	Phalaenopsis TH's Pit Viper	B/S	1890	0	10	https://static.orchids.in.ua/img/1-foto-5369.jpg
1862	Phalaenopsis Venus	F/S	580	0	10	https://static.orchids.in.ua/img/phalaenopsis-venus-foto-5234.jpg
1871	Phalaenopsis YangYang Bumblebee	NB/S	810	0	10	https://static.orchids.in.ua/img/phalaenopsis-yangyang-bumblebee-foto-5753.jpg
1881	Phalaenopsis Yaphon Goodboy x gigantea	B/S	990	0	10	https://static.orchids.in.ua/img/phalaenopsis-yaphon-goodboy-x-gigantea-foto-4592.jpg
1890	Phalaenopsis Yaphon Nicegirl x Dragon Tree Eagle	B/S	853	0	10	https://static.orchids.in.ua/img/phalaenopsis-yaphon-nicegirl-x-dragon-tree-eagle-foto-4365.jpg
1900	Phalaenopsis Yaphon Snow White 'POM'	S/S	1044	0	10	https://static.orchids.in.ua/img/phalaenopsis-yaphon-snow-white-pom-foto-5412.jpg
1910	Phalaenopsis Yungho Gelblitz x (Brother Trekkie-Princess Kaiulani) 'flava'	F/S	898	0	10	https://static.orchids.in.ua/img/phalaenopsis-yungho-gelblitz-x-brother-trekkie-princess-kaiulani-flava-foto-4996.jpg
1920	Phalaenopsis Zheng min Muscadine x Chienlung Jewel Queen	S/S	810	0	10	https://static.orchids.in.ua/img/phalaenopsis-zheng-min-muscadine-x-chienlung-jewel-queen-foto-5493.jpg
1929	Phalaenopsis Zheng Min Ultrasonic (Auspice Green Lake Peter #1 x Mituo Sun)	NB/S	1120	0	10	https://static.orchids.in.ua/img/phalaenopsis-zheng-min-ultrasonic-auspice-green-lake-peter-1-x-mituo-sun-foto-5535.jpg
1938	Cymbidium Kiwi Midnight	B/S	1480	0	11	https://static.orchids.in.ua/img/1-foto-2676.jpg
1768	Phalaenopsis Mok Choi Yew	B/S	1672	0	10	https://static.orchids.in.ua/img/phalaenopsis-mok-choi-yew-foto-5771.jpg
1782	Phalaenopsis (pallens x tetraspis C1) x bastianii	F/S	613	0	10	https://static.orchids.in.ua/img/phalaenopsis-pallens-x-tetraspis-c1-x-bastianii-foto-4096.jpg
1793	Phalaenopsis pulcherrima pink	F/S	375	0	10	https://static.orchids.in.ua/img/1-foto-6578.jpg
1804	Phalaenopsis Samera x bellina	B/S	405	0	10	https://static.orchids.in.ua/img/2-foto-4338.jpg
1817	Phalaenopsis Sogo Shito x Ld's Bear Queen	S/S	280	0	10	https://static.orchids.in.ua/img/phalaenopsis-sogo-shito-x-lds-bear-queen-foto-5367.jpg
1826	Phalaenopsis speciosa spot	B/S	576	0	10	https://static.orchids.in.ua/img/1-foto-6837.jpg
1836	Phalaenopsis stuartiana yellow x sib	F/S	895	0	10	https://static.orchids.in.ua/img/phalaenopsis-stuartiana-yellow-foto-2397.jpg
1840	Phalaenopsis Telu 'Purple'	B/S	340	0	10	https://static.orchids.in.ua/img/1-foto-5476.jpg
1850	Phalaenopsis tetraspis x Hawaii Dragon Girl	B/S	620	0	10	https://static.orchids.in.ua/img/phalaenopsis-tetraspis-x-hawaii-dragon-girl-foto-5033.jpg
1860	Phalaenopsis (Tzu Chiang Litlitz-micholtzii) '#1' x Joy Dreamy Jade '#7'	B/S	822	0	10	https://static.orchids.in.ua/img/phalaenopsis-tzu-chiang-litlitz-micholtzii-1-x-joy-dreamy-jade-7-foto-4265.jpg
1869	Phalaenopsis violacea x Shingher Pure Love	NB/S	710	0	10	https://static.orchids.in.ua/img/1-foto-5233.jpg
1879	Phalaenopsis Yaphon Gelacea 'Yaphon'	B/S	708	0	10	https://static.orchids.in.ua/img/1-foto-5957.jpg
1885	Phalaenopsis Yaphon Lobispis x schilleriana	B/S	936	0	10	https://static.orchids.in.ua/img/phalaenopsis-yaphon-lobispis-x-schilleriana-foto-5146.jpg
1896	Phalaenopsis Yaphon Red Jewel x Ld's Bear Queen	F/S	690	0	10	https://static.orchids.in.ua/img/phalaenopsis-yaphon-red-jewel-x-lds-bear-queen-foto-4242.jpg
1905	Phalaenopsis Yin's Green Jewel 'Yaphon' x Jennifer Palermo 'C1'	B/S	724	0	10	https://static.orchids.in.ua/img/phalaenopsis-yins-green-jewel-yaphon-x-jennifer-palermo-c1-foto-3759.jpg
1918	Phalaenopsis Zheng Min Jacaranda x (tetraspis-violacea indigo)	S/S	825	0	10	https://static.orchids.in.ua/img/phalaenopsis-zheng-min-jacaranda-x-tetraspis-violacea-indigo-foto-4293.jpg
1928	Phalaenopsis Zheng Min Tyrannosaurus x Yaphon Sir	B/S	390	0	10	https://static.orchids.in.ua/img/phalaenopsis-zheng-min-tyrannosaurus-x-yaphon-sir-foto-4550.jpg
1939	Cymbidium Tuffet	F/S	1504	0	11	https://static.orchids.in.ua/img/cymbidium-tuffet-foto-3486.jpg
1	Aerides lawrenciae var. punctata	F/S	754	2	1	https://static.orchids.in.ua/img/aerides-lawrenciae-var-punctata-foto-3045.jpg
2	Neofinetia falcata x Ascocentrum curvifolium	B/S	270	3	1	https://static.orchids.in.ua/img/neofinetia-falcata-x-ascocentrum-curvifolium-foto-5598.jpg
1061	Laelia tenebrosa vinicolor x Laelia tenebrosa 'Richard'		729	0	7	https://static.orchids.in.ua/img/laelia-tenebrosa-vinicolor-x-laelia-tenebrosa-richard-foto-3506.jpg
1082	Laeliocattleya Gaskell - Pumila 'Azure Star'	B/S	709	0	7	https://static.orchids.in.ua/img/laeliocattleya-gaskell---pumila-azure-star-foto-578.jpg
1092	Laeliocattleya Rubescent Atreus 'Pinky'	B/S	420	0	7	https://static.orchids.in.ua/img/laeliocattleya-rubescent-atreus-pinky-foto-6658.jpg
1102	Laeliocattleya Tokyo Magic 'Hihimanu' x Cattleya lueddemanniana 'Arthur Chadwick'	NB/S	1080	0	7	https://static.orchids.in.ua/img/1-foto-5873.jpg
1113	Myrmecophila tibicinis var semi-alba	B/S	394	0	7	https://static.orchids.in.ua/img/myrmecophila-tibicinis-var-semi-alba-foto-6662.jpg
1123	Potinara Jim Krull 'Hunabu'	B/S	1160	0	7	https://static.orchids.in.ua/img/1-foto-5661.jpg
1132	Potinara Susan Fender 'Cinnamon Stick'	NB/S	675	0	7	https://static.orchids.in.ua/img/potinara-susan-fender-cinnamon-stick-foto-2456.jpg
1141	Rhyncholaelia digbyana	F/S	640	0	7	https://static.orchids.in.ua/img/rhyncholaelia-digbyana-foto-974.jpg
1154	Rhyncholaeliocattleya Chief Canyon 'Morning Call'	B/S	540	0	7	https://static.orchids.in.ua/img/rhyncholaeliocattleya-chief-canyon-morning-call-foto-5892.jpg
1163	Rhyncholaeliocattleya Haadyai Delight x Cattleya Wattana Gold	NB/S	210	0	7	https://static.orchids.in.ua/img/rhyncholaeliocattleya-haadyai-delight-x-cattleya-wattana-gold-foto-6828.jpg
1173	Rhyncholaeliocattleya Mem Buranapan Nikom	B/S	1300	0	7	https://static.orchids.in.ua/img/rhyncholaeliocattleya-mem-buranapan-nikom-foto-6870.jpg
1183	Rhyncholaeliocattleya Siam Aurora	B/S	345	0	7	https://static.orchids.in.ua/img/rhyncholaeliocattleya-siam-aurora-foto-6706.jpg
1193	Rhyncholaeliocattleya Taiwan Good Life 'Blessing Gold'	B/S	345	0	7	https://static.orchids.in.ua/img/rhyncholaeliocattleya-taiwan-good-life-blessing-gold-foto-6665.jpg
1202	Rhynchosophrocattleya Mormilani Jewel 'Chunfong'	B/S	340	0	7	https://static.orchids.in.ua/img/rhynchosophrocattleya-mormilani-jewel-chunfong-foto-2410.jpg
1211	Sophrolaeliocattleya Aloha Jewel 'Tangerine' x Brassolaeliocattleya Guess What 'SVO'	NB/S	945	0	7	https://static.orchids.in.ua/img/1-foto-5879.jpg
1221	Sophrolaeliocattleya Tokyo Life	NB/S	580	0	7	https://static.orchids.in.ua/img/1-foto-6145.jpg
1232	Beallara Mathias 'Glamour'	B/S	530	0	8	https://static.orchids.in.ua/img/beallara-mathias-glamour-foto-2162.jpg
1242	Miltonia clowesii	B/S	480	0	8	https://static.orchids.in.ua/img/miltonia-clowesii-foto-2600.jpg
1252	Oncidium Aidita Tosi	B/S	936	0	8	https://static.orchids.in.ua/img/oncidium-aidita-tosi-foto-6601.jpg
1262	Oncidium (Tolumnia) Midas	F/S	380	0	8	https://static.orchids.in.ua/img/oncidium-tolumnia-midas-foto-3342.jpg
1272	Tolumnia Jairak Firm 'Maroon'	F/S	283	0	8	https://static.orchids.in.ua/img/tolumnia-jairak-firm-maroon-foto-4130.jpg
1278	Wilsonara Finial Fire 'Clown'	B/S	530	0	8	https://static.orchids.in.ua/img/wilsonara-finial-fire-clown-foto-2498.jpg
1289	Paphiopedilum Angel Hair (St. Swithin x sanderianum)	NB/S	795	0	9	https://static.orchids.in.ua/img/paphiopedilum-angel-hair-foto-4477.jpg
1298	Paphiopedilum charlesworthii x Great Pacific	B/S	540	0	9	https://static.orchids.in.ua/img/1-foto-5694.jpg
1308	Paphiopedilum delenatii alba	B/S	654	0	9	https://static.orchids.in.ua/img/paphiopedilum-delenatii-alba-foto-2893.jpg
1318	Paphiopedilum fairrieanum	B/S	810	0	9	https://static.orchids.in.ua/img/2-foto-1422.jpg
1329	Paphiopedilum Green Gem x Hung Sheng Nice	B/S	847	0	9	https://static.orchids.in.ua/img/paphiopedilum-green-gem-x-hung-sheng-nice-foto-1707.jpg
1335	Paphiopedilum henryanum	B/S	425	0	9	https://static.orchids.in.ua/img/paphiopedilum-henryanum-foto-1711.jpg
1347	Paphiopedilum Joyce Hasegawa (delenatii x emersonii)	B/S	675	0	9	https://static.orchids.in.ua/img/paphiopedilum-joyce-hasegawa-delenatii-x-emersonii-foto-1701.jpg
1356	Paphiopedilum Lady Isabel x St Swithin	B/S	1595	0	9	https://static.orchids.in.ua/img/paphiopedilum-lady-isabel-x-st-swithin-foto-4626.jpg
1368	Paphiopedilum Mercatelii (stonei x lowii)	B/S	679	0	9	https://static.orchids.in.ua/img/1-foto-4376.jpg
1378	Paphiopedilum Olympian Yard x spicerianum 'Mjao Hua'	F/S	1904	0	9	https://static.orchids.in.ua/img/paphiopedilum-olympian-yard-x-spicerianum-mjao-hua-foto-2474.jpg
1388	Paphiopedilum rothschildianum x anitum 'Shih Yueh'	NB/S	675	0	9	https://static.orchids.in.ua/img/paphiopedilum-rothschildianum-x-anitum-shih-yueh-foto-5028.jpg
1397	Paphiopedilum Shin-Yi Lady x sanderianum	B/S	1920	0	9	https://static.orchids.in.ua/img/shin-yi-lady-x-sanderianum-foto-4582.jpg
1406	Paphiopedilum supardii	NB/S	420	0	9	https://static.orchids.in.ua/img/paphiopedilum-supardii-foto-1718.jpg
1417	Paphiopedilum Weihnachtsbluher	F/S	450	0	9	https://static.orchids.in.ua/img/1-foto-4217.jpg
1428	Phragmipedium Andean Fire (besseae x lidleyanum)	F/S	380	0	9	https://static.orchids.in.ua/img/1-foto-3637.jpg
1438	Phragmipedium Living Fire (Sorcerer's Apprentice x besseae)	NB/S	380	0	9	https://static.orchids.in.ua/img/phragmipedium-living-fire-foto-1460.jpg
1448	Doritaenopsis I-Hsin Spot Leopard 'peloric'	NB/S	405	0	10	https://static.orchids.in.ua/img/doritaenopsis-i-hsin-spot-leopard-peloric-foto-5672.jpg
1458	Phalaenopsis Al Green Eagle x Mituo Sun	NB/S	498	0	10	https://static.orchids.in.ua/img/phalaenopsis-al-green-eagle-x-mituo-sun-foto-4602.jpg
1469	Phalaenopsis amboinensis yellow x violacea indigo	F/S	828	0	10	https://static.orchids.in.ua/img/phalaenopsis-amboinensis-yellow-x-violacea-indigo-foto-3927.jpg
1479	Phalaenopsis bellina	F/S	468	0	10	https://static.orchids.in.ua/img/1-foto-167.jpg
1489	Phalaenopsis bellina Blue 'Mituo #1'	B/S	728	0	10	https://static.orchids.in.ua/img/phalaenopsis-bellina-blue-mituo-1-foto-6301.jpg
1500	Phalaenopsis celebensis	B/S	336	0	10	https://static.orchids.in.ua/img/1-foto-4907.jpg
1510	Phalaenopsis Chienlung Blood Diamond	NB/S	780	0	10	https://static.orchids.in.ua/img/phalaenopsis-chienlung-blood-diamond-foto-5168.jpg
1521	Phalaenopsis Chienlung Moon Lover	B/S	580	0	10	https://static.orchids.in.ua/img/phalaenopsis-chienlung-moon-lover-foto-5169.jpg
\.


--
-- TOC entry 3880 (class 0 OID 18807177)
-- Dependencies: 206
-- Data for Name: OrderItems; Type: TABLE DATA; Schema: public; Owner: uxbuvhokbbocan
--

COPY public."OrderItems" ("Id", "OrderId", "ItemId", "Quantity") FROM stdin;
1465	1501	1	99
1466	1502	2	88
1471	1507	1	99
1472	1508	2	88
1476	1512	1	99
1477	1513	2	88
1480	1516	1	99
1481	1517	2	88
1486	1522	1	99
1487	1523	2	88
1492	1528	1	99
1493	1529	2	88
1498	1534	1	99
1499	1535	2	88
1504	1540	1	99
1505	1541	2	88
1506	1542	1	1
1507	1543	2	2
1508	1543	1	1
1509	1544	1	99
1510	1545	2	88
1515	1549	1	99
1516	1550	2	88
1521	1555	1	99
1522	1556	2	88
1464	1500	1	2
1527	1561	1	99
1528	1562	2	88
1533	1567	1	99
1534	1568	2	88
1539	1573	1	99
1540	1574	2	88
1545	1579	1	99
1546	1580	2	88
1551	1585	1	99
1552	1586	2	88
1553	1587	1	99
1554	1588	2	88
1557	1591	1	99
1558	1592	2	88
1563	1597	1	99
1564	1598	2	88
1569	1603	1	99
1570	1604	2	88
1573	1607	1	99
1575	1609	2	88
1579	1613	1	99
1580	1614	2	88
1585	1619	1	99
1586	1620	2	88
1591	1625	1	2
1595	1629	1	2
1598	1632	1	2
1601	1635	1	2
1604	1638	1	2
1607	1641	1	2
1611	1645	1	99
1612	1646	2	88
1615	1649	1	99
1616	1650	2	88
1621	1655	1	99
1622	1656	2	88
1627	1661	1	99
1628	1662	2	88
1633	1667	1	99
1634	1668	2	88
1639	1673	1	99
1640	1674	2	88
1645	1679	1	99
1646	1680	2	88
1651	1685	1	99
1652	1686	2	88
1656	1690	1	99
1658	1692	2	88
1663	1697	2	2
1665	1699	1	2
1668	1702	2	2
1669	1703	1	99
1670	1704	2	88
1673	1707	1	1
1674	1708	1	1
1679	1713	1	99
1680	1714	2	88
1685	1719	1	99
1686	1720	2	88
1691	1725	1	99
1692	1726	2	88
1695	1729	1	1
1696	1730	2	1
1697	1730	1	2
1698	1732	1	99
1701	1734	2	88
1467	1503	1	99
1468	1504	2	88
1473	1509	1	2
1478	1514	1	99
1479	1515	2	88
1482	1518	1	99
1483	1519	2	88
1488	1524	1	99
1489	1525	2	88
1494	1530	1	99
1495	1531	2	88
1500	1536	1	99
1501	1537	2	88
1511	1546	1	99
1512	1547	2	88
1517	1551	1	99
1518	1552	2	88
1523	1557	1	99
1524	1558	2	88
1529	1563	1	99
1530	1564	2	88
1535	1569	1	99
1536	1570	2	88
1541	1575	1	99
1542	1576	2	88
1547	1581	1	99
1548	1582	2	88
1555	1589	1	99
1556	1590	2	88
1559	1593	1	99
1560	1594	2	88
1565	1599	1	99
1566	1600	2	88
1571	1605	1	99
1572	1606	2	88
1574	1608	1	99
1576	1610	2	88
1581	1615	1	99
1582	1616	2	88
1587	1621	1	99
1588	1622	2	88
1592	1626	1	99
1593	1627	2	88
1596	1630	1	2
1599	1633	1	2
1602	1636	1	2
1605	1639	1	2
1608	1642	1	2
1613	1647	1	2
1617	1651	1	99
1618	1652	2	88
1623	1657	1	99
1624	1658	2	88
1629	1663	1	99
1630	1664	2	88
1635	1669	1	99
1636	1670	2	88
1641	1675	1	99
1642	1676	2	88
1647	1681	1	99
1649	1683	2	88
1653	1687	1	99
1654	1688	2	88
1659	1693	1	99
1660	1694	2	88
1664	1698	2	1
1666	1700	1	2
1671	1705	1	99
1672	1706	2	88
1675	1709	1	99
1676	1710	2	88
1681	1715	1	99
1682	1716	2	88
1687	1721	1	99
1688	1722	2	88
1693	1727	1	99
1694	1728	2	88
1699	1731	1	99
1700	1733	2	88
1469	1505	1	99
1470	1506	2	88
1474	1510	1	99
1475	1511	2	88
1484	1520	1	99
1485	1521	2	88
1490	1526	1	99
1462	1498	1	2
1463	1499	1	2
1491	1527	2	88
1496	1532	1	99
1497	1533	2	88
1502	1538	1	99
1503	1539	2	88
1513	1548	2	2
1514	1548	1	1
1519	1553	1	99
1520	1554	2	88
1525	1559	1	99
1526	1560	2	88
1531	1565	1	99
1532	1566	2	88
1537	1571	1	99
1538	1572	2	88
1543	1577	1	99
1544	1578	2	88
1549	1583	1	99
1550	1584	2	88
1561	1595	1	99
1562	1596	2	88
1567	1601	1	99
1568	1602	2	88
1577	1611	1	99
1578	1612	2	88
1583	1617	1	99
1584	1618	2	88
1589	1623	1	99
1590	1624	2	88
1594	1628	1	2
1597	1631	1	2
1600	1634	1	2
1603	1637	1	2
1606	1640	1	2
1609	1643	1	99
1610	1644	2	88
1614	1648	1	2
1619	1653	1	99
1620	1654	2	88
1625	1659	1	99
1626	1660	2	88
1631	1665	1	99
1632	1666	2	88
1637	1671	1	99
1638	1672	2	88
1643	1677	1	99
1644	1678	2	88
1648	1682	1	99
1650	1684	2	88
1655	1689	1	99
1657	1691	2	88
1661	1695	1	99
1662	1696	2	88
1667	1701	1	2
1677	1711	1	99
1678	1712	2	88
1683	1717	1	99
1684	1718	2	88
1689	1723	1	99
1690	1724	2	88
\.


--
-- TOC entry 3882 (class 0 OID 18807182)
-- Dependencies: 208
-- Data for Name: Orders; Type: TABLE DATA; Schema: public; Owner: uxbuvhokbbocan
--

COPY public."Orders" ("Id", "DeliveryType", "TakeAwayId", "NPDeliveryId", "PaymentMethod", "PaymentStatus", "UserId", "Overall") FROM stdin;
1501	1	0	2	1	В ожидании оплаты	17	9999
1502	1	0	0	1	В ожидании оплаты	17	8888
1516	1	0	2	1	В ожидании оплаты	17	9999
1517	1	0	0	1	В ожидании оплаты	17	8888
1534	1	0	2	1	В ожидании оплаты	17	9999
1535	1	0	0	1	В ожидании оплаты	17	8888
1542	1	0	1	2	В ожидании оплаты	17	754
1543	1	0	0	0	В ожидании оплаты	17	1294
1544	1	0	2	1	В ожидании оплаты	17	9999
1545	1	0	0	1	В ожидании оплаты	17	8888
1549	1	0	2	1	В ожидании оплаты	17	9999
1550	1	0	0	1	В ожидании оплаты	17	8888
1567	1	0	2	1	В ожидании оплаты	17	9999
1568	1	0	0	1	В ожидании оплаты	17	8888
1585	1	0	2	1	В ожидании оплаты	17	9999
1586	1	0	0	1	В ожидании оплаты	17	8888
1587	1	0	2	1	В ожидании оплаты	17	9999
1588	1	0	0	1	В ожидании оплаты	17	8888
1591	1	0	2	1	В ожидании оплаты	17	9999
1592	1	0	0	1	В ожидании оплаты	17	8888
1607	1	0	2	1	В ожидании оплаты	17	9999
1609	1	0	0	1	В ожидании оплаты	17	8888
1625	1	0	1	1	В ожидании оплаты	2331	1508
1635	1	0	1	1	В ожидании оплаты	2331	1508
1645	1	0	2	1	В ожидании оплаты	17	9999
1646	1	0	0	1	В ожидании оплаты	17	8888
1661	1	0	2	1	В ожидании оплаты	17	9999
1662	1	0	0	1	В ожидании оплаты	17	8888
1679	1	0	2	1	В ожидании оплаты	17	9999
1680	1	0	0	1	В ожидании оплаты	17	8888
1697	1	0	1	1	В ожидании оплаты	17	540
1699	1	0	1	1	В ожидании оплаты	2392	1508
1702	0	0	0	0	В ожидании оплаты	17	540
1703	1	0	2	1	В ожидании оплаты	17	9999
1704	1	0	0	1	В ожидании оплаты	17	8888
1707	2	0	0	2	В ожидании оплаты	17	754
1708	2	2	0	2	В ожидании оплаты	17	754
1725	1	0	2	1	В ожидании оплаты	17	9999
1726	1	0	0	1	В ожидании оплаты	17	8888
1729	0	0	0	0	В ожидании оплаты	2417	754
1730	0	0	0	0	В ожидании оплаты	17	1778
1731	1	0	2	1	В ожидании оплаты	17	9999
1500	1	0	2	1	В ожидании оплаты	17	1508
1733	1	0	0	1	В ожидании оплаты	17	8888
1503	1	0	2	1	В ожидании оплаты	17	9999
1504	1	0	0	1	В ожидании оплаты	17	8888
1518	1	0	2	1	В ожидании оплаты	17	9999
1519	1	0	0	1	В ожидании оплаты	17	8888
1536	1	0	2	1	В ожидании оплаты	17	9999
1537	1	0	0	1	В ожидании оплаты	17	8888
1546	1	0	2	1	В ожидании оплаты	17	9999
1547	1	0	0	1	В ожидании оплаты	17	8888
1551	1	0	2	1	В ожидании оплаты	17	9999
1552	1	0	0	1	В ожидании оплаты	17	8888
1569	1	0	2	1	В ожидании оплаты	17	9999
1570	1	0	0	1	В ожидании оплаты	17	8888
1589	1	0	2	1	В ожидании оплаты	17	9999
1590	1	0	0	1	В ожидании оплаты	17	8888
1593	1	0	2	1	В ожидании оплаты	17	9999
1594	1	0	0	1	В ожидании оплаты	17	8888
1608	1	0	2	1	В ожидании оплаты	17	9999
1610	1	0	0	1	В ожидании оплаты	17	8888
1626	1	0	2	1	В ожидании оплаты	17	9999
1627	1	0	0	1	В ожидании оплаты	17	8888
1636	1	0	1	2	В ожидании оплаты	2331	1508
1647	1	0	1	1	В ожидании оплаты	17	1508
1663	1	0	2	1	В ожидании оплаты	17	9999
1664	1	0	0	1	В ожидании оплаты	17	8888
1681	1	0	2	1	В ожидании оплаты	17	9999
1683	1	0	0	1	В ожидании оплаты	17	8888
1698	1	0	2	1	В ожидании оплаты	2326	270
1700	1	0	1	1	В ожидании оплаты	2392	1508
1705	1	0	2	1	В ожидании оплаты	17	9999
1706	1	0	0	1	В ожидании оплаты	17	8888
1709	1	0	2	1	В ожидании оплаты	17	9999
1710	1	0	0	1	В ожидании оплаты	17	8888
1727	1	0	2	1	В ожидании оплаты	17	9999
1728	1	0	0	1	В ожидании оплаты	17	8888
1732	1	0	2	1	В ожидании оплаты	17	9999
1734	1	0	0	1	В ожидании оплаты	17	8888
1505	1	0	2	1	В ожидании оплаты	17	9999
1506	1	0	0	1	В ожидании оплаты	17	8888
1520	1	0	2	1	В ожидании оплаты	17	9999
1521	1	0	0	1	В ожидании оплаты	17	8888
1538	1	0	2	1	В ожидании оплаты	17	9999
1539	1	0	0	1	В ожидании оплаты	17	8888
1548	1	0	0	0	В ожидании оплаты	17	1294
1553	1	0	2	1	В ожидании оплаты	17	9999
1554	1	0	0	1	В ожидании оплаты	17	8888
1571	1	0	2	1	В ожидании оплаты	17	9999
1572	1	0	0	1	В ожидании оплаты	17	8888
1595	1	0	2	1	В ожидании оплаты	17	9999
1596	1	0	0	1	В ожидании оплаты	17	8888
1611	1	0	2	1	В ожидании оплаты	17	9999
1612	1	0	0	1	В ожидании оплаты	17	8888
1628	1	0	1	1	В ожидании оплаты	2331	1508
1637	1	0	0	0	В ожидании оплаты	2331	1508
1648	1	0	2	1	В ожидании оплаты	17	1508
1665	1	0	2	1	В ожидании оплаты	17	9999
1666	1	0	0	1	В ожидании оплаты	17	8888
1682	1	0	2	1	В ожидании оплаты	17	9999
1684	1	0	0	1	В ожидании оплаты	17	8888
1701	1	0	1	1	В ожидании оплаты	2392	1508
1711	1	0	2	1	В ожидании оплаты	17	9999
1712	1	0	0	1	В ожидании оплаты	17	8888
1507	1	0	2	1	В ожидании оплаты	17	9999
1508	1	0	0	1	В ожидании оплаты	17	8888
1522	1	0	2	1	В ожидании оплаты	17	9999
1523	1	0	0	1	В ожидании оплаты	17	8888
1540	1	0	2	1	В ожидании оплаты	17	9999
1541	1	0	0	1	В ожидании оплаты	17	8888
1555	1	0	2	1	В ожидании оплаты	17	9999
1556	1	0	0	1	В ожидании оплаты	17	8888
1573	1	0	2	1	В ожидании оплаты	17	9999
1574	1	0	0	1	В ожидании оплаты	17	8888
1597	1	0	2	1	В ожидании оплаты	17	9999
1598	1	0	0	1	В ожидании оплаты	17	8888
1613	1	0	2	1	В ожидании оплаты	17	9999
1614	1	0	0	1	В ожидании оплаты	17	8888
1629	1	0	2	2	В ожидании оплаты	2331	1508
1638	2	1	0	1	В ожидании оплаты	2331	1508
1649	1	0	2	1	В ожидании оплаты	17	9999
1650	1	0	0	1	В ожидании оплаты	17	8888
1667	1	0	2	1	В ожидании оплаты	17	9999
1668	1	0	0	1	В ожидании оплаты	17	8888
1685	1	0	2	1	В ожидании оплаты	17	9999
1686	1	0	0	1	В ожидании оплаты	17	8888
1713	1	0	2	1	В ожидании оплаты	17	9999
1714	1	0	0	1	В ожидании оплаты	17	8888
1509	1	0	2	1	В ожидании оплаты	17	1508
1524	1	0	2	1	В ожидании оплаты	17	9999
1525	1	0	0	1	В ожидании оплаты	17	8888
1557	1	0	2	1	В ожидании оплаты	17	9999
1558	1	0	0	1	В ожидании оплаты	17	8888
1575	1	0	2	1	В ожидании оплаты	17	9999
1576	1	0	0	1	В ожидании оплаты	17	8888
1599	1	0	2	1	В ожидании оплаты	17	9999
1600	1	0	0	1	В ожидании оплаты	17	8888
1615	1	0	2	1	В ожидании оплаты	17	9999
1616	1	0	0	1	В ожидании оплаты	17	8888
1630	1	0	1	1	В ожидании оплаты	2331	1508
1639	1	0	1	1	В ожидании оплаты	2331	1508
1651	1	0	2	1	В ожидании оплаты	17	9999
1652	1	0	0	1	В ожидании оплаты	17	8888
1669	1	0	2	1	В ожидании оплаты	17	9999
1670	1	0	0	1	В ожидании оплаты	17	8888
1687	1	0	2	1	В ожидании оплаты	17	9999
1688	1	0	0	1	В ожидании оплаты	17	8888
1715	1	0	2	1	В ожидании оплаты	17	9999
1716	1	0	0	1	В ожидании оплаты	17	8888
1510	1	0	2	1	В ожидании оплаты	17	9999
1511	1	0	0	1	В ожидании оплаты	17	8888
1526	1	0	2	1	В ожидании оплаты	17	9999
1527	1	0	0	1	В ожидании оплаты	17	8888
1559	1	0	2	1	В ожидании оплаты	17	9999
1560	1	0	0	1	В ожидании оплаты	17	8888
1577	1	0	2	1	В ожидании оплаты	17	9999
1578	1	0	0	1	В ожидании оплаты	17	8888
1601	1	0	2	1	В ожидании оплаты	17	9999
1602	1	0	0	1	В ожидании оплаты	17	8888
1617	1	0	2	1	В ожидании оплаты	17	9999
1618	1	0	0	1	В ожидании оплаты	17	8888
1631	2	1	0	1	В ожидании оплаты	2331	1508
1640	1	0	1	1	В ожидании оплаты	2331	1508
1653	1	0	2	1	В ожидании оплаты	17	9999
1654	1	0	0	1	В ожидании оплаты	17	8888
1671	1	0	2	1	В ожидании оплаты	17	9999
1672	1	0	0	1	В ожидании оплаты	17	8888
1689	1	0	2	1	В ожидании оплаты	17	9999
1691	1	0	0	1	В ожидании оплаты	17	8888
1717	1	0	2	1	В ожидании оплаты	17	9999
1718	1	0	0	1	В ожидании оплаты	17	8888
1512	1	0	2	1	В ожидании оплаты	17	9999
1513	1	0	0	1	В ожидании оплаты	17	8888
1528	1	0	2	1	В ожидании оплаты	17	9999
1529	1	0	0	1	В ожидании оплаты	17	8888
1561	1	0	2	1	В ожидании оплаты	17	9999
1562	1	0	0	1	В ожидании оплаты	17	8888
1579	1	0	2	1	В ожидании оплаты	17	9999
1580	1	0	0	1	В ожидании оплаты	17	8888
1603	1	0	2	1	В ожидании оплаты	17	9999
1604	1	0	0	1	В ожидании оплаты	17	8888
1619	1	0	2	1	В ожидании оплаты	17	9999
1620	1	0	0	1	В ожидании оплаты	17	8888
1632	1	0	1	1	В ожидании оплаты	2331	1508
1641	1	0	2	2	В ожидании оплаты	2331	1508
1655	1	0	2	1	В ожидании оплаты	17	9999
1656	1	0	0	1	В ожидании оплаты	17	8888
1673	1	0	2	1	В ожидании оплаты	17	9999
1674	1	0	0	1	В ожидании оплаты	17	8888
1690	1	0	2	1	В ожидании оплаты	17	9999
1692	1	0	0	1	В ожидании оплаты	17	8888
1719	1	0	2	1	В ожидании оплаты	17	9999
1720	1	0	0	1	В ожидании оплаты	17	8888
1514	1	0	2	1	В ожидании оплаты	17	9999
1515	1	0	0	1	В ожидании оплаты	17	8888
1530	1	0	2	1	В ожидании оплаты	17	9999
1531	1	0	0	1	В ожидании оплаты	17	8888
1563	1	0	2	1	В ожидании оплаты	17	9999
1564	1	0	0	1	В ожидании оплаты	17	8888
1581	1	0	2	1	В ожидании оплаты	17	9999
1582	1	0	0	1	В ожидании оплаты	17	8888
1605	1	0	2	1	В ожидании оплаты	17	9999
1606	1	0	0	1	В ожидании оплаты	17	8888
1621	1	0	2	1	В ожидании оплаты	17	9999
1622	1	0	0	1	В ожидании оплаты	17	8888
1633	1	0	1	1	В ожидании оплаты	2331	1508
1642	1	0	1	2	В ожидании оплаты	17	1508
1657	1	0	2	1	В ожидании оплаты	17	9999
1658	1	0	0	1	В ожидании оплаты	17	8888
1675	1	0	2	1	В ожидании оплаты	17	9999
1676	1	0	0	1	В ожидании оплаты	17	8888
1693	1	0	2	1	В ожидании оплаты	17	9999
1694	1	0	0	1	В ожидании оплаты	17	8888
1721	1	0	2	1	В ожидании оплаты	17	9999
1722	1	0	0	1	В ожидании оплаты	17	8888
1532	1	0	2	1	В ожидании оплаты	17	9999
1533	1	0	0	1	В ожидании оплаты	17	8888
1565	1	0	2	1	В ожидании оплаты	17	9999
1566	1	0	0	1	В ожидании оплаты	17	8888
1583	1	0	2	1	В ожидании оплаты	17	9999
1584	1	0	0	1	В ожидании оплаты	17	8888
1623	1	0	2	1	В ожидании оплаты	17	9999
1624	1	0	0	1	В ожидании оплаты	17	8888
1634	1	0	1	1	В ожидании оплаты	2331	1508
1643	1	0	2	1	В ожидании оплаты	17	9999
1644	1	0	0	1	В ожидании оплаты	17	8888
1659	1	0	2	1	В ожидании оплаты	17	9999
1660	1	0	0	1	В ожидании оплаты	17	8888
1677	1	0	2	1	В ожидании оплаты	17	9999
1678	1	0	0	1	В ожидании оплаты	17	8888
1695	1	0	2	1	В ожидании оплаты	17	9999
1696	1	0	0	1	В ожидании оплаты	17	8888
1723	1	0	2	1	В ожидании оплаты	17	9999
1724	1	0	0	1	В ожидании оплаты	17	8888
1498	1	0	1	1	В ожидании оплаты	17	1508
1499	1	0	1	1	В ожидании оплаты	17	1508
\.


--
-- TOC entry 3884 (class 0 OID 18807190)
-- Dependencies: 210
-- Data for Name: Users; Type: TABLE DATA; Schema: public; Owner: uxbuvhokbbocan
--

COPY public."Users" ("Id", "Phone", "Username", "Password", "Region", "City", "Adress", "Type") FROM stdin;
2	636348226	kekovec	$2b$10$HexWSf/svGcfpSCknujOeOG3L/Ii0Vk16CRtLPI9jh4.FEvtQ6m7K	Ukraine	Kiev	Darnitsa	User
4	636348227	Zakkaray	$2b$10$.WamXuWDs5MFORzV2L3gieuD7XY7Tv5xyDWjMiMP1vnbED6mTqpcC	Ukraine	Kiev	Darnitsa	User
6	380424243243	undefined	$2b$10$pNDSeU60Kez2mSXfsJJUZeJXlHZyASmLAtVeDhQub6f9/gDXyReT.	undefined	Золочев	fdsfds	User
7	380432342343	Zakkarat	$2b$10$LbvWt4mPcW.qAzUCe6v/LubYfG98vMGG6vvBt5QKc9MNBVtd46vti	Киевская область	Обухов	fdsfd	User
9	380544354543	Miksq	$2b$10$Bg4OMZLVCByTl/sRjqi1o.w2tnPf52gwF4zULm/QWCQzUvnK6elti	Николаевская область	Николаев	gfdg	User
11	380421343223	miks	$2b$10$jlUsFPUFCAOvWLogkOhp..a0KW/9BtV6HX7C1zpfB125ViVovGesm	Николаевская область	Новая Одесса	424234	User
17	380552320103	Merilend	$2b$10$jn8ny7uK.HDAyZg/5LoR6ewBpZm48mKK.kSpO96d1x3jUUTTvH0Ea	Киевская область	Киев	Darnitsa	User
2417	380939050207	Nadi	$2b$10$qiCpXCFFTOxBwLC407jAXuVvUaZWovffmp1fdnqtio.i.qn3MfK5q	Киевская область	Киев	Адрес 3	User
2422	38032313432	pika2	$2b$10$FMFIc.kaxuuN3vtmwFemUugtLA7Z.Vd1nd2QmrtfXAmlLwWszCUEK	Киевская область	Киев	Darnn	User
31	380000000000	Tester	$2b$10$W.ePUnHjO/0Fdj0dRdHlaeGx8hy17z/Z81Y4xRCfrYQ24yHO9kSCq	Киевская область	Киев	Test street	User
32	380000000001	Tester1	$2b$10$9tHucwEAwByJhvSXFd2cYuRmN8db7Fa0MrRVPXP/TyqF8KWXmvk5W	Киевская область	Киев	Test street	User
34	380000008909	Test	$2b$10$xhhzTpOBc962O19DiSoRLue6pOjnstPzMEUdguLKgsthvuVf.6zR2	Киевская область	Киев	Test street	User
35	380000008901	Test1	$2b$10$Vr0u5jFIFpMBZFp8J6Kng.2VQxwupTUhIXlCAP8ftQ0NWtP/tB2Ji	Киевская область	Киев	Test street	User
36	380000000004	test4	$2b$10$g8OstBQjMR0A8JpLEeAmQurnPe/Co7rhPEPN1yZOvsMj3H9Fwm/le	Луганская область	Луганск	test4	User
37	380996048910	kapitoshka	$2b$10$I3XOFCYVK4NF/Br7UirS6uJCEpRgC8YOjru8Q0tsRlqqKkRrMwTe6	Киевская область	Киев	да	User
38	380999999999	test99	$2b$10$dsNQmPPJipg/P6Ao7NDcceK3WWkBXtDctrllQX5iGs9sPgkSUOAEa	Луганская область	Лутугино	test99	User
39	380999999988	test98	$2b$10$dh//EAYWKbmvfEJ7pZa8o.6SviCEID7Xndh4RyVwAMbUUUHZhmEyG	Киевская область	Обухов	test98	User
43	380222222222	test999	$2b$10$i4cJVfzVYTpazIQrObCWleXQLmcMNvX8rRngda3p5DCtvOCwT3vYW	Киевская область	Обухов	Kiev	User
50	380222221222	test9999	$2b$10$bnJL1zPzDX6rcDtcwyUMCu5ra2gNSVfo66hCF3pHFhXikCjwSBENm	Киевская область	Обухов	Kiev	User
55	380222221221	test99999	$2b$10$1ZX4gsB4IuqD0NC5Ft8eIeSLqeoEhQ/.BWewrHDHHnFH5DJ.CTwuy	Киевская область	Обухов	Kiev	User
56	380323123132	test777	$2b$10$OdUwyekY1IYVfgQhOCksveFTYPEWsbcl8mzp8SGOC8dGxvAfrkiwu	Кировоградская область	Бобринец	kek	User
57	380666666333	testfin	$2b$10$7fPLA5gUsl/fLYcaPCo/lOHwyyPF3fD86OV5lblPS32bd9LvcjoaW	Луганская область	Луганск	Adress	User
58	380245444444	testfinz	$2b$10$asJIrGBsVErzIyjUKBqkz.j8IJkGYbgQKkWH.rNPtBl8i9JGJVN12	Луганская область	Миусинск	das	User
59	380505535424	NosovK	$2b$10$nDiKSJjmtulTIkwZNmBJh.BZCchc0lEKT4Gqp9kWcWClK1q3YBTOO	Киевская область	Киев	ghg	User
60	380805553535	Дмитрий	$2b$10$3tJwZvAjWHx.jMUYuDW.aOVVntcbiJsP7d0/qH6garX1pk3UbL//u	Киевская область	Киев	НЕ СКАЖУ	User
61	380111111111	111	$2b$10$tQYUvplTJcpMy1FYA8gbbOefF87NYsvVchlS6EnJMotpLrAC2GQqq	Киевская область	Ирпень	111	User
62	380121231212	123	$2b$10$jcC1Rusc6Vf/P6urpQ/YSeP5UdVODxGkRzz85SdmAAU931FTwQixm	Ивано-Франковская область	Калуш	123 123 123	User
63	380123123123	test	$2b$10$1eI5XgrEeTtSBCur9xbgveII14e6NU9mi58fBj1TSMBwbS3S1ZTBi	Автономная Республика Крым	Алупка	awd	User
65	380		$2b$10$lQOOoCqDzrkSqGs5y4pyp.UUIfvd9JAmRliJtlUHWwJ4KFDOfw.fy				User
66	380333333333	kek	$2b$10$334.trRam4iDsIJlKq4GquvtvyYcAma4AuGsNB1LW3qDTjqlax6kC	Луганская область	Лутугино	eeee	User
70	38098908	jhkhjk	$2b$10$HeuchpcKJs0T6isedX5aq.j1gqiz.Ic7JyCr6wab5NV3tEosXCJ8y	Киевская область			User
72	380123213123	test42	$2b$10$vfi94fSu9pPL7ODFBaFRY.O74zPxsjcOBkRY8FAwERMOS67W3GB9i	Автономная Республика Крым	Красноперекопск		User
2317	380636363633	newland	$2b$10$jqNXK6f.PHSuQrh7kLHpZO18CochfCzdtX8FSm0G.MtQftQ5Evgrq	Киевская область	Киев	Darnitsa	User
2214	380212312313	bobMarlo	$2b$10$s52RE.bTN7wSxV17ujQEBelNHoGtgRyMHR1hb2jiZvY7ZdPfdpK4q	Луганская область	Лутугино	sdadsa	User
2326	380222132245	h	$2b$10$lPGTMo/Qnyy4fq1DJx.m/OaKRp8OCHA2bgRVNaqc/wvVIQ/s1bVfG	Киевская область	Ирпень	h	User
2331	4324324243424	per	$2b$10$qQB74BnLGGlQvEP/aNjPcOET1F.TIiBwK2TBKHlNU9.w13eM7.Z4m	Киевская область	Ирпень	per	User
2392	380889888989	newUser	$2b$10$xcX8spkRVQZzbNzNDu6o3e9xWi1og4NLnJ15yhC6dpys.amTvq.TC	Киевская область	Вышгород	heh	User
1558	636348229	54wgBSId	$2b$10$bMIxV7grwym1GGsjONPGrebqNVbHZqauOFg/oE6inwNvLTi26UuIi	Kirovohradska oblast	Lviv	Darnitsa	User
\.


--
-- TOC entry 3892 (class 0 OID 0)
-- Dependencies: 203
-- Name: Category_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: uxbuvhokbbocan
--

SELECT pg_catalog.setval('public."Category_Id_seq"', 11, true);


--
-- TOC entry 3893 (class 0 OID 0)
-- Dependencies: 205
-- Name: Orchids_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: uxbuvhokbbocan
--

SELECT pg_catalog.setval('public."Orchids_Id_seq"', 1939, true);


--
-- TOC entry 3894 (class 0 OID 0)
-- Dependencies: 207
-- Name: OrderItems_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: uxbuvhokbbocan
--

SELECT pg_catalog.setval('public."OrderItems_Id_seq"', 1701, true);


--
-- TOC entry 3895 (class 0 OID 0)
-- Dependencies: 209
-- Name: Orders_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: uxbuvhokbbocan
--

SELECT pg_catalog.setval('public."Orders_Id_seq"', 1734, true);


--
-- TOC entry 3896 (class 0 OID 0)
-- Dependencies: 211
-- Name: Users_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: uxbuvhokbbocan
--

SELECT pg_catalog.setval('public."Users_Id_seq"', 2422, true);


--
-- TOC entry 3732 (class 2606 OID 18807199)
-- Name: Category Category_pkey; Type: CONSTRAINT; Schema: public; Owner: uxbuvhokbbocan
--

ALTER TABLE ONLY public."Category"
    ADD CONSTRAINT "Category_pkey" PRIMARY KEY ("Id");


--
-- TOC entry 3734 (class 2606 OID 18807201)
-- Name: Orchids Orchids_pkey; Type: CONSTRAINT; Schema: public; Owner: uxbuvhokbbocan
--

ALTER TABLE ONLY public."Orchids"
    ADD CONSTRAINT "Orchids_pkey" PRIMARY KEY ("Id");


--
-- TOC entry 3737 (class 2606 OID 18807203)
-- Name: OrderItems OrderItems_pkey; Type: CONSTRAINT; Schema: public; Owner: uxbuvhokbbocan
--

ALTER TABLE ONLY public."OrderItems"
    ADD CONSTRAINT "OrderItems_pkey" PRIMARY KEY ("Id");


--
-- TOC entry 3739 (class 2606 OID 18807205)
-- Name: Orders Orders_pkey; Type: CONSTRAINT; Schema: public; Owner: uxbuvhokbbocan
--

ALTER TABLE ONLY public."Orders"
    ADD CONSTRAINT "Orders_pkey" PRIMARY KEY ("Id");


--
-- TOC entry 3741 (class 2606 OID 18807207)
-- Name: Users UC_Username; Type: CONSTRAINT; Schema: public; Owner: uxbuvhokbbocan
--

ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "UC_Username" UNIQUE ("Username");


--
-- TOC entry 3743 (class 2606 OID 18807209)
-- Name: Users Unique Phone; Type: CONSTRAINT; Schema: public; Owner: uxbuvhokbbocan
--

ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Unique Phone" UNIQUE ("Phone");


--
-- TOC entry 3745 (class 2606 OID 18807211)
-- Name: Users Users_pkey; Type: CONSTRAINT; Schema: public; Owner: uxbuvhokbbocan
--

ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_pkey" PRIMARY KEY ("Id");


--
-- TOC entry 3735 (class 1259 OID 18807212)
-- Name: fki_FK_toCategory; Type: INDEX; Schema: public; Owner: uxbuvhokbbocan
--

CREATE INDEX "fki_FK_toCategory" ON public."Orchids" USING btree ("CategoryId");


--
-- TOC entry 3746 (class 2606 OID 18807213)
-- Name: Orchids FK_toCategory; Type: FK CONSTRAINT; Schema: public; Owner: uxbuvhokbbocan
--

ALTER TABLE ONLY public."Orchids"
    ADD CONSTRAINT "FK_toCategory" FOREIGN KEY ("CategoryId") REFERENCES public."Category"("Id") NOT VALID;


--
-- TOC entry 3747 (class 2606 OID 18807218)
-- Name: OrderItems toOrchids; Type: FK CONSTRAINT; Schema: public; Owner: uxbuvhokbbocan
--

ALTER TABLE ONLY public."OrderItems"
    ADD CONSTRAINT "toOrchids" FOREIGN KEY ("ItemId") REFERENCES public."Orchids"("Id");


--
-- TOC entry 3748 (class 2606 OID 18807223)
-- Name: OrderItems toOrders; Type: FK CONSTRAINT; Schema: public; Owner: uxbuvhokbbocan
--

ALTER TABLE ONLY public."OrderItems"
    ADD CONSTRAINT "toOrders" FOREIGN KEY ("OrderId") REFERENCES public."Orders"("Id");


--
-- TOC entry 3749 (class 2606 OID 18807228)
-- Name: Orders toUser; Type: FK CONSTRAINT; Schema: public; Owner: uxbuvhokbbocan
--

ALTER TABLE ONLY public."Orders"
    ADD CONSTRAINT "toUser" FOREIGN KEY ("UserId") REFERENCES public."Users"("Id");


--
-- TOC entry 3891 (class 0 OID 0)
-- Dependencies: 654
-- Name: LANGUAGE plpgsql; Type: ACL; Schema: -; Owner: postgres
--

GRANT ALL ON LANGUAGE plpgsql TO uxbuvhokbbocan;


-- Completed on 2021-05-04 00:43:19

--
-- PostgreSQL database dump complete
--

