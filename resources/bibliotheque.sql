--
-- PostgreSQL database dump
--

-- Dumped from database version 16.6 (Ubuntu 16.6-1.pgdg24.04+1)
-- Dumped by pg_dump version 16.6 (Ubuntu 16.6-1.pgdg24.04+1)

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
-- Name: emprunts; Type: TABLE; Schema: public; Owner: postgres
--
DROP DATABASE IF EXISTS postgres;
CREATE DATABASE postgres;

\c bibliotheque

drop  table  if  exists  Penalites;
drop  table  if  exists  Emprunts;
drop  table  if  exists  Membres;
drop  table  if  exists  Livres;

CREATE TABLE public.emprunts (
    empruntid integer NOT NULL,
    membreid integer NOT NULL,
    livreid integer NOT NULL,
    dateemprunt date NOT NULL,
    dateretourprevue date NOT NULL,
    dateretoureffective date
);


ALTER TABLE public.emprunts OWNER TO postgres;

--
-- Name: emprunts_empruntid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.emprunts_empruntid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.emprunts_empruntid_seq OWNER TO postgres;

--
-- Name: emprunts_empruntid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.emprunts_empruntid_seq OWNED BY public.emprunts.empruntid;


--
-- Name: livres; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.livres (
    id integer NOT NULL,
    isbn character varying(13),
    titre character varying(255),
    auteur character varying(255),
    nationaliteauteur character varying(100),
    categorie character varying(100),
    dateparution character varying(10),
    nombreexemplaires integer
);


ALTER TABLE public.livres OWNER TO postgres;

--
-- Name: livres_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.livres_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.livres_id_seq OWNER TO postgres;

--
-- Name: livres_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.livres_id_seq OWNED BY public.livres.id;


--
-- Name: membres; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.membres (
    id integer NOT NULL,
    nom character varying(255) NOT NULL,
    prenom character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    telephone character varying(20) NOT NULL,
    adhesiondate date NOT NULL
);


ALTER TABLE public.membres OWNER TO postgres;

--
-- Name: membres_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.membres_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.membres_id_seq OWNER TO postgres;

--
-- Name: membres_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.membres_id_seq OWNED BY public.membres.id;


--
-- Name: penalites; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.penalites (
    penaliteid integer NOT NULL,
    empruntid integer NOT NULL,
    montant numeric(10,2) NOT NULL
);


ALTER TABLE public.penalites OWNER TO postgres;

--
-- Name: penalites_penaliteid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.penalites_penaliteid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.penalites_penaliteid_seq OWNER TO postgres;

--
-- Name: penalites_penaliteid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.penalites_penaliteid_seq OWNED BY public.penalites.penaliteid;


--
-- Name: emprunts empruntid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.emprunts ALTER COLUMN empruntid SET DEFAULT nextval('public.emprunts_empruntid_seq'::regclass);


--
-- Name: livres id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.livres ALTER COLUMN id SET DEFAULT nextval('public.livres_id_seq'::regclass);


--
-- Name: membres id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.membres ALTER COLUMN id SET DEFAULT nextval('public.membres_id_seq'::regclass);


--
-- Name: penalites penaliteid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.penalites ALTER COLUMN penaliteid SET DEFAULT nextval('public.penalites_penaliteid_seq'::regclass);


--
-- Data for Name: emprunts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.emprunts (empruntid, membreid, livreid, dateemprunt, dateretourprevue, dateretoureffective) FROM stdin;
1	1	1	2024-01-01	2024-01-15	2024-01-18
2	2	2	2024-01-02	2024-01-16	\N
3	3	3	2024-01-03	2024-01-17	2024-01-25
4	4	4	2024-01-04	2024-01-18	2024-01-18
5	5	5	2024-01-05	2024-01-19	\N
6	6	6	2024-01-06	2024-01-20	2024-01-19
7	7	7	2024-01-07	2024-01-21	\N
8	8	8	2024-01-08	2024-01-22	2024-01-23
9	9	9	2024-01-09	2024-01-23	2024-01-23
10	10	10	2024-01-10	2024-01-24	\N
11	11	11	2024-01-11	2024-01-25	2024-01-30
12	12	12	2024-01-12	2024-01-26	\N
13	13	13	2024-01-13	2024-01-27	2024-02-25
14	14	14	2024-01-14	2024-01-28	2024-01-28
15	15	15	2024-01-15	2024-01-29	\N
16	16	16	2024-01-16	2024-01-30	2024-02-02
17	17	17	2024-01-17	2024-01-31	\N
18	18	18	2024-01-18	2024-02-01	2024-02-03
19	19	19	2024-01-19	2024-02-02	2024-02-02
20	20	20	2024-01-20	2024-02-03	\N
21	21	21	2024-01-21	2024-02-04	\N
22	22	22	2024-01-22	2024-02-05	2024-02-08
23	23	23	2024-01-23	2024-02-06	\N
24	24	24	2024-01-24	2024-02-07	\N
25	25	25	2024-01-25	2024-02-08	2024-02-10
26	26	26	2024-01-26	2024-02-09	\N
27	27	27	2024-01-27	2024-02-10	2024-02-05
28	28	28	2024-01-28	2024-02-11	2024-02-10
29	29	29	2024-01-29	2024-02-12	\N
30	30	30	2024-01-30	2024-02-13	\N
31	31	31	2024-01-31	2024-02-14	2024-02-16
32	32	32	2024-02-01	2024-02-15	\N
33	33	33	2024-02-02	2024-02-16	2024-02-20
34	34	34	2024-02-03	2024-02-17	2024-02-15
35	35	35	2024-02-04	2024-02-18	\N
36	36	36	2024-02-05	2024-02-19	\N
37	37	37	2024-02-06	2024-02-20	2024-02-20
38	38	38	2024-02-07	2024-02-21	\N
39	39	39	2024-02-08	2024-02-22	2024-02-24
40	40	40	2024-02-09	2024-02-23	2024-02-23
41	41	41	2024-02-10	2024-02-24	2024-03-24
42	42	42	2024-02-11	2024-02-25	\N
43	43	43	2024-02-12	2024-02-26	\N
44	44	44	2024-02-13	2024-02-27	2024-02-27
45	45	45	2024-02-14	2024-02-28	2024-03-03
46	46	46	2024-02-15	2024-02-29	\N
47	47	47	2024-02-16	2024-03-01	2024-03-01
48	48	48	2024-02-17	2024-03-02	\N
49	49	49	2024-02-18	2024-03-03	2024-03-03
50	50	50	2024-02-19	2024-03-04	2024-03-05
51	1	1	2024-02-20	2024-03-05	\N
52	69	50	2024-03-01	2024-03-15	2024-03-15
\.


--
-- Data for Name: livres; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.livres (id, isbn, titre, auteur, nationaliteauteur, categorie, dateparution, nombreexemplaires) FROM stdin;
1	9781234567890	l"Etranger	Albert Camus	Française	Philosophie	1942-06-01	12
2	9781234567891	1984	George Orwell	Anglaise	Politique	1949-06-08	15
3	9781234567892	To Kill a Mockingbird	Harper Lee	Américaine	Littérature	1960-07-11	10
4	9781234567893	Introduction to Algorithms	Thomas H. Cormen	Américaine	Informatique	2009-07-31	8
5	9781234567894	One Piece Vol. 1	Eiichiro Oda	Japonaise	Manga	1997-12-24	20
6	9781234567895	Le Petit Prince	Antoine de Saint-Exupéry	Française	Littérature	1943-04-06	18
7	9781234567896	Sapiens: A Brief History of Humankind	Yuval Noah Harari	Israélienne	Scientifique	2014-02-10	9
8	8978123456789	Watchmen	Alan Moore	Anglaise	BD	1986-09-01	11
9	9781234567898	Les Misérables	Victor Hugo	Française	Littérature	1862-01-01	7
10	9781234567899	Méditations Métaphysiques	René Descartes	Française	Philosophie	1641-08-28	6
11	9781234567800	Naruto Vol. 1	Masashi Kishimoto	Japonaise	Manga	1999-09-21	22
12	9781234567801	The Art of Computer Programming	Donald Knuth	Américaine	Informatique	1968-01-01	5
13	9781234567802	La Nausée	Jean-Paul Sartre	Française	Philosophie	1938-06-01	12
14	9781234567803	Python Crash Course	Eric Matthes	Américaine	Informatique	2015-11-01	10
15	9781234567804	Dragon Ball Vol. 1	Akira Toriyama	Japonaise	Manga	1984-12-03	25
16	9781234567805	War and Peace	Leo Tolstoy	Russe	Littérature	1869-01-01	8
17	9781234567806	The Selfish Gene	Richard Dawkins	Anglaise	Scientifique	1976-11-13	14
18	9781234567807	Calvin and Hobbes	Bill Watterson	Américaine	BD	1985-11-18	13
19	9781234567808	Crime and Punishment	Fyodor Dostoevsky	Russe	Littérature	1866-01-01	7
20	9781234567809	Critique of Pure Reason	Immanuel Kant	Allemande	Philosophie	1781-01-01	4
21	9781234567810	Bleach Vol. 1	Tite Kubo	Japonaise	Manga	2001-08-07	18
22	9781234567811	Clean Code	Robert C. Martin	Américaine	Informatique	2008-08-01	9
23	9781234567812	The Catcher in the Rye	J.D. Salinger	Américaine	Littérature	1951-07-16	12
24	9781234567813	Gödel, Escher, Bach	Douglas Hofstadter	Américaine	Scientifique	1979-02-05	5
25	9781234567814	Asterix the Gaul	René Goscinny	Française	BD	1961-10-29	20
26	9781234567815	Pride and Prejudice	Jane Austen	Anglaise	Littérature	1813-01-28	11
27	9781234567816	Meditations	Marcus Aurelius	Romaine	Philosophie	180-01-01	7
28	9781234567817	Fullmetal Alchemist Vol. 1	Hiromu Arakawa	Japonaise	Manga	2001-07-12	16
29	9781234567818	Design Patterns	Erich Gamma	Allemande	Informatique	1994-10-21	8
30	9781234567819	Moby Dick	Herman Melville	Américaine	Littérature	1851-10-18	10
31	9781234567820	Thinking, Fast and Slow	Daniel Kahneman	Israélienne	Scientifique	2011-10-25	14
32	9781234567821	The Adventures of Tintin	Hergé	Belge	BD	1929-01-10	25
33	9781234567822	Brave New World	Aldous Huxley	Anglaise	Politique	1932-08-01	11
34	9781234567823	Attack on Titan Vol. 1	Hajime Isayama	Japonaise	Manga	2009-09-09	18
35	9781234567824	The Myth of Sisyphus	Albert Camus	Française	Philosophie	1942-01-01	9
36	9781234567825	Head First Java	Kathy Sierra	Américaine	Informatique	2005-02-09	12
37	9781234567826	The Brothers Karamazov	Fyodor Dostoevsky	Russe	Littérature	1880-01-01	6
38	9781234567827	A Brief History of Time	Stephen Hawking	Anglaise	Scientifique	1988-03-01	15
39	9781234567828	Persepolis	Marjane Satrapi	Iranienne	BD	2000-11-01	10
40	9781234567829	Democracy in America	Alexis de Tocqueville	Française	Politique	1835-01-01	5
41	9781234567830	Death Note Vol. 1	Tsugumi Ohba	Japonaise	Manga	2003-12-01	19
42	9781234567831	You Don’t Know JS	Kyle Simpson	Américaine	Informatique	2014-12-01	13
43	9781234567832	Don Quixote	Miguel de Cervantes	Espagnole	Littérature	1605-01-16	8
44	9781234567833	The Origin of Species	Charles Darwin	Anglaise	Scientifique	1859-11-24	10
45	9781234567834	Calvinism	Jean Calvin	Française	Philosophie	1536-01-01	7
46	9781234567835	Akira Vol. 1	Katsuhiro Otomo	Japonaise	Manga	1982-12-20	14
47	9781234567836	Artificial Intelligence: A Modern Approach	Stuart Russell	Américaine	Informatique	1995-01-01	10
48	9781234567837	Frankenstein	Mary Shelley	Anglaise	Littérature	1818-01-01	9
49	9781234567838	On the Origin of Inequality	Jean-Jacques Rousseau	Française	Politique	1755-01-01	6
50	9781234567839	The Sandman	Neil Gaiman	Anglaise	BD	1989-01-01	12
\.


--
-- Data for Name: membres; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.membres (id, nom, prenom, email, telephone, adhesiondate) FROM stdin;
1	Bessala	Tina	tina.bessala@example.com	237704123456	2023-07-21
2	Fouda	David	david.fouda@example.com	237705234567	2023-08-22
3	Kouadio	Valérie	valerie.kouadio@example.com	237706345678	2023-09-23
4	Manga	Julien	julien.manga@example.com	237707456789	2023-10-24
5	Zang	Rita	rita.zang@example.com	237708567890	2023-11-25
6	Nkongho	Sandro	sandro.nkongho@example.com	237709678901	2023-12-26
7	Tchinda	Hélène	helene.tchinda@example.com	237710789012	2023-01-27
8	Djoumessi	Lucie	lucie.djoumessi@example.com	237711890123	2023-02-28
9	Koua	Josephine	josephine.koua@example.com	237712901234	2023-03-29
10	Ayissi	Catherine	catherine.ayissi@example.com	237713012345	2023-04-30
11	Mbo	Fabrice	fabrice.mbo@example.com	237714123456	2023-05-01
12	Bebey	Nathalie	nathalie.bebey@example.com	237715234567	2023-06-02
13	Ekane	Michel	michel.ekane@example.com	237716345678	2023-07-03
14	Fombo	Blaise	blaise.fombo@example.com	237717456789	2023-08-04
15	Ewang	Isabelle	isabelle.ewang@example.com	237718567890	2023-09-05
16	Tchouo	Thierry	thierry.tchouo@example.com	237719678901	2023-10-06
17	Moukouri	Rachel	rachel.moukouri@example.com	237720789012	2023-11-07
18	Tchinga	Fernand	fernand.tchinga@example.com	237721890123	2023-12-08
19	Ndoula	Marthe	marthe.ndoula@example.com	237722901234	2023-01-09
20	Bongue	Patricia	patricia.bongue@example.com	237723012345	2023-02-10
21	Mavoungou	Guy	guy.mavoungou@example.com	237724123456	2023-03-11
22	Tanda	Grace	grace.tanda@example.com	237725234567	2023-04-12
23	Noutchoume	Sylvain	sylvain.noutchoume@example.com	237726345678	2023-05-13
24	Ebo	Amandine	amandine.ebo@example.com	237727456789	2023-06-14
25	Mouafo	Michel	michel.mouafo@example.com	237728567890	2023-07-15
26	Bache	Gaëtan	gaetan.bache@example.com	237729678901	2023-08-16
27	Ebelle	Aline	aline.ebelle@example.com	237730789012	2023-09-17
28	Limbong	Eric	eric.limbong@example.com	237731890123	2023-10-18
29	Kouekam	Maurice	maurice.kouekam@example.com	237732901234	2023-11-19
30	Djimadoum	Rolande	rolande.djimadoum@example.com	237733012345	2023-12-20
31	Mbah	Didier	didier.mbah@example.com	237734123456	2023-01-21
32	Tchuem	Mireille	mireille.tchuem@example.com	237735234567	2023-02-22
33	Eyamba	Laurent	laurent.eyamba@example.com	237736345678	2023-03-23
34	Akoa	Jessica	jessica.akoa@example.com	237737456789	2023-04-24
35	Foulen	Pauline	pauline.foulen@example.com	237738567890	2023-05-25
36	Zemmo	Blandine	blandine.zemmo@example.com	237739678901	2023-06-26
37	Essindi	Patrice	patrice.essindi@example.com	237740789012	2023-07-27
38	Tita	Valerie	valerie.tita@example.com	237741890123	2023-08-28
39	Ebiane	Hugues	hugues.ebiane@example.com	237742901234	2023-09-29
40	Bissek	Paul	paul.bissek@example.com	237743012345	2023-10-30
41	Mandjio	Frédéric	frederic.mandjio@example.com	237744123456	2023-11-01
42	Bendi	Stella	stella.bendi@example.com	237745234567	2023-12-02
43	Bebey	Joseph	joseph.bebey@example.com	237746345678	2023-01-03
44	Mbanga	Eugène	eugene.mbanga@example.com	237747456789	2023-02-04
45	Ebongue	Alice	alice.ebongue@example.com	237748567890	2023-03-05
46	Kouoh	Mireille	mireille.kouoh@example.com	237749678901	2023-04-06
47	Njoya	Jean	jean.njoya@example.com	237695123456	2023-05-01
48	Mbang	Paul	paul.mbang@example.com	237698234567	2023-06-02
49	Ngwang	Marie	marie.ngwang@example.com	237677345678	2023-07-03
50	Tchouang	Eric	eric.tchouang@example.com	237687456789	2023-08-04
51	Ndukong	Alice	alice.ndukong@example.com	237678567890	2023-09-05
52	Mokoki	Gustave	gustave.mokoki@example.com	237675678901	2023-10-06
53	Fonkwa	Charlotte	charlotte.fonkwa@example.com	237690789012	2023-11-07
54	Diala	Joseph	joseph.diala@example.com	237691890123	2023-12-08
55	Moly	Sophie	sophie.moly@example.com	237692901234	2023-01-09
56	Atsu	Pierre	pierre.atsu@example.com	237693012345	2023-02-10
57	Njoya	Clara	clara.njoya@example.com	237694123456	2023-03-11
58	Mpondo	Luc	luc.mpondo@example.com	237695234567	2023-04-12
59	Fombo	Brigitte	brigitte.fombo@example.com	237696345678	2023-05-13
60	Talla	Benoit	benoit.talla@example.com	237697456789	2023-06-14
61	Ombolo	Julie	julie.ombolo@example.com	237698567890	2023-07-15
62	Ngah	Michel	michel.ngah@example.com	237699678901	2023-08-16
63	Tanyi	Sylvie	sylvie.tanyi@example.com	237700789012	2023-09-17
64	Bita	Kouadio	kouadio.bita@example.com	237701890123	2023-10-18
65	Adom	Samuel	samuel.adom@example.com	237702901234	2023-11-19
66	Chouo	Esther	esther.chouo@example.com	237703012345	2023-12-20
67	Dupont	Michel	michel.dupont@example.com	237701234567	2023-04-22
68	Lebeuf	Sophie	sophie.lebeuf@example.com	237712345678	2023-05-15
69	Tchoumi	Bernadette	bernadette.tchoumi@example.com	237723456789	2023-06-18
\.


--
-- Data for Name: penalites; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.penalites (penaliteid, empruntid, montant) FROM stdin;
1	1	300.00
2	2	800.00
3	3	100.00
4	4	500.00
5	5	2900.00
6	6	300.00
7	7	200.00
8	8	300.00
9	9	200.00
10	10	200.00
11	11	400.00
12	12	200.00
13	13	2900.00
14	14	400.00
15	15	100.00
\.


--
-- Name: emprunts_empruntid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.emprunts_empruntid_seq', 52, true);


--
-- Name: livres_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.livres_id_seq', 50, true);


--
-- Name: membres_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.membres_id_seq', 69, true);


--
-- Name: penalites_penaliteid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.penalites_penaliteid_seq', 15, true);


--
-- Name: emprunts emprunts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.emprunts
    ADD CONSTRAINT emprunts_pkey PRIMARY KEY (empruntid);


--
-- Name: livres livres_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.livres
    ADD CONSTRAINT livres_pkey PRIMARY KEY (id);


--
-- Name: membres membres_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.membres
    ADD CONSTRAINT membres_email_key UNIQUE (email);


--
-- Name: membres membres_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.membres
    ADD CONSTRAINT membres_pkey PRIMARY KEY (id);


--
-- Name: penalites penalites_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.penalites
    ADD CONSTRAINT penalites_pkey PRIMARY KEY (penaliteid);


--
-- Name: emprunts emprunts_livreid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.emprunts
    ADD CONSTRAINT emprunts_livreid_fkey FOREIGN KEY (livreid) REFERENCES public.livres(id) ON DELETE CASCADE;


--
-- Name: emprunts emprunts_membreid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.emprunts
    ADD CONSTRAINT emprunts_membreid_fkey FOREIGN KEY (membreid) REFERENCES public.membres(id) ON DELETE CASCADE;


--
-- Name: penalites penalites_empruntid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.penalites
    ADD CONSTRAINT penalites_empruntid_fkey FOREIGN KEY (empruntid) REFERENCES public.emprunts(empruntid) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

