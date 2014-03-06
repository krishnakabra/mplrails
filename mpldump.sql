--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: active_admin_comments; Type: TABLE; Schema: public; Owner: bhanu; Tablespace: 
--

CREATE TABLE active_admin_comments (
    id integer NOT NULL,
    resource_id character varying(255) NOT NULL,
    resource_type character varying(255) NOT NULL,
    author_id integer,
    author_type character varying(255),
    body text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    namespace character varying(255)
);


ALTER TABLE public.active_admin_comments OWNER TO bhanu;

--
-- Name: active_admin_comments_id_seq; Type: SEQUENCE; Schema: public; Owner: bhanu
--

CREATE SEQUENCE active_admin_comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_admin_comments_id_seq OWNER TO bhanu;

--
-- Name: active_admin_comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bhanu
--

ALTER SEQUENCE active_admin_comments_id_seq OWNED BY active_admin_comments.id;


--
-- Name: admin_users; Type: TABLE; Schema: public; Owner: bhanu; Tablespace: 
--

CREATE TABLE admin_users (
    id integer NOT NULL,
    email character varying(255) DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying(255) DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying(255),
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0 NOT NULL,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip character varying(255),
    last_sign_in_ip character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.admin_users OWNER TO bhanu;

--
-- Name: admin_users_id_seq; Type: SEQUENCE; Schema: public; Owner: bhanu
--

CREATE SEQUENCE admin_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_users_id_seq OWNER TO bhanu;

--
-- Name: admin_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bhanu
--

ALTER SEQUENCE admin_users_id_seq OWNED BY admin_users.id;


--
-- Name: battings; Type: TABLE; Schema: public; Owner: bhanu; Tablespace: 
--

CREATE TABLE battings (
    id integer NOT NULL,
    innings integer,
    name character varying(255),
    runs integer,
    balls integer,
    ones integer,
    twos integer,
    threes integer,
    fours integer,
    sixes integer,
    status boolean,
    bowler character varying(255),
    strikerate double precision,
    score_id integer,
    team_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.battings OWNER TO bhanu;

--
-- Name: battings_id_seq; Type: SEQUENCE; Schema: public; Owner: bhanu
--

CREATE SEQUENCE battings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.battings_id_seq OWNER TO bhanu;

--
-- Name: battings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bhanu
--

ALTER SEQUENCE battings_id_seq OWNED BY battings.id;


--
-- Name: bowlers; Type: TABLE; Schema: public; Owner: bhanu; Tablespace: 
--

CREATE TABLE bowlers (
    id integer NOT NULL,
    innings integer,
    name character varying(255),
    runs integer,
    overs double precision,
    avg double precision,
    wides integer,
    noball integer,
    maidens integer,
    wkts integer,
    score_id integer,
    team_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.bowlers OWNER TO bhanu;

--
-- Name: bowlers_id_seq; Type: SEQUENCE; Schema: public; Owner: bhanu
--

CREATE SEQUENCE bowlers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bowlers_id_seq OWNER TO bhanu;

--
-- Name: bowlers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bhanu
--

ALTER SEQUENCE bowlers_id_seq OWNED BY bowlers.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: bhanu; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying(255) NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO bhanu;

--
-- Name: scores; Type: TABLE; Schema: public; Owner: bhanu; Tablespace: 
--

CREATE TABLE scores (
    id integer NOT NULL,
    name character varying(255),
    team1 character varying(255),
    team2 character varying(255),
    team1score character varying(255),
    team2score character varying(255),
    toss character varying(255),
    venue character varying(255),
    date date,
    guest1 character varying(255),
    guest2 character varying(255),
    guest3 character varying(255),
    guest4 character varying(255),
    guest5 character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    photo1_file_name character varying(255),
    photo1_content_type character varying(255),
    photo1_file_size integer,
    photo1_updated_at timestamp without time zone,
    photo2_file_name character varying(255),
    photo2_content_type character varying(255),
    photo2_file_size integer,
    photo2_updated_at timestamp without time zone,
    photo3_file_name character varying(255),
    photo3_content_type character varying(255),
    photo3_file_size integer,
    photo3_updated_at timestamp without time zone,
    photo4_file_name character varying(255),
    photo4_content_type character varying(255),
    photo4_file_size integer,
    photo4_updated_at timestamp without time zone,
    photo5_file_name character varying(255),
    photo5_content_type character varying(255),
    photo5_file_size integer,
    photo5_updated_at timestamp without time zone
);


ALTER TABLE public.scores OWNER TO bhanu;

--
-- Name: scores_id_seq; Type: SEQUENCE; Schema: public; Owner: bhanu
--

CREATE SEQUENCE scores_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.scores_id_seq OWNER TO bhanu;

--
-- Name: scores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bhanu
--

ALTER SEQUENCE scores_id_seq OWNED BY scores.id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: bhanu; Tablespace: 
--

CREATE TABLE teams (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.teams OWNER TO bhanu;

--
-- Name: teams_id_seq; Type: SEQUENCE; Schema: public; Owner: bhanu
--

CREATE SEQUENCE teams_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_id_seq OWNER TO bhanu;

--
-- Name: teams_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bhanu
--

ALTER SEQUENCE teams_id_seq OWNED BY teams.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: bhanu
--

ALTER TABLE ONLY active_admin_comments ALTER COLUMN id SET DEFAULT nextval('active_admin_comments_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: bhanu
--

ALTER TABLE ONLY admin_users ALTER COLUMN id SET DEFAULT nextval('admin_users_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: bhanu
--

ALTER TABLE ONLY battings ALTER COLUMN id SET DEFAULT nextval('battings_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: bhanu
--

ALTER TABLE ONLY bowlers ALTER COLUMN id SET DEFAULT nextval('bowlers_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: bhanu
--

ALTER TABLE ONLY scores ALTER COLUMN id SET DEFAULT nextval('scores_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: bhanu
--

ALTER TABLE ONLY teams ALTER COLUMN id SET DEFAULT nextval('teams_id_seq'::regclass);


--
-- Data for Name: active_admin_comments; Type: TABLE DATA; Schema: public; Owner: bhanu
--

COPY active_admin_comments (id, resource_id, resource_type, author_id, author_type, body, created_at, updated_at, namespace) FROM stdin;
\.


--
-- Name: active_admin_comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bhanu
--

SELECT pg_catalog.setval('active_admin_comments_id_seq', 1, false);


--
-- Data for Name: admin_users; Type: TABLE DATA; Schema: public; Owner: bhanu
--

COPY admin_users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at) FROM stdin;
1	admin@example.com	$2a$10$Ng6IKqo5GnlYQQHYfCCKku3XodqVg/BEXIbTF193pAPmdfBAHie3y	\N	\N	\N	1	2014-03-06 10:47:02.886229	2014-03-06 10:47:02.886229	127.0.0.1	127.0.0.1	2014-03-06 10:46:12.519309	2014-03-06 10:47:02.887823
\.


--
-- Name: admin_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bhanu
--

SELECT pg_catalog.setval('admin_users_id_seq', 1, true);


--
-- Data for Name: battings; Type: TABLE DATA; Schema: public; Owner: bhanu
--

COPY battings (id, innings, name, runs, balls, ones, twos, threes, fours, sixes, status, bowler, strikerate, score_id, team_id, created_at, updated_at) FROM stdin;
1	1	Euna Wehner	130	26	28	10	2	10	6	f	Filomena Beatty IV	500	1	1	2014-03-06 10:46:29.04725	2014-03-06 10:46:29.04725
2	1	Mr. Jermey Feeney	134	63	23	10	5	4	10	f	Stuart Emard	212.699999999999989	1	1	2014-03-06 10:46:29.053227	2014-03-06 10:46:29.053227
3	1	Flo Sawayn	111	45	26	6	5	4	7	f	Miss Vladimir Purdy	246.669999999999987	1	1	2014-03-06 10:46:29.056651	2014-03-06 10:46:29.056651
4	1	Mr. Reta Murphy	145	60	25	9	2	9	10	t	Abigayle Deckow	241.669999999999987	1	1	2014-03-06 10:46:29.060026	2014-03-06 10:46:29.060026
5	1	Dexter Hoppe	152	63	24	8	4	10	10	t	Dr. Fabian Krajcik	241.27000000000001	1	1	2014-03-06 10:46:29.063274	2014-03-06 10:46:29.063274
6	1	Dr. Rudy Schroeder	135	65	40	6	5	8	6	f	Marco Harvey	207.689999999999998	1	1	2014-03-06 10:46:29.066432	2014-03-06 10:46:29.066432
7	1	Jannie Kutch	146	50	38	9	4	9	7	t	Ms. Raheem Kulas	292	1	1	2014-03-06 10:46:29.069832	2014-03-06 10:46:29.069832
8	1	Pete Wilderman PhD	118	20	25	10	3	4	8	f	Orland Botsford	590	1	1	2014-03-06 10:46:29.073208	2014-03-06 10:46:29.073208
9	1	Mallie Vandervort	150	23	23	10	5	8	10	t	Rico Kilback DDS	652.169999999999959	1	1	2014-03-06 10:46:29.076438	2014-03-06 10:46:29.076438
10	1	Ms. Terrence Mann	123	28	26	6	3	10	6	t	Corene Wiegand	439.29000000000002	1	1	2014-03-06 10:46:29.07962	2014-03-06 10:46:29.07962
11	1	Mrs. Bertha Dickinson	156	41	36	10	2	10	9	f	Imelda Roberts III	380.490000000000009	1	1	2014-03-06 10:46:29.085068	2014-03-06 10:46:29.085068
12	2	Kane Nicolas	151	54	40	6	5	6	10	t	Fredrick Mayer	279.629999999999995	1	2	2014-03-06 10:46:29.121429	2014-03-06 10:46:29.121429
13	2	Zena Kessler II	104	23	21	5	3	7	6	f	Marina Mills	452.170000000000016	1	2	2014-03-06 10:46:29.125128	2014-03-06 10:46:29.125128
14	2	Andre Denesik V	125	65	31	9	2	4	9	f	Noemie Koch	192.310000000000002	1	2	2014-03-06 10:46:29.128921	2014-03-06 10:46:29.128921
15	2	Haylee Haley	125	28	25	6	4	7	8	f	Ms. Rex Leannon	446.430000000000007	1	2	2014-03-06 10:46:29.132535	2014-03-06 10:46:29.132535
16	2	Brigitte Gusikowski	142	54	29	10	3	9	8	f	Savanah Ziemann	262.95999999999998	1	2	2014-03-06 10:46:29.136221	2014-03-06 10:46:29.136221
17	2	Elmo Zieme	125	26	29	10	4	7	6	f	Dr. Toni Romaguera	480.769999999999982	1	2	2014-03-06 10:46:29.139943	2014-03-06 10:46:29.139943
18	2	Dr. Arvel Quitzon	139	21	38	9	5	5	8	f	Magnus Reichel	661.899999999999977	1	2	2014-03-06 10:46:29.143501	2014-03-06 10:46:29.143501
19	2	Roy Hoeger	121	50	39	6	2	4	8	t	Miss Ashton Rodriguez	242	1	2	2014-03-06 10:46:29.147437	2014-03-06 10:46:29.147437
20	2	Myron Dietrich	137	33	26	7	3	7	10	f	Josephine Bernhard	415.149999999999977	1	2	2014-03-06 10:46:29.150927	2014-03-06 10:46:29.150927
21	2	Daphne Bergnaum	126	39	31	8	5	4	8	f	Katelynn Tromp	323.079999999999984	1	2	2014-03-06 10:46:29.155147	2014-03-06 10:46:29.155147
22	2	Jamir Braun	127	53	36	7	3	5	8	f	Lula Steuber	239.620000000000005	1	2	2014-03-06 10:46:29.158448	2014-03-06 10:46:29.158448
23	1	Eden Gorczany	155	24	30	8	5	10	9	f	Ms. Ford Renner	645.830000000000041	2	3	2014-03-06 10:46:29.181372	2014-03-06 10:46:29.181372
24	1	Celine Goodwin	133	49	39	9	2	4	9	f	Cleveland Eichmann	271.430000000000007	2	3	2014-03-06 10:46:29.185017	2014-03-06 10:46:29.185017
25	1	Santiago Kling	132	31	31	9	5	5	8	t	Brianne Connelly	425.810000000000002	2	3	2014-03-06 10:46:29.189947	2014-03-06 10:46:29.189947
26	1	Wilma Stracke	142	38	31	8	3	8	9	t	Tristin Predovic	373.680000000000007	2	3	2014-03-06 10:46:29.193274	2014-03-06 10:46:29.193274
27	1	Lauretta Hoppe	120	36	26	7	2	5	9	f	Keon Toy	333.329999999999984	2	3	2014-03-06 10:46:29.196896	2014-03-06 10:46:29.196896
28	1	Justyn Kunde	151	61	30	10	5	8	9	t	Mr. Jesus Abernathy	247.539999999999992	2	3	2014-03-06 10:46:29.20064	2014-03-06 10:46:29.20064
29	1	Ross Abernathy	136	52	37	9	3	9	6	t	Justina Bartoletti	261.54000000000002	2	3	2014-03-06 10:46:29.204113	2014-03-06 10:46:29.204113
30	1	Alyce Grimes	153	34	38	10	5	8	8	t	Melany Bailey	450	2	3	2014-03-06 10:46:29.20717	2014-03-06 10:46:29.20717
31	1	Arianna Jaskolski	129	27	36	9	3	6	7	f	Trisha Mante	477.779999999999973	2	3	2014-03-06 10:46:29.210892	2014-03-06 10:46:29.210892
32	1	Leonard Hettinger	133	36	25	6	4	9	8	f	Ms. Jane Reichert	369.439999999999998	2	3	2014-03-06 10:46:29.214573	2014-03-06 10:46:29.214573
33	1	Haylee Labadie	127	32	26	5	5	4	10	t	Shaylee Hudson	396.879999999999995	2	3	2014-03-06 10:46:29.218327	2014-03-06 10:46:29.218327
34	2	Arch Schaden	124	44	27	7	3	5	9	f	Dewitt Dibbert	281.819999999999993	2	4	2014-03-06 10:46:29.237056	2014-03-06 10:46:29.237056
35	2	Freeda Johnson	131	20	28	10	3	5	9	f	Ignatius Botsford	655	2	4	2014-03-06 10:46:29.240915	2014-03-06 10:46:29.240915
36	2	Madonna Rutherford DVM	136	48	38	9	4	8	6	t	Gordon Kihn	283.329999999999984	2	4	2014-03-06 10:46:29.244347	2014-03-06 10:46:29.244347
37	2	Ms. Katherine VonRueden	132	20	23	9	3	7	9	t	Gilberto Schroeder	660	2	4	2014-03-06 10:46:29.248138	2014-03-06 10:46:29.248138
38	2	Jamir Huel MD	126	42	22	6	4	5	10	f	Mr. Orval Kassulke	300	2	4	2014-03-06 10:46:29.251758	2014-03-06 10:46:29.251758
39	2	Miss Elise Kirlin	129	27	38	10	5	5	6	t	Misael Predovic	477.779999999999973	2	4	2014-03-06 10:46:29.255329	2014-03-06 10:46:29.255329
40	2	Ms. Dulce Grimes	126	20	29	6	3	4	10	f	Pink Sipes	630	2	4	2014-03-06 10:46:29.25912	2014-03-06 10:46:29.25912
41	2	Myrtis Schulist DVM	123	36	31	10	4	6	6	f	Dane Crooks	341.670000000000016	2	4	2014-03-06 10:46:29.262708	2014-03-06 10:46:29.262708
42	2	Dr. Dario Armstrong	136	50	31	9	3	6	9	f	Ivah Kirlin	272	2	4	2014-03-06 10:46:29.265757	2014-03-06 10:46:29.265757
43	2	Mozell Lockman	116	32	30	8	4	4	7	t	Jennyfer Schowalter	362.5	2	4	2014-03-06 10:46:29.269515	2014-03-06 10:46:29.269515
44	2	Anabel Turner	115	64	28	7	3	4	8	f	Jayda Shanahan MD	179.689999999999998	2	4	2014-03-06 10:46:29.273721	2014-03-06 10:46:29.273721
45	1	Isai Mayer	139	44	23	5	4	10	9	f	Desiree Ziemann	315.910000000000025	3	5	2014-03-06 10:46:29.292546	2014-03-06 10:46:29.292546
46	1	Keara Ratke	163	41	35	8	4	10	10	t	Ms. Stefanie Brekke	397.560000000000002	3	5	2014-03-06 10:46:29.295562	2014-03-06 10:46:29.295562
47	1	Tito Smith I	146	28	34	9	4	7	9	f	Trevion Watsica	521.42999999999995	3	5	2014-03-06 10:46:29.29937	2014-03-06 10:46:29.29937
48	1	Timmy Donnelly	140	25	29	7	3	7	10	f	Gianni Murphy	560	3	5	2014-03-06 10:46:29.302813	2014-03-06 10:46:29.302813
49	1	Trace Christiansen	130	31	22	8	2	8	9	f	Rico Connelly	419.350000000000023	3	5	2014-03-06 10:46:29.305765	2014-03-06 10:46:29.305765
50	1	Tatum Kling	130	27	22	7	2	10	8	t	Hector Mitchell	481.480000000000018	3	5	2014-03-06 10:46:29.309654	2014-03-06 10:46:29.309654
51	1	Kevin Dooley	135	46	37	5	2	7	9	t	Carolanne Romaguera	293.480000000000018	3	5	2014-03-06 10:46:29.313154	2014-03-06 10:46:29.313154
52	1	Miss Mara Terry	130	59	34	8	2	5	9	t	Rubie Hammes	220.340000000000003	3	5	2014-03-06 10:46:29.318955	2014-03-06 10:46:29.318955
53	1	Jarod Goodwin	158	37	31	8	5	9	10	f	Lukas Howe	427.029999999999973	3	5	2014-03-06 10:46:29.323563	2014-03-06 10:46:29.323563
54	1	Brenda Turcotte	114	28	24	6	4	6	7	t	Savannah Block	407.139999999999986	3	5	2014-03-06 10:46:29.327899	2014-03-06 10:46:29.327899
55	1	Marshall Witting V	101	63	21	6	2	5	7	t	Mrs. Shanel Beahan	160.319999999999993	3	5	2014-03-06 10:46:29.331434	2014-03-06 10:46:29.331434
56	2	Laurie Schinner DVM	136	47	32	8	4	4	10	f	Mrs. Jett McDermott	289.360000000000014	3	1	2014-03-06 10:46:29.350528	2014-03-06 10:46:29.350528
57	2	Gordon Hahn MD	143	55	39	9	2	5	10	t	Hayley Lang PhD	260	3	1	2014-03-06 10:46:29.353627	2014-03-06 10:46:29.353627
58	2	Icie Koepp	133	62	23	5	2	10	9	t	Dax Nienow	214.52000000000001	3	1	2014-03-06 10:46:29.357226	2014-03-06 10:46:29.357226
59	2	Madilyn Williamson	150	50	37	8	5	7	9	f	Ally Langworth	300	3	1	2014-03-06 10:46:29.362013	2014-03-06 10:46:29.362013
60	2	Mr. Florine Hilll	149	41	36	9	3	8	9	f	Mr. Marc Tromp	363.410000000000025	3	1	2014-03-06 10:46:29.365223	2014-03-06 10:46:29.365223
61	2	Daron Considine DVM	131	42	29	6	4	6	9	t	Albina Ortiz	311.899999999999977	3	1	2014-03-06 10:46:29.368366	2014-03-06 10:46:29.368366
62	2	Mr. Terrell Howe	137	33	36	10	3	6	8	f	Trever Kirlin MD	415.149999999999977	3	1	2014-03-06 10:46:29.373052	2014-03-06 10:46:29.373052
63	2	Joel Langosh	101	39	21	7	2	6	6	f	Mollie Dach	258.970000000000027	3	1	2014-03-06 10:46:29.376271	2014-03-06 10:46:29.376271
64	2	Gregorio Rempel	151	27	36	7	3	8	10	f	Miss Frederik Gottlieb	559.259999999999991	3	1	2014-03-06 10:46:29.416585	2014-03-06 10:46:29.416585
65	2	Effie Lockman	117	22	27	10	4	4	7	t	Jabari Huels	531.82000000000005	3	1	2014-03-06 10:46:29.421397	2014-03-06 10:46:29.421397
66	2	King Kihn	118	29	36	5	4	6	6	t	Dr. Isidro Lueilwitz	406.899999999999977	3	1	2014-03-06 10:46:29.425145	2014-03-06 10:46:29.425145
67	1	Dangelo Pouros	126	27	23	9	5	7	7	t	Mr. Madisen Heller	466.670000000000016	4	4	2014-03-06 10:46:29.445447	2014-03-06 10:46:29.445447
68	1	Miss Dejuan Ruecker	125	40	20	7	3	7	9	t	Jo Ruecker	312.5	4	4	2014-03-06 10:46:29.450763	2014-03-06 10:46:29.450763
69	1	Davion Koelpin	114	29	31	6	5	5	6	t	Daphne Kub	393.100000000000023	4	4	2014-03-06 10:46:29.453866	2014-03-06 10:46:29.453866
70	1	Clarissa Cummings	139	30	21	9	4	7	10	f	Walker Boehm	463.329999999999984	4	4	2014-03-06 10:46:29.457147	2014-03-06 10:46:29.457147
71	1	Ms. Lawrence Hessel	110	22	21	7	5	6	6	f	Lorna DuBuque	500	4	4	2014-03-06 10:46:29.46053	2014-03-06 10:46:29.46053
72	1	Mariana Quigley	143	56	25	10	4	8	9	t	Dillan Kihn	255.360000000000014	4	4	2014-03-06 10:46:29.463615	2014-03-06 10:46:29.463615
73	1	Michele Cole Jr.	134	53	37	9	5	7	6	t	Unique Bradtke	252.830000000000013	4	4	2014-03-06 10:46:29.466901	2014-03-06 10:46:29.466901
74	1	Garrick Hayes	130	20	29	8	5	7	7	t	Gloria Emmerich	650	4	4	2014-03-06 10:46:29.472362	2014-03-06 10:46:29.472362
75	1	Myrtie Spinka	138	29	37	6	5	5	9	t	Delores Bergstrom I	475.860000000000014	4	4	2014-03-06 10:46:29.476213	2014-03-06 10:46:29.476213
76	1	Dejah Smitham	144	63	34	5	2	10	9	t	Mr. Quinn Larson	228.569999999999993	4	4	2014-03-06 10:46:29.479551	2014-03-06 10:46:29.479551
77	1	Twila Boyle	129	41	26	6	3	10	7	t	Miss Maeve Tremblay	314.629999999999995	4	4	2014-03-06 10:46:29.483023	2014-03-06 10:46:29.483023
78	2	Arden Hintz	120	52	30	8	2	5	8	f	Miss Lera Bergstrom	230.77000000000001	4	3	2014-03-06 10:46:29.502415	2014-03-06 10:46:29.502415
79	2	Estelle Fadel II	136	48	29	6	5	8	8	t	Golda Abernathy DDS	283.329999999999984	4	3	2014-03-06 10:46:29.506792	2014-03-06 10:46:29.506792
80	2	Keven Wisoky	140	34	31	7	3	8	9	f	Ford Farrell	411.759999999999991	4	3	2014-03-06 10:46:29.510027	2014-03-06 10:46:29.510027
81	2	Miss Sim Bednar	134	26	40	5	4	6	8	t	Laverna Kohler	515.379999999999995	4	3	2014-03-06 10:46:29.513129	2014-03-06 10:46:29.513129
82	2	Karolann Cummings	162	33	37	8	5	10	9	t	Heather Dooley	490.910000000000025	4	3	2014-03-06 10:46:29.517119	2014-03-06 10:46:29.517119
83	2	Rupert Jerde	144	38	31	5	5	10	8	f	Bianka Pfannerstill	378.949999999999989	4	3	2014-03-06 10:46:29.52051	2014-03-06 10:46:29.52051
84	2	Ms. Amira Runolfsson	141	60	35	9	4	4	10	f	Darrion Gusikowski	235	4	3	2014-03-06 10:46:29.524675	2014-03-06 10:46:29.524675
85	2	Dr. Jeff Bashirian	121	50	29	6	4	8	6	f	Lauryn Dach	242	4	3	2014-03-06 10:46:29.527981	2014-03-06 10:46:29.527981
86	2	Lyric Kemmer	121	61	37	10	2	4	7	t	Marlen McKenzie	198.360000000000014	4	3	2014-03-06 10:46:29.531454	2014-03-06 10:46:29.531454
87	2	Juvenal Wiegand	144	63	33	8	5	8	8	f	Geo Lubowitz	228.569999999999993	4	3	2014-03-06 10:46:29.534448	2014-03-06 10:46:29.534448
88	2	Mrs. Syble Schimmel	124	29	24	9	2	7	8	f	Mrs. Martin Blanda	427.589999999999975	4	3	2014-03-06 10:46:29.537918	2014-03-06 10:46:29.537918
89	1	Modesta Predovic	121	59	25	7	2	7	8	t	Marcus Bahringer	205.080000000000013	5	3	2014-03-06 10:46:29.55648	2014-03-06 10:46:29.55648
90	1	Clemmie Gleason	139	33	38	7	3	9	7	f	Pierce Padberg	421.20999999999998	5	3	2014-03-06 10:46:29.561702	2014-03-06 10:46:29.561702
91	1	Dr. Terrence Bailey	131	50	24	9	3	5	10	t	Devante Hills MD	262	5	3	2014-03-06 10:46:29.56482	2014-03-06 10:46:29.56482
92	1	Rosendo Dach Jr.	131	44	36	6	5	5	8	t	Miss Immanuel Bayer	297.730000000000018	5	3	2014-03-06 10:46:29.567911	2014-03-06 10:46:29.567911
93	1	Estell Stokes	137	38	35	9	4	9	6	f	Dr. Marjory Balistreri	360.529999999999973	5	3	2014-03-06 10:46:29.571854	2014-03-06 10:46:29.571854
94	1	Mr. Idell Parisian	106	21	20	10	2	6	6	t	Alicia Champlin	504.759999999999991	5	3	2014-03-06 10:46:29.57567	2014-03-06 10:46:29.57567
95	1	Mrs. Nelle Wisozk	140	60	40	10	4	8	6	t	Amira Beer	233.330000000000013	5	3	2014-03-06 10:46:29.579393	2014-03-06 10:46:29.579393
96	1	Mrs. Fanny Klein	143	40	39	7	4	9	7	f	Dr. Chyna Langworth	357.5	5	3	2014-03-06 10:46:29.584705	2014-03-06 10:46:29.584705
97	1	Justus Stoltenberg MD	131	60	32	9	5	6	7	f	Eudora McKenzie	218.330000000000013	5	3	2014-03-06 10:46:29.587775	2014-03-06 10:46:29.587775
98	1	Dr. Kiara Reilly	130	61	35	9	3	8	6	t	Werner Nicolas	213.110000000000014	5	3	2014-03-06 10:46:29.591079	2014-03-06 10:46:29.591079
99	1	Mitchell Nader	137	52	40	5	3	6	9	t	Russ Mills	263.45999999999998	5	3	2014-03-06 10:46:29.59468	2014-03-06 10:46:29.59468
100	2	Kamille Schinner II	111	62	30	10	3	4	6	f	Guido Pollich	179.030000000000001	5	5	2014-03-06 10:46:29.612848	2014-03-06 10:46:29.612848
101	2	Victor McDermott	126	32	25	8	5	4	9	t	Mekhi Weimann	393.75	5	5	2014-03-06 10:46:29.616441	2014-03-06 10:46:29.616441
102	2	Elisabeth Parisian	155	38	35	8	4	8	10	f	Alden Toy V	407.889999999999986	5	5	2014-03-06 10:46:29.620242	2014-03-06 10:46:29.620242
103	2	Prudence Corwin	137	51	38	9	3	9	6	f	Jerad Rowe II	268.629999999999995	5	5	2014-03-06 10:46:29.624698	2014-03-06 10:46:29.624698
104	2	Keyon Cole I	137	56	30	8	5	7	8	t	Dejuan Kuhic	244.639999999999986	5	5	2014-03-06 10:46:29.627866	2014-03-06 10:46:29.627866
105	2	Ms. Araceli Carter	110	47	26	5	4	5	7	f	Evalyn Walker DDS	234.039999999999992	5	5	2014-03-06 10:46:29.631067	2014-03-06 10:46:29.631067
106	2	Aiden Homenick	126	58	25	6	3	8	8	t	Kyra Bashirian	217.240000000000009	5	5	2014-03-06 10:46:29.63464	2014-03-06 10:46:29.63464
107	2	Koby Shields DVM	114	44	27	9	3	6	6	t	Mr. Nella Lind	259.089999999999975	5	5	2014-03-06 10:46:29.637654	2014-03-06 10:46:29.637654
108	2	Mrs. Billie Murazik	122	38	32	10	2	4	8	t	Leora Schinner MD	321.050000000000011	5	5	2014-03-06 10:46:29.641421	2014-03-06 10:46:29.641421
109	2	Alyce Williamson	133	42	39	7	4	8	6	t	Lucas Runolfsson	316.670000000000016	5	5	2014-03-06 10:46:29.645	2014-03-06 10:46:29.645
110	2	Tyrel Kilback	132	40	40	7	4	6	7	t	Stephon Wunsch	330	5	5	2014-03-06 10:46:29.64942	2014-03-06 10:46:29.64942
111	1	Pearlie Pacocha	154	65	33	5	5	9	10	t	Janet Fisher	236.919999999999987	6	4	2014-03-06 10:46:29.668127	2014-03-06 10:46:29.668127
112	1	Danial Stiedemann	105	22	25	6	2	5	7	t	Sage Bahringer	477.269999999999982	6	4	2014-03-06 10:46:29.671688	2014-03-06 10:46:29.671688
113	1	Deja Jerde	112	55	24	6	2	7	7	f	Dr. Aliyah Heaney	203.639999999999986	6	4	2014-03-06 10:46:29.675462	2014-03-06 10:46:29.675462
114	1	Herta Wolf	121	48	31	5	2	8	7	t	Blake Walker	252.080000000000013	6	4	2014-03-06 10:46:29.679161	2014-03-06 10:46:29.679161
115	1	Jayson Jenkins	118	60	32	10	2	6	6	t	Miss Rae Turner	196.669999999999987	6	4	2014-03-06 10:46:29.682761	2014-03-06 10:46:29.682761
116	1	Wellington Rodriguez	137	38	28	10	5	5	9	t	Madaline Streich	360.529999999999973	6	4	2014-03-06 10:46:29.686326	2014-03-06 10:46:29.686326
117	1	May Crona	120	41	34	10	2	6	6	t	Ruben Okuneva DVM	292.680000000000007	6	4	2014-03-06 10:46:29.690501	2014-03-06 10:46:29.690501
118	1	Abelardo Hermann	122	64	25	5	3	9	7	t	Mr. Cali Miller	190.629999999999995	6	4	2014-03-06 10:46:29.694017	2014-03-06 10:46:29.694017
119	1	Griffin O'Kon	148	56	31	10	5	10	7	f	Osborne Bauch	264.29000000000002	6	4	2014-03-06 10:46:29.69739	2014-03-06 10:46:29.69739
120	1	John Gleason	117	36	23	9	2	4	9	f	Arnoldo Fay	325	6	4	2014-03-06 10:46:29.701018	2014-03-06 10:46:29.701018
121	1	Mr. Hiram Rolfson	104	34	23	5	3	5	7	f	Agnes Hirthe III	305.879999999999995	6	4	2014-03-06 10:46:29.704	2014-03-06 10:46:29.704
122	2	Talon Rohan	131	51	31	10	4	5	8	f	Delaney Zieme MD	256.860000000000014	6	1	2014-03-06 10:46:29.72314	2014-03-06 10:46:29.72314
123	2	Scarlett Jacobs	121	32	35	5	4	7	6	t	Mr. Millie Rowe	378.129999999999995	6	1	2014-03-06 10:46:29.728153	2014-03-06 10:46:29.728153
124	2	Fannie Balistreri	106	27	21	8	3	6	6	t	Guido Lockman	392.589999999999975	6	1	2014-03-06 10:46:29.731368	2014-03-06 10:46:29.731368
125	2	Mrs. Francis Kris	138	54	26	6	2	10	9	f	Mohamed Hyatt	255.560000000000002	6	1	2014-03-06 10:46:29.734516	2014-03-06 10:46:29.734516
126	2	Ruben Rath PhD	143	62	33	6	4	8	9	f	Orval Johns	230.650000000000006	6	1	2014-03-06 10:46:29.737897	2014-03-06 10:46:29.737897
127	2	Rosina Wunsch	115	61	27	8	2	6	7	f	Mrs. Cathrine MacGyver	188.52000000000001	6	1	2014-03-06 10:46:29.741413	2014-03-06 10:46:29.741413
128	2	Mrs. Dora Kuhlman	123	48	20	9	3	10	6	t	Elyssa Buckridge	256.25	6	1	2014-03-06 10:46:29.744442	2014-03-06 10:46:29.744442
129	2	Miss Troy Bartoletti	145	44	32	5	3	10	9	t	Steve Rath PhD	329.550000000000011	6	1	2014-03-06 10:46:29.749812	2014-03-06 10:46:29.749812
130	2	Darian Balistreri	133	44	30	6	5	7	8	f	Newell Jenkins	302.269999999999982	6	1	2014-03-06 10:46:29.752904	2014-03-06 10:46:29.752904
131	2	Sunny Becker PhD	130	54	38	10	2	6	7	t	Leora Osinski	240.740000000000009	6	1	2014-03-06 10:46:29.756033	2014-03-06 10:46:29.756033
132	2	Miss Jody Fisher	127	48	22	10	5	7	7	t	Lucinda McKenzie	264.579999999999984	6	1	2014-03-06 10:46:29.759367	2014-03-06 10:46:29.759367
133	1	Maurice Senger II	152	32	40	10	4	8	8	f	Corine Treutel	475	7	5	2014-03-06 10:46:29.779609	2014-03-06 10:46:29.779609
134	1	Ms. Susana Mitchell	148	30	31	8	3	8	10	t	Amari Gorczany	493.329999999999984	7	5	2014-03-06 10:46:29.783182	2014-03-06 10:46:29.783182
135	1	Torey Barrows	140	52	34	9	4	4	10	t	Maudie Walter	269.230000000000018	7	5	2014-03-06 10:46:29.786805	2014-03-06 10:46:29.786805
136	1	Eldon Ernser DVM	131	33	22	6	5	10	7	f	Gideon Lebsack	396.970000000000027	7	5	2014-03-06 10:46:29.791453	2014-03-06 10:46:29.791453
137	1	Rosemary Hodkiewicz	125	26	39	7	2	6	7	t	Gilberto Batz	480.769999999999982	7	5	2014-03-06 10:46:29.794614	2014-03-06 10:46:29.794614
138	1	Sharon Grant IV	130	43	32	5	2	10	7	f	Syble Olson	302.329999999999984	7	5	2014-03-06 10:46:29.797836	2014-03-06 10:46:29.797836
139	1	Leatha Conroy I	122	34	30	8	2	4	9	f	Elyssa Lind	358.819999999999993	7	5	2014-03-06 10:46:29.80142	2014-03-06 10:46:29.80142
140	1	Kari Hayes	112	55	23	7	5	6	6	t	Emely Schuppe	203.639999999999986	7	5	2014-03-06 10:46:29.804979	2014-03-06 10:46:29.804979
141	1	Leta Emmerich	106	28	23	8	3	4	7	f	Alyson Funk	378.569999999999993	7	5	2014-03-06 10:46:29.808029	2014-03-06 10:46:29.808029
142	1	Millie Altenwerth	132	35	35	6	3	4	10	t	Jaleel Kutch	377.139999999999986	7	5	2014-03-06 10:46:29.811621	2014-03-06 10:46:29.811621
143	1	Carrie Farrell	134	31	34	10	2	5	9	f	Miss Tyler Mohr	432.259999999999991	7	5	2014-03-06 10:46:29.814779	2014-03-06 10:46:29.814779
144	2	Antwon Kunze	145	26	23	8	2	10	10	t	Madeline Zboncak DVM	557.690000000000055	7	2	2014-03-06 10:46:29.833737	2014-03-06 10:46:29.833737
145	2	Jamey Kohler	109	36	33	7	2	5	6	f	Peggie Morissette	302.779999999999973	7	2	2014-03-06 10:46:29.839065	2014-03-06 10:46:29.839065
146	2	Esteban Brown	145	29	25	6	4	9	10	f	Miss Tatum Walsh	500	7	2	2014-03-06 10:46:29.842229	2014-03-06 10:46:29.842229
147	2	Marjolaine Padberg IV	112	53	26	7	2	6	7	t	Kayla Glover	211.319999999999993	7	2	2014-03-06 10:46:29.845312	2014-03-06 10:46:29.845312
148	2	Claire Hoppe Sr.	138	32	23	5	5	9	9	t	Heloise Herman	431.25	7	2	2014-03-06 10:46:29.848565	2014-03-06 10:46:29.848565
149	2	Annalise Herzog	157	27	34	6	5	9	10	t	Michelle Greenholt	581.480000000000018	7	2	2014-03-06 10:46:29.851992	2014-03-06 10:46:29.851992
150	2	Maida Lindgren	126	35	37	8	3	7	6	f	Mya Berge	360	7	2	2014-03-06 10:46:29.855246	2014-03-06 10:46:29.855246
151	2	Mr. Crystel Moore	123	58	35	9	2	7	6	f	Josh Schaden	212.069999999999993	7	2	2014-03-06 10:46:29.858928	2014-03-06 10:46:29.858928
152	2	Foster VonRueden	121	55	32	7	5	6	6	t	Megane Nicolas	220	7	2	2014-03-06 10:46:29.862424	2014-03-06 10:46:29.862424
153	2	Haskell Ferry II	133	28	21	5	2	9	10	f	Glen Hermiston	475	7	2	2014-03-06 10:46:29.86608	2014-03-06 10:46:29.86608
154	2	Ruben Bode V	137	62	39	9	4	5	8	f	Abbey Sipes	220.969999999999999	7	2	2014-03-06 10:46:29.869474	2014-03-06 10:46:29.869474
155	1	Taurean Bruen	136	63	24	9	4	7	9	t	Eula Yundt	215.870000000000005	8	3	2014-03-06 10:46:29.888008	2014-03-06 10:46:29.888008
156	1	Obie Steuber	127	65	37	7	2	7	7	f	Derek Rohan	195.379999999999995	8	3	2014-03-06 10:46:29.891563	2014-03-06 10:46:29.891563
157	1	Mozell Powlowski	141	35	28	9	5	5	10	t	Melissa Stoltenberg	402.860000000000014	8	3	2014-03-06 10:46:29.895168	2014-03-06 10:46:29.895168
158	1	Maxime Jacobson	123	40	30	5	5	8	6	f	Camron Huel	307.5	8	3	2014-03-06 10:46:29.898325	2014-03-06 10:46:29.898325
159	1	Omari Blick PhD	135	60	31	9	4	8	7	t	Mr. Tressie Price	225	8	3	2014-03-06 10:46:29.901881	2014-03-06 10:46:29.901881
160	1	Florian Anderson	143	20	30	5	3	10	9	f	Aurelio Cremin	715	8	3	2014-03-06 10:46:29.905432	2014-03-06 10:46:29.905432
161	1	Lew O'Kon	119	35	35	8	4	5	6	t	Ms. Clarabelle Cummings	340	8	3	2014-03-06 10:46:29.908554	2014-03-06 10:46:29.908554
162	1	Maymie Baumbach	151	27	37	8	2	8	10	t	Katrina Weber	559.259999999999991	8	3	2014-03-06 10:46:29.912063	2014-03-06 10:46:29.912063
163	1	Gunner Kshlerin	140	38	33	10	3	9	7	t	Ernestina Bogisich	368.420000000000016	8	3	2014-03-06 10:46:29.915713	2014-03-06 10:46:29.915713
164	1	Gussie Hettinger	114	52	38	5	2	6	6	f	Lysanne Marvin DVM	219.22999999999999	8	3	2014-03-06 10:46:29.923053	2014-03-06 10:46:29.923053
165	1	Mr. Horace Ullrich	140	33	33	8	5	7	8	f	Diamond Daugherty	424.240000000000009	8	3	2014-03-06 10:46:29.92634	2014-03-06 10:46:29.92634
166	2	Webster Flatley	161	47	40	8	3	9	10	f	Dr. Luis Erdman	342.550000000000011	8	1	2014-03-06 10:46:29.945131	2014-03-06 10:46:29.945131
167	2	Jackie Bechtelar	134	39	27	7	3	6	10	t	Anjali Morar	343.589999999999975	8	1	2014-03-06 10:46:29.948624	2014-03-06 10:46:29.948624
168	2	Hilda Goldner	93	59	22	5	3	4	6	f	Connor Stehr IV	157.629999999999995	8	1	2014-03-06 10:46:29.952126	2014-03-06 10:46:29.952126
169	2	Dr. Jessie Schoen	140	60	24	7	2	9	10	f	Jalen Walker	233.330000000000013	8	1	2014-03-06 10:46:29.955336	2014-03-06 10:46:29.955336
170	2	Ms. Lucinda Cole	126	51	38	8	2	6	7	t	Madelyn Connelly	247.060000000000002	8	1	2014-03-06 10:46:29.959093	2014-03-06 10:46:29.959093
171	2	Uriel Miller	140	62	36	8	2	7	9	f	Bethel Abbott	225.810000000000002	8	1	2014-03-06 10:46:29.96273	2014-03-06 10:46:29.96273
172	2	Ursula Beahan	155	25	33	5	4	10	10	t	Casey Bauch	620	8	1	2014-03-06 10:46:29.966262	2014-03-06 10:46:29.966262
173	2	Mr. Susana Kozey	131	60	24	10	3	9	7	t	Porter Halvorson	218.330000000000013	8	1	2014-03-06 10:46:29.970248	2014-03-06 10:46:29.970248
174	2	Kennedy Howell	148	43	33	9	3	10	8	t	Jace Rutherford	344.189999999999998	8	1	2014-03-06 10:46:29.97393	2014-03-06 10:46:29.97393
175	2	George Ward	135	46	39	10	2	7	7	f	Kendrick Von	293.480000000000018	8	1	2014-03-06 10:46:29.977229	2014-03-06 10:46:29.977229
176	2	Solon Jacobson	120	62	29	6	3	7	7	f	Leopold Little	193.550000000000011	8	1	2014-03-06 10:46:29.980918	2014-03-06 10:46:29.980918
177	1	Mrs. Enrique Schowalter	124	38	21	8	3	9	7	t	Ayla Lubowitz	326.319999999999993	9	5	2014-03-06 10:46:29.999585	2014-03-06 10:46:29.999585
178	1	Jude Muller	135	59	31	8	4	10	6	t	Dr. Ryleigh Oberbrunner	228.810000000000002	9	5	2014-03-06 10:46:30.015314	2014-03-06 10:46:30.015314
179	1	Mrs. Jena Nolan	134	43	21	8	3	10	8	f	Assunta Kris	311.629999999999995	9	5	2014-03-06 10:46:30.019017	2014-03-06 10:46:30.019017
180	1	Nellie Mitchell PhD	132	50	32	7	2	5	10	t	Chaya Friesen	264	9	5	2014-03-06 10:46:30.022579	2014-03-06 10:46:30.022579
181	1	Jeanie Champlin	138	65	30	7	2	10	8	f	Godfrey Lockman	212.310000000000002	9	5	2014-03-06 10:46:30.027781	2014-03-06 10:46:30.027781
182	1	Lynn Mueller	132	33	30	10	4	4	9	f	Kacie Yost	400	9	5	2014-03-06 10:46:30.030906	2014-03-06 10:46:30.030906
183	1	Brisa Barrows	116	61	28	6	2	4	9	t	Ms. Violet Pouros	190.159999999999997	9	5	2014-03-06 10:46:30.034106	2014-03-06 10:46:30.034106
184	1	Ottis Cormier	130	61	31	9	3	9	6	f	Elody Emmerich PhD	213.110000000000014	9	5	2014-03-06 10:46:30.037088	2014-03-06 10:46:30.037088
185	1	Annette Olson	148	63	29	7	5	9	9	f	Judah Weissnat	234.919999999999987	9	5	2014-03-06 10:46:30.040742	2014-03-06 10:46:30.040742
186	1	Lonnie Bahringer	127	45	28	9	3	6	8	t	Molly Crooks	282.220000000000027	9	5	2014-03-06 10:46:30.043832	2014-03-06 10:46:30.043832
187	1	Elnora Langworth	137	23	37	7	2	8	8	f	Glen Smitham	595.649999999999977	9	5	2014-03-06 10:46:30.046968	2014-03-06 10:46:30.046968
188	2	Rodolfo Koelpin	108	62	25	5	3	7	6	f	Ernestine Stokes	174.189999999999998	9	4	2014-03-06 10:46:30.066952	2014-03-06 10:46:30.066952
189	2	Hilda Satterfield	140	30	31	8	5	9	7	t	Laverna Goyette	466.670000000000016	9	4	2014-03-06 10:46:30.070933	2014-03-06 10:46:30.070933
190	2	Emely Hammes	118	32	32	8	4	4	7	f	Dr. Lucile Schulist	368.75	9	4	2014-03-06 10:46:30.074996	2014-03-06 10:46:30.074996
191	2	Miss Kade Nikolaus	120	24	30	9	4	6	6	t	Kurt Oberbrunner	500	9	4	2014-03-06 10:46:30.078846	2014-03-06 10:46:30.078846
192	2	Leanne Lockman	125	57	21	5	4	7	9	t	Savanna Gusikowski I	219.300000000000011	9	4	2014-03-06 10:46:30.082283	2014-03-06 10:46:30.082283
193	2	Pearline Cummerata PhD	122	28	27	7	3	9	6	t	Jodie Hoeger	435.70999999999998	9	4	2014-03-06 10:46:30.086763	2014-03-06 10:46:30.086763
194	2	Aurore Graham	110	46	38	5	2	5	6	f	Mara Brekke	239.129999999999995	9	4	2014-03-06 10:46:30.091219	2014-03-06 10:46:30.091219
195	2	Mr. Dayna Gislason	135	26	27	10	4	4	10	f	Mrs. Queenie Walsh	519.230000000000018	9	4	2014-03-06 10:46:30.094475	2014-03-06 10:46:30.094475
196	2	Jayde Dare	112	59	25	7	5	4	7	f	Desiree Lehner	189.830000000000013	9	4	2014-03-06 10:46:30.098267	2014-03-06 10:46:30.098267
197	2	Dr. Jarvis Schuster	128	27	29	5	3	5	10	f	Brooks Parker	474.069999999999993	9	4	2014-03-06 10:46:30.101703	2014-03-06 10:46:30.101703
198	2	Norris Romaguera	123	65	21	8	4	8	7	f	Clemmie Schowalter	189.22999999999999	9	4	2014-03-06 10:46:30.107002	2014-03-06 10:46:30.107002
199	1	Wilhelmine Ziemann	123	25	22	9	5	5	8	f	Donald Brekke	492	10	3	2014-03-06 10:46:30.12797	2014-03-06 10:46:30.12797
200	1	America Stamm	139	63	31	7	2	10	8	t	Gerda Borer	220.629999999999995	10	3	2014-03-06 10:46:30.13123	2014-03-06 10:46:30.13123
201	1	Kathryne Miller IV	126	55	23	6	5	7	8	t	Merle Bailey	229.090000000000003	10	3	2014-03-06 10:46:30.134709	2014-03-06 10:46:30.134709
202	1	Miss Lenny Nicolas	124	65	22	7	2	10	7	t	Davonte Langosh	190.77000000000001	10	3	2014-03-06 10:46:30.140215	2014-03-06 10:46:30.140215
203	1	Ali Parker	121	45	23	6	4	8	7	t	Hailie Beier	268.889999999999986	10	3	2014-03-06 10:46:30.143496	2014-03-06 10:46:30.143496
204	1	Camron Beahan Jr.	143	24	20	7	5	10	9	f	Ms. Jacky Johns	595.830000000000041	10	3	2014-03-06 10:46:30.146725	2014-03-06 10:46:30.146725
205	1	Chance Farrell MD	151	47	33	5	4	9	10	t	Dr. Lisette Nader	321.279999999999973	10	3	2014-03-06 10:46:30.151953	2014-03-06 10:46:30.151953
206	1	Lolita Ziemann	110	46	27	8	5	4	6	f	Kennedy Botsford	239.129999999999995	10	3	2014-03-06 10:46:30.156401	2014-03-06 10:46:30.156401
207	1	Hallie Harber	163	54	39	8	4	9	10	f	Violet Langworth	301.850000000000023	10	3	2014-03-06 10:46:30.159743	2014-03-06 10:46:30.159743
208	1	Ora Runolfsdottir	149	40	39	7	2	9	9	f	Gladys Upton	372.5	10	3	2014-03-06 10:46:30.163535	2014-03-06 10:46:30.163535
209	1	Marlene Terry Sr.	155	36	36	10	5	9	8	f	Amiya Hills	430.560000000000002	10	3	2014-03-06 10:46:30.166975	2014-03-06 10:46:30.166975
210	2	Miss Alene Weber	155	33	38	10	5	7	9	t	Isaias Stehr	469.699999999999989	10	2	2014-03-06 10:46:30.215125	2014-03-06 10:46:30.215125
211	2	Paul Kunde	152	24	28	10	4	8	10	f	Franco Glover	633.330000000000041	10	2	2014-03-06 10:46:30.218932	2014-03-06 10:46:30.218932
212	2	Haskell Gislason	122	42	24	10	2	6	8	t	Jordi Gusikowski	290.480000000000018	10	2	2014-03-06 10:46:30.22384	2014-03-06 10:46:30.22384
213	2	Malinda Schneider	113	48	21	6	2	8	7	t	Rosamond Terry	235.419999999999987	10	2	2014-03-06 10:46:30.22869	2014-03-06 10:46:30.22869
214	2	Ms. Aidan Paucek	136	64	34	8	4	8	7	t	Mrs. Sydnie Turner	212.5	10	2	2014-03-06 10:46:30.23245	2014-03-06 10:46:30.23245
215	2	Jayson Langworth	134	65	28	8	4	6	9	f	Savanah Morar	206.150000000000006	10	2	2014-03-06 10:46:30.235839	2014-03-06 10:46:30.235839
216	2	Dillan Wiza Sr.	142	65	33	9	5	4	10	t	Melvina Christiansen	218.460000000000008	10	2	2014-03-06 10:46:30.240079	2014-03-06 10:46:30.240079
217	2	Mikayla Lakin	117	58	27	6	2	9	6	f	Ova Haag	201.719999999999999	10	2	2014-03-06 10:46:30.244219	2014-03-06 10:46:30.244219
218	2	Myles Leannon	123	48	33	6	2	6	8	t	Vaughn Stark	256.25	10	2	2014-03-06 10:46:30.249595	2014-03-06 10:46:30.249595
219	2	Glen King	124	29	39	9	3	4	7	f	Laverne Christiansen	427.589999999999975	10	2	2014-03-06 10:46:30.253227	2014-03-06 10:46:30.253227
220	2	Zelda Kulas Jr.	99	27	20	5	3	6	6	f	Will Sanford	366.670000000000016	10	2	2014-03-06 10:46:30.256772	2014-03-06 10:46:30.256772
221	1	Ashton Witting Jr.	119	53	33	7	4	6	6	f	Lulu Friesen	224.530000000000001	11	4	2014-03-06 10:46:30.27998	2014-03-06 10:46:30.27998
222	1	Charles Kihn	151	20	35	9	2	8	10	t	Kailee Nolan	755	11	4	2014-03-06 10:46:30.284743	2014-03-06 10:46:30.284743
223	1	Miss Davonte Murray	124	34	21	10	5	8	6	f	Holly Swaniawski	364.70999999999998	11	4	2014-03-06 10:46:30.288557	2014-03-06 10:46:30.288557
224	1	Johanna King	137	40	29	10	4	7	8	t	Alvah Wisozk	342.5	11	4	2014-03-06 10:46:30.292283	2014-03-06 10:46:30.292283
225	1	Keshawn Casper	125	56	25	6	2	10	7	f	Providenci Flatley	223.210000000000008	11	4	2014-03-06 10:46:30.296036	2014-03-06 10:46:30.296036
226	1	Citlalli Zulauf	153	53	37	7	4	9	9	t	Mrs. Michael Heaney	288.680000000000007	11	4	2014-03-06 10:46:30.299896	2014-03-06 10:46:30.299896
227	1	Laurie Botsford	127	60	22	6	5	9	7	t	Kristofer Schultz	211.669999999999987	11	4	2014-03-06 10:46:30.303504	2014-03-06 10:46:30.303504
228	1	Berry Pacocha	132	23	23	8	5	6	9	f	Rocky Hane	573.909999999999968	11	4	2014-03-06 10:46:30.30701	2014-03-06 10:46:30.30701
229	1	Antoinette Lebsack Jr.	129	49	29	10	2	5	9	t	Else McClure	263.269999999999982	11	4	2014-03-06 10:46:30.311016	2014-03-06 10:46:30.311016
230	1	Emmalee Moen	122	58	24	8	2	7	8	f	Ms. Ressie Kshlerin	210.340000000000003	11	4	2014-03-06 10:46:30.314969	2014-03-06 10:46:30.314969
231	1	Mariana Maggio	126	40	20	8	4	6	9	f	Mr. Nicola Johns	315	11	4	2014-03-06 10:46:30.318862	2014-03-06 10:46:30.318862
232	2	Cynthia Pollich MD	131	29	32	8	5	8	6	f	Jaydon Macejkovic	451.720000000000027	11	1	2014-03-06 10:46:30.341324	2014-03-06 10:46:30.341324
233	2	Brigitte Kirlin	123	23	20	8	5	9	6	f	Trudie Schimmel	534.779999999999973	11	1	2014-03-06 10:46:30.345215	2014-03-06 10:46:30.345215
234	2	Mr. Aliza Rowe	139	39	40	10	5	4	8	f	Tess Bergstrom	356.410000000000025	11	1	2014-03-06 10:46:30.349253	2014-03-06 10:46:30.349253
235	2	Dr. Manley Auer	135	36	34	7	3	6	9	t	Mrs. Mose Swift	375	11	1	2014-03-06 10:46:30.352942	2014-03-06 10:46:30.352942
236	2	Raheem Feest Sr.	151	65	32	9	3	8	10	f	Zander Hahn	232.310000000000002	11	1	2014-03-06 10:46:30.356845	2014-03-06 10:46:30.356845
237	2	Lester Daugherty	125	60	29	6	4	9	6	t	Savannah Ebert	208.330000000000013	11	1	2014-03-06 10:46:30.360589	2014-03-06 10:46:30.360589
238	2	Kristin Rohan	144	39	32	6	4	7	10	f	Mrs. Willa McClure	369.230000000000018	11	1	2014-03-06 10:46:30.36422	2014-03-06 10:46:30.36422
239	2	Mrs. Levi Yost	116	45	20	10	2	4	9	f	Maeve Buckridge MD	257.779999999999973	11	1	2014-03-06 10:46:30.368092	2014-03-06 10:46:30.368092
240	2	Mrs. Marcos Kemmer	125	23	34	7	3	5	8	f	Mr. Maxwell Bode	543.480000000000018	11	1	2014-03-06 10:46:30.373752	2014-03-06 10:46:30.373752
241	2	Duane Torp	148	26	28	6	4	9	10	f	Hyman Kris	569.230000000000018	11	1	2014-03-06 10:46:30.377323	2014-03-06 10:46:30.377323
242	2	Jaclyn Casper	146	51	39	6	5	5	10	f	Hillard Haley V	286.269999999999982	11	1	2014-03-06 10:46:30.418613	2014-03-06 10:46:30.418613
\.


--
-- Name: battings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bhanu
--

SELECT pg_catalog.setval('battings_id_seq', 242, true);


--
-- Data for Name: bowlers; Type: TABLE DATA; Schema: public; Owner: bhanu
--

COPY bowlers (id, innings, name, runs, overs, avg, wides, noball, maidens, wkts, score_id, team_id, created_at, updated_at) FROM stdin;
1	1	Meredith Zboncak	53	10	5.29999999999999982	1	3	3	1	1	2	2014-03-06 10:46:29.102853	2014-03-06 10:46:29.102853
2	1	Ms. Destiney Gibson	78	1	78	5	5	1	1	1	2	2014-03-06 10:46:29.107745	2014-03-06 10:46:29.107745
3	1	Melissa Pfannerstill V	69	10	6.90000000000000036	4	5	3	1	1	2	2014-03-06 10:46:29.111456	2014-03-06 10:46:29.111456
4	1	Yvette Ryan	50	3	16.6700000000000017	1	3	3	2	1	2	2014-03-06 10:46:29.11484	2014-03-06 10:46:29.11484
5	1	Mr. Natalie Homenick	56	1	56	3	2	2	1	1	2	2014-03-06 10:46:29.117789	2014-03-06 10:46:29.117789
6	2	Retta Schroeder V	72	2	36	2	3	1	1	1	1	2014-03-06 10:46:29.162045	2014-03-06 10:46:29.162045
7	2	Fleta Jerde	57	4	14.25	4	5	1	2	1	1	2014-03-06 10:46:29.165588	2014-03-06 10:46:29.165588
8	2	Elbert Erdman	71	9	7.88999999999999968	2	5	1	1	1	1	2014-03-06 10:46:29.168937	2014-03-06 10:46:29.168937
9	2	Trycia Bruen V	65	6	10.8300000000000001	4	2	3	2	1	1	2014-03-06 10:46:29.173421	2014-03-06 10:46:29.173421
10	2	Fernando Ebert	66	9	7.33000000000000007	1	5	2	1	1	1	2014-03-06 10:46:29.176685	2014-03-06 10:46:29.176685
11	1	Joel Bogan	54	4	13.5	3	5	2	2	2	4	2014-03-06 10:46:29.221826	2014-03-06 10:46:29.221826
12	1	Jimmie Beier	67	8	8.38000000000000078	2	2	3	2	2	4	2014-03-06 10:46:29.225377	2014-03-06 10:46:29.225377
13	1	Cecelia Erdman	57	3	19	5	5	3	1	2	4	2014-03-06 10:46:29.228464	2014-03-06 10:46:29.228464
14	1	Mohammed Crona	75	5	15	1	4	1	2	2	4	2014-03-06 10:46:29.231242	2014-03-06 10:46:29.231242
15	1	Dr. Carrie Dicki	78	1	78	1	2	2	2	2	4	2014-03-06 10:46:29.234016	2014-03-06 10:46:29.234016
16	2	Callie Roberts	72	10	7.20000000000000018	1	5	1	2	2	3	2014-03-06 10:46:29.277354	2014-03-06 10:46:29.277354
17	2	Mr. Pansy Thiel	54	2	27	4	5	3	2	2	3	2014-03-06 10:46:29.280721	2014-03-06 10:46:29.280721
18	2	Roosevelt Howe	57	6	9.5	3	5	1	1	2	3	2014-03-06 10:46:29.283593	2014-03-06 10:46:29.283593
19	2	Melisa Mitchell	76	4	19	5	3	1	2	2	3	2014-03-06 10:46:29.286373	2014-03-06 10:46:29.286373
20	2	Miss Agustin Larkin	68	1	68	2	2	3	2	2	3	2014-03-06 10:46:29.289391	2014-03-06 10:46:29.289391
21	1	Priscilla Simonis	72	8	9	5	3	1	2	3	1	2014-03-06 10:46:29.334923	2014-03-06 10:46:29.334923
22	1	Alexandria Hammes	63	3	21	2	4	1	2	3	1	2014-03-06 10:46:29.337959	2014-03-06 10:46:29.337959
23	1	Celia Rau	56	7	8	2	2	1	1	3	1	2014-03-06 10:46:29.340997	2014-03-06 10:46:29.340997
24	1	Luciano Stehr	65	1	65	4	4	3	1	3	1	2014-03-06 10:46:29.34396	2014-03-06 10:46:29.34396
25	1	Burley Lebsack III	69	2	34.5	2	3	1	2	3	1	2014-03-06 10:46:29.346987	2014-03-06 10:46:29.346987
26	2	Ms. Kayden Cartwright	71	6	11.8300000000000001	3	5	1	1	3	5	2014-03-06 10:46:29.428559	2014-03-06 10:46:29.428559
27	2	Lavern West Jr.	73	5	14.5999999999999996	1	4	3	2	3	5	2014-03-06 10:46:29.432033	2014-03-06 10:46:29.432033
28	2	Mrs. Charles Bergnaum	73	1	73	5	3	1	2	3	5	2014-03-06 10:46:29.435006	2014-03-06 10:46:29.435006
29	2	Leopold Sipes PhD	69	1	69	2	2	2	2	3	5	2014-03-06 10:46:29.43875	2014-03-06 10:46:29.43875
30	2	Arnaldo Goyette	72	7	10.2899999999999991	1	4	3	1	3	5	2014-03-06 10:46:29.442346	2014-03-06 10:46:29.442346
31	1	Edd Morar	77	1	77	1	2	1	1	4	3	2014-03-06 10:46:29.486165	2014-03-06 10:46:29.486165
32	1	Eldon Sipes	64	3	21.3299999999999983	4	5	2	2	4	3	2014-03-06 10:46:29.490119	2014-03-06 10:46:29.490119
33	1	Velva Leuschke	76	6	12.6699999999999999	2	3	1	1	4	3	2014-03-06 10:46:29.493327	2014-03-06 10:46:29.493327
34	1	Maria Jast	51	5	10.1999999999999993	4	4	2	1	4	3	2014-03-06 10:46:29.496351	2014-03-06 10:46:29.496351
35	1	Miss Rosella Ratke	51	10	5.09999999999999964	5	3	3	1	4	3	2014-03-06 10:46:29.499316	2014-03-06 10:46:29.499316
36	2	Letha Greenfelder V	57	10	5.70000000000000018	1	5	3	2	4	4	2014-03-06 10:46:29.541129	2014-03-06 10:46:29.541129
37	2	Mrs. Lennie Hilll	53	7	7.57000000000000028	1	4	3	1	4	4	2014-03-06 10:46:29.544756	2014-03-06 10:46:29.544756
38	2	Ms. Alek Schowalter	70	9	7.78000000000000025	2	4	1	2	4	4	2014-03-06 10:46:29.547615	2014-03-06 10:46:29.547615
39	2	Carlotta Klein	69	1	69	5	4	3	2	4	4	2014-03-06 10:46:29.550609	2014-03-06 10:46:29.550609
40	2	Miss Jeffrey Keebler	54	2	27	4	3	3	2	4	4	2014-03-06 10:46:29.553446	2014-03-06 10:46:29.553446
41	1	Hipolito Luettgen	72	4	18	2	2	1	2	5	5	2014-03-06 10:46:29.598194	2014-03-06 10:46:29.598194
42	1	Seamus Bednar PhD	56	4	14	1	4	1	2	5	5	2014-03-06 10:46:29.601191	2014-03-06 10:46:29.601191
43	1	Zella Stiedemann	65	8	8.13000000000000078	3	3	2	2	5	5	2014-03-06 10:46:29.604036	2014-03-06 10:46:29.604036
44	1	Nakia Fay	69	4	17.25	2	5	1	1	5	5	2014-03-06 10:46:29.606772	2014-03-06 10:46:29.606772
45	1	Waylon Haley	57	3	19	1	3	2	2	5	5	2014-03-06 10:46:29.609574	2014-03-06 10:46:29.609574
46	2	Kade Rice	71	10	7.09999999999999964	3	2	1	1	5	3	2014-03-06 10:46:29.652457	2014-03-06 10:46:29.652457
47	2	Ruthie Paucek II	74	9	8.22000000000000064	1	2	2	1	5	3	2014-03-06 10:46:29.656117	2014-03-06 10:46:29.656117
48	2	Alan Ritchie	77	8	9.63000000000000078	3	4	3	2	5	3	2014-03-06 10:46:29.659088	2014-03-06 10:46:29.659088
49	2	Miss Cameron Smitham	64	9	7.11000000000000032	4	3	1	1	5	3	2014-03-06 10:46:29.662026	2014-03-06 10:46:29.662026
50	2	Sylvia Russel	60	4	15	4	3	2	1	5	3	2014-03-06 10:46:29.664957	2014-03-06 10:46:29.664957
51	1	Judy Mayer	52	1	52	2	3	1	1	6	1	2014-03-06 10:46:29.707695	2014-03-06 10:46:29.707695
52	1	Carissa Blick	61	4	15.25	1	2	1	1	6	1	2014-03-06 10:46:29.710568	2014-03-06 10:46:29.710568
53	1	Kade Hyatt	73	3	24.3299999999999983	3	2	1	1	6	1	2014-03-06 10:46:29.713323	2014-03-06 10:46:29.713323
54	1	Virgil Bashirian	73	9	8.10999999999999943	5	3	1	1	6	1	2014-03-06 10:46:29.716106	2014-03-06 10:46:29.716106
55	1	Elbert Parisian	76	5	15.1999999999999993	5	2	2	2	6	1	2014-03-06 10:46:29.719637	2014-03-06 10:46:29.719637
56	2	Newell Boehm	52	2	26	5	4	3	1	6	4	2014-03-06 10:46:29.76278	2014-03-06 10:46:29.76278
57	2	Vilma Gleason	50	7	7.13999999999999968	3	3	3	1	6	4	2014-03-06 10:46:29.765558	2014-03-06 10:46:29.765558
58	2	Maud Larkin	73	7	10.4299999999999997	5	2	2	2	6	4	2014-03-06 10:46:29.768558	2014-03-06 10:46:29.768558
59	2	Lucy Schimmel	67	7	9.57000000000000028	5	4	3	2	6	4	2014-03-06 10:46:29.772649	2014-03-06 10:46:29.772649
60	2	Maude Rodriguez	72	8	9	1	5	1	2	6	4	2014-03-06 10:46:29.776252	2014-03-06 10:46:29.776252
61	1	Miss Jolie O'Kon	61	9	6.78000000000000025	4	2	3	2	7	2	2014-03-06 10:46:29.817847	2014-03-06 10:46:29.817847
62	1	Mrs. Nora Blanda	75	4	18.75	3	5	3	2	7	2	2014-03-06 10:46:29.820994	2014-03-06 10:46:29.820994
63	1	Ms. Myrtis O'Reilly	63	8	7.87999999999999989	4	5	2	1	7	2	2014-03-06 10:46:29.824401	2014-03-06 10:46:29.824401
64	1	Emile Quigley	70	8	8.75	3	3	1	1	7	2	2014-03-06 10:46:29.827467	2014-03-06 10:46:29.827467
65	1	Esta Morar MD	69	2	34.5	3	5	1	1	7	2	2014-03-06 10:46:29.830657	2014-03-06 10:46:29.830657
66	2	Dana Stamm	56	10	5.59999999999999964	5	4	3	2	7	5	2014-03-06 10:46:29.872811	2014-03-06 10:46:29.872811
67	2	Lulu Hand	57	4	14.25	3	4	1	2	7	5	2014-03-06 10:46:29.876279	2014-03-06 10:46:29.876279
68	2	Jean Shields	72	9	8	5	4	3	1	7	5	2014-03-06 10:46:29.879315	2014-03-06 10:46:29.879315
69	2	Jules Strosin	55	3	18.3299999999999983	1	5	3	2	7	5	2014-03-06 10:46:29.882187	2014-03-06 10:46:29.882187
70	2	Zaria Ziemann	57	10	5.70000000000000018	3	5	3	1	7	5	2014-03-06 10:46:29.885003	2014-03-06 10:46:29.885003
71	1	Hermina Kshlerin	58	4	14.5	4	5	2	1	8	1	2014-03-06 10:46:29.929909	2014-03-06 10:46:29.929909
72	1	Miss Dorthy Schuppe	57	4	14.25	3	3	3	1	8	1	2014-03-06 10:46:29.932888	2014-03-06 10:46:29.932888
73	1	Casey Lehner	56	2	28	1	4	3	2	8	1	2014-03-06 10:46:29.935565	2014-03-06 10:46:29.935565
74	1	Ludwig Botsford IV	73	2	36.5	1	2	3	2	8	1	2014-03-06 10:46:29.938738	2014-03-06 10:46:29.938738
75	1	Lamont Bauch	60	2	30	3	3	3	2	8	1	2014-03-06 10:46:29.941714	2014-03-06 10:46:29.941714
76	2	Cicero Kertzmann	63	1	63	4	4	3	2	8	3	2014-03-06 10:46:29.983989	2014-03-06 10:46:29.983989
77	2	Ms. Samantha Jacobi	62	3	20.6700000000000017	5	5	1	2	8	3	2014-03-06 10:46:29.986726	2014-03-06 10:46:29.986726
78	2	Rowland Schuppe	73	1	73	3	2	2	2	8	3	2014-03-06 10:46:29.99012	2014-03-06 10:46:29.99012
79	2	Eulalia Lang MD	62	1	62	3	3	2	1	8	3	2014-03-06 10:46:29.99356	2014-03-06 10:46:29.99356
80	2	Norma Wisoky	59	7	8.42999999999999972	3	3	3	1	8	3	2014-03-06 10:46:29.996422	2014-03-06 10:46:29.996422
81	1	Alyson Gerlach III	61	10	6.09999999999999964	5	3	2	1	9	4	2014-03-06 10:46:30.052298	2014-03-06 10:46:30.052298
82	1	Mr. Kaelyn Cartwright	50	9	5.55999999999999961	3	4	3	2	9	4	2014-03-06 10:46:30.05522	2014-03-06 10:46:30.05522
83	1	Frankie Berge	67	9	7.44000000000000039	1	2	3	2	9	4	2014-03-06 10:46:30.058086	2014-03-06 10:46:30.058086
84	1	Larue Stroman	54	4	13.5	2	5	3	1	9	4	2014-03-06 10:46:30.061134	2014-03-06 10:46:30.061134
85	1	Sonny O'Keefe	56	5	11.1999999999999993	4	3	3	2	9	4	2014-03-06 10:46:30.063912	2014-03-06 10:46:30.063912
86	2	Shyanne Keeling III	56	1	56	5	2	3	1	9	5	2014-03-06 10:46:30.110219	2014-03-06 10:46:30.110219
87	2	Archibald Harvey	67	2	33.5	2	4	1	1	9	5	2014-03-06 10:46:30.113212	2014-03-06 10:46:30.113212
88	2	Hester Williamson	71	9	7.88999999999999968	2	3	1	1	9	5	2014-03-06 10:46:30.115934	2014-03-06 10:46:30.115934
89	2	Verdie Nitzsche	57	1	57	4	4	2	2	9	5	2014-03-06 10:46:30.118844	2014-03-06 10:46:30.118844
90	2	Susie Zboncak	75	5	15	4	3	1	2	9	5	2014-03-06 10:46:30.122278	2014-03-06 10:46:30.122278
91	1	Hubert Bergstrom	65	7	9.28999999999999915	4	3	1	2	10	2	2014-03-06 10:46:30.196341	2014-03-06 10:46:30.196341
92	1	Lenna Schimmel III	68	4	17	2	4	2	1	10	2	2014-03-06 10:46:30.201468	2014-03-06 10:46:30.201468
93	1	Jesus Jenkins DVM	50	5	10	2	5	1	2	10	2	2014-03-06 10:46:30.204921	2014-03-06 10:46:30.204921
94	1	Madaline Sipes I	53	6	8.83000000000000007	2	5	3	1	10	2	2014-03-06 10:46:30.208472	2014-03-06 10:46:30.208472
95	1	Mona Kozey	69	1	69	2	3	1	2	10	2	2014-03-06 10:46:30.211552	2014-03-06 10:46:30.211552
96	2	Ethel Pouros	72	6	12	3	4	2	1	10	3	2014-03-06 10:46:30.260368	2014-03-06 10:46:30.260368
97	2	Rod Bernier	77	2	38.5	4	2	1	2	10	3	2014-03-06 10:46:30.26393	2014-03-06 10:46:30.26393
98	2	Vena Douglas V	54	10	5.40000000000000036	5	4	1	2	10	3	2014-03-06 10:46:30.267446	2014-03-06 10:46:30.267446
99	2	Gabrielle Cassin	54	9	6	2	4	2	2	10	3	2014-03-06 10:46:30.272142	2014-03-06 10:46:30.272142
100	2	Erna Bednar	54	3	18	2	3	3	1	10	3	2014-03-06 10:46:30.275652	2014-03-06 10:46:30.275652
101	1	Keenan Schaefer	74	7	10.5700000000000003	2	4	3	2	11	1	2014-03-06 10:46:30.322685	2014-03-06 10:46:30.322685
102	1	Lorenza Kutch	70	8	8.75	1	3	2	2	11	1	2014-03-06 10:46:30.326233	2014-03-06 10:46:30.326233
103	1	Ms. Lysanne Kovacek	63	3	21	2	3	3	1	11	1	2014-03-06 10:46:30.330442	2014-03-06 10:46:30.330442
104	1	Cayla Reinger II	59	2	29.5	1	4	3	2	11	1	2014-03-06 10:46:30.333719	2014-03-06 10:46:30.333719
105	1	Mr. Jacklyn Schmeler	63	9	7	2	5	2	2	11	1	2014-03-06 10:46:30.337776	2014-03-06 10:46:30.337776
106	2	Izabella Dietrich	73	5	14.5999999999999996	3	4	1	1	11	4	2014-03-06 10:46:30.428105	2014-03-06 10:46:30.428105
107	2	Candida O'Kon	66	3	22	1	3	1	2	11	4	2014-03-06 10:46:30.431479	2014-03-06 10:46:30.431479
108	2	Ms. Allan Graham	76	8	9.5	5	3	3	1	11	4	2014-03-06 10:46:30.434985	2014-03-06 10:46:30.434985
109	2	Sherwood Robel DDS	77	2	38.5	2	4	3	2	11	4	2014-03-06 10:46:30.438077	2014-03-06 10:46:30.438077
110	2	Kaylee Romaguera	66	6	11	3	3	3	2	11	4	2014-03-06 10:46:30.441472	2014-03-06 10:46:30.441472
\.


--
-- Name: bowlers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bhanu
--

SELECT pg_catalog.setval('bowlers_id_seq', 110, true);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: bhanu
--

COPY schema_migrations (version) FROM stdin;
20140301071603
20140301101005
20140301101010
20140301101011
20140301102545
20140301102754
20140302071958
20140306073522
\.


--
-- Data for Name: scores; Type: TABLE DATA; Schema: public; Owner: bhanu
--

COPY scores (id, name, team1, team2, team1score, team2score, toss, venue, date, guest1, guest2, guest3, guest4, guest5, created_at, updated_at, photo1_file_name, photo1_content_type, photo1_file_size, photo1_updated_at, photo2_file_name, photo2_content_type, photo2_file_size, photo2_updated_at, photo3_file_name, photo3_content_type, photo3_file_size, photo3_updated_at, photo4_file_name, photo4_content_type, photo4_file_size, photo4_updated_at, photo5_file_name, photo5_content_type, photo5_file_size, photo5_updated_at) FROM stdin;
4	4th Match	4	2	121/1	168/4	Doloremque perspiciatis quia in.	Larissahaven	2014-03-06	Boyd Dicki	Hector Quigley	Sierra Smith	Ila O'Reilly	Liza Toy V	2014-03-06 10:46:28.977388	2014-03-06 10:46:28.977388	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5	5th Match	3	5	184/5	121/7	Numquam velit dicta quas nesciunt.	West Jacksonfort	2014-03-06	Suzanne Treutel Jr.	Cara Mann	Rubie Schultz	Noah Nolan	Brendon Schumm	2014-03-06 10:46:28.986751	2014-03-06 10:46:28.986751	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
6	6th Match	4	1	181/2	171/1	Ut quia possimus modi unde sunt deleniti quam corporis.	North Myrtiemouth	2014-03-06	Tess Gottlieb	Ona Mayert IV	Jailyn Beatty	Deonte Jast	Mrs. Jean Hackett	2014-03-06 10:46:28.9969	2014-03-06 10:46:28.9969	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
7	7th Match	5	2	137/7	140/5	Voluptatem commodi fugiat alias sed et sunt iste minus.	East Odiehaven	2014-03-06	Russel Boyle PhD	Irwin Spinka	Terrell Gusikowski	Nathanial Rowe	Reilly McLaughlin	2014-03-06 10:46:29.003029	2014-03-06 10:46:29.003029	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
8	8th Match	4	1	187/5	159/7	Eius hic ratione laboriosam inventore voluptas aliquam cumque et.	South Thea	2014-03-06	Hillard Schmidt Jr.	Cassie Lowe	Jayne Barton	Effie Gaylord	Rahul Lehner	2014-03-06 10:46:29.008122	2014-03-06 10:46:29.008122	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
9	9th Match	5	4	100/5	174/4	Magnam dolor vel sint.	Port Raegan	2014-03-06	Mrs. Dillan Nader	Hulda Howe	Miss Citlalli Kozey	Eunice Denesik DVM	Chanel Walker DDS	2014-03-06 10:46:29.01315	2014-03-06 10:46:29.01315	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
10	10th Match	3	2	187/2	151/4	Quia quas porro aperiam esse praesentium rerum amet nam.	South Fritzland	2014-03-07	Antonio Hansen IV	Cordell Feest MD	Margarett Stokes	Vinnie Hamill	Edmund Ledner	2014-03-06 10:46:29.018705	2014-03-06 10:46:29.018705	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
11	Final Match	4	1	168/6	156/7	Porro voluptatum accusantium eaque quidem voluptatem.	Lake Leo	2014-03-06	Florencio Mayert DVM	Lempi Sipes	Kiara Schuster DVM	Shanna Kirlin	Guadalupe Volkman	2014-03-06 10:46:29.024882	2014-03-06 10:46:29.024882	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1	1st Match	1	2	137/6	159/1	Voluptate iure nisi consequatur aut qui.	Lake Oma	2014-03-07	Kaleb Hodkiewicz	Misty Hermiston	Dr. Briana D'Amore	Toni Zboncak	Tyreek Mills DDS	2014-03-06 10:46:28.904735	2014-03-06 10:49:35.468602	3c59fb1042980ba4408edad38fb049c2.jpg	image/jpeg	369043	2014-03-06 10:49:02.078058	1.jpg	image/jpeg	553891	2014-03-06 10:49:07.43004	3D-HD-Wallpapers-Abstract-Desktop-Backgrounds.jpg	image/jpeg	2874180	2014-03-06 10:49:08.119514	3d-nature-wallpaper-hd-1080p-1.jpg	image/jpeg	427790	2014-03-06 10:49:33.482969	4180567e.jpg	image/jpeg	1529081	2014-03-06 10:49:34.222553
2	2nd Match	3	4	140/3	194/3	Et eos molestias nulla qui aut vitae sed praesentium.	Alizamouth	2014-03-07	Reina Parker	Angel Hauck	Mathew Ritchie	Ms. Johnnie Dibbert	Herta Cremin	2014-03-06 10:46:28.91063	2014-03-06 10:51:44.690515	artworks-000040215669-qfufb0-original.jpg	image/jpeg	699903	2014-03-06 10:51:38.09938	at-the-beach-hd-wallpaper-1920x1200.jpg	image/jpeg	530179	2014-03-06 10:51:41.147822	background.jpg	image/jpeg	1966772	2014-03-06 10:51:41.999824	best-game-coolest-wallpaper-ever-119.jpg	image/jpeg	482243	2014-03-06 10:51:43.013389	Best-top-desktop-green-wallpapers-hd-green-wallpaper-beautiful-free-backgrounds-33.jpg	image/jpeg	108651	2014-03-06 10:51:43.732659
3	3rd Match	5	1	195/1	177/6	Consequatur dolor praesentium labore et maxime beatae nesciunt.	Lake Earlinefort	2014-03-07	Ms. Katrine Morissette	Miss Keven Ratke	Chanel Mertz	Veda Schuster	Johanna Dibbert IV	2014-03-06 10:46:28.920121	2014-03-06 10:52:38.184808	Boats-On-The-Bottles.jpg	image/jpeg	145726	2014-03-06 10:52:34.825347	cool_backgrounds_tumblr.jpg	image/jpeg	539081	2014-03-06 10:52:35.605222	cool-skull-backgrounds-wallpaper-HD.jpg	image/jpeg	455251	2014-03-06 10:52:36.240369	Culinary__best_quality_Wallpapers_-_fried_egg.jpg	image/jpeg	79711	2014-03-06 10:52:37.122329	dark-nature-wallpaper.jpg	image/jpeg	327006	2014-03-06 10:52:37.515093
\.


--
-- Name: scores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bhanu
--

SELECT pg_catalog.setval('scores_id_seq', 11, true);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: bhanu
--

COPY teams (id, name, created_at, updated_at) FROM stdin;
1	Pakistan	2014-03-06 10:46:28.417723	2014-03-06 10:46:28.417723
2	Sri Lanka	2014-03-06 10:46:28.458469	2014-03-06 10:46:28.458469
3	Bangladesh	2014-03-06 10:46:28.463156	2014-03-06 10:46:28.463156
4	India	2014-03-06 10:46:28.46548	2014-03-06 10:46:28.46548
5	Afghanistan	2014-03-06 10:46:28.467669	2014-03-06 10:46:28.467669
\.


--
-- Name: teams_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bhanu
--

SELECT pg_catalog.setval('teams_id_seq', 5, true);


--
-- Name: admin_notes_pkey; Type: CONSTRAINT; Schema: public; Owner: bhanu; Tablespace: 
--

ALTER TABLE ONLY active_admin_comments
    ADD CONSTRAINT admin_notes_pkey PRIMARY KEY (id);


--
-- Name: admin_users_pkey; Type: CONSTRAINT; Schema: public; Owner: bhanu; Tablespace: 
--

ALTER TABLE ONLY admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);


--
-- Name: battings_pkey; Type: CONSTRAINT; Schema: public; Owner: bhanu; Tablespace: 
--

ALTER TABLE ONLY battings
    ADD CONSTRAINT battings_pkey PRIMARY KEY (id);


--
-- Name: bowlers_pkey; Type: CONSTRAINT; Schema: public; Owner: bhanu; Tablespace: 
--

ALTER TABLE ONLY bowlers
    ADD CONSTRAINT bowlers_pkey PRIMARY KEY (id);


--
-- Name: scores_pkey; Type: CONSTRAINT; Schema: public; Owner: bhanu; Tablespace: 
--

ALTER TABLE ONLY scores
    ADD CONSTRAINT scores_pkey PRIMARY KEY (id);


--
-- Name: teams_pkey; Type: CONSTRAINT; Schema: public; Owner: bhanu; Tablespace: 
--

ALTER TABLE ONLY teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (id);


--
-- Name: index_active_admin_comments_on_author_type_and_author_id; Type: INDEX; Schema: public; Owner: bhanu; Tablespace: 
--

CREATE INDEX index_active_admin_comments_on_author_type_and_author_id ON active_admin_comments USING btree (author_type, author_id);


--
-- Name: index_active_admin_comments_on_namespace; Type: INDEX; Schema: public; Owner: bhanu; Tablespace: 
--

CREATE INDEX index_active_admin_comments_on_namespace ON active_admin_comments USING btree (namespace);


--
-- Name: index_admin_notes_on_resource_type_and_resource_id; Type: INDEX; Schema: public; Owner: bhanu; Tablespace: 
--

CREATE INDEX index_admin_notes_on_resource_type_and_resource_id ON active_admin_comments USING btree (resource_type, resource_id);


--
-- Name: index_admin_users_on_email; Type: INDEX; Schema: public; Owner: bhanu; Tablespace: 
--

CREATE UNIQUE INDEX index_admin_users_on_email ON admin_users USING btree (email);


--
-- Name: index_admin_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: bhanu; Tablespace: 
--

CREATE UNIQUE INDEX index_admin_users_on_reset_password_token ON admin_users USING btree (reset_password_token);


--
-- Name: index_battings_on_score_id; Type: INDEX; Schema: public; Owner: bhanu; Tablespace: 
--

CREATE INDEX index_battings_on_score_id ON battings USING btree (score_id);


--
-- Name: index_battings_on_team_id; Type: INDEX; Schema: public; Owner: bhanu; Tablespace: 
--

CREATE INDEX index_battings_on_team_id ON battings USING btree (team_id);


--
-- Name: index_bowlers_on_score_id; Type: INDEX; Schema: public; Owner: bhanu; Tablespace: 
--

CREATE INDEX index_bowlers_on_score_id ON bowlers USING btree (score_id);


--
-- Name: index_bowlers_on_team_id; Type: INDEX; Schema: public; Owner: bhanu; Tablespace: 
--

CREATE INDEX index_bowlers_on_team_id ON bowlers USING btree (team_id);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: bhanu; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

