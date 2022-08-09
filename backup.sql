--
-- PostgreSQL database dump
--

-- Dumped from database version 14.3
-- Dumped by pg_dump version 14.3

-- Started on 2022-08-09 14:41:58

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
-- TOC entry 3493 (class 1262 OID 16592)
-- Name: busme; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE busme WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_Ireland.1252';


ALTER DATABASE busme OWNER TO postgres;

\connect busme

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
-- TOC entry 3 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--


ALTER SCHEMA public OWNER TO postgres;

--
-- TOC entry 3494 (class 0 OID 0)
-- Dependencies: 3
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 216 (class 1259 OID 19959)
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 19958)
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- TOC entry 3495 (class 0 OID 0)
-- Dependencies: 215
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- TOC entry 218 (class 1259 OID 19968)
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 19967)
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 3496 (class 0 OID 0)
-- Dependencies: 217
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- TOC entry 214 (class 1259 OID 19952)
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 19951)
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- TOC entry 3497 (class 0 OID 0)
-- Dependencies: 213
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- TOC entry 220 (class 1259 OID 19975)
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 19984)
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 19983)
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- TOC entry 3498 (class 0 OID 0)
-- Dependencies: 221
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- TOC entry 219 (class 1259 OID 19974)
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- TOC entry 3499 (class 0 OID 0)
-- Dependencies: 219
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- TOC entry 224 (class 1259 OID 19991)
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 19990)
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 3500 (class 0 OID 0)
-- Dependencies: 223
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- TOC entry 227 (class 1259 OID 20079)
-- Name: bus_routes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bus_routes (
    id character varying(50) NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.bus_routes OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 20084)
-- Name: bus_stops; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bus_stops (
    id character varying(50) NOT NULL,
    name character varying(50) NOT NULL,
    number integer NOT NULL,
    latitude numeric(19,10) NOT NULL,
    longitude numeric(19,10) NOT NULL
);


ALTER TABLE public.bus_stops OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 20050)
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 20049)
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- TOC entry 3501 (class 0 OID 0)
-- Dependencies: 225
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- TOC entry 212 (class 1259 OID 19943)
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 19942)
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- TOC entry 3502 (class 0 OID 0)
-- Dependencies: 211
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- TOC entry 210 (class 1259 OID 19934)
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 19933)
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- TOC entry 3503 (class 0 OID 0)
-- Dependencies: 209
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- TOC entry 231 (class 1259 OID 20112)
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 20137)
-- Name: route_connection; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.route_connection (
    id bigint NOT NULL,
    routes_id character varying(50) NOT NULL,
    stops_id character varying(50) NOT NULL
);


ALTER TABLE public.route_connection OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 20136)
-- Name: route_connection_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.route_connection_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.route_connection_id_seq OWNER TO postgres;

--
-- TOC entry 3504 (class 0 OID 0)
-- Dependencies: 233
-- Name: route_connection_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.route_connection_id_seq OWNED BY public.route_connection.id;


--
-- TOC entry 230 (class 1259 OID 20090)
-- Name: route_connections; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.route_connections (
    id bigint NOT NULL,
    bus_route_id character varying(50) NOT NULL,
    bus_stop_id character varying(50) NOT NULL
);


ALTER TABLE public.route_connections OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 20089)
-- Name: route_connections_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.route_connections_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.route_connections_id_seq OWNER TO postgres;

--
-- TOC entry 3505 (class 0 OID 0)
-- Dependencies: 229
-- Name: route_connections_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.route_connections_id_seq OWNED BY public.route_connections.id;


--
-- TOC entry 232 (class 1259 OID 20131)
-- Name: routes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.routes (
    id character varying(50) NOT NULL,
    terminus character varying(50) NOT NULL,
    name character varying(20) NOT NULL
);


ALTER TABLE public.routes OWNER TO postgres;

--
-- TOC entry 3233 (class 2604 OID 19962)
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- TOC entry 3234 (class 2604 OID 19971)
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- TOC entry 3232 (class 2604 OID 19955)
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- TOC entry 3235 (class 2604 OID 19978)
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- TOC entry 3236 (class 2604 OID 19987)
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- TOC entry 3237 (class 2604 OID 19994)
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- TOC entry 3238 (class 2604 OID 20053)
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- TOC entry 3231 (class 2604 OID 19946)
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- TOC entry 3230 (class 2604 OID 19937)
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- TOC entry 3241 (class 2604 OID 20140)
-- Name: route_connection id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.route_connection ALTER COLUMN id SET DEFAULT nextval('public.route_connection_id_seq'::regclass);


--
-- TOC entry 3240 (class 2604 OID 20093)
-- Name: route_connections id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.route_connections ALTER COLUMN id SET DEFAULT nextval('public.route_connections_id_seq'::regclass);


--
-- TOC entry 3469 (class 0 OID 19959)
-- Dependencies: 216
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- TOC entry 3471 (class 0 OID 19968)
-- Dependencies: 218
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3467 (class 0 OID 19952)
-- Dependencies: 214
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add bus routes	7	add_busroutes
26	Can change bus routes	7	change_busroutes
27	Can delete bus routes	7	delete_busroutes
28	Can view bus routes	7	view_busroutes
29	Can add bus stops	8	add_busstops
30	Can change bus stops	8	change_busstops
31	Can delete bus stops	8	delete_busstops
32	Can view bus stops	8	view_busstops
33	Can add route connections	9	add_routeconnections
34	Can change route connections	9	change_routeconnections
35	Can delete route connections	9	delete_routeconnections
36	Can view route connections	9	view_routeconnections
37	Can add routes	10	add_routes
38	Can change routes	10	change_routes
39	Can delete routes	10	delete_routes
40	Can view routes	10	view_routes
\.


--
-- TOC entry 3473 (class 0 OID 19975)
-- Dependencies: 220
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
\.


--
-- TOC entry 3475 (class 0 OID 19984)
-- Dependencies: 222
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- TOC entry 3477 (class 0 OID 19991)
-- Dependencies: 224
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3480 (class 0 OID 20079)
-- Dependencies: 227
-- Data for Name: bus_routes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bus_routes (id, name) FROM stdin;
0	40D (to Tyrrelstown)
1	40D (to Parnell St.)
2	18 (to Sandymount)
3	18 (to Palmerstown)
4	40B (to Toberburr)
5	40B (to Parnell St.)
6	9 (to Balbriggan/Skerries)
7	9 (to Swords/Dublin Airport)
8	77A (to Citywest)
9	77A (to Ringsend Road)
10	111 (to Dalkey)
11	111 (to Brides Glen via Dún Laoghaire)
12	83 (to Harristown)
13	83 (to Kimmage)
14	49 (to Tallaght (The Square))
15	49 (to Pearse Street)
16	16 (to Dublin Airport)
17	16 (to Ballinteer (Kingston))
18	43 (to Talbot St.)
19	43 (to Swords Business Park)
20	42 (to Blanchardstown Centre)
21	42 (to Baggot St. / Wilton Terrace)
22	151 (to Docklands (East Rd.))
23	151 (to Foxborough (Balgaddy Rd.))
24	54A (to Ellensborough / Kiltipper Way)
25	54A (to Pearse Street)
26	15 (to Clongriffin)
27	15 (to Ballycullen Rd.)
28	122 (to Drimnagh Rd.)
29	122 (to Ashington)
30	123 (to Marino)
31	123 (to Walkinstown (Kilnamanagh Rd.))
32	451 (to Dún Laoghaire)
33	451 (to Kilmacanogue)
34	65 (to Blessington / Ballymore)
35	65 (to Poolbeg St.)
36	65B (to Citywest)
37	65B (to Poolbeg St.)
38	7A (to Loughlinstown)
39	7A (to Mountjoy Sq.)
40	68 (to Newcastle / Greenogue Business Park)
41	68 (to Hawkins St.)
42	41B (to Lwr. Abbey St.)
43	41B (to Rolestown)
44	41C (to Swords Manor)
45	41C (to Lwr. Abbey St.)
46	41 (to Lwr. Abbey St.)
47	41 (to Swords Manor)
48	44 (to DCU)
49	44 (to Enniskerry)
50	40 (to Charlestown Shopping Centre)
51	40 (to Liffey Valley Shopping Centre)
52	150 (to Hawkins St.)
53	150 (to Rossmore)
54	7 (to Brides Glen Luas)
55	7 (to Mountjoy Sq.)
56	27B (to Harristown)
57	27B (to Eden Quay)
58	102 (to Sutton Station)
59	102 (to Dublin Airport)
60	39A (to UCD Belfield)
61	39A (to Ongar)
62	39 (to Burlington Rd.)
63	39 (to Ongar)
64	6 (to Howth Station)
65	6 (to Abbey St. Lower)
66	14 (to Dundrum Luas Station)
67	14 (to Beaumont (Ardlea Rd.))
68	63 (to Kilternan)
69	63 (to Dún Laoghaire)
70	L53 (to Liffey Valley Shopping Centre)
71	L53 (to Adamstown Station)
72	26 (to Merrion Sq.)
73	26 (to Liffey Valley Shopping Centre)
74	L54 (to Red Cow Luas)
75	L54 (to River Forest)
76	H1 (to Abbey St. Lower)
77	H1 (to Baldoyle)
78	L58 (to River Forest)
79	L58 (to Hazelhatch Station)
80	L59 (to River Forest)
81	L59 (to Hazelhatch Station)
82	H3 (to Abbey St. Lower)
83	H3 (to Howth Summit)
84	H2 (to Malahide)
85	H2 (to Abbey St. Lower)
86	33X (to Custom House Quay / St. Stephen's Green)
87	33X (to Skerries)
88	33 (to Lwr. Abbey St.)
89	33 (to Balbriggan)
90	15A (to Merrion Sq.)
91	15A (to Limekiln Ave.)
92	15B (to Merrion Sq.)
93	15B (to Stocking Ave.)
94	104 (to DCU)
95	104 (to Clontarf)
96	N4 (to Point Village)
97	N4 (to Blanchardstown Shopping Centre)
98	120 (to Parnell St.)
99	120 (to Ashtown Rail Station)
100	13 (to Grange Castle)
101	13 (to Harristown)
102	1 (to Santry (Shanard Rd.))
103	1 (to Pearse Street (Shaw St.))
104	236 (to Damastown IBM)
105	236 (to Blandchardstown Shopping Centre)
106	C2 (to Sandymount)
107	C2 (to Adamstown)
108	C1 (to Adamstown)
109	C1 (to Sandymount)
110	270 (to Blandchardstown Shopping Centre)
111	270 (to Dunboyne)
112	C3 (to Ringsend Road)
113	C3 (to Maynooth)
114	C4 (to Maynooth)
115	C4 (to Ringsend Road)
116	C6 (to Maynooth)
117	C6 (to Ringsend Road)
118	C5 (to Ringsend Road)
119	C5 (to Maynooth)
120	52 (to Leixlip Intel)
121	52 (to Ringsend Road)
122	17 (to Blackrock)
123	17 (to Rialto via UCD)
124	84 (to Blackrock)
125	84 (to Newcastle)
126	140 (to Palmerston Park)
127	140 (to Ballymun (IKEA))
128	27A (to Eden Quay)
129	27A (to Blunden Drive)
130	53 (to Talbot St.)
131	53 (to Dublin Ferryport)
132	130 (to Talbot St.)
133	130 (to Castle Ave.)
134	184 (to Newtownmountkennedy)
135	184 (to Bray Station)
136	70 (to Burlington Rd.)
137	70 (to Dunboyne)
138	38A (to Burlington Rd.)
139	38A (to Damastown)
140	38 (to Burlington Rd.)
141	38 (to Damastown)
142	4 (to Harristown)
143	4 (to Monkstown Ave.)
144	56A (to Tallaght (The Square))
145	56A (to Ringsend Road)
146	27 (to Jobstown)
147	27 (to Clare Hall)
148	47 (to Belarmine)
149	47 (to Poolbeg St.)
150	69 (to Rathcoole)
151	69 (to Hawkins St.)
152	145 (to Ballywaltrim)
153	145 (to Heuston Rail Station)
154	155 (to Bray Rail Station)
155	155 (to IKEA (Ballymun))
156	40E (to Broombridge Luas)
157	40E (to Tyrrelstown)
158	11 (to Wadelai Park)
159	11 (to Sandyord Business District)
160	220 (to Lady's Well Road)
161	220 (to Shangan Road)
162	46A (to Phoenix Park)
163	46A (to Dun Laoghaire)
164	161 (to Dundrum)
165	161 (to Rockbrook)
166	79 (to Aston Quay)
167	79 (to Spiddal Park / Parkwest)
168	33B (to Swords)
169	33B (to Portrane)
170	L51 (to Adamstown Station)
171	L51 (to Liffey Valley SC)
172	238 (to Lady's Well Road)
173	238 (to Tyrrelstown)
174	7D (to Mountjoy Sq.)
175	7D (to Dalkey)
176	7B (to Mountjoy Sq.)
177	7B (to Shankill)
178	175 (to Citywest)
179	175 (to UCD)
180	38B (to Rathcoole)
181	38B (to Hawkins St.)
182	118 (to Hawkins St.)
183	41X (to Knocksedan)
184	41X (to UCD Belfield)
185	185 (to Bray Station)
186	185 (to Enniskerry)
187	44B (to Glencullen)
188	44B (to Dundrum Luas Station)
189	84X (to Newcastle / Kilcoole)
190	84X (to Hawkins St.)
191	N6 (to Finglas Village)
192	N6 (to Naomh Barróg GAA)
193	51D (to Aston Quay / Waterloo Rd.)
194	51D (to Clondalkin)
195	77X (to Clondalkin)
196	116 (to Parnell Sq.)
197	116 (to Whitechurch)
198	46E (to Whitechurch)
199	41D (to Swords Business Park)
200	41D (to Lwr. Abbey St.)
201	32X (to UCD Belfield)
202	32X (to Malahide)
203	27X (to UCD Belfield)
204	27X (to Clare Hall)
205	33D (to Portrane)
206	33D (to Custom House Quay / St. Stephens Green)
207	76 (to Tallaght)
208	76 (to Chapelizod)
209	15D (to Whitechurch)
210	15D (to Merrion Sq.)
211	39X (to Burlington Rd.)
212	39X (to Ongar)
213	142 (to Portmarnock)
214	142 (to UCD Belfield)
215	X25 (to UCD Belfield)
216	X25 (to Maynooth)
217	X27 (to UCD Belfield)
218	X27 (to Salesian College)
219	P29 (to Ringsend Road)
220	P29 (to Adamstown Station)
221	X26 (to Adamstown Station)
222	X28 (to UCD Belfield)
223	X28 (to Salesian College)
224	X30 (to UCD Belfield)
225	X30 (to Dodsboro)
226	X31 (to Earlsfort Terrace)
227	X31 (to River Forest)
228	X32 (to Earlsfort Terrace)
229	X32 (to Hewlett Packard)
230	114 (to Blackrock Dart Station)
231	114 (to Rockview)
232	L52 (to Adamstown Station)
233	L52 (to Blanchardstown SC)
234	59 (to Dún Laoghaire)
235	59 (to Killiney Hill)
236	75 (to The Square Tallaght)
237	75 (to Dún Laoghaire)
\.


--
-- TOC entry 3481 (class 0 OID 20084)
-- Dependencies: 228
-- Data for Name: bus_stops; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bus_stops (id, name, number, latitude, longitude) FROM stdin;
8220DB000002	Parnell Square West	2	53.3522443611	-6.2637232189
8220DB000003	Parnell Square West	3	53.3523085514	-6.2638107422
8220DB000004	Parnell Square West	4	53.3525745132	-6.2641754860
8220DB000006	Parnell Square West	6	53.3527493357	-6.2644538040
8220DB000007	Parnell Square West	7	53.3528409106	-6.2645702612
8220DB000008	Parnell Square West	8	53.3532722715	-6.2651836766
8220DB000010	Parnell Square West	10	53.3533921036	-6.2653891239
8220DB000011	St Joseph's Parade	11	53.3568152335	-6.2646791951
8220DB000012	Upper Dorset Street	12	53.3571075162	-6.2643818673
8220DB000014	Dorset Street Lower	14	53.3585312379	-6.2627765057
8220DB000015	Innisfallen Parade	15	53.3602667076	-6.2609780427
8220DB000016	Nephin Road Park	16	53.3663915571	-6.3056141835
8220DB000017	Drumcondra Rail Stn	17	53.3630783244	-6.2583992885
8220DB000018	Dargle Road	18	53.3658559259	-6.2559568207
8220DB000019	Botanic Avenue	19	53.3672348759	-6.2555999410
8220DB000021	DCU St Patrick's	21	53.3701011993	-6.2543105990
8220DB000022	Home Farm Road	22	53.3735036097	-6.2528037527
8220DB000023	Ferguson Road	23	53.3742282801	-6.2562610042
8220DB000024	Walsh Road	24	53.3751331589	-6.2603723481
8220DB000025	Rathlin Road	25	53.3758994661	-6.2636177364
8220DB000027	Ballymun Road	27	53.3794389600	-6.2665852613
8220DB000028	Hampstead Avenue	28	53.3815786376	-6.2660022708
8220DB000029	Albert College Park	29	53.3834882529	-6.2656691013
8220DB000030	Ventry Park	30	53.3703319002	-6.3046011692
8220DB000031	St Pappin's Road	31	53.3860332259	-6.2688580773
8220DB000032	Stormanstown Road	32	53.3861955681	-6.2713772010
8220DB000033	Glasnevin Drive	33	53.3887179243	-6.2717711412
8220DB000035	Dean Swift Road	35	53.3862067871	-6.2709106925
8220DB000036	Maolbuille Road	36	53.3861268504	-6.2678770698
8220DB000037	DCU Ballymun Road	37	53.3853464012	-6.2648869813
8220DB000038	Hampstead Avenue	38	53.3822365942	-6.2655095212
8220DB000039	The Rise	39	53.3804141869	-6.2656587591
8220DB000040	Stella Avenue	40	53.3766607655	-6.2646689685
8220DB000041	Home Farm Road	41	53.3755592683	-6.2618580062
8220DB000042	Corpus Christi NS	42	53.3746502735	-6.2574611897
8220DB000043	Achill Road	43	53.3738612202	-6.2539013104
8220DB000044	Skylon Hotel	44	53.3730174091	-6.2521323032
8220DB000045	DCU St Patrick's	45	53.3699364344	-6.2541069408
8220DB000046	Botanic Avenue	46	53.3671310162	-6.2552585566
8220DB000047	Drumcondra Rail Stn	47	53.3639161190	-6.2572982565
8220DB000048	Fitzroy Avenue	48	53.3622573901	-6.2588084123
8220DB000049	Dorset Street Lower	49	53.3600042379	-6.2608535083
8220DB000051	Temple Street	51	53.3578104088	-6.2632715725
8220DB000052	Dorset Street Upper	52	53.3566607792	-6.2645652820
8220DB000053	North Circular Road	53	53.3600144884	-6.2627912891
8220DB000054	Mater Hospital	54	53.3602216081	-6.2659080340
8220DB000055	Mountjoy	55	53.3604116029	-6.2684695798
8220DB000056	Dalymount	56	53.3607597246	-6.2763736549
8220DB000057	Dalymount	57	53.3608162243	-6.2765516748
8220DB000058	Churchview Home	58	53.3609462459	-6.2812042025
8220DB000059	Annamoe Terrace	59	53.3610180102	-6.2849425631
8220DB000060	Quarry Road	60	53.3612792197	-6.2893645001
8220DB000063	Faussaugh Avenue	63	53.3667924373	-6.2927501081
8220DB000064	Faussaugh Ave Church	64	53.3670885821	-6.2952327822
8220DB000065	Dingle Road	65	53.3672546442	-6.2980512764
8220DB000066	Broombridge Road	66	53.3672749884	-6.3007403455
8220DB000068	Ventry Drive	68	53.3690775080	-6.3042452347
8220DB000069	Carnlough Road	69	53.3713925641	-6.3033417169
8220DB000071	Ventry Park	71	53.3702576893	-6.3044388053
8220DB000072	Ventry Drive	72	53.3689699260	-6.3042645360
8220DB000073	Faussagh Avenue	73	53.3673915527	-6.3007206787
8220DB000074	Faussaugh Ave Church	74	53.3672002386	-6.2954988140
8220DB000075	Fionnbarra GAA	75	53.3665472299	-6.2913173194
8220DB000077	Quarry Road	77	53.3613091819	-6.2895736523
8220DB000078	Annamoe Terrace	78	53.3611492152	-6.2840658353
8220DB000079	Churchview Home	79	53.3610212510	-6.2807955056
8220DB000080	Phibsborough PO	80	53.3608629633	-6.2760539615
8220DB000081	Phibsborough	81	53.3608757479	-6.2719666269
8220DB000082	Phibsborough	82	53.3607977959	-6.2715490802
8220DB000083	Mater Hospital	83	53.3602792498	-6.2655450962
8220DB000084	Leo Street	84	53.3601625616	-6.2637017806
8220DB000085	Wellpark Avenue	85	53.3739579526	-6.2519134297
8220DB000086	Home Farm FC	86	53.3760502205	-6.2511663907
8220DB000087	Clare Road	87	53.3767517256	-6.2548802899
8220DB000088	Walnut Rise	88	53.3772872553	-6.2576992286
8220DB000090	Albert College Court	90	53.3863855317	-6.2652656728
8220DB000091	Ballymun Road NS	91	53.3884278897	-6.2654081421
8220DB000092	Ballymun Library	92	53.3898373341	-6.2646742404
8220DB000093	Gateway Avenue	93	53.3923014678	-6.2641529756
8220DB000094	Civic Centre	94	53.3960347624	-6.2643769600
8220DB000102	Balbutcher Lane	102	53.3977730702	-6.2677198570
8220DB000104	Poppintree Parade	104	53.3997562075	-6.2768129450
8220DB000105	Belclare Park	105	53.4029363967	-6.2816926965
8220DB000107	Crannogue Road	107	53.4023798988	-6.2804969099
8220DB000110	Árd Na Meala	110	53.3979386410	-6.2686003815
8220DB000112	Civic Centre	112	53.3961544015	-6.2639510403
8220DB000113	Trinity Comp School	113	53.3922679629	-6.2637032546
8220DB000114	Ballymun Road	114	53.3913333221	-6.2637112293
8220DB000115	Ballymun Road Church	115	53.3879640920	-6.2650361005
8220DB000117	Walnut Rise	117	53.3773659067	-6.2575457085
8220DB000118	Clare Road	118	53.3766430017	-6.2535920986
8220DB000119	The Village	119	53.3751904807	-6.2507657453
8220DB000126	Nursing Home	126	53.3990954667	-6.2640869606
8220DB000127	Nursing Home	127	53.3991075305	-6.2636804282
8220DB000128	Glasnevin Avenue	128	53.3892678697	-6.2656897226
8220DB000129	Glasnevin Drive	129	53.3898903154	-6.2714229361
8220DB000130	Glasnevin Park	130	53.3900920128	-6.2741812694
8220DB000131	Willow Park Road	131	53.3903858903	-6.2783492370
8220DB000132	Beneavin Park	132	53.3905207425	-6.2827191237
8220DB000133	Grove Park Road	133	53.3907969276	-6.2863015095
8220DB000134	Sycamore Road	134	53.3930945913	-6.2860738654
8220DB000136	McKee Road	136	53.3943802014	-6.2898565965
8220DB000137	Clancy Avenue	137	53.3923167196	-6.2926307948
8220DB000138	St Canice's BNS	138	53.3899950093	-6.2918065726
8220DB000139	Grove Park Road	139	53.3906014624	-6.2864597175
8220DB000140	Beneavin Park	140	53.3906344924	-6.2825040467
8220DB000141	Willow Park Road	141	53.3904450851	-6.2780912447
8220DB000142	Glasnevin Park	142	53.3901982853	-6.2740717220
8220DB000143	Willow Park Avenue	143	53.3898767084	-6.2692433700
8220DB000146	Na Fianna GAA Club	146	53.3750401276	-6.2650955857
8220DB000147	Tolka Bridge	147	53.3724802262	-6.2658308621
8220DB000148	Mobhi Road	148	53.3706701663	-6.2680685071
8220DB000149	Tolka Bridge	149	53.3731385873	-6.2659844661
8220DB000150	Na Fianna GAA Club	150	53.3756588462	-6.2649952830
8220DB000151	Botanic Gardens	151	53.3719552600	-6.2692938277
8220DB000153	Met Eireann	153	53.3756885056	-6.2701344395
8220DB000154	St Brigid's School	154	53.3772589963	-6.2755570372
8220DB000155	Old Finglas Road	155	53.3778742493	-6.2795755272
8220DB000156	Tolka Estate	156	53.3786233901	-6.2816647391
8220DB000175	Northland Grove	175	53.3784242537	-6.2815675390
8220DB000176	Old Finglas Road	176	53.3780320420	-6.2792986061
8220DB000177	Ballygall Rd East	177	53.3804683766	-6.2762240352
8220DB000178	Fitzmaurice Road	178	53.3818902632	-6.2763469826
8220DB000179	Ballygall Rd East	179	53.3803034313	-6.2760052198
8220DB000181	Cremore Avenue	181	53.3771498434	-6.2742237069
8220DB000182	Met Eireann	182	53.3756567668	-6.2698050597
8220DB000183	Botanic Gardens	183	53.3723159291	-6.2687531849
8220DB000184	Botanic Road	184	53.3697036820	-6.2689793545
8220DB000185	St Teresa's Place	185	53.3681009360	-6.2700211393
8220DB000186	Lindsay Grove	186	53.3653553426	-6.2715899776
8220DB000187	Phibsborough Road	187	53.3627342524	-6.2724473653
8220DB000188	North Circular Road	188	53.3601206878	-6.2725831492
8220DB000189	Fire Station	189	53.3571674395	-6.2734688156
8220DB000190	Broadstone	190	53.3551257304	-6.2733710740
8220DB000191	Western Way	191	53.3550179486	-6.2690337805
8220DB000192	Mountjoy Street	192	53.3563972112	-6.2680764696
8220DB000193	Finglas Park	193	53.3911963060	-6.2941040349
8220DB000194	Western Way	194	53.3550406496	-6.2699793110
8220DB000195	Broadstone	195	53.3550117779	-6.2735709797
8220DB000196	Fire Station	196	53.3568838993	-6.2737507041
8220DB000197	Monck Place	197	53.3589526316	-6.2732313735
8220DB000198	Phibsborough SC	198	53.3616253829	-6.2728378104
8220DB000199	Munster Street	199	53.3636218115	-6.2722912462
8220DB000200	Prospect Way	200	53.3674226926	-6.2715964439
8220DB000201	Botanic Road	201	53.3682910987	-6.2701186269
8220DB000202	Fairfield Road	202	53.3700800876	-6.2689039775
8220DB000203	Whitehall College	203	53.3763927937	-6.2500100281
8220DB000204	Highfield Hospital	204	53.3795883576	-6.2466621927
8220DB000205	Iveragh Road	205	53.3813753269	-6.2453260470
8220DB000206	Collins Avenue West	206	53.3835460890	-6.2474767079
8220DB000207	Larkhill Road	207	53.3848216307	-6.2498747828
8220DB000208	Glendun Road	208	53.3866539303	-6.2479504082
8220DB000209	Larkhill Road	209	53.3872711105	-6.2459104473
8220DB000210	Crestfield Road	210	53.3875940813	-6.2483177285
8220DB000211	Collins Avenue	211	53.3842808562	-6.2491603306
8220DB000212	Whitehall	212	53.3831956351	-6.2462583975
8220DB000213	Iveragh Road	213	53.3814495440	-6.2448720236
8220DB000214	Highfield Hospital	214	53.3794084836	-6.2466545518
8220DB000215	Collins Avenue	215	53.3818722870	-6.2424494292
8220DB000216	Beaumont Road	216	53.3823308175	-6.2381913197
8220DB000217	Grace Park Court	217	53.3843236218	-6.2368011222
8220DB000218	Shantalla Road	218	53.3859238990	-6.2337883241
8220DB000220	Swords Road	220	53.3879405397	-6.2449808412
8220DB000228	Shanliss Road	228	53.3918773928	-6.2597195729
8220DB000233	Beaumont Road	233	53.3858213106	-6.2335369942
8220DB000234	Beaumont Grove	234	53.3849504827	-6.2348208427
8220DB000235	Collinswood	235	53.3832966132	-6.2372494565
8220DB000236	Yellow Road	236	53.3820247431	-6.2381588600
8220DB000237	Swords Road	237	53.3820319329	-6.2435251998
8220DB000242	Coolgreena Road	242	53.3856548986	-6.2320104276
8220DB000243	Lady of Mercy	243	53.3857800608	-6.2295396745
8220DB000244	Skelly's Lane	244	53.3849982137	-6.2234985157
8220DB000245	Whitethorn Crescent	245	53.3844722444	-6.2195666060
8220DB000246	Artane Castle	246	53.3851504766	-6.2162308772
8220DB000247	Ardlea Road	247	53.3869761611	-6.2145007559
8220DB000248	Maryfield Drive	248	53.3855645602	-6.2144696314
8220DB000249	Artane Castle	249	53.3849335492	-6.2161497450
8220DB000250	Skelly's Lane	250	53.3844194500	-6.2202453161
8220DB000251	Elmount Crescent	251	53.3848322787	-6.2232197863
8220DB000252	Lady of Mercy	252	53.3855680158	-6.2279699179
8220DB000253	Beaumont Hospital	253	53.3899625746	-6.2242991423
8220DB000254	Beaumont Hospital	254	53.3902652984	-6.2241061137
8220DB000255	Coolgreena Road	255	53.3855938804	-6.2315318724
8220DB000261	Parnell Square East	261	53.3540562845	-6.2628533612
8220DB000263	Parnell Square East	263	53.3537456235	-6.2625054540
8220DB000264	Parnell Square East	264	53.3535353027	-6.2622586268
8220DB000265	Parnell Square East	265	53.3533615685	-6.2620553807
8220DB000270	O'Connell St Upper	270	53.3506233915	-6.2604242916
8220DB000271	O'Connell St Lower	271	53.3485963626	-6.2594854200
8220DB000272	O'Connell St Upper	272	53.3514644799	-6.2607806057
8220DB000273	O'Connell Bridge	273	53.3472474160	-6.2588194015
8220DB000274	O'Connell St Upper	274	53.3503490838	-6.2607208686
8220DB000277	O'Connell St Upper	277	53.3508223258	-6.2605063198
8220DB000278	O'Connell St Upper	278	53.3515608719	-6.2612273356
8220DB000279	O'Connell St Upper	279	53.3501317464	-6.2606095470
8220DB000281	O'Connell St Upper	281	53.3513435350	-6.2611160084
8220DB000284	Rathbourne Avenue	284	53.3772826239	-6.3283892838
8220DB000286	Cathal Brugha Street	286	53.3521708437	-6.2599106110
8220DB000288	Irish Life	288	53.3491688123	-6.2556017035
8220DB000289	Abbey St Lower	289	53.3490351823	-6.2562981234
8220DB000292	Abbey St Lower	292	53.3491996948	-6.2552549594
8220DB000297	Eden Quay	297	53.3481432679	-6.2567701260
8220DB000298	Eden Quay	298	53.3482006634	-6.2563922678
8220DB000299	Eden Quay	299	53.3482418474	-6.2561352357
8220DB000300	Liberty Hall	300	53.3482992409	-6.2557573758
8220DB000301	Eden Quay	301	53.3479883676	-6.2566262409
8220DB000302	Eden Quay	302	53.3480380962	-6.2563388204
8220DB000307	O'Donovan Road	307	53.3345770895	-6.2800874642
8220DB000308	Oscar Square	308	53.3367711890	-6.2795336569
8220DB000309	Ardee Street	309	53.3378498918	-6.2789195882
8220DB000312	Wellington Quay	312	53.3454764728	-6.2662061555
8220DB000315	Bachelors Walk	315	53.3470282859	-6.2616671551
8220DB000317	Westmoreland Street	317	53.3465259445	-6.2592693662
8220DB000319	Westmoreland Street	319	53.3462744267	-6.2592796139
8220DB000320	Westmoreland Street	320	53.3456456324	-6.2593052325
8220DB000322	Gulliver's Retail Pk	322	53.4042549925	-6.2653508453
8220DB000325	Aston Quay	325	53.3466970503	-6.2599082595
8220DB000326	Aston Quay	326	53.3465441160	-6.2605152907
8220DB000328	Aston Quay	328	53.3463328930	-6.2614401093
8220DB000329	Aston Quay	329	53.3462735131	-6.2616828450
8220DB000333	D'Olier Street	333	53.3466922366	-6.2583463640
8220DB000334	D'Olier Street	334	53.3465811562	-6.2581255911
8220DB000335	D'Olier Street	335	53.3463614054	-6.2578491705
8220DB000336	D'Olier Street	336	53.3462516394	-6.2577184667
8220DB000340	Townsend Street	340	53.3459751203	-6.2560174785
8220DB000342	College Street	342	53.3455641183	-6.2568002608
8220DB000345	Pearse St Garda Stn	345	53.3454758155	-6.2562931941
8220DB000346	Pearse St Garda Stn	346	53.3455443982	-6.2566809076
8220DB000350	Prince's St South	350	53.3456319416	-6.2497682496
8220DB000351	Erne Street	351	53.3434182648	-6.2453081738
8220DB000352	Pearse Square	352	53.3429891458	-6.2424121400
8220DB000353	Grand Canal Quay	353	53.3426450090	-6.2397980176
8220DB000354	Ringsend Road	354	53.3422358280	-6.2364356898
8220DB000355	Ringsend Garage	355	53.3418173478	-6.2330587907
8220DB000356	Ringsend	356	53.3419030234	-6.2267174431
8220DB000357	Irishtown Road	357	53.3391710440	-6.2231214749
8220DB000371	Irishtown Road	371	53.3386127807	-6.2230545825
8220DB000372	Star of the Sea	372	53.3354881470	-6.2196556714
8220DB000373	Farney Park	373	53.3342753313	-6.2178892726
8220DB000374	Sandymount	374	53.3332284399	-6.2164013421
8220DB000381	St John's Church	381	53.3243237661	-6.2123741934
8220DB000385	Newgrove Avenue	385	53.3323510231	-6.2112276879
8220DB000387	Sandymount	387	53.3324995102	-6.2157410577
8220DB000388	Farney Park	388	53.3345088620	-6.2184801726
8220DB000389	Star of the Sea	389	53.3352900818	-6.2196338894
8220DB000390	Tritonville Road	390	53.3376299138	-6.2222394793
8220DB000391	Bath Street	391	53.3400638555	-6.2239253518
8220DB000392	Ringsend	392	53.3417336312	-6.2274153211
8220DB000393	Tritonville Road	393	53.3369038877	-6.2223747969
8220DB000395	Ringsend Road	395	53.3419400536	-6.2352764544
8220DB000396	Grand Canal Quay	396	53.3424425176	-6.2394759484
8220DB000397	Pearse Square	397	53.3427855554	-6.2420150073
8220DB000398	Erne Street	398	53.3432949350	-6.2454784469
8220DB000399	Pearse Station	399	53.3438668221	-6.2483086014
8220DB000400	Shaw Street	400	53.3448491210	-6.2533899729
8220DB000404	Nassau Street	404	53.3426633325	-6.2563478924
8220DB000405	Nassau Street	405	53.3424816892	-6.2556043727
8220DB000406	Nassau Street	406	53.3426061452	-6.2561249458
8220DB000407	Custom House	407	53.3483795867	-6.2538765060
8220DB000408	Merrion Sq North	408	53.3409707826	-6.2500192396
8220DB000409	Holles Street	409	53.3401367313	-6.2476955956
8220DB000410	Mount Street Lower	410	53.3388134509	-6.2438903903
8220DB000411	Mount Street Bridge	411	53.3381171192	-6.2417715535
8220DB000412	Haddington Road	412	53.3352555102	-6.2372793191
8220DB000413	Lansdowne Park	413	53.3340941933	-6.2365463941
8220DB000414	Lansdowne Road	414	53.3315738059	-6.2344732170
8220DB000415	American Embassy	415	53.3303378154	-6.2329477497
8220DB000416	RDS Ballsbridge	416	53.3286399201	-6.2293695691
8220DB000417	Merrion Road	417	53.3276995857	-6.2259704205
8220DB000418	British Embassy	418	53.3257198105	-6.2233952975
8220DB000419	Shrewsbury Park	419	53.3239951058	-6.2204495031
8220DB000420	Merlyn Road	420	53.3219108013	-6.2175039217
8220DB000421	Merrion View Avenue	421	53.3200051794	-6.2144911204
8220DB000422	St Vincent's Hosp	422	53.3180641919	-6.2103242807
8220DB000423	Herbert Avenue	423	53.3171485041	-6.2074056583
8220DB000424	Merrion Gates	424	53.3153943802	-6.2037268662
8220DB000476	Merrion Gates	476	53.3157515264	-6.2047625227
8220DB000477	Herbert Avenue	477	53.3168630547	-6.2069523201
8220DB000478	St Vincent's Hosp	478	53.3181142989	-6.2112678253
8220DB000479	Merrion Centre	479	53.3191439676	-6.2134012867
8220DB000480	Netherlands Embassy	480	53.3208499800	-6.2162872054
8220DB000481	Wanderers FC	481	53.3223446398	-6.2182664430
8220DB000482	Shrewsbury Road	482	53.3247277781	-6.2219652950
8220DB000483	British Embassy	483	53.3259441075	-6.2239714805
8220DB000485	RDS Ballsbridge	485	53.3282515101	-6.2286349708
8220DB000486	RDS Ballsbridge	486	53.3283287184	-6.2289921012
8220DB000487	American Embassy	487	53.3308552894	-6.2339023084
8220DB000488	Lansdowne Park	488	53.3330985546	-6.2360769470
8220DB000489	St Mary's Rd South	489	53.3349420031	-6.2373523127
8220DB000490	Haddington Road	490	53.3365738419	-6.2389068060
8220DB000491	Mount Street Bridge	491	53.3378140535	-6.2413335109
8220DB000492	Mount Street Lower	492	53.3385846851	-6.2436144622
8220DB000493	Holles Street	493	53.3398534164	-6.2473768227
8220DB000494	Clare Street	494	53.3414355834	-6.2516822523
8220DB000495	Pearse Station	495	53.3435913198	-6.2497467052
8220DB000496	Busáras	496	53.3494968761	-6.2522235787
8220DB000497	Connolly	497	53.3505260754	-6.2506943432
8220DB000499	Summerhill Parade	499	53.3574503386	-6.2490886269
8220DB000500	Ballybough Road	500	53.3590360763	-6.2462891553
8220DB000501	Clonliffe Avenue	501	53.3607056847	-6.2436963743
8220DB000509	Ballybough Road	509	53.3606013494	-6.2433250395
8220DB000510	Charleville Avenue	510	53.3591893775	-6.2457119272
8220DB000511	Summerhill Parade	511	53.3575155897	-6.2486352334
8220DB000513	Rutland Street	513	53.3552119630	-6.2539727681
8220DB000515	Portland Row	515	53.3535348728	-6.2480924008
8220DB000516	North Strand Road	516	53.3556839194	-6.2457056844
8220DB000518	Waterloo Avenue	518	53.3589041624	-6.2409909439
8220DB000519	North Strand Fire Station	519	53.3603387601	-6.2395345287
8220DB000521	Annesley Bridge	521	53.3616370471	-6.2379784607
8220DB000522	Fairview	522	53.3632889490	-6.2354159747
8220DB000523	Marino College	523	53.3642854537	-6.2316933317
8220DB000525	Howth Road	525	53.3649608735	-6.2263309112
8220DB000526	Copeland Grove	526	53.3668695722	-6.2211122786
8220DB000527	Ashbrook	527	53.3680198762	-6.2126788805
8220DB000528	Castle Grove	528	53.3692640807	-6.2099367446
8220DB000529	Collins Avenue	529	53.3705774149	-6.2076123452
8220DB000530	Killester	530	53.3712245323	-6.2040233297
8220DB000531	The Demesne	531	53.3732509125	-6.2013078847
8220DB000532	The Meadows	532	53.3758020804	-6.1934746858
8220DB000533	Ennafort Park	533	53.3775832778	-6.1870561395
8220DB000534	Cill Eanna	534	53.3787502416	-6.1816402900
8220DB000535	Raheny	535	53.3802570730	-6.1773069571
8220DB000536	Raheny Library	536	53.3804237567	-6.1735117268
8220DB000537	Avondale Park	537	53.3799012003	-6.1681526350
8220DB000538	Maywood	538	53.3801380646	-6.1642641832
8220DB000539	Foxfield	539	53.3806736618	-6.1593556415
8220DB000540	Lonsdale	540	53.3813362764	-6.1551179435
8220DB000541	James Larkin Road	541	53.3818727078	-6.1520280684
8220DB000542	Strand View	542	53.3836619200	-6.1462679499
8220DB000591	Kilbarrack Road	591	53.3841675900	-6.1446824866
8220DB000592	James Larkin Road	592	53.3827330098	-6.1483828725
8220DB000593	Howth Road	593	53.3818486950	-6.1516382572
8220DB000594	Lonsdale 	594	53.3811633656	-6.1555613621
8220DB000595	Foxfield	595	53.3805999504	-6.1592385630
8220DB000596	Shieling Square	596	53.3802528433	-6.1617939721
8220DB000597	Maywood	597	53.3798981358	-6.1656123554
8220DB000598	Avondale Park	598	53.3798466296	-6.1692823774
8220DB000599	Raheny Library	599	53.3803003189	-6.1730810784
8220DB000600	Raheny	600	53.3802479252	-6.1761198105
8220DB000601	Cill Eanna	601	53.3792234833	-6.1796659966
8220DB000602	Wade's Avenue	602	53.3781425248	-6.1830490710
8220DB000603	Ennafort Park	603	53.3773821590	-6.1874254297
8220DB000604	All Saints Road	604	53.3763546440	-6.1907908597
8220DB000605	The Meadows	605	53.3756666621	-6.1934353266
8220DB000606	St Brigid's Church	606	53.3747089784	-6.1978646603
8220DB000607	The Demesne	607	53.3725157800	-6.2020302137
8220DB000608	Killester	608	53.3710783845	-6.2044653148
8220DB000609	Castle Grove	609	53.3698375441	-6.2086202565
8220DB000610	Ashbrook	610	53.3683623013	-6.2115374553
8220DB000611	Hollybrook Park	611	53.3667546791	-6.2188329221
8220DB000612	Copeland Avenue	612	53.3657562265	-6.2242091300
8220DB000613	Marino Crescent Park	613	53.3646174710	-6.2268109984
8220DB000614	Fairview	614	53.3636380024	-6.2334932303
8220DB000615	Annesley Bridge	615	53.3619064165	-6.2373512989
8220DB000616	Nth Strand Fire Stn	616	53.3598447138	-6.2395548963
8220DB000617	Strandville Avenue	617	53.3578945211	-6.2420090964
8220DB000618	Newcomen Bridge	618	53.3561011780	-6.2447420676
8220DB000619	Amiens Street	619	53.3540446250	-6.2473053335
8220DB000620	Talbot Street	620	53.3509610944	-6.2527795569
8220DB000621	Talbot Street	621	53.3505177759	-6.2562676485
8220DB000624	Ribh Road	624	53.3801853071	-6.1891252380
8220DB000625	Lein Gardens	625	53.3817875654	-6.1863212973
8220DB000626	Edenmore Green	626	53.3844945184	-6.1840564192
8220DB000627	Edenmore Green	627	53.3854070170	-6.1820030326
8220DB000628	Edenmore Grove	628	53.3869549963	-6.1839065792
8220DB000629	Edenmore Drive	629	53.3865279695	-6.1859694247
8220DB000630	Springdale Road	630	53.3872439959	-6.1893217523
8220DB000633	Tonlegee Drive	633	53.3896443405	-6.1893551804
8220DB000634	Tonlegee Avenue	634	53.3902751967	-6.1841411092
8220DB000635	Glenwood Road	635	53.3890225361	-6.1839238013
8220DB000636	Glenfarne Road	636	53.3888586595	-6.1867423481
8220DB000637	Springdale Road	637	53.3877918262	-6.1898848542
8220DB000638	Edenmore Avenue	638	53.3867623213	-6.1883799961
8220DB000639	Edenmore Park	639	53.3863330185	-6.1867444608
8220DB000640	Edenmore Grove	640	53.3867053852	-6.1834511398
8220DB000641	Edenmore Green	641	53.3858263828	-6.1823910815
8220DB000642	Edenmore Green	642	53.3847318483	-6.1831142290
8220DB000643	St Josephs Hospital	643	53.3835661359	-6.1838854683
8220DB000644	Lein Park	644	53.3823625142	-6.1857105766
8220DB000645	Ribh Road	645	53.3801688019	-6.1886298805
8220DB000649	All Saints Road	649	53.3762836659	-6.1896665671
8220DB000650	Sybil Hill Avenue	650	53.3754028537	-6.1855254832
8220DB000651	All Saints Park	651	53.3754794508	-6.1799309091
8220DB000653	Raheny	653	53.3794630466	-6.1753416390
8220DB000654	Watermill Road	654	53.3792100758	-6.1770209808
8220DB000655	Watermill Drive	655	53.3777386714	-6.1754304023
8220DB000656	St Anne's Avenue	656	53.3764702008	-6.1777091918
8220DB000657	All Saints Park	657	53.3755453979	-6.1789511170
8220DB000658	Waterfall Road	658	53.3749800485	-6.1831386199
8220DB000659	Sybil Hill Avenue	659	53.3752374407	-6.1858782135
8220DB000662	Clanmoyle Road	662	53.3738704166	-6.2126292751
8220DB000663	Saint Peters School	663	53.3747635384	-6.2170558102
8220DB000664	Donnycarney Church	664	53.3747192481	-6.2195075621
8220DB000665	Casino Park	665	53.3724663178	-6.2221264612
8220DB000666	Mount Temple School	666	53.3702331241	-6.2242633478
8220DB000667	Brian Road	667	53.3679816455	-6.2269868465
8220DB000668	Marino Crescent Park	668	53.3645749809	-6.2293973169
8220DB000669	Malahide Road	669	53.3663170048	-6.2286789053
8220DB000670	Mount Temple School	670	53.3689561148	-6.2260296639
8220DB000671	Nazareth House	671	53.3707168420	-6.2241530532
8220DB000672	Donnycarney Road	672	53.3734663500	-6.2210778208
8220DB000674	Parnell Park	674	53.3746860705	-6.2160820924
8220DB000675	Buckingham St Lower	675	53.3528581377	-6.2485257595
8220DB000709	St Brigid's Church	709	53.3750380599	-6.1970391320
8220DB000722	Raheny Station	722	53.3811136997	-6.1757220247
8220DB000723	Raheny Road	723	53.3841517880	-6.1757274221
8220DB000724	Grange Park Road	724	53.3869554629	-6.1745100114
8220DB000725	Ardscoil La Salle	725	53.3895723721	-6.1704888113
8220DB000726	Grange Road	726	53.3917483514	-6.1676137807
8220DB000727	Ardara Avenue	727	53.3937048519	-6.1668380248
8220DB000728	Holy Trinity Church	728	53.3953162107	-6.1634905947
8220DB000729	Holy Trinity NS	729	53.3965584588	-6.1624445952
8220DB000730	Grangemore Road	730	53.3981666977	-6.1618188688
8220DB000738	Grange Road	738	53.3976003550	-6.1618132055
8220DB000739	Holy Trinity Church	739	53.3951450859	-6.1634678892
8220DB000740	Ardara Avenue	740	53.3931412776	-6.1670126153
8220DB000741	St Donagh's Road	741	53.3919077252	-6.1674565712
8220DB000742	Raheny Road	742	53.3898234138	-6.1698615880
8220DB000743	Woodbine Park	743	53.3880248638	-6.1727352382
8220DB000744	Belmont Park	744	53.3850921988	-6.1749204844
8220DB000745	Raheny Station	745	53.3813435656	-6.1754716767
8220DB000746	Kildare Street	746	53.3401536166	-6.2555942815
8220DB000747	Kildare Street	747	53.3399308030	-6.2557235187
8220DB000748	Huguenot Cemetery	748	53.3385095344	-6.2550306660
8220DB000749	Baggot St Lower	749	53.3376207010	-6.2508021472
8220DB000750	Fitzwilliam Street	750	53.3365710801	-6.2484875033
8220DB000751	Herbert Street	751	53.3353205479	-6.2465716355
8220DB000752	Baggot St Upper	752	53.3336716542	-6.2444620200
8220DB000753	Waterloo Road	753	53.3324533903	-6.2435210546
8220DB000754	Burlington Road	754	53.3307837824	-6.2442803273
8220DB000755	Wellington Lane	755	53.3288280457	-6.2451413680
8220DB000756	Royal Hospital	756	53.3263997618	-6.2425987467
8220DB000757	Donnybrook Village	757	53.3240813372	-6.2395865099
8220DB000758	Victoria Avenue	758	53.3226869430	-6.2376773804
8220DB000759	Donnybrook Stadium	759	53.3203488508	-6.2333455168
8220DB000760	Donnybrook Church	760	53.3183301873	-6.2305619559
8220DB000761	Teresian School	761	53.3161004008	-6.2274872137
8220DB000762	RTE	762	53.3145170649	-6.2243709441
8220DB000763	Belfield Court	763	53.3123201448	-6.2211003191
8220DB000769	Belfield Court	769	53.3119010923	-6.2213278571
8220DB000770	RTE	770	53.3146361876	-6.2257318113
8220DB000771	Teresian School	771	53.3158800692	-6.2277815224
8220DB000772	Donnybrook Garage	772	53.3184852575	-6.2313210636
8220DB000773	Donnybrook Road	773	53.3199163485	-6.2332733193
8220DB000774	Donnybrook Garda Stn	774	53.3216121236	-6.2354999964
8220DB000775	Donnybrook Village	775	53.3234897098	-6.2390854472
8220DB000776	Morehampton Terrace	776	53.3254792403	-6.2417358211
8220DB000777	Royal Hospital	777	53.3269721601	-6.2436261436
8220DB000779	Waterloo Road	779	53.3286887363	-6.2454473626
8220DB000780	Burlington Road	780	53.3310633512	-6.2443439182
8220DB000781	Baggot Street	781	53.3326262714	-6.2436641026
8220DB000782	Baggot St Upper	782	53.3335838145	-6.2446007675
8220DB000783	Baggot St Lower	783	53.3353085374	-6.2469775640
8220DB000784	Fitzwilliam Street	784	53.3364567281	-6.2486573715
8220DB000785	Pembroke St Lower	785	53.3371058976	-6.2518593735
8220DB000786	Embassy of Malta	786	53.3351644610	-6.2561582957
8220DB000790	Stephen's Green Nth	790	53.3392943720	-6.2583024730
8220DB000792	Dawson Street	792	53.3404489882	-6.2585858085
8220DB000793	Dawson Street	793	53.3408597860	-6.2584038692
8220DB000795	Berkeley Road	795	53.3587400433	-6.2697242782
8220DB000796	Berkeley Road	796	53.3600182144	-6.2698527858
8220DB000797	Phibsborough PO	797	53.3607260028	-6.2746621647
8220DB000798	Rathdown Road	798	53.3594766361	-6.2796407009
8220DB000799	Charleville Road	799	53.3588687100	-6.2817385510
8220DB000800	Annamore Parade	800	53.3580651515	-6.2846104289
8220DB000801	Annamore Road	801	53.3574704998	-6.2876390824
8220DB000802	Drumalee	802	53.3564983225	-6.2912987228
8220DB000803	Oxmantown Road	803	53.3547130307	-6.2940442139
8220DB000804	Grange Abbey Cresc	804	53.3536849852	-6.2956926805
8220DB000807	Phoenix Park	807	53.3515565121	-6.2977003861
8220DB000808	North Circular Road	808	53.3539946695	-6.2953498265
8220DB000809	Marlborough Road	809	53.3552607398	-6.2933763462
8220DB000810	Ellesmere Avenue	810	53.3570998602	-6.2899976413
8220DB000811	Annamore Road	811	53.3575671568	-6.2874849682
8220DB000812	Annamore Parade	812	53.3582663607	-6.2842267437
8220DB000813	Charleville Road	813	53.3591900461	-6.2809593744
8220DB000814	St Peter's Church	814	53.3605400151	-6.2760970493
8220DB000817	Mater Hospital	817	53.3596462180	-6.2696124384
8220DB000818	O'Connell Avenue	818	53.3584811208	-6.2692239448
8220DB000819	Blessington Street	819	53.3563040209	-6.2659919857
8220DB000820	Carnlough Road	820	53.3619677951	-6.2935139796
8220DB000821	Drumcliffe Road	821	53.3645519035	-6.2938314364
8220DB000822	Mulroy Road	822	53.3671206776	-6.2918203211
8220DB000823	Kilkieran Road	823	53.3682351540	-6.2911896505
8220DB000824	Bannow Road	824	53.3697478519	-6.2932630950
8220DB000825	St Finbar's Road	825	53.3704294399	-6.2969328259
8220DB000826	Carnlough Road	826	53.3712178544	-6.3011695076
8220DB000827	Ventry Park	827	53.3712939491	-6.3039918694
8220DB000828	Broombridge Station	828	53.3710448241	-6.2997486779
8220DB000829	St Finbar's Road	829	53.3703968946	-6.2959121952
8220DB000830	Bannow Road	830	53.3696243717	-6.2921709802
8220DB000831	Mulroy Road	831	53.3676619691	-6.2913328129
8220DB000832	Drumcliffe Road	832	53.3636294546	-6.2940636349
8220DB000833	Swilly Road	833	53.3617761473	-6.2933112838
8220DB000834	Binns Bridge	834	53.3619754108	-6.2604276380
8220DB000835	St Brigid's Rd Lower	835	53.3626280166	-6.2632709616
8220DB000836	Claude Road	836	53.3632915018	-6.2662491624
8220DB000837	David Road	837	53.3637784077	-6.2682128370
8220DB000838	Whitworth Road	838	53.3643193961	-6.2701893910
8220DB000839	David Road	839	53.3637449204	-6.2677634125
8220DB000840	Claude Road	840	53.3632433496	-6.2654096661
8220DB000841	St Patrick's Road	841	53.3621221995	-6.2606320154
8220DB000842	Stephen's Green East	842	53.3372519750	-6.2563133892
8220DB000843	Stephen's Green East	843	53.3370024314	-6.2564587207
8220DB000844	Stephen's Green East	844	53.3376318721	-6.2558623985
8220DB000845	Leeson St Lower	845	53.3354534455	-6.2562516183
8220DB000846	Fitzwilliam Place	846	53.3334537330	-6.2541109085
8220DB000847	Leeson St Upper	847	53.3316014452	-6.2522196197
8220DB000848	Sussex Road	848	53.3297279908	-6.2488879984
8220DB000849	Appian Way	849	53.3278982726	-6.2479270091
8220DB000850	Chelmsford Road	850	53.3260857395	-6.2511990312
8220DB000851	Chelmsford Road	851	53.3250997052	-6.2532210160
8220DB000852	Ranelagh	852	53.3244292665	-6.2528580854
8220DB000853	Sandford Road	853	53.3225927700	-6.2483695771
8220DB000854	Larch Grove	854	53.3216316713	-6.2465775632
8220DB000855	Sandford Road	855	53.3193022985	-6.2428153659
8220DB000856	Clonskeagh Road	856	53.3176551118	-6.2408266797
8220DB000857	Clonskeagh Hospital	857	53.3165673801	-6.2383798303
8220DB000858	Clonskeagh	858	53.3140944728	-6.2383015722
8220DB000881	Clonskeagh	881	53.3145635684	-6.2384173316
8220DB000882	Clonskeagh Hospital	882	53.3167046565	-6.2391546765
8220DB000883	Eglinton Road	883	53.3176851573	-6.2410355833
8220DB000884	Norwood Park	884	53.3199969912	-6.2442128444
8220DB000885	Hollybank Ave Lower	885	53.3212589673	-6.2462926212
8220DB000886	Merton Drive	886	53.3225973962	-6.2486846326
8220DB000887	Ranelagh	887	53.3242077457	-6.2524618068
8220DB00089	Lambay Road	89	53.3780271155	-6.2615921499
8220DB000893	Cowper Road	893	53.3160725163	-6.2591581801
8220DB000894	Cowper Road	894	53.3151931375	-6.2641919805
8220DB000895	Palmeston Villas	895	53.3139322643	-6.2640180185
8220DB000896	Palmerston Park	896	53.3133721496	-6.2613542468
8220DB000897	Palmerston Road	897	53.3142996203	-6.2583898460
8220DB000903	Chelmsford Road	903	53.3255834293	-6.2524956567
8220DB000904	Appian Way	904	53.3274174409	-6.2488475157
8220DB000906	Leeson St Upper	906	53.3288107660	-6.2476343773
8220DB000907	Dartmouth Road	907	53.3297193589	-6.2507501086
8220DB000908	Grand Parade	908	53.3311542855	-6.2523730342
8220DB000909	Fitzwilliam Place	909	53.3331476599	-6.2540783639
8220DB000956	Naomh Barróg GAA	956	53.3898318021	-6.1529011457
8220DB000958	St. Donagh's	958	53.3909165332	-6.1637852881
8220DB000959	Grange Road	959	53.3910184657	-6.1669083760
8220DB000960	Tonlegee Road	960	53.3911576199	-6.1718793056
8220DB000961	Millwood Villas	961	53.3910568300	-6.1764545498
8220DB000962	Limewood	962	53.3907949286	-6.1828559742
8220DB000963	Rathvale	963	53.3905102718	-6.1865969590
8220DB000964	St John's Church	964	53.3900734008	-6.1921636505
8220DB000965	Malahide Road	965	53.3888900839	-6.1965288813
8220DB000966	Oscar Traynor Road	966	53.3912154012	-6.2029110488
8220DB000967	Coolock Drive	967	53.3922920610	-6.2063691423
8220DB000968	Armstrong Walk	968	53.3937589537	-6.2106831628
8220DB000972	Aulden Grange	972	53.3969960429	-6.2349237993
8220DB000979	St Canice's GNS	979	53.3899538086	-6.2971006360
8220DB000980	Finglas Sports Centre	980	53.3898045691	-6.3030304627
8220DB000981	Finglas Garda Stn	981	53.3897809068	-6.3070608325
8220DB000983	Mellowes Road	983	53.3901416743	-6.3109556922
8220DB000984	Finglas Garda Stn	984	53.3899113880	-6.3067549496
8220DB000985	Finglas Sports Centre	985	53.3899247514	-6.3038977252
8220DB000987	Finglas	987	53.3902199269	-6.2993753855
8220DB000988	St Canice's GNS	988	53.3898902365	-6.2957951081
8220DB000993	Astro Park	993	53.3977025970	-6.2292251749
8220DB000997	Northside SC	997	53.3941665689	-6.2114930934
8220DB000998	Armstrong Walk	998	53.3935747678	-6.2097886859
8220DB000999	Coolock Drive	999	53.3922410515	-6.2059653080
8220DB001000	Beechpark Avenue	1000	53.3909830767	-6.2018081849
8220DB001001	Brookville Crescent	1001	53.3900811212	-6.1992149912
8220DB001002	Tonlegee Road	1002	53.3891754998	-6.1951937149
8220DB001003	St John's Church	1003	53.3902995343	-6.1910715012
8220DB001004	Rathvale	1004	53.3906381578	-6.1861404492
8220DB001005	Limewood	1005	53.3909514066	-6.1819170834
8220DB001006	Millwood Villas	1006	53.3911703561	-6.1768255954
8220DB001007	Millbrook Drive	1007	53.3912462840	-6.1723867297
8220DB001008	Kilbarrack Road	1008	53.3911267143	-6.1669337957
8220DB001009	St. Donagh's Road	1009	53.3910890757	-6.1644845507
8220DB001013	Earlsfort Terrace	1013	53.3341807568	-6.2583456769
8220DB001015	Adelaide Road	1015	53.3327303534	-6.2599663551
8220DB001016	South Richmond St	1016	53.3311593142	-6.2644145804
8220DB001017	Rathmines Rd Lower	1017	53.3293693306	-6.2643220965
8220DB001018	St Mary's College	1018	53.3275854591	-6.2646497453
8220DB001019	Military Road	1019	53.3265475976	-6.2649771177
8220DB001020	Rathmines	1020	53.3251383838	-6.2651093645
8220DB001021	Rathmines Rd Upper	1021	53.3213802466	-6.2656521260
8220DB001022	Summerville Park	1022	53.3195217438	-6.2645566742
8220DB001023	Rathmines Close	1023	53.3170461890	-6.2649122890
8220DB001024	Frankfort Avenue	1024	53.3158523431	-6.2650207561
8220DB001025	Trinity Hall	1025	53.3115998655	-6.2624768230
8220DB001026	Orwell Park	1026	53.3091057708	-6.2603270822
8220DB001027	Dodder Walk	1027	53.3087379400	-6.2579109411
8220DB001028	South Hill	1028	53.3084991106	-6.2557146811
8220DB001062	South Hill	1062	53.3082596342	-6.2553192659
8220DB001063	Dodder Walk	1063	53.3085720815	-6.2588631182
8220DB001064	Dartry Road	1064	53.3094291383	-6.2609292206
8220DB001065	Trinity Hall	1065	53.3118290249	-6.2627826802
8220DB001066	Rathmines Rd Upper	1066	53.3137534806	-6.2640853083
8220DB001067	Rathmines Close	1067	53.3170507712	-6.2652273064
8220DB001068	Church Avenue	1068	53.3205584447	-6.2653852367
8220DB001069	Swan Centre	1069	53.3232852636	-6.2656198954
8220DB001070	Rathmines	1070	53.3249801840	-6.2653559829
8220DB001071	St Mary's College	1071	53.3272180362	-6.2647247117
8220DB001072	South Richmond St	1072	53.3310269733	-6.2645851140
8220DB001074	Harcourt Luas	1074	53.3337954595	-6.2639772007
8220DB001076	Swan Centre	1076	53.3231305919	-6.2654910626
8220DB001077	Rathmines Garda Stn	1077	53.3215729885	-6.2665449850
8220DB001078	Rathgar Place	1078	53.3194127649	-6.2688090704
8220DB001079	Frankfort Avenue	1079	53.3166546242	-6.2707518743
8220DB001080	Auburn Villas	1080	53.3149091987	-6.2718730635
8220DB001081	Rathgar Village	1081	53.3126497029	-6.2734951735
8220DB001082	Terenure Road East	1082	53.3116759487	-6.2757706320
8220DB001083	Brighton Road	1083	53.3111455613	-6.2782532531
8220DB001085	St Joseph's BNS	1085	53.3100994852	-6.2823773140
8220DB001086	Terenure Road West	1086	53.3096695705	-6.2856060830
8220DB001087	Greenlea Rd	1087	53.3103351138	-6.2893912601
8220DB001088	Parkmore Drive	1088	53.3109735888	-6.2931776326
8220DB001089	Lavarna Grove	1089	53.3116555855	-6.2975026610
8220DB001090	Kimmage Road West	1090	53.3121038878	-6.3005764406
8220DB001091	Whitehall Road	1091	53.3124406082	-6.3052905774
8220DB001117	Terenure Road West	1117	53.3118906499	-6.2982286880
8220DB001118	Hazelbrook Road	1118	53.3113669928	-6.2949178283
8220DB001119	Parkmore Drive	1119	53.3109356902	-6.2924137634
8220DB001120	Terenure Garda Stn	1120	53.3101981052	-6.2879860593
8220DB001121	Templeogue Road	1121	53.3090015976	-6.2854077479
8220DB001122	Rathdown Park	1122	53.3072196343	-6.2883753525
8220DB001123	Lakelands Park	1123	53.3055770247	-6.2910370301
8220DB001124	Terenure College	1124	53.3041728177	-6.2934038975
8220DB001159	Bushy Park House	1159	53.3023902202	-6.2963408423
8220DB001160	Terenure College	1160	53.3043935295	-6.2931250017
8220DB001161	Lakelands Park	1161	53.3060631361	-6.2904624011
8220DB001162	Rathdown Park	1162	53.3077322506	-6.2877695971
8220DB001163	Terenure Library	1163	53.3088733211	-6.2858630918
8220DB001164	Terenure Road East	1164	53.3104116361	-6.2815844009
8220DB001165	Brighton Road	1165	53.3117124366	-6.2764295039
8220DB001166	Winton Avenue	1166	53.3138905068	-6.2729047841
8220DB001167	Garville Avenue	1167	53.3159449092	-6.2713959484
8220DB001168	Spire View Lane	1168	53.3179291684	-6.2700098826
8220DB001169	Rathmines Park	1169	53.3200562646	-6.2685578599
8220DB001170	Rathmines Garda Stn	1170	53.3216895475	-6.2665252488
8220DB001171	Gardiner Street Lwr	1171	53.3503176870	-6.2542629491
8220DB001172	Railway Street	1172	53.3517433498	-6.2552562173
8220DB001173	Gardiner Street Lwr	1173	53.3537055684	-6.2566783233
8220DB001174	Mountjoy Sq West	1174	53.3561865815	-6.2585451254
8220DB001175	Gardiner Street Upr	1175	53.3584131945	-6.2608431821
8220DB001184	Moland Street	1184	53.3508599228	-6.2538502280
8220DB001185	Oak Road	1185	53.3763670141	-6.2215130465
8220DB001186	Belton Park Road	1186	53.3776431058	-6.2263299379
8220DB001187	Celtic Park Road	1187	53.3786075087	-6.2313554411
8220DB001188	Grace Park Heights	1188	53.3800184911	-6.2355960832
8220DB001190	Grace Park Heights	1190	53.3801561172	-6.2357858078
8220DB001191	Grace Park Meadows	1191	53.3792171884	-6.2330738402
8220DB001192	Celtic Park Road	1192	53.3786331968	-6.2306629311
8220DB001193	The Yard	1193	53.3779921991	-6.2274427688
8220DB001194	Belton Park Road	1194	53.3775262086	-6.2251172819
8220DB001195	Oak Road	1195	53.3763899322	-6.2212415396
8220DB001196	Elm Mount Road	1196	53.3777875070	-6.2149152956
8220DB001197	Killester Avenue	1197	53.3792322772	-6.2117583330
8220DB001198	Mornington Grove	1198	53.3825121952	-6.2069155907
8220DB001199	Mask Avenue	1199	53.3849844628	-6.2027676145
8220DB001200	Chanel College	1200	53.3869626487	-6.2010304891
8220DB001201	Brookville Crescent	1201	53.3907898126	-6.1961478429
8220DB001202	Newtown Cottages	1202	53.3925013827	-6.1934290504
8220DB001203	Newtown Road	1203	53.3967263536	-6.1875356703
8220DB001205	Clare Hall	1205	53.4015026049	-6.1818582293
8220DB001218	Belcamp Lane	1218	53.3997058969	-6.1842809197
8220DB001219	Danieli Road	1219	53.3813021271	-6.2083343921
8220DB001220	Killester Avenue	1220	53.3787625063	-6.2121989015
8220DB001221	Mayfield Park	1221	53.3768165001	-6.2160982541
8220DB001222	Ardlea Road	1222	53.3840661618	-6.2068502818
8220DB001223	Chanel Avenue	1223	53.3852506199	-6.2085143524
8220DB001224	Maryfield Crescent	1224	53.3866441578	-6.2109364912
8220DB001225	Maryfield Drive	1225	53.3868593792	-6.2139042693
8220DB001226	Ardmore Drive	1226	53.3885824619	-6.2149296762
8220DB001227	Castlekevin Road	1227	53.3911373108	-6.2150783661
8220DB001228	Kilbarron Road	1228	53.3924289765	-6.2185127373
8220DB001229	Kilbarron Drive	1229	53.3943116012	-6.2254262893
8220DB001231	Castletimon Road	1231	53.3954889983	-6.2278434264
8220DB001232	Castletimon Park	1232	53.3952854835	-6.2304834100
8220DB001233	Castletimon Drive	1233	53.3943619874	-6.2312435009
8220DB001234	Ballyshannon Avenue	1234	53.3946878729	-6.2326133967
8220DB001235	Kilbarron Road	1235	53.3947366847	-6.2256040842
8220DB001237	Cromcastle Avenue	1237	53.3926786800	-6.2189834723
8220DB001238	Kilmore Avenue	1238	53.3915662234	-6.2149100570
8220DB001239	St John of Gods NS	1239	53.3890041899	-6.2148819578
8220DB001240	Maryfield Crescent	1240	53.3868184280	-6.2111697323
8220DB001241	Chanel Avenue	1241	53.3858794294	-6.2090893080
8220DB001242	Ardbeg Road	1242	53.3844919489	-6.2070729228
8220DB001243	Greencastle Avenue	1243	53.3949003131	-6.1999137413
8220DB001244	Cromcastle Green	1244	53.3929072416	-6.2204475030
8220DB001245	Glin Avenue	1245	53.3979972687	-6.2062194096
8220DB001246	Kilbarron Park	1246	53.3934932335	-6.2229792886
8220DB001247	Greencastle Road	1247	53.3950810945	-6.1999812972
8220DB001248	Coolock Ind Estate	1248	53.3929893359	-6.1971675234
8220DB001249	Coolock Drive	1249	53.3951809649	-6.2012402174
8220DB001250	Bunratty Road	1250	53.3937390061	-6.2075563458
8220DB001251	St Luke's Church	1251	53.3934573359	-6.2223793176
8220DB001252	Kilmore Road	1252	53.3936380323	-6.2146128286
8220DB001253	Tranquility Grove	1253	53.3938639431	-6.2146935925
8220DB001254	Bunratty Road	1254	53.3951173598	-6.2113629964
8220DB001255	Adare Park	1255	53.3943535025	-6.2089740732
8220DB001256	Bunratty Avenue	1256	53.3936309458	-6.2069443800
8220DB001258	Priorswood Road	1258	53.3981874225	-6.1908271358
8220DB001259	The Link Road	1259	53.3985904098	-6.1948854845
8220DB001260	Ferrycarrig Green	1260	53.4001778029	-6.1988186835
8220DB001262	Moat Avenue	1262	53.4020042292	-6.2049078162
8220DB001265	Marigold Avenue	1265	53.3982215297	-6.1907053814
8220DB001266	Priorswood Road	1266	53.4020554115	-6.2047251844
8220DB001267	Ferrycarrig Park	1267	53.4008555066	-6.2002488701
8220DB001268	Belcamp Avenue	1268	53.3998942675	-6.1978982429
8220DB001269	Marigold Road	1269	53.3984289595	-6.1937193170
8220DB001270	Newtown Road	1270	53.3964970027	-6.1872296238
8220DB001272	Newtown Cottages	1272	53.3928823822	-6.1918791857
8220DB001273	Coolock Leisureplex	1273	53.3911092146	-6.1952772887
8220DB001274	St Brendans Church	1274	53.3889388170	-6.1979701937
8220DB001275	Mask Avenue	1275	53.3855857653	-6.2021108580
8220DB001276	Mask Park	1276	53.3843305541	-6.2029154287
8220DB001277	Mornington Grove	1277	53.3826814602	-6.2062169636
8220DB001278	College Green	1278	53.3442366224	-6.2613001181
8220DB001279	College Green	1279	53.3442604936	-6.2617046665
8220DB001280	McKelvey Avenue	1280	53.4001962884	-6.3031432926
8220DB001282	S Great George's St	1282	53.3423417959	-6.2645010827
8220DB001283	S Great George's St	1283	53.3418087219	-6.2649282295
8220DB001284	Redmond's Hill	1284	53.3381283510	-6.2658735572
8220DB001285	Camden Street Lower	1285	53.3343784056	-6.2651247543
8220DB001286	Harrington Street	1286	53.3324996495	-6.2657265348
8220DB001288	Victoria Street	1288	53.3323227536	-6.2696376223
8220DB001289	Longwood Avenue	1289	53.3321293613	-6.2730388328
8220DB001290	Clanbrassil St Upper	1290	53.3307310457	-6.2751673188
8220DB001291	Harold's Cross Road	1291	53.3284466112	-6.2763104414
8220DB001292	Harold's Cross Park	1292	53.3256246051	-6.2781957040
8220DB001293	Parkview Avenue	1293	53.3228603639	-6.2791026297
8220DB001294	Lady of the Rosary	1294	53.3206000263	-6.2788033063
8220DB001295	Kenilworth Park	1295	53.3179148923	-6.2795868171
8220DB001296	Mount Tallant Avenue	1296	53.3155627461	-6.2816476229
8220DB001297	Whitton Road	1297	53.3124096124	-6.2823896141
8220DB001298	Terenure	1298	53.3107469925	-6.2830266510
8220DB001299	Rathfarnham Road	1299	53.3083957028	-6.2839013564
8220DB001300	Rathdown Park	1300	53.3061507464	-6.2834211767
8220DB001335	War Memorial Hall	1335	53.3074174244	-6.2840006200
8220DB001336	Terenure	1336	53.3089009060	-6.2840311597
8220DB001337	Terenure Road North	1337	53.3111790374	-6.2830693410
8220DB001338	Whitton Road	1338	53.3124303863	-6.2825838843
8220DB001339	Harold's Cross Road	1339	53.3150238623	-6.2822996470
8220DB001340	Mount Tallant Avenue	1340	53.3164701423	-6.2809957809
8220DB001341	Kenilworth Park	1341	53.3192275895	-6.2789936358
8220DB001342	Lady of the Rosary	1342	53.3213454991	-6.2793887592
8220DB001343	Harold's Cross Park	1343	53.3226672850	-6.2794256441
8220DB001344	St Claire's NS	1344	53.3271710644	-6.2776079634
8220DB001345	Le Vere Terrace	1345	53.3287960763	-6.2762362964
8220DB001347	Clanbrassil St Upper	1347	53.3311830099	-6.2753442727
8220DB001348	Spencer St South	1348	53.3322495354	-6.2738898328
8220DB001349	Carlisle Street	1349	53.3323857279	-6.2708813229
8220DB001350	Harrington Street	1350	53.3325610928	-6.2674808118
8220DB001352	Camden Street Lower	1352	53.3344454316	-6.2654073338
8220DB001353	Pleasants Street	1353	53.3360095336	-6.2654189380
8220DB001354	Aungier Street	1354	53.3390480889	-6.2660765149
8220DB001355	Whitefriars Street	1355	53.3400962426	-6.2658387554
8220DB001357	Exchequer Street	1357	53.3425678944	-6.2645970302
8220DB001358	Dame Street	1358	53.3443047134	-6.2628893894
8220DB001359	College Green	1359	53.3443994064	-6.2613685904
8220DB001360	Raymond Street	1360	53.3319833878	-6.2766182775
8220DB001362	National Stadium	1362	53.3312039604	-6.2799078735
8220DB001363	St Anne's Road S	1363	53.3318459312	-6.2851672650
8220DB001364	Dolphin Avenue	1364	53.3323458739	-6.2880601203
8220DB001365	Dolphins Barn Church	1365	53.3329015319	-6.2904553130
8220DB001366	St Andrews Centre	1366	53.3351498677	-6.2943145906
8220DB001367	Rialto Church	1367	53.3356852930	-6.2965606635
8220DB001369	Mayfield Road	1369	53.3388672150	-6.3022455204
8220DB001370	Hybreasal House	1370	53.3391885808	-6.3052512456
8220DB001371	Suir Road	1371	53.3388757387	-6.3079066887
8220DB001372	Goldenbridge Avenue	1372	53.3381036946	-6.3098744464
8220DB001373	Stephen's Road	1373	53.3377747591	-6.3120348655
8220DB001374	Southern Cross Ave	1374	53.3392177103	-6.3130140712
8220DB001375	Bulfin Road	1375	53.3395561606	-6.3121597319
8220DB001376	South Circular Road	1376	53.3395079106	-6.3087526718
8220DB001377	South Circular Road	1377	53.3391633646	-6.3047416553
8220DB001378	Mayfield Road	1378	53.3388278749	-6.3013760827
8220DB001379	Rialto Luas	1379	53.3373397014	-6.2991226532
8220DB001380	Rialto Church	1380	53.3356410023	-6.2959767991
8220DB001381	St Andrews Centre	1381	53.3351237466	-6.2937450263
8220DB001382	Dolphins Barn Church	1382	53.3331731707	-6.2905946021
8220DB001383	Dolphin Avenue	1383	53.3322710784	-6.2866066629
8220DB001384	Dufferin Avenue	1384	53.3313561982	-6.2823641538
8220DB001385	Griffith College	1385	53.3318004003	-6.2782622718
8220DB001386	Clogher Road	1386	53.3295526186	-6.2844484990
8220DB001387	Aughavanagh Road	1387	53.3280405494	-6.2868062392
8220DB001388	Rutland Avenue	1388	53.3267732721	-6.2911957887
8220DB001389	Pearse College	1389	53.3259359421	-6.2954928715
8220DB001391	Clonmacnoise Road	1391	53.3228221151	-6.2983641235
8220DB001392	Bangor Circle	1392	53.3224910152	-6.3016197862
8220DB001394	Ferns Road	1394	53.3237430595	-6.2967662309
8220DB001395	Saint Bernadette's Church	1395	53.3247339571	-6.2962914029
8220DB001396	Crumlin Pool	1396	53.3249002682	-6.3149601372
8220DB001397	Kildare Road	1397	53.3250914014	-6.3138567001
8220DB001398	Windmill Road	1398	53.3253013794	-6.3102754507
8220DB001399	Monasterboice Road	1399	53.3251428006	-6.3054327031
8220DB001400	Bangor Circle	1400	53.3236248160	-6.2998183599
8220DB001401	Clogher Road	1401	53.3253968159	-6.2986519848
8220DB001402	Pearse College	1402	53.3259879311	-6.2959862197
8220DB001403	Rutland Avenue	1403	53.3271540649	-6.2895441334
8220DB001404	Aughavanagh Road	1404	53.3282005181	-6.2866797205
8220DB001405	Parnell Road	1405	53.3298216746	-6.2844076737
8220DB001406	Dolphin's Barn	1406	53.3331529315	-6.2916915268
8220DB001407	Crumlin Road	1407	53.3315385028	-6.2944436769
8220DB001409	Loreto College	1409	53.3303667448	-6.2973581556
8220DB001410	Keeper Road	1410	53.3314169224	-6.2997787307
8220DB001411	Brickfield Drive	1411	53.3320510264	-6.3032820042
8220DB001412	Slievenamon Road	1412	53.3326816543	-6.3059146427
8220DB001413	Brickfields Park	1413	53.3334413912	-6.3087824942
8220DB001414	Benbulbin Road	1414	53.3333476065	-6.3123148014
8220DB001415	Sperrin Road	1415	53.3324432485	-6.3163745209
8220DB001417	Lady Of Mercy School	1417	53.3310322128	-6.3195681190
8220DB001418	Cooley Road	1418	53.3300297592	-6.3230607701
8220DB001419	Brandon Road	1419	53.3277177272	-6.3229112431
8220DB001421	Crumlin Hospital	1421	53.3249507660	-6.3204526633
8220DB001423	Crumlin Hospital	1423	53.3249994890	-6.3194449219
8220DB001424	Crumlin Hospital	1424	53.3256625126	-6.3167466215
8220DB001425	Cooley Road	1425	53.3270131720	-6.3181947535
8220DB001426	Curlew Road	1426	53.3292748788	-6.3224297712
8220DB001427	Mourne Road	1427	53.3302711584	-6.3223306194
8220DB001428	Lady of Mercy School	1428	53.3313588786	-6.3191498840
8220DB001429	Sperrin Road	1429	53.3325932072	-6.3161734193
8220DB001430	Belbulbin Road	1430	53.3335737955	-6.3111496865
8220DB001432	Brickfields Park	1432	53.3334987403	-6.3083898257
8220DB001433	Slievenamon Road	1433	53.3325721532	-6.3057988620
8220DB001434	Keeper Road	1434	53.3319924476	-6.3023233792
8220DB001435	Keeper Road	1435	53.3313880463	-6.2990141325
8220DB001436	Herberton Road	1436	53.3308849577	-6.2965117199
8220DB001438	St Thomas Road	1438	53.3363829769	-6.2794141362
8220DB001439	Rutledge Terrace	1439	53.3340584157	-6.2827660992
8220DB001440	Donore Avenue	1440	53.3319900594	-6.2833146522
8220DB001441	Bangor Road	1441	53.3248749010	-6.3030263332
8220DB001442	Clonard Road	1442	53.3251668742	-6.3071281548
8220DB001443	Civic Offices	1443	53.3451293907	-6.2695395586
8220DB001444	Merchant's Quay	1444	53.3450755917	-6.2745131966
8220DB001445	Usher's Quay	1445	53.3459879474	-6.2798083876
8220DB001447	Victoria Quay	1447	53.3465025271	-6.2855853859
8220DB001449	Phoenix Park Gate	1449	53.3481528300	-6.2978960947
8220DB001450	Conyngham Road	1450	53.3481554042	-6.3018614131
8220DB001451	Bridgewater House	1451	53.3482782789	-6.3054464450
8220DB001452	Islandbridge	1452	53.3454209055	-6.3080379994
8220DB001453	Galtymore Road	1453	53.3345361692	-6.3067571014
8220DB001454	Suir Road Luas	1454	53.3377648667	-6.3075301985
8220DB001455	Slievenamon Road	1455	53.3353851151	-6.3057774603
8220DB001456	Good Counsel GAA	1456	53.3348733091	-6.3089811069
8220DB001457	Benbulbin Road	1457	53.3353026587	-6.3126430383
8220DB001458	Davitt House	1458	53.3347706199	-6.3169735748
8220DB001459	Drimnagh CU	1459	53.3340633154	-6.3197192372
8220DB001460	Carrow Road	1460	53.3323561008	-6.3210325842
8220DB001462	Galtymore Park	1462	53.3304629316	-6.3238245198
8220DB001463	Galtymore Road	1463	53.3306239949	-6.3237731617
8220DB001464	Davitt House	1464	53.3348988015	-6.3165030367
8220DB001465	Good Counsel GAA	1465	53.3347967645	-6.3086537872
8220DB001466	Galtymore Drive	1466	53.3345289258	-6.3062468536
8220DB001467	Slievenamon Road	1467	53.3356573760	-6.3059618779
8220DB001468	Suir Road Luas	1468	53.3375497002	-6.3075687528
8220DB001469	Benbulbin Road	1469	53.3352591593	-6.3133805382
8220DB001471	Islandbridge	1471	53.3455323202	-6.3082889205
8220DB001472	Conyngham Road	1472	53.3484294680	-6.3059661697
8220DB001473	Phoenix Park Gate	1473	53.3483059785	-6.2985508990
8220DB001474	Parkgate Street	1474	53.3479479160	-6.2923617046
8220DB001476	Sarsfield Quay	1476	53.3470736856	-6.2846762754
8220DB001478	Four Courts	1478	53.3456082018	-6.2728094809
8220DB001479	Ormond Quay	1479	53.3459880936	-6.2686336285
8220DB001480	Ormond Quay Upper	1480	53.3457659647	-6.2706702977
8220DB001481	Melrose Avenue	1481	53.3650538686	-6.2398960972
8220DB001482	Marino Institute	1482	53.3716643309	-6.2365275605
8220DB001484	Philipsburgh Avenue	1484	53.3636977091	-6.2399670293
8220DB001485	Philipsburgh Avenue	1485	53.3640458177	-6.2398024169
8220DB001486	Morrogh Terrace	1486	53.3709747783	-6.2385248090
8220DB001487	Marino Institute	1487	53.3718192549	-6.2366714500
8220DB001488	Turlogh Parade	1488	53.3710888554	-6.2346877702
8220DB001489	Marino Church	1489	53.3701586652	-6.2319610076
8220DB001491	Griffith Avenue	1491	53.3684677619	-6.2276429098
8220DB001492	Marino Church	1492	53.3702573904	-6.2325580572
8220DB001493	Turlogh Parade	1493	53.3712134045	-6.2352086272
8220DB001494	Croydon Park	1494	53.3706730149	-6.2357419416
8220DB001495	Croydon Park Avenue	1495	53.3687559406	-6.2355656974
8220DB001496	Marino Green	1496	53.3671481166	-6.2338138383
8220DB001499	Brian Road	1499	53.3657794887	-6.2372965868
8220DB001500	Connolly	1500	53.3510395889	-6.2501625778
8220DB001505	Parnell Street	1505	53.3540289632	-6.2578969849
8220DB001506	Finglas Road	1506	53.3667778214	-6.2723739092
8220DB001507	St Vincent's School	1507	53.3683905203	-6.2745026916
8220DB001508	Glasnevin Cemetery	1508	53.3699109023	-6.2783335512
8220DB001509	Slaney Road	1509	53.3729258340	-6.2842236605
8220DB001510	Ballyboggan Road	1510	53.3769069295	-6.2873102372
8220DB001511	Tolka Vale	1511	53.3782345232	-6.2877529846
8220DB001512	Prospect Hill	1512	53.3821743223	-6.2917288355
8220DB001513	Saint Martin's	1513	53.3867674339	-6.2967768033
8220DB001514	Drogheda Mall	1514	53.3894651562	-6.3000219145
8220DB001515	Marino Park	1515	53.3661143161	-6.2331954182
8220DB001518	Kildonan Road	1518	53.3906003885	-6.3116141241
8220DB001519	Kildonan Park	1519	53.3924448696	-6.3117516180
8220DB001520	Barry Road	1520	53.3939201989	-6.3118435866
8220DB001521	Plunkett Green	1521	53.3972212993	-6.3107504941
8220DB001523	Plunkett Avenue	1523	53.3978788506	-6.3095815571
8220DB001524	Barry Road	1524	53.3955562649	-6.3105908871
8220DB001525	Casement Drive	1525	53.3940692958	-6.3115820616
8220DB001526	Kildonan Park	1526	53.3923069370	-6.3115315366
8220DB001528	St David's Terrace	1528	53.3561954282	-6.2940000257
8220DB001529	Finglas Village	1529	53.3884588269	-6.2981526069
8220DB001530	Finglas Road	1530	53.3869194999	-6.2967256296
8220DB001531	Clearwater SC	1531	53.3837436640	-6.2933647409
8220DB001532	Prospect Hill	1532	53.3817441172	-6.2905585009
8220DB001533	Tolka Vale	1533	53.3789678848	-6.2874980880
8220DB001534	Ballyboggan Road	1534	53.3753328392	-6.2859756029
8220DB001535	The Willows	1535	53.3723059581	-6.2823699439
8220DB001536	Glasnevin Cemetery	1536	53.3695033972	-6.2768772328
8220DB001537	St Vincent's School	1537	53.3680662050	-6.2732083989
8220DB001538	Clearwater SC	1538	53.3844741413	-6.2947937549
8220DB001539	Glasanaon Road	1539	53.3831357991	-6.2791980157
8220DB001540	Johnstown Park	1540	53.3843403100	-6.2842006288
8220DB001547	McKee Avenue Est	1547	53.3952411658	-6.3016863664
8220DB001548	McKee Avenue North	1548	53.3961101450	-6.3027494933
8220DB001549	Plunkett Road	1549	53.3974326561	-6.3066367831
8220DB001558	McKelvey Avenue	1558	53.3998175110	-6.3030530945
8220DB001559	Plunkett Road	1559	53.3973411213	-6.3065201150
8220DB001560	St Margaret's Road	1560	53.3970075424	-6.3045483815
8220DB001566	Johnstown Park	1566	53.3844074206	-6.2838671966
8220DB001567	Griffith Drive	1567	53.3840139570	-6.2802600218
8220DB001573	Wellmount Drive	1573	53.3840241647	-6.3124606624
8220DB001574	Cardiffsbridge SC	1574	53.3855939980	-6.3128796471
8220DB001575	Coláiste Íde	1575	53.3870661426	-6.3127462580
8220DB001576	Cappagh Road	1576	53.3893174055	-6.3130481247
8220DB001577	Abbottstown Road	1577	53.3898858081	-6.3157470169
8220DB001578	Ratoath Drive	1578	53.3903851295	-6.3180126774
8220DB001584	Abbottstown Road	1584	53.3898854600	-6.3150854821
8220DB001585	Cardiffsbridge Road	1585	53.3887680197	-6.3123331449
8220DB001586	Coláiste Íde	1586	53.3865250406	-6.3126173181
8220DB001587	Wellmount Drive	1587	53.3834664303	-6.3117912065
8220DB001592	Tolka Valley Road	1592	53.3797209189	-6.2892416052
8220DB001593	Tolka Valley Park	1593	53.3789147734	-6.2944597494
8220DB001594	St Helena's Road	1594	53.3807131944	-6.2976648452
8220DB001596	St Malachy's NS	1596	53.3830410953	-6.3008190573
8220DB001597	Valeview Gardens	1597	53.3804552156	-6.3092346660
8220DB001598	Valeview Drive	1598	53.3802421780	-6.3056204401
8220DB001599	Cardiffsbridge Road	1599	53.3808997507	-6.3107954162
8220DB001600	Deanstown Avenue	1600	53.3835970179	-6.3127631835
8220DB001601	Deanstown Drive	1601	53.3838943135	-6.3147207613
8220DB001602	Patrician College	1602	53.3844180032	-6.3187139573
8220DB001603	Ratoath Road	1603	53.3835188569	-6.3186892564
8220DB001604	Rathvilly Road	1604	53.3837454771	-6.3162750422
8220DB001605	Albert College Pk	1605	53.3882529722	-6.2607995903
8220DB001606	St Helena's Road	1606	53.3803706836	-6.3064420898
8220DB001607	Dunsink Drive	1607	53.3821613835	-6.3034246475
8220DB001608	St Malachy's NS	1608	53.3830498569	-6.2995409187
8220DB001609	Cloonlara	1609	53.3803842381	-6.2972871396
8220DB001610	Tolka Valley Park	1610	53.3788077073	-6.2964030707
8220DB001614	Church Street Upper	1614	53.3512573878	-6.2737527636
8220DB001615	Church Street	1615	53.3478271654	-6.2745973323
8220DB001616	St Michan's Church	1616	53.3472850723	-6.2750247730
8220DB001617	Capuchin Church	1617	53.3493312080	-6.2748069643
8220DB001618	Church Street Upper	1618	53.3508870581	-6.2742484187
8220DB001619	Constitution Hill	1619	53.3529126950	-6.2732351987
8220DB001620	Whitehall Church	1620	53.3832628573	-6.2441059127
8220DB001641	Ellenfield Park	1641	53.3865272844	-6.2423929665
8220DB001642	Whitehall Church	1642	53.3839478893	-6.2436267223
8220DB001643	St Aidan's School	1643	53.3848022174	-6.2510030954
8220DB001644	DCU Collins Avenue	1644	53.3868700414	-6.2565712062
8220DB001646	DCU Collins Avenue	1646	53.3871546495	-6.2569805371
8220DB001647	Blackhall Place	1647	53.3483510636	-6.2822517262
8220DB001648	Stoneybatter	1648	53.3510913675	-6.2828024851
8220DB001649	Manor Street	1649	53.3525701350	-6.2843804485
8220DB001650	Castle Avenue	1650	53.3611743871	-6.2093142753
8220DB001651	Vernon Avenue	1651	53.3679404066	-6.1948593342
8220DB001652	Clontarf Castle	1652	53.3633555860	-6.2061274226
8220DB001654	St David's Terrace	1654	53.3561451797	-6.2942574300
8220DB001655	Blackhorse Avenue	1655	53.3567321718	-6.2969682741
8220DB001656	McKee Park	1656	53.3572972790	-6.2987786377
8220DB001657	Dunard Walk	1657	53.3583921081	-6.3030769992
8220DB001658	Skreen Road	1658	53.3619888217	-6.3095151879
8220DB001659	Croaghpatrick Road	1659	53.3632599651	-6.3047166990
8220DB001660	Cabra Garda Station	1660	53.3651865518	-6.3093735531
8220DB001661	Our Lady's Church	1661	53.3664436172	-6.3130955378
8220DB001662	Baggot Road	1662	53.3676029376	-6.3175429049
8220DB001664	Ashtown Grove	1664	53.3694085180	-6.3238586305
8220DB001665	Kempton	1665	53.3706578378	-6.3277019300
8220DB001666	Ashtown Roundabout	1666	53.3715971506	-6.3305957311
8220DB001667	Castleknock Road	1667	53.3708697670	-6.3345015195
8220DB001668	Old Race Course	1668	53.3708427404	-6.3403035502
8220DB001694	Old Race Course	1694	53.3710173889	-6.3399360759
8220DB001695	Ashtown Gate	1695	53.3710101424	-6.3342555865
8220DB001696	Ashtown Roundabout	1696	53.3715415173	-6.3298314433
8220DB001697	Kempton	1697	53.3708011457	-6.3276662589
8220DB001698	Ashtown Grove	1698	53.3695772972	-6.3237167513
8220DB001699	Baggot Road	1699	53.3687436057	-6.3213149954
8220DB001700	Baggot Road	1700	53.3677088281	-6.3174034855
8220DB001701	Our Lady's Church	1701	53.3665672561	-6.3129403827
8220DB001702	Navan Road Church	1702	53.3656108302	-6.3101381386
8220DB001703	Cabra Garda Station	1703	53.3647353990	-6.3073478338
8220DB001704	Skreen Road	1704	53.3630522662	-6.3052808987
8220DB001705	Ardpatrick Road	1705	53.3621807472	-6.3084708337
8220DB001706	Blackhorse Avenue	1706	53.3600698256	-6.3072923753
8220DB001707	Dunard Walk	1707	53.3584282664	-6.3024595727
8220DB001708	Mc Kee Park	1708	53.3573323545	-6.2987171455
8220DB001709	Glenbeigh Avenue	1709	53.3568682017	-6.2970529914
8220DB001710	Aughrim Street	1710	53.3555699040	-6.2917414915
8220DB001711	Holy Family Church	1711	53.3545779755	-6.2896329016
8220DB001712	Aughrim Court	1712	53.3533339170	-6.2862425918
8220DB001713	Manor Street	1713	53.3519078200	-6.2833254735
8220DB001714	Stoneybatter	1714	53.3506378069	-6.2818893880
8220DB001715	Blackhall Place	1715	53.3477119822	-6.2821872995
8220DB001724	Clontarf Road	1724	53.3657153154	-6.1744415895
8220DB001725	Doyle's Lane	1725	53.3637602627	-6.1770796569
8220DB001726	Dollymount Park	1726	53.3622913897	-6.1791858761
8220DB001727	Bull Island	1727	53.3604468637	-6.1831860896
8220DB001728	Wooden Bridge	1728	53.3596562744	-6.1861645963
8220DB001729	Clontarf Bus Garage	1729	53.3584969058	-6.1903155097
8220DB001730	Vernon Court	1730	53.3582310907	-6.1941279289
8220DB001731	John the Baptist Ch	1731	53.3590767534	-6.1965562043
8220DB001732	Oultan Road	1732	53.3600629108	-6.2023442381
8220DB001733	Clontarf Baths	1733	53.3602126155	-6.2063195598
8220DB001734	Castle Avenue	1734	53.3603909611	-6.2110149085
8220DB001735	The Stiles Road	1735	53.3611433271	-6.2144392071
8220DB001736	St Lawrence Road	1736	53.3621421816	-6.2169217466
8220DB001737	Alfie Byrne Road	1737	53.3628580244	-6.2197167209
8220DB001738	Clontarf Rd Pitches	1738	53.3634508756	-6.2239143341
8220DB001739	Clontarf Station	1739	53.3638851946	-6.2265258592
8220DB001740	Clontarf Road	1740	53.3641416167	-6.2268457873
8220DB001741	Alfie Byrne Road	1741	53.3631169031	-6.2208028235
8220DB001742	St Lawrence Road	1742	53.3621257933	-6.2164265849
8220DB001743	The Court	1743	53.3611356864	-6.2139286665
8220DB001744	Scoil Uí Chonaill	1744	53.3603486399	-6.2087929770
8220DB001745	Clontarf Baths	1745	53.3603470797	-6.2056978850
8220DB001746	Oultan Road	1746	53.3602565191	-6.2026666379
8220DB001747	John the Baptist Ch	1747	53.3593509923	-6.1968601415
8220DB001748	Fortview Avenue	1748	53.3582570201	-6.1934657618
8220DB001749	Clontarf Bus Garage	1749	53.3585903734	-6.1905519402
8220DB001750	St Anne's Park	1750	53.3688677027	-6.1778083286
8220DB001751	Wooden Bridge	1751	53.3598698763	-6.1854343270
8220DB001752	Bull Island	1752	53.3611275917	-6.1818499186
8220DB001753	Dollymount Park	1753	53.3627239629	-6.1786715732
8220DB001754	Doyle's Lane	1754	53.3641156565	-6.1768090336
8220DB001755	Seapark	1755	53.3664299770	-6.1871240752
8220DB001756	Dollymount Avenue	1756	53.3672099080	-6.1828531986
8220DB001757	Park Lawn	1757	53.3686296419	-6.1822367276
8220DB001758	Mount Prospect Ave	1758	53.3681296759	-6.1753902923
8220DB001759	The Oaks	1759	53.3660002227	-6.1742641084
8220DB001760	Seapark Road	1760	53.3659722447	-6.1877596219
8220DB001761	Seafield Road Junc	1761	53.3638373979	-6.1880455799
8220DB001762	Seafield Road	1762	53.3637511874	-6.1912498354
8220DB001763	Vernon Avenue	1763	53.3644067789	-6.1953693753
8220DB001764	Blackheath Park	1764	53.3658929687	-6.1955770404
8220DB001765	Blackheath Grove	1765	53.3665514241	-6.2022814137
8220DB001766	Seafield Road West	1766	53.3651160524	-6.2048513165
8220DB001767	Clontarf Castle	1767	53.3638273181	-6.2052210532
8220DB001769	Park Lawn	1769	53.3688857836	-6.1819402865
8220DB001770	Dollymount Avenue	1770	53.3670834688	-6.1828134982
8220DB001771	St Gabriel's Road	1771	53.3660419203	-6.1852471402
8220DB001772	Clontarf Cemetery	1772	53.3650107475	-6.2050210377
8220DB001773	Blackheath Park	1773	53.3668109134	-6.2033975358
8220DB001774	Blackheath Avenue	1774	53.3661362371	-6.1974000647
8220DB001775	Vernon Avenue	1775	53.3644399833	-6.1951876537
8220DB001776	Seafield Road	1776	53.3638160054	-6.1919683516
8220DB001777	Seafield Avenue	1777	53.3653120792	-6.1910484660
8220DB001778	Mount Prospect Ave	1778	53.3666136881	-6.1891599852
8220DB001782	Brookwood Grove	1782	53.3823894993	-6.1981716507
8220DB001783	McAuley Road	1783	53.3838032159	-6.1959621817
8220DB001784	Gorsefield Court	1784	53.3846209813	-6.1929810134
8220DB001785	McAuley Park	1785	53.3825960633	-6.1916236149
8220DB001786	McAuley Park	1786	53.3819941364	-6.1922354017
8220DB001788	Millbrook Road	1788	53.3916140511	-6.1788064340
8220DB001789	Clonrosse Drive	1789	53.3942624574	-6.1786031192
8220DB001791	O'Tooles GAA	1791	53.3965874453	-6.1819474901
8220DB001792	Millbrook Road	1792	53.3935247615	-6.1785594397
8220DB001793	Milbrook Grove	1793	53.3916843047	-6.1786981812
8220DB001794	Thornhill Lane	1794	53.3694410695	-6.1794519952
8220DB001795	Rosecourt	1795	53.3615033956	-6.2968681422
8220DB001796	McAuley Park	1796	53.3817893456	-6.1911767620
8220DB001797	McAuley Drive	1797	53.3831278454	-6.1917213403
8220DB001798	McAuley Road	1798	53.3843839100	-6.1945395086
8220DB001799	Mask Crescent	1799	53.3830586828	-6.1966551176
8220DB001800	Lady of Mercy Church	1800	53.3823067907	-6.1992424717
8220DB001801	Brookwood Ave	1801	53.3823969984	-6.2022452282
8220DB001802	Cabra Road	1802	53.3613803234	-6.2945441455
8220DB001803	Cabra Road	1803	53.3615635987	-6.2941611940
8220DB001804	Rosecourt	1804	53.3616973947	-6.2972360372
8220DB001805	Dunard	1805	53.3611627039	-6.2975578609
8220DB001806	Navan Road	1806	53.3629069059	-6.3026421421
8220DB001807	Phoenix Park Avenue	1807	53.3744144643	-6.3392628834
8220DB001847	Old Racecourse	1847	53.3729020091	-6.3339262610
8220DB001905	Skreen Road	1905	53.3633175462	-6.3030765941
8220DB001906	Old Cabra Road	1906	53.3612007620	-6.2970755394
8220DB001907	Glenbeigh Road	1907	53.3599049454	-6.2938217851
8220DB001908	Cabra Drive	1908	53.3586907976	-6.2912560728
8220DB001909	Prussia Street	1909	53.3569602632	-6.2884107232
8220DB001911	Prussia Street	1911	53.3566345096	-6.2882585192
8220DB001913	Cabra Drive	1913	53.3588063321	-6.2917923247
8220DB001914	Glenbeigh Road	1914	53.3602157627	-6.2948160275
8220DB001934	Dame Street	1934	53.3441183607	-6.2655253247
8220DB001935	Lord Edward Street	1935	53.3439343462	-6.2683263516
8220DB001937	High Street	1937	53.3430874992	-6.2731516743
8220DB001938	Thomas Street	1938	53.3429778950	-6.2767606085
8220DB001939	Bridgefoot Street	1939	53.3429982683	-6.2806646665
8220DB001940	James Street	1940	53.3435386006	-6.2857343479
8220DB001941	Steeven's Lane	1941	53.3433454020	-6.2891814203
8220DB001942	St James Hospital	1942	53.3422549834	-6.2946317294
8220DB001943	Mount Brown	1943	53.3413732637	-6.2983463657
8220DB001944	Old Kilmainham	1944	53.3406753265	-6.3036154053
8220DB001945	Inchicore Library	1945	53.3405547842	-6.3096874004
8220DB001946	Richmond Park	1946	53.3401188049	-6.3163574769
8220DB001947	Camac Close	1947	53.3398178565	-6.3179611952
8220DB001948	Tyrconnell Road	1948	53.3386619960	-6.3220463016
8220DB001949	Tyrconnell Park	1949	53.3376414796	-6.3236180803
8220DB001950	Oblates Church	1950	53.3360210442	-6.3259941340
8220DB001951	Blackhorse Luas	1951	53.3331348380	-6.3291252192
8220DB001952	Lansdowne Valley	1952	53.3317095154	-6.3300367679
8220DB001953	Bluebell Luas	1953	53.3299944995	-6.3320856207
8220DB001954	Muirfield Drive	1954	53.3287741741	-6.3348056591
8220DB001955	Carriglea Ind Estate	1955	53.3279457072	-6.3379156634
8220DB001956	Kylemore Luas	1956	53.3263654179	-6.3438470940
8220DB001981	Kylemore Luas	1981	53.3264867532	-6.3448182275
8220DB001982	Kylemore Road Junc	1982	53.3272299503	-6.3420270489
8220DB001984	Bluebell Luas	1984	53.3294445319	-6.3338937295
8220DB001985	Blackhorse Luas	1985	53.3329236566	-6.3294487913
8220DB001986	Tyrconnell Road	1986	53.3353553797	-6.3272364989
8220DB001987	Oblates Church	1987	53.3362899056	-6.3259385547
8220DB001988	Hampton Court	1988	53.3382603815	-6.3228880049
8220DB001989	Emmet Road	1989	53.3397064788	-6.3189867705
8220DB001990	Myra Cottages	1990	53.3404727818	-6.3146915731
8220DB001992	Inchicore Library	1992	53.3406544982	-6.3091127770
8220DB001993	Old Kilmainham	1993	53.3408536614	-6.3047797266
8220DB001994	Mount Brown	1994	53.3414239628	-6.2993806005
8220DB001995	Basin Street Lower	1995	53.3426751860	-6.2932182275
8220DB001996	James Street	1996	53.3435600718	-6.2884819538
8220DB001997	Thomas Street	1997	53.3435710812	-6.2854927416
8220DB001998	Bridgefoot Street	1998	53.3431396149	-6.2804937721
8220DB001999	Francis St Junction	1999	53.3431192358	-6.2765897014
8220DB002001	High Street	2001	53.3433104732	-6.2736533054
8220DB002002	Lord Edward Street	2002	53.3437708066	-6.2694443900
8220DB002003	Exchange St Upper	2003	53.3440412686	-6.2682619416
8220DB002085	RTE	2085	53.3151737464	-6.2201861562
8220DB002086	Nutley Avenue	2086	53.3181567846	-6.2147033821
8220DB002087	Ailesbury Road	2087	53.3206094716	-6.2128296850
8220DB002088	St Vincent's Hosp	2088	53.3172966893	-6.2160901747
8220DB002089	RTE	2089	53.3153019938	-6.2197455536
8220DB002094	Coombe Hospital	2094	53.3347519664	-6.2897506382
8220DB002095	Crumlin SC	2095	53.3290374668	-6.3024707515
8220DB002096	Guinness RFC	2096	53.3280835905	-6.3068174910
8220DB002097	Iveagh Gardens	2097	53.3274327540	-6.3097258064
8220DB002099	Drimnagh Road	2099	53.3255615814	-6.3166004694
8220DB002101	Crumlin Hospital	2101	53.3249545652	-6.3181706389
8220DB002102	Balfe Road	2102	53.3241948461	-6.3261419022
8220DB002103	Walkinstown Road	2103	53.3220826955	-6.3299924171
8220DB002105	Walkinstown Parade	2105	53.3236525794	-6.3374970777
8220DB002181	Long Mile Road	2181	53.3238376853	-6.3391712140
8220DB002182	Walkinstown Parade	2182	53.3239619235	-6.3351882220
8220DB002183	Walkinstown Shop Cen	2183	53.3217039808	-6.3305476088
8220DB002184	Drimnagh Road Junc	2184	53.3229966132	-6.3291460974
8220DB002185	Slievebloom Road	2185	53.3242587028	-6.3274904893
8220DB002186	Crumlin Road	2186	53.3269332843	-6.3125379797
8220DB002187	Iveagh Grounds	2187	53.3280452769	-6.3072844253
8220DB002188	Crumlin College	2188	53.3290169228	-6.3029219812
8220DB002189	Crumlin SC	2189	53.3296953959	-6.3000724082
8220DB002190	Dolphin's Barn	2190	53.3327705720	-6.2926077162
8220DB002191	Islandbridge Gate	2191	53.3480255719	-6.3104432647
8220DB002192	UCD Boat Club	2192	53.3472456229	-6.3156710929
8220DB002193	Garda Rowing Club	2193	53.3463845504	-6.3234552905
8220DB002194	Military Road	2194	53.3461933372	-6.3284043035
8220DB002195	St Mary's Hospital	2195	53.3467441138	-6.3375899927
8220DB002196	Chapelizod	2196	53.3478346251	-6.3416781515
8220DB002197	Lucan Road	2197	53.3481655534	-6.3467422149
8220DB002198	Belgrove Park	2198	53.3506251418	-6.3510632886
8220DB002200	Kylemore Road	2200	53.3502827504	-6.3529541507
8220DB002243	Glenaulin	2243	53.3519743827	-6.3556979952
8220DB002244	Belgrove Park	2244	53.3508843467	-6.3516090744
8220DB002245	Laurence Brook	2245	53.3494632047	-6.3482842113
8220DB002246	Chapelizod	2246	53.3483113088	-6.3436423537
8220DB002247	St Mary's Hospital	2247	53.3467528590	-6.3362829160
8220DB002248	Military Road	2248	53.3463209319	-6.3278886373
8220DB002249	Garda Boat Club	2249	53.3465317047	-6.3211364494
8220DB002250	Salmon Pool	2250	53.3474385871	-6.3153330400
8220DB002251	Islandbridge Gate	2251	53.3481320367	-6.3109797923
8220DB002255	East Wall Road	2255	53.3602300964	-6.2382618902
8220DB002256	West Road	2256	53.3583489412	-6.2356501524
8220DB002257	Strangford Rd East	2257	53.3563824157	-6.2382102836
8220DB002258	St Mary's Road	2258	53.3546537543	-6.2380111771
8220DB002259	Church Road	2259	53.3535381307	-6.2367201907
8220DB002260	Kilane Road	2260	53.3517785078	-6.2350352598
8220DB002261	Church Court	2261	53.3526385466	-6.2324158937
8220DB002262	Merchants Road	2262	53.3535229015	-6.2265956020
8220DB002264	Alexandra Road	2264	53.3511016046	-6.2209277764
8220DB002270	Ferry Terminal	2270	53.3457061206	-6.1956186550
8220DB002274	Alexandra Road	2274	53.3501863044	-6.2036311443
8220DB002278	East Road	2278	53.3541153588	-6.2301764735
8220DB002279	Caledon Road	2279	53.3529413711	-6.2316221988
8220DB002280	Oxford Terrace	2280	53.3523117216	-6.2370562387
8220DB002281	St Mary's Road North	2281	53.3536641098	-6.2367300126
8220DB002282	St Mary's Road	2282	53.3548411662	-6.2385292515
8220DB002283	Portside Court	2283	53.3583262113	-6.2359365524
8220DB002310	Werburgh Street	2310	53.3424457018	-6.2697984284
8220DB002311	Kevin Street	2311	53.3382852827	-6.2704924670
8220DB002312	St Luke's Avenue	2312	53.3388788546	-6.2754842347
8220DB002313	Ardee Court	2313	53.3387423331	-6.2784781815
8220DB002314	Cork Street	2314	53.3383536837	-6.2808214927
8220DB002315	Brickfield Lane	2315	53.3375364314	-6.2852392843
8220DB002317	St Mary's Road	2317	53.3234185687	-6.3188765592
8220DB002318	Somerville Avenue	2318	53.3219800055	-6.3188430455
8220DB002319	Crumlin Garda Stn	2319	53.3195647461	-6.3152003886
8220DB002327	St Agnes Road	2327	53.3168544333	-6.3167630743
8220DB002328	Crumlin Garda Station	2328	53.3197047893	-6.3155701341
8220DB002329	Crumlin Village	2329	53.3209014799	-6.3169340254
8220DB002330	Sommerville Avenue	2330	53.3221480439	-6.3192867799
8220DB002331	St Mary's Road	2331	53.3245717749	-6.3177953777
8220DB002332	Walkinstown Mall	2332	53.3208746367	-6.3310153003
8220DB002333	Walkinstown Rdbt	2333	53.3178417646	-6.3326646540
8220DB002378	Walkinstown Road	2378	53.3181478212	-6.3326977523
8220DB002379	Marion Villas	2379	53.3378334358	-6.2846417071
8220DB002380	Ardee Street	2380	53.3385060739	-6.2801696236
8220DB002382	St Luke's Avenue	2382	53.3388578110	-6.2783834259
8220DB002383	Patrick's Cathedral	2383	53.3394580683	-6.2726525826
8220DB002385	Patrick Street	2385	53.3423151191	-6.2719513678
8220DB002386	New Street South	2386	53.3379073675	-6.2723248170
8220DB002387	Long Lane	2387	53.3365844247	-6.2728287910
8220DB002388	St. Kevin's Parade	2388	53.3344588046	-6.2743862313
8220DB002389	St Clare's Avenue	2389	53.3249290292	-6.2791995213
8220DB002390	Mount Argus Park	2390	53.3215286268	-6.2839898347
8220DB002391	Mount Argus Church	2391	53.3201975133	-6.2864299557
8220DB002392	Kimmage Grove	2392	53.3187491224	-6.2913513018
8220DB002393	Corrib Road	2393	53.3152036113	-6.2954553046
8220DB002394	Poddle Park	2394	53.3132590569	-6.2977540174
8220DB002395	Fortfield Road	2395	53.3115018115	-6.3005853508
8220DB002396	Wainsfort	2396	53.3088190678	-6.3021775795
8220DB002397	College Drive	2397	53.3065891640	-6.3008555080
8220DB002398	Fortfield	2398	53.3053439551	-6.2998845820
8220DB002409	Fortfield	2409	53.3053912218	-6.3000477646
8220DB002410	College Drive	2410	53.3068543723	-6.3011751085
8220DB002411	Wainsfort Park	2411	53.3091732491	-6.3024336469
8220DB002412	Lavarna	2412	53.3109352198	-6.3018234623
8220DB002413	Whitehall Road	2413	53.3128657949	-6.3054838465
8220DB002414	Westbrook	2414	53.3140744705	-6.3108540493
8220DB002415	Royston Village	2415	53.3150567500	-6.3135768926
8220DB002434	Kimmage Road West	2434	53.3160265968	-6.3160602014
8220DB002435	Westbrook	2435	53.3143144025	-6.3112948332
8220DB002436	Lorcan O'Toole Park	2436	53.3137059070	-6.3089475271
8220DB002437	Brookfield	2437	53.3126888172	-6.3025192602
8220DB002438	Kimmage Road Lower	2438	53.3124895225	-6.2992554243
8220DB002439	Ravensdale Park	2439	53.3135458709	-6.2976975787
8220DB002440	Aideen Avenue	2440	53.3164008747	-6.2943269153
8220DB002441	Kimmage Grove	2441	53.3190611623	-6.2911737215
8220DB002442	Mount Argus Church	2442	53.3204524144	-6.2860294604
8220DB002443	Brookfield	2443	53.3218921781	-6.2836449964
8220DB002444	Mount Argus Road	2444	53.3242977355	-6.2796752932
8220DB002448	Cashel Road	2448	53.3193092472	-6.3041478070
8220DB002449	Armagh Road	2449	53.3209851812	-6.3050720718
8220DB002450	Scoil Una Naofa	2450	53.3202311000	-6.3076687892
8220DB002451	St Agnes Park	2451	53.3191657562	-6.3143154878
8220DB002464	St Agnes Park	2464	53.3194811626	-6.3131022217
8220DB002465	Armagh Road	2465	53.3199884646	-6.3089392826
8220DB002466	Scoil Colm	2466	53.3206542345	-6.3064511764
8220DB002467	Cashel Road	2467	53.3192341834	-6.3039256281
8220DB002471	Larkfield Park	2471	53.3186815798	-6.2891475011
8220DB002472	Harolds Cross NS	2472	53.3176779066	-6.2856002953
8220DB002473	Clareville Road	2473	53.3178887291	-6.2833853843
8220DB002474	Westfield Road	2474	53.3187560071	-6.2818195289
8220DB002475	Kenilworth Park	2475	53.3188658869	-6.2800889318
8220DB002476	Kenilworth Square N	2476	53.3190438089	-6.2774699754
8220DB002477	Kenilworth Road	2477	53.3198779433	-6.2742391094
8220DB002478	Grosvenor Road	2478	53.3205775911	-6.2697976692
8220DB002479	Grosvenor Road	2479	53.3202340044	-6.2702769046
8220DB002480	Kenilworth Road	2480	53.3197445023	-6.2743345579
8220DB002481	Harolds Cross Road	2481	53.3187380715	-6.2780826993
8220DB002482	Clareville Road	2482	53.3189206311	-6.2813926267
8220DB002483	Larkfield Grove	2483	53.3175979861	-6.2844177224
8220DB002484	Larkfield Park	2484	53.3185468354	-6.2891528913
8220DB002485	Sundrive Road	2485	53.3197915765	-6.2913396738
8220DB002486	Blarney Park	2486	53.3210753974	-6.2931197247
8220DB002487	Stannaway Road	2487	53.3218163770	-6.2952817971
8220DB002488	Kilfenora Road	2488	53.3203554287	-6.2987174578
8220DB002489	Clonfert Road	2489	53.3194152020	-6.3008563216
8220DB002490	Captain's Road	2490	53.3195465425	-6.3094671126
8220DB002491	Captain's Avenue	2491	53.3180276552	-6.3082062766
8220DB002492	Stannaway Ave	2492	53.3163063601	-6.3078841189
8220DB002493	Captain's Road	2493	53.3183304784	-6.3086445989
8220DB002494	Stannaway Road	2494	53.3196966738	-6.3004248436
8220DB002495	Ferns Road	2495	53.3212199106	-6.2969417818
8220DB002496	Eamonn Ceannt Park	2496	53.3219677485	-6.2939247419
8220DB002497	Sundrive Park	2497	53.3203299516	-6.2919035836
8220DB002498	IFSC	2498	53.3482435389	-6.2501118776
8220DB002499	CHQ	2499	53.3481278262	-6.2471275098
8220DB002500	Beckett Bridge	2500	53.3477883380	-6.2423799310
8220DB002501	Spencer Place	2501	53.3473759112	-6.2363586988
8220DB002502	New Wapping Street	2502	53.3496603781	-6.2352429436
8220DB002508	East Wall Road	2508	53.3528641016	-6.2258117473
8220DB002634	Clanbrassil Street	2634	53.3328912745	-6.2753804564
8220DB002635	Lombard Street West	2635	53.3342508124	-6.2749201779
8220DB002636	New Street South	2636	53.3365804388	-6.2731743322
8220DB002637	Heuston Station	2637	53.3458455866	-6.2943081785
8220DB002638	St Johns Road West	2638	53.3456587537	-6.2969590984
8220DB002640	Inchicore Road	2640	53.3420445256	-6.3088925722
8220DB002641	Camac Court	2641	53.3419660073	-6.3154136349
8220DB002642	Grattan Crescent	2642	53.3411821363	-6.3197396964
8220DB002643	Sarsfield Road	2643	53.3415322602	-6.3209874549
8220DB002644	Sarsfield Medical	2644	53.3419905931	-6.3273822656
8220DB002645	Lally Road	2645	53.3416965344	-6.3307728702
8220DB002646	Decies Road	2646	53.3414944858	-6.3336792599
8220DB002647	Markievicz Park	2647	53.3406470674	-6.3380073982
8220DB002648	Ramillies Road	2648	53.3397230210	-6.3426537010
8220DB002649	Thomond Road	2649	53.3391105767	-6.3458010413
8220DB002650	Landen Road	2650	53.3377655576	-6.3466790234
8220DB002652	Kylemore Avenue	2652	53.3388459497	-6.3481089091
8220DB002653	Ballyfermot Crescent	2653	53.3402347652	-6.3484456846
8220DB002654	Ballyfermot Road	2654	53.3412987302	-6.3486899072
8220DB002655	Ballyfermot Parade	2655	53.3421381592	-6.3528475765
8220DB002656	Ballyfermot	2656	53.3426234945	-6.3587161072
8220DB002657	Clifden Road	2657	53.3413170609	-6.3617548659
8220DB002658	Oranmore Road	2658	53.3391624352	-6.3612818232
8220DB002659	Raheen Park Estate	2659	53.3370212365	-6.3604779483
8220DB002660	Cherry Orchard Ave	2660	53.3357750383	-6.3607059435
8220DB002661	Cherry Orchard Drive	2661	53.3354860617	-6.3651917772
8220DB002662	Cherry Orchard Way	2662	53.3367935227	-6.3700971771
8220DB002663	Croftwood Crescent	2663	53.3369139961	-6.3703628786
8220DB002664	Cherry Orchard Drive	2664	53.3356011990	-6.3650672457
8220DB002665	Croftwood Park	2665	53.3358803626	-6.3605217109
8220DB002666	Clifden Drive	2666	53.3376007023	-6.3607860866
8220DB002667	Clifden Road	2667	53.3406976283	-6.3618086478
8220DB002668	Ballyfermot Comm Cen	2668	53.3429828349	-6.3632829723
8220DB002670	Spiddal Park	2670	53.3403899394	-6.3675571895
8220DB002672	Cleggan Park	2672	53.3433589409	-6.3677741774
8220DB002688	Cleggan Park	2688	53.3434635063	-6.3681907077
8220DB002689	Blackditch Drive	2689	53.3431060000	-6.3637438319
8220DB002696	Ballyfermot	2696	53.3426876161	-6.3588037552
8220DB002697	Ballyfermot Parade	2697	53.3422774661	-6.3531726104
8220DB002700	Kylemore Road	2700	53.3412966526	-6.3485398073
8220DB002701	Ballyfermot Crescent	2701	53.3401698049	-6.3482980189
8220DB002702	Kylemore Avenue	2702	53.3381032999	-6.3477021237
8220DB002703	Thomond Road	2703	53.3382847108	-6.3465237873
8220DB002704	Decies Road	2704	53.3392390804	-6.3453455484
8220DB002706	Garryowen Road	2706	53.3400332755	-6.3416955610
8220DB002708	Landen Road	2708	53.3418337142	-6.3328700653
8220DB002709	Longmeadows	2709	53.3429927814	-6.3334856650
8220DB002710	Ballyfermot Road	2710	53.3421150912	-6.3395122079
8220DB002711	Markievicz Park	2711	53.3417835326	-6.3415225127
8220DB002712	St Gabriel's School	2712	53.3424598482	-6.3455662598
8220DB002713	St Gabriel's School	2713	53.3424806535	-6.3470672980
8220DB002714	Markievicz Park	2714	53.3419051123	-6.3418632137
8220DB002715	O'Hogan Road	2715	53.3425517109	-6.3385941328
8220DB002716	Sarsfield Road	2716	53.3428406257	-6.3322450560
8220DB002717	Seaview Avenue	2717	53.3572433117	-6.2374686471
8220DB002718	St Mary's Avenue	2718	53.3422822607	-6.3276712172
8220DB002719	Woodfield Place	2719	53.3416457683	-6.3201119394
8220DB002720	Church Road	2720	53.3520556988	-6.2331160053
8220DB002721	South Circular Road	2721	53.3432718552	-6.3105110849
8220DB002722	South Circular Road	2722	53.3434371043	-6.3113906633
8220DB002726	Long Mile Road	2726	53.3238143897	-6.3304201796
8220DB002727	Drimnagh Castle	2727	53.3237589731	-6.3328842933
8220DB002728	Walkinstown Park	2728	53.3213702339	-6.3394771979
8220DB002729	Walkinstown Park Est	2729	53.3191106121	-6.3359924940
8220DB002730	Walkinstown Comm Cen	2730	53.3179354289	-6.3342220260
8220DB002774	Walkinstown Avenue	2774	53.3182607318	-6.3349898737
8220DB002775	Ep Mooney Park	2775	53.3227770258	-6.3411038613
8220DB002777	Walkinstown Park Est	2777	53.3191699520	-6.3363804522
8220DB002778	Drimnagh Castle	2778	53.3240244462	-6.3319432003
8220DB002780	Walkinstown Avenue	2780	53.3256848414	-6.3420869628
8220DB002781	Kylemore Road	2781	53.3279631772	-6.3436951227
8220DB002782	Bluebell Avenue	2782	53.3306772641	-6.3456168991
8220DB002783	Kylemore Way	2783	53.3353593086	-6.3468621963
8220DB002784	Kylemore Way	2784	53.3352389913	-6.3466115796
8220DB002785	Bluebell Avenue	2785	53.3300839894	-6.3449642242
8220DB002786	Kylemore Luas	2786	53.3278418116	-6.3433695318
8220DB002787	Walkinstown Avenue	2787	53.3251007397	-6.3414490678
8220DB002788	Castlewood Avenue	2788	53.3228386546	-6.2633412173
8220DB002789	Charleston Avenue	2789	53.3237164482	-6.2594324621
8220DB002790	Oakley Road	2790	53.3246375121	-6.2566477059
8220DB002791	Ranelagh Luas	2791	53.3250230920	-6.2553559219
8220DB002793	Belgrave Square N	2793	53.3232622422	-6.2609521383
8220DB002794	Castlewood Avenue	2794	53.3226105306	-6.2643412502
8220DB002795	Leeson Village	2795	53.3285299793	-6.2462646210
8220DB002796	Pembroke Road	2796	53.3326990430	-6.2406730815
8220DB002797	Northumberland Road	2797	53.3322603943	-6.2365319568
8220DB002798	Pembroke Road	2798	53.3319991167	-6.2358820757
8220DB002799	Eastmoreland Place	2799	53.3326920053	-6.2420247419
8220DB002800	Sandymount Avenue	2800	53.3271442905	-6.2224803450
8220DB002801	Wilfield Park	2801	53.3292443854	-6.2186545233
8220DB002806	Sandymount Avenue	2806	53.3303771444	-6.2162650633
8220DB002807	Wilfield Park	2807	53.3287554951	-6.2190202141
8220DB002808	Sandymount Station	2808	53.3268114454	-6.2230646851
8220DB002809	Pearse Station	2809	53.3428845462	-6.2499709000
8220DB002810	Merrion Square West	2810	53.3407949111	-6.2508974892
8220DB002811	Merrion Street	2811	53.3393595022	-6.2523078193
8220DB002812	Charlemont Street	2812	53.3319275451	-6.2622362567
8220DB002813	Ranelagh Road	2813	53.3287117683	-6.2586735819
8220DB002814	Ranelagh Luas	2814	53.3260337723	-6.2556299515
8220DB002815	Milltown Road	2815	53.3158510032	-6.2452685925
8220DB002816	Glenmalure Square	2816	53.3142657507	-6.2462641679
8220DB002817	Alexandra College	2817	53.3111523689	-6.2478625547
8220DB002898	Alexandra College	2898	53.3111657583	-6.2481621594
8220DB002899	Garrynure	2899	53.3163700166	-6.2451122139
8220DB002900	Ranelagh Luas	2900	53.3259364975	-6.2557390100
8220DB002901	Ranelagh Road	2901	53.3273430970	-6.2585041275
8220DB002902	Northbrook Road	2902	53.3288874789	-6.2590117436
8220DB002903	Charlemont Street	2903	53.3319676294	-6.2625199108
8220DB002905	Merrion Sq West	2905	53.3400288107	-6.2519800910
8220DB002906	Blackditch Road	2906	53.3389141423	-6.3733501052
8220DB002907	Orchard Lawns	2907	53.3402552681	-6.3721727381
8220DB002909	Saint Ultans School	2909	53.3374092423	-6.3737227299
8220DB002910	Spiddal Road	2910	53.3410659894	-6.3716462660
8220DB002911	Cherry Orchard Park	2911	53.3387440733	-6.3734016294
8220DB002912	Parliament Street	2912	53.3446304775	-6.2673669376
8220DB002914	Orwell Road	2914	53.3109551921	-6.2737886743
8220DB002915	Zion Road	2915	53.3094079625	-6.2737010343
8220DB002916	Bushy Park Road	2916	53.3076372916	-6.2749429747
8220DB002917	Meadowbank	2917	53.3074870179	-6.2776051489
8220DB002918	Riversdale Avenue	2918	53.3073714176	-6.2808061347
8220DB002957	McKee Avenue	2957	53.3962337688	-6.3025941987
8220DB002958	McKee Avenue Est	2958	53.3944057574	-6.3010880861
8220DB002985	Bushy Park Road	2985	53.3072971098	-6.2831350848
8220DB002986	Meadowbank	2986	53.3075980457	-6.2765802483
8220DB002988	Zion Road	2988	53.3083806553	-6.2735173866
8220DB002989	Rostrevor Terrace	2989	53.3080411945	-6.2705597970
8220DB002990	Orwell Gardens	2990	53.3062138217	-6.2672723448
8220DB002999	Orwell Road	2999	53.3060348179	-6.2673246112
8220DB003000	Rostrevor Terrace	3000	53.3078619717	-6.2705970545
8220DB003001	Orwell Mews	3001	53.3102889380	-6.2737105070
8220DB003002	Washerwomans Lane	3002	53.3112213398	-6.2741681329
8220DB003353	Downpatrick Road	3353	53.3277417973	-6.2979581353
8220DB003354	Clogher Road	3354	53.3263994667	-6.2971107982
8220DB003355	Slane Road	3355	53.3254823571	-6.2977178017
8220DB003356	Bangor Road	3356	53.3248516316	-6.3007603935
8220DB003357	Clonmacnoise Grove	3357	53.3219738453	-6.3019105302
8220DB003358	Lismore Road	3358	53.3211321838	-6.3034000213
8220DB003360	Clonmacnoise Road	3360	53.3217787260	-6.3039898318
8220DB003361	Clogher Road	3361	53.3262397006	-6.2972522769
8220DB003362	Downpatrick Road	3362	53.3274370180	-6.2980153083
8220DB003562	Glenmalure Square	3562	53.3145538608	-6.2462973818
8220DB003952	Rutland Avenue	3952	53.3316839465	-6.2945579920
8220DB004320	Heuston Station	4320	53.3466406640	-6.2920835141
8220DB004363	Berryfield Road	4363	53.3817122371	-6.3034425060
8220DB004364	Cappagh Hospital	4364	53.3929113883	-6.3225291854
8220DB004365	Poppintree Park	4365	53.4021446935	-6.2835143141
8220DB004366	Clune Road	4366	53.3912153802	-6.2948099504
8220DB004367	Jamestown Road	4367	53.3987327890	-6.2893963167
8220DB004368	Poppintree Park	4368	53.3988240612	-6.2888663111
8220DB004369	Oakwood Road	4369	53.3972652002	-6.2923574914
8220DB004371	Drumcliffe Drive	4371	53.3659285746	-6.2926794648
8220DB004372	Fitzmaurice Road	4372	53.3820484820	-6.2761000709
8220DB004375	Jamestown Road	4375	53.3916731626	-6.2966560973
8220DB004376	Clancy Avenue	4376	53.3924080528	-6.2927323917
8220DB004377	Sycamore Road	4377	53.3944892873	-6.2899424437
8220DB004380	Mabbot Street	4380	53.3508458863	-6.2535053053
8220DB004382	Donnycarney Church	4382	53.3749644657	-6.2196776939
8220DB004383	Coolock Library	4383	53.3963183083	-6.2111321741
8220DB004384	Bayview Avenue	4384	53.3576801280	-6.2427090266
8220DB004385	St Brendan's Church	4385	53.3885313843	-6.1989646795
8220DB004386	Watermill Drive	4386	53.3780491482	-6.1751615945
8220DB004388	Glin Road	4388	53.3987311186	-6.2060080764
8220DB004389	Clontarf Golf Club	4389	53.3734638912	-6.2106924456
8220DB004390	Railway Bridge	4390	53.3718904373	-6.2076624122
8220DB004399	Galtymore Park	4399	53.3325267795	-6.3210258804
8220DB004400	Drimnagh CU	4400	53.3343739180	-6.3194367457
8220DB004406	Carriglea Ind Est	4406	53.3280888161	-6.3385106358
8220DB004407	Victoria Quay	4407	53.3464875038	-6.2851654293
8220DB004408	Phoenix House	4408	53.3483333613	-6.3011033099
8220DB004413	Heuston Station	4413	53.3461564854	-6.2927937821
8220DB004414	Convent Lawns	4414	53.3443370217	-6.3500143221
8220DB004415	Connolly Train Stn	4415	53.3505207924	-6.2503340441
8220DB004432	Griffith Downs	4432	53.3772074699	-6.2485637188
8220DB004434	Coombe Hospital	4434	53.3358683780	-6.2892554790
8220DB004455	Ailesbury Road	4455	53.3206548450	-6.2140586963
8220DB004456	Whitefriars St	4456	53.3399144045	-6.2656959573
8220DB004458	Military Cemetery	4458	53.3604500535	-6.3081186945
8220DB004466	Glenwood Road	4466	53.3884194531	-6.1897830469
8220DB004468	West Road	4468	53.3567841966	-6.2380284484
8220DB004469	East Road	4469	53.3542069665	-6.2302928601
8220DB004472	St Anne's Avenue	4472	53.3763621447	-6.1782849742
8220DB004473	Artane Castle SC	4473	53.3839142520	-6.2147040644
8220DB004474	Artane Castle SC	4474	53.3841372471	-6.2151908353
8220DB004479	McKee Road	4479	53.3913045300	-6.2941297781
8220DB004481	Cabra PO	4481	53.3646144110	-6.2869017925
8220DB004485	Naomh Fionnbarra GAA	4485	53.3655416312	-6.2895092839
8220DB004495	Hawkins Street	4495	53.3464932906	-6.2570327102
8220DB004498	Nephin Road	4498	53.3668037534	-6.3042604138
8220DB004499	Dowth Avenue	4499	53.3615685135	-6.2832225948
8220DB004500	Faussagh Road	4500	53.3640474420	-6.2837239689
8220DB004501	Faussagh Road	4501	53.3647523878	-6.2871216525
8220DB004502	Cabra PO	4502	53.3633395576	-6.2826254794
8220DB004504	Royal Canal Avenue	4504	53.3758232387	-6.3172789891
8220DB004509	Summerhill	4509	53.3559717006	-6.2524543932
8220DB004513	Parnell Street	4513	53.3539376011	-6.2577955526
8220DB004514	St James's Hospital	4514	53.3399639859	-6.2972160873
8220DB004515	Saint James's Luas	4515	53.3407051644	-6.2937324314
8220DB004516	St James's Hospital	4516	53.3399500754	-6.2968712355
8220DB004518	Fairview Strand	4518	53.3625824999	-6.2411399295
8220DB004521	College Green	4521	53.3443010559	-6.2601710511
8220DB004522	College Green	4522	53.3442624890	-6.2606081799
8220DB004523	Kinvara Avenue	4523	53.3691463222	-6.3173618552
8220DB004524	Ashington Avenue	4524	53.3716760973	-6.3157442282
8220DB004525	Ashington Park	4525	53.3734481351	-6.3113909237
8220DB004526	Ashington Avenue	4526	53.3721188871	-6.3152758886
8220DB004527	Rathmines	4527	53.3216134981	-6.2668585798
8220DB004528	Grove Park	4528	53.3288960789	-6.2645364902
8220DB004538	Royal Canal Avenue	4538	53.3757281132	-6.3169069846
8220DB004539	Glenties Park	4539	53.3816733488	-6.3108399528
8220DB004542	Finglas Road	4542	53.3866641413	-6.2970966433
8220DB004543	Wellmount Road	4543	53.3862492133	-6.2969929339
8220DB004546	Plunkett Avenue	4546	53.3984528104	-6.3075887967
8220DB004548	Finglas Place	4548	53.3862359183	-6.2960613597
8220DB004563	Clare Hall	4563	53.4016689711	-6.1809788346
8220DB004583	Finglas West Church	4583	53.3885290912	-6.3125981876
8220DB004592	Finglas Village	4592	53.3896860703	-6.2984945594
8220DB004593	Temple View Rise	4593	53.4025041477	-6.1768072127
8220DB004594	Donaghmede Rdbt	4594	53.3992446818	-6.1635319436
8220DB004595	Templeview Avenue	4595	53.4021399241	-6.1729725879
8220DB004596	Temple View Rise	4596	53.4023376157	-6.1770850524
8220DB004597	Beaumont Hospital	4597	53.3902504630	-6.2243172288
8220DB004680	DCU	4680	53.3849664764	-6.2653384063
8220DB004683	Balbutcher Drive	4683	53.4047127122	-6.2795906363
8220DB004692	Glin Road	4692	53.4002486445	-6.2053125867
8220DB004693	Barryscourt Road	4693	53.3974744360	-6.2085121584
8220DB004694	Coolock Drive	4694	53.3934094424	-6.2035704370
8220DB004695	Greencastle Road	4695	53.3929830768	-6.1973482266
8220DB004696	Adare Road	4696	53.3943075517	-6.2023296462
8220DB004697	Bunratty Avenue	4697	53.3930892407	-6.2037944360
8220DB004698	Adare Avenue	4698	53.3949426394	-6.2110996543
8220DB004699	Stardust Memorial Pk	4699	53.3975377643	-6.2085395742
8220DB004700	DCC Sports Centre	4700	53.4001332285	-6.2054076789
8220DB004720	Aston Quay	4720	53.3465945107	-6.2602729177
8220DB004725	O'Connell St Upper	4725	53.3521156161	-6.2610545340
8220DB004726	Parnell Square Nth	4726	53.3542628405	-6.2640768270
8220DB004781	IDA Poppintree	4781	53.4017480300	-6.2840566635
8220DB004782	Gracefield Road	4782	53.3825097657	-6.2025711995
8220DB004784	CRC	4784	53.3700841075	-6.2011107025
8220DB004785	CRC	4785	53.3702460900	-6.2017200461
8220DB004788	Oakwood Road	4788	53.3969347694	-6.2925060623
8220DB004790	Pinebrook Drive	4790	53.3813898765	-6.2117881689
8220DB004791	Collins Avenue East	4791	53.3716117546	-6.2076590853
8220DB004792	Clanawley Road	4792	53.3727989042	-6.2095029406
8220DB004793	Avila Park	4793	53.3922672634	-6.3208253753
8220DB004794	Clontarf Station	4794	53.3630049006	-6.2265624231
8220DB004804	Old Grange Abbey	4804	53.3985246852	-6.1599687273
8220DB004806	Grange Abbey Grove	4806	53.3983744075	-6.1531477063
8220DB004854	Ardee Street	4854	53.3381491415	-6.2791027588
8220DB004855	O'Donovan Road	4855	53.3346017677	-6.2793056488
8220DB004856	Donore Avenue	4856	53.3319659178	-6.2835108151
8220DB004857	Rutledge Terrace	4857	53.3341212960	-6.2827635730
8220DB004890	Sycamore Park	4890	53.3951675776	-6.2908625847
8220DB004891	Grove Road	4891	53.3931060245	-6.2868703349
8220DB004934	Offaly Road	4934	53.3628575086	-6.2828552283
8220DB004935	St Attracta Road	4935	53.3640957230	-6.2833313475
8220DB004936	Newgrange Road	4936	53.3613520606	-6.2831711964
8220DB004937	McKee Avenue	4937	53.3926718421	-6.3005105944
8220DB004938	Finglas Village	4938	53.3908615441	-6.2983574569
8220DB004962	Mountjoy Square	4962	53.3570397242	-6.2584953138
8220DB004985	Lanesborough Estate	4985	53.4023209892	-6.2914180693
8220DB005006	Le Fanu Road	5006	53.3462028545	-6.3516995771
8220DB005007	Convent Lawns	5007	53.3441883078	-6.3496596081
8220DB005009	Le Fanu Road	5009	53.3462145336	-6.3518943831
8220DB005025	The Coombe	5025	53.3397630157	-6.2775810597
8220DB005026	Armagh Road	5026	53.3204303650	-6.3052441688
8220DB005060	Dundaniel Road	5060	53.3971670149	-6.2240292406
8220DB005061	Kilbarron Drive	5061	53.3956965209	-6.2248724259
8220DB005097	Kevin Street	5097	53.3381733033	-6.2726894935
8220DB005099	Newmarket Street	5099	53.3389824386	-6.2758104368
8220DB005134	Lally Road	5134	53.3416887629	-6.3302175007
8220DB005140	Mayor Street Lower	5140	53.3511243927	-6.2455324214
8220DB005141	Seafield Road West	5141	53.3647439835	-6.2052125722
8220DB005144	Marian School	5144	53.3727095347	-6.3062050263
8220DB005145	Rathbourne Avenue	5145	53.3771967976	-6.3267542997
8220DB005147	Marian College	5147	53.3718234485	-6.3058344086
8220DB005148	Saul Road	5148	53.3249457360	-6.3010569012
8220DB005149	Errigal Road	5149	53.3290866192	-6.3237433573
8220DB005154	Grange Abbey Drive	5154	53.3982344046	-6.1568833212
8220DB005155	Grange Abbey Drive	5155	53.3983316747	-6.1556158791
8220DB005157	Grange Abbey Grove	5157	53.3981690640	-6.1538182936
8220DB005160	Grange Abbey Cresc	5160	53.3984955991	-6.1592481299
8220DB005174	Dundaniel Road	5174	53.3957088554	-6.2250974743
8220DB005192	Fleet Street	5192	53.3459563041	-6.2578056096
8220DB006004	Parnell Street	6004	53.3529076424	-6.2605115317
8220DB006016	Balbutcher Lane	6016	53.4011157769	-6.2670426427
8220DB006017	Galluan Road	6017	53.4026543424	-6.2733569837
8220DB006042	Church Avenue	6042	53.3201481073	-6.2649815791
8220DB006057	Kilnamanagh Road	6057	53.3214610603	-6.3311725466
8220DB006059	The Spire of Dublin	6059	53.3502244283	-6.2601851754
8220DB006068	Ratoath Drive	6068	53.3902823798	-6.3170995738
8220DB006070	O'Hogan Road	6070	53.3408852097	-6.3370369912
8220DB006074	Earlsfort Terrace	6074	53.3358857308	-6.2575404013
8220DB006078	Cromcastle Road	6078	53.3972417817	-6.2242216208
8220DB006079	Elmfield	6079	53.3994079803	-6.1636301828
8220DB006080	Kildonan Road	6080	53.3904626683	-6.3114090795
8220DB006094	Drimnagh PO	6094	53.3258302493	-6.3216341403
8220DB006115	Belcamp Lane	6115	53.4001273806	-6.1842178542
8220DB006122	St Pappin's Road	6122	53.3863727060	-6.2743016637
8220DB006125	Poppintree Parade	6125	53.3998824003	-6.2768379230
8220DB006130	Ferrycarrig Park	6130	53.4008703798	-6.2006392650
8220DB006140	Parkmore Estate	6140	53.3235298986	-6.3428910803
8220DB006142	Walkinstown Avenue	6142	53.3237325308	-6.3432435122
8220DB006182	Santry Cross	6182	53.4022507542	-6.2653571888
8220DB006238	Ballymun	6238	53.4011920391	-6.2667237181
8220DB006239	Dolmen Court	6239	53.3980420323	-6.2713932839
8220DB006241	Crannogue Road	6241	53.4018159228	-6.2794067324
8220DB006251	Sheriff Street	6251	53.3503940812	-6.2386675696
8220DB006252	CHQ	6252	53.3479648140	-6.2470440747
8220DB006253	Balbutcher Drive	6253	53.4039584881	-6.2815161411
8220DB006273	Sycamore Road	6273	53.3952753719	-6.2908582649
8220DB006276	Seagrave Terrace	6276	53.4060942639	-6.2919286501
8220DB006315	Hole in the Wall Rd	6315	53.4014745100	-6.1624132052
8220DB006316	Park Avenue	6316	53.4029153535	-6.1573427329
8220DB006318	Clongriffin	6318	53.4023138147	-6.1509917902
8220DB006319	Grange Lodge Avenue	6319	53.4026629411	-6.1538041845
8220DB006320	Hole in the Wall Rd	6320	53.4015965591	-6.1621673101
8220DB006361	Jamestown Road	6361	53.4059486028	-6.2917991179
8220DB006362	Mayeston Lawn	6362	53.4065006334	-6.2895509138
8220DB006363	Hampton Wood	6363	53.4061452137	-6.2879557880
8220DB006367	Hampton Wood Road	6367	53.4038763116	-6.2914459818
8220DB007009	Rathvilly Drive	7009	53.3809280790	-6.3159803491
8220DB007010	Rathvilly Drive	7010	53.3816827804	-6.3165969529
8220DB007012	Memorial Gardens	7012	53.3429541422	-6.3153746792
8220DB007027	Glasnevin Park	7027	53.3765942443	-6.3120480325
8220DB007028	Royal Canal Centre	7028	53.3765158492	-6.3109539073
8220DB007043	St Mary's Road	7043	53.3250607821	-6.3186918942
8220DB007044	Aulden Grange	7044	53.3974093697	-6.2324855679
8220DB007053	Nutley Lane	7053	53.3183737112	-6.2135835670
8220DB007078	Parkgate Street	7078	53.3479103053	-6.2928739038
8220DB007092	Dolmen Court	7092	53.3981870002	-6.2720942038
8220DB007112	Astro Park	7112	53.3975490018	-6.2291714005
8220DB007113	Northwood Avenue	7113	53.4025410679	-6.2649242639
8220DB007129	Victoria Road	7129	53.3620982003	-6.2085843532
8220DB007130	Cromcastle Green	7130	53.3930727352	-6.2206962190
8220DB007149	IKEA	7149	53.4072962624	-6.2779972721
8220DB007153	Walkinstown Drive	7153	53.3222436261	-6.3350749819
8220DB007154	Walkinstown Green	7154	53.3208800215	-6.3339722330
8220DB007191	Balbutcher Way	7191	53.4045112183	-6.2762146687
8220DB007192	Balbutcher Way	7192	53.4038223134	-6.2751897083
8220DB007220	Ballyknockan Road	7220	53.3888767916	-6.2752979142
8220DB007236	Grange Lodge Avenue	7236	53.4028470810	-6.1546685390
8220DB007245	Clongriffin	7245	53.4026465756	-6.1521655250
8220DB007246	Park Avenue	7246	53.4027610322	-6.1572441219
8220DB007276	IKEA	7276	53.4061059175	-6.2808429797
8220DB007277	St Margaret's Road	7277	53.4060008286	-6.2804110297
8220DB007293	Westbourne Road	7293	53.3061612403	-6.2835257964
8220DB007320	Griffith Court	7320	53.3685007698	-6.2395886764
8220DB007333	Mespil Hotel	7333	53.3329896685	-6.2469825735
8220DB007336	Link Road	7336	53.3529489897	-6.2170351399
8220DB007340	Wilton Terrace	7340	53.3342559531	-6.2462999773
8220DB007358	Castletimon Park	7358	53.3954603017	-6.2295438404
8220DB007370	Burlington Road	7370	53.3316230664	-6.2457323258
8220DB007391	Merrion Sq South	7391	53.3390907478	-6.2499160171
8220DB007392	Aston Quay	7392	53.3464087066	-6.2610915641
8220DB007396	Crescent Park	7396	53.3761089443	-6.3216114898
8220DB007397	Guild Street	7397	53.3476940317	-6.2433000615
8220DB007398	Convention Centre	7398	53.3474994233	-6.2398533634
8220DB007399	The Point	7399	53.3484935313	-6.2268644715
8220DB007412	The Coombe	7412	53.3398919248	-6.2784168539
8220DB007413	Dean Street	7413	53.3395977006	-6.2754702442
8220DB007414	Windmill Road	7414	53.3251590797	-6.3110166831
8220DB007423	Ballygall Parade	7423	53.3856751987	-6.2882812319
8220DB007424	Ballygall Place	7424	53.3880117313	-6.2920213002
8220DB007425	Glasanaon Road	7425	53.3888786457	-6.2929337885
8220DB007426	Ballygall Parade	7426	53.3854563780	-6.2880645059
8220DB007427	Ballygall Place	7427	53.3877967874	-6.2920750095
8220DB007428	Ballygall Road Junc	7428	53.3890897641	-6.2932410743
8220DB007430	Griffith Avenue	7430	53.3798676810	-6.2800663647
8220DB007431	Griffith Ave Ext	7431	53.3797291454	-6.2791850784
8220DB007435	Memorial Gardens	7435	53.3431789303	-6.3153808357
8220DB007438	Herberton Drive	7438	53.3319362078	-6.2977460889
8220DB007439	Herberton Road	7439	53.3323622619	-6.2979993923
8220DB007453	Arran Quay	7453	53.3463358924	-6.2783825040
8220DB007454	New Ireland Road	7454	53.3350079743	-6.2988550606
8220DB007455	Herberton Road	7455	53.3355745439	-6.2988775592
8220DB007458	Collins Drive	7458	53.3900665526	-6.2905257061
8220DB007469	Baymount Park	7469	53.3677761962	-6.1740228495
8220DB007471	Tolka Valley Green	7471	53.3792569088	-6.2932435555
8220DB007507	Saint Ultans School	7507	53.3374114731	-6.3732270973
8220DB007513	Phoenix Park	7513	53.3508964565	-6.2967953562
8220DB007514	Bargy Road	7514	53.3539918288	-6.2303318196
8220DB007516	Belmayne	7516	53.4020759137	-6.1717270253
8220DB007555	Mountjoy Square	7555	53.3571703015	-6.2582045369
8220DB007564	Poolbeg St	7564	53.3468341375	-6.2545254567
8220DB007569	Gardiner Street	7569	53.3504505082	-6.2559699655
8220DB007571	DCU Helix	7571	53.3867756476	-6.2587249585
8220DB007577	Grantham Street	7577	53.3338326357	-6.2652970617
8220DB007578	Fade Street	7578	53.3424601007	-6.2646014080
8220DB007579	Redmond's Hill	7579	53.3382457821	-6.2659138436
8220DB007581	Dame Street	7581	53.3441585615	-6.2633459076
8220DB007582	Dame Street	7582	53.3443220437	-6.2622278369
8220DB007585	National Gallery	7585	53.3420370801	-6.2534748796
8220DB007586	National Gallery	7586	53.3419704652	-6.2532222884
8220DB007587	Science Gallery	7587	53.3444579282	-6.2512281598
8220DB007588	Pearse Street	7588	53.3449849859	-6.2540753170
8220DB007591	Abbey Street Lower	7591	53.3488901530	-6.2568297742
8220DB007599	Gilford Road	7599	53.3303169486	-6.2170483266
8220DB007601	Bond Drive	7601	53.3518748034	-6.2101247735
8220DB007602	DCU St Patrick’s	7602	53.3715535145	-6.2534396446
8220DB007603	St Patrick's College	7603	53.3715767255	-6.2531832039
8220DB007607	Vernon Avenue	7607	53.3694140828	-6.1954282033
8220DB007622	Bachelors Walk	7622	53.3470699189	-6.2614401576
8220DB007623	Br an Phoirt Thoir	7623	53.3469141111	-6.2294534272
8220DB007661	Barry Avenue	7661	53.3954073830	-6.3108674535
8220DB007668	Charleston Road	7668	53.3241342651	-6.2578842114
8220DB007671	Gloucester Lane	7671	53.3537821130	-6.2526942059
8220DB007672	Broombridge Station	7672	53.3724256192	-6.2988821064
8220DB007698	IKEA	7698	53.4063848668	-6.2746347975
8220DB007701	Rathvilly Road	7701	53.3836896716	-6.3161419474
8220DB007702	River Road	7702	53.3772555323	-6.3098724796
8220DB007703	River Road	7703	53.3773319112	-6.3095538083
8220DB007726	St Anne's Pitches	7726	53.3768149944	-6.1702842275
8220DB007727	St Anne's Pitches	7727	53.3768207524	-6.1700735476
8220DB007728	Watermill Road	7728	53.3747377160	-6.1661197403
8220DB007729	Causeway Road	7729	53.3746492577	-6.1656275457
8220DB007730	Fox's Lane	7730	53.3793971190	-6.1558481547
8220DB007731	Fox's Lane	7731	53.3797927290	-6.1552748727
8220DB007732	Tara Street	7732	53.3472210742	-6.2551705416
8220DB007733	Moss Street	7733	53.3470108227	-6.2518596562
8220DB007738	Gilford Road	7738	53.3291993121	-6.2144374503
8220DB007739	Park Avenue	7739	53.3266293938	-6.2144847280
8220DB007740	Park Avenue	7740	53.3268757414	-6.2147296651
8220DB007741	Gilford Road	7741	53.3292794817	-6.2149896232
8220DB007827	Eastpoint	7827	53.3599356407	-6.2317232139
8220DB007828	Shangan Road	7828	53.3970949171	-6.2649654024
8220DB007830	Whitehall Colmcille	7830	53.3807506526	-6.2377003743
8220DB007831	Whitehall Colmcille	7831	53.3811699363	-6.2399228696
8220DB007832	Grove Park Road	7832	53.3904147642	-6.2866025364
8220DB007834	East Wall Road	7834	53.3564128940	-6.2317639075
8220DB007836	Glasanaon Road	7836	53.3896974545	-6.2942541871
8220DB007838	Finglas Village	7838	53.3898261843	-6.3001278083
8220DB007839	Malahide Road	7839	53.3752276958	-6.2180434464
8220DB007840	Malahide Road	7840	53.3751291122	-6.2180625928
8220DB007842	New Wapping Street	7842	53.3483399276	-6.2352974908
8220DB007843	Parnell Park	7843	53.3745102380	-6.2157437517
8220DB007844	Point Village	7844	53.3480806663	-6.2299308037
8220DB007845	Finglas	7845	53.3901140588	-6.2995149241
8220DB007851	Swords Road	7851	53.3822514958	-6.2437867492
8220DB007852	Eastpoint	7852	53.3592883633	-6.2323209517
8220DB007854	Arran Quay	7854	53.3463676059	-6.2787116651
8220DB007855	Usher's Quay	7855	53.3459200890	-6.2794656644
8220DB007856	Four Courts	7856	53.3456226167	-6.2731843907
8220DB007857	Merchant's Quay	7857	53.3450436495	-6.2741690381
8220DB007859	Shaw Street	7859	53.3447798683	-6.2529572398
8220DB007861	Prince's St South	7861	53.3456167924	-6.2493483170
8220DB007877	Infirmary Road	7877	53.3516433427	-6.2974866211
8220DB007883	Ormond Quay	7883	53.3460579956	-6.2684956170
8230DB000100	Wellington Cottages	100	53.3030739017	-6.3223767511
8230DB000946	Woodbrook Park	946	53.2932464974	-6.3100408739
8230DB001092	Whitehall Gardens	1092	53.3107438359	-6.3092296969
8230DB001093	Priory Walk	1093	53.3099785513	-6.3116760847
8230DB001094	Kimmage Manor Way	1094	53.3090595751	-6.3146986972
8230DB001095	Wellington Road	1095	53.3069141742	-6.3199902876
8230DB001096	Wellington Road	1096	53.3060442733	-6.3214049672
8230DB001097	Wellington Cottages	1097	53.3030617540	-6.3221521577
8230DB001099	Osprey Road	1099	53.3012723826	-6.3233776223
8230DB001100	Osprey Road	1100	53.3012030473	-6.3235603865
8230DB001101	Limekiln Road	1101	53.3047228782	-6.3226722278
8230DB001102	Limekiln Park	1102	53.3043892748	-6.3264365813
8230DB001103	Tymon Park	1103	53.3045288816	-6.3293421201
8230DB001105	Greenhills College	1105	53.3071131900	-6.3341782033
8230DB001107	Limekiln Road	1107	53.3044325480	-6.3320918161
8230DB001108	St Peter's School	1108	53.3045190055	-6.3286372639
8230DB001109	Mountdown Park	1109	53.3044518784	-6.3257739073
8230DB001110	Wellington Lane	1110	53.3047308919	-6.3232421124
8230DB001111	Limekiln Drive	1111	53.3052814320	-6.3221251428
8230DB001112	Whitehall Road	1112	53.3076587171	-6.3186104887
8230DB001113	Glendale Park	1113	53.3090231357	-6.3153004027
8230DB001114	Priory Walk	1114	53.3103437349	-6.3108062612
8230DB001115	Whitehall Gardens	1115	53.3115984332	-6.3073799923
8230DB001125	Bushy Park House	1125	53.3010853561	-6.2981182495
8230DB001127	Riverside Cottages	1127	53.2984562638	-6.3028437430
8230DB001130	Templeogue Bridge	1130	53.2963417323	-6.3083734308
8230DB001131	Old Bridge Road	1131	53.2942224115	-6.3078721221
8230DB001132	Anne Devlin Road	1132	53.2943500746	-6.3048367470
8230DB001133	Butterfield Grove	1133	53.2947048131	-6.3013422909
8230DB001134	Rathfarnham SC	1134	53.2955073211	-6.2983700429
8230DB001135	Marian Road	1135	53.2934427094	-6.2972970119
8230DB001137	Marian Crescent	1137	53.2943662491	-6.2971402630
8230DB001138	Butterfield Grove	1138	53.2948344416	-6.3003470275
8230DB001139	Old Bridge Road	1139	53.2942244156	-6.3067469243
8230DB001140	Woodbrook Park	1140	53.2932846125	-6.3095593294
8230DB001141	Knocklyon Road	1141	53.2899168921	-6.3110273098
8230DB001142	Knockcullen Rise	1142	53.2876048362	-6.3108785259
8230DB001143	Knockaire	1143	53.2834158745	-6.3133834138
8230DB001144	Dargle Wood	1144	53.2823252783	-6.3150760796
8230DB001145	Scholarstown Road	1145	53.2818119177	-6.3181857024
8230DB001149	St Colmcilles School	1149	53.2793580012	-6.3156277091
8230DB001150	Scholarstown Road	1150	53.2818767025	-6.3183181333
8230DB001151	Knocklyon Road	1151	53.2825295603	-6.3149030701
8230DB001152	Knockaire	1152	53.2835692237	-6.3134223676
8230DB001153	Knockcullen Rise	1153	53.2871755582	-6.3110304526
8230DB001154	Coolamber Park	1154	53.2889922693	-6.3111087843
8230DB001155	Ashfield College	1155	53.2967734385	-6.3071261662
8230DB001157	Riverside Cottages	1157	53.2987448074	-6.3022771836
8230DB001158	Springfield Road	1158	53.3007025116	-6.2990036988
8230DB001301	Dodder Park Road	1301	53.3038958094	-6.2834966311
8230DB001302	Crannagh Road	1302	53.3016627220	-6.2838412749
8230DB001303	Rathfarnham Castle	1303	53.2993423126	-6.2837392781
8230DB001304	Butterfield Avenue	1304	53.2981765475	-6.2845511792
8230DB001305	Willbrook Road	1305	53.2961695995	-6.2837464779
8230DB001325	Sarah Curran Avenue	1325	53.2865329953	-6.2824078842
8230DB001326	St Enda's Drive	1326	53.2888051255	-6.2829017238
8230DB001327	Tara Hill Road	1327	53.2911907098	-6.2825360314
8230DB001328	Loretto Convent	1328	53.2922038417	-6.2823603773
8230DB001329	St Mary's School	1329	53.2949669229	-6.2819944721
8230DB001330	Willbrook Road	1330	53.2961910180	-6.2839856563
8230DB001331	Rathfarnham Road	1331	53.2985191944	-6.2846274644
8230DB001332	Crannagh Road	1332	53.3007580324	-6.2840576013
8230DB001333	Brookvale Road	1333	53.3031038796	-6.2840535638
8230DB001334	Dodder Bridge	1334	53.3048480025	-6.2834584339
8230DB001957	Robinhood Road	1957	53.3254115710	-6.3470066273
8230DB001958	Long Mile Road	1958	53.3245634198	-6.3493662964
8230DB001959	Club Road	1959	53.3222337514	-6.3557459602
8230DB001960	Red Cow Hotel	1960	53.3200631688	-6.3619537117
8230DB001963	Woodford Hill	1963	53.3200381428	-6.3785412730
8230DB001964	Woodford Walk	1964	53.3232100855	-6.3784810475
8230DB001965	Woodford Grove	1965	53.3238683062	-6.3792967498
8230DB001966	Woodford Hill	1966	53.3205430554	-6.3779967564
8230DB001968	Monastery Road	1968	53.3195137258	-6.3822837083
8230DB001969	Monastery Walk	1969	53.3198104754	-6.3842838761
8230DB001970	Floraville Avenue	1970	53.3207424760	-6.3893973393
8230DB001971	Laurel Park	1971	53.3211263109	-6.3911991952
8230DB001972	Monastery Road	1972	53.3210323032	-6.3902270293
8230DB001973	Monastery Rise	1973	53.3200719183	-6.3856699737
8230DB001974	Monastery Heath	1974	53.3195894889	-6.3819055846
8230DB001975	Mount Talbot	1975	53.3179325031	-6.3724220741
8230DB001977	Red Cow Hotel	1977	53.3205468242	-6.3618301116
8230DB001978	Robin Hood Ind Est	1978	53.3221221537	-6.3574315124
8230DB001980	J F Kennedy Drive	1980	53.3249258630	-6.3495774889
8230DB002109	Knockmeenagh Lane	2109	53.3133718125	-6.3873636124
8230DB002110	Newlands Cross	2110	53.3146473578	-6.3919681804
8230DB002111	Clondalkin Church	2111	53.3191587733	-6.3925941008
8230DB002112	Clondalkin Main St	2112	53.3206703248	-6.3933778861
8230DB002114	Ninth Lock Road	2114	53.3242145515	-6.3956015947
8230DB002115	Oakfield	2115	53.3256298971	-6.3952482398
8230DB002116	Michael Collins Pk	2116	53.3282504282	-6.3962908951
8230DB002117	Station Road	2117	53.3298457162	-6.3979576503
8230DB002118	Neilstown Road	2118	53.3356239897	-6.4005640754
8230DB002119	St Peter School	2119	53.3370479289	-6.4001804284
8230DB002120	Collinstown College	2120	53.3411632704	-6.3994256544
8230DB002121	Rowlagh	2121	53.3438755787	-6.3986031559
8230DB002123	St Mark's Avenue	2123	53.3471760339	-6.3980739128
8230DB002124	Neilstown Road	2124	53.3469584164	-6.3979318731
8230DB002125	Harelawn Green	2125	53.3455867762	-6.3981935753
8230DB002126	Rowlagh	2126	53.3439354402	-6.3983756299
8230DB002127	Collinstown College	2127	53.3415714731	-6.3990349152
8230DB002128	Neilstown Avenue	2128	53.3396666624	-6.3997520180
8230DB002129	Moorefield Drive	2129	53.3357283701	-6.4003048984
8230DB002130	Station Road	2130	53.3297236913	-6.3975718630
8230DB002133	Dunawley	2133	53.3248045440	-6.4034007679
8230DB002134	Lealand Drive	2134	53.3216269544	-6.4124659470
8230DB002135	Mill Court Avenue	2135	53.3213067271	-6.4147444734
8230DB002136	Bawnogue Church	2136	53.3249264980	-6.4125386058
8230DB002137	Lindisfarne	2137	53.3263979957	-6.4123488602
8230DB002138	Lindisfarne Drive	2138	53.3285582266	-6.4139351299
8230DB002139	Melrose	2139	53.3287172666	-6.4171120820
8230DB002140	Deansrath Grove	2140	53.3295498464	-6.4222910231
8230DB002141	St Cuthberts Road	2141	53.3284075709	-6.4242698945
8230DB002142	Kilmahuddrick Estate	2142	53.3272019253	-6.4248547918
8230DB002143	Grange View	2143	53.3250593390	-6.4259545456
8230DB002145	St Ronan's	2145	53.3231270230	-6.4245995830
8230DB002146	Old Castle Drive	2146	53.3240823081	-6.4261556402
8230DB002147	Kilmahuddrick Avenue	2147	53.3268467434	-6.4251831448
8230DB002148	Kilcronan Estate	2148	53.3287932690	-6.4242106389
8230DB002149	Deansrath Grove	2149	53.3295682613	-6.4216447528
8230DB002150	Melrose	2150	53.3287300561	-6.4167212586
8230DB002151	Lindisfarne Drive	2151	53.3286145217	-6.4141132026
8230DB002152	Bawnogue Road	2152	53.3275109455	-6.4115568814
8230DB002153	Newlife Church	2153	53.3249873857	-6.4123862239
8230DB002154	Lealand Drive	2154	53.3234234313	-6.4103576761
8230DB002156	New Nangor Road	2156	53.3254023616	-6.4024026453
8230DB002158	Oakfield	2158	53.3254849511	-6.3951636056
8230DB002159	Clondalkin Garda Stn	2159	53.3232207171	-6.3938825294
8230DB002160	Convent Road	2160	53.3195731447	-6.3946649569
8230DB002161	Clondalkin Church	2161	53.3183725943	-6.3949501769
8230DB002162	St John's Road	2162	53.3172863805	-6.4037564706
8230DB002163	St John's Close	2163	53.3170228251	-6.4062278429
8230DB002164	Westbourne	2164	53.3207026328	-6.4200205880
8230DB002165	Rath Gael Estate	2165	53.3202109978	-6.4243017192
8230DB002166	Castlegrange	2166	53.3199641928	-6.4267124697
8230DB002167	Grange Castle GC	2167	53.3182214010	-6.4356623411
8230DB002168	St John's Lawn	2168	53.3138014438	-6.4086441260
8230DB002169	St John's Road	2169	53.3173561781	-6.4056150421
8230DB002170	Corkagh View	2170	53.3173622122	-6.4033784033
8230DB002172	Moyle Park College	2172	53.3197268727	-6.3947342382
8230DB002173	Laurel Park	2173	53.3185518288	-6.3922416634
8230DB002174	Knockmeenagh Road	2174	53.3163990070	-6.3912269155
8230DB002176	Newlands Cross	2176	53.3137055565	-6.3881164509
8230DB002177	Newlands Cemetery	2177	53.3150632551	-6.3828422542
8230DB002178	St Brigids Cottages	2178	53.3159578460	-6.3792212704
8230DB002201	Palmerstown Drive	2201	53.3532737532	-6.3645711646
8230DB002202	Lucan Road	2202	53.3543817718	-6.3733019231
8230DB002203	Palmerstown Avenue	2203	53.3532072699	-6.3761557931
8230DB002204	Oakcourt Avenue	2204	53.3500190174	-6.3776589190
8230DB002205	Cherry Orchard Hosp	2205	53.3445906434	-6.3770239634
8230DB002206	Cherry Orchard Hosp	2206	53.3441867930	-6.3757476712
8230DB002207	Kennelsfort Road	2207	53.3467566215	-6.3796602836
8230DB002208	Kennelsfort Green	2208	53.3499128506	-6.3777831187
8230DB002210	Woodfarm	2210	53.3523918339	-6.3783198951
8230DB002211	Palmerstown Avenue	2211	53.3539587776	-6.3745799150
8230DB002212	Palmerstown Village	2212	53.3559674222	-6.3709429941
8230DB002213	Liffey Valley SC	2213	53.3557776542	-6.3920726228
8230DB002214	Clayton Hotel	2214	53.3560900353	-6.3999329759
8230DB002215	St Loman's Hospital	2215	53.3582062276	-6.4089731657
8230DB002216	Ballyowen Lane	2216	53.3588652801	-6.4159498244
8230DB002217	Esker Lane	2217	53.3595962005	-6.4270406930
8230DB002218	Roselawn	2218	53.3596765184	-6.4324615100
8230DB002219	St Andrews NS	2219	53.3600556757	-6.4366995068
8230DB002223	Main Street Lucan	2223	53.3585272442	-6.4490600103
8230DB002224	Lucan Village	2224	53.3572779284	-6.4497513849
8230DB002225	St Patricks Church	2225	53.3495522066	-6.4500467633
8230DB002226	Collins Bridge	2226	53.3702722410	-6.4565230344
8230DB002227	St Patricks Church	2227	53.3495639204	-6.4502566282
8230DB002228	Collins Bridge	2228	53.3713065694	-6.4558845024
8230DB002229	Main St Lucan	2229	53.3586057545	-6.4488768725
8230DB002232	Ballydowd Grove	2232	53.3597376346	-6.4309568341
8230DB002233	Chalet Gardens	2233	53.3600895009	-6.4351657756
8230DB002234	Lucan Retail Park	2234	53.3593365474	-6.4243909737
8230DB002236	Hermitage Bridge	2236	53.3588694642	-6.4108565134
8230DB002239	Liffey Valley SC	2239	53.3561684706	-6.3917274005
8230DB002241	Kennelsfort Road	2241	53.3549292563	-6.3712680226
8230DB002242	The Oval	2242	53.3539273217	-6.3670098177
8230DB002320	Whitehall Road West	2320	53.3158872230	-6.3170112655
8230DB002321	Quarry Drive	2321	53.3134048426	-6.3200805736
8230DB002322	Muckross Avenue	2322	53.3102374921	-6.3211053801
8230DB002323	Millgate Drive	2323	53.3081075506	-6.3204836594
8230DB002324	Whitehall Road West	2324	53.3097868581	-6.3210180152
8230DB002325	Limekiln Lane	2325	53.3121174975	-6.3212116918
8230DB002326	Quarry Drive	2326	53.3137000175	-6.3199789311
8230DB002334	Greenhills Road	2334	53.3155340137	-6.3347508098
8230DB002335	Calmount Avenue	2335	53.3116507619	-6.3431111445
8230DB002336	Tibradden Drive	2336	53.3088560240	-6.3457404920
8230DB002337	Old Tymon Lane	2337	53.3059914350	-6.3485222433
8230DB002339	Elmcastle Court	2339	53.3025723020	-6.3515050344
8230DB002340	Tymonville	2340	53.3006348743	-6.3530950398
8230DB002345	Belgard Retail Park	2345	53.2936088479	-6.3689816562
8230DB002346	Belgard Square North	2346	53.2900797371	-6.3679011038
8230DB002349	Alderwood	2349	53.2850288716	-6.3784723835
8230DB002351	Blessington Road	2351	53.2832055706	-6.3845254486
8230DB002352	Jobstown House	2352	53.2775372314	-6.3974104819
8230DB002353	Fortunestown Road	2353	53.2791505295	-6.4017589723
8230DB002357	Jobstown House	2357	53.2779689604	-6.3967645098
8230DB002359	Maplewood Avenue	2359	53.2835900309	-6.3843759663
8230DB002360	Alderwood	2360	53.2846948207	-6.3796848798
8230DB002363	Belgard Road	2363	53.2898059719	-6.3682565376
8230DB002364	Belgard Retail Park	2364	53.2935508856	-6.3693438937
8230DB002369	Birchview Avenue	2369	53.2985821753	-6.3541492221
8230DB002370	Park View	2370	53.3008676112	-6.3530260684
8230DB002371	Kilnamanagh SC	2371	53.3033968970	-6.3513382264
8230DB002372	Old Tymon Lane	2372	53.3072568776	-6.3477381030
8230DB002373	Kilakee Drive	2373	53.3107116337	-6.3447382887
8230DB002374	St Cuthberts Road	2374	53.3215211329	-6.4227823783
8230DB002377	Greenhills SC	2377	53.3160470777	-6.3341604862
8230DB002399	Fortfield Park	2399	53.3035231825	-6.2995217814
8230DB002400	Fortfield Drive	2400	53.3020079613	-6.3035731411
8230DB002401	Templeville Road	2401	53.3018219644	-6.3062962835
8230DB002402	Templeogue College	2402	53.3032577851	-6.3112060252
8230DB002403	Glendown Avenue	2403	53.3050701818	-6.3167014871
8230DB002404	Templeville Road	2404	53.3049716704	-6.3160901439
8230DB002405	Templeogue College	2405	53.3034025763	-6.3112753349
8230DB002406	Fortfield Park	2406	53.3019897280	-6.3048192217
8230DB002408	Fortfield Road	2408	53.3039909416	-6.2995482081
8230DB002420	Tymonville	2420	53.3011849395	-6.3512734012
8230DB002421	Tymon North Road	2421	53.2996703260	-6.3463956310
8230DB002423	Tymon Park	2423	53.2982653587	-6.3429542332
8230DB002424	Castletymon Green	2424	53.2951494846	-6.3412296299
8230DB002425	Castletymon Road	2425	53.2906588419	-6.3434136595
8230DB002426	St Aengus Church	2426	53.2932034182	-6.3428351554
8230DB002427	Tymon Lane	2427	53.2959797105	-6.3408224035
8230DB002428	Tymon Park	2428	53.2983359494	-6.3435066091
8230DB002429	Tymon North School	2429	53.2995447685	-6.3464154855
8230DB002430	Tymonville Grove	2430	53.3009213803	-6.3504133324
8230DB002447	St Aengus Church	2447	53.2929855283	-6.3426785783
8230DB002515	Cherryfield Way	2515	53.2913443620	-6.3128160628
8230DB002516	Cremore	2516	53.2902232679	-6.3155302728
8230DB002517	Green Acre Court	2517	53.2892149823	-6.3185999029
8230DB002518	Knocklyon Avenue	2518	53.2885324497	-6.3243865355
8230DB002520	Ballycullen Road	2520	53.2860777852	-6.3326568733
8230DB002521	Woodlawn Park	2521	53.2847193345	-6.3357843969
8230DB002522	Firhouse Centre	2522	53.2814222294	-6.3423462463
8230DB002523	Firhouse College	2523	53.2771069429	-6.3487513797
8230DB002524	Ballycullen Drive	2524	53.2783737436	-6.3467680663
8230DB002532	Old Bawn Centre	2532	53.2756035853	-6.3544324419
8230DB002533	Parkwood Lawn	2533	53.2775083921	-6.3576433040
8230DB002534	Old Bawn Terrace	2534	53.2789286838	-6.3583086566
8230DB002535	Seskin View Road	2535	53.2810133262	-6.3589186028
8230DB002536	Old Bawn Court	2536	53.2829548506	-6.3595790812
8230DB002538	The Crescent	2538	53.2815345660	-6.3589136266
8230DB002539	Kiltipper Road	2539	53.2765355041	-6.3561810789
8230DB002540	Old Bawn Centre	2540	53.2755315986	-6.3537754304
8230DB002542	Firhouse College	2542	53.2767930272	-6.3500980700
8230DB002544	Woodlawn	2544	53.2848726770	-6.3358234321
8230DB002545	Monalea Wood	2545	53.2862572398	-6.3326348868
8230DB002547	Knocklyon Avenue	2547	53.2891047659	-6.3235391509
8230DB002548	Green Acre Court	2548	53.2895027571	-6.3179736054
8230DB002550	Cheeverstown House	2550	53.2947905922	-6.3149905040
8230DB002551	Tallaght Road	2551	53.2930679788	-6.3215838106
8230DB002553	Basketball Arena	2553	53.2896890904	-6.3338062320
8230DB002554	Glenview Park	2554	53.2890402901	-6.3394863676
8230DB002555	Blessington Road	2555	53.2887899334	-6.3492908126
8230DB002556	Tallaght Youth C	2556	53.2881660103	-6.3555246015
8230DB002557	Tallaght Village	2557	53.2885064213	-6.3632812490
8230DB002558	Killinarden Estate	2558	53.2802494527	-6.3839321161
8230DB002559	Health Care Centre	2559	53.2763804827	-6.3789947241
8230DB002560	Cushlawn Park	2560	53.2739022564	-6.3798382154
8230DB002561	Donomore Crescent	2561	53.2727602974	-6.3844395479
8230DB002562	Sacred Heart FC	2562	53.2731850717	-6.3879321345
8230DB002564	Killinarden Heights	2564	53.2737654963	-6.3916438576
8230DB002566	Killinarden School	2566	53.2777559067	-6.3949580143
8230DB002567	Hazelgrove	2567	53.2757659117	-6.3946876953
8230DB002568	Killinarden Heights	2568	53.2737235799	-6.3905358592
8230DB002569	Donomore Avenue	2569	53.2730917137	-6.3863462830
8230DB002570	Health Care Centre	2570	53.2762465463	-6.3790597731
8230DB002571	Killinarden Estate	2571	53.2806118379	-6.3841433918
8230DB002573	Kiltalown Cottages	2573	53.2742753736	-6.4068590193
8230DB002574	De Selby Estate	2574	53.2745607514	-6.4107319752
8230DB002575	Corbally Vale	2575	53.2771580083	-6.4188230849
8230DB002577	Corbally Bridge	2577	53.2717311139	-6.4325774561
8230DB002578	Rosedale	2578	53.2697969568	-6.4351819889
8230DB002579	Meagan's Lane	2579	53.2674210154	-6.4383720830
8230DB002583	St Brigid's Home	2583	53.2551888748	-6.4494289453
8230DB002584	Crooksling	2584	53.2576975222	-6.4481241337
8230DB002585	Slade Hill	2585	53.2646245368	-6.4424016134
8230DB002586	Meagan's Lane	2586	53.2674669154	-6.4384453698
8230DB002587	Rosedale	2587	53.2702759775	-6.4346997135
8230DB002588	Corbally Bridge	2588	53.2717248884	-6.4327875920
8230DB002589	The Enbankment	2589	53.2740842303	-6.4256239874
8230DB002590	Belfry Downs	2590	53.2751454329	-6.4154935835
8230DB002591	De Selby Estate	2591	53.2746108568	-6.4104452211
8230DB002592	Kiltalown Cottages	2592	53.2743034962	-6.4062731923
8230DB002594	Lifegate Church	2594	53.2882876581	-6.3565248887
8230DB002595	Bancroft Road	2595	53.2889870001	-6.3485932308
8230DB002596	Glenview Lawn	2596	53.2898063495	-6.3409266525
8230DB002597	Basketball Arena	2597	53.2894497255	-6.3353305319
8230DB002599	Spawell Centre	2599	53.2934418943	-6.3213291297
8230DB002600	Cheeverstown House	2600	53.2957558417	-6.3133322795
8230DB002601	Brichview Close	2601	53.2974329351	-6.3542384216
8230DB002602	Avonmore Park	2602	53.2842949180	-6.3440348092
8230DB002603	Bankcroft	2603	53.2892551750	-6.3575977302
8230DB002604	Village Green	2604	53.2868149332	-6.3618460194
8230DB002605	St Maelruan's Park	2605	53.2840559728	-6.3599118483
8230DB002606	Seskin View Road	2606	53.2806870412	-6.3561117206
8230DB002607	Millbrook Lawns	2607	53.2816222440	-6.3502869565
8230DB002608	Avonmore Road	2608	53.2827192694	-6.3477251240
8230DB002609	Avonmore Drive	2609	53.2847852777	-6.3431009567
8230DB002610	Bolbrook	2610	53.2874613058	-6.3409875206
8230DB002611	Bolbrook	2611	53.2869170961	-6.3406336327
8230DB002613	Homelawn Road	2613	53.2825053323	-6.3478533572
8230DB002614	Seskin View Road	2614	53.2814295883	-6.3506543058
8230DB002615	New Bawn Park	2615	53.2806825879	-6.3551371041
8230DB002616	St Maelruan's Park	2616	53.2846412135	-6.3606393390
8230DB002617	Village Green	2617	53.2867102222	-6.3620750079
8230DB002618	Belgard	2618	53.2987546059	-6.3712910758
8230DB002619	Belgard Road	2619	53.3026751409	-6.3766934948
8230DB002620	Belgard	2620	53.2987215111	-6.3708422446
8230DB002621	Kilclare	2621	53.2821328026	-6.3896049650
8230DB002622	Tallaght Leisure	2622	53.2838090575	-6.3926014709
8230DB002623	Whitebrook	2623	53.2855300605	-6.3949216068
8230DB002624	Rossfield	2624	53.2887645780	-6.4001851655
8230DB002626	Brookview Road	2626	53.2859212873	-6.4073406732
8230DB002628	Brookfield Road	2628	53.2888711129	-6.4041110541
8230DB002629	Fettercairn Crescent	2629	53.2882044380	-6.3986311710
8230DB002631	Raheen Drive	2631	53.2821961658	-6.3889727004
8230DB002632	Greenhills Road	2632	53.2891222836	-6.3577378251
8230DB002633	Airton Road	2633	53.2940911777	-6.3556720258
8230DB002669	Swiftbrook Avenue	2669	53.2850061073	-6.4061148677
8230DB002673	Cherry Orchard IE	2673	53.3437794112	-6.3728945597
8230DB002674	Sports Club	2674	53.3475600592	-6.3892126625
8230DB002675	Harelawn	2675	53.3477889507	-6.3955275389
8230DB002676	Wood Avens	2676	53.3366231166	-6.4047012066
8230DB002678	Rowlagh	2678	53.3435040070	-6.4071026329
8230DB002679	Rowlagh Crescent	2679	53.3415562318	-6.4079711900
8230DB002680	Foxdene Gardens	2680	53.3387611727	-6.4079852081
8230DB002681	Fonthill Road	2681	53.3417450848	-6.4079791724
8230DB002682	St Mark's Grove	2682	53.3455923409	-6.4066643144
8230DB002685	Coldcut Road	2685	53.3479550927	-6.3958517451
8230DB002686	Sports Club	2686	53.3476521871	-6.3887135237
8230DB002687	Cherry Orchard IE	2687	53.3439611244	-6.3730378292
8230DB002725	Westgate Park	2725	53.3108283703	-6.3544735174
8230DB002733	Ballymount Ind Est	2733	53.3164035076	-6.3429720683
8230DB002734	Ballymount Drive	2734	53.3163850096	-6.3455243614
8230DB002735	Crosslands Park	2735	53.3137826760	-6.3568812735
8230DB002736	Ballymount Retail C	2736	53.3123726148	-6.3576107868
8230DB002737	Sylvan Drive	2737	53.3049725854	-6.3659076244
8230DB002738	Kingswood Comm Cen	2738	53.3063743002	-6.3671896015
8230DB002739	St Killian's School	2739	53.3072401572	-6.3700377136
8230DB002740	Kingswood Avenue	2740	53.3040722598	-6.3769856080
8230DB002741	Cookstown Road	2741	53.3019086628	-6.3791532367
8230DB002742	Belgard Heights	2742	53.3000530411	-6.3828243449
8230DB002743	Ard Mhuire School	2743	53.2984451873	-6.3862157388
8230DB002745	Cairnwood Avenue	2745	53.2936188699	-6.3882278322
8230DB002746	St Mark's School	2746	53.2913434872	-6.3874584738
8230DB002747	St Mark's GAA Club	2747	53.2892619622	-6.3877318667
8230DB002748	Maplewood Road	2748	53.2859544208	-6.3897312179
8230DB002750	Springfield PO	2750	53.2865538835	-6.3895286900
8230DB002751	St Mark's GAA Club	2751	53.2889146479	-6.3879699383
8230DB002752	St Mark's School	2752	53.2909794230	-6.3877871921
8230DB002754	Alpine Rise	2754	53.2981031515	-6.3868437485
8230DB002755	Belgard Heights	2755	53.3000407673	-6.3832449055
8230DB002756	Old Belgard Road	2756	53.3023329348	-6.3786270223
8230DB002762	Newlands Golf Club	2762	53.3111810795	-6.3895322157
8230DB002763	Newlands Golf Club	2763	53.3088093657	-6.3862900435
8230DB002764	Kingswood Avenue	2764	53.3043648332	-6.3766894164
8230DB002765	St Killian's Church	2765	53.3070654972	-6.3684387306
8230DB002766	Sylvan Close	2766	53.3045560641	-6.3656834493
8230DB002767	Westgate Park	2767	53.3106527210	-6.3541200997
8230DB002768	Ballymount Road	2768	53.3137863954	-6.3571512806
8230DB002769	Ballymount Avenue	2769	53.3149171596	-6.3531155281
8230DB002770	Ballymount Drive	2770	53.3165416777	-6.3458034785
8230DB002771	Ballymount Ind Est	2771	53.3165322112	-6.3425318117
8230DB002772	Ballymount Retail C	2772	53.3123301768	-6.3577925100
8230DB002773	Ballymount Square	2773	53.3172218690	-6.3371916958
8230DB002924	Everton Hall	2924	53.2858282116	-6.2940451334
8230DB002925	Ballyboden Road	2925	53.2833438237	-6.2963037885
8230DB002927	Edmondstown Road	2927	53.2771350458	-6.2970756020
8230DB002929	Edmondstown Golf	2929	53.2718329035	-6.2990256437
8230DB002930	Kilmashogue Cemetery	2930	53.2679047343	-6.2983720015
8230DB002934	Rockbrook	2934	53.2620973839	-6.2976731914
8230DB002935	The Merry Ploughboy	2935	53.2641307659	-6.2971876586
8230DB002936	Kilmashogue Cemetery	2936	53.2660993482	-6.2978290346
8230DB002937	Edmondstown NS	2937	53.2686479762	-6.2988072558
8230DB002938	Edmondstown Golf	2938	53.2716453279	-6.2991080596
8230DB002940	Moyville	2940	53.2803586860	-6.2974873088
8230DB002941	Ballyboden Road	2941	53.2830890975	-6.2967188605
8230DB002942	Hillside Park	2942	53.2849290934	-6.2952808221
8230DB002948	Ballyboden Crescent	2948	53.2819527231	-6.2958192274
8230DB002949	Moyville Lawns	2949	53.2816733045	-6.2932508263
8230DB002950	Pearse Brothers Park	2950	53.2817934073	-6.2884619137
8230DB002954	Whitechurch Green	2954	53.2780415019	-6.2863174624
8230DB002955	Ballyboden Church	2955	53.2778719664	-6.2895333667
8230DB002956	Glenmore Park	2956	53.2781201947	-6.2861643541
8230DB002965	Whitechurch Road	2965	53.2803041452	-6.2842773501
8230DB002967	Eden Avenue	2967	53.2813395032	-6.2769172747
8230DB002968	Three Rock Rovers	2968	53.2803293260	-6.2735686446
8230DB002980	Three Rock Rovers	2980	53.2800165259	-6.2730713668
8230DB002981	Eden Avenue	2981	53.2812724045	-6.2772499107
8230DB002983	Pearse Brothers Park	2983	53.2816185848	-6.2875540710
8230DB002984	Moyville Lawns	2984	53.2815437078	-6.2936159232
8230DB002991	Hermitage Avenue	2991	53.2833166210	-6.2793873514
8230DB002992	St Enda's Park	2992	53.2846279939	-6.2811944452
8230DB003003	Mount Carmel Church	3003	53.2803223603	-6.3401693144
8230DB003004	Ballycullen Avenue	3004	53.2821463654	-6.3407734982
8230DB003005	Carriglea Avenue	3005	53.2785507334	-6.3420374924
8230DB003006	Glenlyon Park	3006	53.2787501087	-6.3312025947
8230DB003007	Greenfield Park	3007	53.2759174588	-6.3311030209
8230DB003365	St Mary's Church	3365	53.3596568990	-6.4391931115
8230DB003366	Lucan Heights	3366	53.3581757255	-6.4413956402
8230DB003367	Lucan Village	3367	53.3564291825	-6.4487606187
8230DB003368	Finnstown Abbey	3368	53.3445579030	-6.4495821152
8230DB003370	Finnstown Abbey	3370	53.3444704239	-6.4476929053
8230DB003372	Lucan Village	3372	53.3565643296	-6.4480946906
8230DB003373	Lucan Heights	3373	53.3580827893	-6.4418497435
8230DB003374	St Mary's Church	3374	53.3596342689	-6.4395244726
8230DB003376	Nangor Crescent	3376	53.3215723445	-6.4076944905
8230DB003377	Cherrywood Drive	3377	53.3209723348	-6.4105538618
8230DB003378	Old Church Avenue	3378	53.3196982777	-6.4147740729
8230DB003379	Cherrywood Park	3379	53.3190650822	-6.4192105000
8230DB003383	Kilcarberry	3383	53.3184848206	-6.4454991407
8230DB003384	Ballybane Green	3384	53.3195769037	-6.4499925207
8230DB003385	Clutterland	3385	53.3209623076	-6.4577178266
8230DB003386	Peamount Road	3386	53.3189825704	-6.4631027369
8230DB003387	The Lodge	3387	53.3184932748	-6.4662873790
8230DB003389	Peamount Hospital	3389	53.3157324343	-6.4802094548
8230DB003390	Peamount	3390	53.3131834331	-6.4882691869
8230DB003392	Westmanstown	3392	53.3082238333	-6.4955122984
8230DB003393	Cornerpark	3393	53.3039060308	-6.4995052746
8230DB003394	Glebe Close	3394	53.3005643407	-6.5010777636
8230DB003396	Newcastle	3396	53.2997520682	-6.4993808521
8230DB003397	Orchard Grove	3397	53.2996364610	-6.4966243385
8230DB003398	Alymer Road	3398	53.2980705957	-6.4936188196
8230DB003399	Newcastle Manor	3399	53.2960549465	-6.4920095474
8230DB003400	Newcastle Manor	3400	53.2953807216	-6.4905781435
8230DB003401	Aylmer Road	3401	53.2977580535	-6.4937798433
8230DB003402	Orchard Grove	3402	53.2996067627	-6.4971204831
8230DB003403	Newcastle	3403	53.2997761418	-6.5005802581
8230DB003404	Peamount Road	3404	53.3009609524	-6.5011688980
8230DB003405	Cornerpark	3405	53.3036049173	-6.4998609353
8230DB003406	Westmanstown	3406	53.3059356701	-6.4979485807
8230DB003407	Keeloges	3407	53.3112572462	-6.4908884700
8230DB003408	Peamount	3408	53.3122738703	-6.4895469533
8230DB003409	Peamount Hospital	3409	53.3159549268	-6.4800364523
8230DB003410	Westmanstown	3410	53.3078623041	-6.4960652254
8230DB003411	The Lodge	3411	53.3182550356	-6.4673315895
8230DB003412	Clutterland	3412	53.3196559447	-6.4616525726
8230DB003413	New Nangor Road	3413	53.3211638286	-6.4580107734
8230DB003414	Ballybane Green	3414	53.3200813360	-6.4507697875
8230DB003415	Kilcarberry	3415	53.3185414486	-6.4450167683
8230DB003416	Kilcarberry Park	3416	53.3181532732	-6.4414435658
8230DB003417	Grange Castle GC	3417	53.3183422522	-6.4352826767
8230DB003418	Castlegrange Green	3418	53.3200332113	-6.4271752525
8230DB003419	Rath Gael Estate	3419	53.3203785143	-6.4240553792
8230DB003420	Cherrywood Park	3420	53.3190069282	-6.4202483418
8230DB003421	Old Church Avenue	3421	53.3197551694	-6.4149971188
8230DB003422	Cherrywood Drive	3422	53.3208176355	-6.4117604664
8230DB003423	Cherrywood Grove	3423	53.3218033114	-6.4074907471
8230DB003425	Newlands Cross	3425	53.3139017329	-6.3919962095
8230DB003426	Citywest Hotel	3426	53.2829618301	-6.4411648575
8230DB003427	Newlands Cross	3427	53.3125160593	-6.3918832097
8230DB003428	Bushfield	3428	53.3112601638	-6.3987437630
8230DB003432	Bianconi Avenue	3432	53.2913661434	-6.4281986078
8230DB003434	Saggart	3434	53.2802933825	-6.4446811616
8230DB003435	Mill Road	3435	53.2816589110	-6.4480808554
8230DB003436	Spring Bank	3436	53.2833133145	-6.4529700632
8230DB003437	Fitzmaurice Road	3437	53.2834257325	-6.4588750105
8230DB003438	Bianconi Avenue	3438	53.2914440315	-6.4279707431
8230DB003439	Maple Grove	3439	53.2826795783	-6.4630410917
8230DB003440	Rathcoole SC	3440	53.2818216527	-6.4655163755
8230DB003441	Rathcoole Village	3441	53.2811878780	-6.4728574589
8230DB003443	Holy Family NS	3443	53.2800981357	-6.4776051459
8230DB003444	Hillview	3444	53.2811856770	-6.4747921069
8230DB003445	Rathcoole Village	3445	53.2813357591	-6.4717724222
8230DB003446	Scoil Chronain	3446	53.2815650122	-6.4679250602
8230DB003447	Rathcoole SC	3447	53.2819173876	-6.4652729945
8230DB003448	Maple Grove	3448	53.2828225460	-6.4629759718
8230DB003449	Fitzmaurice Road	3449	53.2835347002	-6.4589610743
8230DB003453	Spring Bank	3453	53.2829608090	-6.4528178264
8230DB003454	Millrace Estate	3454	53.2816538378	-6.4476911203
8230DB003455	Saggart	3455	53.2803490444	-6.4448141082
8230DB003456	Citywest Hotel	3456	53.2838029654	-6.4408792799
8230DB003457	Garter Lane	3457	53.2900246106	-6.4382827520
8230DB003461	Green Isle Hotel	3461	53.3095937536	-6.4045087041
8230DB003465	Boot Road	3465	53.3167666744	-6.3958359518
8230DB003886	Primrose Lane	3886	53.3556904165	-6.4541656340
8230DB003887	Ardeevin Avenue	3887	53.3552287992	-6.4587792832
8230DB003888	Old Cornmill Road	3888	53.3551537749	-6.4627179256
8230DB003890	Dodsboro Road	3890	53.3506892844	-6.4643055867
8230DB003891	Woodview Heights	3891	53.3519418728	-6.4631639866
8230DB003892	Weston Estate	3892	53.3561401852	-6.4751514998
8230DB003893	Weston Aerodrome	3893	53.3530841328	-6.4807736272
8230DB003896	Dept of Agriculture	3896	53.3468877870	-6.4946618799
8230DB003943	Dept of Agriculture	3943	53.3470719009	-6.4942949194
8230DB003945	Weston Aerodrome	3945	53.3537017132	-6.4798653584
8230DB003946	Weston Estate	3946	53.3561153446	-6.4753176392
8230DB003947	Celbridge Road	3947	53.3581648570	-6.4732312996
8230DB003949	Leixlip Road	3949	53.3555169186	-6.4602110742
8230DB003950	Ball Alley House	3950	53.3556024866	-6.4550100945
8230DB004001	Liffey Valley Golf	4001	53.3589228489	-6.4720623814
8230DB004004	The Pines	4004	53.2500383971	-6.4542458220
8230DB004005	Glenareen	4005	53.2477061892	-6.4559932267
8230DB004006	Brittas Grange	4006	53.2415808384	-6.4556443914
8230DB004007	Brittas Cottages	4007	53.2380164533	-6.4552483635
8230DB004008	McDonagh's Lane	4008	53.2368000017	-6.4543183914
8230DB004009	Listeen Road	4009	53.2316203586	-6.4575907409
8230DB004010	Fairway View	4010	53.2328442315	-6.4563184005
8230DB004069	Fairway View	4069	53.2326963543	-6.4566982145
8230DB004070	McDonagh's Lane	4070	53.2374745124	-6.4550431580
8230DB004071	Brittas Grange	4071	53.2413671672	-6.4558019126
8230DB004072	Glenareen	4072	53.2486534276	-6.4555695006
8230DB004073	The Pines	4073	53.2506077262	-6.4537907030
8230DB004327	Liffey Valley Golf	4327	53.3510620658	-6.4383204732
8230DB004341	The Square	4341	53.2856558425	-6.3723742773
8230DB004342	The Square Tallaght	4342	53.2861056440	-6.3730621139
8230DB004344	The Square	4344	53.2857103567	-6.3724172006
8230DB004347	Tallaght Luas	4347	53.2862220524	-6.3750075131
8230DB004348	Tallaght Luas	4348	53.2866720396	-6.3750504312
8230DB004359	Hollyville Lawn	4359	53.3579749523	-6.3790994748
8230DB004360	Robin Villas	4360	53.3571539461	-6.3735869504
8230DB004361	Palmerstown Village	4361	53.3556115756	-6.3712119575
8230DB004379	Red Cow Luas	4379	53.3162963466	-6.3737150862
8230DB004401	Kennelsfort Road	4401	53.3547555334	-6.3717103054
8230DB004409	Clondalkin Village	4409	53.3223471943	-6.3930897180
8230DB004410	St Mark's Grove	4410	53.3452489650	-6.4065269261
8230DB004411	Shancastle Park	4411	53.3509677183	-6.4046913177
8230DB004435	Tallaght Village	4435	53.2888429203	-6.3635683770
8230DB004436	IT Tallaght	4436	53.2891682645	-6.3669758697
8230DB004438	Citywest Campus	4438	53.2933146002	-6.4226066970
8230DB004440	Brookview Road	4440	53.2864295444	-6.4070367949
8230DB004441	Brookfield Road	4441	53.2885271750	-6.4046038536
8230DB004445	Killinarden	4445	53.2808108887	-6.3888898389
8230DB004446	Airton Road	4446	53.2939990703	-6.3555105485
8230DB004532	Hazelwood Crescent	4532	53.3120123635	-6.4052439212
8230DB004534	Park View Lawns	4534	53.3131218760	-6.4082341743
8230DB004535	St John's Green	4535	53.3156444386	-6.4080052234
8230DB004536	Hazelwood Crescent	4536	53.3121143907	-6.4054802401
8230DB004537	Oak Way	4537	53.3108722094	-6.4019848358
8230DB004545	Grange Castle	4545	53.3192830972	-6.4343776700
8230DB004549	Woodford Drive	4549	53.3212566233	-6.3775944194
8230DB004550	Watery Lane	4550	53.3249165794	-6.3903360081
8230DB004551	Woodford Walk	4551	53.3264970336	-6.3829202703
8230DB004552	Grange Castle Park	4552	53.3250858127	-6.4395996080
8230DB004554	Pfizer	4554	53.3269276514	-6.4395474045
8230DB004555	Grange Castle Park	4555	53.3250293592	-6.4394065107
8230DB004557	Barrack Court	4557	53.2812937024	-6.4691944893
8230DB004558	Newcastle Golf C	4558	53.3175755364	-6.4718137392
8230DB004559	Newcastle Golf C	4559	53.3175359491	-6.4715299748
8230DB004560	School Road	4560	53.2794950692	-6.4775366048
8230DB004561	Foxborough Road	4561	53.3417655017	-6.4237323330
8230DB004562	Foxborough Road	4562	53.3406580870	-6.4242687614
8230DB004564	School Road	4564	53.2773250034	-6.4800429739
8230DB004577	Wellington Lane	4577	53.2954445561	-6.3231258391
8230DB004578	St Jude's GAA Club	4578	53.2975628501	-6.3261184057
8230DB004599	Hermitage Road	4599	53.3577587404	-6.4233374330
8230DB004601	Ballyowen Park	4601	53.3557559201	-6.4220893470
8230DB004602	The Penny Hill	4602	53.3476264674	-6.4244773934
8230DB004603	Castle Road	4603	53.3460962010	-6.4202232116
8230DB004604	Earlsfort Road	4604	53.3444031949	-6.4186187011
8230DB004605	Foxborough Hall	4605	53.3433333620	-6.4219924181
8230DB004606	Balgaddy Road	4606	53.3397930859	-6.4261477856
8230DB004607	Moy Glas Dene	4607	53.3403411668	-6.4302273819
8230DB004608	Griffeen Road	4608	53.3424090533	-6.4323290634
8230DB004609	Elm Wood	4609	53.3459394847	-6.4328754104
8230DB004610	Lucan Leisure Centre	4610	53.3479417579	-6.4375183009
8230DB004611	St Finnian's	4611	53.3489238790	-6.4397654995
8230DB004612	Arthur Griffith Park	4612	53.3474491564	-6.4424628711
8230DB004613	Esker Cottages	4613	53.3450849760	-6.4445015402
8230DB004616	Lucan Comm College	4616	53.3476964777	-6.4511054090
8230DB004617	Pfizer Ireland	4617	53.3266657524	-6.4394518738
8230DB004619	Foxborough	4619	53.3398944788	-6.4263392773
8230DB004620	Lucan Comm College	4620	53.3472363632	-6.4509718903
8230DB004623	Balgaddy Road	4623	53.3404183669	-6.4306300196
8230DB004624	Lucan Leisure Centre	4624	53.3479125818	-6.4366632191
8230DB004625	Griffeen Road	4625	53.3454409603	-6.4318723826
8230DB004626	Arthur Griffith Park	4626	53.3473099256	-6.4428134052
8230DB004627	St Finnian's	4627	53.3491988362	-6.4394850871
8230DB004628	Moy Glas Park	4628	53.3433597332	-6.4321740378
8230DB004629	Foxborough Hall	4629	53.3434890597	-6.4222119478
8230DB004630	Earlsfort	4630	53.3446569215	-6.4187745204
8230DB004631	Castle Road	4631	53.3466226684	-6.4226519623
8230DB004632	Ballyowen Road	4632	53.3475857122	-6.4247943177
8230DB004633	Ballyowen Park	4633	53.3549801618	-6.4218776426
8230DB004640	Tallaght Hospital	4640	53.2893956248	-6.3737470855
8230DB004641	Jobstown Road	4641	53.2828723214	-6.4018150450
8230DB004642	Russell Estate	4642	53.2808447607	-6.4034353650
8230DB004643	Jobstown Road	4643	53.2808204191	-6.4036312292
8230DB004644	Russell Lane	4644	53.2836757267	-6.4027449138
8230DB004645	Swiftbrook Avenue	4645	53.2848609679	-6.4060152833
8230DB004646	Tallaght Hospital	4646	53.2894387134	-6.3742704404
8230DB004647	South Dublin CC	4647	53.2900574733	-6.3715319488
8230DB004662	Hillcrest Park	4662	53.3133051864	-6.3412160640
8230DB004663	Watery Lane	4663	53.3251423197	-6.3890814933
8230DB004664	Clondalkin Town C	4664	53.3222848032	-6.3924615903
8230DB004665	St Joseph's NS	4665	53.3172387614	-6.3955180568
8230DB004666	Fonthill Road	4666	53.3168234643	-6.3980552006
8230DB004667	St John's Estate	4667	53.3174788210	-6.4013477633
8230DB004668	Cherrywood Avenue	4668	53.3203385343	-6.4061643229
8230DB004669	Mill Church Way	4669	53.3198995825	-6.4218214762
8230DB004670	St Cuthberts Court	4670	53.3212285006	-6.4224028897
8230DB004671	Fonthill Road	4671	53.3201544538	-6.4058409529
8230DB004672	St John's Estate	4672	53.3175476725	-6.4011200465
8230DB004673	Boot Road	4673	53.3180971355	-6.3951856606
8230DB004674	Yellow Meadows Dr	4674	53.3260815608	-6.3827708448
8230DB004677	Bawnogue Road	4677	53.3230137745	-6.4099675951
8230DB004688	Shancastle Park	4688	53.3504093402	-6.4046070219
8230DB004689	Fonthill Retail Park	4689	53.3476991984	-6.4055944137
8230DB004690	Fonthill Retail Park	4690	53.3495094393	-6.4051963972
8230DB004691	Rowlagh Crescent	4691	53.3435086159	-6.4074478905
8230DB004713	Bianconi Avenue	4713	53.2912892220	-6.4271364109
8230DB004714	Castle Drive	4714	53.2887472357	-6.4238549251
8230DB004715	Liffey Valley SC	4715	53.3526793491	-6.3955992281
8230DB004749	Ballycullen Road	4749	53.2854266902	-6.3304474577
8230DB004750	Glenvara Park	4750	53.2824849850	-6.3302621953
8230DB004751	Ballycullen Drive	4751	53.2790175769	-6.3323318845
8230DB004754	Ballycullen Drive	4754	53.2782081739	-6.3368021880
8230DB004755	Ballycullen Avenue	4755	53.2784903515	-6.3422197816
8230DB004756	Scoil Treasa	4756	53.2803735470	-6.3399723742
8230DB004757	Ballycullen Drive	4757	53.2783251651	-6.3368126411
8230DB004758	Carrig Wood	4758	53.2791234887	-6.3321927945
8230DB004759	Glenvara Park	4759	53.2824425878	-6.3304438172
8230DB004760	Sally Park Close	4760	53.2853558741	-6.3305252109
8230DB004762	Westbourne Lawn	4762	53.3209017014	-6.4194428269
8230DB004763	Mill Court Avenue	4763	53.3212164436	-6.4167442589
8230DB004795	Liffey Valley SC	4795	53.3524180232	-6.3955489560
8230DB004796	Glenfield	4796	53.3473632434	-6.4060124917
8230DB004797	St Ronan's Avenue	4797	53.3370651573	-6.4054955935
8230DB004798	Coldcut Road	4798	53.3456142785	-6.3809201817
8230DB004799	Ballyfermot Road	4799	53.3451937376	-6.3790737219
8230DB004861	Rossmore Road	4861	53.2966392602	-6.3211587283
8230DB004863	Orwell Road	4863	53.2993030413	-6.3194788892
8230DB004864	Rossmore Road	4864	53.2974519836	-6.3201516759
8230DB004865	Rossmore Drive	4865	53.2961663198	-6.3214023115
8230DB004869	St Colmcille's Way	4869	53.2791145417	-6.3187565065
8230DB004870	Woodstown	4870	53.2766673917	-6.3300991027
8230DB004871	Wood Dale View	4871	53.2761106878	-6.3365687317
8230DB004872	Parklands	4872	53.2755620148	-6.3423481072
8230DB004873	Old Court Farm	4873	53.2750327916	-6.3469569877
8230DB004874	Old Court Road	4874	53.2746971546	-6.3506286338
8230DB004877	Firhouse Road West	4877	53.2765733789	-6.3595835554
8230DB004878	St Martin De Porres	4878	53.2767837933	-6.3663983810
8230DB004880	St Martin De Porres	4880	53.2769456994	-6.3664072017
8230DB004882	Old Court Road	4882	53.2747920314	-6.3503400819
8230DB004883	Old Court Farm	4883	53.2751389287	-6.3468329335
8230DB004884	Parklands	4884	53.2756284398	-6.3426004515
8230DB004885	Wood Dale View	4885	53.2762189049	-6.3365945197
8230DB004886	Woodstown	4886	53.2768593539	-6.3296867419
8230DB004887	St Colmcille's Way	4887	53.2794729155	-6.3180376087
8230DB004888	Palmerstown Crescent	4888	53.3474297702	-6.3789288092
8230DB004927	Hazel Grove	4927	53.2748355655	-6.3943476944
8230DB004928	Killinarden Comm Sch	4928	53.2759929207	-6.3948591280
8230DB004929	Verschoyle Avenue	4929	53.2808055659	-6.4214178141
8230DB004930	Citywest Avenue	4930	53.2875697149	-6.4224883639
8230DB004931	Orchard Avenue	4931	53.2890187819	-6.4253598791
8230DB004932	Magna Drive	4932	53.2788609881	-6.4204997498
8230DB004933	Belfry	4933	53.2776403004	-6.4192701430
8230DB004960	Citywest Road	4960	53.2850505921	-6.4216212865
8230DB005008	Belgard Square North	5008	53.2904501890	-6.3693569939
8230DB005011	Belgard Road	5011	53.3024709725	-6.3768812913
8230DB005022	Citywest Campus	5022	53.2933804602	-6.4228292859
8230DB005023	Cushlawn Avenue	5023	53.2757020483	-6.3733972941
8230DB005024	Marlfield Drive	5024	53.2707272089	-6.3710973009
8230DB005056	Hermitage Clinic	5056	53.3575214900	-6.4027939276
8230DB005058	Ballyowen Road	5058	53.3508988211	-6.4224940763
8230DB005119	Brownsbarn Orchard	5119	53.2979015972	-6.4201272526
8230DB005120	Kingswood Maldron	5120	53.3007578572	-6.4186264782
8230DB005121	Green Isle Road	5121	53.3044704091	-6.4139277822
8230DB005122	Manor Drive	5122	53.3069803055	-6.4073522265
8230DB005123	Green Isle Road	5123	53.3070471659	-6.4069745913
8230DB005124	Camac Valley	5124	53.3042859427	-6.4142497219
8230DB005125	Brownsbarn Orchard	5125	53.2985035390	-6.4194299060
8230DB005129	Butterfield Avenue	5129	53.2977087167	-6.2857701581
8230DB005130	Charleville Square	5130	53.2966935916	-6.2933270594
8230DB005131	Charleville Square	5131	53.2969745380	-6.2916055632
8230DB005132	Owendore Avenue	5132	53.2979462205	-6.2866608216
8230DB005133	Castle Park	5133	53.2905101107	-6.3430594097
8230DB005138	Esker Lodge	5138	53.3516756949	-6.4343924558
8230DB005150	Whitehall Rd West	5150	53.3155776825	-6.3173686532
8230DB005161	Marlfield	5161	53.2708909805	-6.3719007108
8230DB005162	Cushlawn Avenue	5162	53.2762463685	-6.3737664981
8230DB005164	Fforster Green	5164	53.3503767320	-6.4231141973
8230DB005169	Ballymount Avenue	5169	53.3147179999	-6.3536635081
8230DB006001	Kingswood Avenue	6001	53.2944765104	-6.4193985817
8230DB006002	Kingswood Avenue	6002	53.2952697239	-6.4182141612
8230DB006003	Green Isle Hotel	6003	53.3099959556	-6.4036683253
8230DB006011	Michael Collins Park	6011	53.3275796965	-6.3965412500
8230DB006013	Nangor Rd Roundabout	6013	53.3240620678	-6.4056802665
8230DB006014	Michael Collins Park	6014	53.3274402860	-6.3975373391
8230DB006075	Whitebrook Park	6075	53.2832294373	-6.3909435015
8230DB006083	Walkinstown Crescent	6083	53.3171052967	-6.3372112373
8230DB006095	Glenshane	6095	53.2867623972	-6.3963302942
8230DB006119	The Beeches	6119	53.3112989388	-6.4906318772
8230DB006124	St Brigid's Home	6124	53.2553873155	-6.4487922850
8230DB006128	Ballycullen Avenue	6128	53.2831019273	-6.3409764368
8230DB006132	Rossmore Drive	6132	53.2956361539	-6.3233283618
8230DB006133	Laraghcon	6133	53.3607693710	-6.4521487829
8230DB006134	Laraghcon	6134	53.3608260222	-6.4516659402
8230DB006141	Long Mile Road	6141	53.3236063663	-6.3497034762
8230DB006143	Rosebank	6143	53.3282559720	-6.3933630870
8230DB006144	Robinhood Ind Estate	6144	53.3233985618	-6.3489759216
8230DB006145	Killeen Road	6145	53.3248802959	-6.3553889840
8230DB006146	Knockmitten	6146	53.3263702910	-6.3604660335
8230DB006147	Willow Road	6147	53.3269572820	-6.3659082366
8230DB006149	Riverview Park	6149	53.3282928172	-6.3748502176
8230DB006150	Woodford	6150	53.3282794863	-6.3851198719
8230DB006152	Woodford	6152	53.3284283858	-6.3841684026
8230DB006153	Riverview Park	6153	53.3284320527	-6.3745146294
8230DB006154	Knockmitten	6154	53.3264321427	-6.3603885979
8230DB006155	Killeen Road	6155	53.3249851986	-6.3551747775
8230DB006163	Greentrees Park	6163	53.3095400906	-6.3207275611
8230DB006170	Cushlawn	6170	53.2770991955	-6.3750087320
8230DB006185	Greenoge	6185	53.2967037402	-6.4702636705
8230DB006186	Grants Row	6186	53.2930614155	-6.4721939236
8230DB006187	Ballynakelly	6187	53.2950889867	-6.4888332544
8230DB006188	Newcastle Road	6188	53.2936832562	-6.4786521797
8230DB006215	College Road	6215	53.2940778840	-6.4715575997
8230DB006216	College Road	6216	53.2940848387	-6.4819531668
8230DB006242	Rosebank	6242	53.3282983719	-6.3938419209
8230DB006243	Willow Road	6243	53.3270818148	-6.3658133991
8230DB006244	Alpine Heights	6244	53.3227296405	-6.4082068190
8230DB006245	Alpine Heights	6245	53.3228580121	-6.4083971888
8230DB006247	Dunawley Avenue	6247	53.3254846239	-6.4051918673
8230DB006277	Stocking Avenue	6277	53.2729125499	-6.3130172691
8230DB006278	Stocking Wood	6278	53.2733455239	-6.3156691954
8230DB006279	Woodstown	6279	53.2717801942	-6.3225828545
8230DB006282	Ballycullen Road	6282	53.2716360705	-6.3289607888
8230DB006283	Hunter's Avenue	6283	53.2723344986	-6.3294133499
8230DB006285	Dalriada	6285	53.2711308950	-6.3262666791
8230DB006286	Woodstown	6286	53.2719366198	-6.3222018863
8230DB006287	Stocking Wood	6287	53.2734534408	-6.3163097065
8230DB006288	Stocking Avenue	6288	53.2729429685	-6.3126262244
8230DB006290	Adamstown Station	6290	53.3362617218	-6.4669412560
8230DB006298	Airpark Avenue	6298	53.2745067496	-6.3037477610
8230DB006324	Prospect Estate	6324	53.2763361471	-6.3021907801
8230DB006325	Airpark Avenue	6325	53.2745482533	-6.3035062024
8230DB006326	Woodstown SC	6326	53.2753726290	-6.3313491714
8230DB006335	Woodstown Avenue	6335	53.2725839741	-6.3298984218
8230DB006336	Prospect Estate	6336	53.2764362416	-6.3022767848
8230DB006339	Stocking Lane	6339	53.2793568421	-6.3009763027
8230DB006341	Stocking Hill	6341	53.2730124593	-6.3086500397
8230DB006342	Stocking Hill	6342	53.2730471679	-6.3079289498
8230DB006343	Glenlyon Park	6343	53.2796001944	-6.3315743753
8230DB007015	Lynch's Lane	7015	53.3306866896	-6.4314827532
8230DB007016	Lynch's Lane	7016	53.3307533232	-6.4317655770
8230DB007049	Vesey Park	7049	53.3513053901	-6.4493973227
8230DB007050	Hillcrest	7050	53.3510213972	-6.4510599652
8230DB007062	Whitebrook	7062	53.2848097661	-6.3934937900
8230DB007063	Rosemount SC	7063	53.2902443257	-6.2980242267
8230DB007064	Rosemount SC	7064	53.2895096418	-6.2981884324
8230DB007065	Ballyroan Road	7065	53.2883606677	-6.2982941000
8230DB007066	Butterfield Park	7066	53.2877029554	-6.2962953327
8230DB007067	Whitechurch Way	7067	53.2778338339	-6.2887551039
8230DB007069	Boden Park	7069	53.2793912490	-6.3065535951
8230DB007070	Boden Park	7070	53.2794290973	-6.3066870662
8230DB007117	Castlegate Drive	7117	53.3376401707	-6.4609152504
8230DB007118	Stratton Grove	7118	53.3373386368	-6.4640194840
8230DB007119	Castlegate Drive	7119	53.3378133320	-6.4597076902
8230DB007120	Stratton Grove	7120	53.3375568516	-6.4635160988
8230DB007121	Whitestown Ind Est	7121	53.2784056573	-6.3739244503
8230DB007122	Tallaght Stadium	7122	53.2826162348	-6.3748893823
8230DB007123	Tallaght Stadium	7123	53.2832953015	-6.3752535507
8230DB007127	Castlegate Walk	7127	53.3382071140	-6.4567952757
8230DB007128	Castlegate Walk	7128	53.3379670784	-6.4569991587
8230DB007137	Griffeen Avenue	7137	53.3406696929	-6.4436410566
8230DB007138	Johnsbridge Avenue	7138	53.3412923406	-6.4452102685
8230DB007139	Rossberry Avenue	7139	53.3392745037	-6.4372945756
8230DB007140	Rossberry Avenue	7140	53.3392307653	-6.4373862775
8230DB007141	Haydens Park	7141	53.3397346835	-6.4408668777
8230DB007142	Foxborough Rise	7142	53.3398730210	-6.4288029125
8230DB007143	Castlegate Way	7143	53.3393470861	-6.4532100760
8230DB007165	Robin Villas	7165	53.3572174628	-6.3742906390
8230DB007168	Newcastle Road	7168	53.3452148286	-6.4517210403
8230DB007177	Tynan Hall Park	7177	53.3069450475	-6.3727800299
8230DB007178	Tynan Hall Park	7178	53.3070277393	-6.3729119385
8230DB007180	Heatherview Close	7180	53.2769695115	-6.3727493477
8230DB007183	Firhouse Road West	7183	53.2770640328	-6.3724308529
8230DB007184	Esker Lane	7184	53.3521576798	-6.4361924108
8230DB007185	Woodview	7185	53.3547622177	-6.4609293162
8230DB007186	Lucan Spa Hotel	7186	53.3567952920	-6.4652578611
8230DB007187	Kew Park	7187	53.3575628311	-6.4676340386
8230DB007193	Tandy's Lane	7193	53.3539420024	-6.4586604685
8230DB007201	Lindisfarne Park	7201	53.3281014584	-6.4113547836
8230DB007214	Belgard Square West	7214	53.2875013723	-6.3752289450
8230DB007222	Killinarden Park	7222	53.2772071897	-6.3776588330
8230DB007229	Grange	7229	53.3300889307	-6.4510827861
8230DB007230	Cuisine de France	7230	53.3223763430	-6.4537789442
8230DB007231	Finnstown Castle	7231	53.3403189085	-6.4526042391
8230DB007239	The Oval	7239	53.3540614070	-6.3689275667
8230DB007331	Killinarden Park	7331	53.2771737031	-6.3778400468
8230DB007354	Naas Road	7354	53.3169711453	-6.3750853044
8230DB007386	Foxborough Park	7386	53.3400524653	-6.4274147136
8230DB007395	Slade Hill	7395	53.2652109743	-6.4411959987
8230DB007432	Mill Road	7432	53.2818758392	-6.4502475530
8230DB007440	An Post Edmonstown	7440	53.2761302275	-6.2972055214
8230DB007441	The Merry Ploughboy	7441	53.2643730951	-6.2971630382
8230DB007442	St Enda's GAA Club	7442	53.2824897977	-6.3007020335
8230DB007443	Templeroan Estate	7443	53.2814641732	-6.3069515356
8230DB007444	The Glen	7444	53.2823865091	-6.2991313999
8230DB007445	Scholarstown Road	7445	53.2796117510	-6.3024658378
8230DB007446	Templeroan Estate	7446	53.2811782039	-6.3070678198
8230DB007447	Grange Golf Club	7447	53.2815889392	-6.2811214561
8230DB007448	Grange Golf Club	7448	53.2817369881	-6.2814154592
8230DB007449	Ballyboden Crescent	7449	53.2818173347	-6.2957796232
8230DB007459	Bianconi Avenue	7459	53.2908418207	-6.4272878487
8230DB007460	Citywest SC	7460	53.2826316203	-6.4215304732
8230DB007473	Foxdene Gardens	7473	53.3390526491	-6.4082746924
8230DB007509	Fettercairn Road	7509	53.2929506390	-6.3899931023
8230DB007510	Cloverhill Road	7510	53.3471906904	-6.3844952866
8230DB007550	Donomore Crescent	7550	53.2735257417	-6.3805721751
8230DB007563	Weston Hockey Club	7563	53.3455700831	-6.4513927622
8230DB007714	Cuisine de France	7714	53.3221886579	-6.4538607857
8230DB007748	Divine Mercy NS	7748	53.3399111526	-6.4153759795
8230DB007749	Dodsborough Road	7749	53.3505986746	-6.4642487598
8230DB007750	Dunawley	7750	53.3257788718	-6.4050157556
8230DB007751	Esker Glebe	7751	53.3506982581	-6.4386792588
8230DB007752	Esker Park	7752	53.3524015382	-6.4308057003
8230DB007754	Clayton Hotel	7754	53.3537969976	-6.4011906127
8230DB007756	Clondalkin Fonthill	7756	53.3332606202	-6.4066435206
8230DB007757	Clondalkin Fonthill	7757	53.3335523001	-6.4069479669
8230DB007760	Glen Vale	7760	53.3447268312	-6.4261012369
8230DB007761	Glen Vale	7761	53.3442584251	-6.4267042269
8230DB007762	Haydens Lane	7762	53.3429982734	-6.4464548010
8230DB007763	Haydens Lane	7763	53.3434521377	-6.4461078918
8230DB007768	Larkfield	7768	53.3544513469	-6.4179162206
8230DB007769	Larkfield	7769	53.3544393514	-6.4183673396
8230DB007772	Liffey Avenue	7772	53.3537599008	-6.4132248423
8230DB007773	Liffey Avenue	7773	53.3536866354	-6.4131224083
8230DB007774	Lucan Garda Station	7774	53.3563059149	-6.4510335810
8230DB007775	Lucan Main Street	7775	53.3559854577	-6.4498884341
8230DB007776	Buirg an Rí	7776	53.3391606055	-6.4190980196
8230DB007780	Méile an Rí	7780	53.3398289056	-6.4152739076
8230DB007781	Monastery Gate	7781	53.3183570405	-6.3758732058
8230DB007782	Monastery Gate	7782	53.3181136661	-6.3751619766
8230DB007783	Foxdene Avenue	7783	53.3412856296	-6.4112701872
8230DB007784	Foxdene Avenue	7784	53.3411856120	-6.4111837985
8230DB007791	Red Cow Luas	7791	53.3171369630	-6.3701108681
8230DB007792	Saint Lomans Road	7792	53.3540035212	-6.4078978795
8230DB007793	Saint Lomans Road	7793	53.3538559794	-6.4076179550
8230DB007796	Somerton	7796	53.3429665550	-6.4523131265
8230DB007797	Somerton	7797	53.3428919595	-6.4521055712
8230DB007800	The Paddocks Drive	7800	53.3476213982	-6.4654672597
8230DB007801	The Paddocks Drive	7801	53.3490241137	-6.4648160575
8230DB007803	Tor an Rí	7803	53.3390508450	-6.4182761405
8230DB007806	St Andrews Drive	7806	53.3545562472	-6.4231251516
8230DB007807	St Andrews Drive	7807	53.3544684497	-6.4226026057
8230DB007808	Willsbrook Park	7808	53.3529675482	-6.4273749254
8230DB007809	Willsbrook Park	7809	53.3527419705	-6.4273081207
8230DB007810	Woodview Heights	7810	53.3517430715	-6.4630810099
8230DB010334	Russell Lane	10334	53.2838310570	-6.4029340908
8230DB07755	Clayton Hotel	7755	53.3535458644	-6.4012300570
8240DB000124	Virgin Mary Church	124	53.3948920736	-6.2605890079
8240DB000219	Ellenfield Road	219	53.3878276229	-6.2385356276
8240DB000221	Shanowen Road	221	53.3897213027	-6.2468922343
8240DB000222	Shanliss Road	222	53.3899454454	-6.2493037167
8240DB000223	Shanliss Drive	223	53.3910623454	-6.2519192039
8240DB000224	Shanard Road	224	53.3908348357	-6.2541838783
8240DB000225	Shanowen Avenue	225	53.3906666786	-6.2574384515
8240DB000226	Shanard Avenue	226	53.3911405642	-6.2622004644
8240DB000227	Shanliss Drive	227	53.3911438084	-6.2513445056
8240DB000229	Oldtown Road	229	53.3913995159	-6.2565364327
8240DB000230	Shanowen Road	230	53.3898880230	-6.2490655079
8240DB000231	Shanvarna Road Est	231	53.3892400770	-6.2459497638
8240DB000232	Shantalla Avenue	232	53.3879844260	-6.2369805787
8240DB000323	Silloge Golf Club	323	53.4129298607	-6.2654491010
8240DB000324	Harristown	324	53.4177226808	-6.2786441691
8240DB000327	Silloge Golf Club	327	53.4131980312	-6.2653479257
8240DB000543	Kilbarrack Road	543	53.3850576988	-6.1423886929
8240DB000544	Bayside	544	53.3861638881	-6.1378152028
8240DB000545	Kilbarrack Cemetery	545	53.3871119818	-6.1334889439
8240DB000546	Sutton Park	546	53.3880202509	-6.1283523470
8240DB000547	Binn Eadair View	547	53.3886221988	-6.1231838984
8240DB000548	St Fintans High Sch	548	53.3888743339	-6.1180758392
8240DB000549	Sutton	549	53.3890880702	-6.1145330944
8240DB000550	Sutton Cross	550	53.3896890492	-6.1082066099
8240DB000551	Church Road	551	53.3900459638	-6.1046423440
8240DB000552	Burrow School	552	53.3906894758	-6.1010201488
8240DB000553	Claremont Road	553	53.3909828769	-6.0906772838
8240DB000554	Howth Lodge	554	53.3906145259	-6.0861980118
8240DB000555	Howth Castle	555	53.3888976951	-6.0794790413
8240DB000557	Howth Station	557	53.3888326455	-6.0732122113
8240DB000558	Howth Harbour	558	53.3884192473	-6.0704343268
8240DB000559	Abbey Street Howth	559	53.3883506212	-6.0650848840
8240DB000560	Main Street Howth	560	53.3859600179	-6.0651031111
8240DB000562	Thormanby Lawns	562	53.3818815926	-6.0591546189
8240DB000563	Dungriffan Road	563	53.3802554765	-6.0575449566
8240DB000564	Casana View	564	53.3783349705	-6.0566252558
8240DB000565	Thormanby Hill	565	53.3752546889	-6.0545860833
8240DB000566	Kitestown Road	566	53.3737697479	-6.0561267262
8240DB000567	Howth Summit	567	53.3723810177	-6.0586097490
8240DB000568	Kitestown Road	568	53.3739352623	-6.0558035533
8240DB000569	Thormanby Hill	569	53.3755367941	-6.0547986846
8240DB000570	Thormanby Woods	570	53.3773332829	-6.0558291167
8240DB000571	Mariners Cove	571	53.3785641602	-6.0569004223
8240DB000572	Upper Cliff Road	572	53.3804205699	-6.0577478953
8240DB000573	Thormanby Lawns	573	53.3822234420	-6.0597253592
8240DB000574	Howth Church	574	53.3846161045	-6.0642620285
8240DB000575	Main Street Howth	575	53.3859830957	-6.0654177871
8240DB000576	Howth Abbey	576	53.3877600722	-6.0663595802
8240DB000577	Howth Harbour	577	53.3881631427	-6.0701602436
8240DB000579	Howth Station	579	53.3886612440	-6.0742874628
8240DB000580	Howth Castle	580	53.3887743672	-6.0796349477
8240DB000581	Howth Lodge	581	53.3900579034	-6.0839976881
8240DB000582	Claremont Road	582	53.3909588711	-6.0919864995
8240DB000583	Burrow School	583	53.3907651877	-6.1001296531
8240DB000584	Church Road	584	53.3899020975	-6.1052050577
8240DB000585	Sutton Cross	585	53.3893532147	-6.1108376804
8240DB000586	St Fintans High Sch	586	53.3888369378	-6.1168445952
8240DB000587	Baldoyle Rd Junction	587	53.3883203243	-6.1251367074
8240DB000588	Sutton Park	588	53.3880531430	-6.1275841194
8240DB000589	Kilbarrack Cemetery	589	53.3867741300	-6.1343005561
8240DB000590	Bayside	590	53.3861819256	-6.1372431118
8240DB000661	Westend Office Park	661	53.3924222502	-6.3834893566
8240DB000677	Sutton Cross	677	53.3892124206	-6.1093253365
8240DB000678	St Fintan's Church	678	53.3876266455	-6.1056820050
8240DB000679	Santa Sabina	679	53.3864602347	-6.1029824901
8240DB000680	Strand Road	680	53.3839340104	-6.1006894448
8240DB000681	The Moorings	681	53.3812259658	-6.1022230632
8240DB000682	La Vista Avenue	682	53.3795246512	-6.1026294365
8240DB000683	Carrickbrack Lawn	683	53.3776720661	-6.1003067863
8240DB000684	St Fintan's Grove	684	53.3765778729	-6.0976348818
8240DB000685	Sutton Park School	685	53.3754098475	-6.0948461635
8240DB000686	Sutton Castle	686	53.3738558461	-6.0943443916
8240DB000688	Shielmartin Road	688	53.3729127681	-6.0977681898
8240DB000689	Slieverue Lodge	689	53.3748993063	-6.0994682661
8240DB000690	Sutton Dinghy Club	690	53.3764937223	-6.1013813484
8240DB000691	The Moorings	691	53.3814240462	-6.1022443183
8240DB000692	Strand Road	692	53.3839631078	-6.1008234519
8240DB000693	St Fintan's Church	693	53.3868925013	-6.1041660384
8240DB000695	Offington	695	53.3828808908	-6.0989022724
8240DB000696	St Fintan's NS	696	53.3805164747	-6.0943626068
8240DB000697	Howth Cemetery	697	53.3779162605	-6.0908260727
8240DB000698	Howth Golf Club	698	53.3750439177	-6.0899475283
8240DB000699	St Fintan's Road	699	53.3721474312	-6.0881233210
8240DB000700	Shearwater	700	53.3691951778	-6.0833863366
8240DB000701	Ceanchor Road	701	53.3669505774	-6.0790689792
8240DB000702	Old Carrickbrack Rd	702	53.3664933305	-6.0774665825
8240DB000703	Carrickbrack Road	703	53.3661327373	-6.0740565756
8240DB000704	Stella Maris Convent	704	53.3667189310	-6.0663961007
8240DB000707	Howth Summit	707	53.3724895313	-6.0586499021
8240DB000710	Thormanby Road	710	53.3664851387	-6.0658356436
8240DB000711	Stella Maris Convent	711	53.3663456388	-6.0683215001
8240DB000712	Carrickbrack Road	712	53.3660337079	-6.0734900033
8240DB000713	Old Carrickbrack Rd	713	53.3662416260	-6.0769068756
8240DB000714	Ceanchor Road	714	53.3671704526	-6.0798856114
8240DB000715	Shearwater	715	53.3692184476	-6.0837159180
8240DB000716	St Fintan's Road	716	53.3724901057	-6.0887542438
8240DB000717	Howth Golf Club	717	53.3754245223	-6.0901409225
8240DB000718	Howth Cemetery	718	53.3784373580	-6.0913739624
8240DB000719	St Fintan's NS	719	53.3802237767	-6.0940449682
8240DB000720	Duncarraig	720	53.3822089346	-6.0979099695
8240DB000733	Forest View	733	53.4494332874	-6.2404739233
8240DB000788	The Oaks	788	53.4458543541	-6.2409681260
8240DB000815	Forrest Little Golf	815	53.4399383841	-6.2500185653
8240DB000905	Yellow Walls Road	905	53.4515617429	-6.1703697812
8240DB000910	Baldoyle Road	910	53.3890081764	-6.1242945659
8240DB000911	St Domhnach's Well	911	53.3910423678	-6.1244757589
8240DB000912	Moyclare	912	53.3934925520	-6.1253905206
8240DB000913	Baldoyle	913	53.3968546328	-6.1265660782
8240DB000914	Willie Nolan Road	914	53.3987568962	-6.1275051379
8240DB000915	College Street	915	53.3984629954	-6.1293978764
8240DB000916	Georgian Hamlet	916	53.3978204105	-6.1314111378
8240DB000917	Admiral Park	917	53.3972551046	-6.1331953816
8240DB000918	Baldoyle Youth Club	918	53.3972217016	-6.1362345615
8240DB000919	Laurence O'Toole Ch	919	53.3966649164	-6.1391461925
8240DB000924	Baldoyle Youth Club	924	53.3973505011	-6.1364244293
8240DB000925	Willie Nolan Road	925	53.3973028351	-6.1333737509
8240DB000927	St. Michael's House	927	53.3989105085	-6.1281300225
8240DB000928	Baldoyle	928	53.3978017566	-6.1267801206
8240DB000929	Warrenhouse Road	929	53.3961828853	-6.1261444535
8240DB000930	Moyclare	930	53.3930552776	-6.1250187849
8240DB000931	Baldoyle Road	931	53.3909048038	-6.1243013759
8240DB000935	Station Road	935	53.3932694395	-6.1203479489
8240DB000936	Strand Road	936	53.3942182425	-6.1223812619
8240DB000938	Red Arches Rd	938	53.4015430636	-6.1303606460
8240DB000940	Moyne Cottages	940	53.4065549106	-6.1347284963
8240DB000941	Moyne Bridge	941	53.4100761025	-6.1368909861
8240DB000942	St Rita's House	942	53.4150379806	-6.1386448900
8240DB000943	Portmarnock Bridge	943	53.4182478297	-6.1421758055
8240DB000944	Coast Road	944	53.4172420695	-6.1422347012
8240DB000945	St Rita's House	945	53.4153095523	-6.1387684293
8240DB000947	Moyne Bridge	947	53.4091864740	-6.1363281752
8240DB000948	Moyne Cottages	948	53.4061434361	-6.1342802189
8240DB000950	Baldoyle Church	950	53.3996460936	-6.1280375738
8240DB000951	Strand Road	951	53.3958427892	-6.1245202838
8240DB000952	Burrowfield Road	952	53.3940655466	-6.1218165739
8240DB000953	Station Road	953	53.3932183764	-6.1199592418
8240DB000957	Howth Junction	957	53.3903211487	-6.1578116715
8240DB000973	Coolock Lane	973	53.3982256279	-6.2427229026
8240DB000974	Santry Avenue	974	53.3978594241	-6.2471592144
8240DB000975	Shanliss Way	975	53.3992795836	-6.2526801785
8240DB000976	Geraldstown Wood	976	53.4009566753	-6.2628982861
8240DB000989	Santry Avenue	989	53.4010421279	-6.2625940198
8240DB000990	Shanliss Way	990	53.3988912223	-6.2507110083
8240DB000992	Coolock Lane	992	53.3981583600	-6.2412068084
8240DB001010	Saint Donagh's Park	1010	53.3905899802	-6.1583413499
8240DB001039	Seamount View	1039	53.4535389280	-6.2053096320
8240DB001040	Ashley Drive	1040	53.4540357100	-6.2120648279
8240DB001041	Swords Road	1041	53.4540581516	-6.2117627229
8240DB001050	Seamount View	1050	53.4536692617	-6.2062076144
8240DB001073	Chamley Park	1073	53.4506925095	-6.1870451258
8240DB001181	Charlestown	1181	53.4057064474	-6.3006528219
8240DB001182	Charlestown	1182	53.4056204697	-6.3009269830
8240DB001206	Balgriffin Cottages	1206	53.4081055545	-6.1781019198
8240DB001207	Fingal Cemetery	1207	53.4107260132	-6.1790128248
8240DB001208	St Doulagh's Church	1208	53.4142982100	-6.1786796615
8240DB001209	St Doolagh's Park	1209	53.4169569995	-6.1779792659
8240DB001210	Posey Row	1210	53.4190328540	-6.1773638986
8240DB001211	St Nicholas NS	1211	53.4212952649	-6.1766050660
8240DB001212	Kinsealy School	1212	53.4205603269	-6.1767418427
8240DB001213	Posey Row	1213	53.4175012467	-6.1777152706
8240DB001214	St Doolagh's Park	1214	53.4153132435	-6.1780495457
8240DB001215	St Doulagh's Church	1215	53.4133944396	-6.1789439421
8240DB001216	Fingal Cemetery	1216	53.4103250597	-6.1786538868
8240DB001217	Balgriffin Cottages	1217	53.4082020655	-6.1779473751
8240DB001517	Oaktree Avenue	1517	53.3774303065	-6.3795029787
8240DB001545	Westend Office Park	1545	53.3927566349	-6.3842886310
8240DB001546	Tyrrelstown	1546	53.4193454713	-6.3824982806
8240DB001550	M50 Flyover	1550	53.4075502913	-6.3007447769
8240DB001551	Rockmount	1551	53.4097001531	-6.3046603040
8240DB001552	Logistics Park	1552	53.4191171200	-6.3070239487
8240DB001553	Newtown Cottages	1553	53.4252131300	-6.3052769371
8240DB001554	Newtown Cottages	1554	53.4248437650	-6.3052163928
8240DB001555	Harristown Lane	1555	53.4182519907	-6.3068627320
8240DB001556	Rockmount	1556	53.4095277849	-6.3039150520
8240DB001557	M50 Flyover	1557	53.4077205381	-6.3007079076
8240DB001579	Heathfield Avenue	1579	53.3947636778	-6.3264260731
8240DB001580	Cappagh Cross	1580	53.3979032077	-6.3343331521
8240DB001581	Cappagh Cross	1581	53.3980680130	-6.3339056498
8240DB001582	Heathfield Avenue	1582	53.3951335310	-6.3271634108
8240DB001622	Shanowen Road	1622	53.3900378357	-6.2464131276
8240DB001623	Omni Park SC	1623	53.3919320702	-6.2462600704
8240DB001624	Schoolhouse Lane	1624	53.3960819781	-6.2454728797
8240DB001625	Morton Stadium	1625	53.4010922757	-6.2432965687
8240DB001626	Santry Close	1626	53.4041676234	-6.2403422575
8240DB001627	Santry Retail Park	1627	53.4082479479	-6.2378874650
8240DB001628	Collinstown Park	1628	53.4137122404	-6.2390756615
8240DB001629	Dardistown Cemetery	1629	53.4169466324	-6.2389871442
8240DB001630	ALSAA Sports Club	1630	53.4218661028	-6.2318924444
8240DB001631	ALSAA Sports Club	1631	53.4224056452	-6.2306963981
8240DB001632	Toberbunny Lodge	1632	53.4205001547	-6.2331227304
8240DB001633	Dardistown Cemetery	1633	53.4181328750	-6.2371477255
8240DB001634	Collinstown Park	1634	53.4134569584	-6.2388304665
8240DB001635	Woodland Ind Est	1635	53.4117049122	-6.2388727772
8240DB001636	Turnapin Lane	1636	53.4082527145	-6.2376014728
8240DB001637	Santry Close	1637	53.4040396514	-6.2401971358
8240DB001638	Morton Stadium	1638	53.4017493780	-6.2421415297
8240DB001639	Schoolhouse Lane	1639	53.3965093891	-6.2451996545
8240DB001640	Omni Park SC	1640	53.3923505010	-6.2459872500
8240DB001645	Collins Avenue Ext	1645	53.3890906991	-6.2640130026
8240DB001669	Castleknock Gate	1669	53.3702317939	-6.3448507946
8240DB001670	Oak Park	1670	53.3702771666	-6.3507250670
8240DB001671	Peck's Lane	1671	53.3711976381	-6.3562049721
8240DB001672	Oak Lodge	1672	53.3719970766	-6.3594354355
8240DB001673	St Brigid's Church	1673	53.3736660287	-6.3631586916
8240DB001674	Hawthorn Lawn	1674	53.3775018170	-6.3662882742
8240DB001675	Ashleigh Green	1675	53.3793553604	-6.3677505149
8240DB001676	Castleknock Avenue	1676	53.3780199158	-6.3752719447
8240DB001678	Carpenterstown Ave	1678	53.3774745695	-6.3814402555
8240DB001679	Oaktree Green	1679	53.3760361782	-6.3827423089
8240DB001680	Bramley Walk	1680	53.3755365761	-6.3889986835
8240DB001681	Sycamore Drive	1681	53.3754026973	-6.3857422412
8240DB001682	Oaktree Green	1682	53.3761370299	-6.3828887893
8240DB001683	Maple Glen	1683	53.3774770141	-6.3816205309
8240DB001684	Oaktree Avenue	1684	53.3776287546	-6.3795555663
8240DB001685	Castleknock Vale	1685	53.3780670815	-6.3754354889
8240DB001686	Parklands	1686	53.3788097383	-6.3725512965
8240DB001687	Ashleigh Green	1687	53.3795885133	-6.3677115340
8240DB001688	Oak Lawns	1688	53.3762088471	-6.3644138943
8240DB001689	Castleknock	1689	53.3726982625	-6.3614073480
8240DB001690	Peck's Lane	1690	53.3715662736	-6.3568670656
8240DB001691	Deerpark Road	1691	53.3706098994	-6.3513884862
8240DB001692	Park View	1692	53.3699665357	-6.3477615042
8240DB001693	Castleknock Gate	1693	53.3704624617	-6.3439852385
8240DB001719	Damastown Close	1719	53.4088792509	-6.4082557822
8240DB001808	Morgan Place	1808	53.3792415516	-6.3542266593
8240DB001813	Blanchardstown Vlge	1813	53.3856797487	-6.3741083131
8240DB001814	Ramor Park	1814	53.3875618068	-6.3789978858
8240DB001816	Waterville Row	1816	53.3930899835	-6.3783818208
8240DB001817	Corduff Crescent	1817	53.3960529762	-6.3748557084
8240DB001818	Aquatic Centre	1818	53.3975634852	-6.3722567627
8240DB001819	Corduff	1819	53.3996329875	-6.3744034661
8240DB001820	Corduff Grove	1820	53.4010807397	-6.3751152630
8240DB001822	St Patrick's Church	1822	53.3996526533	-6.3778314959
8240DB001824	Saddlers Avenue	1824	53.4007957913	-6.3939096972
8240DB001825	Church Road	1825	53.4017651100	-6.3958132448
8240DB001826	Lady's Well Road	1826	53.4059077232	-6.3950858266
8240DB001827	Parslickstown Ave	1827	53.4070419408	-6.3985627381
8240DB001828	Lady's Well Road	1828	53.4070254952	-6.3980068366
8240DB001829	Parslickstown Ave	1829	53.4061988263	-6.3953456019
8240DB001830	Church Road	1830	53.4022055985	-6.3964884833
8240DB001831	Coolmine Cottages	1831	53.4007015089	-6.3935823939
8240DB001833	Blackcourt Road	1833	53.3991770313	-6.3838498818
8240DB001834	Corduff Park	1834	53.3994252142	-6.3789529910
8240DB001835	Corduff	1835	53.4000123493	-6.3752010905
8240DB001836	Aquatic Centre	1836	53.3980119952	-6.3715328603
8240DB001837	Corduff Crescent	1837	53.3958410612	-6.3751344525
8240DB001838	Waterville Road	1838	53.3960110854	-6.3737595872
8240DB001840	Blanchardstown Vlge	1840	53.3879611513	-6.3792833993
8240DB001841	Church Road	1841	53.3861213967	-6.3755196872
8240DB001842	Old Navan Road	1842	53.3849679047	-6.3713392396
8240DB001844	Coolmine Fire Stn	1844	53.3854112079	-6.3961125067
8240DB001845	Morgan Place	1845	53.3790229898	-6.3527169288
8240DB001849	Park Lodge	1849	53.3807918055	-6.3696046176
8240DB001850	Whitestown Park	1850	53.3977476217	-6.3991674214
8240DB001851	The Parochial House	1851	53.3846282168	-6.3721339337
8240DB001852	Clonsilla Road	1852	53.3874063234	-6.3834388758
8240DB001853	Coolmine Woods	1853	53.3846274925	-6.3886404141
8240DB001854	Orchard Court	1854	53.3835844815	-6.3919419238
8240DB001856	Mountview Road	1856	53.3903480644	-6.4023318756
8240DB001857	Mountview Church	1857	53.3911220553	-6.4077908207
8240DB001858	Hartstown Road	1858	53.3908816205	-6.4106565103
8240DB001859	Willow Wood	1859	53.3910357838	-6.4154921616
8240DB001860	St Ciaran's Church	1860	53.3932991277	-6.4187611504
8240DB001861	Hartstown Comm School	1861	53.3967496163	-6.4166633218
8240DB001862	Pinebrook Vale	1862	53.3986159887	-6.4150751834
8240DB001863	Huntstown Green	1863	53.4006152914	-6.4133466093
8240DB001864	Sacred Heart Church	1864	53.4018160069	-6.4103692874
8240DB001865	Ashfield Gardens	1865	53.4010446333	-6.4064428057
8240DB001866	Ashfield Park	1866	53.3998996519	-6.4028161919
8240DB001867	Whitestown	1867	53.3958079084	-6.3999620105
8240DB001869	Sheepmoor Avenue	1869	53.3962484951	-6.3999755555
8240DB001870	Scoil Mhuire NS	1870	53.3980564812	-6.3994114716
8240DB001871	Huntstown Way	1871	53.3996498609	-6.4022841636
8240DB001872	Huntstown Road	1872	53.4007795005	-6.4061068207
8240DB001873	Sacred Heart Church	1873	53.4017062047	-6.4102229893
8240DB001874	Huntstown Court	1874	53.4002318019	-6.4135714192
8240DB001875	Pinebrook Vale	1875	53.3982666335	-6.4151633570
8240DB001876	Hartstown Comm Sch	1876	53.3964359941	-6.4167351144
8240DB001877	St Ciaran's Church	1877	53.3934219094	-6.4185310554
8240DB001878	Oakview	1878	53.3911805159	-6.4155619626
8240DB001879	Blakestown Cross	1879	53.3911728451	-6.4095781430
8240DB001880	Mount View Road	1880	53.3912254456	-6.4074561812
8240DB001881	Fortlawn Drive	1881	53.3905239771	-6.4027162031
8240DB001882	Millennium Park	1882	53.3927725777	-6.3988128484
8240DB001883	Scoil Oilibheir	1883	53.3857448895	-6.3982046607
8240DB001884	Porters Road	1884	53.3855349556	-6.3959575199
8240DB001887	Castlefield Woods	1887	53.3829965720	-6.4104541542
8240DB001888	Lambourn	1888	53.3831732873	-6.4122514855
8240DB001889	Castlefield Court	1889	53.3834166164	-6.4170378623
8240DB001890	Clonsilla Station	1890	53.3835365680	-6.4220242793
8240DB001891	St Joseph's Hospital	1891	53.3866013552	-6.4281499534
8240DB001893	St Joseph's Hospital	1893	53.3869404706	-6.4286486124
8240DB001894	Clonsilla Train Stn	1894	53.3835907683	-6.4234052873
8240DB001895	Clonsilla Road	1895	53.3835260117	-6.4171540657
8240DB001896	Lambourn	1896	53.3833555648	-6.4137930690
8240DB001897	Castlefield Woods	1897	53.3831119557	-6.4103446276
8240DB001898	Lohunda Crescent	1898	53.3875980538	-6.4097565157
8240DB001899	Shelerin Road	1899	53.3877643338	-6.4094195642
8240DB001902	Orchard Court	1902	53.3835372604	-6.3924397855
8240DB001903	Broadway Road	1903	53.3852498860	-6.3874743694
8240DB001904	Springlawn	1904	53.3878416197	-6.3830615573
8240DB001912	Clonsilla Station	1912	53.3836698114	-6.4205461396
8240DB002171	Linnetfields	2171	53.3979296298	-6.4421386345
8240DB002289	Blackcourt Road	2289	53.4011229960	-6.3749181454
8240DB002290	Waterville Terrace	2290	53.3918736208	-6.3722182932
8240DB002294	Mill Road	2294	53.3900864585	-6.3703469574
8240DB002338	Waterville Row	2338	53.3930846749	-6.3779910818
8240DB002468	Blanchardstown Rd N	2468	53.4043603607	-6.3730651332
8240DB002510	Rosemount Park	2510	53.4021884304	-6.3555819572
8240DB002960	Retail Park	2960	53.3943233176	-6.3884846415
8240DB002961	Auburn Avenue	2961	53.3788331819	-6.3585112717
8240DB003078	Forrest Little Golf	3078	53.4402654488	-6.2496438474
8240DB003087	Forest Road	3087	53.4461975809	-6.2404721748
8240DB003088	River Valley Heights	3088	53.4527270791	-6.2371003695
8240DB003089	Cherry Avenue	3089	53.4489647581	-6.2397856487
8240DB003090	Forest View	3090	53.4495837591	-6.2415367110
8240DB003340	Littlepace	3340	53.4086679507	-6.4289458687
8240DB003565	Rush Road	3565	53.5667590953	-6.1021834640
8240DB003566	Selskar Court	3566	53.5780675048	-6.1250705040
8240DB003567	Skerries Station	3567	53.5762792385	-6.1199395460
8240DB003569	Selskar Road	3569	53.5765274957	-6.1214387128
8240DB003571	Selskar Court	3571	53.5781445634	-6.1253993463
8240DB003572	Forest Road	3572	53.4543273513	-6.2243852275
8240DB003573	Chapel Road	3573	53.4260765802	-6.1765809913
8240DB003574	Talbot Road	3574	53.4487748072	-6.1815108102
8240DB003575	Chapel Road	3575	53.4243220555	-6.1764604697
8240DB003576	Copperbush	3576	53.4293151830	-6.1779472935
8240DB003583	St Sylvesters School	3583	53.4493479036	-6.1631625250
8240DB003584	Cricket Club	3584	53.4498545364	-6.1598733479
8240DB003585	Malahide Station	3585	53.4506330921	-6.1549913248
8240DB003586	Malahide	3586	53.4510580929	-6.1510881468
8240DB003587	The Old Golf Links	3587	53.4511271473	-6.1451074301
8240DB003588	Sea Park	3588	53.4499088963	-6.1407488813
8240DB003589	Biscayne	3589	53.4460837138	-6.1323494044
8240DB003590	Muldowney Court	3590	53.4487594021	-6.1373511780
8240DB003591	Robswall Crescent	3591	53.4446336150	-6.1275653264
8240DB003592	Monks Meadow	3592	53.4378792433	-6.1227143788
8240DB003593	Strand Road	3593	53.4326864801	-6.1245838209
8240DB003594	Portmarnock Hotel	3594	53.4296982619	-6.1271835513
8240DB003595	Blackberry Lane	3595	53.4274082239	-6.1296017674
8240DB003596	Blackberry Rise	3596	53.4258334420	-6.1312058423
8240DB003597	The Dunes	3597	53.4239853669	-6.1331528235
8240DB003598	Portmarnock	3598	53.4217393453	-6.1360950982
8240DB003599	Portmarnock	3599	53.4216464104	-6.1364753346
8240DB003600	The Dunes	3600	53.4235191917	-6.1338052466
8240DB003601	Blackberry Rise	3601	53.4261017258	-6.1311188304
8240DB003602	Blackberry Lane	3602	53.4283830500	-6.1287162045
8240DB003604	Portmarnock Crescent	3604	53.4324293095	-6.1248058551
8240DB003605	Wendell Avenue	3605	53.4339680620	-6.1249187132
8240DB003606	Kelvin Close	3606	53.4349291948	-6.1300390710
8240DB003607	Redfern Avenue	3607	53.4349010293	-6.1362866877
8240DB003608	Hillcourt	3608	53.4310857730	-6.1342864217
8240DB003609	Carrickhill Rd Lower	3609	53.4260851827	-6.1340840916
8240DB003610	Carrickhill Rd Lower	3610	53.4257478600	-6.1343546880
8240DB003611	Ardilaun	3611	53.4288464783	-6.1336320418
8240DB003612	Community School	3612	53.4333688566	-6.1365945565
8240DB003613	Redfern Avenue	3613	53.4350997464	-6.1346223167
8240DB003615	Briar Walk	3615	53.4353131957	-6.1316026337
8240DB003616	Wendell Avenue	3616	53.4342760577	-6.1239268159
8240DB003618	Monks Meadow	3618	53.4386940037	-6.1230848836
8240DB003619	Robswall Crescent	3619	53.4447042716	-6.1280590335
8240DB003620	Biscayne	3620	53.4464723887	-6.1342143021
8240DB003621	Muldowney Court	3621	53.4483822212	-6.1367955457
8240DB003622	Sea Park	3622	53.4494644048	-6.1399100694
8240DB003623	Mayfair	3623	53.4506565379	-6.1437426910
8240DB003624	St James's Terrace	3624	53.4512707364	-6.1514703977
8240DB003625	Church Street	3625	53.4475719366	-6.1529107921
8240DB003626	The Hill Malahide	3626	53.4442456725	-6.1522873273
8240DB003627	Seamount Road	3627	53.4419552737	-6.1512275783
8240DB003628	Community School	3628	53.4375354779	-6.1519613718
8240DB003629	The Hill Malahide	3629	53.4355146883	-6.1532231030
8240DB003630	Community School	3630	53.4384604024	-6.1519061749
8240DB003631	Seamount Road	3631	53.4419661188	-6.1513475392
8240DB003632	Hill Drive	3632	53.4444198236	-6.1525055909
8240DB003633	Church Street	3633	53.4483948918	-6.1532364289
8240DB003634	Malahide Station	3634	53.4504553094	-6.1551194876
8240DB003635	Cricket Club	3635	53.4496399495	-6.1605300621
8240DB003636	St Sylvesters School	3636	53.4494224482	-6.1621655735
8240DB003640	Malahide Castle	3640	53.4462983942	-6.1741340523
8240DB003641	Estuary Road	3641	53.4527251816	-6.1835856101
8240DB003642	Sacred Heart Church	3642	53.4551261647	-6.1812996341
8240DB003643	Yellow Walls Rd	3643	53.4512379026	-6.1691791266
8240DB003647	Myra Manor	3647	53.4327125973	-6.1767634510
8240DB003648	Feltrim Road	3648	53.4333069739	-6.1780173266
8240DB003649	Streamstown	3649	53.4359625524	-6.1853693856
8240DB003650	Roadstone Retail	3650	53.4384837047	-6.1909970015
8240DB003651	Mount Drinan	3651	53.4447541907	-6.1973245729
8240DB003652	Dineen School	3652	53.4461411131	-6.2004876805
8240DB003653	Feltrim Business Pk	3653	53.4487177641	-6.2044740423
8240DB003654	Feltrim Retail Park	3654	53.4510491246	-6.2064987328
8240DB003655	Drynam Road	3655	53.4528821869	-6.2130619248
8240DB003656	Feltrim Business Pk	3656	53.4485282298	-6.2044218131
8240DB003657	Dineen School	3657	53.4461821707	-6.2002300040
8240DB003658	Mount Drinan	3658	53.4447523739	-6.1972042111
8240DB003659	Roadstone Retail	3659	53.4386456140	-6.1910051753
8240DB003660	Streamstown	3660	53.4354870797	-6.1842457256
8240DB003661	Copperbush	3661	53.4291339315	-6.1778497015
8240DB003662	Baskin Lane	3662	53.4232324468	-6.1763265413
8240DB003663	Corballis Park	3663	53.4245979353	-6.2348939267
8240DB003664	Hampton Cove	3664	53.6033990486	-6.1682247698
8240DB003669	Maldron Hotel	3669	53.4284655392	-6.2350797894
8240DB003670	Airport Parking	3670	53.4245772535	-6.2298538278
8240DB003671	Airport Roundabout	3671	53.4293994598	-6.2301651081
8240DB003672	Stockhole Lane	3672	53.4321755005	-6.2300798514
8240DB003674	Equestrian Centre	3674	53.4410501589	-6.2278894767
8240DB003675	N1 Business Park	3675	53.4433397443	-6.2283361260
8240DB003676	Airside	3676	53.4467824882	-6.2283584505
8240DB003677	Colaiste Choilm	3677	53.4523489407	-6.2249194958
8240DB003678	Swords Main Street	3678	53.4553229226	-6.2224312534
8240DB003679	Fingal Co Co	3679	53.4590816826	-6.2201357229
8240DB003682	Glasmore Park	3682	53.4620240339	-6.2312480522
8240DB003686	Rathbeale Crescent	3686	53.4619183810	-6.2301831249
8240DB003689	Fingal Co Co	3689	53.4589359455	-6.2200062811
8240DB003690	Swords Main Street	3690	53.4569564215	-6.2210679317
8240DB003691	Swords Main Street	3691	53.4559770942	-6.2216961649
8240DB003692	Carlton Court	3692	53.4534471046	-6.2238196404
8240DB003694	Pinnock Hill	3694	53.4489963473	-6.2267305633
8240DB003695	Airside	3695	53.4470560343	-6.2280158425
8240DB003696	N1 Business Park	3696	53.4431819086	-6.2279964473
8240DB003697	Equestrian Centre	3697	53.4406857249	-6.2275584184
8240DB003698	Kettles Lane	3698	53.4368181220	-6.2273732112
8240DB003699	Stockhole Lane	3699	53.4350550461	-6.2278830896
8240DB003701	Ballintrane Wood	3701	53.4526169021	-6.2272271834
8240DB003702	River Valley Drive	3702	53.4519723496	-6.2322530634
8240DB003704	River Valley Road	3704	53.4532572952	-6.2395328202
8240DB003705	Brookdale Drive	3705	53.4528130717	-6.2441588195
8240DB003706	Forest Crescent	3706	53.4512966548	-6.2449441190
8240DB003707	Rathingle Road	3707	53.4523515091	-6.2445542979
8240DB003708	Hilltown Road	3708	53.4532639461	-6.2387645994
8240DB003709	River Valley Heights	3709	53.4526315737	-6.2361105280
8240DB003710	River Valley Drive	3710	53.4520560082	-6.2312256888
8240DB003711	Swords Castle	3711	53.4611903224	-6.2186920533
8240DB003712	North Street	3712	53.4636490317	-6.2172185059
8240DB003713	Balheary Park	3713	53.4686889702	-6.2134523277
8240DB003714	Broad Meadow Bridge	3714	53.4722193713	-6.2109238239
8240DB003715	Lissenhall Green	3715	53.4800028357	-6.2037256126
8240DB003718	Newbridge Demesne	3718	53.4804571615	-6.1620899103
8240DB003719	Newbridge House	3719	53.4819119471	-6.1772608382
8240DB003720	Donabate Station	3720	53.4853762918	-6.1511930607
8240DB003721	Donabate	3721	53.4871678163	-6.1484778855
8240DB003722	Leisure Centre	3722	53.4897930494	-6.1421542925
8240DB003723	Donabate NS	3723	53.4925642880	-6.1354165599
8240DB003724	Rahillion	3724	53.4929932372	-6.1283590682
8240DB003725	Middlefield Lane	3725	53.4934941350	-6.1230466314
8240DB003726	Portrane Avenue	3726	53.4931982482	-6.1145288336
8240DB003728	Healy's Lane	3728	53.4960211071	-6.1139965919
8240DB003729	Burrow Road	3729	53.4974367712	-6.1148532469
8240DB003730	Beach Lane	3730	53.4992959065	-6.1164741557
8240DB003732	Marsh Lane	3732	53.5001003817	-6.1184735667
8240DB003733	Beach Lane	3733	53.4994878490	-6.1166766880
8240DB003734	Burrow Road	3734	53.4971736841	-6.1146991103
8240DB003735	Healy's Lane	3735	53.4960010037	-6.1138618254
8240DB003736	Portrane	3736	53.4933698119	-6.1117328494
8240DB003738	Portane Avenue	3738	53.4931668361	-6.1148165993
8240DB003739	St Ita's Hospital	3739	53.4876718837	-6.1129052937
8240DB003740	Rahillion	3740	53.4928417056	-6.1290138407
8240DB003741	Donabate NS	3741	53.4924878620	-6.1362790121
8240DB003743	Donabate	3743	53.4867546434	-6.1484958840
8240DB003744	Donabate Station	3744	53.4852685073	-6.1511977488
8240DB003745	Newbridge Demesne	3745	53.4802177511	-6.1634714018
8240DB003746	Newbridge House	3746	53.4820238423	-6.1781149219
8240DB003748	Batter Lane	3748	53.4884854235	-6.1970225185
8240DB003749	Broad Meadow Bridge	3749	53.4716337147	-6.2108279469
8240DB003750	Balheary Park	3750	53.4684949369	-6.2130989608
8240DB003751	Carnegie Court	3751	53.4608930052	-6.2186442596
8240DB003752	Seatown Villas	3752	53.4624135039	-6.2181438230
8240DB003755	Turvey Avenue	3755	53.4942829566	-6.1952542238
8240DB003756	Blake's Cross	3756	53.5024830970	-6.1918907981
8240DB003757	Newhaggard	3757	53.5044145431	-6.1882657212
8240DB003758	Hannas Avenue	3758	53.5072797351	-6.1851733274
8240DB003759	Balleally West	3759	53.5099079821	-6.1801003595
8240DB003760	Bridetree	3760	53.5111519924	-6.1779813027
8240DB003761	Lusk Road	3761	53.5153071121	-6.1728567922
8240DB003762	Racecourse Commons	3762	53.5187041352	-6.1698904230
8240DB003763	Barrack Lane	3763	53.5236674544	-6.1676704070
8240DB003764	Station Road	3764	53.5253252473	-6.1644162219
8240DB003765	Orlynn Park	3765	53.5241359845	-6.1601388078
8240DB003766	Lusk House	3766	53.5223650642	-6.1531268069
8240DB003767	Rosewood	3767	53.5220353365	-6.1486616905
8240DB003768	Rogerstown Lane	3768	53.5216491656	-6.1457827432
8240DB003769	Beau Hill	3769	53.5205021552	-6.1384879871
8240DB003770	Rush & Lusk Stn	3770	53.5213969242	-6.1445871891
8240DB003771	Whitestown Road	3771	53.5186926355	-6.1313886729
8240DB003772	Spout Road	3772	53.5181470140	-6.1263907027
8240DB003773	Carthy's Lane	3773	53.5179068590	-6.1236867281
8240DB003774	Healy's Lane	3774	53.5189039744	-6.1162226445
8240DB003775	Millbank Court	3775	53.5215141277	-6.1062128391
8240DB003777	St Maur's Church	3777	53.5226182912	-6.1015935217
8240DB003778	Rush Main Street	3778	53.5227248254	-6.0969885214
8240DB003780	Chapel View	3780	53.4855887312	-6.1492398645
8240DB003781	Skerries Road	3781	53.5234704824	-6.0913291248
8240DB003782	Golden Ridge Cresc	3782	53.5260853507	-6.0912869510
8240DB003783	Rush Cricket Club	3783	53.5297294222	-6.0915303504
8240DB003784	Clifflands	3784	53.5338404463	-6.0906212796
8240DB003785	Rush Athletic FC	3785	53.5391041092	-6.0926627465
8240DB003786	Carnhill	3786	53.5422415399	-6.0960828363
8240DB003787	Loughshinny Cross	3787	53.5468359552	-6.1012641821
8240DB003788	Mine Road	3788	53.5503077921	-6.1019840938
8240DB003789	Thomastown Resevoir	3789	53.5541356638	-6.1019183945
8240DB003790	Pierstown Lane	3790	53.5586314052	-6.1025926407
8240DB003791	Hacketstown Cottages	3791	53.5625102767	-6.1034757859
8240DB003792	Hacketstown Park	3792	53.5660089453	-6.1024888234
8240DB003793	Shenick Road	3793	53.5699079439	-6.1012421618
8240DB003794	Skerries RFC	3794	53.5730117634	-6.1019940042
8240DB003795	Brookville Lane	3795	53.5750456594	-6.1044248122
8240DB003797	Strand Street	3797	53.5786897565	-6.1063761168
8240DB003798	Skerries	3798	53.5803448686	-6.1070270799
8240DB003799	Church Street	3799	53.5790556058	-6.1107546694
8240DB003801	North Cliff Heights	3801	53.5806398482	-6.1274788921
8240DB003802	Mourne View	3802	53.5818221244	-6.1254933489
8240DB003805	Barnageeragh Road	3805	53.5853221977	-6.1482375176
8240DB003806	Hampton Cove	3806	53.6029773230	-6.1676839094
8240DB003807	Fancourt Heights	3807	53.6050205377	-6.1708142787
8240DB003808	Craoibhin Park	3808	53.6059096022	-6.1772438696
8240DB003809	Old Market Green	3809	53.6061235042	-6.1794863832
8240DB003811	Hampton Street	3811	53.6058812846	-6.1747969161
8240DB003812	Fancourt Heights	3812	53.6051011443	-6.1707956828
8240DB003813	Ardgillan Demesne	3813	53.5913860813	-6.1561905694
8240DB003814	Barnageeragh Road	3814	53.5855991309	-6.1487087689
8240DB003815	Northcliffe Heights	3815	53.5819436108	-6.1252161045
8240DB003816	Mourne Drive	3816	53.5804715574	-6.1276373642
8240DB003818	Church Street	3818	53.5798024374	-6.1102380626
8240DB003819	Skerries	3819	53.5799971152	-6.1066348369
8240DB003820	Strand Street	3820	53.5778728036	-6.1058689514
8240DB003822	Brookville Lane	3822	53.5753694775	-6.1044405264
8240DB003823	Skerries RFC	3823	53.5727715343	-6.1015819503
8240DB003824	Shenick Road	3824	53.5697096289	-6.1012057499
8240DB003825	Hacketstown Cottages	3825	53.5622935203	-6.1034100006
8240DB003826	Pierstown Lane	3826	53.5584848259	-6.1024180560
8240DB003827	Thomastown Resevoir	3827	53.5539817781	-6.1018498144
8240DB003828	Mine Road	3828	53.5499090066	-6.1017755573
8240DB003829	Loughshinny Cross	3829	53.5472843209	-6.1011988334
8240DB003831	Carnhill	3831	53.5424141125	-6.0961958081
8240DB003832	Rush Athletic FC	3832	53.5391482958	-6.0926154939
8240DB003833	Clifflands	3833	53.5336598501	-6.0905690600
8240DB003834	Palmer Road	3834	53.5309421868	-6.0914908923
8240DB003835	Rush Cricket Club	3835	53.5288354241	-6.0912688566
8240DB003836	Kilbrush Lane	3836	53.5234141855	-6.0911808263
8240DB003837	Rush Main Street	3837	53.5220169763	-6.0926161657
8240DB003838	Community Centre	3838	53.5225261296	-6.0963639570
8240DB003840	Rush Garda Station	3840	53.5228106233	-6.1001218914
8240DB003842	Millbank Court	3842	53.5213742402	-6.1064603958
8240DB003843	Old Road	3843	53.5208014981	-6.1094571047
8240DB003844	Healy's Lane	3844	53.5186992930	-6.1163523769
8240DB003845	Whitestown Cemetery	3845	53.5176538465	-6.1201689841
8240DB003846	Spout Road	3846	53.5181902558	-6.1274293874
8240DB003848	Beau Hill	3848	53.5203475848	-6.1383741107
8240DB003849	Rush & Lusk Stn	3849	53.5209865216	-6.1418903650
8240DB003850	Rogerstown Lane	3850	53.5215937728	-6.1462677939
8240DB003851	Rosewood	3851	53.5219290637	-6.1481836908
8240DB003852	Lusk House	3852	53.5224688538	-6.1540272419
8240DB003853	Orlynn Park	3853	53.5242348516	-6.1607227640
8240DB003854	Station Road	3854	53.5253496919	-6.1648375030
8240DB003855	Barrack Lane	3855	53.5230661185	-6.1677265305
8240DB003856	Racecourse Commons	3856	53.5186133914	-6.1698340104
8240DB003857	Dublin Road	3857	53.5147368649	-6.1731829253
8240DB003858	Bridetree	3858	53.5109716606	-6.1779438048
8240DB003859	Balleally West	3859	53.5098020319	-6.1802255234
8240DB003860	Hannas Avenue	3860	53.5070761194	-6.1853780284
8240DB003861	Newhaggard	3861	53.5048319804	-6.1873433465
8240DB003862	Blake's Cross	3862	53.5022905026	-6.1922306512
8240DB003863	Turvey Avenue	3863	53.4945347954	-6.1946707730
8240DB003864	Abbylea Close	3864	53.4639991346	-6.2341330620
8240DB003865	Daleview Road	3865	53.4660910636	-6.2376310489
8240DB003867	New Dairy Lane	3867	53.4731849747	-6.2567857262
8240DB003881	New Dairy Lane	3881	53.4733308926	-6.2569303930
8240DB003884	Pine Grove Park	3884	53.4646015443	-6.2347557120
8240DB003885	Airport Parking	3885	53.4259684913	-6.2291188521
8240DB004314	Scoil Bhride	4314	53.3842090445	-6.3717139674
8240DB004315	Rivermeade FC	4315	53.4526203986	-6.2916128370
8240DB004316	Rivermeade Close	4316	53.4533154085	-6.2886788094
8240DB004317	River Meade Drive	4317	53.4530187080	-6.2924400707
8240DB004321	Cold Stores	4321	53.4115449192	-6.3700080138
8240DB004323	Whitestown Grove	4323	53.3963288600	-6.3939125128
8240DB004324	Littlepace Gallops	4324	53.4040177931	-6.4266356314
8240DB004325	Littlepace	4325	53.4085874953	-6.4289789169
8240DB004330	Swords Pavilions SC	4330	53.4547858681	-6.2183578183
8240DB004331	Seabury Road	4331	53.4553999212	-6.1792098395
8240DB004339	Estuary Road	4339	53.4526871930	-6.1834517124
8240DB004362	Millennium Park	4362	53.3931135416	-6.3987699765
8240DB004381	Sutton Station	4381	53.3916938975	-6.1161921850
8240DB004387	Malahide Village	4387	53.4508653407	-6.1525721183
8240DB004433	Seatown Villas	4433	53.4616521691	-6.2135068674
8240DB004464	Sheepmoor Grove	4464	53.3941714458	-6.3992415025
8240DB004465	Hazel Court	4465	53.4194716115	-6.1399558155
8240DB004489	Sheepmoor Grove	4489	53.3944158097	-6.3993676607
8240DB004492	Cherryfield Park	4492	53.3949984126	-6.4181267538
8240DB004493	Mountview Road	4493	53.3905818146	-6.4003234321
8240DB004503	Hazel Grove	4503	53.4190708477	-6.1407707435
8240DB004520	Sycamore Drive	4520	53.3753348471	-6.3867067218
8240DB004573	Burnell Park Avenue	4573	53.3706130177	-6.3878019005
8240DB004574	Burnell Park Avenue	4574	53.3704531439	-6.3879431921
8240DB004575	Carpenterstown Road	4575	53.3726644051	-6.3886261593
8240DB004686	Shangan Road	4686	53.3944262875	-6.2588486849
8240DB004687	Virgin Mary Church	4687	53.3947744225	-6.2605336581
8240DB004742	Damastown Green	4742	53.4109786126	-6.4201511560
8240DB004743	Damastown Drive	4743	53.4116474009	-6.4231499391
8240DB004744	IBM Campus	4744	53.4196069304	-6.4181160960
8240DB004745	Damastown IBM	4745	53.4204690923	-6.4194231623
8240DB004746	Auburn Green	4746	53.3795091935	-6.3586506142
8240DB004747	Blanchardstown SC	4747	53.3943327829	-6.3918524823
8240DB004765	Huntstown Wood	4765	53.4035321061	-6.4143810924
8240DB004766	Deerhaven	4766	53.4038730130	-6.4183991103
8240DB004767	The Grove	4767	53.4034730766	-6.4234973844
8240DB004768	Littlepace Park	4768	53.4037970389	-6.4262527411
8240DB004769	The Grove	4769	53.4035714974	-6.4234636657
8240DB004770	Deerhaven	4770	53.4039694407	-6.4182150540
8240DB004800	Industrial Estate	4800	53.3975973220	-6.1476623061
8240DB004820	Westmanstown Sports	4820	53.3795826710	-6.4391709043
8240DB004825	Bramley Walk	4825	53.3754905162	-6.3902479088
8240DB004826	Westmanstown Sports	4826	53.3795403072	-6.4393678604
8240DB004843	Berwick Walk	4843	53.4596635704	-6.2503971074
8240DB004893	Diswellstown Road	4893	53.3701586379	-6.3927632994
8240DB004894	Luttrellstown Court	4894	53.3720773639	-6.3984320360
8240DB004895	Fernleigh Close	4895	53.3742433531	-6.4017774890
8240DB004897	Luttrellstown Court	4897	53.3721572064	-6.3983538965
8240DB004898	Castleknock College	4898	53.3702758260	-6.3927889435
8240DB004899	Auburn Avenue	4899	53.3723893414	-6.3585486810
8240DB004900	Beechpark Lawn	4900	53.3761018794	-6.3585862621
8240DB004901	Hadleigh Green	4901	53.3761447293	-6.3584343116
8240DB004902	Stockton Green	4902	53.3733760466	-6.3584055311
8240DB004903	Lohunda Road	4903	53.3866640112	-6.4017331809
8240DB004905	Ormond Avenue	4905	53.4599640065	-6.2451438346
8240DB004906	St Cronan's Avenue	4906	53.4606535540	-6.2413051210
8240DB004907	St Cronan's Lawn	4907	53.4625385599	-6.2399168863
8240DB004908	Ardcian Park	4908	53.4639437117	-6.2395123342
8240DB004909	Cianlea	4909	53.4657190318	-6.2398304771
8240DB004910	Ardcian Park	4910	53.4666353558	-6.2391900597
8240DB004911	Cianlea	4911	53.4656085801	-6.2396543019
8240DB004912	Lioscian	4912	53.4641395520	-6.2393837367
8240DB004913	St Cronan's Avenue	4913	53.4616191269	-6.2403465028
8240DB004914	Valley View	4914	53.4598517743	-6.2417900657
8240DB004915	Ormond Avenue	4915	53.4598629874	-6.2449974003
8240DB004916	North Street Park	4916	53.4648881528	-6.2171364512
8240DB004917	St Colmcille GAA	4917	53.4680948067	-6.2218222203
8240DB004918	Glen Ellan Pines	4918	53.4687119098	-6.2288761538
8240DB004919	Applewood	4919	53.4695916545	-6.2318371678
8240DB004920	Laurelton	4920	53.4683721406	-6.2362862959
8240DB004925	Ballintrane Wood	4925	53.4521609247	-6.2286013426
8240DB004926	Highfield Green	4926	53.4544384961	-6.2246064631
8240DB004974	Aquatic Centre	4974	53.3989987857	-6.3694198934
8240DB004976	Indoor Arena	4976	53.4019837277	-6.3622673304
8240DB004978	Corporate Park	4978	53.4092575333	-6.3709979945
8240DB004979	Alexion	4979	53.4113367786	-6.3778231005
8240DB004980	Blanchardstown Rd N	4980	53.4042156050	-6.3729954563
8240DB004986	Curragh Hall	4986	53.4152032703	-6.3852430583
8240DB004989	IBM Campus	4989	53.4191096564	-6.4178938314
8240DB004990	Damastown Road	4990	53.4117260674	-6.4229815596
8240DB004991	Damastown Green	4991	53.4110854188	-6.4200719851
8240DB004992	Damastown Ind Park	4992	53.4106754627	-6.4176202420
8240DB004994	Warrenstown Green	4994	53.4009380103	-6.3864600702
8240DB004995	Castlecurragh Heath	4995	53.4025174420	-6.3889419754
8240DB004996	Castlecurragh Vale	4996	53.4038388087	-6.3909525203
8240DB004997	Castlecurragh Vale	4997	53.4045459145	-6.3920688895
8240DB004998	Castlecurragh Heath	4998	53.4031354041	-6.3894450155
8240DB004999	Warrenstown Green	4999	53.4009317115	-6.3859941015
8240DB005028	Boroimhe Maples	5028	53.4446475316	-6.2310668251
8240DB005029	Boroimhe Laurels	5029	53.4450764447	-6.2345417334
8240DB005030	Boroimhe Maples	5030	53.4445637226	-6.2314767845
8240DB005031	Boroimhe Cherry	5031	53.4451994438	-6.2349581700
8240DB005044	Swords Park	5044	53.4607876479	-6.2097931082
8240DB005053	Swords Road	5053	53.4196418846	-6.2346478627
8240DB005055	Hazelwood	5055	53.4003862026	-6.2595227080
8240DB005069	Somerton	5069	53.4915007095	-6.1392612584
8240DB005071	Alexion	5071	53.4109617027	-6.3760172328
8240DB005072	Corporate Park	5072	53.4093093812	-6.3708455939
8240DB005073	Pinnockhill	5073	53.4506387634	-6.2235453636
8240DB005074	Swords Pavilions	5074	53.4531503867	-6.2159718719
8240DB005075	Rathbeale Road	5075	53.4596633990	-6.2235902629
8240DB005076	Brackenstown Ave	5076	53.4612534068	-6.2283733930
8240DB005077	Brackenstown Ave	5077	53.4610751988	-6.2272663331
8240DB005078	Watery Lane	5078	53.4598533730	-6.2236726919
8240DB005079	Swords Pavilions	5079	53.4530190133	-6.2156009360
8240DB005081	Kileen Park	5081	53.4483368715	-6.1799034559
8240DB005084	Drynam Court	5084	53.4519952952	-6.2108556149
8240DB005086	Milesian Court	5086	53.4504862218	-6.2049264268
8240DB005096	Rathbeale Road	5096	53.4726344563	-6.2535543429
8240DB005156	Industrial Estate	5156	53.3974366928	-6.1460000377
8240DB005165	Willowbrook	5165	53.4913768382	-6.1393872543
8240DB005175	Batter Lane	5175	53.4897192928	-6.1965934046
8240DB005176	Whitestown Cemetery	5176	53.5178547110	-6.1192250708
8240DB006005	Plaza Apartments	6005	53.4199426183	-6.3834535807
8240DB006009	Hazelwood	6009	53.4001099014	-6.2572179908
8240DB006010	Waterside	6010	53.4528771328	-6.1983658213
8240DB006015	Cherry Avenue	6015	53.4483357564	-6.2385770672
8240DB006033	Rathingle Road	6033	53.4478249675	-6.2380712503
8240DB006039	Waterville Terrace	6039	53.3915619872	-6.3757334938
8240DB006048	Peter & Paul Church	6048	53.6045004892	-6.1844674941
8240DB006050	Lissenhall Green	6050	53.4810542918	-6.2025209746
8240DB006051	PSLC	6051	53.4347568847	-6.1379938109
8240DB006052	PSLC	6052	53.4348325629	-6.1376593693
8240DB006053	Malahide Golf Club	6053	53.4341191194	-6.1432143687
8240DB006054	Malahide Road	6054	53.4542368080	-6.2158962102
8240DB006055	Waterside	6055	53.4529145530	-6.1978673319
8240DB006073	Lohunda Court	6073	53.3867027613	-6.4019422036
8240DB006076	Skerries GAA Club	6076	53.5774603490	-6.1121850128
8240DB006077	Skerries Station	6077	53.5759024089	-6.1188387490
8240DB006088	Shelerin Road	6088	53.3836395510	-6.4094681024
8240DB006107	Lohunda Park	6107	53.3873300091	-6.4119013475
8240DB006108	Clonsilla Link Road	6108	53.3881355242	-6.4163816710
8240DB006109	Stonebridge Road	6109	53.3891484454	-6.4216062184
8240DB006110	Allendale Close	6110	53.3906979652	-6.4300588318
8240DB006111	Allendale Close	6111	53.3908111926	-6.4297840296
8240DB006112	Stonebridge Road	6112	53.3892608583	-6.4212712947
8240DB006113	Lohunda Park	6113	53.3875224589	-6.4121798325
8240DB006117	Swords Pavilions SC	6117	53.4543803017	-6.2158751361
8240DB006126	Marymount Care Ctr	6126	53.3740650583	-6.4399287633
8240DB006127	Marymount Care Ctr	6127	53.3741384975	-6.4400463142
8240DB006135	Hillcourt	6135	53.4312455163	-6.1347309306
8240DB006162	St Margaret's	6162	53.4322058793	-6.2995956940
8240DB006171	Waterville Road	6171	53.3956268765	-6.3745862404
8240DB006172	Lohunda Close	6172	53.3866941802	-6.4019725928
8240DB006179	Mill Road	6179	53.3895530036	-6.3707732806
8240DB006219	St Margaret's Road	6219	53.3998364912	-6.2930365363
8240DB006228	Melville	6228	53.3998306879	-6.2926307223
8240DB006229	Melville	6229	53.4020463209	-6.2986179710
8240DB006230	Meakstown Centre	6230	53.4014093375	-6.2968085937
8240DB006234	Old Airport Road	6234	53.4180773132	-6.2776819943
8240DB006274	Aquatic Centre	6274	53.3976783860	-6.3714553726
8240DB006310	Holywell Crescent	6310	53.4435673356	-6.2110442344
8240DB006311	Holywell Close	6311	53.4434239591	-6.2092738466
8240DB006312	Holywell Crescent	6312	53.4434649549	-6.2114098412
8240DB006348	Lanesborough Park	6348	53.4035024295	-6.3024101130
8240DB006359	Seatown Road	6359	53.4622241148	-6.2132870569
8240DB006364	Century Business Pk	6364	53.4025827575	-6.3015744272
8240DB006365	Lanesborough Avenue	6365	53.4043825773	-6.2916512988
8240DB006366	Century Business Pk	6366	53.4026514127	-6.3013460964
8240DB007011	Phibblestown Road	7011	53.4015964721	-6.4352521323
8240DB007013	Kilreesk Lane	7013	53.4406552747	-6.2983851895
8240DB007014	Kilreesk Lane	7014	53.4407517277	-6.2982157496
8240DB007017	Phibblestown Road	7017	53.4018763393	-6.4353471363
8240DB007018	Castlegrange Row	7018	53.3988068042	-6.4315648964
8240DB007020	Manorfields Drive	7020	53.3941636264	-6.4311492228
8240DB007021	Manorfields Drive	7021	53.3940550345	-6.4310930714
8240DB007022	St Margaret's NS	7022	53.4300329055	-6.3010067900
8240DB007023	St Margaret's Church	7023	53.4308683101	-6.3009734666
8240DB007025	Blanchardstown SC	7025	53.3939910121	-6.3918352956
8240DB007026	Blanchardstown SC	7026	53.3938952324	-6.3920644536
8240DB007029	Ravenwood Road	7029	53.3956618751	-6.4295753754
8240DB007030	Ravenwood Road	7030	53.3958992876	-6.4291756696
8240DB007031	Diswellstown Road	7031	53.3742044019	-6.4015535053
8240DB007038	Latchfort Court	7038	53.3982790475	-6.4310730177
8240DB007039	Portane	7039	53.4935223021	-6.1100078265
8240DB007040	Lanestown	7040	53.4805505061	-6.1917689947
8240DB007041	Lanestown	7041	53.4810773595	-6.1909479963
8240DB007047	Barnwell Green	7047	53.3931183806	-6.4426150847
8240DB007048	Barnwell Green	7048	53.3930115585	-6.4426941651
8240DB007073	Carlton Hotel	7073	53.4190813381	-6.3782655166
8240DB007097	Belgree Boulevard	7097	53.4201410048	-6.3848302608
8240DB007098	Mount Eustace	7098	53.4213365810	-6.3881703219
8240DB007099	Mount Garrett	7099	53.4217821993	-6.3912229077
8240DB007100	Rathmore Crescent	7100	53.4197588678	-6.3918108480
8240DB007101	Bealing Walk	7101	53.4182584686	-6.3871884626
8240DB007102	Bealing Walk	7102	53.4181504664	-6.3871775052
8240DB007103	Cruise Park	7103	53.4198303805	-6.3931171157
8240DB007104	Mount Garrett	7104	53.4219165431	-6.3911877425
8240DB007105	Mount Eustace	7105	53.4213506903	-6.3878839115
8240DB007106	Bellgree Avenue	7106	53.4209886478	-6.3857008911
8240DB007107	Ballentree Avenue	7107	53.4170474415	-6.3860307250
8240DB007111	Lanesborough View	7111	53.4019909902	-6.2915967278
8240DB007115	Nevinstown Lane	7115	53.4449757756	-6.2271389247
8240DB007116	Swords Park	7116	53.4568279070	-6.2124595148
8240DB007124	Ballycoolin  Bus Pk	7124	53.4084344681	-6.3581538116
8240DB007125	Ballycoolin Bus Pk	7125	53.4082421006	-6.3578904722
8240DB007126	IDA Ireland	7126	53.4058768160	-6.3564775044
8240DB007132	Charlestown SC	7132	53.4030889703	-6.3043065601
8240DB007133	Bunbury Gate Avenue	7133	53.4679888318	-6.2401583117
8240DB007134	Rathbeale Cottages	7134	53.4721514645	-6.2518718985
8240DB007135	Lispopple	7135	53.4828147672	-6.2881243968
8240DB007136	Oakhill	7136	53.4874392619	-6.2960004639
8240DB007144	Oakhill	7144	53.4874074538	-6.2937714195
8240DB007145	Rathbeale Cottages	7145	53.4721731244	-6.2515094619
8240DB007156	Allendale Square	7156	53.3888796532	-6.4305316824
8240DB007158	Delhurst	7158	53.3919195519	-6.4382233401
8240DB007159	Ongar Square	7159	53.3965983401	-6.4427436441
8240DB007160	Ongar Square	7160	53.3965776280	-6.4425338784
8240DB007161	Delhurst	7161	53.3920626983	-6.4381729919
8240DB007163	Allendale Square	7163	53.3890225986	-6.4304662849
8240DB007166	Parkway Station	7166	53.3770936033	-6.3457871360
8240DB007167	Parkway Station	7167	53.3758663016	-6.3447825923
8240DB007169	Leisure Centre	7169	53.4898314017	-6.1417306292
8240DB007170	Harneys Lane	7170	53.4933776142	-6.1236395962
8240DB007172	Old Road	7172	53.5209860624	-6.1091924893
8240DB007173	Old Market Green	7173	53.6061962794	-6.1795437016
8240DB007175	Ardgillan Demesne	7175	53.5895431024	-6.1544127335
8240DB007194	Holywell View	7194	53.4472269807	-6.2075480676
8240DB007195	Holywell View	7195	53.4473215460	-6.2078602557
8240DB007196	Holywell Wood	7196	53.4449556373	-6.2125214906
8240DB007197	Holywell Drive	7197	53.4450151362	-6.2122931687
8240DB007204	Seaview	7204	53.4928668715	-6.1066457531
8240DB007217	The Courtyard	7217	53.3817584171	-6.4032096932
8240DB007218	The Courtyard	7218	53.3816384170	-6.4029736701
8240DB007219	Limelawn	7219	53.3842507702	-6.4027405943
8240DB007224	Stadium Business Pk	7224	53.3978166587	-6.3384418916
8240DB007227	Limelawn	7227	53.3837882586	-6.4031036641
8240DB007233	Bramley Park	7233	53.3732987134	-6.3890080015
8240DB007237	Stadium Business Pk	7237	53.3971412743	-6.3415810095
8240DB007238	Barnlodge	7238	53.3971834123	-6.3446169877
8240DB007240	Clonsilla Station	7240	53.3834671827	-6.4235752135
8240DB007241	Barnlodge	7241	53.3977448642	-6.3468659163
8240DB007242	Ballycoolin Road	7242	53.3984085730	-6.3500132322
8240DB007243	Rosemount Bus. Park	7243	53.4033525831	-6.3578832754
8240DB007247	Ballycoolin Road	7247	53.3987923978	-6.3517728955
8240DB007292	Skerries GAA Club	7292	53.5775343464	-6.1123176352
8240DB007297	Connolly Hospital	7297	53.3880162566	-6.3707868668
8240DB007298	Connolly Hospital	7298	53.3875691042	-6.3702927786
8240DB007318	Corporate Park	7318	53.4099147510	-6.3684457989
8240DB007319	Corporate Park	7319	53.4095774985	-6.3687595478
8240DB007327	Blackwood Lane	7327	53.4340082375	-6.1505491222
8240DB007328	Kettles Lane	7328	53.4405660586	-6.1931815861
8240DB007329	Kettles Lane	7329	53.4405453627	-6.1930018240
8240DB007334	Indoor Arena	7334	53.4013768759	-6.3632381048
8240DB007342	Corporate Park 2	7342	53.4127668339	-6.3607849583
8240DB007343	Corporate Park 2	7343	53.4128446844	-6.3612182169
8240DB007344	IDA Ireland	7344	53.4046892107	-6.3576964312
8240DB007347	Zone 15	7347	53.4280196548	-6.2420207264
8240DB007348	Zone 15	7348	53.4277439774	-6.2416107393
8240DB007349	Radisson Hotel	7349	53.4252783851	-6.2347152544
8240DB007350	Lanesborough Park	7350	53.4039250570	-6.3017916783
8240DB007374	Connolly Hospital	7374	53.3839857796	-6.3652432654
8240DB007379	Mountview Road	7379	53.3897483763	-6.4005050355
8240DB007380	Parklands	7380	53.3788044116	-6.3721606894
8240DB007381	Damastown Ind Park	7381	53.4103480975	-6.4159777531
8240DB007382	Damastown Close	7382	53.4088321643	-6.4087689574
8240DB007388	Linnetfields	7388	53.3979585417	-6.4422879560
8240DB007389	Navan Road	7389	53.3860184931	-6.3706075838
8240DB007475	Retail Park	7475	53.3954654729	-6.3952081335
8240DB007505	Ballentree Avenue	7505	53.4175790793	-6.3861309487
8240DB007551	Abbey Park	7551	53.3971594766	-6.1431999545
8240DB007552	Grange Park	7552	53.3969971477	-6.1414325260
8240DB007559	The Oaks	7559	53.4266377787	-6.3708300518
8240DB007560	The Oaks	7560	53.4267606219	-6.3699525647
8240DB007570	Texaco Garage	7570	53.4138450793	-6.3660087283
8240DB007575	Texaco Garage	7575	53.4137805510	-6.3658908541
8240DB007616	The Warren	7616	53.4495775045	-6.1834639842
8240DB007654	Knocksedan Drive	7654	53.4548600672	-6.2642976409
8240DB007673	Cappogue Cottages 	7673	53.3992460120	-6.3333032016
8240DB007675	Millennium	7675	53.4084375102	-6.3453532425
8240DB007676	Northwest	7676	53.4128783215	-6.3486558350
8240DB007677	Mitchelstown Rd	7677	53.4140532146	-6.3536800207
8240DB007678	The Green	7678	53.4243120170	-6.3782469835
8240DB007679	Mitchelstown Rd	7679	53.4144519242	-6.3545672458
8240DB007680	Northwest	7680	53.4131895684	-6.3490649895
8240DB007681	Millennium	7681	53.4086537292	-6.3453899751
8240DB007683	Cappogue Cottages 	7683	53.3991958502	-6.3329292013
8240DB007690	Rush Main Street	7690	53.5220374268	-6.0922080189
8240DB007691	Main Street	7691	53.4857151793	-6.1492795671
8240DB007692	Chamley Park	7692	53.4508098879	-6.1876725203
8240DB007699	Blackwood Park	7699	53.3949741454	-6.4443216551
8240DB007700	Willian’s Drive	7700	53.3949091061	-6.4441586237
8240DB007723	Semple Woods	7723	53.4828405334	-6.1551910048
8240DB007724	Semple Woods	7724	53.4828870712	-6.1552944643
8240DB007725	Red Arches Rd	7725	53.4012492817	-6.1299674584
8240DB007866	Hollywoodrath Avenue	7866	53.4237660838	-6.3784182346
8240DB007982	Dewberry Park	7982	53.4342183269	-6.1271202339
8250DB000425	Merrion Road	425	53.3125022141	-6.2014770172
8250DB000426	Rock Road	426	53.3109673504	-6.1998306702
8250DB000427	Booterstown Station	427	53.3082703260	-6.1950369455
8250DB000428	Blackrock College	428	53.3069107149	-6.1907274733
8250DB000429	Blackrock Clinic	429	53.3047081024	-6.1871442568
8250DB000430	Sydney Avenue	430	53.3014190946	-6.1860082203
8250DB000431	Cross Avenue	431	53.3005516484	-6.1892558617
8250DB000432	Hyde Park Avenue	432	53.2995559648	-6.1929438930
8250DB000433	Grove Avenue	433	53.2986279441	-6.1963588380
8250DB000434	Woodlands Park	434	53.2977014086	-6.1998785915
8250DB000435	Sycamore Crescent	435	53.2959890439	-6.2037462263
8250DB000437	The Rise	437	53.2932115731	-6.2061279978
8250DB000441	Redesdale Road	441	53.2889412478	-6.2150518996
8250DB000442	Dale Drive	442	53.2892102711	-6.2120106763
8250DB000443	South Avenue	443	53.2891297951	-6.2090440345
8250DB000444	Kilmacud Park	444	53.2881364710	-6.2075406201
8250DB000445	Kilmacud House	445	53.2856885256	-6.2085280281
8250DB000447	Stillorgan Luas	447	53.2802181653	-6.2105564926
8250DB000448	Arena Road	448	53.2748387450	-6.2066725933
8250DB000449	Blackthorn Road	449	53.2763228252	-6.2169273789
8250DB000450	Heather Road	450	53.2750940463	-6.2134996694
8250DB000451	Blackthorn Drive	451	53.2783061034	-6.2077271127
8250DB000453	Kilmacud Park	453	53.2885862777	-6.2075667878
8250DB000454	South Avenue	454	53.2891161286	-6.2099296069
8250DB000459	Glenabby Road	459	53.2924565740	-6.2109150122
8250DB000460	The Rise	460	53.2934381278	-6.2056534560
8250DB000461	Stillorgan Pk Hotel	461	53.2947995033	-6.2035411112
8250DB000462	Mount Merrion Avenue	462	53.2969602392	-6.2031803702
8250DB000464	Southhill Avenue	464	53.2982022450	-6.1985222394
8250DB000465	Clanfadda Wood	465	53.2989007326	-6.1959722549
8250DB000466	Glenvar Park	466	53.3000977677	-6.1913306015
8250DB000467	Cross Avenue	467	53.3010000619	-6.1880065413
8250DB000468	Sydney Avenue	468	53.3020292372	-6.1841667998
8250DB000469	Rock Road	469	53.3028457292	-6.1840721326
8250DB000470	Blackrock Clinic	470	53.3056258500	-6.1889811038
8250DB000471	Blackrock College	471	53.3068708073	-6.1910592991
8250DB000472	Booterstown Station	472	53.3078820347	-6.1949182673
8250DB000473	Grotto Avenue	473	53.3092405754	-6.1973821393
8250DB000475	Bellevue Avenue	475	53.3127061625	-6.2018886746
8250DB000765	UCD	765	53.3052550303	-6.2168623588
8250DB000767	UCD	767	53.3052972526	-6.2166805312
8250DB000768	UCD Belfield	768	53.3094181940	-6.2187748298
8250DB000859	Whitethorn Road	859	53.3118411378	-6.2384844193
8250DB000860	Wynnsward Drive	860	53.3081868512	-6.2369241240
8250DB000861	Roebuck Road	861	53.3051704314	-6.2359530102
8250DB000862	Islamic Centre	862	53.3036079757	-6.2342318243
8250DB000863	Carmelite Monastery	863	53.3026660610	-6.2319299572
8250DB000864	Eurocampus	864	53.3020144436	-6.2279956956
8250DB000865	Roebuck Castle	865	53.3010358100	-6.2256505586
8250DB000866	Roebuck Hall	866	53.3000569946	-6.2220902258
8250DB000867	Callary Road	867	53.2996576899	-6.2182208604
8250DB000869	Roebuck Road	869	53.3000428294	-6.2223458791
8250DB000870	Roebuck Castle	870	53.3011318832	-6.2260666924
8250DB000873	Eurocampus	873	53.3020918017	-6.2289677859
8250DB000874	Carmelite Monastery	874	53.3026414663	-6.2326962132
8250DB000875	White Oaks	875	53.3044729935	-6.2355916245
8250DB000876	Gledswood Drive	876	53.3052232158	-6.2370912594
8250DB000877	UCD Sports Centre	877	53.3082021061	-6.2300654566
8250DB000878	Clonskeagh Road	878	53.3081533591	-6.2370905770
8250DB000879	Annsbrook	879	53.3095041977	-6.2378753104
8250DB000880	Richview Office Park	880	53.3123137774	-6.2388401585
8250DB001035	Beaumont Avenue	1035	53.2951037415	-6.2561255775
8250DB001036	Braemor Road	1036	53.2958118498	-6.2590671732
8250DB001037	Redwood Court	1037	53.3007656426	-6.2634718784
8250DB001038	Landscape Road	1038	53.3018127853	-6.2656350242
8250DB001042	Braemor Park	1042	53.3043331177	-6.2640323494
8250DB001043	Redwood Court	1043	53.3013172761	-6.2643197357
8250DB001044	Milltown Drive	1044	53.2998181472	-6.2613648034
8250DB001045	Landscape Gardens	1045	53.2985259743	-6.2596619227
8250DB001046	Beaumont Avenue	1046	53.2933604198	-6.2573817080
8250DB001047	Mount Albion Road	1047	53.2895365710	-6.2565023510
8250DB001048	Barton Road East	1048	53.2875086399	-6.2573498971
8250DB001049	Meadow Villas	1049	53.2870874334	-6.2623617690
8250DB001051	Barton Road East	1051	53.2873975073	-6.2608192575
8250DB001052	Meadow Grove	1052	53.2876291412	-6.2569850075
8250DB001053	Beaumont Avenue	1053	53.2899723505	-6.2567996085
8250DB001054	Weston Park	1054	53.2939173562	-6.2573590354
8250DB001055	Churchtown Road	1055	53.2952167907	-6.2558659371
8250DB001281	Ely House	1281	53.2942121915	-6.2782743541
8250DB001306	Rathfarnham Wood	1306	53.2946579751	-6.2798916194
8250DB001307	Ely House	1307	53.2942028813	-6.2776296581
8250DB001308	Nutgrove Court	1308	53.2936471980	-6.2752517852
8250DB001309	Loreto Avenue	1309	53.2924722341	-6.2716988747
8250DB001310	Nutgrove Retail Park	1310	53.2917165839	-6.2673191508
8250DB001311	Whitebarn Road	1311	53.2921889289	-6.2645698582
8250DB001312	Good Shepherd Ch	1312	53.2933099650	-6.2613141201
8250DB001313	Camberly Oaks	1313	53.2941991033	-6.2588027284
8250DB001314	Nutgrove Avenue	1314	53.2942267142	-6.2582315410
8250DB001315	Whitebarn Road	1315	53.2921661625	-6.2642407601
8250DB001316	Good Shepherd Ch	1316	53.2930207434	-6.2618209088
8250DB001317	Loreto Park	1317	53.2919347715	-6.2699654727
8250DB001318	Loreto Avenue	1318	53.2925350392	-6.2723113828
8250DB001319	Nutgrove Court	1319	53.2937102018	-6.2758793084
8250DB002007	Woodbine Road	2007	53.3088750410	-6.2161112048
8250DB002008	Seafield Road	2008	53.3056004029	-6.2111157570
8250DB002009	Radisson Hotel	2009	53.3033395734	-6.2078041389
8250DB002010	Booterstown Avenue	2010	53.2988972413	-6.2046744102
8250DB002011	Stillorgan College	2011	53.2915940095	-6.2007804584
8250DB002012	Stillorgan SC	2012	53.2899246259	-6.1991555819
8250DB002013	St John of Gods	2013	53.2853145290	-6.1944598981
8250DB002014	Brewery Road	2014	53.2821182555	-6.1929149325
8250DB002015	Knocksinna	2015	53.2755348429	-6.1790671073
8250DB002016	Newtownpark Avenue	2016	53.2782087321	-6.1840671494
8250DB002017	Foxrock Church	2017	53.2741965449	-6.1750154066
8250DB002018	Kill Lane	2018	53.2744592482	-6.1722151514
8250DB002019	Foxrock Avenue	2019	53.2758161237	-6.1698479527
8250DB002020	Foxrock Grove	2020	53.2770520284	-6.1666310124
8250DB002021	Deansgrange Village	2021	53.2781775544	-6.1644233682
8250DB002022	Kill Abbey	2022	53.2801026740	-6.1616114093
8250DB002023	Abbey Road	2023	53.2812918183	-6.1582909310
8250DB002024	Rory O'Connor Park	2024	53.2834492978	-6.1594729822
8250DB002025	Abbey Park	2025	53.2849038275	-6.1605353599
8250DB002026	Monkstown Avenue	2026	53.2866440581	-6.1597256328
8250DB002027	Monkstown Farm	2027	53.2869591295	-6.1568472095
8250DB002028	Oliver Plunkett Ave	2028	53.2853228023	-6.1533329323
8250DB002029	Oliver Plunkett Road	2029	53.2838873843	-6.1494502797
8250DB002030	Oliver Plunkett Ct	2030	53.2836776106	-6.1469396392
8250DB002031	Mounttown Road Lower	2031	53.2861123044	-6.1457093364
8250DB002032	York Road	2032	53.2895238359	-6.1448715610
8250DB002033	Knapton Court	2033	53.2914782410	-6.1433917736
8250DB002034	Vesey Place	2034	53.2927363387	-6.1427971554
8250DB002035	Crofton Road	2035	53.2957723494	-6.1426654217
8250DB002036	Crofton  Avenue	2036	53.2957927316	-6.1382087898
8250DB002037	Dun Laoghaire Stn	2037	53.2937557134	-6.1343969206
8250DB002039	Dun Laoghaire Stn	2039	53.2948871708	-6.1349026869
8250DB002040	Dun Laoghaire SC	2040	53.2927911878	-6.1353690493
8250DB002041	St Michael's Hosp	2041	53.2935976050	-6.1392343769
8250DB002042	Smith's Villas	2042	53.2936511303	-6.1426674542
8250DB002043	Vesey Place	2043	53.2924735174	-6.1426585447
8250DB002044	Knapton Court	2044	53.2908723468	-6.1437330675
8250DB002045	Tivoli Terrace Sth	2045	53.2890770531	-6.1450409226
8250DB002046	Mounttown Rd Lower	2046	53.2858693159	-6.1456898615
8250DB002047	Oliver Plunkett Road	2047	53.2836394538	-6.1473762394
8250DB002048	St Patrick's Cres	2048	53.2840379344	-6.1504636627
8250DB002049	Oliver Plunkett Ave	2049	53.2855976805	-6.1542510096
8250DB002050	Monkstown Avenue	2050	53.2868425905	-6.1568672257
8250DB002051	Lanesville	2051	53.2864489905	-6.1598990081
8250DB002052	Fosters Avenue	2052	53.2996711530	-6.2185203738
8250DB002053	Abbey Park	2053	53.2848462330	-6.1602978560
8250DB002054	Rory O'Connor Park	2054	53.2832385380	-6.1592120758
8250DB002055	Casement Villas	2055	53.2814599366	-6.1581187288
8250DB002056	Kill Lane	2056	53.2794709316	-6.1620284428
8250DB002057	Deansgrange Village	2057	53.2777620715	-6.1648760628
8250DB002058	Foxrock Avenue	2058	53.2765962322	-6.1673853129
8250DB002059	Foxrock Park	2059	53.2751739746	-6.1707601076
8250DB002060	Foxrock Church	2060	53.2739549357	-6.1750856792
8250DB002061	Knocksinna	2061	53.2757586019	-6.1801822499
8250DB002062	Newtownpark Avenue	2062	53.2790241110	-6.1868519252
8250DB002063	Galloping Green	2063	53.2802940138	-6.1899775190
8250DB002064	Brewery Road	2064	53.2827256392	-6.1938491612
8250DB002065	Merville Road	2065	53.2847992149	-6.1948565905
8250DB002066	Stillorgan SC	2066	53.2901925909	-6.1996393236
8250DB002067	Woodlands Avenue	2067	53.2918610635	-6.2012042631
8250DB002068	Greenfield Road	2068	53.2980957597	-6.2045730025
8250DB002069	Booterstown Avenue	2069	53.2997746902	-6.2056428527
8250DB002070	St Thomas Road	2070	53.3030660704	-6.2081457018
8250DB002071	Fosters Avenue	2071	53.3030481819	-6.2099470387
8250DB002072	North Avenue	2072	53.3018948786	-6.2127561083
8250DB002073	Mather Road North	2073	53.2997693617	-6.2124697813
8250DB002074	Greenfield Road	2074	53.2979970656	-6.2111635164
8250DB002075	Deer Park	2075	53.2960711702	-6.2104038700
8250DB002076	South Avenue	2076	53.2935115741	-6.2105408844
8250DB002080	Greenfield Road	2080	53.2980278369	-6.2114172835
8250DB002081	Mather Road North	2081	53.2997657729	-6.2128300209
8250DB002082	North Avenue	2082	53.3019429378	-6.2129641641
8250DB002083	Stillorgan Road	2083	53.3033302224	-6.2095751202
8250DB002084	Seafield Road	2084	53.3055267569	-6.2115990204
8250DB002818	Dundrum Road	2818	53.3079493216	-6.2464180468
8250DB002819	Millmount Terrace	2819	53.3054851145	-6.2457087336
8250DB002820	Dundrum Business Pk	2820	53.3032575443	-6.2451998620
8250DB002822	Dundrum Hospital	2822	53.3010898899	-6.2457088638
8250DB002823	Sommerville	2823	53.2975220200	-6.2463502016
8250DB002824	Taney Road	2824	53.2934959072	-6.2457800716
8250DB002825	Dundrum Luas	2825	53.2924166488	-6.2457342919
8250DB002829	Balally Drive	2829	53.2843852487	-6.2368693912
8250DB002830	Dun Emer Road	2830	53.2823591247	-6.2335783549
8250DB002831	Balally Hill	2831	53.2790576327	-6.2315700335
8250DB002832	Clonard Road	2832	53.2772509424	-6.2303549896
8250DB002833	Greenlands	2833	53.2743919240	-6.2290935812
8250DB002835	St Mary's Church	2835	53.2704882013	-6.2258814227
8250DB002836	Central Bank	2836	53.2754244140	-6.2296207117
8250DB002837	Clonard Road	2837	53.2773636288	-6.2306802424
8250DB002838	Ballawley Park	2838	53.2797568614	-6.2320510485
8250DB002839	Balally Road	2839	53.2828697077	-6.2340672178
8250DB002840	Balally Drive	2840	53.2843340118	-6.2370514801
8250DB002841	Dundrum Centre	2841	53.2871835811	-6.2401139967
8250DB002842	Ballinteer Road	2842	53.2878600032	-6.2463709808
8250DB002843	Lynwood	2843	53.2843248519	-6.2455708684
8250DB002844	Ashlawn	2844	53.2826430204	-6.2448898889
8250DB002845	Wesley College	2845	53.2795467572	-6.2445968725
8250DB002846	Ballinteer Park	2846	53.2772321151	-6.2479458167
8250DB002847	Ballinteer Court	2847	53.2762539929	-6.2498902436
8250DB002848	Broadford Rise	2848	53.2753559102	-6.2554601255
8250DB002849	Broadford Close	2849	53.2774362060	-6.2551204674
8250DB002850	Broadford Drive	2850	53.2796814912	-6.2556138603
8250DB002851	Broadford Walk	2851	53.2806906440	-6.2582422136
8250DB002852	Ballinteer Comm Sch	2852	53.2806956244	-6.2610464400
8250DB002853	Ballinteer Comm Sch	2853	53.2808253393	-6.2606962422
8250DB002854	Broadford Walk	2854	53.2807215413	-6.2572811516
8250DB002855	Chestnut Grove	2855	53.2791896182	-6.2551690046
8250DB002856	Broadford Close	2856	53.2771914753	-6.2549804798
8250DB002857	Ballinteer Drive	2857	53.2747702696	-6.2553640174
8250DB002858	Ballinteer Avenue	2858	53.2751860347	-6.2524530432
8250DB002859	Ballinteer Park	2859	53.2769905048	-6.2486305051
8250DB002860	Mayfield Terrace	2860	53.2781672750	-6.2461380242
8250DB002861	Wesley College	2861	53.2795783393	-6.2449105065
8250DB002862	Ashlawn	2862	53.2829171376	-6.2451936070
8250DB002863	Wyckham Park Road	2863	53.2845895435	-6.2458449921
8250DB002864	The Gables	2864	53.2871895997	-6.2466234274
8250DB002865	Holy Cross Church	2865	53.2897040940	-6.2440304260
8250DB002866	Main Street Dundrum	2866	53.2915803668	-6.2457085584
8250DB002867	Notre Dame School	2867	53.2939975276	-6.2499449707
8250DB002868	The Oaks	2868	53.2938762632	-6.2484197664
8250DB002872	Overend Way	2872	53.2891920060	-6.2337014496
8250DB002873	Knocknashee	2873	53.2883054034	-6.2308880882
8250DB002874	Eden Park Avenue	2874	53.2871567472	-6.2273807204
8250DB002877	Hazel Villas	2877	53.2855267202	-6.2211337405
8250DB002878	Kilmacud Avenue	2878	53.2842889066	-6.2152908309
8250DB002879	Marsham Court	2879	53.2847323814	-6.2100978756
8250DB002880	Kilmacud Avenue	2880	53.2841925727	-6.2148598960
8250DB002882	Lakelands Lawn	2882	53.2846137726	-6.2183819630
8250DB002883	Sweet Briar Lane	2883	53.2856737575	-6.2219525647
8250DB002885	Eden Park Avenue	2885	53.2870794682	-6.2276239079
8250DB002886	Knocknashee	2886	53.2883466717	-6.2312463756
8250DB002887	Birches Lane	2887	53.2891484247	-6.2337932474
8250DB002892	Rosemount Estate	2892	53.2953536398	-6.2461990068
8250DB002893	Frankfort	2893	53.2976070542	-6.2466317726
8250DB002894	Dundrum Hospital	2894	53.3009317290	-6.2459554124
8250DB002895	Dundrum Business Pk	2895	53.3030430610	-6.2452836816
8250DB002896	Millmount Terrace	2896	53.3059934437	-6.2460480321
8250DB002897	Luke's Crescent	2897	53.3081951641	-6.2466330696
8250DB002969	Marley Park	2969	53.2794027289	-6.2704117487
8250DB002970	Grange Road	2970	53.2781706301	-6.2672673469
8250DB002971	Stonemasons Way	2971	53.2762927714	-6.2642242708
8250DB002976	Grange Hall	2976	53.2720572243	-6.2554595123
8250DB002977	Pine Valley	2977	53.2735737624	-6.2602109733
8250DB002978	Grange Road	2978	53.2769944482	-6.2655004562
8250DB002979	Marley Park	2979	53.2784652138	-6.2683651441
8250DB002995	South Park	2995	53.2701719335	-6.1599534822
8250DB002996	Old Bray Road	2996	53.2707636366	-6.1674399071
8250DB002998	Mount Carmel Hosp	2998	53.3044921896	-6.2638458326
8250DB003011	Bird Avenue	3011	53.3051423146	-6.2444022998
8250DB003012	Bird Avenue	3012	53.3052537916	-6.2440375918
8250DB003014	Goatstown Road	3014	53.3001489371	-6.2331142269
8250DB003015	Larchfield Road	3015	53.2984686261	-6.2337537202
8250DB003016	Willowfield Avenue	3016	53.2964289790	-6.2331927806
8250DB003017	Hollywood Park	3017	53.2943399277	-6.2311187511
8250DB003018	Drummartin Road	3018	53.2920202610	-6.2286494348
8250DB003019	Eden Park Drive	3019	53.2902669932	-6.2274019457
8250DB003020	Drummartin Close	3020	53.2891974088	-6.2249862301
8250DB003021	Lower Kilmacud Rd	3021	53.2890802465	-6.2213460956
8250DB003022	Mount Anville NS	3022	53.2888450960	-6.2170358953
8250DB003023	Mount Anville NS	3023	53.2887871289	-6.2179683017
8250DB003024	Drummartin Park	3024	53.2889759912	-6.2221904231
8250DB003025	Drummartin Close	3025	53.2890015162	-6.2257143486
8250DB003026	Drummartin Road	3026	53.2908505767	-6.2279628046
8250DB003027	Knocknashee	3027	53.2921967223	-6.2290321603
8250DB003028	Goatstown Road	3028	53.2947070196	-6.2316286483
8250DB003029	Goatstown Avenue	3029	53.2963043316	-6.2332729382
8250DB003030	Larchfield Road	3030	53.2991571865	-6.2335152549
8250DB003031	Roebuck Downs	3031	53.3014221651	-6.2335117862
8250DB003032	Blackrock Park	3032	53.3023215360	-6.1821137567
8250DB003033	Blackrock Main St	3033	53.3019932534	-6.1782715216
8250DB003034	Temple Road	3034	53.2996288196	-6.1747112509
8250DB003036	Monkstown Road	3036	53.2958444057	-6.1676564585
8250DB003037	Alma Road	3037	53.2955005171	-6.1657508793
8250DB003038	Belgrave Square	3038	53.2947524808	-6.1609522600
8250DB003039	Albany Avenue	3039	53.2943462091	-6.1579243167
8250DB003040	Monkstown Crescent	3040	53.2938237203	-6.1543613745
8250DB003041	Grosvenor Terrace	3041	53.2940285175	-6.1495969512
8250DB003042	De Vesci Terrace	3042	53.2950549316	-6.1462370835
8250DB003046	Dun Laoghaire SC	3046	53.2920057469	-6.1351482420
8250DB003047	George's St Upper	3047	53.2901702911	-6.1310130393
8250DB003048	Sandycove Station	3048	53.2884360889	-6.1270387563
8250DB003049	St Joseph's Church	3049	53.2874061042	-6.1244138836
8250DB003050	Glasthule	3050	53.2869490232	-6.1222139872
8250DB003051	Sandycove Road	3051	53.2861243257	-6.1177954006
8250DB003052	Elton Park	3052	53.2859077246	-6.1148950951
8250DB003053	Breffni Road	3053	53.2855898369	-6.1112793312
8250DB003054	Ulverton Road	3054	53.2841020241	-6.1075803363
8250DB003055	South Winds	3055	53.2818349024	-6.1068856483
8250DB003056	Church Road	3056	53.2803100842	-6.1070880295
8250DB003057	Dalkey Village	3057	53.2783843414	-6.1069481972
8250DB003058	Hyde Road	3058	53.2783993292	-6.1078923143
8250DB003059	Church Road	3059	53.2800139123	-6.1071161176
8250DB003060	The Paddocks	3060	53.2821419601	-6.1069770584
8250DB003061	Our Lady's Manor	3061	53.2841599608	-6.1078327505
8250DB003062	Breffni Road	3062	53.2855435412	-6.1117613412
8250DB003063	Sandycove Road	3063	53.2859751406	-6.1163170448
8250DB003064	Brudett Avenue	3064	53.2860328652	-6.1194043301
8250DB003065	Glasthule	3065	53.2869934493	-6.1227520199
8250DB003066	St Joseph's Church	3066	53.2877232596	-6.1257199655
8250DB003067	Sandycove Station	3067	53.2884048691	-6.1273401212
8250DB003068	George's St Upper	3068	53.2898294885	-6.1304879017
8250DB003069	Corrig Avenue	3069	53.2907530253	-6.1326376827
8250DB003070	Dun Laoghaire SC	3070	53.2921151004	-6.1358185338
8250DB003071	De Vesci Park	3071	53.2949847180	-6.1451899689
8250DB003072	Grosvenor Terrace	3072	53.2941852190	-6.1486900611
8250DB003073	Monkstown Road	3073	53.2937825861	-6.1551882458
8250DB003074	Drayton Close	3074	53.2944930303	-6.1592831817
8250DB003075	Queen's Park	3075	53.2948803787	-6.1622519515
8250DB003076	Montpellier Parade	3076	53.2954328089	-6.1660238228
8250DB003077	Montpellier Manor	3077	53.2959197206	-6.1684633689
8250DB003079	Newtown Avenue	3079	53.2983074052	-6.1705966852
8250DB003080	St John's Church	3080	53.3003614770	-6.1744249329
8250DB003081	Patrick's Row	3081	53.3006104623	-6.1777752344
8250DB003082	Frascati Road	3082	53.3004535895	-6.1780969994
8250DB003083	Frascati SC	3083	53.3012352450	-6.1810195744
8250DB003084	Frascati SC	3084	53.3013812515	-6.1811634120
8250DB003085	Blackrock Station	3085	53.3024801381	-6.1783708320
8250DB003091	Avondale Road	3091	53.2736454077	-6.1238768547
8250DB003092	Arnold Grove	3092	53.2720738490	-6.1268245773
8250DB003093	Arnold Park	3093	53.2703459406	-6.1301237596
8250DB003094	Cluny Grove	3094	53.2691938472	-6.1271604050
8250DB003095	Ballinaclea Road	3095	53.2708529484	-6.1217800637
8250DB003096	Killiney Road	3096	53.2704560954	-6.1182739459
8250DB003097	Wyvern Estate	3097	53.2699201638	-6.1150738813
8250DB003098	Killiney Hill Park	3098	53.2678688884	-6.1143845021
8250DB003099	Victoria Road	3099	53.2648499504	-6.1150270747
8250DB003100	Killiney Hill Park	3100	53.2681764152	-6.1145059037
8250DB003101	Killiney Road	3101	53.2699357789	-6.1154930128
8250DB003102	Killiney Grove	3102	53.2704251331	-6.1185901732
8250DB003103	Ballinaclea Road	3103	53.2708846276	-6.1215087858
8250DB003105	Avondale Road	3105	53.2712024082	-6.1291417590
8250DB003106	Arnold Grove	3106	53.2720024252	-6.1274274689
8250DB003107	Avondale Park	3107	53.2733749758	-6.1243985189
8250DB003108	Bellevue Avenue	3108	53.2745892673	-6.1233106848
8250DB003111	Barnhill Avenue	3111	53.2773836570	-6.1152702947
8250DB003114	Temple Hill	3114	53.2958050119	-6.1697734908
8250DB003115	Stradbrook Road	3115	53.2939921871	-6.1676157333
8250DB003116	Rowan Park	3116	53.2899226919	-6.1671749037
8250DB003117	Deansgrange Road	3117	53.2856053728	-6.1669847414
8250DB003118	St Fintan's Villas	3118	53.2839961314	-6.1663787051
8250DB003119	Deansgrange Cemetery	3119	53.2815616465	-6.1652981458
8250DB003120	Clonkeen Road	3120	53.2774499407	-6.1632848612
8250DB003122	Beech Park Road	3122	53.2739821920	-6.1616491714
8250DB003123	Meadow Vale	3123	53.2717632425	-6.1605598645
8250DB003124	South Park	3124	53.2694440888	-6.1593850128
8250DB003125	Monaloe Crescent	3125	53.2672716513	-6.1583988807
8250DB003126	Old Bray Road	3126	53.2654127995	-6.1590934378
8250DB003127	Cabinteely Park	3127	53.2626282392	-6.1539812496
8250DB003128	Cabinteely PO	3128	53.2612975538	-6.1510554796
8250DB003129	Johnstown Road	3129	53.2624552681	-6.1503609247
8250DB003130	Shrewsbury Lawn	3130	53.2586036442	-6.1460153177
8250DB003131	Kilbogget Grove	3131	53.2555169986	-6.1452045561
8250DB003132	Shanganagh Vale	3132	53.2527138195	-6.1429728179
8250DB003133	St Laurence College	3133	53.2503894673	-6.1409004404
8250DB003134	Wyattville Road	3134	53.2469068045	-6.1360313353
8250DB003135	St Columcille's Hosp	3135	53.2429290400	-6.1305552574
8250DB003136	Kentfield	3136	53.2377373355	-6.1273506167
8250DB003138	Station Road	3138	53.2343526063	-6.1247418656
8250DB003139	Stonebridge Close	3139	53.2300638456	-6.1240904707
8250DB003140	Stonebridge Close	3140	53.2297600976	-6.1242086076
8250DB003141	Station Road	3141	53.2345565768	-6.1251374392
8250DB003142	Kentfield	3142	53.2380654030	-6.1276359400
8250DB003143	St Columcille's Hosp	3143	53.2426905108	-6.1308203827
8250DB003144	Cherrywood Road	3144	53.2456905241	-6.1352750180
8250DB003145	Willow Court	3145	53.2479209891	-6.1382351099
8250DB003146	St Laurence College	3146	53.2508438488	-6.1417949297
8250DB003147	Kilbogget Grove	3147	53.2552699210	-6.1455000253
8250DB003148	Shrewsbury Lawn	3148	53.2587366191	-6.1464742408
8250DB003149	St Brigid's Church	3149	53.2611824774	-6.1500111186
8250DB003150	Cabinteely Park	3150	53.2623375546	-6.1537839007
8250DB003151	Glen Estate	3151	53.2646140593	-6.1591727276
8250DB003152	Monaloe Crescent	3152	53.2674087019	-6.1585429152
8250DB003153	Old Bray Road	3153	53.2658163136	-6.1590311257
8250DB003154	Meadow Vale	3154	53.2719834440	-6.1608502918
8250DB003155	Beech Park Road	3155	53.2742562854	-6.1619373066
8250DB003156	Deansworth	3156	53.2765380994	-6.1630240488
8250DB003158	Deansgrange Road	3158	53.2789378289	-6.1641808319
8250DB003159	Deansgrange Cemetery	3159	53.2824610520	-6.1659195141
8250DB003160	St Fintan's Villas	3160	53.2843793856	-6.1667522532
8250DB003161	Deansgrange Park	3161	53.2870045612	-6.1679597965
8250DB003162	Rowan Park	3162	53.2897488038	-6.1675573565
8250DB003163	Stradbrook Road	3163	53.2925068599	-6.1668842457
8250DB003164	Temple Hill	3164	53.2956000272	-6.1698872726
8250DB003165	Carysfort Avenue	3165	53.2993460724	-6.1797345375
8250DB003166	UCD Smurfit	3166	53.2970117180	-6.1804939435
8250DB003167	Brookfield Terrace	3167	53.2949238963	-6.1803276591
8250DB003168	Proby Square	3168	53.2922416290	-6.1800816515
8250DB003169	St Augustine's Sch	3169	53.2885728297	-6.1805676074
8250DB003171	Newtown Park	3171	53.2874250402	-6.1766265186
8250DB003173	Meadow Close	3173	53.2847051420	-6.1774472738
8250DB003174	Granville Park	3174	53.2821483563	-6.1801206891
8250DB003175	Stillorgan Road	3175	53.2796195212	-6.1834524511
8250DB003176	Leopardstown Rd	3176	53.2775748248	-6.1861184894
8250DB003177	Foxrock Manor	3177	53.2760723085	-6.1883864561
8250DB003178	Torquay Road	3178	53.2743714301	-6.1929868477
8250DB003179	Racecourse	3179	53.2730037855	-6.1988323771
8250DB003181	Carmanhall Road	3181	53.2767339178	-6.2077779044
8250DB003182	Heather Road	3182	53.2752119417	-6.2141695332
8250DB003183	Bracken Road	3183	53.2761898780	-6.2170528770
8250DB003184	Moreen Avenue	3184	53.2761924014	-6.2238457146
8250DB003187	Burton Hall Road	3187	53.2738266123	-6.2033261714
8250DB003188	Racecourse	3188	53.2731773979	-6.1990200052
8250DB003189	Silverpark GAA	3189	53.2738443411	-6.1955731757
8250DB003190	Torquay Road	3190	53.2748845876	-6.1918555651
8250DB003191	Foxrock Manor	3191	53.2763141538	-6.1883312404
8250DB003192	Kelston Park	3192	53.2774821727	-6.1865273050
8250DB003193	Newtownpark Avenue	3193	53.2798335028	-6.1833383971
8250DB003194	Holly Park Avenue	3194	53.2832613826	-6.1788435482
8250DB003195	Meadow Close	3195	53.2848953777	-6.1775441669
8250DB003196	Newtown Park	3196	53.2873803132	-6.1772284026
8250DB003198	Carysfort Avenue	3198	53.2898856440	-6.1806018167
8250DB003199	Proby Square	3199	53.2925845646	-6.1801720808
8250DB003200	UCD Smurfit	3200	53.2966726719	-6.1806583841
8250DB003201	Frascati Road	3201	53.2995347040	-6.1797265143
8250DB003202	Glenageary Rd Lower	3202	53.2888504757	-6.1299606494
8250DB003203	Traverslea Close	3203	53.2852204972	-6.1323390180
8250DB003204	Silchester Park	3204	53.2824353373	-6.1341402530
8250DB003205	Sallynoggin Road	3205	53.2793911387	-6.1371972559
8250DB003206	Honey Park	3206	53.2782322995	-6.1395421033
8250DB003207	Pearse Close	3207	53.2772592108	-6.1405441180
8250DB003208	St Kevin's School	3208	53.2761873318	-6.1386712087
8250DB003209	Pearse Street	3209	53.2744369005	-6.1376676298
8250DB003210	Sallynoggin College	3210	53.2735043400	-6.1395375285
8250DB003211	Beechwood Lawn	3211	53.2712876285	-6.1380294477
8250DB003212	Granitefield	3212	53.2691150352	-6.1399230514
8250DB003213	Killiney SC	3213	53.2670619925	-6.1362340822
8250DB003214	Churchview Road	3214	53.2646008432	-6.1346170978
8250DB003215	Auburn Drive	3215	53.2620312701	-6.1375621925
8250DB003216	Kilbogget Park	3216	53.2588723069	-6.1378793432
8250DB003217	Ballybrack SC	3217	53.2570425976	-6.1358304041
8250DB003218	Pinewood	3218	53.2549234444	-6.1325202401
8250DB003219	Oakton Park	3219	53.2531103794	-6.1309655774
8250DB003220	Wyattville Close	3220	53.2507234861	-6.1329429825
8250DB003221	Loughlinstown Drive	3221	53.2489840371	-6.1326440778
8250DB003222	Loughlinstown Park	3222	53.2466024812	-6.1286568056
8250DB003223	Loughlinstown Drive	3223	53.2491504110	-6.1329365555
8250DB003224	Ashlawn	3224	53.2519458476	-6.1323651955
8250DB003225	Ballybrack SC	3225	53.2552948673	-6.1338530099
8250DB003226	Kilbogget Park	3226	53.2585470716	-6.1377735580
8250DB003227	Auburn Drive	3227	53.2619541742	-6.1378053938
8250DB003228	Church Road	3228	53.2647542454	-6.1346553947
8250DB003229	Churchview Road	3229	53.2653527759	-6.1344194527
8250DB003230	Drumkeen Manor	3230	53.2685015291	-6.1392000392
8250DB003231	Granitefield	3231	53.2700894891	-6.1418898734
8250DB003232	Pearse Villas	3232	53.2716039689	-6.1404447332
8250DB003233	Pearse Street	3233	53.2727414787	-6.1413400043
8250DB003234	Sallynoggin College	3234	53.2736036130	-6.1395632064
8250DB003235	Pearse Park	3235	53.2771807074	-6.1406974861
8250DB003236	Honey Park	3236	53.2779835040	-6.1403027246
8250DB003237	Sarsfield Street	3237	53.2791423584	-6.1379579112
8250DB003238	Holmston Avenue	3238	53.2833097334	-6.1337271985
8250DB003239	Crosthwaite Park	3239	53.2843864952	-6.1330353310
8250DB003240	Corrig Road	3240	53.2871718711	-6.1312489286
8250DB003241	Sallynoggin Park	3241	53.2772562015	-6.1415039939
8250DB003242	O'Rourke Park	3242	53.2753571003	-6.1453802181
8250DB003243	Somerton	3243	53.2741733398	-6.1484454513
8250DB003244	Garden Centre	3244	53.2725500613	-6.1457866415
8250DB003245	Johnstown Road	3245	53.2706836138	-6.1425238282
8250DB003246	Johnstown Road	3246	53.2710762761	-6.1434963971
8250DB003247	Garden Centre	3247	53.2726452445	-6.1461273925
8250DB003248	Sallynoggin Road	3248	53.2747560281	-6.1483452885
8250DB003249	Mackinstosh Park	3249	53.2730249564	-6.1532183602
8250DB003254	Saint Gabriels	3254	53.2636615722	-6.1481651093
8250DB003255	Cornelscourt SC	3255	53.2664828489	-6.1632003032
8250DB003258	Westminister Grove	3258	53.2725411593	-6.1719821118
8250DB003259	Westminister Grove	3259	53.2728336740	-6.1717147246
8250DB003262	Cornelscourt SC	3262	53.2657264011	-6.1613587388
8250DB003276	Glenamuck Rd North	3276	53.2571100245	-6.1709315616
8250DB003277	The View	3277	53.2482370009	-6.1819949608
8250DB003278	Rockville Drive	3278	53.2449049274	-6.1868863469
8250DB003279	Cromlech Close	3279	53.2396615095	-6.1955582821
8250DB003280	Wayside Cottages	3280	53.2377713032	-6.1953831059
8250DB003282	Kiltiernan Village	3282	53.2357465354	-6.1934458029
8250DB003283	Kiltiernan Village	3283	53.2357973490	-6.1938331791
8250DB003284	Golden Ball	3284	53.2392794200	-6.1964433478
8250DB003285	Rockville Drive	3285	53.2448461498	-6.1871585543
8250DB003289	Brennanstown Road	3289	53.2571123230	-6.1710813525
8250DB003306	Sycamore Drive	3306	53.2633563373	-6.1685512191
8250DB003307	Kerrymount Green	3307	53.2662010113	-6.1664956528
8250DB003309	Kerrymount Green	3309	53.2669288131	-6.1658947998
8250DB003310	Kilternan NS	3310	53.2425438154	-6.1989282203
8250DB003312	Hainault Road	3312	53.2618792737	-6.1701134005
8250DB003317	Brewery Road	3317	53.2738941745	-6.2006542817
8250DB003318	Ellesmere	3318	53.2800782809	-6.1970951589
8250DB003320	Farmleigh Avenue	3320	53.2818816986	-6.1950995541
8250DB003321	Stillorgan SC	3321	53.2884693637	-6.2004017791
8250DB003322	Stillorgan SC	3322	53.2880841456	-6.2016779432
8250DB003343	O'Rourke Park	3343	53.2761981805	-6.1439791965
8250DB003344	Coppinger Wood	3344	53.2898996573	-6.1862413518
8250DB003345	Stillorgan Park	3345	53.2894020576	-6.1854374238
8250DB003466	St Mary's Church	3466	53.2706680789	-6.2258889674
8250DB003467	Bearna Park	3467	53.2688450880	-6.2229808721
8250DB003469	Mount Eagle Way	3469	53.2661284083	-6.2162122404
8250DB003470	Sandyford Hall	3470	53.2635901620	-6.2123752500
8250DB003471	Ballyogan Road	3471	53.2621367535	-6.2113565569
8250DB003472	Castle Lodge	3472	53.2592158182	-6.2119731121
8250DB003473	St Patrick's Park	3473	53.2541201605	-6.2144188362
8250DB003474	Stepaside Lane	3474	53.2525268640	-6.2130614159
8250DB003475	Cairnfort	3475	53.2494310485	-6.2068213457
8250DB003476	Palmerston FC	3476	53.2462046945	-6.2008873437
8250DB003477	Kilternan NS	3477	53.2430093285	-6.1988037825
8250DB003478	Golden Ball	3478	53.2390505484	-6.1961683040
8250DB003479	Moss Cottages	3479	53.2329068306	-6.1893409172
8250DB003481	Kilternan Church	3481	53.2438807132	-6.1993665508
8250DB003482	Palmerston FC	3482	53.2461424942	-6.2009349084
8250DB003483	Cairnfort	3483	53.2496123077	-6.2075181156
8250DB003484	Stepaside Lane	3484	53.2527188655	-6.2138777120
8250DB003485	Kilgobbin Heights	3485	53.2552225458	-6.2154070977
8250DB003486	Castle Lodge	3486	53.2593224868	-6.2118937142
8250DB003487	Ballyogan Road	3487	53.2622400585	-6.2116520571
8250DB003488	Sandyford Hall	3488	53.2639481241	-6.2128700177
8250DB003489	Kilgobbin Heights	3489	53.2662254086	-6.2166879456
8250DB003491	Lambs Cross	3491	53.2655320423	-6.2292648719
8250DB003492	Bearna Park	3492	53.2690956610	-6.2235102261
8250DB003493	Lambs Cross	3493	53.2652072461	-6.2297880077
8250DB003494	Blackglen Road	3494	53.2654029955	-6.2345022920
8250DB003495	Woodside Road	3495	53.2641117048	-6.2401771894
8250DB003496	Woodside Road	3496	53.2630693326	-6.2377615005
8250DB003497	Slate Cabin Lane	3497	53.2617849309	-6.2347862591
8250DB003498	Rockfield	3498	53.2599931041	-6.2321469134
8250DB003499	Granite Field	3499	53.2545746755	-6.2310364585
8250DB003500	Barnaculla	3500	53.2529717727	-6.2290193649
8250DB003501	The Paddocks	3501	53.2521779897	-6.2246010052
8250DB003502	Ballyedmonduff Road	3502	53.2496931548	-6.2219164722
8250DB003503	Ballyedmonduff	3503	53.2449187097	-6.2206010120
8250DB003504	Ballyedmonduff	3504	53.2415624267	-6.2221636847
8250DB003505	Taylor's Folly	3505	53.2375247006	-6.2220314040
8250DB003506	Newtown	3506	53.2327380513	-6.2217054758
8250DB003507	Pinefield House	3507	53.2239337252	-6.2201832018
8250DB003508	Johnnie Fox's	3508	53.2214576491	-6.2198965003
8250DB003510	Fiery Lane	3510	53.2210116064	-6.2255460361
8250DB003512	Walsh's Lane	3512	53.2219310543	-6.2354074637
8250DB003514	Ballybrack Road	3514	53.2239176721	-6.2402832121
8250DB003515	Stars of Erin GAA	3515	53.2202725567	-6.2290360212
8250DB003516	Fiery Lane	3516	53.2210214808	-6.2256055325
8250DB003517	Johnnie Fox's	3517	53.2217513972	-6.2197045996
8250DB003518	Red House Road	3518	53.2240785674	-6.2202520809
8250DB003519	Pinefield House	3519	53.2287140399	-6.2212880794
8250DB003521	Taylor's Folly	3521	53.2375707313	-6.2221044058
8250DB003523	Ballyedmonduff	3523	53.2449800238	-6.2204935760
8250DB003524	Ballyedmonduff Road	3524	53.2498332578	-6.2222703314
8250DB003525	The Paddocks	3525	53.2523218766	-6.2252095173
8250DB003527	Barnaculla	3527	53.2546323510	-6.2312888725
8250DB003528	Granite Field	3528	53.2565796480	-6.2322876985
8250DB003529	Woodside Cottages	3529	53.2608063428	-6.2330427505
8250DB003532	Blackglen Road	3532	53.2647946194	-6.2401641350
8250DB003533	Blackglen Court	3533	53.2654719729	-6.2343045583
8250DB003534	Churchview Road	3534	53.2548686122	-6.1301694807
8250DB003535	Church Road	3535	53.2568175243	-6.1272065941
8250DB003536	Ballybrack Village	3536	53.2538610847	-6.1249676771
8250DB003537	Ballybrack Cross	3537	53.2519528921	-6.1236573289
8250DB003538	Sheelin Estate	3538	53.2496624406	-6.1231880886
8250DB003539	River Close	3539	53.2440183365	-6.1215171152
8250DB003540	Shanganagh Bridge	3540	53.2426809255	-6.1216356352
8250DB003541	Hazelwood	3541	53.2388260878	-6.1228532447
8250DB003542	Rathsallagh	3542	53.2364001689	-6.1229144655
8250DB003543	St Anne's Church	3543	53.2337286400	-6.1233609436
8250DB003544	Beechfield Manor	3544	53.2343671297	-6.1222393941
8250DB003545	Shankill Church	3545	53.2337673981	-6.1235390182
8250DB003552	Rathsallagh	3552	53.2372028920	-6.1230890853
8250DB003553	Hazelwood	3553	53.2390265276	-6.1230242644
8250DB003554	Shanganagh Bridge	3554	53.2428981515	-6.1217310088
8250DB003555	Aran Avenue	3555	53.2449122993	-6.1217776483
8250DB003556	The Elms	3556	53.2481179653	-6.1232856680
8250DB003557	Sheelin Estate	3557	53.2493962746	-6.1234095485
8250DB003560	Ballybrack Village	3560	53.2528818111	-6.1244259968
8250DB003561	Wyattville Road	3561	53.2567032588	-6.1285156172
8250DB003563	Kilmacud Road Lower	3563	53.2886318994	-6.2046249072
8250DB004086	Grange Growers	4086	53.2284710498	-6.1854987997
8250DB004087	Ski Club of Ireland	4087	53.2233969284	-6.1816545562
8250DB004088	The Scalp Wood	4088	53.2203949175	-6.1816619336
8250DB004121	The Scalp Wood	4121	53.2202060548	-6.1816549589
8250DB004122	Ski Club of Ireland	4122	53.2233900015	-6.1817896435
8250DB004123	Grange Growers	4123	53.2288641390	-6.1859315458
8250DB004124	Claremount	4124	53.2278303201	-6.1243828459
8250DB004125	Shanganagh Castle	4125	53.2234316454	-6.1236015802
8250DB004126	Shanganagh Cemetery	4126	53.2221831727	-6.1219488111
8250DB004127	St James's Church	4127	53.2187787042	-6.1198065087
8250DB004128	Woodbrook College	4128	53.2159235278	-6.1194374076
8250DB004202	Woodbrook College	4202	53.2160003459	-6.1197485099
8250DB004203	St James's Church	4203	53.2197605963	-6.1205122935
8250DB004204	Shanganagh Castle	4204	53.2233240936	-6.1236212600
8250DB004205	Crinken Lane	4205	53.2245394733	-6.1248861480
8250DB004206	Claremount	4206	53.2275029229	-6.1247117091
8250DB004313	Ballyogan Luas	4313	53.2549233558	-6.1842893485
8250DB004332	Nutgrove SC	4332	53.2900844164	-6.2688102286
8250DB004333	Marley Court	4333	53.2862368957	-6.2662959935
8250DB004334	Dargle View	4334	53.2838186204	-6.2650290818
8250DB004336	Marley Court	4336	53.2861764128	-6.2664634298
8250DB004337	Nutgrove SC	4337	53.2907250321	-6.2689793294
8250DB004349	Blackthorn Drive	4349	53.2758454958	-6.2277138979
8250DB004350	Moreen Avenue	4350	53.2761884315	-6.2229761431
8250DB004353	National School	4353	53.2924078077	-6.1703837815
8250DB004354	Marian Park	4354	53.2874759948	-6.1758443738
8250DB004355	Newtownpark Church	4355	53.2911889275	-6.1717859503
8250DB004393	Ballyogan Avenue	4393	53.2593873591	-6.1935437166
8250DB004395	Ballyogan Court	4395	53.2572217972	-6.1894380985
8250DB004396	Ballyogan Road	4396	53.2568126626	-6.1932775100
8250DB004397	The Rise	4397	53.2755141994	-6.2515399460
8250DB004457	Ravenscourt Park	4457	53.2750555666	-6.2091377056
8250DB004460	Whately Place	4460	53.2872824765	-6.2081313493
8250DB004462	Sallynoggin	4462	53.2751672746	-6.1378158180
8250DB004475	Dale Drive	4475	53.2890643092	-6.2124667717
8250DB004477	Kilmacud Road Lower	4477	53.2889726059	-6.2051656186
8250DB004486	Dundrum Centre	4486	53.2888894379	-6.2454738246
8250DB004565	Kill Avenue	4565	53.2813421956	-6.1551543052
8250DB004566	IADT Dun Laoghaire	4566	53.2819240750	-6.1520997177
8250DB004567	Glenageary Road	4567	53.2829289189	-6.1473469881
8250DB004568	Kill Avenue	4568	53.2827840373	-6.1472782666
8250DB004569	IADT Dun Laoghaire	4569	53.2816226985	-6.1529525837
8250DB004570	Holy Family Church	4570	53.2808004681	-6.1573222452
8250DB004571	Stillorgan Park	4571	53.2889790522	-6.1948753581
8250DB004582	Broadford Road	4582	53.2812900029	-6.2617421684
8250DB004636	Galloping Green	4636	53.2806915208	-6.1901106895
8250DB004637	Stillorgan Village	4637	53.2891079405	-6.1962649276
8250DB004705	St Helen's Road	4705	53.3108182691	-6.2000770661
8250DB004707	Llewellyn Park	4707	53.2824167705	-6.2625812875
8250DB004708	Llewellyn Close	4708	53.2839224483	-6.2653698305
8250DB004709	Landscape Park	4709	53.2970124672	-6.2600385199
8250DB004710	Churchtown Road	4710	53.2957325434	-6.2585603234
8250DB004712	Llewellyn Park	4712	53.2829204380	-6.2632207525
8250DB004727	Laurence Park	4727	53.2908117068	-6.1977832100
8250DB004728	Oatlands College	4728	53.2933378858	-6.2019822893
8250DB004731	National Rehab Hosp	4731	53.2759760552	-6.1516665453
8250DB004732	National Rehab Hosp	4732	53.2758242046	-6.1511482558
8250DB004771	Sycamore Drive	4771	53.2639263803	-6.1682120389
8250DB004772	Hainault Road	4772	53.2616818893	-6.1701368192
8250DB004773	Leopardstown SC	4773	53.2581778815	-6.1967724055
8250DB004779	St Raphaela's Road	4779	53.2831787950	-6.2089929754
8250DB004830	Barnhill Road	4830	53.2772540929	-6.1144662077
8250DB004847	Blackthorn Drive	4847	53.2798151061	-6.2130477969
8250DB004848	Maple Avenue	4848	53.2778139099	-6.2180649871
8250DB004952	UCD	4952	53.3048966218	-6.2169373171
8250DB004953	UCD	4953	53.3049610697	-6.2170396703
8250DB004981	Pearse Villas	4981	53.2726650494	-6.1375947168
8250DB004983	Dun Laoghaire Stn	4983	53.2940779011	-6.1343078684
8250DB004984	Burton Hall Road	4984	53.2736568459	-6.2033932702
8250DB004987	Heather Lawn	4987	53.2773584977	-6.2633413194
8250DB004988	Heather Lawn	4988	53.2776523135	-6.2631494558
8250DB005013	Belarmine	5013	53.2612838641	-6.2204312737
8250DB005014	Littlewood	5014	53.2588998275	-6.2208900068
8250DB005015	Belarmine Avenue	5015	53.2586171146	-6.2206169452
8250DB005032	Rosemount Estate	5032	53.2954690929	-6.2461042634
8250DB005045	St Raphaela's Road	5045	53.2835769575	-6.2091712972
8250DB005046	Valley Drive	5046	53.2459061836	-6.1392966198
8250DB005047	Valley Drive	5047	53.2458119527	-6.1401698399
8250DB005090	Shanganagh Cemetery	5090	53.2217038089	-6.1217601153
8250DB005105	Cluny Grove	5105	53.2692087138	-6.1275345859
8250DB005106	Ballyogan Luas	5106	53.2549333936	-6.1849483998
8250DB005127	Cabinteely Bypass	5127	53.2620155970	-6.1504098828
8250DB005128	Clonkeen Road	5128	53.2655267045	-6.1577392758
8250DB005142	Sandyford Luas	5142	53.2776744716	-6.2051742301
8250DB005143	Blackthorn Green	5143	53.2756669551	-6.2277962614
8250DB005171	Kingston	5171	53.2717359438	-6.2482605651
8250DB006006	Kilcross Road	6006	53.2698660358	-6.2287708929
8250DB006007	Kilcross Road	6007	53.2697615821	-6.2290001090
8250DB006041	Dundrum Luas	6041	53.2926644772	-6.2460841640
8250DB006082	Greythorn Park	6082	53.2807965882	-6.1374060726
8250DB006085	Grange Grove	6085	53.2864920896	-6.1661968205
8250DB006086	Grange Grove	6086	53.2862444805	-6.1652924798
8250DB006103	St Kevin's Villas	6103	53.2809987931	-6.1382671235
8250DB006196	Rockview Road	6196	53.2667311725	-6.2416587696
8250DB006197	Rockview Road	6197	53.2666871424	-6.2417205447
8250DB006198	Sandyford View	6198	53.2694758989	-6.2394470981
8250DB006200	Rockview	6200	53.2693042936	-6.2406086109
8250DB006201	Sandyford View	6201	53.2695722754	-6.2392782137
8250DB006334	Frascati SC	6334	53.3010989674	-6.1803351700
8250DB007056	Somerton	7056	53.2735313073	-6.1476185049
8250DB007057	Stillorgan Luas	7057	53.2801060993	-6.2102762349
8250DB007176	Greenlands	7176	53.2735190400	-6.2290247050
8250DB007188	Temple Road	7188	53.2994765772	-6.1747477516
8250DB007290	Belarmine Drive	7290	53.2602856261	-6.2209973693
8250DB007291	Enniskerry Road	7291	53.2556313414	-6.2193020167
8250DB007317	The Nurseries	7317	53.2521797542	-6.1249363057
8250DB007323	Wyattville Road	7323	53.2563464457	-6.1269723684
8250DB007324	The View	7324	53.2483178439	-6.1819915329
8250DB007325	Clayton Hotel	7325	53.2719332975	-6.2065243298
8250DB007326	Clayton Hotel	7326	53.2714287558	-6.2076400010
8250DB007330	Bluepool Pitches	7330	53.2885166422	-6.1535251724
8250DB007353	Priory Grove	7353	53.2934957289	-6.2017206326
8250DB007360	The Park	7360	53.2514465109	-6.1820387035
8250DB007361	Old Bray Road	7361	53.2705832892	-6.1662331384
8250DB007362	Clonkeen Road	7362	53.2659394317	-6.1576915466
8250DB007372	Carrickmines Luas	7372	53.2544603789	-6.1722286707
8250DB007373	Carrickmines Luas	7373	53.2548291203	-6.1722429241
8250DB007375	M50 Bridge	7375	53.2725671693	-6.2284792832
8250DB007393	Marsham Court	7393	53.2844772996	-6.2110684347
8250DB007394	Lakelands Lawn	7394	53.2846665704	-6.2177048367
8250DB007415	Glencairn Luas	7415	53.2656613211	-6.2108346414
8250DB007416	Mount Eagle Park	7416	53.2689777332	-6.2114158140
8250DB007417	Glencairn Luas	7417	53.2657381171	-6.2105615821
8250DB007418	Murphystown Way	7418	53.2691475045	-6.2113487546
8250DB007419	Rowanbyrn	7419	53.2873813281	-6.1708385779
8250DB007420	Annaville Terrace	7420	53.2892590230	-6.1772384163
8250DB007421	Annaville Terrace	7421	53.2894131852	-6.1761518387
8250DB007422	Rowanbyrn	7422	53.2875241272	-6.1707724789
8250DB007472	Killiney SC	7472	53.2670680823	-6.1366236213
8250DB007553	Park Pointe SC	7553	53.2824965122	-6.1420864541
8250DB007554	Park Pointe SC	7554	53.2827419677	-6.1439955402
8250DB007556	The Elms	7556	53.2480439849	-6.1231540337
8250DB007567	Blackthorn Avenue	7567	53.2731496260	-6.2043292033
8250DB007584	Stillorgan Grove	7584	53.2901329566	-6.1927266474
8250DB007634	Cabinteely Court	7634	53.2681990968	-6.1497981185
8250DB007635	Cabinteely Court	7635	53.2685966458	-6.1499308802
8250DB007636	Mackintosh Park	7636	53.2759666264	-6.1557007516
8250DB007637	Clonkeen Crescent	7637	53.2768569208	-6.1568920750
8250DB007639	Brides Glen Luas	7639	53.2413989701	-6.1430732291
8250DB007640	Cherrywood Bus Pk	7640	53.2433483505	-6.1406962433
8250DB007641	Glenageary Park	7641	53.2786716253	-6.1354439647
8250DB007642	Park Close	7642	53.2743144350	-6.1344340341
8250DB007643	Sallyglen Road	7643	53.2673257568	-6.1347083606
8250DB007644	Sallyglen Road	7644	53.2676424810	-6.1348444985
8250DB007645	Park Close	7645	53.2751003475	-6.1346847151
8250DB007646	Glenageary Avenue	7646	53.2790894969	-6.1357257055
8250DB007651	Amgen	7651	53.2716014150	-6.1518403039
8250DB007660	Frascati Road	7660	53.2991460631	-6.1748818768
8250DB007666	Barnhill Road	7666	53.2767852360	-6.1200653274
8250DB007716	Dundrum Town Centre	7716	53.2870781788	-6.2433281628
8250DB007717	Dundrum South	7717	53.2854051614	-6.2414169799
8250DB007718	Ballinteer Road	7718	53.2889826687	-6.2444800117
8250DB007719	Taney Park	7719	53.2920902765	-6.2424924550
8250DB007720	Sydenham Road	7720	53.2900691729	-6.2395303709
8260DB003008	Rail Park	3008	53.3740034000	-6.5864956331
8260DB003112	Hawthorn View	3112	53.3505108958	-6.5447340779
8260DB003897	Backweston Park	3897	53.3458732591	-6.4997441130
8260DB003898	Backweston	3898	53.3453192980	-6.5021516024
8260DB003899	Coneyburrow	3899	53.3440310451	-6.5083694261
8260DB003900	Celbridge Park	3900	53.3433973718	-6.5116054877
8260DB003901	The Orchard	3901	53.3424463343	-6.5160689455
8260DB003902	Ballyoulster Park	3902	53.3418450325	-6.5190333260
8260DB003904	Donacumper Cemetery	3904	53.3399279639	-6.5282602347
8260DB003905	Riverview	3905	53.3378803826	-6.5378962123
8260DB003906	Celbridge Main St	3906	53.3391541408	-6.5391591057
8260DB003907	Castletown	3907	53.3408430817	-6.5376296623
8260DB003908	Maynooth Road	3908	53.3430097871	-6.5406192353
8260DB003909	Beatty Park	3909	53.3467827243	-6.5419322483
8260DB003910	Thornhill	3910	53.3522627262	-6.5468825566
8260DB003911	Crodaun Forest Park	3911	53.3542700031	-6.5471297389
8260DB003912	Salesian College	3912	53.3590800541	-6.5516986296
8260DB003913	Maynooth Road	3913	53.3621068313	-6.5567194745
8260DB003914	Obelisk Lane	3914	53.3670128654	-6.5670572517
8260DB003917	Maynooth Station	3917	53.3795389497	-6.5887022238
8260DB003918	Old Greenfield	3918	53.3764500205	-6.5874216124
8260DB003919	Obelisk Lane	3919	53.3666482333	-6.5658823963
8260DB003920	Maynooth Road	3920	53.3619935729	-6.5562725561
8260DB003921	Salesian College	3921	53.3590111504	-6.5512051797
8260DB003922	Crodaun Forest Park	3922	53.3553810963	-6.5468515856
8260DB003923	Thornhill	3923	53.3520790226	-6.5465583345
8260DB003924	Beatty Park	3924	53.3460711526	-6.5418063371
8260DB003925	Rockfield Manor	3925	53.3725792636	-6.5846341655
8260DB003926	Rail Park	3926	53.3741381622	-6.5864911706
8260DB003927	Chestnut Grove	3927	53.3427303488	-6.5398177994
8260DB003928	Castletown	3928	53.3406811856	-6.5376201847
8260DB003929	Celbridge Main St	3929	53.3389827093	-6.5391048979
8260DB003935	Donacumper Cemetery	3935	53.3397467884	-6.5296029957
8260DB003936	Ballyoulster	3936	53.3420206114	-6.5186968471
8260DB003938	Celbridge Park	3938	53.3433430967	-6.5122982244
8260DB003939	Coneyburrow	3939	53.3446150919	-6.5062013421
8260DB003940	Backweston	3940	53.3455462810	-6.5016179738
8260DB003941	Backweston Park	3941	53.3460465169	-6.4992273709
8260DB003954	Springfield Hotel	3954	53.3605354602	-6.4786905949
8260DB003955	Cooldrinagh Terrace	3955	53.3616765980	-6.4829019912
8260DB003956	Salmon Leap	3956	53.3621337660	-6.4849291581
8260DB003957	Leixlip	3957	53.3643398774	-6.4866690072
8260DB003958	Leixlip Main St	3958	53.3636014179	-6.4908121851
8260DB003959	Our Lady's Nativity	3959	53.3656684472	-6.4929329629
8260DB003960	Ryevale Lawns	3960	53.3669485726	-6.4975160116
8260DB003961	Green Lane	3961	53.3679512071	-6.5007716577
8260DB003962	Louisa Bridge Stn	3962	53.3694201142	-6.5060999506
8260DB003963	Intel East	3963	53.3709990345	-6.5130628353
8260DB003964	Intel Main Entrance	3964	53.3729965366	-6.5211989916
8260DB003965	Intel West	3965	53.3743709166	-6.5284105239
8260DB003966	Maynooth SC	3966	53.3819527630	-6.5860970450
8260DB003968	Carton House	3968	53.3779548870	-6.5539741106
8260DB003980	Kingsbry	3980	53.3729384386	-6.5891609143
8260DB003981	Maynooth	3981	53.3819989745	-6.5900037969
8260DB003982	Maynooth SC	3982	53.3821078908	-6.5855357248
8260DB003983	Carton House	3983	53.3780202649	-6.5526943012
8260DB003985	Intel West	3985	53.3741141672	-6.5265407261
8260DB003986	Intel Main Entrance	3986	53.3737778332	-6.5247789047
8260DB003987	Intel East	3987	53.3709634722	-6.5123727808
8260DB003989	Louisa Bridge Stn	3989	53.3695071321	-6.5058714913
8260DB003990	Ryevale Lawns	3990	53.3678139203	-6.4998598298
8260DB003991	Our Lady's Nativity	3991	53.3657541119	-6.4925993601
8260DB003993	Captain's Hill	3993	53.3714458380	-6.4864020783
8260DB003995	River Forest	3995	53.3720541078	-6.4890105064
8260DB003996	Captain's Hill	3996	53.3711667702	-6.4863668885
8260DB003997	Riverdale	3997	53.3669495123	-6.4876283829
8260DB003998	Leixlip	3998	53.3644923765	-6.4873547932
8260DB003999	Cooldrinagh Terrace	3999	53.3618367662	-6.4834822744
8260DB004000	Springfield Hotel	4000	53.3605396572	-6.4783148326
8260DB004002	Highfield Park	4002	53.3640016013	-6.4968834498
8260DB004003	Hewlett Packard	4003	53.3544467335	-6.5082761310
8260DB004404	Castletown	4404	53.3624098157	-6.5003802360
8260DB004405	Highfield Park	4405	53.3642504993	-6.4966643271
8260DB005112	Leixlip Park	5112	53.3623339815	-6.5000673720
8260DB005113	Maynooth	5113	53.3817579998	-6.5901470450
8260DB005114	Kingsbury	5114	53.3724015198	-6.5893590013
8260DB005118	Hawthorn View	5118	53.3505136423	-6.5449592972
8260DB006089	Old Greenfield	6089	53.3765331891	-6.5876142490
8260DB006156	Leixlip GAA Club	6156	53.3659040368	-6.5030824682
8260DB006157	Easton Road	6157	53.3649434720	-6.5089161830
8260DB006158	Barnhall Road	6158	53.3650906276	-6.5149515157
8260DB006159	Easton Road	6159	53.3649122274	-6.5092929239
8260DB006160	Accommodation Road	6160	53.3652342800	-6.5077339913
8260DB006161	Scoil Bhride	6161	53.3664311267	-6.5013960428
8260DB006164	Glen Easton	6164	53.3646853614	-6.5170542105
8260DB006165	Oaklawn	6165	53.3653092359	-6.5058230524
8260DB007074	Griffin Rath Manor	7074	53.3697273822	-6.5798597903
8260DB007075	Griffin Rath Manor	7075	53.3696418301	-6.5802232967
8260DB007079	Ash Grove	7079	53.3502218316	-6.5483038423
8260DB007080	Willowbrook Park	7080	53.3474086104	-6.5505172130
8260DB007081	Willowbrook Lawns	7081	53.3447825772	-6.5496450882
8260DB007082	Priory Square	7082	53.3380575677	-6.5576217948
8260DB007083	Oakleigh	7083	53.3353676155	-6.5529526474
8260DB007084	English Row	7084	53.3378767916	-6.5405392258
8260DB007085	English Row	7085	53.3379541588	-6.5402512715
8260DB007086	Celbridge Abbey	7086	53.3352955609	-6.5529400711
8260DB007087	Priory Square	7087	53.3382359792	-6.5575106583
8260DB007088	Oldtown Road	7088	53.3436980155	-6.5506280613
8260DB007089	Willowbrook Lawns	7089	53.3449000997	-6.5497011747
8260DB007091	Castle Village	7091	53.3502863637	-6.5484368365
8260DB007108	Riverview	7108	53.3380224712	-6.5377562034
8260DB007110	The Orchard	7110	53.3427911223	-6.5148855532
8260DB007234	Old Hill	7234	53.3658732489	-6.4956304786
8260DB007278	Ballymore Eustace	7278	53.1324599639	-6.6105767505
8260DB007282	Waterworks Road	7282	53.1303236933	-6.6000803926
8260DB007283	Ballymore Road	7283	53.1287106522	-6.5875505830
8260DB007286	Ballymore Road	7286	53.1264974690	-6.5805702859
8260DB007288	Lake Picnic Area	7288	53.1294301990	-6.5762744930
8260DB007313	Beechpark Estate	7313	53.3654580048	-6.5228274745
8260DB007314	Beechpark Estate	7314	53.3653807415	-6.5223943897
8260DB007565	Oldtown Road	7565	53.3438060529	-6.5499035095
8260DB007694	Carton Grove	7694	53.3814179785	-6.5773963983
8260DB007704	Carton Grove	7704	53.3815397852	-6.5778132257
8260DB007712	Lough na Mona	7712	53.3652703158	-6.5142240130
8260DB007744	Celbridge Road	7744	53.3496857209	-6.5113563776
8260DB007745	Church Road	7745	53.3414849065	-6.5541571829
8260DB007746	Church Road	7746	53.3404978581	-6.5550315455
8260DB007747	Canoe Club	7747	53.3486608086	-6.5113320080
8260DB007764	Hazelhatch Road	7764	53.3290618730	-6.5297302762
8260DB007765	Hazelhatch Road	7765	53.3286896450	-6.5294277988
8260DB007767	Hewlett Packard	7767	53.3542634894	-6.5079971077
8260DB007770	Leixlip Park	7770	53.3604675000	-6.5031678660
8260DB007771	Elton Court	7771	53.3608131597	-6.5027801364
8260DB007777	M4 Business Park	7777	53.3592528620	-6.5459536309
8260DB007778	M4 Business Park	7778	53.3588181340	-6.5464191448
8260DB007785	Old Hill	7785	53.3663038161	-6.4962764743
8260DB007788	Primrose Hill	7788	53.3361936329	-6.5352060118
8260DB007789	Priory Lodge	7789	53.3353522722	-6.5450399885
8260DB007790	Priory Lodge	7790	53.3347778246	-6.5458403380
8260DB007794	Shinkeen Road	7794	53.3350542933	-6.5324521823
8260DB007795	Shinkeen Road	7795	53.3352226504	-6.5329869604
8260DB007798	St Mary's Park	7798	53.3690029860	-6.4872550897
8260DB007799	Hayfield	7799	53.3705959484	-6.5902001114
8260DB007802	Willowbrook Park	7802	53.3468237355	-6.5504619566
8260DB007804	Willow Avenue	7804	53.3330631529	-6.5305986507
8260DB007805	Willow Avenue	7805	53.3337285226	-6.5306208244
8260DB007811	Primrose Hill	7811	53.3359957526	-6.5344620044
8260DB007812	Hazelhatch Station	7812	53.3233829934	-6.5225699647
8260DB007813	Rockfield Manor	7813	53.3724951994	-6.5843664394
8260DB007814	Shinkeen Road	7814	53.3349172520	-6.5315409479
8260DB007815	Shinkeen Road	7815	53.3350290552	-6.5311316902
8260DB007816	Saint Wolstan's Abbey	7816	53.3365293810	-6.5310801322
8260DB007817	Saint Wolstan's Abbey	7817	53.3366806303	-6.5309548061
8260DB007819	Intel Campus 2	7819	53.3730603022	-6.5219933108
8260DB007820	River Forest	7820	53.3723377663	-6.4915403064
8260DB007821	River Forest	7821	53.3724284903	-6.4923185913
8260DB007822	Intel Campus 1	7822	53.3746099376	-6.5230217675
8260DB07758	Leixlip Village	7758	53.3636379228	-6.4908559716
8310DB003328	Clonee Village	3328	53.4104810119	-6.4424771974
8310DB003329	Loughsallagh	3329	53.4139640720	-6.4490592788
8310DB003330	Clonee Sawmills	3330	53.4149242899	-6.4524091780
8310DB003331	Dunboyne Station	3331	53.4159547354	-6.4626017407
8310DB003332	Dunboyne NS	3332	53.4183788913	-6.4729103293
8310DB003333	Dunboyne Village	3333	53.4195025234	-6.4743294579
8310DB003334	Dunboyne NS	3334	53.4180549772	-6.4714776356
8310DB003335	Mill View	3335	53.4160251366	-6.4596956884
8310DB003336	Clonee Sawmills	3336	53.4149631651	-6.4519414101
8310DB003337	Loughsallagh	3337	53.4140798814	-6.4489798474
8310DB003338	Clonee Village	3338	53.4106014848	-6.4420666552
8310DB003339	Summerseat Court	3339	53.4103970389	-6.4374260987
8310DB003351	St Peter's College	3351	53.4170352984	-6.4683548747
8310DB003352	St Peter's College	3352	53.4170777087	-6.4681577725
8350DB002113	St Peter's Road	2113	53.2095858297	-6.1182477092
8350DB002962	Killarney Lane	2962	53.1962101854	-6.1216176913
8350DB002963	Herbert Road	2963	53.1945356120	-6.1271539239
8350DB002964	Herbert Park	2964	53.1915540223	-6.1290349308
8350DB002993	Herbert Road	2993	53.1944495510	-6.1273971496
8350DB002994	Killarney Lane	2994	53.1966403731	-6.1221077887
8350DB002997	Florence Road	2997	53.2031235168	-6.1097583563
8350DB003045	Church Road	3045	53.1974308269	-6.1090060052
8350DB003442	Ballydonagh Road	3442	53.1455185817	-6.1252810955
8350DB004011	Carrig View	4011	53.2235218100	-6.4673170083
8350DB004012	Lisheen View	4012	53.2172340293	-6.4732167730
8350DB004013	The Lamb Hill	4013	53.2147256994	-6.4773787481
8350DB004014	Blake's Garden Cen	4014	53.2116348611	-6.4845103814
8350DB004015	Golden Hill	4015	53.2062831360	-6.4941306267
8350DB004017	Hempstown	4017	53.2031066623	-6.4988226118
8350DB004018	Hempstown	4018	53.1972461161	-6.5066607174
8350DB004019	Hempstead	4019	53.1939813614	-6.5100817057
8350DB004020	Crosschapel	4020	53.1907971959	-6.5127660942
8350DB004021	Cherrymount	4021	53.1861812709	-6.5188513364
8350DB004022	Clarke Group	4022	53.1833006120	-6.5221076668
8350DB004023	Blessington Mart	4023	53.1786022740	-6.5252014944
8350DB004024	Oak Drive	4024	53.1758738320	-6.5269705835
8350DB004027	Blessington	4027	53.1716303388	-6.5312444439
8350DB004051	Blessington	4051	53.1711298498	-6.5322039006
8350DB004052	St Kevin's College	4052	53.1738489008	-6.5289397587
8350DB004054	Oak Drive	4054	53.1760986222	-6.5269778419
8350DB004055	Blessington Mart	4055	53.1799089669	-6.5247527138
8350DB004056	Finlay Breton	4056	53.2085713296	-6.4895739848
8350DB004057	Clarke Group	4057	53.1835783793	-6.5220382663
8350DB004058	Crosschapel	4058	53.1909688281	-6.5128349793
8350DB004059	Hempstead	4059	53.1946441278	-6.5098940928
8350DB004060	Hempstown	4060	53.1974269232	-6.5067442365
8350DB004061	Pipershall	4061	53.2019654863	-6.5009880832
8350DB004062	Hempstown	4062	53.2034177103	-6.4985422905
8350DB004063	Golden Hill	4063	53.2058718527	-6.4950133252
8350DB004064	Fernhill	4064	53.2071974164	-6.4925116663
8350DB004065	The Lamb Hill	4065	53.2149164661	-6.4775366909
8350DB004066	Lisheen View	4066	53.2173986166	-6.4734355349
8350DB004067	Arduan	4067	53.2198791825	-6.4706218262
8350DB004068	Carrig View	4068	53.2237825354	-6.4673226741
8350DB004089	Killegar House	4089	53.2127976469	-6.1762339416
8350DB004090	Ridgeway	4090	53.2101918777	-6.1751168831
8350DB004091	Monastery House	4091	53.2036027418	-6.1762501842
8350DB004093	Environmental Centre	4093	53.1988778931	-6.1735169653
8350DB004094	St. Mary’s Church	4094	53.1937868315	-6.1738681170
8350DB004095	Enniskerry Village	4095	53.1929253808	-6.1704474760
8350DB004098	Finlay Breton	4098	53.2086132140	-6.4893329713
8350DB004100	Lake View	4100	53.1887361702	-6.5154262449
8350DB004101	Cherrymount	4101	53.1868835790	-6.5182285869
8350DB004102	Lake View	4102	53.1888733556	-6.5156160421
8350DB004103	Kilgarron Park	4103	53.1927504808	-6.1819191945
8350DB004104	Parknasillogue Ct	4104	53.1932683434	-6.1858185219
8350DB004105	Hill View	4105	53.1953536955	-6.1917323408
8350DB004106	Kilmolin	4106	53.1962245287	-6.1928481883
8350DB004108	Enniskerry Golf Club	4108	53.1918778643	-6.2008133697
8350DB004109	Bridge Road	4109	53.1955337487	-6.1959006496
8350DB004110	Kilmolin	4110	53.1959729177	-6.1922600731
8350DB004111	Hill View	4111	53.1950960491	-6.1913390715
8350DB004112	Parknasillogue Ct	4112	53.1932592299	-6.1852202441
8350DB004113	Kilgarron Park	4113	53.1928212004	-6.1818413697
8350DB004114	Enniskerry Road	4114	53.1928886469	-6.1727389101
8350DB004115	St. Mary’s Church	4115	53.1938255134	-6.1740460743
8350DB004116	Environmental Centre	4116	53.1989907296	-6.1738414763
8350DB004117	Ashridge Green	4117	53.2005725802	-6.1767680487
8350DB004118	Monastery House	4118	53.2037185993	-6.1761853832
8350DB004119	Bramble Hill	4119	53.2103853244	-6.1754230848
8350DB004120	Killegar House	4120	53.2131981481	-6.1765613193
8350DB004129	Old Connaught Avenue	4129	53.2108556391	-6.1172637376
8350DB004130	Castle Street	4130	53.2072817957	-6.1135128478
8350DB004131	Dwyer Park	4131	53.2065671432	-6.1115231082
8350DB004132	Bray Main Street	4132	53.2023004728	-6.1100041598
8350DB004133	Blake's Garden Cen	4133	53.2119668878	-6.4844687176
8350DB004134	Church Road	4134	53.1975733556	-6.1089248894
8350DB004135	Lauderdale	4135	53.1946463828	-6.1068685220
8350DB004136	Putland Road	4136	53.1922528971	-6.1050133922
8350DB004139	Woodbrook Lawn	4139	53.1882444744	-6.1118346337
8350DB004140	Oldcourt Park	4140	53.1879373089	-6.1162777361
8350DB004142	Oldcourt	4142	53.1887905676	-6.1213584169
8350DB004143	Oldcourt Park	4143	53.1880640009	-6.1157633748
8350DB004144	Woodbrook Lawn	4144	53.1883673813	-6.1116496525
8350DB004145	Cherry Tree Drive	4145	53.1885548855	-6.1059097753
8350DB004146	Vevay Road	4146	53.1887639580	-6.1026680774
8350DB004147	Wolfe Tone Square	4147	53.1905845529	-6.1074964726
8350DB004148	Wolfe Tone Square	4148	53.1917841549	-6.1049293033
8350DB004149	Putland Road	4149	53.1935632830	-6.1065869799
8350DB004150	Vevay Road	4150	53.2001166337	-6.1105942403
8350DB004151	Bray Main Street	4151	53.2018686483	-6.1105471042
8350DB004153	Cornerstone Church	4153	53.2048906455	-6.1095308648
8350DB004154	St Cronan's Road	4154	53.2066340781	-6.1123435917
8350DB004156	Quinsborough Road	4156	53.2049673830	-6.1036140063
8350DB004167	Bray Station	4167	53.2046049409	-6.1011748137
8350DB004168	Bray Station	4168	53.2044316558	-6.1010177985
8350DB004169	Bray Station	4169	53.2042872252	-6.1009792735
8350DB004170	Methodist Church	4170	53.2034837701	-6.1069729915
8350DB004171	Kilmantain Park	4171	53.2005085955	-6.1115050924
8350DB004172	Rosslyn	4172	53.1986800788	-6.1135314090
8350DB004173	The Nurseries	4173	53.1953342426	-6.1179440664
8350DB004175	St Fergal's Church	4175	53.1890458353	-6.1261510996
8350DB004177	Springfield Cemetery	4177	53.1860998442	-6.1291526914
8350DB004178	Ballywaltrim Heights	4178	53.1880862795	-6.1274350317
8350DB004179	Cloverhill	4179	53.1912578932	-6.1284940841
8350DB004180	Killarney Road	4180	53.1949357051	-6.1188894998
8350DB004181	Glenlucan	4181	53.1977599280	-6.1161613368
8350DB004182	Killarney Villas	4182	53.2002637317	-6.1119349960
8350DB004183	Upper Dargle Road	4183	53.2070648366	-6.1145703880
8350DB004184	Sutton Road	4184	53.2051712642	-6.1193094720
8350DB004185	Dargle Villas	4185	53.2031998230	-6.1219706785
8350DB004186	Bray Commons	4186	53.1982179953	-6.1309749727
8350DB004187	Silverbridge	4187	53.1927505421	-6.1365558800
8350DB004189	Kilbride Lane	4189	53.1901875201	-6.1416505857
8350DB004190	Cookstown	4190	53.1920314114	-6.1590962761
8350DB004192	Cookstown	4192	53.1914700681	-6.1582522995
8350DB004194	Kilbride Lane	4194	53.1901254576	-6.1411294747
8350DB004196	Upper Dargle Road	4196	53.1988061369	-6.1306500083
8350DB004199	Sunnybank Court	4199	53.2070934408	-6.1146739330
8350DB004201	Old Connaught Avenue	4201	53.2111253457	-6.1178358557
8350DB004207	St Andrew's NS	4207	53.1893993142	-6.1024903675
8350DB004208	Briar Wood	4208	53.1870707731	-6.0990765091
8350DB004209	Kilruddery Cottages	4209	53.1771366283	-6.0950274925
8350DB004210	Lord Meaths Gate	4210	53.1743358513	-6.0952563220
8350DB004211	Rathdown Road	4211	53.1721090230	-6.0931559427
8350DB004212	Windgates North	4212	53.1668112416	-6.0873330472
8350DB004213	Windgates	4213	53.1639418867	-6.0855312591
8350DB004214	Redford	4214	53.1556390096	-6.0823417898
8350DB004215	Redford Park	4215	53.1522084496	-6.0814181134
8350DB004216	Chapel Road	4216	53.1499888569	-6.0797826792
8350DB004217	St Kevin's School	4217	53.1493475072	-6.0745782603
8350DB004218	Greystones Fire Stn	4218	53.1499922715	-6.0705423326
8350DB004219	Victoria Road	4219	53.1502106094	-6.0668244801
8350DB004220	Trafalgar Road	4220	53.1485540206	-6.0644468917
8350DB004221	La Touche Road	4221	53.1468386692	-6.0634326443
8350DB004222	Greystones Village	4222	53.1452005347	-6.0638502124
8350DB004224	Greystones Station	4224	53.1439507394	-6.0610659941
8350DB004225	Mill Road	4225	53.1395325057	-6.0607717277
8350DB004226	St Vincent's Road	4226	53.1383406317	-6.0637551810
8350DB004227	Burnaby Park	4227	53.1353796939	-6.0662947740
8350DB004228	Tennis Club	4228	53.1326016094	-6.0718000121
8350DB004229	Carrig Villas	4229	53.1325214558	-6.0757343217
8350DB004230	Kilcoole Road	4230	53.1331584913	-6.0778879547
8350DB004231	Kilcoole Road	4231	53.1306800578	-6.0763695803
8350DB004232	Delgany Wood	4232	53.1324910772	-6.0838810741
8350DB004234	Health Centre	4234	53.1326020357	-6.0935908379
8350DB004235	Delgany Golf Club	4235	53.1303881398	-6.1012958132
8350DB004236	Drummin Gate Lodge	4236	53.1243222876	-6.1042081090
8350DB004237	Killickabawn	4237	53.1212708329	-6.1101547408
8350DB004238	Kilpedder Footbridge	4238	53.1115468679	-6.1057412245
8350DB004239	Glenview Park	4239	53.1139668148	-6.1075619882
8350DB004240	Glen Of The Downs	4240	53.1294923064	-6.1037413912
8350DB004241	Delgany Golf Club	4241	53.1307801923	-6.1005163289
8350DB004242	Health Centre	4242	53.1326324629	-6.0932457397
8350DB004243	Chapel Road	4243	53.1325613423	-6.0899309497
8350DB004244	Wendon Brook	4244	53.1330304130	-6.0810920879
8350DB004246	Glenbrook Park	4246	53.1242396249	-6.0733100542
8350DB004248	Charlesland	4248	53.1218941055	-6.0727874088
8350DB004249	Knockroe	4249	53.1194362639	-6.0708803152
8350DB004250	Mountain View	4250	53.1170968916	-6.0679671205
8350DB004251	Lott Lane	4251	53.1142041930	-6.0658559349
8350DB004252	Kilcoole NS	4252	53.1114908589	-6.0653801943
8350DB004253	Kilcoole	4253	53.1091448199	-6.0648282652
8350DB004254	Monteith Park	4254	53.1053346862	-6.0643421517
8350DB004256	Woodstock Park	4256	53.0941054726	-6.0675192120
8350DB004257	Chippin View Cottage	4257	53.0899113003	-6.0666321444
8350DB004258	Leabeg Lane	4258	53.0842287026	-6.0676333231
8350DB004259	Newcastle Lower	4259	53.0783499906	-6.0670756701
8350DB004260	Sea Road	4260	53.0706777793	-6.0634644071
8350DB004261	Newcastle	4261	53.0715602156	-6.0646635473
8350DB004262	Leabeg Lane	4262	53.0840247769	-6.0678066772
8350DB004263	Chippin View Cottage	4263	53.0900030617	-6.0667474782
8350DB004264	Woodstock Park	4264	53.0943244378	-6.0677184524
8350DB004265	Bramble Corner	4265	53.1017687540	-6.0661600800
8350DB004266	Monteith Park	4266	53.1059763037	-6.0645523188
8350DB004267	Kilcoole	4267	53.1085704473	-6.0648839331
8350DB004268	St Anthony Church	4268	53.1113944818	-6.0655339054
8350DB004269	Lott Lane	4269	53.1140534372	-6.0659822171
8350DB004270	Mountain View	4270	53.1171546621	-6.0682035758
8350DB004271	Knockroe	4271	53.1195882056	-6.0713815122
8350DB004273	Eden Gate	4273	53.1219062305	-6.0729811126
8350DB004274	Glenbrook Park	4274	53.1255473579	-6.0735803028
8350DB004275	Three Trouts Bridge	4275	53.1289374635	-6.0742207017
8350DB004276	Mill Grove	4276	53.1304637613	-6.0763344082
8350DB004277	Mill Road	4277	53.1326151893	-6.0754162722
8350DB004278	Tennis Club	4278	53.1327710608	-6.0717176944
8350DB004279	Burnaby Park	4279	53.1350997863	-6.0667706914
8350DB004280	Manor Avenue	4280	53.1366898737	-6.0656081422
8350DB004281	St Vincent's Road	4281	53.1384675959	-6.0638242091
8350DB004282	Mill Road	4282	53.1395101824	-6.0610567485
8350DB004283	Greystones Station	4283	53.1439281723	-6.0613361053
8350DB004284	Greystones Village	4284	53.1454088294	-6.0644986503
8350DB004285	Trafalgar Road	4285	53.1480745689	-6.0642591417
8350DB004286	Victoria Road	4286	53.1500258723	-6.0665187921
8350DB004287	Greystones Fire Stn	4287	53.1500260419	-6.0698530358
8350DB004288	St Kevin's NS	4288	53.1492003676	-6.0749287287
8350DB004289	Church Lane	4289	53.1462163500	-6.0777233969
8350DB004290	Greystones SC	4290	53.1445582384	-6.0757941744
8350DB004291	Bellevue Road	4291	53.1451383497	-6.0688762453
8350DB004292	Bellevue Road	4292	53.1449560251	-6.0692731275
8350DB004293	Greystones SC	4293	53.1446379170	-6.0751627158
8350DB004294	Church Lane	4294	53.1463915941	-6.0779996287
8350DB004295	Chapel Road	4295	53.1496545886	-6.0796779832
8350DB004296	Redford Park	4296	53.1523834447	-6.0816794565
8350DB004297	Redford	4297	53.1556168761	-6.0826418506
8350DB004299	Windgate Cottages	4299	53.1629101370	-6.0856519676
8350DB004300	Windgate North	4300	53.1667975984	-6.0876028906
8350DB004301	Rathdown Road	4301	53.1723154870	-6.0937002869
8350DB004302	Lord Meaths Gate	4302	53.1745023131	-6.0955481517
8350DB004303	Briar Wood	4303	53.1873242700	-6.0997536713
8350DB004304	St Andrew's NS	4304	53.1893031302	-6.1026592344
8350DB004305	Sea Road	4305	53.1062719855	-6.0639415753
8350DB004306	Beechdale	4306	53.1062437790	-6.0611048860
8350DB004307	Sea Road Lane	4307	53.1058468758	-6.0533109587
8350DB004308	Beechdale	4308	53.1061653714	-6.0612577794
8350DB004309	Sea Road	4309	53.1061578885	-6.0641110033
8350DB004416	Roseville Court	4416	53.2083438702	-6.1147388051
8350DB004417	St Peter's Road	4417	53.2092331573	-6.1181134427
8350DB004419	Raverty Villas	4419	53.2068632421	-6.1194449682
8350DB004420	Maple Grove	4420	53.2067081123	-6.1221466156
8350DB004421	Beech Road	4421	53.2077834508	-6.1196591871
8350DB004422	Diamond Valley	4422	53.2009631173	-6.1277718229
8350DB004533	Kilmacanogue	4533	53.1695051593	-6.1364864123
8350DB004584	Diamond Valley	4584	53.2010475326	-6.1274238465
8350DB004588	Cois Sleibhe	4588	53.1833990224	-6.1220280398
8350DB004589	Bray Business Park	4589	53.1842399038	-6.1160806801
8350DB004650	Kilpeddar Grove	4650	53.1109028921	-6.1048134938
8350DB004651	Garden Village	4651	53.1011911797	-6.1068235902
8350DB004652	Coillte Offices	4652	53.0971249236	-6.1100037570
8350DB004653	Newtownmountkennedy	4653	53.0921962383	-6.1120862470
8350DB004654	Springfield Heights	4654	53.0884641636	-6.1091441198
8350DB004655	Newtown Business Ctr	4655	53.0843459250	-6.1050997786
8350DB004657	Newcastle Hospital	4657	53.0798354229	-6.1012675204
8350DB004658	Springfield Heights	4658	53.0888497467	-6.1102171380
8350DB004659	Newtownmountkennedy	4659	53.0918303260	-6.1122515825
8350DB004660	Coillte Offices	4660	53.0977967081	-6.1098548375
8350DB004661	Garden Village	4661	53.0996898040	-6.1085024235
8350DB004844	Glencormack Road	4844	53.1743757146	-6.1392822793
8350DB005091	Ballywaltrim Heights	5091	53.1879238916	-6.1273972138
8350DB005092	Springfield Cemetery	5092	53.1858287287	-6.1290597457
8350DB005110	Arduan	5110	53.2202730815	-6.4697991216
8350DB005135	Kilruddery Cottages	5135	53.1767923001	-6.0954167776
8350DB005136	Gorse Hill	5136	53.0778880042	-6.0674098314
8350DB005139	Windgate Cottages	5139	53.1617095882	-6.0847781424
8350DB005167	Woodview Drive	5167	53.1886017386	-6.1094245152
8350DB006019	Glen Of The Downs	6019	53.1290328372	-6.1042398456
8350DB006097	Ashridge Green	6097	53.2003151141	-6.1763897827
8350DB006137	Kilcoole Golf Club	6137	53.0992432845	-6.0672888988
8350DB006138	Drake's Way	6138	53.0807694771	-6.1023459846
8350DB006139	Bridge Road	6139	53.1954526779	-6.1958890869
8350DB007207	Russborough House	7207	53.1408899060	-6.5605742940
8350DB007248	Valleymount Road	7248	53.1509293542	-6.5553644683
8350DB007249	Valleymount Road	7249	53.1508690018	-6.5555758089
8350DB007250	Old Ballymore Road	7250	53.1677261041	-6.5368071515
8350DB007251	Old Ballymore Road	7251	53.1678689339	-6.5367275073
8350DB007253	Burgage	7253	53.1635899726	-6.5440068448
8350DB007255	Valleymount Bridge	7255	53.1487245232	-6.5367356349
8350DB007256	Pollaphuca Road	7256	53.1298591386	-6.5273045792
8350DB007259	Pollaphuca	7259	53.1210944268	-6.5359411520
8350DB007261	Humphreystown	7261	53.1164733835	-6.5380402595
8350DB007262	Valleymount School	7262	53.1059862647	-6.5250884317
8350DB007265	Lake Drive	7265	53.0966645322	-6.5250041343
8350DB007266	Carrigacurra View	7266	53.0958681057	-6.5137278327
8350DB007270	The School House	7270	53.1071879096	-6.4918745236
8350DB007271	Newcastle Middle	7271	53.0765724635	-6.0677672868
8350DB007272	Newcastle Middle	7272	53.0764799764	-6.0676072397
8350DB007279	Newtown Business Ctr	7279	53.0850621871	-6.1054863276
8350DB007294	Cornerstone Church	7294	53.2047244539	-6.1092537368
8350DB007295	Sutton Road	7295	53.2052984334	-6.1193937281
8350DB007296	Kilcoole Golf Club	7296	53.0988441758	-6.0676204070
8350DB007351	Chapel Road	7351	53.1324814606	-6.0899942760
8350DB007352	Three Trouts Bridge	7352	53.1275037803	-6.0733881776
8350DB007363	Southern Cross Rd	7363	53.1817206467	-6.1319019348
8350DB007364	Belmont	7364	53.1845917660	-6.1082242657
8350DB007365	Riddlesford	7365	53.1853159262	-6.1045860663
8350DB007369	Dargle Villas	7369	53.2035385564	-6.1217911922
8350DB007461	Charlesland	7461	53.1289319703	-6.0628033721
8350DB007462	Charlesland	7462	53.1288008733	-6.0624804920
8350DB007522	Oldcourt	7522	53.1881311335	-6.1188731387
8350DB007574	Southern Cross	7574	53.1823486728	-6.1301090159
8350DB007823	Enniskerry Village	7823	53.1941976896	-6.1701837562
8350DB007824	Enniskerry Village	7824	53.1925584485	-6.1711365875
\.


--
-- TOC entry 3479 (class 0 OID 20050)
-- Dependencies: 226
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- TOC entry 3465 (class 0 OID 19943)
-- Dependencies: 212
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	bus_stops	busroutes
8	bus_stops	busstops
9	bus_stops	routeconnections
10	bus_stops	routes
\.


--
-- TOC entry 3463 (class 0 OID 19934)
-- Dependencies: 210
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2022-07-08 16:05:49.895325+01
2	auth	0001_initial	2022-07-08 16:05:49.955368+01
3	admin	0001_initial	2022-07-08 16:05:49.975382+01
4	admin	0002_logentry_remove_auto_add	2022-07-08 16:05:49.981381+01
5	admin	0003_logentry_add_action_flag_choices	2022-07-08 16:05:49.98738+01
6	contenttypes	0002_remove_content_type_name	2022-07-08 16:05:49.998886+01
7	auth	0002_alter_permission_name_max_length	2022-07-08 16:05:50.005887+01
8	auth	0003_alter_user_email_max_length	2022-07-08 16:05:50.011886+01
9	auth	0004_alter_user_username_opts	2022-07-08 16:05:50.018403+01
10	auth	0005_alter_user_last_login_null	2022-07-08 16:05:50.0244+01
11	auth	0006_require_contenttypes_0002	2022-07-08 16:05:50.026405+01
12	auth	0007_alter_validators_add_error_messages	2022-07-08 16:05:50.0324+01
13	auth	0008_alter_user_username_max_length	2022-07-08 16:05:50.041401+01
14	auth	0009_alter_user_last_name_max_length	2022-07-08 16:05:50.047402+01
15	auth	0010_alter_group_name_max_length	2022-07-08 16:05:50.054402+01
16	auth	0011_update_proxy_permissions	2022-07-08 16:05:50.05941+01
17	auth	0012_alter_user_first_name_max_length	2022-07-08 16:05:50.066412+01
18	bus_stops	0001_initial	2022-07-08 16:05:50.093414+01
19	sessions	0001_initial	2022-07-08 16:05:50.104889+01
20	bus_stops	0002_auto_20220611_1044	2022-07-08 18:09:25.590128+01
21	bus_stops	0003_auto_20220611_1048	2022-07-08 18:09:25.607128+01
22	bus_stops	0004_routes_routeconnections_busstops_route	2022-07-08 22:27:19.390006+01
\.


--
-- TOC entry 3484 (class 0 OID 20112)
-- Dependencies: 231
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- TOC entry 3487 (class 0 OID 20137)
-- Dependencies: 234
-- Data for Name: route_connection; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.route_connection (id, routes_id, stops_id) FROM stdin;
\.


--
-- TOC entry 3483 (class 0 OID 20090)
-- Dependencies: 230
-- Data for Name: route_connections; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.route_connections (id, bus_route_id, bus_stop_id) FROM stdin;
56796	0	8220DB006004
56797	0	8220DB000007
56798	0	8220DB000011
56799	0	8220DB000014
56800	0	8220DB000015
56801	0	8220DB000834
56802	0	8220DB000835
56803	0	8220DB000836
56804	0	8220DB000837
56805	0	8220DB001506
56806	0	8220DB001507
56807	0	8220DB001508
56808	0	8220DB001509
56809	0	8220DB001510
56810	0	8220DB001511
56811	0	8220DB001512
56812	0	8220DB001538
56813	0	8220DB004548
56814	0	8220DB001514
56815	0	8220DB000980
56816	0	8220DB000981
56817	0	8220DB001576
56818	0	8220DB001577
56819	0	8220DB001578
56820	0	8220DB004364
56821	0	8240DB001579
56822	0	8240DB001580
56823	0	8240DB007237
56824	0	8240DB007241
56825	0	8240DB007247
56826	0	8240DB007243
56827	0	8240DB007126
56828	0	8240DB007124
56829	0	8240DB007343
56830	0	8240DB004978
56831	0	8240DB004979
56832	0	8240DB004986
56833	0	8240DB007107
56834	0	8240DB007102
56835	0	8240DB007103
56836	0	8240DB007104
56837	0	8240DB007105
56838	0	8240DB007106
56839	0	8240DB006005
56840	0	8240DB001546
56841	1	8240DB007073
56842	1	8240DB007097
56843	1	8240DB007098
56844	1	8240DB007099
56845	1	8240DB007100
56846	1	8240DB007101
56847	1	8240DB007505
56848	1	8240DB005071
56849	1	8240DB005072
56850	1	8240DB004321
56851	1	8240DB007342
56852	1	8240DB007125
56853	1	8240DB007344
56854	1	8240DB002510
56855	1	8240DB007242
56856	1	8240DB007238
56857	1	8240DB007224
56858	1	8240DB001581
56859	1	8240DB001582
56860	1	8220DB004793
56861	1	8220DB006068
56862	1	8220DB001584
56863	1	8220DB000983
56864	1	8220DB000984
56865	1	8220DB000985
56866	1	8220DB001529
56867	1	8220DB004542
56868	1	8220DB001531
56869	1	8220DB001532
56870	1	8220DB001533
56871	1	8220DB001534
56872	1	8220DB001535
56873	1	8220DB001536
56874	1	8220DB001537
56875	1	8220DB000186
56876	1	8220DB000838
56877	1	8220DB000839
56878	1	8220DB000840
56879	1	8220DB000841
56880	1	8220DB000049
56881	1	8220DB000051
56882	1	8220DB000052
56883	1	8220DB004725
56884	2	8230DB004359
56885	2	8230DB004360
56886	2	8230DB004361
56887	2	8230DB002202
56888	2	8230DB002203
56889	2	8230DB002204
56890	2	8230DB004888
56891	2	8230DB004799
56892	2	8230DB002205
56893	2	8230DB002687
56894	2	8220DB002688
56895	2	8220DB002689
56896	2	8220DB002696
56897	2	8220DB002697
56898	2	8220DB002700
56899	2	8220DB002701
56900	2	8220DB002702
56901	2	8220DB002784
56902	2	8220DB002785
56903	2	8220DB002786
56904	2	8220DB002787
56905	2	8220DB002181
56906	2	8220DB002182
56907	2	8220DB002778
56908	2	8220DB002185
56909	2	8220DB001421
56910	2	8220DB002317
56911	2	8220DB002318
56912	2	8220DB002319
56913	2	8220DB002464
56914	2	8220DB002465
56915	2	8220DB002466
56916	2	8220DB002467
56917	2	8220DB002494
56918	2	8220DB002495
56919	2	8220DB002496
56920	2	8220DB002497
56921	2	8220DB002471
56922	2	8220DB002472
56923	2	8220DB002473
56924	2	8220DB002474
56925	2	8220DB002475
56926	2	8220DB002476
56927	2	8220DB002477
56928	2	8220DB002478
56929	2	8220DB004527
56930	2	8220DB002788
56931	2	8220DB002789
56932	2	8220DB002790
56933	2	8220DB000903
56934	2	8220DB000904
56935	2	8220DB000779
56936	2	8220DB000780
56937	2	8220DB000781
56938	2	8220DB002796
56939	2	8220DB002797
56940	2	8220DB000414
56941	2	8220DB000415
56942	2	8220DB000416
56943	2	8220DB000417
56944	2	8220DB002800
56945	2	8220DB002801
56946	2	8220DB007599
56947	3	8220DB000385
56948	3	8220DB002806
56949	3	8220DB002807
56950	3	8220DB002808
56951	3	8220DB000486
56952	3	8220DB000487
56953	3	8220DB002798
56954	3	8220DB002799
56955	3	8220DB000753
56956	3	8220DB000754
56957	3	8220DB000755
56958	3	8220DB000849
56959	3	8220DB000850
56960	3	8220DB000851
56961	3	8220DB002791
56962	3	8220DB007668
56963	3	8220DB002793
56964	3	8220DB002794
56965	3	8220DB001077
56966	3	8220DB002479
56967	3	8220DB002480
56968	3	8220DB002481
56969	3	8220DB002482
56970	3	8220DB002483
56971	3	8220DB002484
56972	3	8220DB002485
56973	3	8220DB002486
56974	3	8220DB002487
56975	3	8220DB002488
56976	3	8220DB002489
56977	3	8220DB002448
56978	3	8220DB005026
56979	3	8220DB002450
56980	3	8220DB002328
56981	3	8220DB002329
56982	3	8220DB002330
56983	3	8220DB002331
56984	3	8220DB002101
56985	3	8220DB002102
56986	3	8220DB002726
56987	3	8220DB002727
56988	3	8220DB002105
56989	3	8220DB002780
56990	3	8220DB002781
56991	3	8220DB002782
56992	3	8220DB002783
56993	3	8220DB002652
56994	3	8220DB002653
56995	3	8220DB002654
56996	3	8220DB002655
56997	3	8220DB002656
56998	3	8220DB002668
56999	3	8220DB002672
57000	3	8230DB002673
57001	3	8230DB002206
57002	3	8230DB002207
57003	3	8230DB002208
57004	3	8230DB002210
57005	3	8230DB002211
57006	3	8230DB002212
57007	3	8230DB007165
57008	4	8220DB006004
57009	4	8220DB000007
57010	4	8220DB000011
57011	4	8220DB000014
57012	4	8220DB000015
57013	4	8220DB000834
57014	4	8220DB000835
57015	4	8220DB000836
57016	4	8220DB000837
57017	4	8220DB001506
57018	4	8220DB001507
57019	4	8220DB001508
57020	4	8220DB001509
57021	4	8220DB001510
57022	4	8220DB001511
57023	4	8220DB001512
57024	4	8220DB001538
57025	4	8220DB004548
57026	4	8220DB000980
57027	4	8220DB000981
57028	4	8220DB001518
57029	4	8220DB001519
57030	4	8220DB001520
57031	4	8220DB007661
57032	4	8220DB001521
57033	4	8220DB004546
57034	4	8220DB001559
57035	4	8220DB001560
57036	4	8220DB001280
57037	4	8240DB006348
57038	4	8240DB001182
57039	4	8240DB001550
57040	4	8240DB001551
57041	4	8240DB001552
57042	4	8240DB001553
57043	4	8240DB007023
57044	4	8240DB007014
57045	4	8240DB004315
57046	5	8240DB004316
57047	5	8240DB004317
57048	5	8240DB007013
57049	5	8240DB006162
57050	5	8240DB007022
57051	5	8240DB001554
57052	5	8240DB001555
57053	5	8240DB001556
57054	5	8240DB001557
57055	5	8240DB001181
57056	5	8240DB007350
57057	5	8220DB001558
57058	5	8220DB001549
57059	5	8220DB001523
57060	5	8220DB001524
57061	5	8220DB001525
57062	5	8220DB001526
57063	5	8220DB006080
57064	5	8220DB000983
57065	5	8220DB000984
57066	5	8220DB000985
57067	5	8220DB001529
57068	5	8220DB004542
57069	5	8220DB001531
57070	5	8220DB001532
57071	5	8220DB001533
57072	5	8220DB001534
57073	5	8220DB001535
57074	5	8220DB001536
57075	5	8220DB001537
57076	5	8220DB000186
57077	5	8220DB000838
57078	5	8220DB000839
57079	5	8220DB000840
57080	5	8220DB000841
57081	5	8220DB000049
57082	5	8220DB000051
57083	5	8220DB000052
57084	5	8220DB004725
57085	6	8240DB003815
57086	6	8240DB003816
57087	6	8240DB003566
57088	6	8240DB003567
57089	6	8240DB007292
57090	6	8240DB003818
57091	6	8240DB003819
57092	6	8240DB003820
57093	6	8240DB003822
57094	6	8240DB003823
57095	6	8240DB003824
57096	6	8240DB003565
57097	6	8240DB003825
57098	6	8240DB003826
57099	6	8240DB003827
57100	6	8240DB003828
57101	6	8240DB003829
57102	6	8240DB003831
57103	6	8240DB003832
57104	6	8240DB003833
57105	6	8240DB003834
57106	6	8240DB003835
57107	6	8240DB003836
57108	6	8240DB003837
57109	6	8240DB003838
57110	6	8240DB003840
57111	6	8240DB003842
57112	6	8240DB003843
57113	6	8240DB003844
57114	6	8240DB003845
57115	6	8240DB003846
57116	6	8240DB003848
57117	6	8240DB003849
57118	6	8240DB003850
57119	6	8240DB003851
57120	6	8240DB003852
57121	6	8240DB003853
57122	6	8240DB003854
57123	6	8240DB003855
57124	6	8240DB003856
57125	6	8240DB003857
57126	6	8240DB003858
57127	6	8240DB003859
57128	6	8240DB003860
57129	6	8240DB003861
57130	6	8240DB003862
57131	6	8240DB003863
57132	6	8240DB003748
57133	6	8240DB003749
57134	6	8240DB003750
57135	6	8240DB003752
57136	6	8240DB003751
57137	6	8240DB003689
57138	6	8240DB003692
57139	6	8240DB003694
57140	6	8240DB003695
57141	6	8240DB003696
57142	6	8240DB003697
57143	6	8240DB003698
57144	6	8240DB003699
57145	6	8240DB003663
57146	7	8240DB007348
57147	7	8240DB003671
57148	7	8240DB003672
57149	7	8240DB003674
57150	7	8240DB003675
57151	7	8240DB003676
57152	7	8240DB003677
57153	7	8240DB003678
57154	7	8240DB003679
57155	7	8240DB003711
57156	7	8240DB003712
57157	7	8240DB003713
57158	7	8240DB003714
57159	7	8240DB003715
57160	7	8240DB005175
57161	7	8240DB003755
57162	7	8240DB003756
57163	7	8240DB003757
57164	7	8240DB003758
57165	7	8240DB003759
57166	7	8240DB003760
57167	7	8240DB003761
57168	7	8240DB003762
57169	7	8240DB003763
57170	7	8240DB003764
57171	7	8240DB003765
57172	7	8240DB003766
57173	7	8240DB003767
57174	7	8240DB003768
57175	7	8240DB003770
57176	7	8240DB003769
57177	7	8240DB003771
57178	7	8240DB003772
57179	7	8240DB003773
57180	7	8240DB005176
57181	7	8240DB003774
57182	7	8240DB007172
57183	7	8240DB003775
57184	7	8240DB003777
57185	7	8240DB003778
57186	7	8240DB003781
57187	7	8240DB003782
57188	7	8240DB003783
57189	7	8240DB003784
57190	7	8240DB003785
57191	7	8240DB003786
57192	7	8240DB003787
57193	7	8240DB003788
57194	7	8240DB003789
57195	7	8240DB003790
57196	7	8240DB003791
57197	7	8240DB003792
57198	7	8240DB003793
57199	7	8240DB003794
57200	7	8240DB003795
57201	7	8240DB003797
57202	7	8240DB003798
57203	7	8240DB003799
57204	7	8240DB006076
57205	7	8240DB006077
57206	7	8240DB003569
57207	7	8240DB003571
57208	7	8240DB003801
57209	8	8220DB000395
57210	8	8220DB000396
57211	8	8220DB000397
57212	8	8220DB000398
57213	8	8220DB000399
57214	8	8220DB000400
57215	8	8220DB004522
57216	8	8220DB001934
57217	8	8220DB002310
57218	8	8220DB002311
57219	8	8220DB002312
57220	8	8220DB002313
57221	8	8220DB002314
57222	8	8220DB002315
57223	8	8220DB002094
57224	8	8220DB001406
57225	8	8220DB001407
57226	8	8220DB001409
57227	8	8220DB002095
57228	8	8220DB002096
57229	8	8220DB002097
57230	8	8220DB002099
57231	8	8220DB002101
57232	8	8220DB002102
57233	8	8220DB002103
57234	8	8220DB002332
57235	8	8220DB002333
57236	8	8230DB002334
57237	8	8230DB004662
57238	8	8230DB002335
57239	8	8230DB002336
57240	8	8230DB002337
57241	8	8230DB002339
57242	8	8230DB002420
57243	8	8230DB002421
57244	8	8230DB002423
57245	8	8230DB002424
57246	8	8230DB002447
57247	8	8230DB005133
57248	8	8230DB002596
57249	8	8230DB002611
57250	8	8230DB002602
57251	8	8230DB002613
57252	8	8230DB002614
57253	8	8230DB002615
57254	8	8230DB002535
57255	8	8230DB002536
57256	8	8230DB002616
57257	8	8230DB002617
57258	8	8230DB002557
57259	8	8230DB004436
57260	8	8230DB005008
57261	8	8230DB004640
57262	8	8230DB004347
57263	8	8230DB002349
57264	8	8230DB002351
57265	8	8230DB002558
57266	8	8230DB002559
57267	8	8230DB002560
57268	8	8230DB002561
57269	8	8230DB002562
57270	8	8230DB002564
57271	8	8230DB004927
57272	8	8230DB004928
57273	8	8230DB002352
57274	8	8230DB002573
57275	8	8230DB002574
57276	8	8230DB002575
57277	8	8230DB004929
57278	8	8230DB007460
57279	8	8230DB004930
57280	8	8230DB004931
57281	9	8230DB004713
57282	9	8230DB004714
57283	9	8230DB004960
57284	9	8230DB004932
57285	9	8230DB004933
57286	9	8230DB002590
57287	9	8230DB002591
57288	9	8230DB002592
57289	9	8230DB002357
57290	9	8230DB002566
57291	9	8230DB002567
57292	9	8230DB002568
57293	9	8230DB002569
57294	9	8230DB007550
57295	9	8230DB002570
57296	9	8230DB002571
57297	9	8230DB002359
57298	9	8230DB002360
57299	9	8230DB004348
57300	9	8230DB004646
57301	9	8230DB004647
57302	9	8230DB002346
57303	9	8230DB004435
57304	9	8230DB002604
57305	9	8230DB002605
57306	9	8230DB002538
57307	9	8230DB002606
57308	9	8230DB002607
57309	9	8230DB002608
57310	9	8230DB002609
57311	9	8230DB002610
57312	9	8230DB002554
57313	9	8230DB002425
57314	9	8230DB002426
57315	9	8230DB002427
57316	9	8230DB002428
57317	9	8230DB002429
57318	9	8230DB002430
57319	9	8230DB002371
57320	9	8230DB002372
57321	9	8230DB002373
57322	9	8230DB002377
57323	9	8220DB002378
57324	9	8220DB002183
57325	9	8220DB002184
57326	9	8220DB002185
57327	9	8220DB007043
57328	9	8220DB001424
57329	9	8220DB002186
57330	9	8220DB002187
57331	9	8220DB002188
57332	9	8220DB002189
57333	9	8220DB001436
57334	9	8220DB003952
57335	9	8220DB002190
57336	9	8220DB004434
57337	9	8220DB002379
57338	9	8220DB002380
57339	9	8220DB002382
57340	9	8220DB005099
57341	9	8220DB002383
57342	9	8220DB002002
57343	9	8220DB001358
57344	9	8220DB000340
57345	9	8220DB000350
57346	9	8220DB000351
57347	9	8220DB000352
57348	9	8220DB000353
57349	10	8250DB007639
57350	10	8250DB007640
57351	10	8250DB005047
57352	10	8250DB003134
57353	10	8250DB003143
57354	10	8250DB003144
57355	10	8250DB003221
57356	10	8250DB003222
57357	10	8250DB003223
57358	10	8250DB003224
57359	10	8250DB003225
57360	10	8250DB003226
57361	10	8250DB003227
57362	10	8250DB003228
57363	10	8250DB003229
57364	10	8250DB007472
57365	10	8250DB003230
57366	10	8250DB003232
57367	10	8250DB003233
57368	10	8250DB003234
57369	10	8250DB004462
57370	10	8250DB003235
57371	10	8250DB003236
57372	10	8250DB003237
57373	10	8250DB006103
57374	10	8250DB007554
57375	10	8250DB002031
57376	10	8250DB002032
57377	10	8250DB002033
57378	10	8250DB002034
57379	10	8250DB002035
57380	10	8250DB002036
57381	10	8250DB002039
57382	10	8250DB002037
57383	10	8250DB003046
57384	10	8250DB003047
57385	10	8250DB003048
57386	10	8250DB003049
57387	10	8250DB003050
57388	10	8250DB003051
57389	10	8250DB003052
57390	10	8250DB003053
57391	10	8250DB003054
57392	10	8250DB003055
57393	10	8250DB003056
57394	11	8250DB003058
57395	11	8250DB003059
57396	11	8250DB003060
57397	11	8250DB003061
57398	11	8250DB003062
57399	11	8250DB003063
57400	11	8250DB003064
57401	11	8250DB003065
57402	11	8250DB003066
57403	11	8250DB003067
57404	11	8250DB003068
57405	11	8250DB003069
57406	11	8250DB003070
57407	11	8250DB004983
57408	11	8250DB002042
57409	11	8250DB002043
57410	11	8250DB002044
57411	11	8250DB002045
57412	11	8250DB002046
57413	11	8250DB007553
57414	11	8250DB006082
57415	11	8250DB003205
57416	11	8250DB003206
57417	11	8250DB003207
57418	11	8250DB003208
57419	11	8250DB003209
57420	11	8250DB003210
57421	11	8250DB004981
57422	11	8250DB003211
57423	11	8250DB003212
57424	11	8250DB003213
57425	11	8250DB003214
57426	11	8250DB003215
57427	11	8250DB003216
57428	11	8250DB003217
57429	11	8250DB003218
57430	11	8250DB003219
57431	11	8250DB003220
57432	11	8250DB003221
57433	11	8250DB003222
57434	11	8250DB003223
57435	11	8250DB003134
57436	11	8250DB003143
57437	11	8250DB003144
57438	11	8250DB005046
57439	12	8220DB002492
57440	12	8220DB002493
57441	12	8220DB002465
57442	12	8220DB002466
57443	12	8220DB002467
57444	12	8220DB002494
57445	12	8220DB002495
57446	12	8220DB002496
57447	12	8220DB002497
57448	12	8220DB002471
57449	12	8220DB002472
57450	12	8220DB002473
57451	12	8220DB002474
57452	12	8220DB002475
57453	12	8220DB002476
57454	12	8220DB002477
57455	12	8220DB002478
57456	12	8220DB001170
57457	12	8220DB001069
57458	12	8220DB001070
57459	12	8220DB001071
57460	12	8220DB004528
57461	12	8220DB001072
57462	12	8220DB001352
57463	12	8220DB001353
57464	12	8220DB001355
57465	12	8220DB001357
57466	12	8220DB001359
57467	12	8220DB000319
57468	12	8220DB001443
57469	12	8220DB001616
57470	12	8220DB001617
57471	12	8220DB001618
57472	12	8220DB001619
57473	12	8220DB000195
57474	12	8220DB000196
57475	12	8220DB000197
57476	12	8220DB000198
57477	12	8220DB000199
57478	12	8220DB000200
57479	12	8220DB000201
57480	12	8220DB000202
57481	12	8220DB000151
57482	12	8220DB000153
57483	12	8220DB000154
57484	12	8220DB000155
57485	12	8220DB000156
57486	12	8220DB007430
57487	12	8220DB000177
57488	12	8220DB000178
57489	12	8220DB001539
57490	12	8220DB001540
57491	12	8220DB007426
57492	12	8220DB007427
57493	12	8220DB007428
57494	12	8220DB000138
57495	12	8220DB000133
57496	12	8220DB000134
57497	12	8220DB004890
57498	12	8220DB004369
57499	12	8240DB006219
57500	12	8240DB006229
57501	12	8240DB006348
57502	12	8240DB001182
57503	12	8240DB001550
57504	12	8240DB001551
57505	12	8240DB001552
57506	13	8240DB000324
57507	13	8240DB001555
57508	13	8240DB001556
57509	13	8240DB001557
57510	13	8240DB001181
57511	13	8240DB007350
57512	13	8240DB006230
57513	13	8240DB006228
57514	13	8220DB004788
57515	13	8220DB006273
57516	13	8220DB004891
57517	13	8220DB007458
57518	13	8220DB007425
57519	13	8220DB007424
57520	13	8220DB007423
57521	13	8220DB001566
57522	13	8220DB001567
57523	13	8220DB004372
57524	13	8220DB000179
57525	13	8220DB007431
57526	13	8220DB000175
57527	13	8220DB000176
57528	13	8220DB000181
57529	13	8220DB000182
57530	13	8220DB000183
57531	13	8220DB000184
57532	13	8220DB000185
57533	13	8220DB000186
57534	13	8220DB000187
57535	13	8220DB000188
57536	13	8220DB000189
57537	13	8220DB000190
57538	13	8220DB001614
57539	13	8220DB001615
57540	13	8220DB001478
57541	13	8220DB001479
57542	13	8220DB000315
57543	13	8220DB000336
57544	13	8220DB001279
57545	13	8220DB001283
57546	13	8220DB004456
57547	13	8220DB001284
57548	13	8220DB001285
57549	13	8220DB001016
57550	13	8220DB001017
57551	13	8220DB001018
57552	13	8220DB001019
57553	13	8220DB001020
57554	13	8220DB001076
57555	13	8220DB001077
57556	13	8220DB002479
57557	13	8220DB002480
57558	13	8220DB002481
57559	13	8220DB002482
57560	13	8220DB002483
57561	13	8220DB002484
57562	13	8220DB002485
57563	13	8220DB002486
57564	13	8220DB002487
57565	13	8220DB002488
57566	13	8220DB002489
57567	13	8220DB002448
57568	13	8220DB005026
57569	13	8220DB002450
57570	13	8220DB002490
57571	13	8220DB002491
57572	14	8220DB000342
57573	14	8220DB004521
57574	14	8220DB001934
57575	14	8220DB002385
57576	14	8220DB002386
57577	14	8220DB002387
57578	14	8220DB002388
57579	14	8220DB001290
57580	14	8220DB001291
57581	14	8220DB001292
57582	14	8220DB001293
57583	14	8220DB001294
57584	14	8220DB001295
57585	14	8220DB001296
57586	14	8220DB001297
57587	14	8220DB001298
57588	14	8220DB001121
57589	14	8220DB001122
57590	14	8220DB001123
57591	14	8220DB001124
57592	14	8230DB001125
57593	14	8230DB001127
57594	14	8230DB001130
57595	14	8230DB001140
57596	14	8230DB002515
57597	14	8230DB002516
57598	14	8230DB002517
57599	14	8230DB002518
57600	14	8230DB004749
57601	14	8230DB004750
57602	14	8230DB004751
57603	14	8230DB004754
57604	14	8230DB004755
57605	14	8230DB003003
57606	14	8230DB002522
57607	14	8230DB002524
57608	14	8230DB002523
57609	14	8230DB002532
57610	14	8230DB004877
57611	14	8230DB004878
57612	14	8230DB007180
57613	14	8230DB007123
57614	14	8230DB004347
57615	15	8230DB002353
57616	15	8230DB002357
57617	15	8230DB002359
57618	15	8230DB007122
57619	15	8230DB007121
57620	15	8230DB007183
57621	15	8230DB004880
57622	15	8230DB002539
57623	15	8230DB002540
57624	15	8230DB002542
57625	15	8230DB003004
57626	15	8230DB004756
57627	15	8230DB003005
57628	15	8230DB004757
57629	15	8230DB004758
57630	15	8230DB006343
57631	15	8230DB004759
57632	15	8230DB004760
57633	15	8230DB002547
57634	15	8230DB002548
57635	15	8230DB000946
57636	15	8230DB001155
57637	15	8230DB001157
57638	15	8230DB001158
57639	15	8220DB001159
57640	15	8220DB001160
57641	15	8220DB001161
57642	15	8220DB001162
57643	15	8220DB001163
57644	15	8220DB001337
57645	15	8220DB001338
57646	15	8220DB001339
57647	15	8220DB001340
57648	15	8220DB001341
57649	15	8220DB001342
57650	15	8220DB001343
57651	15	8220DB001344
57652	15	8220DB001345
57653	15	8220DB001347
57654	15	8220DB002634
57655	15	8220DB002635
57656	15	8220DB002636
57657	15	8220DB005097
57658	15	8220DB002383
57659	15	8220DB002002
57660	15	8220DB001358
57661	15	8220DB005192
57662	16	8250DB005171
57663	16	8250DB002976
57664	16	8250DB002977
57665	16	8250DB002978
57666	16	8250DB002979
57667	16	8230DB002980
57668	16	8230DB002981
57669	16	8230DB002991
57670	16	8230DB002992
57671	16	8230DB001325
57672	16	8230DB001326
57673	16	8230DB001327
57674	16	8230DB001328
57675	16	8230DB001329
57676	16	8230DB001330
57677	16	8230DB001331
57678	16	8230DB001332
57679	16	8230DB001333
57680	16	8230DB001334
57681	16	8220DB007293
57682	16	8220DB001335
57683	16	8220DB001336
57684	16	8220DB001337
57685	16	8220DB001338
57686	16	8220DB001339
57687	16	8220DB001340
57688	16	8220DB001341
57689	16	8220DB001342
57690	16	8220DB001343
57691	16	8220DB001344
57692	16	8220DB001345
57693	16	8220DB001347
57694	16	8220DB001348
57695	16	8220DB001349
57696	16	8220DB001350
57697	16	8220DB001352
57698	16	8220DB001353
57699	16	8220DB001355
57700	16	8220DB001357
57701	16	8220DB001359
57702	16	8220DB000320
57703	16	8220DB000278
57704	16	8220DB000008
57705	16	8220DB000012
57706	16	8220DB000014
57707	16	8220DB000015
57708	16	8220DB000017
57709	16	8220DB000018
57710	16	8220DB000019
57711	16	8220DB000021
57712	16	8220DB007602
57713	16	8220DB000085
57714	16	8220DB000203
57715	16	8220DB000204
57716	16	8220DB000205
57717	16	8220DB000215
57718	16	8220DB000216
57719	16	8220DB000217
57720	16	8220DB000218
57721	16	8240DB000219
57722	16	8220DB000220
57723	16	8240DB001622
57724	16	8240DB001623
57725	16	8240DB001624
57726	16	8240DB001625
57727	16	8240DB001626
57728	16	8240DB001627
57729	16	8240DB001628
57730	16	8240DB001629
57731	16	8240DB001630
57732	17	8250DB005171
57733	17	8250DB002976
57734	17	8250DB002977
57735	17	8250DB002978
57736	17	8250DB002979
57737	17	8230DB002980
57738	17	8230DB002981
57739	17	8230DB002991
57740	17	8230DB002992
57741	17	8230DB001325
57742	17	8230DB001326
57743	17	8230DB001327
57744	17	8230DB001328
57745	17	8230DB001329
57746	17	8230DB001330
57747	17	8230DB001331
57748	17	8230DB001332
57749	17	8230DB001333
57750	17	8230DB001334
57751	17	8220DB001335
57752	17	8220DB001336
57753	17	8220DB001337
57754	17	8220DB001338
57755	17	8220DB001339
57756	17	8220DB001340
57757	17	8220DB001341
57758	17	8220DB001342
57759	17	8220DB001343
57760	17	8220DB001344
57761	17	8220DB001345
57762	17	8220DB001347
57763	17	8220DB001348
57764	17	8220DB001349
57765	17	8220DB001350
57766	17	8220DB001352
57767	17	8220DB001353
57768	17	8220DB001355
57769	17	8220DB001357
57770	17	8220DB001359
57771	17	8220DB000320
57772	17	8220DB000278
57773	18	8240DB005044
57774	18	8240DB004433
57775	18	8240DB003752
57776	18	8240DB003751
57777	18	8240DB003689
57778	18	8240DB003690
57779	18	8240DB006117
57780	18	8240DB003655
57781	18	8240DB005086
57782	18	8240DB003656
57783	18	8240DB003657
57784	18	8240DB003658
57785	18	8240DB007329
57786	18	8240DB003659
57787	18	8240DB003660
57788	18	8240DB003647
57789	18	8240DB003661
57790	18	8240DB003573
57791	18	8240DB003662
57792	18	8240DB001212
57793	18	8240DB001213
57794	18	8240DB001214
57795	18	8240DB001215
57796	18	8240DB001216
57797	18	8240DB001217
57798	18	8220DB004563
57799	18	8220DB001218
57800	18	8220DB001270
57801	18	8220DB001272
57802	18	8220DB001273
57803	18	8220DB001274
57804	18	8220DB001275
57805	18	8220DB001276
57806	18	8220DB001277
57807	18	8220DB001219
57808	18	8220DB001220
57809	18	8220DB001221
57810	18	8220DB000664
57811	18	8220DB000665
57812	18	8220DB000666
57813	18	8220DB000667
57814	18	8220DB000668
57815	18	8220DB000614
57816	18	8220DB000615
57817	18	8220DB000616
57818	18	8220DB000617
57819	18	8220DB000618
57820	18	8220DB000619
57821	18	8220DB000675
57822	19	8220DB001184
57823	19	8220DB000497
57824	19	8220DB000515
57825	19	8220DB000516
57826	19	8220DB004384
57827	19	8220DB000519
57828	19	8220DB000521
57829	19	8220DB000522
57830	19	8220DB000523
57831	19	8220DB000669
57832	19	8220DB000670
57833	19	8220DB000671
57834	19	8220DB000672
57835	19	8220DB004382
57836	19	8220DB001196
57837	19	8220DB001197
57838	19	8220DB001198
57839	19	8220DB001199
57840	19	8220DB001200
57841	19	8220DB004385
57842	19	8220DB001201
57843	19	8220DB001202
57844	19	8220DB001203
57845	19	8220DB006115
57846	19	8220DB001205
57847	19	8240DB001206
57848	19	8240DB001207
57849	19	8240DB001208
57850	19	8240DB001209
57851	19	8240DB001210
57852	19	8240DB001211
57853	19	8240DB003575
57854	19	8240DB003576
57855	19	8240DB003648
57856	19	8240DB003649
57857	19	8240DB003650
57858	19	8240DB007328
57859	19	8240DB003651
57860	19	8240DB003652
57861	19	8240DB003653
57862	19	8240DB003654
57863	19	8240DB005084
57864	19	8240DB006054
57865	19	8240DB004330
57866	19	8240DB003679
57867	19	8240DB003711
57868	19	8240DB003712
57869	19	8240DB006359
57870	20	8220DB007340
57871	20	8220DB000783
57872	20	8220DB000784
57873	20	8220DB000785
57874	20	8220DB000786
57875	20	8220DB000793
57876	20	8220DB007586
57877	20	8220DB007587
57878	20	8220DB007588
57879	20	8220DB000329
57880	20	8220DB001443
57881	20	8220DB001444
57882	20	8220DB001445
57883	20	8220DB001647
57884	20	8220DB001648
57885	20	8220DB001649
57886	20	8220DB001911
57887	20	8220DB000802
57888	20	8220DB001654
57889	20	8220DB001655
57890	20	8220DB001656
57891	20	8220DB001657
57892	20	8220DB004458
57893	20	8220DB001658
57894	20	8220DB001659
57895	20	8220DB001660
57896	20	8220DB001661
57897	20	8220DB001662
57898	20	8220DB001664
57899	20	8220DB001665
57900	20	8220DB001666
57901	20	8220DB001667
57902	20	8220DB001668
57903	20	8240DB001669
57904	20	8240DB001670
57905	20	8240DB001671
57906	20	8240DB001672
57907	20	8240DB001673
57908	20	8240DB001674
57909	20	8240DB001675
57910	20	8240DB007380
57911	20	8240DB001676
57912	20	8240DB001517
57913	20	8240DB001678
57914	20	8240DB001679
57915	20	8240DB004520
57916	20	8240DB004825
57917	20	8240DB007233
57918	20	8240DB004573
57919	20	8240DB004893
57920	20	8240DB004894
57921	20	8240DB004895
57922	20	8240DB007217
57923	20	8240DB007227
57924	20	8240DB006172
57925	20	8240DB004493
57926	20	8240DB004362
57927	21	8240DB004747
57928	21	8240DB001882
57929	21	8240DB007379
57930	21	8240DB004903
57931	21	8240DB007219
57932	21	8240DB007218
57933	21	8240DB007031
57934	21	8240DB004897
57935	21	8240DB004898
57936	21	8240DB004574
57937	21	8240DB004575
57938	21	8240DB001680
57939	21	8240DB001681
57940	21	8240DB001682
57941	21	8240DB001683
57942	21	8240DB001684
57943	21	8240DB001685
57944	21	8240DB001686
57945	21	8240DB001687
57946	21	8240DB001688
57947	21	8240DB001689
57948	21	8240DB001690
57949	21	8240DB001691
57950	21	8240DB001692
57951	21	8240DB001693
57952	21	8220DB001694
57953	21	8220DB001695
57954	21	8220DB001696
57955	21	8220DB001697
57956	21	8220DB001698
57957	21	8220DB001699
57958	21	8220DB001700
57959	21	8220DB001701
57960	21	8220DB001702
57961	21	8220DB001703
57962	21	8220DB001704
57963	21	8220DB001705
57964	21	8220DB001706
57965	21	8220DB001707
57966	21	8220DB001708
57967	21	8220DB001709
57968	21	8220DB001528
57969	21	8220DB001710
57970	21	8220DB001711
57971	21	8220DB001712
57972	21	8220DB001713
57973	21	8220DB001714
57974	21	8220DB001715
57975	21	8220DB007453
57976	21	8220DB001478
57977	21	8220DB001479
57978	21	8220DB000315
57979	21	8220DB000404
57980	21	8220DB000747
57981	21	8220DB000843
57982	21	8220DB000845
57983	21	8220DB000846
57984	22	8230DB004606
57985	22	8230DB007142
57986	22	8230DB007015
57987	22	8230DB004617
57988	22	8230DB004555
57989	22	8230DB004552
57990	22	8230DB004554
57991	22	8230DB003418
57992	22	8230DB003419
57993	22	8230DB004762
57994	22	8230DB004763
57995	22	8230DB006245
57996	22	8230DB002156
57997	22	8230DB006014
57998	22	8230DB006242
57999	22	8230DB006152
58000	22	8230DB006153
58001	22	8230DB006243
58002	22	8230DB006154
58003	22	8230DB006155
58004	22	8230DB006141
58005	22	8220DB006142
58006	22	8220DB002181
58007	22	8220DB002182
58008	22	8220DB002778
58009	22	8220DB002185
58010	22	8220DB007043
58011	22	8220DB001424
58012	22	8220DB002186
58013	22	8220DB002187
58014	22	8220DB002188
58015	22	8220DB002189
58016	22	8220DB001436
58017	22	8220DB003952
58018	22	8220DB002190
58019	22	8220DB004434
58020	22	8220DB002379
58021	22	8220DB002380
58022	22	8220DB002382
58023	22	8220DB005099
58024	22	8220DB002383
58025	22	8220DB001479
58026	22	8220DB007622
58027	22	8220DB000297
58028	22	8220DB000407
58029	22	8220DB002498
58030	22	8220DB002499
58031	22	8220DB002500
58032	22	8220DB002501
58033	22	8220DB007623
58034	22	8220DB002508
58035	23	8220DB007514
58036	23	8220DB002279
58037	23	8220DB006251
58038	23	8220DB005140
58039	23	8220DB001500
58040	23	8220DB000302
58041	23	8220DB004495
58042	23	8220DB004522
58043	23	8220DB001934
58044	23	8220DB002310
58045	23	8220DB002311
58046	23	8220DB002312
58047	23	8220DB002313
58048	23	8220DB002314
58049	23	8220DB002315
58050	23	8220DB002094
58051	23	8220DB001406
58052	23	8220DB001407
58053	23	8220DB001409
58054	23	8220DB002095
58055	23	8220DB002096
58056	23	8220DB002097
58057	23	8220DB002099
58058	23	8220DB002101
58059	23	8220DB002102
58060	23	8220DB002726
58061	23	8220DB002727
58062	23	8220DB002105
58063	23	8220DB006140
58064	23	8230DB006144
58065	23	8230DB006145
58066	23	8230DB006146
58067	23	8230DB006147
58068	23	8230DB006149
58069	23	8230DB006150
58070	23	8230DB006143
58071	23	8230DB006011
58072	23	8230DB002133
58073	23	8230DB006244
58074	23	8230DB002134
58075	23	8230DB002135
58076	23	8230DB002164
58077	23	8230DB002165
58078	23	8230DB002166
58079	23	8230DB004545
58080	23	8230DB004552
58081	23	8230DB004554
58082	23	8230DB007016
58083	24	8220DB000342
58084	24	8220DB001279
58085	24	8220DB001934
58086	24	8220DB002385
58087	24	8220DB002386
58088	24	8220DB002387
58089	24	8220DB002388
58090	24	8220DB001290
58091	24	8220DB001291
58092	24	8220DB002389
58093	24	8220DB002390
58094	24	8220DB002391
58095	24	8220DB002392
58096	24	8220DB002393
58097	24	8220DB002394
58098	24	8220DB002395
58099	24	8220DB002396
58100	24	8220DB002397
58101	24	8220DB002398
58102	24	8230DB002399
58103	24	8230DB002400
58104	24	8230DB002401
58105	24	8230DB002402
58106	24	8230DB002403
58107	24	8230DB001096
58108	24	8230DB001097
58109	24	8230DB001099
58110	24	8230DB006132
58111	24	8230DB002551
58112	24	8230DB002553
58113	24	8230DB002554
58114	24	8230DB002555
58115	24	8230DB002556
58116	24	8230DB002557
58117	24	8230DB004436
58118	24	8230DB005008
58119	24	8230DB004640
58120	24	8230DB007214
58121	24	8230DB004347
58122	24	8230DB002349
58123	24	8230DB002351
58124	24	8230DB002558
58125	24	8230DB006170
58126	24	8230DB005023
58127	25	8230DB005161
58128	25	8230DB005162
58129	25	8230DB002571
58130	25	8230DB002359
58131	25	8230DB002360
58132	25	8230DB004348
58133	25	8230DB004646
58134	25	8230DB004647
58135	25	8230DB004435
58136	25	8230DB002594
58137	25	8230DB002595
58138	25	8230DB002596
58139	25	8230DB002597
58140	25	8230DB002599
58141	25	8230DB004577
58142	25	8230DB004578
58143	25	8230DB001100
58144	25	8230DB000100
58145	25	8230DB001111
58146	25	8230DB002404
58147	25	8230DB002405
58148	25	8230DB002406
58149	25	8230DB002408
58150	25	8220DB002409
58151	25	8220DB002410
58152	25	8220DB002411
58153	25	8220DB002412
58154	25	8220DB002438
58155	25	8220DB002439
58156	25	8220DB002440
58157	25	8220DB002441
58158	25	8220DB002442
58159	25	8220DB002443
58160	25	8220DB002444
58161	25	8220DB001344
58162	25	8220DB001345
58163	25	8220DB001347
58164	25	8220DB002634
58165	25	8220DB002635
58166	25	8220DB002636
58167	25	8220DB002383
58168	25	8220DB002003
58169	25	8220DB001358
58170	26	8230DB006282
58171	26	8230DB006335
58172	26	8230DB006326
58173	26	8230DB004886
58174	26	8230DB004887
58175	26	8230DB001150
58176	26	8230DB001151
58177	26	8230DB001152
58178	26	8230DB001153
58179	26	8230DB001154
58180	26	8230DB000946
58181	26	8230DB001155
58182	26	8230DB001157
58183	26	8230DB001158
58184	26	8220DB001159
58185	26	8220DB001160
58186	26	8220DB001161
58187	26	8220DB001162
58188	26	8220DB001163
58189	26	8220DB001164
58190	26	8220DB001165
58191	26	8220DB001166
58192	26	8220DB001167
58193	26	8220DB001168
58194	26	8220DB001169
58195	26	8220DB001170
58196	26	8220DB001069
58197	26	8220DB001070
58198	26	8220DB001071
58199	26	8220DB004528
58200	26	8220DB001072
58201	26	8220DB007577
58202	26	8220DB001353
58203	26	8220DB001354
58204	26	8220DB007578
58205	26	8220DB007582
58206	26	8220DB000299
58207	26	8220DB000497
58208	26	8220DB000515
58209	26	8220DB000516
58210	26	8220DB004384
58211	26	8220DB000519
58212	26	8220DB000521
58213	26	8220DB000522
58214	26	8220DB000523
58215	26	8220DB000669
58216	26	8220DB000670
58217	26	8220DB000671
58218	26	8220DB000672
58219	26	8220DB004382
58220	26	8220DB001196
58221	26	8220DB001197
58222	26	8220DB001198
58223	26	8220DB001199
58224	26	8220DB001200
58225	26	8220DB004385
58226	26	8220DB001201
58227	26	8220DB001202
58228	26	8220DB001203
58229	26	8220DB006115
58230	26	8220DB004593
58231	26	8220DB007516
58232	26	8220DB006079
58233	26	8220DB006315
58234	26	8220DB006316
58235	26	8220DB007236
58236	26	8220DB007245
58237	27	8220DB006318
58238	27	8220DB006319
58239	27	8220DB007246
58240	27	8220DB006320
58241	27	8220DB004594
58242	27	8220DB004595
58243	27	8220DB004596
58244	27	8220DB004563
58245	27	8220DB001218
58246	27	8220DB001270
58247	27	8220DB001272
58248	27	8220DB001273
58249	27	8220DB001274
58250	27	8220DB001275
58251	27	8220DB001276
58252	27	8220DB001277
58253	27	8220DB001219
58254	27	8220DB001220
58255	27	8220DB001221
58256	27	8220DB000664
58257	27	8220DB000665
58258	27	8220DB000666
58259	27	8220DB000667
58260	27	8220DB000668
58261	27	8220DB000614
58262	27	8220DB000615
58263	27	8220DB000616
58264	27	8220DB000617
58265	27	8220DB000618
58266	27	8220DB000619
58267	27	8220DB000675
58268	27	8220DB004415
58269	27	8220DB000301
58270	27	8220DB004495
58271	27	8220DB007581
58272	27	8220DB001283
58273	27	8220DB007579
58274	27	8220DB001285
58275	27	8220DB001016
58276	27	8220DB001017
58277	27	8220DB001018
58278	27	8220DB001019
58279	27	8220DB001020
58280	27	8220DB001076
58281	27	8220DB001077
58282	27	8220DB001078
58283	27	8220DB001079
58284	27	8220DB001080
58285	27	8220DB001081
58286	27	8220DB001082
58287	27	8220DB001083
58288	27	8220DB001085
58289	27	8220DB001121
58290	27	8220DB001122
58291	27	8220DB001123
58292	27	8220DB001124
58293	27	8230DB001125
58294	27	8230DB001127
58295	27	8230DB001130
58296	27	8230DB001140
58297	27	8230DB001141
58298	27	8230DB001142
58299	27	8230DB001143
58300	27	8230DB001144
58301	27	8230DB001145
58302	27	8230DB004869
58303	27	8230DB004870
58304	27	8230DB003007
58305	27	8230DB006283
58306	28	8220DB004525
58307	28	8220DB004526
58308	28	8220DB001700
58309	28	8220DB001701
58310	28	8220DB001702
58311	28	8220DB000016
58312	28	8220DB000073
58313	28	8220DB000074
58314	28	8220DB004371
58315	28	8220DB000832
58316	28	8220DB000833
58317	28	8220DB000077
58318	28	8220DB000078
58319	28	8220DB000079
58320	28	8220DB000080
58321	28	8220DB000082
58322	28	8220DB000083
58323	28	8220DB000084
58324	28	8220DB000051
58325	28	8220DB000052
58326	28	8220DB000263
58327	28	8220DB000271
58328	28	8220DB001278
58329	28	8220DB001282
58330	28	8220DB004456
58331	28	8220DB001284
58332	28	8220DB001285
58333	28	8220DB001286
58334	28	8220DB001288
58335	28	8220DB001289
58336	28	8220DB001360
58337	28	8220DB001362
58338	28	8220DB001363
58339	28	8220DB001364
58340	28	8220DB001365
58341	28	8220DB001366
58342	28	8220DB001367
58343	28	8220DB007455
58344	28	8220DB007438
58345	28	8220DB001410
58346	28	8220DB001411
58347	28	8220DB001412
58348	28	8220DB001413
58349	28	8220DB001414
58350	28	8220DB001415
58351	28	8220DB001417
58352	28	8220DB001418
58353	28	8220DB005149
58354	28	8220DB001419
58355	29	8220DB001423
58356	29	8220DB001424
58357	29	8220DB001425
58358	29	8220DB001426
58359	29	8220DB001427
58360	29	8220DB001428
58361	29	8220DB001429
58362	29	8220DB001430
58363	29	8220DB001432
58364	29	8220DB001433
58365	29	8220DB001434
58366	29	8220DB001435
58367	29	8220DB007439
58368	29	8220DB007454
58369	29	8220DB001380
58370	29	8220DB001381
58371	29	8220DB001382
58372	29	8220DB001383
58373	29	8220DB001384
58374	29	8220DB001385
58375	29	8220DB001348
58376	29	8220DB001349
58377	29	8220DB001350
58378	29	8220DB001352
58379	29	8220DB001353
58380	29	8220DB001355
58381	29	8220DB001357
58382	29	8220DB001359
58383	29	8220DB000279
58384	29	8220DB000003
58385	29	8220DB000012
58386	29	8220DB000014
58387	29	8220DB000053
58388	29	8220DB000054
58389	29	8220DB000055
58390	29	8220DB000056
58391	29	8220DB000058
58392	29	8220DB000059
58393	29	8220DB000060
58394	29	8220DB000820
58395	29	8220DB000821
58396	29	8220DB000063
58397	29	8220DB000064
58398	29	8220DB000065
58399	29	8220DB000066
58400	29	8220DB004498
58401	29	8220DB001660
58402	29	8220DB001661
58403	29	8220DB004523
58404	29	8220DB004524
58405	30	8220DB006057
58406	30	8220DB002183
58407	30	8220DB002184
58408	30	8220DB002185
58409	30	8220DB001423
58410	30	8220DB001424
58411	30	8220DB001425
58412	30	8220DB001426
58413	30	8220DB001463
58414	30	8220DB004399
58415	30	8220DB004400
58416	30	8220DB001464
58417	30	8220DB001469
58418	30	8220DB001465
58419	30	8220DB001466
58420	30	8220DB001467
58421	30	8220DB001468
58422	30	8220DB001377
58423	30	8220DB001378
58424	30	8220DB004514
58425	30	8220DB004515
58426	30	8220DB001995
58427	30	8220DB001996
58428	30	8220DB001997
58429	30	8220DB001998
58430	30	8220DB001999
58431	30	8220DB002001
58432	30	8220DB002002
58433	30	8220DB001359
58434	30	8220DB000274
58435	30	8220DB001505
58436	30	8220DB004509
58437	30	8220DB000499
58438	30	8220DB000500
58439	30	8220DB000501
58440	30	8220DB001484
58441	30	8220DB001481
58442	30	8220DB007320
58443	30	8220DB001486
58444	30	8220DB001487
58445	30	8220DB001488
58446	30	8220DB001489
58447	31	8220DB001491
58448	31	8220DB001492
58449	31	8220DB001493
58450	31	8220DB001482
58451	31	8220DB001494
58452	31	8220DB001495
58453	31	8220DB001496
58454	31	8220DB001515
58455	31	8220DB001499
58456	31	8220DB001485
58457	31	8220DB004518
58458	31	8220DB000509
58459	31	8220DB000510
58460	31	8220DB000511
58461	31	8220DB000513
58462	31	8220DB004513
58463	31	8220DB000272
58464	31	8220DB000335
58465	31	8220DB001278
58466	31	8220DB001934
58467	31	8220DB001935
58468	31	8220DB001937
58469	31	8220DB001938
58470	31	8220DB001939
58471	31	8220DB001940
58472	31	8220DB001941
58473	31	8220DB004516
58474	31	8220DB001369
58475	31	8220DB001370
58476	31	8220DB001371
58477	31	8220DB001454
58478	31	8220DB001455
58479	31	8220DB001453
58480	31	8220DB001456
58481	31	8220DB001457
58482	31	8220DB001458
58483	31	8220DB001459
58484	31	8220DB001460
58485	31	8220DB001462
58486	31	8220DB005149
58487	31	8220DB001419
58488	31	8220DB006094
58489	31	8220DB002102
58490	31	8220DB002103
58491	31	8220DB007154
58492	31	8220DB007153
58493	32	8350DB004533
58494	32	8350DB004844
58495	32	8350DB004177
58496	32	8350DB004178
58497	32	8350DB004142
58498	32	8350DB004143
58499	32	8350DB004144
58500	32	8350DB004145
58501	32	8350DB004146
58502	32	8350DB004304
58503	32	8350DB004148
58504	32	8350DB004149
58505	32	8350DB003045
58506	32	8350DB004150
58507	32	8350DB004151
58508	32	8350DB002997
58509	32	8350DB004156
58510	32	8350DB004169
58511	32	8350DB004170
58512	32	8350DB004153
58513	32	8350DB004154
58514	32	8350DB004416
58515	32	8350DB004201
58516	32	8250DB004202
58517	32	8250DB004203
58518	32	8250DB005090
58519	32	8250DB004204
58520	32	8250DB004205
58521	32	8250DB004206
58522	32	8250DB003140
58523	32	8250DB003545
58524	32	8250DB003552
58525	32	8250DB003553
58526	32	8250DB003554
58527	32	8250DB003555
58528	32	8250DB003556
58529	32	8250DB003557
58530	32	8250DB003560
58531	32	8250DB007323
58532	32	8250DB003561
58533	32	8250DB003225
58534	32	8250DB003226
58535	32	8250DB003227
58536	32	8250DB003228
58537	32	8250DB003229
58538	32	8250DB007472
58539	32	8250DB003230
58540	32	8250DB003231
58541	32	8250DB003246
58542	32	8250DB003247
58543	32	8250DB007056
58544	32	8250DB003248
58545	32	8250DB003343
58546	32	8250DB003236
58547	32	8250DB003237
58548	32	8250DB003238
58549	32	8250DB003239
58550	32	8250DB003240
58551	32	8250DB003068
58552	32	8250DB003069
58553	32	8250DB003070
58554	33	8250DB002037
58555	33	8250DB002040
58556	33	8250DB003047
58557	33	8250DB003202
58558	33	8250DB003203
58559	33	8250DB003204
58560	33	8250DB003205
58561	33	8250DB003206
58562	33	8250DB003241
58563	33	8250DB003242
58564	33	8250DB003243
58565	33	8250DB003244
58566	33	8250DB003245
58567	33	8250DB003212
58568	33	8250DB003213
58569	33	8250DB003214
58570	33	8250DB003215
58571	33	8250DB003216
58572	33	8250DB003217
58573	33	8250DB003218
58574	33	8250DB003534
58575	33	8250DB003535
58576	33	8250DB003536
58577	33	8250DB003537
58578	33	8250DB003538
58579	33	8250DB007556
58580	33	8250DB003539
58581	33	8250DB003540
58582	33	8250DB003541
58583	33	8250DB003542
58584	33	8250DB003543
58585	33	8250DB003139
58586	33	8250DB004124
58587	33	8250DB004125
58588	33	8250DB004126
58589	33	8250DB004127
58590	33	8250DB004128
58591	33	8350DB004129
58592	33	8350DB004130
58593	33	8350DB004131
58594	33	8350DB007294
58595	33	8350DB004156
58596	33	8350DB004169
58597	33	8350DB004170
58598	33	8350DB004132
58599	33	8350DB004134
58600	33	8350DB004135
58601	33	8350DB004136
58602	33	8350DB004147
58603	33	8350DB005167
58604	33	8350DB004139
58605	33	8350DB004140
58606	33	8350DB007522
58607	33	8350DB004175
58608	33	8350DB005091
58609	33	8350DB005092
58610	34	8220DB007564
58611	34	8220DB004521
58612	34	8220DB001283
58613	34	8220DB004456
58614	34	8220DB001284
58615	34	8220DB001285
58616	34	8220DB001016
58617	34	8220DB001017
58618	34	8220DB001018
58619	34	8220DB001019
58620	34	8220DB001020
58621	34	8220DB001076
58622	34	8220DB001077
58623	34	8220DB001078
58624	34	8220DB001079
58625	34	8220DB001080
58626	34	8220DB001081
58627	34	8220DB001082
58628	34	8220DB001083
58629	34	8220DB001085
58630	34	8220DB001121
58631	34	8220DB001122
58632	34	8220DB001123
58633	34	8220DB001124
58634	34	8230DB001125
58635	34	8230DB001127
58636	34	8230DB001130
58637	34	8230DB002550
58638	34	8230DB002551
58639	34	8230DB002553
58640	34	8230DB002554
58641	34	8230DB002555
58642	34	8230DB002556
58643	34	8230DB002557
58644	34	8230DB004436
58645	34	8230DB005008
58646	34	8230DB004640
58647	34	8230DB004347
58648	34	8230DB002349
58649	34	8230DB002351
58650	34	8230DB004445
58651	34	8230DB002352
58652	34	8230DB002573
58653	34	8230DB002574
58654	34	8230DB002577
58655	34	8230DB002578
58656	34	8230DB002579
58657	34	8230DB007395
58658	34	8230DB006124
58659	34	8230DB004004
58660	34	8230DB004005
58661	34	8230DB004006
58662	34	8230DB004007
58663	34	8230DB004008
58664	34	8230DB004010
58665	34	8230DB004009
58666	34	8350DB004011
58667	34	8350DB005110
58668	34	8350DB004012
58669	34	8350DB004013
58670	34	8350DB004014
58671	34	8350DB004098
58672	34	8350DB004015
58673	34	8350DB004017
58674	34	8350DB004018
58675	34	8350DB004019
58676	34	8350DB004020
58677	34	8350DB004100
58678	34	8350DB004021
58679	34	8350DB004022
58680	34	8350DB004023
58681	34	8350DB004024
58682	34	8350DB004027
58683	34	8350DB007250
58684	34	8350DB007248
58685	34	8350DB007207
58686	34	8260DB007288
58687	34	8260DB007286
58688	34	8260DB007283
58689	34	8260DB007282
58690	34	8260DB007278
58691	35	8350DB007270
58692	35	8350DB007266
58693	35	8350DB007265
58694	35	8350DB007262
58695	35	8350DB007261
58696	35	8350DB007259
58697	35	8350DB007256
58698	35	8350DB007255
58699	35	8350DB007249
58700	35	8350DB007253
58701	35	8350DB007251
58702	35	8350DB004051
58703	35	8350DB004052
58704	35	8350DB004054
58705	35	8350DB004055
58706	35	8350DB004057
58707	35	8350DB004101
58708	35	8350DB004102
58709	35	8350DB004058
58710	35	8350DB004059
58711	35	8350DB004060
58712	35	8350DB004061
58713	35	8350DB004062
58714	35	8350DB004063
58715	35	8350DB004064
58716	35	8350DB004056
58717	35	8350DB004133
58718	35	8350DB004065
58719	35	8350DB004066
58720	35	8350DB004067
58721	35	8350DB004068
58722	35	8230DB004069
58723	35	8230DB004070
58724	35	8230DB004071
58725	35	8230DB004072
58726	35	8230DB004073
58727	35	8230DB002583
58728	35	8230DB002584
58729	35	8230DB002585
58730	35	8230DB002586
58731	35	8230DB002587
58732	35	8230DB002588
58733	35	8230DB002589
58734	35	8230DB002590
58735	35	8230DB002591
58736	35	8230DB002592
58737	35	8230DB002357
58738	35	8230DB002359
58739	35	8230DB002360
58740	35	8230DB004348
58741	35	8230DB004646
58742	35	8230DB004647
58743	35	8230DB002346
58744	35	8230DB004435
58745	35	8230DB002594
58746	35	8230DB002595
58747	35	8230DB002596
58748	35	8230DB002597
58749	35	8230DB002599
58750	35	8230DB002600
58751	35	8230DB001155
58752	35	8230DB001157
58753	35	8230DB001158
58754	35	8220DB001159
58755	35	8220DB001160
58756	35	8220DB001161
58757	35	8220DB001162
58758	35	8220DB001163
58759	35	8220DB001164
58760	35	8220DB001165
58761	35	8220DB001166
58762	35	8220DB001167
58763	35	8220DB001168
58764	35	8220DB001169
58765	35	8220DB001170
58766	35	8220DB001069
58767	35	8220DB001070
58768	35	8220DB001071
58769	35	8220DB004528
58770	35	8220DB001072
58771	35	8220DB001352
58772	35	8220DB001353
58773	35	8220DB001355
58774	35	8220DB001357
58775	35	8220DB001358
58776	36	8220DB007564
58777	36	8220DB004521
58778	36	8220DB001283
58779	36	8220DB004456
58780	36	8220DB001284
58781	36	8220DB001285
58782	36	8220DB001016
58783	36	8220DB001017
58784	36	8220DB001018
58785	36	8220DB001019
58786	36	8220DB001020
58787	36	8220DB001076
58788	36	8220DB001077
58789	36	8220DB001078
58790	36	8220DB001079
58791	36	8220DB001080
58792	36	8220DB001081
58793	36	8220DB001082
58794	36	8220DB001083
58795	36	8220DB001085
58796	36	8220DB001121
58797	36	8220DB001122
58798	36	8220DB001123
58799	36	8220DB001124
58800	36	8230DB001125
58801	36	8230DB001127
58802	36	8230DB001130
58803	36	8230DB002550
58804	36	8230DB002516
58805	36	8230DB002517
58806	36	8230DB002518
58807	36	8230DB004749
58808	36	8230DB004750
58809	36	8230DB003006
58810	36	8230DB004871
58811	36	8230DB004872
58812	36	8230DB004873
58813	36	8230DB004874
58814	36	8230DB002532
58815	36	8230DB004877
58816	36	8230DB004878
58817	36	8230DB007180
58818	36	8230DB007331
58819	36	8230DB002559
58820	36	8230DB002560
58821	36	8230DB002561
58822	36	8230DB002562
58823	36	8230DB002564
58824	36	8230DB004927
58825	36	8230DB004928
58826	36	8230DB002352
58827	36	8230DB002573
58828	36	8230DB002574
58829	36	8230DB002575
58830	36	8230DB004929
58831	36	8230DB007460
58832	36	8230DB004930
58833	36	8230DB004931
58834	37	8230DB004713
58835	37	8230DB004714
58836	37	8230DB004960
58837	37	8230DB004932
58838	37	8230DB004933
58839	37	8230DB002590
58840	37	8230DB002591
58841	37	8230DB002592
58842	37	8230DB002357
58843	37	8230DB002566
58844	37	8230DB002567
58845	37	8230DB002568
58846	37	8230DB002569
58847	37	8230DB007550
58848	37	8230DB002570
58849	37	8230DB007222
58850	37	8230DB006170
58851	37	8230DB007183
58852	37	8230DB004880
58853	37	8230DB002539
58854	37	8230DB002540
58855	37	8230DB004882
58856	37	8230DB004883
58857	37	8230DB004884
58858	37	8230DB004885
58859	37	8230DB006343
58860	37	8230DB004759
58861	37	8230DB004760
58862	37	8230DB002547
58863	37	8230DB002548
58864	37	8230DB002600
58865	37	8230DB001155
58866	37	8230DB001157
58867	37	8230DB001158
58868	37	8220DB001159
58869	37	8220DB001160
58870	37	8220DB001161
58871	37	8220DB001162
58872	37	8220DB001163
58873	37	8220DB001164
58874	37	8220DB001165
58875	37	8220DB001166
58876	37	8220DB001167
58877	37	8220DB001168
58878	37	8220DB001169
58879	37	8220DB001170
58880	37	8220DB001069
58881	37	8220DB001070
58882	37	8220DB001071
58883	37	8220DB004528
58884	37	8220DB001072
58885	37	8220DB001352
58886	37	8220DB001353
58887	37	8220DB001355
58888	37	8220DB001357
58889	37	8220DB001358
58890	38	8220DB001174
58891	38	8220DB004725
58892	38	8220DB000273
58893	38	8220DB000405
58894	38	8220DB000408
58895	38	8220DB000409
58896	38	8220DB000410
58897	38	8220DB000411
58898	38	8220DB000412
58899	38	8220DB000413
58900	38	8220DB000414
58901	38	8220DB000415
58902	38	8220DB000416
58903	38	8220DB000417
58904	38	8220DB000418
58905	38	8220DB000419
58906	38	8220DB000420
58907	38	8220DB000421
58908	38	8220DB000422
58909	38	8220DB000423
58910	38	8220DB000424
58911	38	8250DB000425
58912	38	8250DB000426
58913	38	8250DB000427
58914	38	8250DB000428
58915	38	8250DB000429
58916	38	8250DB003032
58917	38	8250DB003033
58918	38	8250DB003034
58919	38	8250DB003036
58920	38	8250DB003037
58921	38	8250DB003038
58922	38	8250DB003039
58923	38	8250DB003040
58924	38	8250DB003041
58925	38	8250DB003042
58926	38	8250DB002035
58927	38	8250DB002036
58928	38	8250DB002040
58929	38	8250DB003047
58930	38	8250DB003202
58931	38	8250DB003203
58932	38	8250DB003204
58933	38	8250DB003205
58934	38	8250DB003206
58935	38	8250DB003207
58936	38	8250DB003208
58937	38	8250DB003209
58938	38	8250DB003210
58939	38	8250DB004981
58940	38	8250DB003211
58941	38	8250DB003212
58942	38	8250DB003213
58943	38	8250DB003214
58944	38	8250DB003215
58945	38	8250DB003216
58946	38	8250DB003217
58947	38	8250DB003218
58948	38	8250DB003219
58949	38	8250DB003220
58950	38	8250DB003221
58951	39	8250DB003222
58952	39	8250DB003223
58953	39	8250DB003224
58954	39	8250DB003225
58955	39	8250DB003226
58956	39	8250DB003227
58957	39	8250DB003228
58958	39	8250DB003229
58959	39	8250DB007472
58960	39	8250DB003230
58961	39	8250DB003232
58962	39	8250DB003233
58963	39	8250DB003234
58964	39	8250DB004462
58965	39	8250DB003235
58966	39	8250DB003236
58967	39	8250DB003237
58968	39	8250DB003238
58969	39	8250DB003239
58970	39	8250DB003240
58971	39	8250DB003068
58972	39	8250DB003069
58973	39	8250DB003070
58974	39	8250DB002041
58975	39	8250DB003071
58976	39	8250DB003072
58977	39	8250DB003073
58978	39	8250DB003074
58979	39	8250DB003075
58980	39	8250DB003076
58981	39	8250DB003077
58982	39	8250DB003079
58983	39	8250DB003080
58984	39	8250DB003081
58985	39	8250DB003084
58986	39	8250DB000469
58987	39	8250DB000470
58988	39	8250DB000471
58989	39	8250DB000472
58990	39	8250DB000473
58991	39	8250DB004705
58992	39	8250DB000475
58993	39	8220DB000476
58994	39	8220DB000477
58995	39	8220DB000478
58996	39	8220DB000479
58997	39	8220DB000480
58998	39	8220DB000481
58999	39	8220DB000482
59000	39	8220DB000483
59001	39	8220DB000485
59002	39	8220DB000487
59003	39	8220DB000488
59004	39	8220DB000489
59005	39	8220DB000490
59006	39	8220DB000491
59007	39	8220DB000492
59008	39	8220DB000493
59009	39	8220DB000494
59010	39	8220DB000495
59011	39	8220DB000400
59012	39	8220DB000281
59013	39	8220DB000004
59014	40	8220DB004495
59015	40	8220DB001278
59016	40	8220DB001282
59017	40	8220DB004456
59018	40	8220DB001284
59019	40	8220DB001285
59020	40	8220DB001286
59021	40	8220DB001288
59022	40	8220DB001289
59023	40	8220DB001360
59024	40	8220DB001362
59025	40	8220DB001363
59026	40	8220DB001364
59027	40	8220DB001365
59028	40	8220DB001366
59029	40	8220DB001367
59030	40	8220DB001369
59031	40	8220DB001370
59032	40	8220DB001371
59033	40	8220DB001372
59034	40	8220DB001373
59035	40	8220DB001374
59036	40	8220DB001946
59037	40	8220DB001947
59038	40	8220DB001948
59039	40	8220DB001949
59040	40	8220DB001950
59041	40	8220DB001951
59042	40	8220DB001952
59043	40	8220DB001953
59044	40	8220DB001954
59045	40	8220DB001955
59046	40	8220DB001956
59047	40	8230DB001957
59048	40	8230DB001958
59049	40	8230DB001959
59050	40	8230DB001960
59051	40	8230DB004379
59052	40	8230DB007782
59053	40	8230DB001968
59054	40	8230DB001969
59055	40	8230DB001970
59056	40	8230DB001971
59057	40	8230DB002114
59058	40	8230DB002115
59059	40	8230DB006011
59060	40	8230DB002133
59061	40	8230DB006244
59062	40	8230DB002134
59063	40	8230DB003378
59064	40	8230DB003379
59065	40	8230DB004669
59066	40	8230DB002165
59067	40	8230DB002166
59068	40	8230DB002167
59069	40	8230DB003383
59070	40	8230DB003384
59071	40	8230DB003385
59072	40	8230DB003386
59073	40	8230DB003387
59074	40	8230DB004559
59075	40	8230DB003389
59076	40	8230DB003390
59077	40	8230DB006119
59078	40	8230DB003392
59079	40	8230DB003393
59080	40	8230DB003394
59081	40	8230DB003396
59082	40	8230DB003397
59083	40	8230DB003398
59084	40	8230DB003399
59085	40	8230DB006187
59086	40	8230DB006188
59087	40	8230DB006215
59088	41	8230DB006185
59089	41	8230DB006186
59090	41	8230DB006216
59091	41	8230DB003400
59092	41	8230DB003401
59093	41	8230DB003402
59094	41	8230DB003403
59095	41	8230DB003404
59096	41	8230DB003405
59097	41	8230DB003406
59098	41	8230DB003410
59099	41	8230DB003407
59100	41	8230DB003408
59101	41	8230DB003409
59102	41	8230DB004558
59103	41	8230DB003411
59104	41	8230DB003412
59105	41	8230DB003413
59106	41	8230DB003414
59107	41	8230DB003415
59108	41	8230DB003416
59109	41	8230DB003417
59110	41	8230DB003418
59111	41	8230DB003419
59112	41	8230DB003420
59113	41	8230DB003421
59114	41	8230DB003422
59115	41	8230DB003423
59116	41	8230DB002156
59117	41	8230DB006014
59118	41	8230DB002158
59119	41	8230DB002159
59120	41	8230DB004409
59121	41	8230DB002173
59122	41	8230DB002174
59123	41	8230DB003425
59124	41	8230DB002176
59125	41	8230DB002177
59126	41	8230DB002178
59127	41	8230DB007354
59128	41	8230DB001975
59129	41	8230DB001977
59130	41	8230DB001978
59131	41	8230DB001980
59132	41	8220DB001981
59133	41	8220DB001982
59134	41	8220DB004406
59135	41	8220DB001984
59136	41	8220DB001985
59137	41	8220DB001986
59138	41	8220DB001987
59139	41	8220DB001988
59140	41	8220DB001989
59141	41	8220DB001375
59142	41	8220DB001376
59143	41	8220DB001377
59144	41	8220DB001378
59145	41	8220DB001379
59146	41	8220DB001380
59147	41	8220DB001381
59148	41	8220DB001382
59149	41	8220DB001383
59150	41	8220DB001384
59151	41	8220DB001385
59152	41	8220DB001348
59153	41	8220DB001349
59154	41	8220DB001350
59155	41	8220DB001352
59156	41	8220DB001353
59157	41	8220DB001355
59158	41	8220DB001357
59159	41	8220DB001358
59160	42	8240DB007144
59161	42	8240DB003881
59162	42	8240DB005096
59163	42	8240DB007145
59164	42	8240DB003884
59165	42	8240DB003686
59166	42	8240DB005077
59167	42	8240DB005078
59168	42	8240DB003689
59169	42	8240DB003690
59170	42	8240DB005079
59171	42	8240DB003694
59172	42	8240DB003695
59173	42	8240DB003696
59174	42	8240DB003697
59175	42	8240DB003698
59176	42	8240DB003699
59177	42	8240DB003885
59178	42	8240DB001631
59179	42	8240DB001632
59180	42	8240DB005053
59181	42	8240DB001633
59182	42	8240DB001634
59183	42	8240DB001635
59184	42	8240DB001636
59185	42	8240DB001637
59186	42	8240DB001638
59187	42	8240DB001639
59188	42	8240DB001640
59189	42	8240DB000231
59190	42	8220DB001641
59191	42	8220DB001642
59192	42	8220DB000213
59193	42	8220DB000214
59194	42	8220DB004432
59195	42	8220DB000119
59196	42	8220DB000044
59197	42	8220DB007603
59198	42	8220DB000045
59199	42	8220DB000046
59200	42	8220DB000047
59201	42	8220DB000048
59202	42	8220DB000049
59203	42	8220DB000051
59204	42	8220DB000052
59205	42	8220DB000277
59206	43	8220DB000288
59207	43	8220DB001171
59208	43	8220DB001172
59209	43	8220DB001173
59210	43	8220DB001174
59211	43	8220DB001175
59212	43	8220DB000015
59213	43	8220DB000017
59214	43	8220DB000018
59215	43	8220DB000019
59216	43	8220DB000021
59217	43	8220DB007602
59218	43	8220DB000085
59219	43	8220DB000203
59220	43	8220DB000204
59221	43	8220DB000205
59222	43	8220DB001620
59223	43	8220DB000220
59224	43	8240DB001622
59225	43	8240DB001623
59226	43	8240DB001624
59227	43	8240DB001625
59228	43	8240DB001626
59229	43	8240DB001627
59230	43	8240DB001628
59231	43	8240DB001629
59232	43	8240DB001630
59233	43	8240DB003670
59234	43	8240DB003671
59235	43	8240DB003672
59236	43	8240DB003674
59237	43	8240DB003675
59238	43	8240DB005030
59239	43	8240DB005031
59240	43	8240DB006033
59241	43	8240DB003089
59242	43	8240DB003090
59243	43	8240DB003706
59244	43	8240DB003707
59245	43	8240DB003708
59246	43	8240DB003709
59247	43	8240DB003710
59248	43	8240DB004925
59249	43	8240DB004926
59250	43	8240DB003678
59251	43	8240DB003679
59252	43	8240DB005075
59253	43	8240DB005076
59254	43	8240DB003682
59255	43	8240DB003864
59256	43	8240DB003865
59257	43	8240DB007133
59258	43	8240DB007134
59259	43	8240DB003867
59260	43	8240DB007135
59261	43	8240DB007136
59262	44	8220DB000288
59263	44	8220DB001171
59264	44	8220DB001172
59265	44	8220DB001173
59266	44	8220DB001174
59267	44	8220DB001175
59268	44	8220DB000015
59269	44	8220DB000017
59270	44	8220DB000018
59271	44	8220DB000019
59272	44	8220DB000021
59273	44	8220DB007602
59274	44	8220DB000085
59275	44	8220DB000203
59276	44	8220DB000204
59277	44	8220DB000205
59278	44	8220DB001620
59279	44	8220DB000220
59280	44	8240DB001622
59281	44	8240DB001623
59282	44	8240DB001624
59283	44	8240DB001625
59284	44	8240DB001626
59285	44	8240DB001627
59286	44	8240DB001628
59287	44	8240DB001629
59288	44	8240DB001630
59289	44	8240DB003670
59290	44	8240DB003671
59291	44	8240DB003672
59292	44	8240DB003674
59293	44	8240DB003675
59294	44	8240DB005030
59295	44	8240DB005031
59296	44	8240DB006033
59297	44	8240DB003089
59298	44	8240DB003090
59299	44	8240DB003706
59300	44	8240DB003707
59301	44	8240DB003708
59302	44	8240DB003709
59303	44	8240DB003710
59304	44	8240DB004925
59305	44	8240DB004926
59306	44	8240DB003678
59307	44	8240DB003679
59308	44	8240DB003711
59309	44	8240DB003712
59310	44	8240DB004916
59311	44	8240DB004917
59312	44	8240DB004918
59313	44	8240DB004919
59314	44	8240DB004920
59315	44	8240DB004910
59316	44	8240DB004911
59317	44	8240DB004912
59318	44	8240DB004913
59319	44	8240DB004914
59320	44	8240DB004915
59321	45	8240DB003088
59322	45	8240DB003704
59323	45	8240DB003705
59324	45	8240DB000733
59325	45	8240DB006015
59326	45	8240DB005029
59327	45	8240DB005028
59328	45	8240DB003696
59329	45	8240DB003697
59330	45	8240DB003698
59331	45	8240DB003699
59332	45	8240DB003885
59333	45	8240DB001631
59334	45	8240DB001632
59335	45	8240DB005053
59336	45	8240DB001633
59337	45	8240DB001634
59338	45	8240DB001635
59339	45	8240DB001636
59340	45	8240DB001637
59341	45	8240DB001638
59342	45	8240DB001639
59343	45	8240DB001640
59344	45	8240DB000231
59345	45	8220DB001641
59346	45	8220DB001642
59347	45	8220DB000213
59348	45	8220DB000214
59349	45	8220DB004432
59350	45	8220DB000119
59351	45	8220DB000044
59352	45	8220DB007603
59353	45	8220DB000045
59354	45	8220DB000046
59355	45	8220DB000047
59356	45	8220DB000048
59357	45	8220DB000049
59358	45	8220DB000051
59359	45	8220DB000052
59360	45	8220DB000277
59361	46	8240DB004843
59362	46	8240DB004905
59363	46	8240DB004906
59364	46	8240DB004907
59365	46	8240DB004908
59366	46	8240DB004909
59367	46	8240DB003884
59368	46	8240DB003686
59369	46	8240DB005077
59370	46	8240DB005078
59371	46	8240DB003689
59372	46	8240DB003690
59373	46	8240DB006117
59374	46	8240DB005079
59375	46	8240DB003694
59376	46	8240DB003695
59377	46	8240DB003696
59378	46	8240DB003697
59379	46	8240DB003698
59380	46	8240DB003699
59381	46	8240DB003885
59382	46	8240DB003663
59383	46	8240DB007347
59384	46	8240DB003669
59385	46	8240DB007349
59386	46	8240DB001631
59387	46	8240DB001632
59388	46	8240DB005053
59389	46	8240DB001633
59390	46	8240DB001634
59391	46	8240DB001635
59392	46	8240DB001636
59393	46	8240DB001637
59394	46	8240DB001638
59395	46	8240DB001639
59396	46	8240DB001640
59397	46	8240DB000231
59398	46	8220DB001641
59399	46	8220DB001642
59400	46	8220DB000213
59401	46	8220DB000214
59402	46	8220DB004432
59403	46	8220DB000119
59404	46	8220DB000044
59405	46	8220DB007603
59406	46	8220DB000045
59407	46	8220DB000046
59408	46	8220DB000047
59409	46	8220DB000048
59410	46	8220DB000049
59411	46	8220DB000051
59412	46	8220DB000052
59413	46	8220DB000277
59414	47	8220DB000288
59415	47	8220DB001171
59416	47	8220DB001172
59417	47	8220DB001173
59418	47	8220DB001174
59419	47	8220DB001175
59420	47	8220DB000015
59421	47	8220DB000017
59422	47	8220DB000018
59423	47	8220DB000019
59424	47	8220DB000021
59425	47	8220DB007602
59426	47	8220DB000085
59427	47	8220DB000203
59428	47	8220DB000204
59429	47	8220DB000205
59430	47	8220DB001620
59431	47	8220DB000220
59432	47	8240DB001622
59433	47	8240DB001623
59434	47	8240DB001624
59435	47	8240DB001625
59436	47	8240DB001626
59437	47	8240DB001627
59438	47	8240DB001628
59439	47	8240DB001629
59440	47	8240DB001630
59441	47	8240DB007348
59442	47	8240DB003669
59443	47	8240DB003671
59444	47	8240DB003672
59445	47	8240DB003674
59446	47	8240DB003675
59447	47	8240DB003676
59448	47	8240DB005073
59449	47	8240DB005074
59450	47	8240DB006054
59451	47	8240DB004330
59452	47	8240DB003679
59453	47	8240DB005075
59454	47	8240DB005076
59455	47	8240DB003682
59456	47	8240DB003864
59457	47	8240DB003865
59458	47	8240DB004910
59459	47	8240DB004911
59460	47	8240DB004912
59461	47	8240DB004913
59462	47	8240DB004914
59463	47	8240DB004915
59464	48	8350DB007823
59465	48	8350DB007824
59466	48	8350DB004114
59467	48	8350DB004115
59468	48	8350DB004116
59469	48	8350DB004117
59470	48	8350DB004118
59471	48	8350DB004119
59472	48	8350DB004120
59473	48	8250DB004121
59474	48	8250DB004122
59475	48	8250DB004123
59476	48	8250DB003283
59477	48	8250DB003284
59478	48	8250DB003310
59479	48	8250DB003481
59480	48	8250DB003482
59481	48	8250DB003483
59482	48	8250DB003484
59483	48	8250DB003485
59484	48	8250DB003486
59485	48	8250DB003487
59486	48	8250DB003488
59487	48	8250DB003489
59488	48	8250DB003492
59489	48	8250DB002835
59490	48	8250DB007176
59491	48	8250DB002836
59492	48	8250DB002837
59493	48	8250DB002838
59494	48	8250DB002839
59495	48	8250DB002840
59496	48	8250DB002841
59497	48	8250DB002865
59498	48	8250DB002866
59499	48	8250DB002892
59500	48	8250DB002893
59501	48	8250DB002894
59502	48	8250DB002895
59503	48	8250DB002896
59504	48	8250DB002897
59505	48	8220DB002898
59506	48	8220DB003562
59507	48	8220DB002899
59508	48	8220DB000884
59509	48	8220DB000885
59510	48	8220DB000886
59511	48	8220DB000887
59512	48	8220DB002900
59513	48	8220DB002901
59514	48	8220DB002902
59515	48	8220DB002903
59516	48	8220DB001074
59517	48	8220DB006074
59518	48	8220DB000793
59519	48	8220DB000495
59520	48	8220DB000400
59521	48	8220DB000319
59522	48	8220DB000278
59523	48	8220DB000010
59524	48	8220DB000012
59525	48	8220DB000014
59526	48	8220DB000015
59527	48	8220DB000017
59528	48	8220DB000018
59529	48	8220DB000019
59530	48	8220DB000021
59531	48	8220DB007602
59532	48	8220DB000085
59533	48	8220DB000203
59534	48	8220DB000204
59535	48	8220DB000205
59536	48	8220DB000206
59537	48	8220DB000207
59538	48	8220DB000208
59539	48	8220DB000209
59540	48	8220DB000210
59541	48	8220DB001643
59542	49	8220DB007571
59543	49	8220DB000207
59544	49	8220DB000208
59545	49	8220DB000209
59546	49	8220DB000210
59547	49	8220DB000211
59548	49	8220DB000212
59549	49	8220DB000213
59550	49	8220DB000214
59551	49	8220DB004432
59552	49	8220DB000119
59553	49	8220DB000044
59554	49	8220DB007603
59555	49	8220DB000045
59556	49	8220DB000046
59557	49	8220DB000047
59558	49	8220DB000048
59559	49	8220DB000049
59560	49	8220DB000051
59561	49	8220DB000052
59562	49	8220DB000265
59563	49	8220DB000271
59564	49	8220DB000340
59565	49	8220DB000350
59566	49	8220DB002809
59567	49	8220DB002810
59568	49	8220DB002811
59569	49	8220DB001013
59570	49	8220DB001015
59571	49	8220DB002812
59572	49	8220DB002813
59573	49	8220DB002814
59574	49	8220DB000852
59575	49	8220DB000853
59576	49	8220DB000854
59577	49	8220DB000855
59578	49	8220DB002815
59579	49	8220DB002816
59580	49	8220DB002817
59581	49	8250DB002818
59582	49	8250DB002819
59583	49	8250DB002820
59584	49	8250DB002822
59585	49	8250DB002823
59586	49	8250DB005032
59587	49	8250DB002824
59588	49	8250DB002825
59589	49	8250DB007716
59590	49	8250DB007717
59591	49	8250DB002829
59592	49	8250DB002830
59593	49	8250DB002831
59594	49	8250DB002832
59595	49	8250DB002833
59596	49	8250DB007375
59597	49	8250DB003466
59598	49	8250DB003467
59599	49	8250DB003469
59600	49	8250DB003470
59601	49	8250DB003471
59602	49	8250DB003472
59603	49	8250DB003473
59604	49	8250DB003474
59605	49	8250DB003475
59606	49	8250DB003476
59607	49	8250DB003477
59608	49	8250DB003478
59609	49	8250DB003280
59610	49	8250DB003282
59611	49	8250DB003479
59612	49	8250DB004086
59613	49	8250DB004087
59614	49	8250DB004088
59615	49	8350DB004089
59616	49	8350DB004090
59617	49	8350DB004091
59618	49	8350DB006097
59619	49	8350DB004093
59620	49	8350DB004094
59621	49	8350DB004095
59622	50	8230DB004795
59623	50	8230DB004688
59624	50	8230DB004689
59625	50	8230DB004410
59626	50	8230DB002678
59627	50	8230DB002679
59628	50	8230DB002680
59629	50	8230DB002676
59630	50	8230DB002118
59631	50	8230DB002119
59632	50	8230DB002120
59633	50	8230DB002121
59634	50	8230DB002123
59635	50	8230DB002685
59636	50	8230DB002686
59637	50	8230DB007510
59638	50	8230DB004799
59639	50	8230DB002205
59640	50	8230DB002687
59641	50	8220DB002688
59642	50	8220DB002689
59643	50	8220DB002696
59644	50	8220DB002697
59645	50	8220DB002713
59646	50	8220DB002714
59647	50	8220DB002715
59648	50	8220DB002716
59649	50	8220DB002718
59650	50	8220DB002719
59651	50	8220DB001989
59652	50	8220DB001990
59653	50	8220DB001992
59654	50	8220DB001993
59655	50	8220DB001994
59656	50	8220DB001995
59657	50	8220DB001996
59658	50	8220DB001997
59659	50	8220DB001998
59660	50	8220DB001999
59661	50	8220DB002001
59662	50	8220DB002002
59663	50	8220DB001358
59664	50	8220DB000319
59665	50	8220DB000279
59666	50	8220DB000007
59667	50	8220DB000011
59668	50	8220DB000014
59669	50	8220DB000015
59670	50	8220DB000834
59671	50	8220DB000835
59672	50	8220DB000836
59673	50	8220DB000837
59674	50	8220DB001506
59675	50	8220DB001507
59676	50	8220DB001508
59677	50	8220DB001509
59678	50	8220DB001510
59679	50	8220DB001511
59680	50	8220DB001592
59681	50	8220DB001593
59682	50	8220DB001594
59683	50	8220DB001596
59684	50	8220DB004363
59685	50	8220DB001598
59686	50	8220DB001597
59687	50	8220DB001599
59688	50	8220DB001573
59689	50	8220DB001574
59690	50	8220DB001575
59691	50	8220DB004583
59692	50	8220DB001518
59693	50	8220DB001519
59694	50	8220DB001520
59695	50	8220DB007661
59696	50	8220DB001521
59697	50	8220DB004546
59698	50	8220DB001559
59699	50	8220DB000987
59700	50	8220DB004937
59701	50	8220DB001547
59702	50	8220DB001548
59703	50	8220DB001280
59704	51	8240DB007132
59705	51	8220DB001558
59706	51	8220DB002957
59707	51	8220DB002958
59708	51	8220DB004938
59709	51	8220DB007845
59710	51	8220DB001549
59711	51	8220DB001523
59712	51	8220DB001524
59713	51	8220DB001525
59714	51	8220DB001526
59715	51	8220DB006080
59716	51	8220DB001585
59717	51	8220DB001586
59718	51	8220DB001587
59719	51	8220DB004539
59720	51	8220DB001606
59721	51	8220DB001607
59722	51	8220DB001608
59723	51	8220DB001609
59724	51	8220DB001610
59725	51	8220DB007471
59726	51	8220DB001533
59727	51	8220DB001534
59728	51	8220DB001535
59729	51	8220DB001536
59730	51	8220DB001537
59731	51	8220DB000186
59732	51	8220DB000838
59733	51	8220DB000839
59734	51	8220DB000840
59735	51	8220DB000841
59736	51	8220DB000049
59737	51	8220DB000051
59738	51	8220DB000052
59739	51	8220DB000261
59740	51	8220DB000270
59741	51	8220DB000335
59742	51	8220DB004521
59743	51	8220DB001935
59744	51	8220DB001937
59745	51	8220DB001938
59746	51	8220DB001939
59747	51	8220DB001940
59748	51	8220DB001941
59749	51	8220DB001942
59750	51	8220DB001943
59751	51	8220DB001944
59752	51	8220DB001945
59753	51	8220DB001946
59754	51	8220DB001947
59755	51	8220DB002642
59756	51	8220DB002643
59757	51	8220DB002644
59758	51	8220DB002709
59759	51	8220DB002710
59760	51	8220DB002711
59761	51	8220DB002712
59762	51	8220DB002655
59763	51	8220DB002656
59764	51	8220DB002668
59765	51	8220DB002672
59766	51	8230DB002673
59767	51	8230DB002206
59768	51	8230DB004798
59769	51	8230DB002674
59770	51	8230DB002675
59771	51	8230DB002124
59772	51	8230DB002125
59773	51	8230DB002126
59774	51	8230DB002127
59775	51	8230DB002128
59776	51	8230DB002129
59777	51	8230DB004797
59778	51	8230DB007473
59779	51	8230DB002681
59780	51	8230DB004691
59781	51	8230DB002682
59782	51	8230DB004796
59783	51	8230DB004690
59784	51	8230DB004411
59785	52	8230DB004863
59786	52	8230DB004864
59787	52	8230DB004865
59788	52	8230DB004577
59789	52	8230DB004578
59790	52	8230DB001100
59791	52	8230DB000100
59792	52	8230DB001111
59793	52	8230DB002323
59794	52	8230DB002324
59795	52	8230DB002325
59796	52	8230DB002326
59797	52	8230DB005150
59798	52	8220DB002327
59799	52	8220DB002328
59800	52	8220DB002329
59801	52	8220DB002330
59802	52	8220DB002331
59803	52	8220DB001397
59804	52	8220DB001398
59805	52	8220DB001399
59806	52	8220DB005148
59807	52	8220DB001401
59808	52	8220DB001402
59809	52	8220DB001403
59810	52	8220DB001404
59811	52	8220DB001405
59812	52	8220DB004856
59813	52	8220DB004857
59814	52	8220DB000307
59815	52	8220DB000308
59816	52	8220DB000309
59817	52	8220DB007412
59818	52	8220DB007413
59819	52	8220DB002383
59820	52	8220DB002003
59821	52	8220DB001358
59822	53	8220DB004495
59823	53	8220DB001279
59824	53	8220DB001934
59825	53	8220DB002310
59826	53	8220DB002311
59827	53	8220DB005025
59828	53	8220DB004854
59829	53	8220DB001438
59830	53	8220DB004855
59831	53	8220DB001439
59832	53	8220DB001440
59833	53	8220DB001386
59834	53	8220DB001387
59835	53	8220DB001388
59836	53	8220DB001389
59837	53	8220DB003355
59838	53	8220DB003356
59839	53	8220DB001441
59840	53	8220DB001442
59841	53	8220DB007414
59842	53	8220DB001396
59843	53	8220DB002317
59844	53	8220DB002318
59845	53	8220DB002319
59846	53	8230DB002320
59847	53	8230DB002321
59848	53	8230DB002322
59849	53	8230DB006163
59850	53	8230DB001095
59851	53	8230DB001096
59852	53	8230DB001097
59853	53	8230DB001099
59854	53	8230DB006132
59855	53	8230DB004861
59856	54	8220DB004962
59857	54	8220DB004725
59858	54	8220DB000273
59859	54	8220DB000405
59860	54	8220DB000408
59861	54	8220DB000409
59862	54	8220DB000410
59863	54	8220DB000411
59864	54	8220DB000412
59865	54	8220DB000413
59866	54	8220DB000414
59867	54	8220DB000415
59868	54	8220DB000416
59869	54	8220DB000417
59870	54	8220DB000418
59871	54	8220DB000419
59872	54	8220DB000420
59873	54	8220DB000421
59874	54	8220DB000422
59875	54	8220DB000423
59876	54	8220DB000424
59877	54	8250DB000425
59878	54	8250DB000426
59879	54	8250DB000427
59880	54	8250DB000428
59881	54	8250DB000429
59882	54	8250DB003032
59883	54	8250DB003033
59884	54	8250DB003034
59885	54	8250DB003036
59886	54	8250DB003037
59887	54	8250DB003038
59888	54	8250DB003039
59889	54	8250DB003040
59890	54	8250DB003041
59891	54	8250DB003042
59892	54	8250DB002035
59893	54	8250DB002036
59894	54	8250DB002040
59895	54	8250DB003047
59896	54	8250DB003202
59897	54	8250DB003203
59898	54	8250DB003204
59899	54	8250DB007641
59900	54	8250DB007642
59901	54	8250DB007643
59902	54	8250DB003214
59903	54	8250DB003215
59904	54	8250DB003216
59905	54	8250DB003217
59906	54	8250DB003218
59907	54	8250DB003219
59908	54	8250DB003220
59909	54	8250DB005046
59910	55	8250DB007639
59911	55	8250DB007640
59912	55	8250DB005047
59913	55	8250DB003224
59914	55	8250DB003225
59915	55	8250DB003226
59916	55	8250DB003227
59917	55	8250DB003228
59918	55	8250DB003229
59919	55	8250DB007644
59920	55	8250DB007645
59921	55	8250DB007646
59922	55	8250DB003238
59923	55	8250DB003239
59924	55	8250DB003240
59925	55	8250DB003068
59926	55	8250DB003069
59927	55	8250DB003070
59928	55	8250DB002041
59929	55	8250DB003071
59930	55	8250DB003072
59931	55	8250DB003073
59932	55	8250DB003074
59933	55	8250DB003075
59934	55	8250DB003076
59935	55	8250DB003077
59936	55	8250DB003084
59937	55	8250DB000469
59938	55	8250DB000470
59939	55	8250DB000471
59940	55	8250DB000472
59941	55	8250DB000473
59942	55	8250DB004705
59943	55	8250DB000475
59944	55	8220DB000476
59945	55	8220DB000477
59946	55	8220DB000478
59947	55	8220DB000479
59948	55	8220DB000480
59949	55	8220DB000481
59950	55	8220DB000482
59951	55	8220DB000483
59952	55	8220DB000485
59953	55	8220DB000487
59954	55	8220DB000488
59955	55	8220DB000489
59956	55	8220DB000490
59957	55	8220DB000491
59958	55	8220DB000492
59959	55	8220DB000493
59960	55	8220DB000494
59961	55	8220DB000495
59962	55	8220DB000400
59963	55	8220DB000281
59964	55	8220DB000004
59965	56	8220DB000300
59966	56	8220DB000497
59967	56	8220DB000515
59968	56	8220DB000516
59969	56	8220DB004384
59970	56	8220DB000519
59971	56	8220DB000521
59972	56	8220DB000522
59973	56	8220DB000523
59974	56	8220DB000669
59975	56	8220DB000670
59976	56	8220DB000671
59977	56	8220DB000672
59978	56	8220DB004382
59979	56	8220DB001196
59980	56	8220DB001197
59981	56	8220DB001198
59982	56	8220DB001222
59983	56	8220DB001223
59984	56	8220DB001224
59985	56	8220DB001225
59986	56	8220DB001226
59987	56	8220DB001227
59988	56	8220DB001228
59989	56	8220DB001244
59990	56	8220DB000254
59991	56	8220DB001246
59992	56	8220DB001229
59993	56	8220DB001231
59994	56	8220DB001232
59995	56	8220DB001233
59996	56	8220DB001234
59997	56	8220DB007358
59998	56	8220DB005174
59999	56	8220DB006078
60000	56	8220DB007112
60001	56	8220DB000972
60002	56	8240DB001625
60003	56	8240DB001626
60004	56	8240DB001627
60005	56	8240DB001628
60006	56	8240DB001629
60007	56	8240DB006234
60008	57	8240DB000324
60009	57	8240DB001634
60010	57	8240DB001635
60011	57	8240DB001636
60012	57	8240DB001637
60013	57	8240DB001638
60014	57	8240DB000992
60015	57	8220DB007044
60016	57	8220DB000993
60017	57	8220DB005060
60018	57	8220DB005061
60019	57	8220DB001231
60020	57	8220DB001232
60021	57	8220DB001233
60022	57	8220DB001234
60023	57	8220DB007358
60024	57	8220DB001235
60025	57	8220DB001251
60026	57	8220DB007130
60027	57	8220DB001237
60028	57	8220DB001238
60029	57	8220DB001239
60030	57	8220DB000247
60031	57	8220DB001240
60032	57	8220DB001241
60033	57	8220DB001242
60034	57	8220DB001277
60035	57	8220DB001219
60036	57	8220DB001220
60037	57	8220DB001221
60038	57	8220DB000664
60039	57	8220DB000665
60040	57	8220DB000666
60041	57	8220DB000667
60042	57	8220DB000668
60043	57	8220DB000614
60044	57	8220DB000615
60045	57	8220DB000616
60046	57	8220DB000617
60047	57	8220DB000618
60048	57	8220DB000619
60049	57	8220DB000675
60050	57	8220DB007569
60051	58	8240DB007348
60052	58	8240DB003669
60053	58	8240DB003671
60054	58	8240DB003672
60055	58	8240DB003078
60056	58	8240DB003087
60057	58	8240DB006033
60058	58	8240DB003089
60059	58	8240DB003090
60060	58	8240DB003706
60061	58	8240DB003707
60062	58	8240DB003708
60063	58	8240DB003709
60064	58	8240DB003710
60065	58	8240DB004925
60066	58	8240DB004926
60067	58	8240DB003678
60068	58	8240DB006117
60069	58	8240DB001041
60070	58	8240DB001050
60071	58	8240DB003656
60072	58	8240DB003653
60073	58	8240DB006055
60074	58	8240DB001073
60075	58	8240DB003641
60076	58	8240DB003642
60077	58	8240DB003643
60078	58	8240DB003583
60079	58	8240DB003584
60080	58	8240DB003585
60081	58	8240DB003586
60082	58	8240DB003587
60083	58	8240DB003588
60084	58	8240DB003590
60085	58	8240DB003589
60086	58	8240DB003591
60087	58	8240DB003592
60088	58	8240DB003593
60089	58	8240DB003594
60090	58	8240DB003595
60091	58	8240DB003596
60092	58	8240DB003597
60093	58	8240DB003598
60094	58	8240DB004465
60095	58	8240DB000944
60096	58	8240DB000945
60097	58	8240DB000947
60098	58	8240DB000948
60099	58	8240DB007725
60100	58	8240DB000950
60101	58	8240DB000928
60102	58	8240DB000951
60103	58	8240DB000952
60104	58	8240DB000953
60105	59	8240DB004381
60106	59	8240DB000935
60107	59	8240DB000936
60108	59	8240DB000913
60109	59	8240DB000914
60110	59	8240DB000938
60111	59	8240DB000940
60112	59	8240DB000941
60113	59	8240DB000942
60114	59	8240DB000943
60115	59	8240DB004503
60116	59	8240DB003599
60117	59	8240DB003600
60118	59	8240DB003601
60119	59	8240DB003602
60120	59	8240DB003604
60121	59	8240DB003616
60122	59	8240DB003618
60123	59	8240DB003619
60124	59	8240DB003620
60125	59	8240DB003621
60126	59	8240DB003622
60127	59	8240DB003623
60128	59	8240DB004387
60129	59	8240DB003634
60130	59	8240DB003635
60131	59	8240DB003636
60132	59	8240DB000905
60133	59	8240DB004331
60134	59	8240DB004339
60135	59	8240DB007692
60136	59	8240DB006010
60137	59	8240DB003656
60138	59	8240DB003653
60139	59	8240DB001039
60140	59	8240DB001040
60141	59	8240DB006054
60142	59	8240DB004330
60143	59	8240DB003691
60144	59	8240DB003572
60145	59	8240DB003701
60146	59	8240DB003702
60147	59	8240DB003088
60148	59	8240DB003704
60149	59	8240DB003705
60150	59	8240DB000733
60151	59	8240DB006015
60152	59	8240DB000788
60153	59	8240DB000815
60154	59	8240DB003663
60155	60	8240DB007158
60156	60	8240DB007048
60157	60	8240DB007699
60158	60	8240DB007159
60159	60	8240DB007388
60160	60	8240DB007017
60161	60	8240DB007018
60162	60	8240DB007030
60163	60	8240DB007021
60164	60	8240DB006111
60165	60	8240DB006112
60166	60	8240DB006113
60167	60	8240DB001898
60168	60	8240DB001858
60169	60	8240DB001859
60170	60	8240DB001860
60171	60	8240DB004492
60172	60	8240DB001861
60173	60	8240DB001862
60174	60	8240DB001863
60175	60	8240DB001864
60176	60	8240DB001865
60177	60	8240DB001866
60178	60	8240DB001850
60179	60	8240DB001867
60180	60	8240DB004489
60181	60	8240DB004747
60182	60	8240DB001845
60183	60	8240DB007166
60184	60	8220DB001847
60185	60	8220DB001696
60186	60	8220DB001697
60187	60	8220DB001698
60188	60	8220DB001699
60189	60	8220DB001700
60190	60	8220DB001701
60191	60	8220DB001702
60192	60	8220DB001703
60193	60	8220DB001905
60194	60	8220DB001906
60195	60	8220DB001907
60196	60	8220DB001908
60197	60	8220DB001909
60198	60	8220DB001713
60199	60	8220DB001714
60200	60	8220DB001715
60201	60	8220DB007453
60202	60	8220DB001478
60203	60	8220DB001479
60204	60	8220DB000315
60205	60	8220DB000335
60206	60	8220DB000404
60207	60	8220DB000747
60208	60	8220DB000748
60209	60	8220DB000749
60210	60	8220DB000750
60211	60	8220DB000751
60212	60	8220DB000752
60213	60	8220DB000753
60214	60	8220DB000754
60215	60	8220DB000755
60216	60	8220DB000756
60217	60	8220DB000757
60218	60	8220DB000758
60219	60	8220DB000759
60220	60	8220DB000760
60221	60	8220DB000761
60222	60	8220DB000762
60223	60	8220DB000763
60224	61	8250DB000767
60225	61	8250DB000768
60226	61	8220DB000769
60227	61	8220DB000770
60228	61	8220DB000771
60229	61	8220DB000772
60230	61	8220DB000773
60231	61	8220DB000774
60232	61	8220DB000775
60233	61	8220DB000776
60234	61	8220DB000777
60235	61	8220DB000779
60236	61	8220DB000780
60237	61	8220DB000781
60238	61	8220DB000782
60239	61	8220DB000783
60240	61	8220DB000784
60241	61	8220DB000785
60242	61	8220DB000786
60243	61	8220DB000793
60244	61	8220DB007586
60245	61	8220DB007587
60246	61	8220DB007588
60247	61	8220DB000328
60248	61	8220DB001443
60249	61	8220DB001444
60250	61	8220DB001445
60251	61	8220DB001647
60252	61	8220DB001648
60253	61	8220DB001649
60254	61	8220DB001911
60255	61	8220DB001913
60256	61	8220DB001914
60257	61	8220DB001805
60258	61	8220DB001806
60259	61	8220DB001660
60260	61	8220DB001661
60261	61	8220DB001662
60262	61	8220DB001664
60263	61	8220DB001665
60264	61	8220DB001666
60265	61	8220DB001807
60266	61	8240DB007167
60267	61	8240DB001808
60268	61	8240DB007389
60269	61	8240DB007025
60270	61	8240DB004464
60271	61	8240DB001869
60272	61	8240DB001870
60273	61	8240DB001871
60274	61	8240DB001872
60275	61	8240DB001873
60276	61	8240DB001874
60277	61	8240DB001875
60278	61	8240DB001876
60279	61	8240DB001877
60280	61	8240DB001878
60281	61	8240DB001879
60282	61	8240DB001899
60283	61	8240DB006107
60284	61	8240DB006108
60285	61	8240DB006109
60286	61	8240DB006110
60287	61	8240DB007020
60288	61	8240DB007029
60289	61	8240DB007038
60290	61	8240DB007011
60291	61	8240DB002171
60292	61	8240DB007160
60293	61	8240DB007700
60294	61	8240DB007047
60295	61	8240DB007161
60296	62	8240DB007158
60297	62	8240DB007048
60298	62	8240DB007699
60299	62	8240DB007159
60300	62	8240DB007388
60301	62	8240DB007017
60302	62	8240DB007018
60303	62	8240DB007030
60304	62	8240DB007021
60305	62	8240DB007163
60306	62	8240DB001893
60307	62	8240DB001894
60308	62	8240DB001912
60309	62	8240DB001895
60310	62	8240DB001896
60311	62	8240DB001897
60312	62	8240DB006088
60313	62	8240DB001898
60314	62	8240DB001858
60315	62	8240DB001859
60316	62	8240DB001860
60317	62	8240DB004492
60318	62	8240DB001861
60319	62	8240DB001862
60320	62	8240DB001863
60321	62	8240DB001864
60322	62	8240DB001865
60323	62	8240DB001866
60324	62	8240DB001850
60325	62	8240DB001867
60326	62	8240DB004489
60327	62	8240DB004747
60328	62	8240DB001882
60329	62	8240DB007379
60330	62	8240DB004903
60331	62	8240DB001883
60332	62	8240DB001884
60333	62	8240DB001902
60334	62	8240DB001903
60335	62	8240DB001904
60336	62	8240DB001840
60337	62	8240DB001841
60338	62	8240DB001842
60339	62	8240DB007374
60340	62	8240DB001845
60341	62	8240DB007166
60342	62	8220DB001847
60343	62	8220DB001696
60344	62	8220DB001697
60345	62	8220DB001698
60346	62	8220DB001699
60347	62	8220DB001700
60348	62	8220DB001701
60349	62	8220DB001702
60350	62	8220DB001703
60351	62	8220DB001905
60352	62	8220DB001906
60353	62	8220DB001907
60354	62	8220DB001908
60355	62	8220DB001909
60356	62	8220DB001713
60357	62	8220DB001714
60358	62	8220DB001715
60359	62	8220DB007453
60360	62	8220DB001478
60361	62	8220DB001479
60362	62	8220DB000315
60363	62	8220DB000335
60364	62	8220DB000404
60365	62	8220DB000747
60366	62	8220DB000748
60367	62	8220DB000749
60368	62	8220DB000750
60369	62	8220DB000751
60370	62	8220DB000752
60371	62	8220DB000753
60372	63	8220DB007333
60373	63	8220DB000783
60374	63	8220DB000784
60375	63	8220DB000785
60376	63	8220DB000786
60377	63	8220DB000793
60378	63	8220DB007586
60379	63	8220DB007587
60380	63	8220DB007588
60381	63	8220DB000328
60382	63	8220DB001443
60383	63	8220DB001444
60384	63	8220DB001445
60385	63	8220DB001647
60386	63	8220DB001648
60387	63	8220DB001649
60388	63	8220DB001911
60389	63	8220DB001913
60390	63	8220DB001914
60391	63	8220DB001805
60392	63	8220DB001806
60393	63	8220DB001660
60394	63	8220DB001661
60395	63	8220DB001662
60396	63	8220DB001664
60397	63	8220DB001665
60398	63	8220DB001666
60399	63	8220DB001807
60400	63	8240DB007167
60401	63	8240DB001808
60402	63	8240DB001813
60403	63	8240DB001814
60404	63	8240DB001852
60405	63	8240DB001853
60406	63	8240DB001854
60407	63	8240DB001844
60408	63	8240DB006172
60409	63	8240DB004493
60410	63	8240DB004362
60411	63	8240DB007025
60412	63	8240DB004464
60413	63	8240DB001869
60414	63	8240DB001870
60415	63	8240DB001871
60416	63	8240DB001872
60417	63	8240DB001873
60418	63	8240DB001874
60419	63	8240DB001875
60420	63	8240DB001876
60421	63	8240DB001877
60422	63	8240DB001878
60423	63	8240DB001879
60424	63	8240DB001899
60425	63	8240DB001887
60426	63	8240DB001888
60427	63	8240DB001889
60428	63	8240DB001890
60429	63	8240DB007240
60430	63	8240DB001891
60431	63	8240DB007156
60432	63	8240DB007020
60433	63	8240DB007029
60434	63	8240DB007038
60435	63	8240DB007011
60436	63	8240DB002171
60437	63	8240DB007160
60438	63	8240DB007700
60439	63	8240DB007047
60440	63	8240DB007161
60441	64	8220DB007591
60442	64	8220DB000496
60443	64	8220DB000515
60444	64	8220DB000516
60445	64	8220DB004384
60446	64	8220DB000518
60447	64	8220DB000519
60448	64	8220DB000521
60449	64	8220DB000522
60450	64	8220DB000523
60451	64	8220DB000525
60452	64	8220DB000526
60453	64	8220DB000527
60454	64	8220DB000528
60455	64	8220DB000529
60456	64	8220DB000530
60457	64	8220DB000531
60458	64	8220DB000709
60459	64	8220DB000532
60460	64	8220DB000533
60461	64	8220DB000534
60462	64	8220DB000654
60463	64	8220DB007727
60464	64	8220DB007729
60465	64	8220DB007731
60466	64	8220DB000542
60467	64	8240DB000543
60468	64	8240DB000544
60469	64	8240DB000545
60470	64	8240DB000546
60471	64	8240DB000547
60472	64	8240DB000548
60473	64	8240DB000549
60474	64	8240DB000677
60475	64	8240DB000678
60476	64	8240DB000679
60477	64	8240DB000680
60478	64	8240DB000681
60479	64	8240DB000682
60480	64	8240DB000683
60481	64	8240DB000684
60482	64	8240DB000685
60483	64	8240DB000686
60484	64	8240DB000688
60485	64	8240DB000689
60486	64	8240DB000690
60487	64	8240DB000691
60488	64	8240DB000692
60489	64	8240DB000695
60490	64	8240DB000696
60491	64	8240DB000697
60492	64	8240DB000698
60493	64	8240DB000699
60494	64	8240DB000700
60495	64	8240DB000701
60496	64	8240DB000702
60497	64	8240DB000703
60498	64	8240DB000704
60499	64	8240DB000707
60500	64	8240DB000568
60501	64	8240DB000569
60502	64	8240DB000570
60503	64	8240DB000571
60504	64	8240DB000572
60505	64	8240DB000573
60506	64	8240DB000574
60507	64	8240DB000575
60508	64	8240DB000576
60509	64	8240DB000577
60510	65	8240DB000557
60511	65	8240DB000558
60512	65	8240DB000559
60513	65	8240DB000560
60514	65	8240DB000562
60515	65	8240DB000563
60516	65	8240DB000564
60517	65	8240DB000565
60518	65	8240DB000566
60519	65	8240DB000567
60520	65	8240DB000710
60521	65	8240DB000711
60522	65	8240DB000712
60523	65	8240DB000713
60524	65	8240DB000714
60525	65	8240DB000715
60526	65	8240DB000716
60527	65	8240DB000717
60528	65	8240DB000718
60529	65	8240DB000719
60530	65	8240DB000720
60531	65	8240DB000680
60532	65	8240DB000681
60533	65	8240DB000682
60534	65	8240DB000683
60535	65	8240DB000684
60536	65	8240DB000685
60537	65	8240DB000686
60538	65	8240DB000688
60539	65	8240DB000689
60540	65	8240DB000690
60541	65	8240DB000691
60542	65	8240DB000692
60543	65	8240DB000693
60544	65	8240DB000585
60545	65	8240DB000586
60546	65	8240DB000587
60547	65	8240DB000588
60548	65	8240DB000589
60549	65	8240DB000590
60550	65	8220DB000591
60551	65	8220DB000592
60552	65	8220DB007730
60553	65	8220DB007728
60554	65	8220DB007726
60555	65	8220DB000601
60556	65	8220DB000602
60557	65	8220DB000603
60558	65	8220DB000604
60559	65	8220DB000605
60560	65	8220DB000606
60561	65	8220DB000607
60562	65	8220DB000608
60563	65	8220DB000609
60564	65	8220DB000610
60565	65	8220DB000611
60566	65	8220DB000612
60567	65	8220DB000613
60568	65	8220DB000614
60569	65	8220DB000615
60570	65	8220DB000616
60571	65	8220DB000617
60572	65	8220DB000618
60573	65	8220DB000619
60574	65	8220DB000675
60575	65	8220DB000620
60576	65	8220DB007569
60577	66	8220DB000248
60578	66	8220DB000249
60579	66	8220DB000250
60580	66	8220DB000251
60581	66	8220DB000252
60582	66	8220DB000255
60583	66	8220DB000234
60584	66	8220DB000235
60585	66	8220DB000236
60586	66	8220DB001190
60587	66	8220DB001191
60588	66	8220DB001192
60589	66	8220DB001193
60590	66	8220DB001194
60591	66	8220DB001195
60592	66	8220DB000664
60593	66	8220DB000665
60594	66	8220DB000666
60595	66	8220DB000667
60596	66	8220DB000668
60597	66	8220DB000614
60598	66	8220DB000615
60599	66	8220DB000616
60600	66	8220DB000617
60601	66	8220DB000618
60602	66	8220DB000619
60603	66	8220DB000675
60604	66	8220DB004415
60605	66	8220DB000301
60606	66	8220DB000336
60607	66	8220DB007581
60608	66	8220DB001283
60609	66	8220DB007579
60610	66	8220DB001285
60611	66	8220DB001016
60612	66	8220DB001017
60613	66	8220DB001018
60614	66	8220DB001019
60615	66	8220DB001020
60616	66	8220DB001076
60617	66	8220DB001077
60618	66	8220DB001078
60619	66	8220DB001079
60620	66	8220DB001080
60621	66	8220DB001081
60622	66	8220DB002914
60623	66	8220DB002989
60624	66	8220DB002990
60625	66	8250DB001042
60626	66	8250DB001043
60627	66	8250DB001044
60628	66	8250DB001045
60629	66	8250DB004710
60630	66	8250DB001046
60631	66	8250DB001047
60632	66	8250DB001048
60633	66	8250DB001049
60634	66	8250DB004333
60635	66	8250DB004334
60636	66	8250DB004712
60637	66	8250DB002853
60638	66	8250DB002854
60639	66	8250DB002855
60640	66	8250DB002856
60641	66	8250DB002857
60642	66	8250DB002858
60643	66	8250DB002859
60644	66	8250DB002860
60645	66	8250DB002861
60646	66	8250DB002862
60647	66	8250DB002863
60648	66	8250DB002864
60649	66	8250DB004486
60650	66	8250DB002865
60651	66	8250DB002866
60652	67	8250DB002825
60653	67	8250DB007719
60654	67	8250DB007720
60655	67	8250DB007718
60656	67	8250DB002842
60657	67	8250DB002843
60658	67	8250DB002844
60659	67	8250DB002845
60660	67	8250DB002846
60661	67	8250DB002847
60662	67	8250DB004397
60663	67	8250DB002848
60664	67	8250DB002849
60665	67	8250DB002850
60666	67	8250DB002851
60667	67	8250DB002852
60668	67	8250DB004707
60669	67	8250DB004708
60670	67	8250DB004336
60671	67	8250DB001051
60672	67	8250DB001052
60673	67	8250DB001053
60674	67	8250DB001054
60675	67	8250DB001036
60676	67	8250DB004709
60677	67	8250DB001037
60678	67	8250DB001038
60679	67	8250DB002998
60680	67	8220DB002999
60681	67	8220DB003000
60682	67	8220DB003001
60683	67	8220DB003002
60684	67	8220DB001166
60685	67	8220DB001167
60686	67	8220DB001168
60687	67	8220DB001169
60688	67	8220DB001170
60689	67	8220DB001069
60690	67	8220DB001070
60691	67	8220DB001071
60692	67	8220DB004528
60693	67	8220DB001072
60694	67	8220DB007577
60695	67	8220DB001353
60696	67	8220DB001354
60697	67	8220DB007578
60698	67	8220DB007582
60699	67	8220DB000297
60700	67	8220DB000496
60701	67	8220DB000497
60702	67	8220DB000515
60703	67	8220DB000516
60704	67	8220DB004384
60705	67	8220DB000519
60706	67	8220DB000521
60707	67	8220DB000522
60708	67	8220DB000523
60709	67	8220DB000669
60710	67	8220DB000670
60711	67	8220DB000671
60712	67	8220DB000672
60713	67	8220DB004382
60714	67	8220DB001185
60715	67	8220DB001186
60716	67	8220DB001187
60717	67	8220DB001188
60718	67	8220DB000216
60719	67	8220DB000217
60720	67	8220DB000242
60721	67	8220DB000243
60722	67	8220DB000244
60723	67	8220DB000245
60724	67	8220DB000246
60725	68	8250DB002039
60726	68	8250DB002040
60727	68	8250DB002041
60728	68	8250DB002042
60729	68	8250DB002043
60730	68	8250DB002044
60731	68	8250DB002045
60732	68	8250DB002046
60733	68	8250DB002047
60734	68	8250DB002048
60735	68	8250DB002049
60736	68	8250DB002050
60737	68	8250DB002051
60738	68	8250DB002053
60739	68	8250DB002054
60740	68	8250DB002055
60741	68	8250DB007636
60742	68	8250DB007651
60743	68	8250DB007635
60744	68	8250DB003254
60745	68	8250DB005127
60746	68	8250DB005128
60747	68	8250DB003126
60748	68	8250DB003255
60749	68	8250DB003309
60750	68	8250DB003306
60751	68	8250DB004772
60752	68	8250DB003276
60753	68	8250DB007372
60754	68	8250DB005106
60755	68	8250DB004396
60756	68	8250DB004773
60757	68	8250DB004393
60758	68	8250DB004395
60759	68	8250DB004313
60760	68	8250DB007360
60761	68	8250DB003277
60762	68	8250DB003278
60763	68	8250DB003279
60764	68	8250DB003478
60765	68	8250DB003280
60766	69	8250DB003283
60767	69	8250DB003284
60768	69	8250DB003285
60769	69	8250DB007324
60770	69	8250DB007360
60771	69	8250DB005106
60772	69	8250DB004396
60773	69	8250DB004773
60774	69	8250DB004393
60775	69	8250DB004395
60776	69	8250DB004313
60777	69	8250DB007373
60778	69	8250DB003289
60779	69	8250DB003312
60780	69	8250DB004771
60781	69	8250DB003307
60782	69	8250DB003262
60783	69	8250DB003153
60784	69	8250DB007362
60785	69	8250DB003129
60786	69	8250DB007634
60787	69	8250DB003249
60788	69	8250DB007637
60789	69	8250DB002023
60790	69	8250DB002024
60791	69	8250DB002025
60792	69	8250DB002026
60793	69	8250DB002027
60794	69	8250DB002028
60795	69	8250DB002029
60796	69	8250DB002030
60797	69	8250DB002031
60798	69	8250DB002032
60799	69	8250DB002033
60800	69	8250DB002034
60801	69	8250DB002035
60802	69	8250DB002036
60803	70	8230DB006290
60804	70	8230DB007120
60805	70	8230DB007119
60806	70	8230DB007127
60807	70	8230DB007143
60808	70	8230DB007796
60809	70	8230DB003368
60810	70	8230DB007762
60811	70	8230DB007137
60812	70	8230DB007139
60813	70	8230DB004623
60814	70	8230DB004619
60815	70	8230DB007776
60816	70	8230DB007748
60817	70	8230DB007783
60818	70	8230DB002681
60819	70	8230DB004691
60820	70	8230DB002682
60821	70	8230DB004796
60822	70	8230DB004690
60823	70	8230DB004411
60824	70	8230DB007754
60825	71	8230DB004795
60826	71	8230DB07755
60827	71	8230DB004688
60828	71	8230DB004689
60829	71	8230DB004410
60830	71	8230DB002678
60831	71	8230DB007784
60832	71	8230DB007780
60833	71	8230DB007803
60834	71	8230DB007386
60835	71	8230DB004607
60836	71	8230DB007140
60837	71	8230DB007141
60838	71	8230DB007138
60839	71	8230DB007763
60840	71	8230DB003370
60841	71	8230DB007797
60842	71	8230DB007231
60843	71	8230DB007128
60844	71	8230DB007117
60845	71	8230DB007118
60846	72	8230DB004795
60847	72	8230DB002686
60848	72	8230DB007510
60849	72	8230DB002207
60850	72	8230DB002208
60851	72	8230DB002210
60852	72	8230DB002211
60853	72	8230DB002241
60854	72	8230DB002242
60855	72	8220DB002243
60856	72	8220DB002244
60857	72	8220DB002245
60858	72	8220DB002246
60859	72	8220DB002247
60860	72	8220DB002248
60861	72	8220DB002249
60862	72	8220DB002250
60863	72	8220DB002251
60864	72	8220DB001472
60865	72	8220DB004408
60866	72	8220DB001473
60867	72	8220DB001474
60868	72	8220DB001476
60869	72	8220DB007453
60870	72	8220DB001478
60871	72	8220DB001479
60872	72	8220DB000315
60873	72	8220DB000406
60874	72	8220DB002810
60875	73	8220DB007391
60876	73	8220DB000493
60877	73	8220DB000494
60878	73	8220DB000495
60879	73	8220DB000400
60880	73	8220DB000346
60881	73	8220DB000317
60882	73	8220DB000312
60883	73	8220DB001444
60884	73	8220DB001445
60885	73	8220DB007078
60886	73	8220DB001449
60887	73	8220DB001450
60888	73	8220DB001451
60889	73	8220DB002191
60890	73	8220DB002192
60891	73	8220DB002193
60892	73	8220DB002194
60893	73	8220DB002195
60894	73	8220DB002196
60895	73	8220DB002197
60896	73	8220DB002198
60897	73	8220DB002200
60898	73	8230DB002201
60899	73	8230DB007239
60900	73	8230DB004401
60901	73	8230DB002202
60902	73	8230DB002203
60903	73	8230DB002204
60904	73	8230DB004888
60905	73	8230DB004798
60906	74	8260DB007820
60907	74	8260DB003995
60908	74	8260DB003996
60909	74	8260DB003997
60910	74	8260DB003998
60911	74	8260DB003999
60912	74	8260DB004000
60913	74	8230DB004001
60914	74	8230DB003949
60915	74	8230DB003950
60916	74	8230DB003372
60917	74	8230DB003373
60918	74	8230DB003374
60919	74	8230DB002233
60920	74	8230DB002232
60921	74	8230DB004601
60922	74	8230DB005058
60923	74	8230DB004602
60924	74	8230DB007760
60925	74	8230DB004619
60926	74	8230DB007776
60927	74	8230DB007748
60928	74	8230DB007783
60929	74	8230DB002680
60930	74	8230DB007756
60931	74	8230DB007750
60932	74	8230DB002156
60933	74	8230DB006014
60934	74	8230DB002158
60935	74	8230DB002159
60936	74	8230DB004409
60937	74	8230DB004550
60938	74	8230DB004551
60939	74	8230DB001965
60940	74	8230DB001966
60941	74	8230DB007781
60942	75	8230DB007791
60943	75	8230DB007782
60944	75	8230DB001963
60945	75	8230DB004549
60946	75	8230DB001964
60947	75	8230DB004674
60948	75	8230DB004663
60949	75	8230DB004664
60950	75	8230DB002114
60951	75	8230DB002115
60952	75	8230DB006011
60953	75	8230DB002133
60954	75	8230DB006247
60955	75	8230DB007757
60956	75	8230DB007473
60957	75	8230DB007784
60958	75	8230DB007780
60959	75	8230DB007803
60960	75	8230DB007386
60961	75	8230DB007761
60962	75	8230DB004632
60963	75	8230DB005164
60964	75	8230DB004633
60965	75	8230DB002217
60966	75	8230DB002218
60967	75	8230DB002219
60968	75	8230DB003365
60969	75	8230DB003366
60970	75	8230DB003367
60971	75	8230DB003886
60972	75	8230DB003887
60973	75	8230DB003888
60974	75	8230DB007186
60975	75	8230DB007187
60976	75	8260DB003954
60977	75	8260DB003955
60978	75	8260DB003956
60979	75	8260DB003957
60980	75	8260DB007798
60981	75	8260DB003993
60982	76	8240DB000950
60983	76	8240DB000915
60984	76	8240DB000916
60985	76	8240DB000917
60986	76	8240DB000918
60987	76	8240DB000919
60988	76	8240DB007551
60989	76	8240DB004800
60990	76	8220DB005157
60991	76	8220DB005154
60992	76	8220DB004804
60993	76	8220DB000738
60994	76	8220DB000739
60995	76	8220DB000740
60996	76	8220DB000741
60997	76	8220DB000742
60998	76	8220DB000743
60999	76	8220DB000744
61000	76	8220DB000745
61001	76	8220DB000600
61002	76	8220DB000654
61003	76	8220DB000655
61004	76	8220DB000656
61005	76	8220DB000657
61006	76	8220DB000658
61007	76	8220DB000659
61008	76	8220DB000604
61009	76	8220DB000605
61010	76	8220DB000606
61011	76	8220DB000607
61012	76	8220DB000608
61013	76	8220DB000609
61014	76	8220DB000610
61015	76	8220DB000611
61016	76	8220DB000612
61017	76	8220DB000613
61018	76	8220DB000614
61019	76	8220DB000615
61020	76	8220DB000616
61021	76	8220DB000617
61022	76	8220DB000618
61023	76	8220DB000619
61024	76	8220DB000675
61025	76	8220DB000620
61026	76	8220DB007569
61027	77	8220DB007591
61028	77	8220DB000496
61029	77	8220DB000515
61030	77	8220DB000516
61031	77	8220DB004384
61032	77	8220DB000518
61033	77	8220DB000519
61034	77	8220DB000521
61035	77	8220DB000522
61036	77	8220DB000523
61037	77	8220DB000525
61038	77	8220DB000526
61039	77	8220DB000527
61040	77	8220DB000528
61041	77	8220DB000529
61042	77	8220DB000530
61043	77	8220DB000531
61044	77	8220DB000709
61045	77	8220DB000532
61046	77	8220DB000649
61047	77	8220DB000650
61048	77	8220DB000651
61049	77	8220DB004472
61050	77	8220DB004386
61051	77	8220DB000653
61052	77	8220DB000722
61053	77	8220DB000723
61054	77	8220DB000724
61055	77	8220DB000725
61056	77	8220DB000726
61057	77	8220DB000727
61058	77	8220DB000728
61059	77	8220DB000729
61060	77	8220DB000730
61061	77	8220DB005160
61062	77	8220DB005155
61063	77	8220DB004806
61064	77	8240DB005156
61065	77	8240DB007552
61066	77	8240DB000924
61067	77	8240DB000925
61068	77	8240DB000927
61069	78	8260DB007812
61070	78	8260DB007764
61071	78	8260DB007804
61072	78	8260DB007814
61073	78	8260DB007816
61074	78	8260DB003935
61075	78	8260DB003936
61076	78	8260DB007110
61077	78	8260DB003938
61078	78	8260DB007747
61079	78	8260DB004003
61080	78	8260DB007770
61081	78	8260DB004404
61082	78	8260DB004405
61083	78	8260DB007785
61084	78	8260DB003991
61085	78	8260DB07758
61086	78	8260DB007798
61087	78	8260DB003993
61088	79	8260DB007820
61089	79	8260DB003995
61090	79	8260DB003996
61091	79	8260DB003997
61092	79	8260DB003958
61093	79	8260DB003959
61094	79	8260DB007234
61095	79	8260DB004002
61096	79	8260DB005112
61097	79	8260DB007771
61098	79	8260DB007767
61099	79	8260DB007744
61100	79	8260DB003899
61101	79	8260DB003900
61102	79	8260DB003901
61103	79	8260DB003902
61104	79	8260DB003904
61105	79	8260DB007817
61106	79	8260DB007815
61107	79	8260DB007805
61108	79	8260DB007765
61109	80	8260DB007812
61110	80	8260DB007764
61111	80	8260DB007804
61112	80	8260DB007795
61113	80	8260DB007788
61114	80	8260DB007085
61115	80	8260DB007790
61116	80	8260DB007086
61117	80	8260DB007087
61118	80	8260DB007745
61119	80	8260DB007088
61120	80	8260DB007089
61121	80	8260DB007802
61122	80	8260DB007091
61123	80	8260DB003910
61124	80	8260DB003911
61125	80	8260DB007777
61126	80	8260DB007313
61127	80	8260DB006164
61128	80	8260DB007712
61129	80	8260DB006159
61130	80	8260DB006160
61131	80	8260DB006161
61132	80	8260DB003991
61133	80	8260DB07758
61134	80	8260DB007798
61135	80	8260DB003993
61136	81	8260DB007820
61137	81	8260DB003995
61138	81	8260DB003996
61139	81	8260DB003997
61140	81	8260DB003958
61141	81	8260DB003959
61142	81	8260DB003960
61143	81	8260DB006156
61144	81	8260DB006165
61145	81	8260DB006157
61146	81	8260DB006158
61147	81	8260DB007314
61148	81	8260DB007778
61149	81	8260DB003922
61150	81	8260DB003923
61151	81	8260DB007079
61152	81	8260DB007080
61153	81	8260DB007081
61154	81	8260DB007565
61155	81	8260DB007746
61156	81	8260DB007082
61157	81	8260DB007083
61158	81	8260DB007789
61159	81	8260DB007084
61160	81	8260DB007811
61161	81	8260DB007794
61162	81	8260DB007805
61163	81	8260DB007765
61164	82	8240DB000707
61165	82	8240DB000568
61166	82	8240DB000569
61167	82	8240DB000570
61168	82	8240DB000571
61169	82	8240DB000572
61170	82	8240DB000573
61171	82	8240DB000574
61172	82	8240DB000575
61173	82	8240DB000576
61174	82	8240DB000577
61175	82	8240DB000579
61176	82	8240DB000580
61177	82	8240DB000581
61178	82	8240DB000582
61179	82	8240DB000583
61180	82	8240DB000584
61181	82	8240DB000585
61182	82	8240DB000586
61183	82	8240DB000587
61184	82	8240DB000588
61185	82	8240DB000589
61186	82	8240DB000590
61187	82	8220DB000591
61188	82	8220DB000592
61189	82	8220DB000593
61190	82	8220DB000594
61191	82	8220DB000595
61192	82	8220DB000596
61193	82	8220DB000597
61194	82	8220DB000598
61195	82	8220DB000599
61196	82	8220DB000600
61197	82	8220DB000601
61198	82	8220DB000602
61199	82	8220DB000603
61200	82	8220DB000604
61201	82	8220DB000605
61202	82	8220DB000606
61203	82	8220DB000607
61204	82	8220DB000608
61205	82	8220DB000609
61206	82	8220DB000610
61207	82	8220DB000611
61208	82	8220DB000612
61209	82	8220DB000613
61210	82	8220DB000614
61211	82	8220DB000615
61212	82	8220DB000616
61213	82	8220DB000617
61214	82	8220DB000618
61215	82	8220DB000619
61216	82	8220DB000675
61217	82	8220DB000620
61218	82	8220DB007569
61219	83	8220DB007591
61220	83	8220DB000496
61221	83	8220DB000515
61222	83	8220DB000516
61223	83	8220DB004384
61224	83	8220DB000518
61225	83	8220DB000519
61226	83	8220DB000521
61227	83	8220DB000522
61228	83	8220DB000523
61229	83	8220DB000525
61230	83	8220DB000526
61231	83	8220DB000527
61232	83	8220DB000528
61233	83	8220DB000529
61234	83	8220DB000530
61235	83	8220DB000531
61236	83	8220DB000709
61237	83	8220DB000532
61238	83	8220DB000533
61239	83	8220DB000534
61240	83	8220DB000535
61241	83	8220DB000536
61242	83	8220DB000537
61243	83	8220DB000538
61244	83	8220DB000539
61245	83	8220DB000540
61246	83	8220DB000541
61247	83	8220DB000542
61248	83	8240DB000543
61249	83	8240DB000544
61250	83	8240DB000545
61251	83	8240DB000546
61252	83	8240DB000547
61253	83	8240DB000548
61254	83	8240DB000549
61255	83	8240DB000550
61256	83	8240DB000551
61257	83	8240DB000552
61258	83	8240DB000553
61259	83	8240DB000554
61260	83	8240DB000555
61261	83	8240DB000557
61262	83	8240DB000558
61263	83	8240DB000559
61264	83	8240DB000560
61265	83	8240DB000562
61266	83	8240DB000563
61267	83	8240DB000564
61268	83	8240DB000565
61269	83	8240DB000566
61270	84	8220DB007591
61271	84	8220DB000496
61272	84	8220DB000515
61273	84	8220DB000516
61274	84	8220DB004384
61275	84	8220DB000518
61276	84	8220DB000519
61277	84	8220DB000521
61278	84	8220DB000522
61279	84	8220DB000523
61280	84	8220DB000525
61281	84	8220DB000526
61282	84	8220DB000527
61283	84	8220DB000528
61284	84	8220DB000529
61285	84	8220DB000530
61286	84	8220DB000531
61287	84	8220DB000709
61288	84	8220DB000532
61289	84	8220DB000533
61290	84	8220DB000534
61291	84	8220DB000535
61292	84	8220DB000536
61293	84	8220DB000537
61294	84	8220DB000538
61295	84	8220DB000539
61296	84	8220DB000540
61297	84	8220DB000541
61298	84	8220DB000542
61299	84	8240DB000543
61300	84	8240DB000544
61301	84	8240DB000545
61302	84	8240DB000546
61303	84	8240DB000910
61304	84	8240DB000911
61305	84	8240DB000912
61306	84	8240DB000913
61307	84	8240DB000914
61308	84	8240DB000938
61309	84	8240DB000940
61310	84	8240DB000941
61311	84	8240DB000942
61312	84	8240DB000943
61313	84	8240DB004503
61314	84	8240DB003599
61315	84	8240DB003610
61316	84	8240DB003611
61317	84	8240DB006135
61318	84	8240DB003612
61319	84	8240DB003613
61320	84	8240DB003615
61321	84	8240DB007982
61322	84	8240DB003616
61323	84	8240DB003618
61324	84	8240DB003619
61325	84	8240DB003620
61326	84	8240DB003621
61327	84	8240DB003622
61328	84	8240DB003623
61329	85	8240DB003624
61330	85	8240DB003586
61331	85	8240DB003587
61332	85	8240DB003588
61333	85	8240DB003590
61334	85	8240DB003589
61335	85	8240DB003591
61336	85	8240DB003592
61337	85	8240DB003605
61338	85	8240DB003606
61339	85	8240DB003607
61340	85	8240DB003608
61341	85	8240DB003609
61342	85	8240DB003598
61343	85	8240DB004465
61344	85	8240DB000944
61345	85	8240DB000945
61346	85	8240DB000947
61347	85	8240DB000948
61348	85	8240DB007725
61349	85	8240DB000950
61350	85	8240DB000928
61351	85	8240DB000929
61352	85	8240DB000930
61353	85	8240DB000931
61354	85	8240DB000587
61355	85	8240DB000588
61356	85	8240DB000589
61357	85	8240DB000590
61358	85	8220DB000591
61359	85	8220DB000592
61360	85	8220DB000593
61361	85	8220DB000594
61362	85	8220DB000595
61363	85	8220DB000596
61364	85	8220DB000597
61365	85	8220DB000598
61366	85	8220DB000599
61367	85	8220DB000600
61368	85	8220DB000601
61369	85	8220DB000602
61370	85	8220DB000603
61371	85	8220DB000604
61372	85	8220DB000605
61373	85	8220DB000606
61374	85	8220DB000607
61375	85	8220DB000608
61376	85	8220DB000609
61377	85	8220DB000610
61378	85	8220DB000611
61379	85	8220DB000612
61380	85	8220DB000613
61381	85	8220DB000614
61382	85	8220DB000615
61383	85	8220DB000616
61384	85	8220DB000617
61385	85	8220DB000618
61386	85	8220DB000619
61387	85	8220DB000675
61388	85	8220DB000620
61389	85	8220DB007569
61390	86	8240DB003815
61391	86	8240DB003816
61392	86	8240DB003566
61393	86	8240DB003567
61394	86	8240DB007292
61395	86	8240DB003818
61396	86	8240DB003819
61397	86	8240DB003820
61398	86	8240DB003822
61399	86	8240DB003823
61400	86	8240DB003824
61401	86	8240DB003565
61402	86	8240DB003825
61403	86	8240DB003826
61404	86	8240DB003827
61405	86	8240DB003828
61406	86	8240DB003829
61407	86	8240DB003831
61408	86	8240DB003832
61409	86	8240DB003833
61410	86	8240DB003834
61411	86	8240DB003835
61412	86	8240DB003836
61413	86	8240DB003837
61414	86	8240DB003838
61415	86	8240DB003840
61416	86	8240DB003842
61417	86	8240DB003843
61418	86	8240DB003844
61419	86	8240DB003845
61420	86	8240DB003846
61421	86	8240DB003848
61422	86	8240DB003849
61423	86	8240DB003850
61424	86	8240DB003851
61425	86	8240DB003852
61426	86	8240DB003853
61427	86	8240DB003854
61428	86	8240DB003855
61429	86	8240DB003856
61430	86	8240DB003857
61431	86	8240DB003858
61432	86	8240DB003859
61433	86	8240DB003860
61434	86	8240DB003861
61435	86	8240DB003862
61436	86	8240DB003863
61437	86	8240DB003748
61438	86	8240DB006050
61439	86	8220DB007398
61440	86	8220DB006252
61441	86	8220DB000302
61442	86	8220DB004495
61443	86	8220DB002809
61444	87	8220DB000407
61445	87	8220DB002498
61446	87	8220DB002499
61447	87	8220DB002500
61448	87	8220DB002501
61449	87	8220DB007623
61450	87	8240DB003715
61451	87	8240DB005175
61452	87	8240DB003755
61453	87	8240DB003756
61454	87	8240DB003757
61455	87	8240DB003758
61456	87	8240DB003759
61457	87	8240DB003760
61458	87	8240DB003761
61459	87	8240DB003762
61460	87	8240DB003763
61461	87	8240DB003764
61462	87	8240DB003765
61463	87	8240DB003766
61464	87	8240DB003767
61465	87	8240DB003768
61466	87	8240DB003769
61467	87	8240DB003771
61468	87	8240DB003772
61469	87	8240DB003773
61470	87	8240DB005176
61471	87	8240DB003774
61472	87	8240DB007172
61473	87	8240DB003775
61474	87	8240DB003777
61475	87	8240DB003778
61476	87	8240DB007690
61477	87	8240DB003781
61478	87	8240DB003782
61479	87	8240DB003783
61480	87	8240DB003784
61481	87	8240DB003785
61482	87	8240DB003786
61483	87	8240DB003787
61484	87	8240DB003788
61485	87	8240DB003789
61486	87	8240DB003790
61487	87	8240DB003791
61488	87	8240DB003792
61489	87	8240DB003793
61490	87	8240DB003794
61491	87	8240DB003795
61492	87	8240DB003797
61493	87	8240DB003798
61494	87	8240DB003799
61495	87	8240DB006076
61496	87	8240DB006077
61497	87	8240DB003569
61498	87	8240DB003571
61499	87	8240DB003801
61500	87	8240DB003802
61501	87	8240DB003805
61502	87	8240DB007175
61503	87	8240DB003806
61504	87	8240DB003807
61505	87	8240DB003808
61506	87	8240DB003809
61507	88	8240DB006048
61508	88	8240DB007173
61509	88	8240DB003811
61510	88	8240DB003812
61511	88	8240DB003664
61512	88	8240DB003813
61513	88	8240DB003814
61514	88	8240DB003815
61515	88	8240DB003816
61516	88	8240DB003566
61517	88	8240DB003567
61518	88	8240DB007292
61519	88	8240DB003818
61520	88	8240DB003819
61521	88	8240DB003820
61522	88	8240DB003822
61523	88	8240DB003823
61524	88	8240DB003824
61525	88	8240DB003565
61526	88	8240DB003825
61527	88	8240DB003826
61528	88	8240DB003827
61529	88	8240DB003828
61530	88	8240DB003829
61531	88	8240DB003831
61532	88	8240DB003832
61533	88	8240DB003833
61534	88	8240DB003834
61535	88	8240DB003835
61536	88	8240DB003836
61537	88	8240DB003837
61538	88	8240DB003838
61539	88	8240DB003840
61540	88	8240DB003842
61541	88	8240DB003843
61542	88	8240DB003844
61543	88	8240DB003845
61544	88	8240DB003846
61545	88	8240DB003848
61546	88	8240DB003849
61547	88	8240DB003850
61548	88	8240DB003851
61549	88	8240DB003852
61550	88	8240DB003853
61551	88	8240DB003854
61552	88	8240DB003855
61553	88	8240DB003856
61554	88	8240DB003857
61555	88	8240DB003858
61556	88	8240DB003859
61557	88	8240DB003860
61558	88	8240DB003861
61559	88	8240DB003862
61560	88	8240DB003863
61561	88	8240DB003748
61562	88	8240DB006050
61563	88	8240DB003749
61564	88	8240DB003750
61565	88	8240DB003752
61566	88	8240DB003751
61567	88	8240DB003689
61568	88	8240DB003691
61569	88	8240DB003692
61570	88	8240DB003694
61571	88	8240DB003695
61572	88	8240DB003696
61573	88	8240DB003697
61574	88	8240DB003698
61575	88	8240DB003699
61576	88	8240DB003885
61577	88	8240DB001631
61578	88	8240DB001632
61579	88	8240DB005053
61580	88	8240DB001633
61581	88	8240DB001634
61582	88	8240DB001635
61583	88	8240DB001636
61584	88	8240DB001637
61585	88	8240DB001638
61586	88	8240DB001639
61587	88	8240DB001640
61588	88	8240DB000231
61589	88	8220DB001641
61590	88	8220DB001642
61591	88	8220DB000213
61592	88	8220DB000214
61593	88	8220DB004432
61594	88	8220DB000119
61595	88	8220DB000044
61596	88	8220DB007603
61597	88	8220DB000045
61598	88	8220DB000046
61599	88	8220DB000047
61600	88	8220DB000048
61601	88	8220DB000049
61602	88	8220DB000051
61603	88	8220DB000052
61604	88	8220DB000277
61605	89	8220DB000292
61606	89	8220DB001171
61607	89	8220DB001172
61608	89	8220DB001173
61609	89	8220DB001174
61610	89	8220DB001175
61611	89	8220DB000015
61612	89	8220DB000017
61613	89	8220DB000018
61614	89	8220DB000019
61615	89	8220DB000021
61616	89	8220DB007602
61617	89	8220DB000085
61618	89	8220DB000203
61619	89	8220DB000204
61620	89	8220DB000205
61621	89	8220DB001620
61622	89	8220DB000220
61623	89	8240DB001622
61624	89	8240DB001623
61625	89	8240DB001624
61626	89	8240DB001625
61627	89	8240DB001626
61628	89	8240DB001627
61629	89	8240DB001628
61630	89	8240DB001629
61631	89	8240DB001630
61632	89	8240DB003670
61633	89	8240DB003671
61634	89	8240DB003672
61635	89	8240DB003674
61636	89	8240DB003675
61637	89	8240DB003676
61638	89	8240DB003677
61639	89	8240DB003678
61640	89	8240DB003679
61641	89	8240DB003711
61642	89	8240DB003712
61643	89	8240DB003713
61644	89	8240DB003714
61645	89	8240DB003715
61646	89	8240DB005175
61647	89	8240DB003755
61648	89	8240DB003756
61649	89	8240DB003757
61650	89	8240DB003758
61651	89	8240DB003759
61652	89	8240DB003760
61653	89	8240DB003761
61654	89	8240DB003762
61655	89	8240DB003763
61656	89	8240DB003764
61657	89	8240DB003765
61658	89	8240DB003766
61659	89	8240DB003767
61660	89	8240DB003768
61661	89	8240DB003769
61662	89	8240DB003771
61663	89	8240DB003772
61664	89	8240DB003773
61665	89	8240DB003774
61666	89	8240DB007172
61667	89	8240DB003775
61668	89	8240DB003777
61669	89	8240DB003778
61670	89	8240DB007690
61671	89	8240DB003781
61672	89	8240DB003782
61673	89	8240DB003783
61674	89	8240DB003784
61675	89	8240DB003785
61676	89	8240DB003786
61677	89	8240DB003787
61678	89	8240DB003788
61679	89	8240DB003789
61680	89	8240DB003790
61681	89	8240DB003791
61682	89	8240DB003792
61683	89	8240DB003793
61684	89	8240DB003794
61685	89	8240DB003795
61686	89	8240DB003797
61687	89	8240DB003798
61688	89	8240DB003799
61689	89	8240DB006076
61690	89	8240DB006077
61691	89	8240DB003569
61692	89	8240DB003571
61693	89	8240DB003801
61694	89	8240DB003802
61695	89	8240DB003805
61696	89	8240DB007175
61697	89	8240DB003806
61698	89	8240DB003807
61699	89	8240DB003808
61700	89	8240DB003809
61701	90	8230DB001105
61702	90	8230DB001107
61703	90	8230DB001108
61704	90	8230DB001109
61705	90	8230DB001110
61706	90	8230DB001111
61707	90	8230DB001112
61708	90	8230DB001113
61709	90	8230DB001114
61710	90	8230DB001115
61711	90	8220DB002437
61712	90	8220DB001117
61713	90	8220DB001118
61714	90	8220DB001119
61715	90	8220DB001120
61716	90	8220DB001164
61717	90	8220DB001165
61718	90	8220DB001166
61719	90	8220DB001167
61720	90	8220DB001168
61721	90	8220DB001169
61722	90	8220DB001170
61723	90	8220DB001069
61724	90	8220DB001070
61725	90	8220DB001071
61726	90	8220DB004528
61727	90	8220DB001072
61728	90	8220DB007577
61729	90	8220DB001353
61730	90	8220DB001354
61731	90	8220DB007578
61732	90	8220DB007582
61733	90	8220DB000340
61734	90	8220DB000350
61735	90	8220DB002809
61736	90	8220DB002810
61737	91	8220DB007391
61738	91	8220DB000493
61739	91	8220DB000494
61740	91	8220DB000495
61741	91	8220DB000400
61742	91	8220DB007581
61743	91	8220DB001283
61744	91	8220DB007579
61745	91	8220DB001285
61746	91	8220DB001016
61747	91	8220DB001017
61748	91	8220DB001018
61749	91	8220DB001019
61750	91	8220DB001020
61751	91	8220DB001076
61752	91	8220DB001077
61753	91	8220DB001078
61754	91	8220DB001079
61755	91	8220DB001080
61756	91	8220DB001081
61757	91	8220DB001082
61758	91	8220DB001083
61759	91	8220DB001085
61760	91	8220DB001086
61761	91	8220DB001087
61762	91	8220DB001088
61763	91	8220DB001089
61764	91	8220DB001090
61765	91	8220DB001091
61766	91	8230DB001092
61767	91	8230DB001093
61768	91	8230DB001094
61769	91	8230DB001095
61770	91	8230DB001096
61771	91	8230DB001101
61772	91	8230DB001102
61773	91	8230DB001103
61774	92	8230DB006285
61775	92	8230DB006286
61776	92	8230DB006287
61777	92	8230DB006288
61778	92	8230DB006342
61779	92	8230DB006298
61780	92	8230DB006336
61781	92	8230DB007069
61782	92	8230DB007443
61783	92	8230DB007444
61784	92	8230DB002941
61785	92	8230DB002942
61786	92	8230DB007065
61787	92	8230DB007063
61788	92	8230DB001137
61789	92	8230DB005131
61790	92	8230DB005132
61791	92	8230DB001331
61792	92	8230DB001332
61793	92	8230DB001333
61794	92	8230DB001334
61795	92	8220DB002985
61796	92	8220DB002986
61797	92	8220DB002988
61798	92	8220DB003001
61799	92	8220DB003002
61800	92	8220DB001166
61801	92	8220DB001167
61802	92	8220DB001168
61803	92	8220DB001169
61804	92	8220DB001170
61805	92	8220DB001069
61806	92	8220DB001070
61807	92	8220DB001071
61808	92	8220DB004528
61809	92	8220DB001072
61810	92	8220DB007577
61811	92	8220DB001353
61812	92	8220DB001354
61813	92	8220DB007578
61814	92	8220DB007582
61815	92	8220DB000340
61816	92	8220DB000350
61817	92	8220DB002809
61818	92	8220DB002810
61819	93	8220DB007391
61820	93	8220DB000493
61821	93	8220DB000494
61822	93	8220DB000495
61823	93	8220DB000400
61824	93	8220DB007581
61825	93	8220DB001283
61826	93	8220DB007579
61827	93	8220DB001285
61828	93	8220DB001016
61829	93	8220DB001017
61830	93	8220DB001018
61831	93	8220DB001019
61832	93	8220DB001020
61833	93	8220DB001076
61834	93	8220DB001077
61835	93	8220DB001078
61836	93	8220DB001079
61837	93	8220DB001080
61838	93	8220DB001081
61839	93	8220DB002914
61840	93	8220DB002915
61841	93	8220DB002916
61842	93	8220DB002917
61843	93	8220DB002918
61844	93	8220DB001300
61845	93	8230DB001301
61846	93	8230DB001302
61847	93	8230DB001303
61848	93	8230DB005129
61849	93	8230DB005130
61850	93	8230DB001135
61851	93	8230DB007064
61852	93	8230DB007066
61853	93	8230DB002924
61854	93	8230DB002925
61855	93	8230DB007442
61856	93	8230DB007446
61857	93	8230DB007070
61858	93	8230DB007445
61859	93	8230DB006339
61860	93	8230DB006324
61861	93	8230DB006325
61862	93	8230DB006341
61863	93	8230DB006277
61864	93	8230DB006278
61865	93	8230DB006279
61866	94	8220DB004794
61867	94	8220DB001741
61868	94	8220DB001742
61869	94	8220DB001743
61870	94	8220DB001650
61871	94	8220DB001652
61872	94	8220DB005141
61873	94	8220DB001773
61874	94	8220DB001774
61875	94	8220DB001651
61876	94	8220DB004784
61877	94	8220DB000608
61878	94	8220DB004791
61879	94	8220DB004792
61880	94	8220DB000662
61881	94	8220DB000663
61882	94	8220DB001196
61883	94	8220DB001197
61884	94	8220DB004473
61885	94	8220DB000250
61886	94	8220DB000251
61887	94	8220DB004597
61888	94	8220DB000255
61889	94	8220DB000218
61890	94	8240DB000219
61891	94	8220DB000220
61892	94	8240DB000221
61893	94	8240DB000222
61894	94	8240DB000223
61895	94	8240DB000224
61896	94	8240DB000225
61897	94	8240DB000226
61898	94	8220DB000114
61899	94	8240DB001645
61900	94	8220DB001646
61901	95	8220DB007571
61902	95	8220DB001644
61903	95	8220DB001605
61904	95	8220DB000228
61905	95	8240DB000229
61906	95	8240DB000227
61907	95	8240DB000230
61908	95	8240DB000231
61909	95	8240DB000232
61910	95	8220DB000233
61911	95	8220DB000242
61912	95	8220DB000243
61913	95	8220DB000253
61914	95	8220DB000244
61915	95	8220DB000245
61916	95	8220DB004474
61917	95	8220DB004790
61918	95	8220DB001220
61919	95	8220DB001221
61920	95	8220DB000674
61921	95	8220DB004389
61922	95	8220DB004390
61923	95	8220DB000530
61924	95	8220DB004785
61925	95	8220DB007607
61926	95	8220DB001764
61927	95	8220DB001765
61928	95	8220DB001766
61929	95	8220DB001767
61930	95	8220DB007129
61931	95	8220DB001734
61932	95	8220DB001735
61933	95	8220DB001736
61934	95	8220DB001737
61935	95	8220DB001738
61936	96	8240DB004747
61937	96	8240DB002960
61938	96	8240DB001545
61939	96	8240DB001840
61940	96	8240DB001841
61941	96	8240DB001842
61942	96	8240DB007298
61943	96	8240DB002294
61944	96	8240DB006039
61945	96	8240DB001816
61946	96	8240DB006171
61947	96	8240DB004974
61948	96	8240DB004976
61949	96	8240DB002510
61950	96	8240DB007242
61951	96	8240DB007238
61952	96	8240DB007224
61953	96	8240DB001581
61954	96	8240DB001582
61955	96	8220DB004793
61956	96	8220DB006068
61957	96	8220DB001584
61958	96	8220DB000983
61959	96	8220DB000984
61960	96	8220DB000985
61961	96	8220DB000987
61962	96	8220DB000988
61963	96	8220DB000138
61964	96	8220DB000139
61965	96	8220DB000140
61966	96	8220DB000141
61967	96	8220DB000142
61968	96	8220DB000143
61969	96	8240DB001645
61970	96	8220DB001646
61971	96	8220DB000211
61972	96	8220DB000212
61973	96	8220DB007851
61974	96	8220DB007830
61975	96	8220DB001190
61976	96	8220DB001191
61977	96	8220DB001192
61978	96	8220DB001193
61979	96	8220DB001194
61980	96	8220DB001195
61981	96	8220DB007839
61982	96	8220DB000674
61983	96	8220DB004389
61984	96	8220DB004390
61985	96	8220DB000609
61986	96	8220DB000610
61987	96	8220DB000611
61988	96	8220DB000612
61989	96	8220DB000613
61990	96	8220DB001740
61991	96	8220DB007852
61992	96	8220DB002278
61993	96	8220DB002279
61994	96	8220DB007842
61995	97	8220DB007844
61996	97	8220DB002502
61997	97	8220DB004469
61998	97	8220DB007834
61999	97	8220DB007827
62000	97	8220DB001738
62001	97	8220DB001739
62002	97	8220DB000525
62003	97	8220DB000526
62004	97	8220DB000527
62005	97	8220DB000528
62006	97	8220DB000529
62007	97	8220DB004791
62008	97	8220DB004792
62009	97	8220DB000662
62010	97	8220DB007843
62011	97	8220DB007840
62012	97	8220DB001185
62013	97	8220DB001186
62014	97	8220DB001187
62015	97	8220DB001188
62016	97	8220DB007831
62017	97	8220DB000237
62018	97	8220DB000206
62019	97	8220DB001643
62020	97	8220DB001644
62021	97	8220DB001605
62022	97	8220DB000128
62023	97	8220DB000129
62024	97	8220DB000130
62025	97	8220DB000131
62026	97	8220DB000132
62027	97	8220DB007832
62028	97	8220DB007458
62029	97	8220DB007836
62030	97	8220DB000979
62031	97	8220DB007845
62032	97	8220DB000980
62033	97	8220DB000981
62034	97	8220DB001576
62035	97	8220DB001577
62036	97	8220DB001578
62037	97	8220DB004364
62038	97	8240DB001579
62039	97	8240DB001580
62040	97	8240DB007237
62041	97	8240DB007241
62042	97	8240DB007247
62043	97	8240DB007243
62044	97	8240DB007334
62045	97	8240DB006274
62046	97	8240DB001838
62047	97	8240DB002338
62048	97	8240DB002290
62049	97	8240DB006179
62050	97	8240DB007297
62051	97	8240DB001813
62052	97	8240DB001814
62053	97	8240DB000661
62054	98	8220DB000284
62055	98	8220DB004504
62056	98	8220DB007028
62057	98	8220DB005147
62058	98	8220DB000068
62059	98	8220DB000030
62060	98	8220DB000069
62061	98	8220DB000828
62062	98	8220DB000829
62063	98	8220DB000830
62064	98	8220DB000831
62065	98	8220DB000075
62066	98	8220DB004501
62067	98	8220DB004935
62068	98	8220DB004502
62069	98	8220DB004936
62070	98	8220DB000079
62071	98	8220DB000080
62072	98	8220DB000082
62073	98	8220DB000817
62074	98	8220DB000818
62075	98	8220DB000819
62076	98	8220DB000263
62077	99	8220DB006004
62078	99	8220DB000003
62079	99	8220DB000192
62080	99	8220DB000795
62081	99	8220DB000796
62082	99	8220DB000056
62083	99	8220DB000058
62084	99	8220DB004499
62085	99	8220DB004934
62086	99	8220DB004500
62087	99	8220DB004481
62088	99	8220DB004485
62089	99	8220DB000822
62090	99	8220DB000823
62091	99	8220DB000824
62092	99	8220DB000825
62093	99	8220DB000826
62094	99	8220DB000827
62095	99	8220DB000071
62096	99	8220DB000072
62097	99	8220DB005144
62098	99	8220DB007027
62099	99	8220DB004538
62100	99	8220DB007396
62101	99	8220DB005145
62102	100	8240DB000324
62103	100	8240DB000327
62104	100	8220DB006016
62105	100	8220DB006017
62106	100	8220DB007192
62107	100	8220DB004683
62108	100	8220DB000107
62109	100	8220DB006125
62110	100	8220DB007092
62111	100	8220DB000110
62112	100	8220DB000112
62113	100	8220DB000113
62114	100	8220DB000114
62115	100	8220DB000115
62116	100	8220DB000037
62117	100	8220DB000038
62118	100	8220DB000039
62119	100	8220DB000117
62120	100	8220DB000118
62121	100	8220DB000119
62122	100	8220DB000044
62123	100	8220DB007603
62124	100	8220DB000045
62125	100	8220DB000046
62126	100	8220DB000047
62127	100	8220DB000048
62128	100	8220DB000049
62129	100	8220DB000051
62130	100	8220DB000052
62131	100	8220DB000261
62132	100	8220DB000270
62133	100	8220DB000335
62134	100	8220DB004521
62135	100	8220DB001935
62136	100	8220DB001937
62137	100	8220DB001938
62138	100	8220DB001939
62139	100	8220DB001940
62140	100	8220DB001941
62141	100	8220DB001942
62142	100	8220DB001943
62143	100	8220DB001944
62144	100	8220DB001945
62145	100	8220DB001946
62146	100	8220DB001947
62147	100	8220DB001948
62148	100	8220DB001949
62149	100	8220DB001950
62150	100	8220DB001951
62151	100	8220DB001952
62152	100	8220DB001953
62153	100	8220DB001954
62154	100	8220DB001955
62155	100	8220DB001956
62156	100	8230DB001957
62157	100	8230DB001958
62158	100	8230DB001959
62159	100	8230DB001960
62160	100	8230DB004379
62161	100	8230DB001963
62162	100	8230DB004549
62163	100	8230DB001964
62164	100	8230DB004674
62165	100	8230DB004663
62166	100	8230DB004664
62167	100	8230DB002160
62168	100	8230DB002161
62169	100	8230DB004665
62170	100	8230DB004666
62171	100	8230DB004667
62172	100	8230DB004668
62173	100	8230DB004677
62174	100	8230DB002136
62175	100	8230DB002137
62176	100	8230DB007201
62177	100	8230DB002138
62178	100	8230DB002139
62179	100	8230DB002140
62180	100	8230DB002141
62181	100	8230DB002142
62182	100	8230DB002143
62183	100	8230DB002145
62184	100	8230DB004670
62185	100	8230DB002165
62186	100	8230DB002166
62187	100	8230DB002167
62188	100	8230DB003383
62189	100	8230DB003384
62190	100	8230DB007230
62191	100	8230DB004552
62192	100	8230DB004554
62193	101	8230DB007229
62194	101	8230DB004617
62195	101	8230DB004555
62196	101	8230DB007714
62197	101	8230DB003415
62198	101	8230DB003416
62199	101	8230DB003417
62200	101	8230DB003418
62201	101	8230DB003419
62202	101	8230DB002374
62203	101	8230DB002146
62204	101	8230DB002147
62205	101	8230DB002148
62206	101	8230DB002149
62207	101	8230DB002150
62208	101	8230DB002151
62209	101	8230DB002152
62210	101	8230DB002153
62211	101	8230DB002154
62212	101	8230DB006245
62213	101	8230DB004671
62214	101	8230DB004672
62215	101	8230DB003465
62216	101	8230DB004673
62217	101	8230DB002172
62218	101	8230DB002159
62219	101	8230DB004409
62220	101	8230DB004550
62221	101	8230DB004551
62222	101	8230DB001965
62223	101	8230DB001966
62224	101	8230DB007781
62225	101	8230DB001975
62226	101	8230DB001977
62227	101	8230DB001978
62228	101	8230DB001980
62229	101	8220DB001981
62230	101	8220DB001982
62231	101	8220DB004406
62232	101	8220DB001984
62233	101	8220DB001985
62234	101	8220DB001986
62235	101	8220DB001987
62236	101	8220DB001988
62237	101	8220DB001989
62238	101	8220DB001990
62239	101	8220DB001992
62240	101	8220DB001993
62241	101	8220DB001994
62242	101	8220DB001995
62243	101	8220DB001996
62244	101	8220DB001997
62245	101	8220DB001998
62246	101	8220DB001999
62247	101	8220DB002001
62248	101	8220DB002002
62249	101	8220DB001359
62250	101	8220DB000319
62251	101	8220DB000281
62252	101	8220DB000007
62253	101	8220DB000011
62254	101	8220DB000014
62255	101	8220DB000015
62256	101	8220DB000017
62257	101	8220DB000018
62258	101	8220DB000019
62259	101	8220DB000021
62260	101	8220DB007602
62261	101	8220DB000085
62262	101	8220DB000086
62263	101	8220DB000087
62264	101	8220DB000088
62265	101	8220DB00089
62266	101	8220DB000027
62267	101	8220DB000028
62268	101	8220DB000029
62269	101	8220DB004680
62270	101	8220DB000090
62271	101	8220DB000091
62272	101	8220DB000092
62273	101	8220DB000093
62274	101	8220DB000094
62275	101	8220DB000102
62276	101	8220DB006239
62277	101	8220DB000104
62278	101	8220DB006241
62279	101	8220DB000105
62280	101	8220DB006253
62281	101	8220DB007191
62282	101	8220DB006238
62283	101	8220DB006182
62284	101	8220DB000322
62285	101	8240DB000323
62286	102	8220DB000400
62287	102	8220DB000319
62288	102	8220DB000278
62289	102	8220DB000010
62290	102	8220DB000012
62291	102	8220DB000014
62292	102	8220DB000015
62293	102	8220DB000017
62294	102	8220DB000018
62295	102	8220DB000019
62296	102	8220DB000021
62297	102	8220DB007602
62298	102	8220DB000085
62299	102	8220DB000203
62300	102	8220DB000204
62301	102	8220DB000205
62302	102	8220DB001620
62303	102	8220DB000220
62304	102	8240DB000221
62305	102	8240DB000222
62306	102	8240DB000223
62307	102	8240DB000224
62308	102	8240DB000225
62309	103	8240DB000226
62310	103	8220DB000228
62311	103	8240DB000229
62312	103	8240DB000227
62313	103	8240DB000230
62314	103	8240DB000231
62315	103	8220DB001641
62316	103	8220DB001642
62317	103	8220DB000213
62318	103	8220DB000214
62319	103	8220DB004432
62320	103	8220DB000119
62321	103	8220DB000044
62322	103	8220DB007603
62323	103	8220DB000045
62324	103	8220DB000046
62325	103	8220DB000047
62326	103	8220DB000048
62327	103	8220DB000049
62328	103	8220DB000051
62329	103	8220DB000052
62330	103	8220DB000265
62331	103	8220DB000271
62332	103	8220DB000340
62333	104	8240DB004747
62334	104	8240DB002960
62335	104	8240DB001545
62336	104	8240DB001816
62337	104	8240DB006171
62338	104	8240DB004974
62339	104	8240DB004976
62340	104	8240DB007126
62341	104	8240DB007124
62342	104	8240DB007343
62343	104	8240DB007575
62344	104	8240DB004978
62345	104	8240DB004979
62346	104	8240DB004986
62347	104	8240DB007107
62348	104	8240DB007102
62349	104	8240DB007103
62350	104	8240DB007104
62351	104	8240DB007105
62352	104	8240DB007106
62353	104	8240DB006005
62354	104	8240DB001546
62355	104	8240DB007381
62356	104	8240DB004742
62357	104	8240DB004743
62358	104	8240DB004744
62359	105	8240DB004745
62360	105	8240DB004989
62361	105	8240DB004990
62362	105	8240DB004991
62363	105	8240DB004992
62364	105	8240DB004986
62365	105	8240DB007107
62366	105	8240DB007102
62367	105	8240DB007103
62368	105	8240DB007104
62369	105	8240DB007105
62370	105	8240DB007106
62371	105	8240DB006005
62372	105	8240DB001546
62373	105	8240DB005071
62374	105	8240DB005072
62375	105	8240DB004321
62376	105	8240DB007570
62377	105	8240DB007342
62378	105	8240DB007125
62379	105	8240DB007344
62380	105	8240DB007334
62381	105	8240DB006274
62382	105	8240DB001838
62383	105	8240DB002338
62384	105	8240DB000661
62385	106	8230DB006290
62386	106	8230DB007120
62387	106	8230DB007119
62388	106	8230DB007127
62389	106	8230DB007143
62390	106	8230DB007796
62391	106	8230DB003368
62392	106	8230DB007762
62393	106	8230DB007137
62394	106	8230DB007139
62395	106	8230DB004623
62396	106	8230DB004619
62397	106	8230DB004561
62398	106	8230DB004629
62399	106	8230DB004630
62400	106	8230DB004631
62401	106	8230DB004632
62402	106	8230DB005164
62403	106	8230DB004633
62404	106	8230DB002234
62405	106	8230DB002236
62406	106	8230DB005056
62407	106	8230DB002239
62408	106	8230DB002241
62409	106	8230DB002242
62410	106	8220DB007435
62411	106	8220DB002722
62412	106	8220DB004413
62413	106	8220DB001476
62414	106	8220DB007854
62415	106	8220DB007856
62416	106	8220DB007883
62417	106	8220DB000315
62418	106	8220DB000340
62419	106	8220DB007861
62420	106	8220DB000351
62421	106	8220DB000352
62422	106	8220DB000353
62423	106	8220DB000354
62424	106	8220DB000355
62425	106	8220DB000356
62426	106	8220DB000357
62427	106	8220DB000390
62428	106	8220DB000372
62429	106	8220DB000373
62430	106	8220DB000374
62431	106	8220DB007738
62432	106	8220DB007739
62433	107	8220DB000381
62434	107	8220DB007740
62435	107	8220DB007741
62436	107	8220DB000387
62437	107	8220DB000388
62438	107	8220DB000389
62439	107	8220DB000393
62440	107	8220DB000371
62441	107	8220DB000391
62442	107	8220DB000392
62443	107	8220DB000395
62444	107	8220DB000396
62445	107	8220DB000397
62446	107	8220DB000398
62447	107	8220DB000399
62448	107	8220DB007859
62449	107	8220DB007732
62450	107	8220DB007392
62451	107	8220DB000312
62452	107	8220DB007857
62453	107	8220DB007855
62454	107	8220DB004407
62455	107	8220DB002637
62456	107	8220DB002721
62457	107	8220DB007012
62458	107	8230DB002201
62459	107	8230DB007239
62460	107	8230DB004401
62461	107	8230DB002213
62462	107	8230DB002214
62463	107	8230DB002215
62464	107	8230DB002216
62465	107	8230DB004599
62466	107	8230DB004601
62467	107	8230DB005058
62468	107	8230DB004602
62469	107	8230DB004603
62470	107	8230DB004604
62471	107	8230DB004605
62472	107	8230DB004562
62473	107	8230DB007386
62474	107	8230DB004607
62475	107	8230DB007140
62476	107	8230DB007141
62477	107	8230DB007138
62478	107	8230DB007763
62479	107	8230DB003370
62480	107	8230DB007797
62481	107	8230DB007231
62482	107	8230DB007128
62483	107	8230DB007117
62484	107	8230DB007118
62485	108	8220DB000381
62486	108	8220DB007740
62487	108	8220DB007741
62488	108	8220DB000387
62489	108	8220DB000388
62490	108	8220DB000389
62491	108	8220DB000393
62492	108	8220DB000371
62493	108	8220DB000391
62494	108	8220DB000392
62495	108	8220DB000395
62496	108	8220DB000396
62497	108	8220DB000397
62498	108	8220DB000398
62499	108	8220DB000399
62500	108	8220DB007859
62501	108	8220DB007732
62502	108	8220DB007392
62503	108	8220DB000312
62504	108	8220DB007857
62505	108	8220DB007855
62506	108	8220DB004407
62507	108	8220DB002637
62508	108	8220DB002721
62509	108	8220DB007012
62510	108	8230DB002201
62511	108	8230DB007239
62512	108	8230DB004401
62513	108	8230DB002213
62514	108	8230DB002214
62515	108	8230DB002215
62516	108	8230DB002216
62517	108	8230DB004599
62518	108	8230DB004601
62519	108	8230DB005058
62520	108	8230DB004602
62521	108	8230DB004603
62522	108	8230DB004604
62523	108	8230DB004605
62524	108	8230DB004562
62525	108	8230DB007386
62526	108	8230DB004607
62527	108	8230DB004608
62528	108	8230DB004609
62529	108	8230DB004610
62530	108	8230DB004611
62531	108	8230DB004612
62532	108	8230DB004613
62533	108	8230DB003370
62534	108	8230DB007797
62535	108	8230DB007231
62536	108	8230DB007128
62537	108	8230DB007117
62538	108	8230DB007118
62539	109	8230DB006290
62540	109	8230DB007120
62541	109	8230DB007119
62542	109	8230DB007127
62543	109	8230DB007143
62544	109	8230DB007796
62545	109	8230DB003368
62546	109	8230DB004626
62547	109	8230DB004627
62548	109	8230DB004624
62549	109	8230DB004625
62550	109	8230DB004628
62551	109	8230DB004623
62552	109	8230DB004619
62553	109	8230DB004561
62554	109	8230DB004629
62555	109	8230DB004630
62556	109	8230DB004631
62557	109	8230DB004632
62558	109	8230DB005164
62559	109	8230DB004633
62560	109	8230DB002234
62561	109	8230DB002236
62562	109	8230DB005056
62563	109	8230DB002239
62564	109	8230DB002241
62565	109	8230DB002242
62566	109	8220DB007435
62567	109	8220DB002722
62568	109	8220DB004413
62569	109	8220DB001476
62570	109	8220DB007854
62571	109	8220DB007856
62572	109	8220DB007883
62573	109	8220DB000315
62574	109	8220DB000340
62575	109	8220DB007861
62576	109	8220DB000351
62577	109	8220DB000352
62578	109	8220DB000353
62579	109	8220DB000354
62580	109	8220DB000355
62581	109	8220DB000356
62582	109	8220DB000357
62583	109	8220DB000390
62584	109	8220DB000372
62585	109	8220DB000373
62586	109	8220DB000374
62587	109	8220DB007738
62588	109	8220DB007739
62589	110	8310DB003333
62590	110	8310DB003334
62591	110	8310DB003352
62592	110	8310DB003335
62593	110	8310DB003336
62594	110	8310DB003337
62595	110	8310DB003338
62596	110	8310DB003339
62597	110	8240DB003340
62598	110	8240DB004324
62599	110	8240DB004769
62600	110	8240DB004770
62601	110	8240DB004765
62602	110	8240DB004766
62603	110	8240DB004767
62604	110	8240DB004768
62605	111	8240DB007026
62606	111	8240DB004323
62607	111	8240DB004324
62608	111	8240DB004769
62609	111	8240DB004770
62610	111	8240DB004765
62611	111	8240DB004766
62612	111	8240DB004767
62613	111	8240DB004768
62614	111	8240DB004325
62615	111	8310DB003328
62616	111	8310DB003329
62617	111	8310DB003330
62618	111	8310DB003331
62619	111	8310DB003351
62620	111	8310DB003332
62621	112	8260DB007799
62622	112	8260DB003980
62623	112	8260DB006089
62624	112	8260DB003981
62625	112	8260DB003982
62626	112	8260DB007704
62627	112	8260DB003983
62628	112	8260DB003985
62629	112	8260DB003986
62630	112	8260DB003987
62631	112	8260DB003989
62632	112	8260DB003990
62633	112	8260DB003991
62634	112	8260DB07758
62635	112	8260DB003998
62636	112	8260DB003999
62637	112	8260DB004000
62638	112	8230DB004001
62639	112	8230DB003949
62640	112	8230DB003950
62641	112	8230DB003372
62642	112	8230DB003373
62643	112	8230DB003374
62644	112	8230DB002233
62645	112	8230DB002232
62646	112	8230DB002234
62647	112	8230DB002236
62648	112	8230DB005056
62649	112	8230DB002239
62650	112	8230DB002241
62651	112	8230DB002242
62652	112	8220DB007435
62653	112	8220DB002722
62654	112	8220DB004413
62655	112	8220DB001476
62656	112	8220DB007854
62657	112	8220DB007856
62658	112	8220DB007883
62659	112	8220DB000315
62660	112	8220DB000340
62661	112	8220DB007861
62662	112	8220DB000351
62663	112	8220DB000352
62664	112	8220DB000353
62665	113	8220DB000395
62666	113	8220DB000396
62667	113	8220DB000397
62668	113	8220DB000398
62669	113	8220DB000399
62670	113	8220DB007859
62671	113	8220DB007732
62672	113	8220DB007392
62673	113	8220DB000312
62674	113	8220DB007857
62675	113	8220DB007855
62676	113	8220DB004407
62677	113	8220DB002637
62678	113	8220DB002721
62679	113	8220DB007012
62680	113	8230DB002201
62681	113	8230DB007239
62682	113	8230DB004401
62683	113	8230DB002213
62684	113	8230DB002214
62685	113	8230DB002215
62686	113	8230DB002216
62687	113	8230DB004599
62688	113	8230DB002217
62689	113	8230DB002218
62690	113	8230DB002219
62691	113	8230DB003365
62692	113	8230DB003366
62693	113	8230DB003367
62694	113	8230DB003886
62695	113	8230DB003887
62696	113	8230DB003888
62697	113	8230DB007186
62698	113	8230DB007187
62699	113	8260DB003954
62700	113	8260DB003955
62701	113	8260DB003956
62702	113	8260DB003957
62703	113	8260DB003958
62704	113	8260DB003959
62705	113	8260DB003960
62706	113	8260DB003961
62707	113	8260DB003962
62708	113	8260DB003963
62709	113	8260DB003964
62710	113	8260DB003965
62711	113	8260DB003968
62712	113	8260DB007694
62713	113	8260DB003966
62714	113	8260DB005113
62715	113	8260DB003918
62716	113	8260DB005114
62717	114	8220DB000395
62718	114	8220DB000396
62719	114	8220DB000397
62720	114	8220DB000398
62721	114	8220DB000399
62722	114	8220DB007859
62723	114	8220DB007732
62724	114	8220DB007392
62725	114	8220DB000312
62726	114	8220DB007857
62727	114	8220DB007855
62728	114	8220DB004407
62729	114	8220DB002637
62730	114	8220DB002721
62731	114	8220DB007012
62732	114	8230DB002201
62733	114	8230DB007239
62734	114	8230DB004401
62735	114	8230DB002213
62736	114	8230DB002214
62737	114	8230DB002215
62738	114	8230DB002216
62739	114	8230DB004599
62740	114	8230DB002217
62741	114	8230DB002218
62742	114	8230DB002219
62743	114	8230DB003365
62744	114	8230DB003366
62745	114	8230DB003367
62746	114	8230DB003886
62747	114	8230DB003887
62748	114	8230DB003888
62749	114	8230DB007186
62750	114	8230DB007187
62751	114	8230DB003947
62752	114	8230DB003892
62753	114	8230DB003893
62754	114	8230DB003896
62755	114	8260DB003897
62756	114	8260DB003898
62757	114	8260DB003899
62758	114	8260DB003900
62759	114	8260DB003901
62760	114	8260DB003902
62761	114	8260DB003904
62762	114	8260DB003905
62763	114	8260DB003906
62764	114	8260DB003907
62765	114	8260DB003908
62766	114	8260DB003909
62767	114	8260DB005118
62768	114	8260DB003910
62769	114	8260DB003911
62770	114	8260DB003912
62771	114	8260DB003913
62772	114	8260DB003914
62773	114	8260DB007075
62774	114	8260DB003925
62775	114	8260DB003008
62776	114	8260DB006089
62777	115	8260DB003917
62778	115	8260DB003918
62779	115	8260DB003926
62780	115	8260DB007813
62781	115	8260DB007074
62782	115	8260DB003919
62783	115	8260DB003920
62784	115	8260DB003921
62785	115	8260DB003922
62786	115	8260DB003923
62787	115	8260DB003112
62788	115	8260DB003924
62789	115	8260DB003927
62790	115	8260DB003928
62791	115	8260DB003929
62792	115	8260DB007108
62793	115	8260DB003935
62794	115	8260DB003936
62795	115	8260DB007110
62796	115	8260DB003938
62797	115	8260DB003939
62798	115	8260DB003940
62799	115	8260DB003941
62800	115	8230DB003943
62801	115	8230DB003945
62802	115	8230DB003946
62803	115	8230DB004001
62804	115	8230DB003949
62805	115	8230DB003950
62806	115	8230DB003372
62807	115	8230DB003373
62808	115	8230DB003374
62809	115	8230DB002233
62810	115	8230DB002232
62811	115	8230DB002234
62812	115	8230DB002236
62813	115	8230DB005056
62814	115	8230DB002239
62815	115	8230DB002241
62816	115	8230DB002242
62817	115	8220DB007435
62818	115	8220DB002722
62819	115	8220DB004413
62820	115	8220DB001476
62821	115	8220DB007854
62822	115	8220DB007856
62823	115	8220DB007883
62824	115	8220DB000315
62825	115	8220DB000340
62826	115	8220DB007861
62827	115	8220DB000351
62828	115	8220DB000352
62829	115	8220DB000353
62830	116	8220DB000395
62831	116	8220DB000396
62832	116	8220DB000397
62833	116	8220DB000398
62834	116	8220DB000399
62835	116	8220DB007859
62836	116	8220DB007732
62837	116	8220DB007392
62838	116	8220DB000312
62839	116	8220DB007857
62840	116	8220DB007855
62841	116	8220DB007078
62842	116	8220DB001449
62843	116	8220DB001450
62844	116	8220DB001451
62845	116	8220DB002191
62846	116	8220DB002192
62847	116	8220DB002193
62848	116	8220DB002194
62849	116	8220DB002195
62850	116	8220DB002196
62851	116	8220DB002197
62852	116	8220DB002198
62853	116	8220DB002200
62854	116	8230DB002201
62855	116	8230DB007239
62856	116	8230DB004401
62857	116	8230DB002213
62858	116	8230DB002214
62859	116	8230DB002215
62860	116	8230DB002216
62861	116	8230DB004599
62862	116	8230DB002217
62863	116	8230DB002218
62864	116	8230DB002219
62865	116	8230DB003365
62866	116	8230DB003366
62867	116	8230DB003367
62868	116	8230DB003886
62869	116	8230DB003887
62870	116	8230DB003888
62871	116	8230DB007186
62872	116	8230DB007187
62873	116	8230DB003947
62874	116	8230DB003892
62875	116	8230DB003893
62876	116	8230DB003896
62877	116	8260DB003897
62878	116	8260DB003898
62879	116	8260DB003899
62880	116	8260DB003900
62881	116	8260DB003901
62882	116	8260DB003902
62883	116	8260DB003904
62884	116	8260DB003905
62885	116	8260DB003906
62886	116	8260DB003907
62887	116	8260DB003908
62888	116	8260DB003909
62889	116	8260DB005118
62890	116	8260DB003910
62891	116	8260DB003911
62892	116	8260DB003912
62893	116	8260DB003913
62894	116	8260DB003914
62895	116	8260DB007075
62896	116	8260DB003925
62897	116	8260DB003008
62898	116	8260DB006089
62899	117	8260DB003917
62900	117	8260DB003918
62901	117	8260DB003926
62902	117	8260DB007813
62903	117	8260DB007074
62904	117	8260DB003919
62905	117	8260DB003920
62906	117	8260DB003921
62907	117	8260DB003922
62908	117	8260DB003923
62909	117	8260DB003112
62910	117	8260DB003924
62911	117	8260DB003927
62912	117	8260DB003928
62913	117	8260DB003929
62914	117	8260DB007108
62915	117	8260DB003935
62916	117	8260DB003936
62917	117	8260DB007110
62918	117	8260DB003938
62919	117	8260DB003939
62920	117	8260DB003940
62921	117	8260DB003941
62922	117	8230DB003943
62923	117	8230DB003945
62924	117	8230DB003946
62925	117	8230DB004001
62926	117	8230DB003949
62927	117	8230DB003950
62928	117	8230DB003372
62929	117	8230DB003373
62930	117	8230DB003374
62931	117	8230DB002233
62932	117	8230DB002232
62933	117	8230DB002234
62934	117	8230DB002236
62935	117	8230DB005056
62936	117	8230DB002239
62937	117	8230DB002241
62938	117	8230DB002242
62939	117	8220DB002243
62940	117	8220DB002244
62941	117	8220DB002245
62942	117	8220DB002246
62943	117	8220DB002247
62944	117	8220DB002248
62945	117	8220DB002249
62946	117	8220DB002250
62947	117	8220DB002251
62948	117	8220DB001472
62949	117	8220DB004408
62950	117	8220DB001473
62951	117	8220DB001474
62952	117	8220DB001476
62953	117	8220DB007854
62954	117	8220DB007856
62955	117	8220DB007883
62956	117	8220DB000315
62957	117	8220DB000340
62958	117	8220DB007861
62959	117	8220DB000351
62960	117	8220DB000352
62961	117	8220DB000353
62962	118	8260DB007799
62963	118	8260DB003980
62964	118	8260DB006089
62965	118	8260DB003981
62966	118	8260DB003982
62967	118	8260DB007704
62968	118	8260DB003983
62969	118	8260DB003985
62970	118	8260DB003986
62971	118	8260DB007313
62972	118	8260DB006164
62973	118	8260DB007712
62974	118	8260DB006159
62975	118	8260DB006160
62976	118	8260DB006161
62977	118	8260DB003991
62978	118	8260DB07758
62979	118	8260DB007798
62980	118	8260DB003993
62981	118	8260DB007821
62982	118	8260DB007820
62983	118	8260DB003995
62984	118	8260DB003996
62985	118	8260DB003997
62986	118	8260DB003998
62987	118	8260DB003999
62988	118	8260DB004000
62989	118	8230DB004001
62990	118	8230DB003949
62991	118	8230DB003950
62992	118	8230DB003372
62993	118	8230DB003373
62994	118	8230DB003374
62995	118	8230DB002233
62996	118	8230DB002232
62997	118	8230DB002234
62998	118	8230DB002236
62999	118	8230DB005056
63000	118	8230DB002239
63001	118	8230DB002241
63002	118	8230DB002242
63003	118	8220DB002243
63004	118	8220DB002244
63005	118	8220DB002245
63006	118	8220DB002246
63007	118	8220DB002247
63008	118	8220DB002248
63009	118	8220DB002249
63010	118	8220DB002250
63011	118	8220DB002251
63012	118	8220DB001472
63013	118	8220DB004408
63014	118	8220DB001473
63015	118	8220DB001474
63016	118	8220DB001476
63017	118	8220DB007854
63018	118	8220DB007856
63019	118	8220DB007883
63020	118	8220DB000315
63021	118	8220DB000340
63022	118	8220DB007861
63023	118	8220DB000351
63024	118	8220DB000352
63025	118	8220DB000353
63026	119	8220DB000395
63027	119	8220DB000396
63028	119	8220DB000397
63029	119	8220DB000398
63030	119	8220DB000399
63031	119	8220DB007859
63032	119	8220DB007732
63033	119	8220DB007392
63034	119	8220DB000312
63035	119	8220DB007857
63036	119	8220DB007855
63037	119	8220DB007078
63038	119	8220DB001449
63039	119	8220DB001450
63040	119	8220DB001451
63041	119	8220DB002191
63042	119	8220DB002192
63043	119	8220DB002193
63044	119	8220DB002194
63045	119	8220DB002195
63046	119	8220DB002196
63047	119	8220DB002197
63048	119	8220DB002198
63049	119	8220DB002200
63050	119	8230DB002201
63051	119	8230DB007239
63052	119	8230DB004401
63053	119	8230DB002213
63054	119	8230DB002214
63055	119	8230DB002215
63056	119	8230DB002216
63057	119	8230DB004599
63058	119	8230DB002217
63059	119	8230DB002218
63060	119	8230DB002219
63061	119	8230DB003365
63062	119	8230DB003366
63063	119	8230DB003367
63064	119	8230DB003886
63065	119	8230DB003887
63066	119	8230DB003888
63067	119	8230DB007186
63068	119	8230DB007187
63069	119	8260DB003954
63070	119	8260DB003955
63071	119	8260DB003956
63072	119	8260DB003957
63073	119	8260DB007798
63074	119	8260DB003993
63075	119	8260DB007821
63076	119	8260DB007820
63077	119	8260DB003995
63078	119	8260DB003996
63079	119	8260DB003997
63080	119	8260DB003958
63081	119	8260DB003959
63082	119	8260DB003960
63083	119	8260DB006156
63084	119	8260DB006165
63085	119	8260DB006157
63086	119	8260DB006158
63087	119	8260DB007314
63088	119	8260DB003964
63089	119	8260DB003965
63090	119	8260DB003968
63091	119	8260DB007694
63092	119	8260DB003966
63093	119	8260DB005113
63094	119	8260DB003918
63095	119	8260DB005114
63096	120	8220DB000395
63097	120	8220DB000396
63098	120	8220DB000397
63099	120	8220DB000398
63100	120	8220DB000399
63101	120	8220DB007859
63102	120	8220DB007732
63103	120	8220DB007392
63104	120	8220DB000312
63105	120	8220DB007857
63106	120	8220DB007855
63107	120	8220DB004407
63108	120	8220DB002637
63109	120	8220DB002721
63110	120	8220DB007012
63111	120	8230DB002201
63112	120	8230DB007239
63113	120	8230DB004401
63114	120	8230DB002213
63115	120	8230DB002214
63116	120	8230DB002215
63117	120	8230DB002216
63118	120	8230DB004599
63119	120	8230DB007184
63120	120	8230DB007050
63121	120	8230DB007185
63122	120	8230DB007186
63123	120	8230DB007187
63124	120	8260DB003954
63125	120	8260DB003955
63126	120	8260DB003956
63127	120	8260DB003957
63128	120	8260DB003958
63129	120	8260DB003959
63130	120	8260DB003960
63131	120	8260DB006156
63132	120	8260DB006165
63133	120	8260DB006157
63134	120	8260DB006158
63135	120	8260DB007314
63136	120	8260DB007819
63137	121	8260DB007822
63138	121	8260DB003986
63139	121	8260DB007313
63140	121	8260DB006164
63141	121	8260DB007712
63142	121	8260DB006159
63143	121	8260DB006160
63144	121	8260DB006161
63145	121	8260DB003991
63146	121	8260DB07758
63147	121	8260DB003998
63148	121	8260DB003999
63149	121	8260DB004000
63150	121	8230DB004001
63151	121	8230DB007193
63152	121	8230DB007049
63153	121	8230DB002236
63154	121	8230DB005056
63155	121	8230DB002239
63156	121	8230DB002241
63157	121	8230DB002242
63158	121	8220DB007435
63159	121	8220DB002722
63160	121	8220DB004413
63161	121	8220DB001476
63162	121	8220DB007854
63163	121	8220DB007856
63164	121	8220DB007883
63165	121	8220DB000315
63166	121	8220DB000340
63167	121	8220DB007861
63168	121	8220DB000351
63169	121	8220DB000352
63170	121	8220DB000353
63171	122	8220DB001380
63172	122	8220DB001381
63173	122	8220DB001406
63174	122	8220DB001407
63175	122	8220DB001409
63176	122	8220DB003353
63177	122	8220DB003354
63178	122	8220DB003355
63179	122	8220DB003356
63180	122	8220DB001400
63181	122	8220DB001391
63182	122	8220DB003357
63183	122	8220DB003358
63184	122	8220DB002449
63185	122	8220DB002450
63186	122	8220DB002451
63187	122	8220DB002434
63188	122	8220DB002435
63189	122	8220DB002436
63190	122	8220DB002437
63191	122	8220DB001117
63192	122	8220DB001118
63193	122	8220DB001119
63194	122	8220DB001120
63195	122	8220DB001299
63196	122	8220DB001300
63197	122	8230DB001301
63198	122	8230DB001302
63199	122	8230DB001303
63200	122	8230DB001304
63201	122	8230DB001305
63202	122	8250DB001306
63203	122	8250DB001307
63204	122	8250DB001308
63205	122	8250DB001309
63206	122	8250DB001310
63207	122	8250DB001311
63208	122	8250DB001312
63209	122	8250DB001313
63210	122	8250DB001055
63211	122	8250DB002868
63212	122	8250DB002892
63213	122	8250DB002893
63214	122	8250DB002894
63215	122	8250DB002895
63216	122	8250DB003012
63217	122	8250DB000861
63218	122	8250DB000862
63219	122	8250DB000863
63220	122	8250DB000864
63221	122	8250DB000865
63222	122	8250DB000866
63223	122	8250DB002052
63224	122	8250DB002082
63225	122	8250DB002083
63226	122	8250DB002084
63227	122	8250DB000765
63228	122	8250DB002007
63229	122	8250DB002008
63230	122	8250DB002009
63231	122	8250DB002010
63232	122	8250DB000462
63233	122	8250DB000464
63234	122	8250DB000465
63235	122	8250DB000466
63236	122	8250DB000467
63237	122	8250DB000468
63238	122	8250DB003032
63239	122	8250DB003033
63240	123	8250DB003085
63241	123	8250DB003082
63242	123	8250DB003083
63243	123	8250DB000430
63244	123	8250DB000431
63245	123	8250DB000432
63246	123	8250DB000433
63247	123	8250DB000434
63248	123	8250DB002068
63249	123	8250DB002069
63250	123	8250DB002070
63251	123	8250DB002084
63252	123	8250DB000765
63253	123	8250DB002007
63254	123	8250DB002008
63255	123	8250DB002071
63256	123	8250DB002072
63257	123	8250DB000867
63258	123	8250DB000869
63259	123	8250DB000870
63260	123	8250DB000873
63261	123	8250DB000874
63262	123	8250DB000875
63263	123	8250DB000876
63264	123	8250DB003011
63265	123	8250DB002820
63266	123	8250DB002822
63267	123	8250DB002823
63268	123	8250DB005032
63269	123	8250DB002867
63270	123	8250DB001035
63271	123	8250DB001314
63272	123	8250DB001316
63273	123	8250DB001315
63274	123	8250DB001317
63275	123	8250DB001318
63276	123	8250DB001319
63277	123	8250DB001281
63278	123	8230DB001329
63279	123	8230DB001330
63280	123	8230DB001331
63281	123	8230DB001332
63282	123	8230DB001333
63283	123	8230DB001334
63284	123	8220DB001335
63285	123	8220DB001336
63286	123	8220DB001086
63287	123	8220DB001087
63288	123	8220DB001088
63289	123	8220DB001089
63290	123	8220DB001090
63291	123	8220DB002413
63292	123	8220DB002414
63293	123	8220DB002415
63294	123	8220DB002327
63295	123	8220DB002464
63296	123	8220DB002465
63297	123	8220DB002466
63298	123	8220DB003360
63299	123	8220DB001392
63300	123	8220DB001394
63301	123	8220DB001395
63302	123	8220DB003361
63303	123	8220DB003362
63304	123	8220DB001436
63305	123	8220DB003952
63306	123	8220DB002190
63307	123	8220DB001366
63308	124	8350DB004260
63309	124	8350DB004261
63310	124	8350DB007271
63311	124	8350DB005136
63312	124	8350DB004262
63313	124	8350DB004263
63314	124	8350DB004264
63315	124	8350DB007296
63316	124	8350DB004265
63317	124	8350DB004266
63318	124	8350DB004307
63319	124	8350DB004308
63320	124	8350DB004267
63321	124	8350DB004268
63322	124	8350DB004269
63323	124	8350DB004270
63324	124	8350DB004271
63325	124	8350DB004273
63326	124	8350DB004274
63327	124	8350DB004275
63328	124	8350DB004276
63329	124	8350DB004277
63330	124	8350DB004278
63331	124	8350DB004279
63332	124	8350DB004280
63333	124	8350DB004281
63334	124	8350DB004282
63335	124	8350DB004283
63336	124	8350DB004284
63337	124	8350DB004285
63338	124	8350DB004286
63339	124	8350DB004287
63340	124	8350DB004288
63341	124	8350DB004295
63342	124	8350DB004296
63343	124	8350DB004297
63344	124	8350DB004299
63345	124	8350DB004300
63346	124	8350DB004301
63347	124	8350DB004302
63348	124	8350DB005135
63349	124	8350DB004303
63350	124	8350DB004304
63351	124	8350DB004148
63352	124	8350DB004149
63353	124	8350DB003045
63354	124	8350DB004150
63355	124	8350DB004151
63356	124	8350DB004156
63357	124	8350DB004168
63358	124	8350DB004170
63359	124	8350DB004153
63360	124	8350DB004154
63361	124	8350DB004416
63362	124	8350DB004201
63363	124	8250DB004202
63364	124	8250DB004203
63365	124	8250DB004204
63366	124	8250DB004205
63367	124	8250DB004206
63368	124	8250DB003140
63369	124	8250DB003141
63370	124	8250DB003142
63371	124	8250DB003143
63372	124	8250DB003144
63373	124	8250DB007639
63374	124	8250DB007640
63375	124	8250DB005047
63376	124	8250DB003146
63377	124	8250DB003147
63378	124	8250DB003148
63379	124	8250DB003149
63380	124	8250DB003150
63381	124	8250DB003151
63382	124	8250DB003153
63383	124	8250DB003152
63384	124	8250DB002995
63385	124	8250DB003154
63386	124	8250DB003155
63387	124	8250DB003156
63388	124	8250DB003158
63389	124	8250DB003159
63390	124	8250DB003160
63391	124	8250DB003161
63392	124	8250DB003162
63393	124	8250DB003163
63394	124	8250DB003164
63395	124	8250DB003079
63396	124	8250DB003080
63397	124	8250DB003081
63398	125	8250DB007188
63399	125	8250DB003082
63400	125	8250DB007660
63401	125	8250DB003114
63402	125	8250DB003115
63403	125	8250DB003116
63404	125	8250DB003117
63405	125	8250DB003118
63406	125	8250DB003119
63407	125	8250DB003120
63408	125	8250DB003122
63409	125	8250DB003123
63410	125	8250DB003124
63411	125	8250DB003125
63412	125	8250DB003126
63413	125	8250DB003127
63414	125	8250DB003128
63415	125	8250DB003130
63416	125	8250DB003131
63417	125	8250DB003132
63418	125	8250DB003133
63419	125	8250DB005046
63420	125	8250DB007639
63421	125	8250DB007640
63422	125	8250DB003134
63423	125	8250DB003135
63424	125	8250DB003136
63425	125	8250DB003138
63426	125	8250DB003139
63427	125	8250DB004124
63428	125	8250DB004125
63429	125	8250DB004126
63430	125	8250DB004127
63431	125	8250DB004128
63432	125	8350DB004129
63433	125	8350DB004130
63434	125	8350DB004131
63435	125	8350DB007294
63436	125	8350DB004156
63437	125	8350DB004168
63438	125	8350DB004170
63439	125	8350DB004132
63440	125	8350DB004134
63441	125	8350DB004135
63442	125	8350DB004136
63443	125	8350DB004207
63444	125	8350DB004208
63445	125	8350DB004209
63446	125	8350DB004210
63447	125	8350DB004211
63448	125	8350DB004212
63449	125	8350DB004213
63450	125	8350DB005139
63451	125	8350DB004214
63452	125	8350DB004215
63453	125	8350DB004216
63454	125	8350DB004217
63455	125	8350DB004218
63456	125	8350DB004219
63457	125	8350DB004220
63458	125	8350DB004221
63459	125	8350DB004222
63460	125	8350DB004224
63461	125	8350DB004225
63462	125	8350DB004226
63463	125	8350DB004227
63464	125	8350DB004228
63465	125	8350DB004229
63466	125	8350DB004230
63467	125	8350DB004231
63468	125	8350DB007352
63469	125	8350DB004246
63470	125	8350DB004248
63471	125	8350DB004249
63472	125	8350DB004250
63473	125	8350DB004251
63474	125	8350DB004252
63475	125	8350DB004253
63476	125	8350DB004305
63477	125	8350DB004306
63478	125	8350DB004309
63479	125	8350DB004254
63480	125	8350DB006137
63481	125	8350DB004256
63482	125	8350DB004257
63483	125	8350DB004258
63484	125	8350DB004259
63485	125	8350DB007272
63486	126	8220DB007149
63487	126	8220DB007277
63488	126	8220DB006363
63489	126	8220DB006361
63490	126	8220DB006367
63491	126	8220DB004985
63492	126	8240DB006219
63493	126	8240DB006229
63494	126	8240DB006364
63495	126	8220DB001558
63496	126	8220DB004542
63497	126	8220DB001531
63498	126	8220DB001532
63499	126	8220DB001533
63500	126	8220DB001534
63501	126	8220DB001535
63502	126	8220DB001536
63503	126	8220DB001537
63504	126	8220DB000186
63505	126	8220DB000187
63506	126	8220DB000188
63507	126	8220DB000189
63508	126	8220DB000190
63509	126	8220DB000191
63510	126	8220DB000819
63511	126	8220DB000264
63512	126	8220DB006059
63513	126	8220DB000334
63514	126	8220DB007581
63515	126	8220DB001283
63516	126	8220DB007579
63517	126	8220DB001285
63518	126	8220DB001016
63519	126	8220DB001017
63520	126	8220DB001018
63521	126	8220DB001019
63522	126	8220DB001020
63523	126	8220DB001076
63524	126	8220DB001021
63525	126	8220DB006042
63526	126	8220DB001022
63527	126	8220DB001023
63528	126	8220DB001024
63529	127	8220DB000896
63530	127	8220DB000897
63531	127	8220DB000893
63532	127	8220DB000894
63533	127	8220DB001067
63534	127	8220DB001068
63535	127	8220DB001069
63536	127	8220DB001070
63537	127	8220DB001071
63538	127	8220DB004528
63539	127	8220DB001072
63540	127	8220DB007577
63541	127	8220DB001353
63542	127	8220DB001354
63543	127	8220DB007578
63544	127	8220DB007582
63545	127	8220DB000319
63546	127	8220DB000274
63547	127	8220DB000007
63548	127	8220DB000194
63549	127	8220DB000195
63550	127	8220DB000196
63551	127	8220DB000197
63552	127	8220DB000198
63553	127	8220DB000199
63554	127	8220DB001506
63555	127	8220DB001507
63556	127	8220DB001508
63557	127	8220DB001509
63558	127	8220DB001510
63559	127	8220DB001511
63560	127	8220DB001512
63561	127	8220DB001538
63562	127	8220DB004543
63563	127	8220DB001560
63564	127	8220DB001280
63565	127	8240DB006366
63566	127	8240DB006230
63567	127	8240DB006228
63568	127	8240DB007111
63569	127	8240DB006365
63570	127	8220DB006276
63571	127	8220DB006362
63572	127	8220DB007276
63573	128	8220DB000300
63574	128	8220DB000496
63575	128	8220DB000497
63576	128	8220DB000515
63577	128	8220DB000516
63578	128	8220DB004384
63579	128	8220DB000519
63580	128	8220DB000521
63581	128	8220DB000522
63582	128	8220DB000523
63583	128	8220DB000669
63584	128	8220DB000670
63585	128	8220DB000671
63586	128	8220DB000672
63587	128	8220DB004382
63588	128	8220DB001196
63589	128	8220DB001197
63590	128	8220DB001198
63591	128	8220DB004782
63592	128	8220DB001782
63593	128	8220DB001783
63594	128	8220DB001784
63595	128	8220DB001785
63596	128	8220DB001786
63597	128	8220DB000624
63598	128	8220DB000625
63599	128	8220DB000626
63600	128	8220DB000627
63601	128	8220DB000628
63602	128	8220DB000629
63603	128	8220DB000630
63604	128	8220DB004466
63605	128	8220DB000633
63606	128	8220DB000634
63607	128	8220DB001005
63608	128	8220DB001788
63609	128	8220DB001789
63610	129	8220DB001791
63611	129	8220DB001792
63612	129	8220DB001793
63613	129	8220DB000962
63614	129	8220DB000635
63615	129	8220DB000636
63616	129	8220DB000637
63617	129	8220DB000638
63618	129	8220DB000639
63619	129	8220DB000640
63620	129	8220DB000641
63621	129	8220DB000642
63622	129	8220DB000643
63623	129	8220DB000644
63624	129	8220DB000645
63625	129	8220DB001796
63626	129	8220DB001797
63627	129	8220DB001798
63628	129	8220DB001799
63629	129	8220DB001800
63630	129	8220DB001801
63631	129	8220DB001277
63632	129	8220DB001219
63633	129	8220DB001220
63634	129	8220DB001221
63635	129	8220DB000664
63636	129	8220DB000665
63637	129	8220DB000666
63638	129	8220DB000667
63639	129	8220DB000668
63640	129	8220DB000614
63641	129	8220DB000615
63642	129	8220DB000616
63643	129	8220DB000617
63644	129	8220DB000618
63645	129	8220DB000619
63646	129	8220DB000675
63647	129	8220DB000620
63648	129	8220DB007569
63649	130	8220DB002270
63650	130	8220DB002274
63651	130	8220DB007336
63652	130	8220DB002508
63653	130	8220DB002278
63654	130	8220DB002279
63655	130	8220DB002720
63656	130	8220DB002280
63657	130	8220DB002281
63658	130	8220DB002282
63659	130	8220DB004468
63660	130	8220DB002283
63661	130	8220DB000616
63662	130	8220DB000617
63663	130	8220DB000618
63664	130	8220DB000619
63665	130	8220DB000675
63666	131	8220DB004380
63667	131	8220DB001172
63668	131	8220DB007671
63669	131	8220DB000513
63670	131	8220DB004513
63671	131	8220DB000286
63672	131	8220DB000271
63673	131	8220DB000496
63674	131	8220DB000497
63675	131	8220DB000515
63676	131	8220DB000516
63677	131	8220DB004384
63678	131	8220DB000518
63679	131	8220DB002255
63680	131	8220DB002256
63681	131	8220DB002717
63682	131	8220DB002257
63683	131	8220DB002258
63684	131	8220DB002259
63685	131	8220DB002260
63686	131	8220DB002261
63687	131	8220DB004469
63688	131	8220DB002262
63689	131	8220DB002264
63690	131	8220DB007336
63691	131	8220DB007601
63692	132	8220DB001772
63693	132	8220DB001773
63694	132	8220DB001774
63695	132	8220DB001775
63696	132	8220DB001776
63697	132	8220DB001777
63698	132	8220DB001778
63699	132	8220DB001755
63700	132	8220DB001756
63701	132	8220DB001757
63702	132	8220DB001794
63703	132	8220DB007469
63704	132	8220DB001724
63705	132	8220DB001725
63706	132	8220DB001726
63707	132	8220DB001727
63708	132	8220DB001728
63709	132	8220DB001729
63710	132	8220DB001730
63711	132	8220DB001731
63712	132	8220DB001732
63713	132	8220DB001733
63714	132	8220DB001734
63715	132	8220DB001735
63716	132	8220DB001736
63717	132	8220DB001737
63718	132	8220DB001738
63719	132	8220DB001739
63720	132	8220DB000614
63721	132	8220DB000615
63722	132	8220DB000616
63723	132	8220DB000617
63724	132	8220DB000618
63725	132	8220DB000619
63726	132	8220DB000675
63727	132	8220DB000620
63728	133	8220DB000621
63729	133	8220DB000289
63730	133	8220DB000496
63731	133	8220DB000515
63732	133	8220DB000516
63733	133	8220DB004384
63734	133	8220DB000519
63735	133	8220DB000521
63736	133	8220DB000522
63737	133	8220DB000523
63738	133	8220DB001740
63739	133	8220DB001741
63740	133	8220DB001742
63741	133	8220DB001743
63742	133	8220DB001744
63743	133	8220DB001745
63744	133	8220DB001746
63745	133	8220DB001747
63746	133	8220DB001748
63747	133	8220DB001749
63748	133	8220DB001751
63749	133	8220DB001752
63750	133	8220DB001753
63751	133	8220DB001754
63752	133	8220DB001759
63753	133	8220DB001758
63754	133	8220DB001750
63755	133	8220DB001769
63756	133	8220DB001770
63757	133	8220DB001771
63758	133	8220DB001760
63759	133	8220DB001761
63760	133	8220DB001762
63761	133	8220DB001763
63762	133	8220DB001764
63763	133	8220DB001765
63764	134	8350DB004168
63765	134	8350DB004170
63766	134	8350DB004132
63767	134	8350DB004134
63768	134	8350DB004135
63769	134	8350DB004136
63770	134	8350DB004207
63771	134	8350DB004208
63772	134	8350DB004209
63773	134	8350DB004210
63774	134	8350DB004211
63775	134	8350DB004212
63776	134	8350DB004213
63777	134	8350DB005139
63778	134	8350DB004214
63779	134	8350DB004215
63780	134	8350DB004216
63781	134	8350DB004289
63782	134	8350DB004290
63783	134	8350DB004291
63784	134	8350DB004222
63785	134	8350DB004224
63786	134	8350DB004225
63787	134	8350DB004226
63788	134	8350DB007462
63789	134	8350DB007461
63790	134	8350DB004227
63791	134	8350DB004228
63792	134	8350DB004229
63793	134	8350DB004230
63794	134	8350DB004232
63795	134	8350DB007351
63796	134	8350DB004234
63797	134	8350DB004235
63798	134	8350DB006019
63799	134	8350DB004236
63800	134	8350DB004650
63801	134	8350DB004651
63802	134	8350DB004652
63803	134	8350DB004653
63804	134	8350DB004654
63805	134	8350DB004655
63806	134	8350DB006138
63807	135	8350DB004657
63808	135	8350DB007279
63809	135	8350DB004658
63810	135	8350DB004659
63811	135	8350DB004660
63812	135	8350DB004661
63813	135	8350DB004238
63814	135	8350DB004239
63815	135	8350DB004237
63816	135	8350DB003442
63817	135	8350DB004240
63818	135	8350DB004241
63819	135	8350DB004242
63820	135	8350DB004243
63821	135	8350DB004244
63822	135	8350DB004277
63823	135	8350DB004278
63824	135	8350DB004279
63825	135	8350DB004280
63826	135	8350DB007462
63827	135	8350DB007461
63828	135	8350DB004281
63829	135	8350DB004282
63830	135	8350DB004283
63831	135	8350DB004284
63832	135	8350DB004292
63833	135	8350DB004293
63834	135	8350DB004294
63835	135	8350DB004295
63836	135	8350DB004296
63837	135	8350DB004297
63838	135	8350DB004299
63839	135	8350DB004300
63840	135	8350DB004301
63841	135	8350DB004302
63842	135	8350DB005135
63843	135	8350DB004303
63844	135	8350DB004304
63845	135	8350DB004148
63846	135	8350DB004149
63847	135	8350DB003045
63848	135	8350DB004150
63849	135	8350DB004151
63850	135	8350DB004156
63851	136	8310DB003333
63852	136	8310DB003334
63853	136	8310DB003352
63854	136	8310DB003335
63855	136	8310DB003336
63856	136	8310DB003337
63857	136	8310DB003338
63858	136	8310DB003339
63859	136	8240DB003340
63860	136	8240DB004324
63861	136	8240DB004769
63862	136	8240DB004770
63863	136	8240DB004765
63864	136	8240DB004766
63865	136	8240DB004767
63866	136	8240DB004768
63867	136	8240DB001845
63868	136	8240DB007166
63869	136	8220DB001847
63870	136	8220DB001696
63871	136	8220DB001697
63872	136	8220DB001698
63873	136	8220DB001699
63874	136	8220DB001700
63875	136	8220DB001701
63876	136	8220DB001702
63877	136	8220DB001703
63878	136	8220DB001905
63879	136	8220DB001906
63880	136	8220DB001907
63881	136	8220DB001908
63882	136	8220DB001909
63883	136	8220DB001713
63884	136	8220DB001714
63885	136	8220DB001715
63886	136	8220DB007453
63887	136	8220DB001478
63888	136	8220DB001479
63889	136	8220DB000315
63890	136	8220DB000404
63891	136	8220DB000747
63892	136	8220DB000748
63893	136	8220DB000749
63894	136	8220DB000750
63895	136	8220DB000751
63896	136	8220DB000752
63897	136	8220DB000753
63898	136	8220DB007370
63899	137	8220DB007333
63900	137	8220DB000783
63901	137	8220DB000784
63902	137	8220DB000785
63903	137	8220DB000786
63904	137	8220DB000793
63905	137	8220DB007586
63906	137	8220DB007587
63907	137	8220DB007588
63908	137	8220DB000329
63909	137	8220DB001443
63910	137	8220DB001444
63911	137	8220DB001445
63912	137	8220DB001647
63913	137	8220DB001648
63914	137	8220DB001649
63915	137	8220DB001911
63916	137	8220DB001913
63917	137	8220DB001914
63918	137	8220DB001805
63919	137	8220DB001806
63920	137	8220DB001660
63921	137	8220DB001661
63922	137	8220DB001662
63923	137	8220DB001664
63924	137	8220DB001665
63925	137	8220DB001666
63926	137	8220DB001807
63927	137	8240DB007167
63928	137	8240DB001808
63929	137	8240DB007389
63930	137	8240DB004324
63931	137	8240DB004769
63932	137	8240DB004770
63933	137	8240DB004765
63934	137	8240DB004766
63935	137	8240DB004767
63936	137	8240DB004768
63937	137	8240DB004325
63938	137	8310DB003328
63939	137	8310DB003329
63940	137	8310DB003330
63941	137	8310DB003331
63942	137	8310DB003351
63943	137	8310DB003332
63944	138	8240DB004745
63945	138	8240DB004989
63946	138	8240DB004990
63947	138	8240DB004991
63948	138	8240DB004992
63949	138	8240DB001719
63950	138	8240DB001828
63951	138	8240DB001829
63952	138	8240DB004997
63953	138	8240DB004998
63954	138	8240DB004999
63955	138	8240DB001833
63956	138	8240DB001834
63957	138	8240DB001820
63958	138	8240DB002468
63959	138	8240DB007319
63960	138	8240DB007342
63961	138	8240DB007125
63962	138	8240DB007344
63963	138	8240DB007334
63964	138	8240DB001838
63965	138	8240DB002338
63966	138	8240DB001840
63967	138	8240DB001841
63968	138	8240DB001842
63969	138	8240DB007374
63970	138	8240DB001845
63971	138	8240DB007166
63972	138	8220DB001847
63973	138	8220DB001696
63974	138	8220DB001697
63975	138	8220DB001698
63976	138	8220DB001699
63977	138	8220DB001700
63978	138	8220DB001701
63979	138	8220DB001702
63980	138	8220DB001703
63981	138	8220DB001905
63982	138	8220DB001804
63983	138	8220DB001803
63984	138	8220DB000077
63985	138	8220DB000078
63986	138	8220DB000079
63987	138	8220DB000080
63988	138	8220DB000082
63989	138	8220DB000817
63990	138	8220DB000818
63991	138	8220DB000819
63992	138	8220DB000265
63993	138	8220DB006059
63994	138	8220DB000404
63995	138	8220DB000747
63996	138	8220DB000748
63997	138	8220DB000749
63998	138	8220DB000750
63999	138	8220DB000751
64000	138	8220DB000752
64001	138	8220DB000753
64002	138	8220DB007370
64003	139	8220DB007333
64004	139	8220DB000783
64005	139	8220DB000784
64006	139	8220DB000785
64007	139	8220DB000786
64008	139	8220DB000793
64009	139	8220DB000274
64010	139	8220DB000002
64011	139	8220DB000192
64012	139	8220DB000795
64013	139	8220DB000796
64014	139	8220DB000057
64015	139	8220DB000058
64016	139	8220DB000059
64017	139	8220DB000060
64018	139	8220DB001802
64019	139	8220DB001795
64020	139	8220DB001806
64021	139	8220DB001660
64022	139	8220DB001661
64023	139	8220DB001662
64024	139	8220DB001664
64025	139	8220DB001665
64026	139	8220DB001666
64027	139	8220DB001807
64028	139	8240DB007167
64029	139	8240DB001808
64030	139	8240DB001813
64031	139	8240DB001814
64032	139	8240DB001816
64033	139	8240DB001817
64034	139	8240DB001818
64035	139	8240DB001819
64036	139	8240DB001822
64037	139	8240DB004994
64038	139	8240DB004995
64039	139	8240DB004996
64040	139	8240DB001826
64041	139	8240DB001827
64042	139	8240DB007382
64043	139	8240DB007381
64044	139	8240DB004742
64045	139	8240DB004743
64046	140	8240DB004745
64047	140	8240DB004989
64048	140	8240DB004990
64049	140	8240DB004991
64050	140	8240DB004992
64051	140	8240DB001719
64052	140	8240DB001828
64053	140	8240DB001829
64054	140	8240DB004997
64055	140	8240DB004998
64056	140	8240DB004999
64057	140	8240DB001833
64058	140	8240DB001834
64059	140	8240DB001820
64060	140	8240DB002468
64061	140	8240DB007319
64062	140	8240DB007342
64063	140	8240DB007125
64064	140	8240DB007344
64065	140	8240DB007334
64066	140	8240DB001838
64067	140	8240DB002338
64068	140	8240DB001840
64069	140	8240DB001841
64070	140	8240DB004314
64071	140	8240DB001687
64072	140	8240DB001688
64073	140	8240DB001689
64074	140	8240DB004899
64075	140	8240DB004900
64076	140	8240DB004746
64077	140	8240DB001845
64078	140	8240DB007166
64079	140	8220DB001847
64080	140	8220DB001696
64081	140	8220DB001697
64082	140	8220DB001698
64083	140	8220DB001699
64084	140	8220DB001700
64085	140	8220DB001701
64086	140	8220DB001702
64087	140	8220DB001703
64088	140	8220DB001905
64089	140	8220DB001804
64090	140	8220DB001803
64091	140	8220DB000077
64092	140	8220DB000078
64093	140	8220DB000079
64094	140	8220DB000080
64095	140	8220DB000082
64096	140	8220DB000817
64097	140	8220DB000818
64098	140	8220DB000819
64099	140	8220DB000265
64100	140	8220DB006059
64101	140	8220DB000404
64102	140	8220DB000747
64103	140	8220DB000748
64104	140	8220DB000749
64105	140	8220DB000750
64106	140	8220DB000751
64107	140	8220DB000752
64108	140	8220DB000753
64109	140	8220DB007370
64110	141	8220DB007333
64111	141	8220DB000783
64112	141	8220DB000784
64113	141	8220DB000785
64114	141	8220DB000786
64115	141	8220DB000793
64116	141	8220DB000274
64117	141	8220DB000002
64118	141	8220DB000192
64119	141	8220DB000795
64120	141	8220DB000796
64121	141	8220DB000057
64122	141	8220DB000058
64123	141	8220DB000059
64124	141	8220DB000060
64125	141	8220DB001802
64126	141	8220DB001795
64127	141	8220DB001806
64128	141	8220DB001660
64129	141	8220DB001661
64130	141	8220DB001662
64131	141	8220DB001664
64132	141	8220DB001665
64133	141	8220DB001666
64134	141	8220DB001807
64135	141	8240DB007167
64136	141	8240DB001808
64137	141	8240DB002961
64138	141	8240DB004901
64139	141	8240DB004902
64140	141	8240DB001672
64141	141	8240DB001673
64142	141	8240DB001674
64143	141	8240DB001675
64144	141	8240DB001849
64145	141	8240DB001851
64146	141	8240DB001813
64147	141	8240DB001814
64148	141	8240DB001816
64149	141	8240DB006171
64150	141	8240DB004974
64151	141	8240DB004976
64152	141	8240DB007126
64153	141	8240DB007124
64154	141	8240DB007343
64155	141	8240DB004980
64156	141	8240DB002289
64157	141	8240DB001822
64158	141	8240DB004994
64159	141	8240DB004995
64160	141	8240DB004996
64161	141	8240DB001827
64162	141	8240DB007382
64163	141	8240DB007381
64164	141	8240DB004742
64165	141	8240DB004743
64166	141	8240DB004744
64167	142	8250DB007330
64168	142	8250DB002051
64169	142	8250DB006086
64170	142	8250DB003161
64171	142	8250DB003162
64172	142	8250DB003163
64173	142	8250DB003164
64174	142	8250DB003084
64175	142	8250DB000469
64176	142	8250DB000470
64177	142	8250DB000471
64178	142	8250DB000472
64179	142	8250DB000473
64180	142	8250DB004705
64181	142	8250DB000475
64182	142	8220DB000476
64183	142	8220DB000477
64184	142	8220DB000478
64185	142	8220DB000479
64186	142	8220DB000480
64187	142	8220DB000481
64188	142	8220DB000482
64189	142	8220DB000483
64190	142	8220DB000485
64191	142	8220DB000487
64192	142	8220DB000488
64193	142	8220DB000489
64194	142	8220DB000490
64195	142	8220DB000491
64196	142	8220DB000492
64197	142	8220DB000493
64198	142	8220DB000494
64199	142	8220DB000495
64200	142	8220DB000400
64201	142	8220DB000281
64202	142	8220DB000006
64203	142	8220DB000194
64204	142	8220DB000195
64205	142	8220DB000196
64206	142	8220DB000197
64207	142	8220DB000198
64208	142	8220DB000199
64209	142	8220DB000200
64210	142	8220DB000201
64211	142	8220DB000148
64212	142	8220DB000149
64213	142	8220DB000150
64214	142	8220DB000027
64215	142	8220DB000028
64216	142	8220DB000029
64217	142	8220DB004680
64218	142	8220DB000090
64219	142	8220DB000091
64220	142	8220DB000092
64221	142	8220DB000093
64222	142	8220DB000094
64223	142	8220DB000126
64224	142	8220DB006182
64225	142	8220DB000322
64226	142	8240DB000323
64227	143	8240DB000324
64228	143	8240DB000327
64229	143	8220DB007113
64230	143	8220DB000127
64231	143	8220DB000112
64232	143	8220DB000113
64233	143	8220DB000114
64234	143	8220DB000115
64235	143	8220DB000037
64236	143	8220DB000038
64237	143	8220DB000039
64238	143	8220DB000040
64239	143	8220DB000146
64240	143	8220DB000147
64241	143	8220DB000184
64242	143	8220DB000185
64243	143	8220DB000186
64244	143	8220DB000187
64245	143	8220DB000188
64246	143	8220DB000189
64247	143	8220DB000190
64248	143	8220DB000191
64249	143	8220DB000819
64250	143	8220DB004725
64251	143	8220DB000273
64252	143	8220DB000405
64253	143	8220DB000408
64254	143	8220DB000409
64255	143	8220DB000410
64256	143	8220DB000411
64257	143	8220DB000412
64258	143	8220DB000413
64259	143	8220DB000414
64260	143	8220DB000415
64261	143	8220DB000416
64262	143	8220DB000417
64263	143	8220DB000418
64264	143	8220DB000419
64265	143	8220DB000420
64266	143	8220DB000421
64267	143	8220DB000422
64268	143	8220DB000423
64269	143	8220DB000424
64270	143	8250DB000425
64271	143	8250DB000426
64272	143	8250DB000427
64273	143	8250DB000428
64274	143	8250DB000429
64275	143	8250DB006334
64276	143	8250DB007660
64277	143	8250DB003114
64278	143	8250DB003115
64279	143	8250DB003116
64280	143	8250DB006085
64281	143	8250DB002026
64282	144	8220DB000395
64283	144	8220DB000396
64284	144	8220DB000397
64285	144	8220DB000398
64286	144	8220DB000399
64287	144	8220DB000400
64288	144	8220DB004522
64289	144	8220DB001934
64290	144	8220DB002310
64291	144	8220DB002311
64292	144	8220DB002312
64293	144	8220DB002313
64294	144	8220DB002314
64295	144	8220DB002315
64296	144	8220DB002094
64297	144	8220DB001406
64298	144	8220DB001407
64299	144	8220DB001409
64300	144	8220DB002095
64301	144	8220DB002096
64302	144	8220DB002097
64303	144	8220DB002099
64304	144	8220DB002101
64305	144	8220DB002102
64306	144	8220DB002726
64307	144	8220DB002727
64308	144	8220DB002105
64309	144	8220DB002728
64310	144	8220DB002729
64311	144	8220DB002730
64312	144	8230DB006083
64313	144	8230DB002733
64314	144	8230DB002734
64315	144	8230DB005169
64316	144	8230DB002735
64317	144	8230DB002736
64318	144	8230DB002725
64319	144	8230DB002737
64320	144	8230DB002738
64321	144	8230DB002739
64322	144	8230DB007177
64323	144	8230DB002740
64324	144	8230DB002741
64325	144	8230DB002742
64326	144	8230DB002743
64327	144	8230DB002745
64328	144	8230DB002746
64329	144	8230DB002747
64330	144	8230DB002748
64331	144	8230DB007062
64332	144	8230DB006075
64333	144	8230DB002631
64334	144	8230DB002359
64335	144	8230DB002360
64336	145	8230DB004344
64337	145	8230DB002349
64338	145	8230DB002351
64339	145	8230DB002621
64340	145	8230DB002622
64341	145	8230DB002750
64342	145	8230DB002751
64343	145	8230DB002752
64344	145	8230DB007509
64345	145	8230DB002754
64346	145	8230DB002755
64347	145	8230DB002756
64348	145	8230DB002764
64349	145	8230DB007178
64350	145	8230DB002765
64351	145	8230DB002766
64352	145	8230DB002767
64353	145	8230DB002772
64354	145	8230DB002768
64355	145	8230DB002769
64356	145	8230DB002770
64357	145	8230DB002771
64358	145	8230DB002773
64359	145	8220DB002774
64360	145	8220DB002777
64361	145	8220DB002775
64362	145	8220DB002181
64363	145	8220DB002182
64364	145	8220DB002778
64365	145	8220DB002185
64366	145	8220DB007043
64367	145	8220DB001424
64368	145	8220DB002186
64369	145	8220DB002187
64370	145	8220DB002188
64371	145	8220DB002189
64372	145	8220DB001436
64373	145	8220DB003952
64374	145	8220DB002190
64375	145	8220DB004434
64376	145	8220DB002379
64377	145	8220DB002380
64378	145	8220DB002382
64379	145	8220DB005099
64380	145	8220DB002383
64381	145	8220DB002003
64382	145	8220DB001358
64383	145	8220DB000340
64384	145	8220DB000350
64385	145	8220DB000351
64386	145	8220DB000352
64387	145	8220DB000353
64388	146	8220DB004595
64389	146	8220DB004596
64390	146	8220DB004563
64391	146	8220DB001218
64392	146	8220DB001258
64393	146	8220DB001259
64394	146	8220DB001260
64395	146	8220DB006130
64396	146	8220DB001262
64397	146	8220DB004692
64398	146	8220DB001245
64399	146	8220DB004693
64400	146	8220DB001254
64401	146	8220DB001255
64402	146	8220DB001256
64403	146	8220DB004694
64404	146	8220DB001249
64405	146	8220DB001247
64406	146	8220DB001248
64407	146	8220DB001273
64408	146	8220DB001274
64409	146	8220DB001275
64410	146	8220DB001276
64411	146	8220DB001277
64412	146	8220DB001219
64413	146	8220DB001220
64414	146	8220DB001221
64415	146	8220DB000664
64416	146	8220DB000665
64417	146	8220DB000666
64418	146	8220DB000667
64419	146	8220DB000668
64420	146	8220DB000614
64421	146	8220DB000615
64422	146	8220DB000616
64423	146	8220DB000617
64424	146	8220DB000618
64425	146	8220DB000619
64426	146	8220DB000675
64427	146	8220DB001500
64428	146	8220DB000302
64429	146	8220DB004495
64430	146	8220DB004522
64431	146	8220DB001934
64432	146	8220DB002310
64433	146	8220DB002311
64434	146	8220DB002312
64435	146	8220DB002313
64436	146	8220DB002314
64437	146	8220DB002315
64438	146	8220DB002094
64439	146	8220DB001406
64440	146	8220DB001407
64441	146	8220DB001409
64442	146	8220DB002095
64443	146	8220DB002096
64444	146	8220DB002097
64445	146	8220DB002099
64446	146	8220DB002101
64447	146	8220DB002102
64448	146	8220DB002103
64449	146	8220DB002332
64450	146	8220DB002333
64451	146	8230DB002334
64452	146	8230DB004662
64453	146	8230DB002335
64454	146	8230DB002336
64455	146	8230DB002337
64456	146	8230DB002339
64457	146	8230DB002340
64458	146	8230DB002601
64459	146	8230DB004446
64460	146	8230DB002603
64461	146	8230DB002557
64462	146	8230DB004436
64463	146	8230DB005008
64464	146	8230DB004640
64465	146	8230DB004347
64466	146	8230DB002349
64467	146	8230DB002351
64468	146	8230DB002621
64469	146	8230DB002622
64470	146	8230DB002623
64471	146	8230DB002624
64472	146	8230DB004441
64473	146	8230DB002626
64474	146	8230DB002669
64475	146	8230DB004641
64476	146	8230DB004642
64477	147	8230DB002353
64478	147	8230DB004643
64479	147	8230DB004644
64480	147	8230DB004645
64481	147	8230DB004440
64482	147	8230DB002628
64483	147	8230DB002629
64484	147	8230DB006095
64485	147	8230DB007062
64486	147	8230DB006075
64487	147	8230DB002631
64488	147	8230DB002359
64489	147	8230DB002360
64490	147	8230DB004348
64491	147	8230DB004646
64492	147	8230DB004647
64493	147	8230DB002346
64494	147	8230DB004435
64495	147	8230DB002632
64496	147	8230DB002633
64497	147	8230DB002369
64498	147	8230DB002370
64499	147	8230DB002371
64500	147	8230DB002372
64501	147	8230DB002373
64502	147	8230DB002377
64503	147	8220DB002378
64504	147	8220DB002183
64505	147	8220DB002184
64506	147	8220DB002185
64507	147	8220DB007043
64508	147	8220DB001424
64509	147	8220DB002186
64510	147	8220DB002187
64511	147	8220DB002188
64512	147	8220DB002189
64513	147	8220DB001436
64514	147	8220DB003952
64515	147	8220DB002190
64516	147	8220DB004434
64517	147	8220DB002379
64518	147	8220DB002380
64519	147	8220DB002382
64520	147	8220DB005099
64521	147	8220DB002383
64522	147	8220DB002002
64523	147	8220DB001358
64524	147	8220DB000298
64525	147	8220DB000496
64526	147	8220DB000497
64527	147	8220DB000515
64528	147	8220DB000516
64529	147	8220DB004384
64530	147	8220DB000519
64531	147	8220DB000521
64532	147	8220DB000522
64533	147	8220DB000523
64534	147	8220DB000669
64535	147	8220DB000670
64536	147	8220DB000671
64537	147	8220DB000672
64538	147	8220DB004382
64539	147	8220DB001196
64540	147	8220DB001197
64541	147	8220DB001198
64542	147	8220DB001199
64543	147	8220DB001200
64544	147	8220DB004385
64545	147	8220DB001201
64546	147	8220DB004695
64547	147	8220DB001243
64548	147	8220DB004696
64549	147	8220DB004697
64550	147	8220DB001250
64551	147	8220DB004698
64552	147	8220DB004383
64553	147	8220DB004699
64554	147	8220DB004388
64555	147	8220DB004700
64556	147	8220DB001266
64557	147	8220DB001267
64558	147	8220DB001268
64559	147	8220DB001269
64560	147	8220DB001265
64561	147	8220DB006115
64562	147	8220DB004593
64563	148	8220DB007564
64564	148	8220DB000340
64565	148	8220DB000350
64566	148	8220DB000351
64567	148	8220DB000352
64568	148	8220DB000353
64569	148	8220DB000354
64570	148	8220DB000355
64571	148	8220DB000356
64572	148	8220DB000357
64573	148	8220DB000390
64574	148	8220DB000372
64575	148	8220DB000373
64576	148	8220DB000374
64577	148	8220DB007738
64578	148	8220DB007739
64579	148	8220DB002087
64580	148	8220DB007053
64581	148	8220DB002088
64582	148	8220DB002089
64583	148	8220DB000763
64584	148	8250DB002007
64585	148	8250DB002008
64586	148	8250DB002071
64587	148	8250DB002072
64588	148	8250DB002073
64589	148	8250DB002074
64590	148	8250DB002075
64591	148	8250DB002076
64592	148	8250DB000460
64593	148	8250DB002011
64594	148	8250DB002012
64595	148	8250DB003322
64596	148	8250DB003563
64597	148	8250DB000444
64598	148	8250DB000445
64599	148	8250DB004779
64600	148	8250DB007057
64601	148	8250DB005142
64602	148	8250DB007567
64603	148	8250DB007326
64604	148	8250DB007418
64605	148	8250DB007417
64606	148	8250DB003471
64607	148	8250DB003472
64608	148	8250DB003473
64609	148	8250DB005015
64610	148	8250DB007290
64611	149	8250DB005013
64612	149	8250DB005014
64613	149	8250DB007291
64614	149	8250DB003485
64615	149	8250DB003486
64616	149	8250DB003487
64617	149	8250DB007415
64618	149	8250DB007416
64619	149	8250DB007325
64620	149	8250DB004984
64621	149	8250DB000448
64622	149	8250DB003181
64623	149	8250DB000451
64624	149	8250DB000447
64625	149	8250DB005045
64626	149	8250DB004460
64627	149	8250DB000453
64628	149	8250DB004477
64629	149	8250DB003321
64630	149	8250DB002066
64631	149	8250DB002067
64632	149	8250DB004728
64633	149	8250DB000437
64634	149	8250DB000459
64635	149	8250DB002080
64636	149	8250DB002081
64637	149	8250DB002082
64638	149	8250DB002083
64639	149	8250DB002084
64640	149	8250DB000768
64641	149	8220DB002085
64642	149	8220DB002086
64643	149	8220DB004455
64644	149	8220DB000381
64645	149	8220DB007740
64646	149	8220DB007741
64647	149	8220DB000387
64648	149	8220DB000388
64649	149	8220DB000389
64650	149	8220DB000393
64651	149	8220DB000371
64652	149	8220DB000391
64653	149	8220DB000392
64654	149	8220DB000395
64655	149	8220DB000396
64656	149	8220DB000397
64657	149	8220DB000398
64658	149	8220DB000399
64659	149	8220DB000400
64660	150	8220DB004495
64661	150	8220DB004720
64662	150	8220DB001443
64663	150	8220DB001444
64664	150	8220DB001445
64665	150	8220DB007078
64666	150	8220DB001449
64667	150	8220DB001450
64668	150	8220DB001451
64669	150	8220DB001452
64670	150	8220DB002640
64671	150	8220DB002641
64672	150	8220DB001948
64673	150	8220DB001949
64674	150	8220DB001950
64675	150	8220DB001951
64676	150	8220DB001952
64677	150	8220DB001953
64678	150	8220DB001954
64679	150	8220DB001955
64680	150	8220DB001956
64681	150	8230DB001957
64682	150	8230DB001958
64683	150	8230DB001959
64684	150	8230DB001960
64685	150	8230DB004379
64686	150	8230DB007782
64687	150	8230DB001968
64688	150	8230DB001969
64689	150	8230DB001970
64690	150	8230DB001971
64691	150	8230DB002160
64692	150	8230DB002161
64693	150	8230DB004665
64694	150	8230DB004666
64695	150	8230DB004667
64696	150	8230DB002162
64697	150	8230DB002163
64698	150	8230DB002168
64699	150	8230DB004536
64700	150	8230DB006003
64701	150	8230DB005123
64702	150	8230DB005124
64703	150	8230DB005125
64704	150	8230DB006001
64705	150	8230DB004438
64706	150	8230DB003432
64707	150	8230DB003426
64708	150	8230DB003434
64709	150	8230DB003435
64710	150	8230DB003453
64711	150	8230DB003437
64712	150	8230DB003439
64713	150	8230DB003440
64714	150	8230DB004557
64715	150	8230DB003441
64716	150	8230DB004560
64717	151	8230DB004564
64718	151	8230DB003443
64719	151	8230DB003444
64720	151	8230DB003445
64721	151	8230DB003446
64722	151	8230DB003447
64723	151	8230DB003448
64724	151	8230DB003449
64725	151	8230DB003436
64726	151	8230DB007432
64727	151	8230DB003454
64728	151	8230DB003455
64729	151	8230DB003456
64730	151	8230DB003457
64731	151	8230DB003438
64732	151	8230DB005022
64733	151	8230DB006002
64734	151	8230DB005119
64735	151	8230DB005120
64736	151	8230DB005121
64737	151	8230DB005122
64738	151	8230DB003461
64739	151	8230DB004532
64740	151	8230DB004534
64741	151	8230DB004535
64742	151	8230DB002169
64743	151	8230DB002170
64744	151	8230DB004672
64745	151	8230DB003465
64746	151	8230DB004673
64747	151	8230DB002172
64748	151	8230DB002159
64749	151	8230DB004409
64750	151	8230DB001972
64751	151	8230DB001973
64752	151	8230DB001974
64753	151	8230DB007781
64754	151	8230DB001975
64755	151	8230DB001977
64756	151	8230DB001978
64757	151	8230DB001980
64758	151	8220DB001981
64759	151	8220DB004406
64760	151	8220DB001984
64761	151	8220DB001985
64762	151	8220DB001986
64763	151	8220DB001987
64764	151	8220DB001988
64765	151	8220DB002642
64766	151	8220DB007435
64767	151	8220DB002722
64768	151	8220DB001471
64769	151	8220DB001472
64770	151	8220DB004408
64771	151	8220DB001473
64772	151	8220DB001474
64773	151	8220DB001476
64774	151	8220DB007453
64775	151	8220DB001480
64776	151	8220DB002912
64777	151	8220DB001358
64778	152	8220DB004320
64779	152	8220DB001476
64780	152	8220DB007453
64781	152	8220DB001478
64782	152	8220DB001479
64783	152	8220DB007622
64784	152	8220DB000334
64785	152	8220DB000406
64786	152	8220DB000747
64787	152	8220DB000842
64788	152	8220DB000845
64789	152	8220DB000846
64790	152	8220DB000847
64791	152	8220DB000848
64792	152	8220DB002795
64793	152	8220DB000756
64794	152	8220DB000757
64795	152	8220DB000758
64796	152	8220DB000759
64797	152	8220DB000760
64798	152	8220DB000761
64799	152	8220DB000762
64800	152	8220DB000763
64801	152	8250DB002007
64802	152	8250DB002008
64803	152	8250DB002009
64804	152	8250DB002010
64805	152	8250DB000435
64806	152	8250DB007353
64807	152	8250DB004571
64808	152	8250DB002013
64809	152	8250DB002014
64810	152	8250DB004636
64811	152	8250DB002016
64812	152	8250DB002015
64813	152	8250DB002017
64814	152	8250DB003259
64815	152	8250DB007361
64816	152	8250DB007362
64817	152	8250DB003129
64818	152	8250DB003130
64819	152	8250DB003131
64820	152	8250DB003132
64821	152	8250DB003133
64822	152	8250DB003134
64823	152	8250DB003135
64824	152	8250DB003136
64825	152	8250DB003138
64826	152	8250DB003139
64827	152	8250DB004124
64828	152	8250DB004125
64829	152	8250DB004126
64830	152	8250DB004127
64831	152	8250DB004128
64832	152	8350DB004129
64833	152	8350DB004130
64834	152	8350DB004131
64835	152	8350DB007294
64836	152	8350DB004132
64837	152	8350DB004171
64838	152	8350DB004172
64839	152	8350DB004173
64840	152	8350DB002962
64841	152	8350DB002963
64842	152	8350DB002964
64843	152	8350DB004175
64844	152	8350DB005091
64845	152	8350DB005092
64846	153	8350DB007574
64847	153	8350DB004177
64848	153	8350DB004178
64849	153	8350DB004179
64850	153	8350DB002993
64851	153	8350DB002994
64852	153	8350DB004180
64853	153	8350DB004181
64854	153	8350DB004182
64855	153	8350DB004151
64856	153	8350DB002997
64857	153	8350DB004153
64858	153	8350DB004154
64859	153	8350DB004416
64860	153	8350DB004201
64861	153	8250DB004202
64862	153	8250DB004203
64863	153	8250DB005090
64864	153	8250DB004204
64865	153	8250DB004205
64866	153	8250DB004206
64867	153	8250DB003140
64868	153	8250DB003141
64869	153	8250DB003142
64870	153	8250DB003143
64871	153	8250DB003144
64872	153	8250DB003145
64873	153	8250DB003146
64874	153	8250DB003147
64875	153	8250DB003148
64876	153	8250DB005127
64877	153	8250DB005128
64878	153	8250DB002996
64879	153	8250DB003258
64880	153	8250DB002060
64881	153	8250DB002061
64882	153	8250DB002062
64883	153	8250DB002063
64884	153	8250DB002064
64885	153	8250DB002065
64886	153	8250DB004727
64887	153	8250DB004728
64888	153	8250DB000461
64889	153	8250DB002068
64890	153	8250DB002069
64891	153	8250DB002070
64892	153	8250DB002084
64893	153	8250DB000768
64894	153	8220DB000769
64895	153	8220DB000770
64896	153	8220DB000771
64897	153	8220DB000772
64898	153	8220DB000773
64899	153	8220DB000774
64900	153	8220DB000775
64901	153	8220DB000776
64902	153	8220DB000777
64903	153	8220DB000906
64904	153	8220DB000907
64905	153	8220DB000908
64906	153	8220DB000909
64907	153	8220DB000786
64908	153	8220DB000792
64909	153	8220DB007586
64910	153	8220DB007587
64911	153	8220DB007588
64912	153	8220DB000325
64913	153	8220DB001443
64914	153	8220DB001444
64915	153	8220DB001445
64916	153	8220DB004407
64917	154	8220DB007698
64918	154	8220DB007113
64919	154	8220DB000127
64920	154	8220DB000112
64921	154	8220DB000113
64922	154	8220DB000114
64923	154	8220DB000115
64924	154	8220DB000037
64925	154	8220DB000038
64926	154	8220DB000039
64927	154	8220DB000040
64928	154	8220DB000146
64929	154	8220DB000147
64930	154	8220DB000184
64931	154	8220DB000185
64932	154	8220DB000186
64933	154	8220DB000187
64934	154	8220DB000188
64935	154	8220DB000189
64936	154	8220DB000190
64937	154	8220DB000191
64938	154	8220DB000819
64939	154	8220DB000264
64940	154	8220DB006059
64941	154	8220DB000334
64942	154	8220DB000406
64943	154	8220DB000747
64944	154	8220DB000842
64945	154	8220DB000845
64946	154	8220DB000846
64947	154	8220DB000847
64948	154	8220DB000848
64949	154	8220DB002795
64950	154	8220DB000756
64951	154	8220DB000757
64952	154	8220DB000758
64953	154	8220DB000759
64954	154	8220DB000760
64955	154	8220DB000761
64956	154	8220DB000762
64957	154	8220DB000763
64958	154	8250DB002007
64959	154	8250DB002008
64960	154	8250DB002009
64961	154	8250DB002010
64962	154	8250DB000435
64963	154	8250DB007353
64964	154	8250DB004571
64965	154	8250DB002013
64966	154	8250DB002014
64967	154	8250DB004636
64968	154	8250DB002016
64969	154	8250DB002015
64970	154	8250DB002017
64971	154	8250DB003259
64972	154	8250DB007361
64973	154	8250DB007362
64974	154	8250DB003129
64975	154	8250DB003130
64976	154	8250DB003131
64977	154	8250DB003132
64978	154	8250DB003133
64979	154	8250DB003134
64980	154	8250DB003135
64981	154	8250DB003136
64982	154	8250DB003138
64983	154	8250DB003139
64984	154	8250DB004124
64985	154	8250DB004125
64986	154	8250DB004126
64987	154	8250DB004127
64988	154	8250DB004128
64989	154	8350DB004129
64990	154	8350DB004130
64991	154	8350DB004131
64992	154	8350DB007294
64993	154	8350DB004156
64994	155	8350DB004168
64995	155	8350DB004170
64996	155	8350DB004153
64997	155	8350DB004154
64998	155	8350DB004416
64999	155	8350DB004201
65000	155	8250DB004202
65001	155	8250DB004203
65002	155	8250DB005090
65003	155	8250DB004204
65004	155	8250DB004205
65005	155	8250DB004206
65006	155	8250DB003140
65007	155	8250DB003141
65008	155	8250DB003142
65009	155	8250DB003143
65010	155	8250DB003144
65011	155	8250DB003145
65012	155	8250DB003146
65013	155	8250DB003147
65014	155	8250DB003148
65015	155	8250DB005127
65016	155	8250DB005128
65017	155	8250DB002996
65018	155	8250DB003258
65019	155	8250DB002060
65020	155	8250DB002061
65021	155	8250DB002062
65022	155	8250DB002063
65023	155	8250DB002064
65024	155	8250DB002065
65025	155	8250DB004727
65026	155	8250DB004728
65027	155	8250DB000461
65028	155	8250DB002068
65029	155	8250DB002069
65030	155	8250DB002070
65031	155	8250DB002084
65032	155	8250DB000768
65033	155	8220DB000769
65034	155	8220DB000770
65035	155	8220DB000771
65036	155	8220DB000772
65037	155	8220DB000773
65038	155	8220DB000774
65039	155	8220DB000775
65040	155	8220DB000776
65041	155	8220DB000777
65042	155	8220DB000906
65043	155	8220DB000907
65044	155	8220DB000908
65045	155	8220DB000909
65046	155	8220DB000786
65047	155	8220DB000792
65048	155	8220DB000319
65049	155	8220DB000281
65050	155	8220DB000006
65051	155	8220DB000194
65052	155	8220DB000195
65053	155	8220DB000196
65054	155	8220DB000197
65055	155	8220DB000198
65056	155	8220DB000199
65057	155	8220DB000200
65058	155	8220DB000201
65059	155	8220DB000148
65060	155	8220DB000149
65061	155	8220DB000150
65062	155	8220DB000027
65063	155	8220DB000028
65064	155	8220DB000029
65065	155	8220DB004680
65066	155	8220DB000090
65067	155	8220DB000091
65068	155	8220DB000092
65069	155	8220DB000093
65070	155	8220DB000094
65071	155	8220DB000126
65072	155	8220DB006182
65073	155	8220DB000322
65074	156	8240DB007073
65075	156	8240DB007097
65076	156	8240DB007098
65077	156	8240DB007099
65078	156	8240DB007100
65079	156	8240DB007101
65080	156	8240DB007505
65081	156	8240DB007678
65082	156	8240DB007560
65083	156	8240DB007679
65084	156	8240DB007680
65085	156	8240DB007681
65086	156	8240DB007683
65087	156	8240DB001582
65088	156	8220DB004793
65089	156	8220DB006068
65090	156	8220DB001584
65091	156	8220DB001585
65092	156	8220DB001586
65093	156	8220DB001600
65094	156	8220DB007701
65095	156	8220DB007010
65096	156	8220DB007703
65097	156	8220DB005147
65098	156	8220DB000068
65099	156	8220DB000030
65100	156	8220DB000069
65101	157	8220DB007672
65102	157	8220DB000826
65103	157	8220DB000827
65104	157	8220DB000071
65105	157	8220DB000072
65106	157	8220DB005144
65107	157	8220DB007702
65108	157	8220DB007009
65109	157	8220DB001604
65110	157	8220DB001573
65111	157	8220DB001574
65112	157	8220DB001575
65113	157	8220DB004583
65114	157	8220DB001576
65115	157	8220DB001577
65116	157	8220DB001578
65117	157	8220DB004364
65118	157	8240DB001579
65119	157	8240DB007673
65120	157	8240DB007675
65121	157	8240DB007676
65122	157	8240DB007677
65123	157	8240DB007559
65124	157	8240DB007866
65125	157	8240DB007107
65126	157	8240DB007102
65127	157	8240DB007103
65128	157	8240DB007104
65129	157	8240DB007105
65130	157	8240DB007106
65131	157	8240DB006005
65132	158	8250DB000449
65133	158	8250DB000450
65134	158	8250DB003181
65135	158	8250DB000451
65136	158	8250DB000447
65137	158	8250DB005045
65138	158	8250DB004460
65139	158	8250DB000453
65140	158	8250DB000454
65141	158	8250DB004475
65142	158	8250DB003023
65143	158	8250DB003024
65144	158	8250DB003025
65145	158	8250DB003026
65146	158	8250DB003027
65147	158	8250DB003028
65148	158	8250DB003029
65149	158	8250DB003030
65150	158	8250DB003031
65151	158	8250DB000875
65152	158	8250DB000876
65153	158	8250DB000878
65154	158	8250DB000879
65155	158	8250DB000880
65156	158	8220DB000881
65157	158	8220DB000882
65158	158	8220DB000883
65159	158	8220DB000884
65160	158	8220DB000885
65161	158	8220DB000886
65162	158	8220DB000887
65163	158	8220DB000903
65164	158	8220DB000904
65165	158	8220DB000906
65166	158	8220DB000907
65167	158	8220DB000908
65168	158	8220DB000909
65169	158	8220DB000786
65170	158	8220DB000793
65171	158	8220DB000320
65172	158	8220DB000278
65173	158	8220DB000010
65174	158	8220DB000012
65175	158	8220DB000014
65176	158	8220DB000015
65177	158	8220DB000017
65178	158	8220DB000018
65179	158	8220DB000019
65180	158	8220DB000021
65181	158	8220DB007602
65182	158	8220DB000022
65183	158	8220DB000023
65184	158	8220DB000024
65185	158	8220DB000025
65186	158	8220DB000027
65187	158	8220DB000028
65188	158	8220DB000029
65189	158	8220DB004680
65190	158	8220DB000031
65191	158	8220DB000032
65192	158	8220DB000033
65193	158	8220DB007220
65194	159	8220DB006122
65195	159	8220DB000035
65196	159	8220DB000036
65197	159	8220DB000037
65198	159	8220DB000038
65199	159	8220DB000039
65200	159	8220DB000040
65201	159	8220DB000041
65202	159	8220DB000042
65203	159	8220DB000043
65204	159	8220DB000044
65205	159	8220DB007603
65206	159	8220DB000045
65207	159	8220DB000046
65208	159	8220DB000047
65209	159	8220DB000048
65210	159	8220DB000049
65211	159	8220DB000051
65212	159	8220DB000052
65213	159	8220DB000261
65214	159	8220DB000271
65215	159	8220DB000404
65216	159	8220DB000747
65217	159	8220DB000842
65218	159	8220DB000845
65219	159	8220DB000846
65220	159	8220DB000847
65221	159	8220DB000848
65222	159	8220DB000849
65223	159	8220DB000850
65224	159	8220DB000851
65225	159	8220DB000852
65226	159	8220DB000853
65227	159	8220DB000854
65228	159	8220DB000855
65229	159	8220DB000856
65230	159	8220DB000857
65231	159	8220DB000858
65232	159	8250DB000859
65233	159	8250DB000860
65234	159	8250DB000861
65235	159	8250DB000862
65236	159	8250DB003014
65237	159	8250DB003015
65238	159	8250DB003016
65239	159	8250DB003017
65240	159	8250DB003018
65241	159	8250DB003019
65242	159	8250DB003020
65243	159	8250DB003021
65244	159	8250DB003022
65245	159	8250DB000441
65246	159	8250DB000442
65247	159	8250DB000443
65248	159	8250DB000444
65249	159	8250DB000445
65250	159	8250DB004779
65251	159	8250DB007057
65252	159	8250DB004847
65253	160	8240DB004686
65254	160	8240DB004687
65255	160	8220DB000102
65256	160	8220DB006239
65257	160	8220DB000104
65258	160	8220DB006241
65259	160	8220DB000105
65260	160	8220DB004365
65261	160	8220DB004367
65262	160	8220DB004788
65263	160	8220DB006273
65264	160	8220DB000136
65265	160	8220DB000137
65266	160	8220DB000193
65267	160	8220DB000979
65268	160	8220DB001529
65269	160	8220DB001530
65270	160	8220DB001531
65271	160	8220DB001532
65272	160	8220DB001592
65273	160	8220DB001593
65274	160	8220DB001594
65275	160	8220DB001596
65276	160	8220DB004363
65277	160	8220DB001598
65278	160	8220DB001597
65279	160	8220DB001599
65280	160	8220DB001600
65281	160	8220DB001601
65282	160	8220DB001602
65283	160	8220DB001603
65284	160	8220DB001604
65285	160	8220DB001573
65286	160	8220DB001574
65287	160	8220DB001575
65288	160	8220DB004583
65289	160	8220DB001576
65290	160	8220DB001577
65291	160	8220DB001578
65292	160	8220DB004364
65293	160	8240DB001580
65294	160	8240DB007237
65295	160	8240DB007241
65296	160	8240DB007247
65297	160	8240DB007243
65298	160	8240DB007126
65299	160	8240DB007124
65300	160	8240DB007343
65301	160	8240DB007318
65302	160	8240DB004980
65303	160	8240DB002289
65304	160	8240DB001835
65305	160	8240DB001836
65306	160	8240DB001837
65307	160	8240DB002338
65308	160	8240DB002290
65309	160	8240DB006179
65310	160	8240DB007297
65311	160	8240DB001813
65312	160	8240DB001814
65313	160	8240DB000661
65314	160	8240DB007026
65315	160	8240DB001882
65316	160	8240DB001856
65317	160	8240DB001857
65318	160	8240DB001858
65319	160	8240DB001859
65320	160	8240DB001860
65321	160	8240DB004492
65322	160	8240DB001861
65323	160	8240DB001862
65324	160	8240DB001863
65325	160	8240DB001864
65326	160	8240DB001865
65327	160	8240DB001866
65328	160	8240DB001850
65329	160	8240DB001867
65330	160	8240DB004489
65331	160	8240DB004323
65332	160	8240DB001824
65333	160	8240DB001825
65334	160	8240DB001826
65335	161	8240DB001828
65336	161	8240DB001829
65337	161	8240DB001830
65338	161	8240DB001831
65339	161	8240DB004464
65340	161	8240DB001869
65341	161	8240DB001870
65342	161	8240DB001871
65343	161	8240DB001872
65344	161	8240DB001873
65345	161	8240DB001874
65346	161	8240DB001875
65347	161	8240DB001876
65348	161	8240DB001877
65349	161	8240DB001878
65350	161	8240DB001879
65351	161	8240DB001880
65352	161	8240DB001881
65353	161	8240DB004493
65354	161	8240DB004362
65355	161	8240DB004747
65356	161	8240DB002960
65357	161	8240DB001545
65358	161	8240DB001840
65359	161	8240DB001841
65360	161	8240DB001842
65361	161	8240DB007298
65362	161	8240DB002294
65363	161	8240DB006039
65364	161	8240DB001816
65365	161	8240DB001817
65366	161	8240DB001818
65367	161	8240DB001819
65368	161	8240DB001820
65369	161	8240DB002468
65370	161	8240DB007319
65371	161	8240DB007342
65372	161	8240DB007125
65373	161	8240DB007344
65374	161	8240DB002510
65375	161	8240DB007242
65376	161	8240DB007238
65377	161	8240DB007224
65378	161	8240DB001581
65379	161	8220DB004793
65380	161	8220DB006068
65381	161	8220DB001584
65382	161	8220DB001585
65383	161	8220DB001586
65384	161	8220DB001600
65385	161	8220DB001601
65386	161	8220DB001602
65387	161	8220DB001603
65388	161	8220DB001604
65389	161	8220DB001587
65390	161	8220DB004539
65391	161	8220DB001606
65392	161	8220DB001607
65393	161	8220DB001608
65394	161	8220DB001609
65395	161	8220DB001610
65396	161	8220DB007471
65397	161	8220DB001512
65398	161	8220DB001538
65399	161	8220DB001513
65400	161	8220DB004592
65401	161	8220DB004375
65402	161	8220DB004366
65403	161	8220DB004479
65404	161	8220DB004376
65405	161	8220DB004377
65406	161	8220DB004890
65407	161	8220DB004369
65408	161	8220DB004368
65409	161	8220DB004781
65410	161	8220DB000107
65411	161	8220DB007092
65412	161	8220DB000110
65413	161	8240DB000124
65414	161	8240DB004686
65415	161	8240DB004687
65416	161	8220DB000112
65417	161	8220DB000113
65418	161	8220DB000114
65419	161	8240DB001645
65420	161	8220DB001646
65421	162	8250DB002039
65422	162	8250DB002040
65423	162	8250DB002041
65424	162	8250DB002042
65425	162	8250DB002043
65426	162	8250DB002044
65427	162	8250DB002045
65428	162	8250DB002046
65429	162	8250DB004568
65430	162	8250DB004569
65431	162	8250DB004570
65432	162	8250DB002056
65433	162	8250DB002057
65434	162	8250DB002058
65435	162	8250DB002059
65436	162	8250DB002060
65437	162	8250DB002061
65438	162	8250DB002062
65439	162	8250DB002063
65440	162	8250DB002064
65441	162	8250DB002065
65442	162	8250DB004727
65443	162	8250DB004728
65444	162	8250DB000461
65445	162	8250DB002068
65446	162	8250DB002069
65447	162	8250DB002070
65448	162	8250DB002084
65449	162	8250DB000768
65450	162	8220DB000769
65451	162	8220DB000770
65452	162	8220DB000771
65453	162	8220DB000772
65454	162	8220DB000773
65455	162	8220DB000774
65456	162	8220DB000775
65457	162	8220DB000776
65458	162	8220DB000777
65459	162	8220DB000906
65460	162	8220DB000907
65461	162	8220DB000908
65462	162	8220DB000909
65463	162	8220DB000786
65464	162	8220DB000792
65465	162	8220DB000320
65466	162	8220DB000278
65467	162	8220DB000002
65468	162	8220DB000192
65469	162	8220DB000795
65470	162	8220DB000796
65471	162	8220DB000797
65472	162	8220DB000798
65473	162	8220DB000799
65474	162	8220DB000800
65475	162	8220DB000801
65476	162	8220DB000802
65477	162	8220DB000803
65478	162	8220DB000804
65479	162	8220DB007877
65480	162	8220DB007513
65481	163	8220DB000807
65482	163	8220DB000808
65483	163	8220DB000809
65484	163	8220DB000810
65485	163	8220DB000811
65486	163	8220DB000812
65487	163	8220DB000813
65488	163	8220DB000814
65489	163	8220DB000081
65490	163	8220DB000817
65491	163	8220DB000818
65492	163	8220DB000819
65493	163	8220DB000264
65494	163	8220DB006059
65495	163	8220DB000334
65496	163	8220DB000406
65497	163	8220DB000747
65498	163	8220DB000842
65499	163	8220DB000845
65500	163	8220DB000846
65501	163	8220DB000847
65502	163	8220DB000848
65503	163	8220DB002795
65504	163	8220DB000756
65505	163	8220DB000757
65506	163	8220DB000758
65507	163	8220DB000759
65508	163	8220DB000760
65509	163	8220DB000761
65510	163	8220DB000762
65511	163	8220DB000763
65512	163	8250DB002007
65513	163	8250DB002008
65514	163	8250DB002009
65515	163	8250DB002010
65516	163	8250DB000435
65517	163	8250DB007353
65518	163	8250DB004571
65519	163	8250DB002013
65520	163	8250DB002014
65521	163	8250DB004636
65522	163	8250DB002016
65523	163	8250DB002015
65524	163	8250DB002017
65525	163	8250DB002018
65526	163	8250DB002019
65527	163	8250DB002020
65528	163	8250DB002021
65529	163	8250DB002022
65530	163	8250DB004565
65531	163	8250DB004566
65532	163	8250DB004567
65533	163	8250DB002031
65534	163	8250DB002032
65535	163	8250DB002033
65536	163	8250DB002034
65537	163	8250DB002035
65538	163	8250DB002036
65539	164	8230DB002934
65540	164	8230DB002935
65541	164	8230DB002936
65542	164	8230DB002937
65543	164	8230DB002938
65544	164	8230DB007440
65545	164	8230DB002940
65546	164	8230DB002948
65547	164	8230DB002949
65548	164	8230DB002950
65549	164	8230DB002954
65550	164	8230DB007067
65551	164	8230DB002956
65552	164	8230DB002965
65553	164	8230DB007448
65554	164	8230DB002967
65555	164	8230DB002968
65556	164	8250DB002969
65557	164	8250DB002970
65558	164	8250DB004988
65559	164	8250DB004707
65560	164	8250DB004708
65561	164	8250DB004336
65562	164	8250DB004337
65563	164	8250DB001310
65564	164	8250DB001311
65565	164	8250DB001312
65566	164	8250DB001313
65567	164	8250DB001055
65568	164	8250DB002868
65569	165	8250DB002825
65570	165	8250DB002867
65571	165	8250DB001035
65572	165	8250DB001314
65573	165	8250DB001316
65574	165	8250DB001315
65575	165	8250DB004332
65576	165	8250DB004333
65577	165	8250DB004334
65578	165	8250DB004712
65579	165	8250DB004582
65580	165	8250DB004987
65581	165	8250DB002979
65582	165	8230DB002980
65583	165	8230DB002981
65584	165	8230DB007447
65585	165	8230DB002954
65586	165	8230DB007067
65587	165	8230DB002956
65588	165	8230DB002965
65589	165	8230DB002983
65590	165	8230DB002984
65591	165	8230DB007449
65592	165	8230DB002927
65593	165	8230DB002929
65594	165	8230DB002930
65595	165	8230DB007441
65596	166	8220DB002670
65597	166	8220DB002910
65598	166	8220DB002911
65599	166	8220DB007507
65600	166	8220DB002663
65601	166	8220DB002664
65602	166	8220DB002665
65603	166	8220DB002666
65604	166	8220DB002667
65605	166	8220DB002696
65606	166	8220DB002697
65607	166	8220DB002700
65608	166	8220DB002701
65609	166	8220DB002702
65610	166	8220DB002703
65611	166	8220DB002704
65612	166	8220DB002706
65613	166	8220DB006070
65614	166	8220DB002708
65615	166	8220DB005134
65616	166	8220DB002718
65617	166	8220DB002719
65618	166	8220DB007435
65619	166	8220DB002722
65620	166	8220DB004413
65621	166	8220DB001476
65622	166	8220DB007453
65623	166	8220DB001480
65624	166	8220DB002912
65625	166	8220DB001358
65626	167	8220DB000326
65627	167	8220DB001443
65628	167	8220DB001444
65629	167	8220DB001445
65630	167	8220DB004407
65631	167	8220DB002637
65632	167	8220DB002638
65633	167	8220DB002640
65634	167	8220DB002641
65635	167	8220DB002643
65636	167	8220DB002644
65637	167	8220DB002645
65638	167	8220DB002646
65639	167	8220DB002647
65640	167	8220DB002648
65641	167	8220DB002649
65642	167	8220DB002650
65643	167	8220DB002652
65644	167	8220DB002653
65645	167	8220DB002654
65646	167	8220DB002655
65647	167	8220DB002656
65648	167	8220DB002657
65649	167	8220DB002658
65650	167	8220DB002659
65651	167	8220DB002660
65652	167	8220DB002661
65653	167	8220DB002662
65654	167	8220DB002909
65655	167	8220DB002906
65656	167	8220DB002907
65657	168	8240DB003732
65658	168	8240DB003733
65659	168	8240DB003734
65660	168	8240DB003735
65661	168	8240DB007204
65662	168	8240DB003736
65663	168	8240DB003739
65664	168	8240DB003738
65665	168	8240DB007170
65666	168	8240DB003740
65667	168	8240DB003741
65668	168	8240DB005165
65669	168	8240DB007169
65670	168	8240DB003743
65671	168	8240DB003780
65672	168	8240DB007723
65673	168	8240DB003745
65674	168	8240DB003746
65675	168	8240DB007040
65676	168	8240DB003749
65677	168	8240DB003750
65678	168	8240DB003752
65679	168	8240DB003751
65680	168	8240DB003689
65681	168	8240DB003690
65682	169	8240DB004330
65683	169	8240DB003679
65684	169	8240DB003711
65685	169	8240DB003712
65686	169	8240DB003713
65687	169	8240DB003714
65688	169	8240DB007041
65689	169	8240DB003719
65690	169	8240DB003718
65691	169	8240DB007724
65692	169	8240DB007691
65693	169	8240DB003721
65694	169	8240DB003722
65695	169	8240DB005069
65696	169	8240DB003723
65697	169	8240DB003724
65698	169	8240DB003725
65699	169	8240DB003726
65700	169	8240DB007039
65701	169	8240DB007204
65702	169	8240DB003728
65703	169	8240DB003729
65704	169	8240DB003730
65705	170	8230DB004715
65706	170	8230DB07755
65707	170	8230DB007793
65708	170	8230DB007773
65709	170	8230DB007769
65710	170	8230DB007807
65711	170	8230DB007809
65712	170	8230DB005138
65713	170	8230DB007751
65714	170	8230DB004611
65715	170	8230DB004612
65716	170	8230DB004613
65717	170	8230DB003370
65718	170	8230DB007168
65719	170	8230DB004616
65720	170	8230DB002227
65721	170	8230DB007775
65722	170	8230DB003886
65723	170	8230DB003887
65724	170	8230DB003888
65725	170	8230DB007810
65726	170	8230DB007749
65727	170	8230DB007801
65728	171	8230DB006290
65729	171	8230DB007800
65730	171	8230DB003890
65731	171	8230DB003891
65732	171	8230DB003949
65733	171	8230DB003950
65734	171	8230DB007774
65735	171	8230DB002225
65736	171	8230DB004620
65737	171	8230DB007563
65738	171	8230DB003368
65739	171	8230DB004626
65740	171	8230DB004627
65741	171	8230DB004327
65742	171	8230DB007752
65743	171	8230DB007808
65744	171	8230DB007806
65745	171	8230DB007768
65746	171	8230DB007772
65747	171	8230DB007792
65748	171	8230DB007754
65749	172	8240DB007073
65750	172	8240DB007097
65751	172	8240DB007098
65752	172	8240DB007099
65753	172	8240DB007100
65754	172	8240DB007101
65755	172	8240DB007505
65756	172	8240DB005071
65757	172	8240DB005072
65758	172	8240DB004980
65759	172	8240DB002289
65760	172	8240DB001835
65761	172	8240DB001836
65762	172	8240DB001837
65763	172	8240DB002338
65764	172	8240DB000661
65765	172	8240DB007026
65766	172	8240DB004323
65767	172	8240DB001824
65768	172	8240DB001825
65769	172	8240DB001826
65770	173	8240DB001828
65771	173	8240DB001829
65772	173	8240DB001830
65773	173	8240DB001831
65774	173	8240DB004747
65775	173	8240DB002960
65776	173	8240DB001545
65777	173	8240DB001816
65778	173	8240DB001817
65779	173	8240DB001818
65780	173	8240DB001819
65781	173	8240DB001820
65782	173	8240DB002468
65783	173	8240DB004978
65784	173	8240DB004979
65785	173	8240DB004986
65786	173	8240DB007107
65787	173	8240DB007102
65788	173	8240DB007103
65789	173	8240DB007104
65790	173	8240DB007105
65791	173	8240DB007106
65792	173	8240DB006005
65793	173	8240DB001546
65794	174	8250DB003057
65795	174	8250DB003059
65796	174	8250DB003060
65797	174	8250DB003061
65798	174	8250DB003062
65799	174	8250DB003063
65800	174	8250DB003064
65801	174	8250DB003065
65802	174	8250DB003066
65803	174	8250DB003067
65804	174	8250DB003202
65805	174	8250DB003203
65806	174	8250DB003204
65807	174	8250DB007554
65808	174	8250DB004568
65809	174	8250DB004569
65810	174	8250DB002023
65811	174	8250DB002024
65812	174	8250DB002025
65813	174	8250DB006086
65814	174	8250DB007419
65815	174	8250DB007420
65816	174	8250DB003345
65817	174	8250DB004727
65818	174	8250DB004728
65819	174	8250DB000461
65820	174	8250DB002068
65821	174	8250DB002069
65822	174	8250DB002070
65823	174	8250DB002084
65824	174	8250DB000768
65825	174	8220DB000769
65826	174	8220DB000770
65827	174	8220DB000771
65828	174	8220DB000772
65829	174	8220DB000773
65830	174	8220DB000774
65831	174	8220DB000775
65832	174	8220DB000776
65833	174	8220DB000777
65834	174	8220DB000906
65835	174	8220DB000907
65836	174	8220DB000908
65837	174	8220DB000909
65838	174	8220DB000786
65839	174	8220DB000792
65840	174	8220DB007586
65841	174	8220DB007587
65842	174	8220DB000345
65843	174	8220DB000320
65844	174	8220DB000281
65845	174	8220DB000004
65846	174	8220DB007555
65847	175	8220DB004962
65848	175	8220DB004725
65849	175	8220DB006059
65850	175	8220DB000334
65851	175	8220DB000406
65852	175	8220DB000747
65853	175	8220DB000842
65854	175	8220DB000845
65855	175	8220DB000846
65856	175	8220DB000847
65857	175	8220DB000848
65858	175	8220DB002795
65859	175	8220DB000756
65860	175	8220DB000757
65861	175	8220DB000758
65862	175	8220DB000759
65863	175	8220DB000760
65864	175	8220DB000761
65865	175	8220DB000762
65866	175	8220DB000763
65867	175	8250DB002007
65868	175	8250DB002008
65869	175	8250DB002009
65870	175	8250DB002010
65871	175	8250DB000435
65872	175	8250DB007353
65873	175	8250DB007584
65874	175	8250DB003344
65875	175	8250DB007421
65876	175	8250DB007422
65877	175	8250DB006085
65878	175	8250DB002053
65879	175	8250DB002054
65880	175	8250DB002055
65881	175	8250DB004565
65882	175	8250DB004566
65883	175	8250DB004567
65884	175	8250DB007553
65885	175	8250DB003238
65886	175	8250DB003239
65887	175	8250DB003240
65888	175	8250DB003048
65889	175	8250DB003049
65890	175	8250DB003050
65891	175	8250DB003051
65892	175	8250DB003052
65893	175	8250DB003053
65894	175	8250DB003054
65895	175	8250DB003055
65896	175	8250DB003056
65897	176	8250DB003544
65898	176	8250DB003552
65899	176	8250DB003553
65900	176	8250DB003554
65901	176	8250DB003555
65902	176	8250DB003556
65903	176	8250DB003557
65904	176	8250DB007317
65905	176	8250DB003224
65906	176	8250DB003225
65907	176	8250DB003226
65908	176	8250DB003227
65909	176	8250DB003228
65910	176	8250DB003229
65911	176	8250DB007472
65912	176	8250DB003230
65913	176	8250DB003231
65914	176	8250DB003246
65915	176	8250DB003247
65916	176	8250DB007056
65917	176	8250DB004731
65918	176	8250DB002023
65919	176	8250DB002024
65920	176	8250DB002025
65921	176	8250DB006086
65922	176	8250DB007419
65923	176	8250DB007420
65924	176	8250DB003345
65925	176	8250DB004727
65926	176	8250DB004728
65927	176	8250DB000461
65928	176	8250DB002068
65929	176	8250DB002069
65930	176	8250DB002070
65931	176	8250DB002084
65932	176	8250DB000768
65933	176	8220DB000769
65934	176	8220DB000770
65935	176	8220DB000771
65936	176	8220DB000772
65937	176	8220DB000773
65938	176	8220DB000774
65939	176	8220DB000775
65940	176	8220DB000776
65941	176	8220DB000777
65942	176	8220DB000906
65943	176	8220DB000907
65944	176	8220DB000908
65945	176	8220DB000909
65946	176	8220DB000786
65947	176	8220DB000792
65948	176	8220DB007586
65949	176	8220DB007587
65950	176	8220DB000345
65951	176	8220DB000320
65952	176	8220DB000281
65953	176	8220DB000004
65954	177	8220DB004962
65955	177	8220DB006059
65956	177	8220DB000334
65957	177	8220DB000406
65958	177	8220DB000747
65959	177	8220DB000842
65960	177	8220DB000845
65961	177	8220DB000846
65962	177	8220DB000847
65963	177	8220DB000848
65964	177	8220DB002795
65965	177	8220DB000756
65966	177	8220DB000757
65967	177	8220DB000758
65968	177	8220DB000759
65969	177	8220DB000760
65970	177	8220DB000761
65971	177	8220DB000762
65972	177	8220DB000763
65973	177	8250DB002007
65974	177	8250DB002008
65975	177	8250DB002009
65976	177	8250DB002010
65977	177	8250DB000435
65978	177	8250DB007353
65979	177	8250DB007584
65980	177	8250DB003344
65981	177	8250DB007421
65982	177	8250DB007422
65983	177	8250DB006085
65984	177	8250DB002053
65985	177	8250DB002054
65986	177	8250DB002055
65987	177	8250DB004732
65988	177	8250DB003243
65989	177	8250DB003244
65990	177	8250DB003245
65991	177	8250DB003212
65992	177	8250DB003213
65993	177	8250DB003214
65994	177	8250DB003215
65995	177	8250DB003216
65996	177	8250DB003217
65997	177	8250DB003218
65998	177	8250DB003219
65999	177	8250DB003537
66000	177	8250DB003538
66001	177	8250DB007556
66002	177	8250DB003539
66003	177	8250DB003540
66004	177	8250DB003541
66005	177	8250DB003542
66006	178	8250DB000765
66007	178	8250DB002007
66008	178	8250DB002008
66009	178	8250DB002071
66010	178	8250DB002072
66011	178	8250DB000867
66012	178	8250DB002825
66013	178	8250DB007716
66014	178	8250DB007717
66015	178	8250DB002845
66016	178	8250DB002846
66017	178	8250DB002847
66018	178	8250DB004397
66019	178	8250DB002978
66020	178	8250DB002979
66021	178	8230DB002980
66022	178	8230DB002981
66023	178	8230DB007447
66024	178	8230DB002983
66025	178	8230DB002984
66026	178	8230DB007449
66027	178	8230DB007442
66028	178	8230DB007446
66029	178	8230DB001149
66030	178	8230DB004869
66031	178	8230DB004870
66032	178	8230DB004871
66033	178	8230DB004872
66034	178	8230DB004873
66035	178	8230DB004874
66036	178	8230DB002532
66037	178	8230DB002533
66038	178	8230DB002534
66039	178	8230DB002535
66040	178	8230DB002536
66041	178	8230DB002616
66042	178	8230DB002617
66043	178	8230DB002557
66044	178	8230DB004436
66045	178	8230DB002363
66046	178	8230DB005008
66047	178	8230DB004640
66048	178	8230DB004347
66049	178	8230DB002349
66050	178	8230DB002351
66051	178	8230DB002621
66052	178	8230DB004644
66053	178	8230DB004645
66054	178	8230DB004930
66055	178	8230DB004931
66056	178	8230DB007459
66057	178	8230DB005022
66058	179	8230DB006001
66059	179	8230DB004438
66060	179	8230DB004713
66061	179	8230DB004714
66062	179	8230DB004960
66063	179	8230DB002669
66064	179	8230DB010334
66065	179	8230DB006075
66066	179	8230DB002631
66067	179	8230DB002359
66068	179	8230DB002360
66069	179	8230DB004348
66070	179	8230DB004646
66071	179	8230DB004647
66072	179	8230DB002346
66073	179	8230DB004435
66074	179	8230DB002604
66075	179	8230DB002605
66076	179	8230DB002538
66077	179	8230DB002539
66078	179	8230DB002540
66079	179	8230DB004882
66080	179	8230DB004883
66081	179	8230DB004884
66082	179	8230DB004885
66083	179	8230DB004886
66084	179	8230DB004887
66085	179	8230DB007443
66086	179	8230DB007444
66087	179	8230DB002948
66088	179	8230DB002949
66089	179	8230DB002950
66090	179	8230DB007448
66091	179	8230DB002967
66092	179	8230DB002968
66093	179	8250DB002969
66094	179	8250DB002970
66095	179	8250DB002971
66096	179	8250DB002858
66097	179	8250DB002859
66098	179	8250DB002860
66099	179	8250DB002861
66100	179	8250DB002841
66101	179	8250DB002865
66102	179	8250DB002866
66103	179	8250DB007719
66104	179	8250DB002052
66105	179	8250DB002082
66106	179	8250DB002083
66107	179	8250DB002084
66108	180	8220DB004495
66109	180	8220DB004720
66110	180	8220DB001443
66111	180	8220DB001444
66112	180	8220DB001445
66113	180	8220DB004407
66114	180	8220DB002637
66115	180	8220DB001956
66116	180	8230DB002109
66117	180	8230DB003427
66118	180	8230DB003428
66119	180	8230DB003432
66120	180	8230DB003434
66121	180	8230DB003453
66122	180	8230DB003437
66123	180	8230DB003440
66124	180	8230DB003441
66125	180	8230DB004560
66126	181	8230DB004564
66127	181	8230DB003444
66128	181	8230DB003447
66129	181	8230DB003454
66130	181	8230DB003455
66131	181	8230DB005022
66132	181	8230DB003461
66133	181	8230DB004537
66134	181	8230DB002176
66135	181	8220DB001982
66136	181	8220DB007435
66137	181	8220DB004413
66138	181	8220DB001480
66139	181	8220DB001358
66140	182	8250DB003283
66141	182	8250DB003284
66142	182	8250DB003310
66143	182	8250DB003481
66144	182	8250DB003482
66145	182	8250DB003483
66146	182	8250DB003484
66147	182	8250DB003485
66148	182	8250DB003486
66149	182	8250DB003487
66150	182	8250DB007415
66151	182	8250DB007416
66152	182	8250DB007325
66153	182	8250DB003317
66154	182	8250DB003318
66155	182	8250DB003320
66156	182	8250DB002064
66157	182	8250DB002065
66158	182	8250DB004727
66159	182	8250DB004728
66160	182	8250DB000461
66161	182	8250DB002068
66162	182	8250DB002069
66163	182	8250DB002070
66164	182	8250DB002084
66165	182	8250DB000768
66166	182	8220DB000769
66167	182	8220DB000770
66168	182	8220DB000771
66169	182	8220DB000772
66170	182	8220DB000773
66171	182	8220DB000774
66172	182	8220DB000775
66173	182	8220DB000776
66174	182	8220DB000777
66175	182	8220DB000906
66176	182	8220DB000907
66177	182	8220DB000908
66178	182	8220DB000909
66179	182	8220DB000786
66180	182	8220DB000792
66181	182	8220DB007586
66182	182	8220DB007587
66183	183	8250DB004953
66184	183	8250DB000768
66185	183	8220DB000769
66186	183	8220DB000770
66187	183	8220DB000771
66188	183	8220DB000772
66189	183	8220DB000773
66190	183	8220DB000774
66191	183	8220DB000775
66192	183	8220DB000776
66193	183	8220DB000777
66194	183	8220DB000906
66195	183	8220DB000909
66196	183	8220DB000790
66197	183	8220DB007585
66198	183	8220DB007587
66199	183	8220DB000407
66200	183	8220DB002498
66201	183	8220DB002499
66202	183	8220DB002500
66203	183	8220DB002501
66204	183	8220DB007623
66205	183	8240DB005030
66206	183	8240DB005031
66207	183	8240DB006033
66208	183	8240DB003089
66209	183	8240DB003090
66210	183	8240DB003706
66211	183	8240DB003707
66212	183	8240DB003708
66213	183	8240DB003709
66214	183	8240DB003710
66215	183	8240DB004925
66216	183	8240DB003679
66217	183	8240DB005075
66218	183	8240DB005076
66219	183	8240DB003682
66220	183	8240DB003864
66221	183	8240DB003865
66222	183	8240DB004910
66223	183	8240DB004911
66224	183	8240DB004912
66225	183	8240DB004913
66226	183	8240DB004914
66227	183	8240DB004915
66228	184	8240DB007654
66229	184	8240DB004843
66230	184	8240DB004905
66231	184	8240DB004906
66232	184	8240DB004907
66233	184	8240DB004908
66234	184	8240DB004909
66235	184	8240DB003884
66236	184	8240DB003686
66237	184	8240DB005077
66238	184	8240DB003694
66239	184	8240DB003695
66240	184	8240DB007115
66241	184	8240DB006310
66242	184	8240DB006311
66243	184	8220DB004495
66244	184	8220DB002809
66245	184	8220DB002810
66246	184	8220DB000842
66247	184	8220DB000845
66248	184	8220DB000846
66249	184	8220DB000847
66250	184	8220DB000848
66251	184	8220DB002795
66252	184	8220DB000756
66253	184	8220DB000757
66254	184	8220DB000758
66255	184	8220DB000759
66256	184	8220DB000760
66257	184	8220DB000762
66258	184	8220DB000763
66259	185	8350DB004108
66260	185	8350DB004109
66261	185	8350DB004110
66262	185	8350DB004111
66263	185	8350DB004112
66264	185	8350DB004113
66265	185	8350DB004095
66266	185	8350DB004192
66267	185	8350DB004194
66268	185	8350DB004196
66269	185	8350DB004422
66270	185	8350DB007369
66271	185	8350DB007295
66272	185	8350DB004199
66273	185	8350DB004416
66274	185	8350DB004417
66275	185	8350DB004419
66276	185	8350DB004420
66277	185	8350DB004421
66278	185	8350DB002113
66279	185	8350DB004131
66280	185	8350DB007294
66281	185	8350DB004156
66282	186	8350DB004167
66283	186	8350DB004170
66284	186	8350DB004153
66285	186	8350DB004154
66286	186	8350DB004416
66287	186	8350DB004417
66288	186	8350DB004419
66289	186	8350DB004420
66290	186	8350DB004421
66291	186	8350DB002113
66292	186	8350DB004183
66293	186	8350DB004184
66294	186	8350DB004185
66295	186	8350DB004584
66296	186	8350DB004186
66297	186	8350DB004187
66298	186	8350DB004189
66299	186	8350DB004190
66300	186	8350DB004103
66301	186	8350DB004104
66302	186	8350DB004105
66303	186	8350DB004106
66304	186	8350DB006139
66305	187	8250DB006041
66306	187	8250DB007716
66307	187	8250DB007717
66308	187	8250DB002829
66309	187	8250DB002830
66310	187	8250DB002831
66311	187	8250DB002832
66312	187	8250DB002833
66313	187	8250DB006006
66314	187	8250DB003493
66315	187	8250DB003494
66316	187	8250DB003495
66317	187	8250DB003496
66318	187	8250DB003497
66319	187	8250DB003498
66320	187	8250DB003499
66321	187	8250DB003500
66322	187	8250DB003501
66323	187	8250DB003502
66324	187	8250DB003503
66325	187	8250DB003504
66326	187	8250DB003505
66327	187	8250DB003506
66328	187	8250DB003507
66329	187	8250DB003508
66330	187	8250DB003510
66331	187	8250DB003512
66332	188	8250DB003514
66333	188	8250DB003515
66334	188	8250DB003516
66335	188	8250DB003517
66336	188	8250DB003518
66337	188	8250DB003519
66338	188	8250DB003521
66339	188	8250DB003523
66340	188	8250DB003524
66341	188	8250DB003525
66342	188	8250DB003527
66343	188	8250DB003528
66344	188	8250DB003529
66345	188	8250DB003532
66346	188	8250DB003533
66347	188	8250DB003491
66348	188	8250DB006007
66349	188	8250DB002836
66350	188	8250DB002837
66351	188	8250DB002838
66352	188	8250DB002839
66353	188	8250DB002840
66354	188	8250DB002841
66355	188	8250DB002865
66356	188	8250DB002866
66357	189	8220DB000342
66358	189	8220DB004495
66359	189	8220DB000746
66360	189	8220DB000844
66361	189	8220DB000846
66362	189	8220DB000848
66363	189	8220DB000758
66364	189	8220DB000760
66365	189	8250DB002007
66366	189	8250DB004571
66367	189	8250DB002014
66368	189	8250DB002016
66369	189	8250DB002017
66370	189	8250DB007362
66371	189	8250DB003134
66372	189	8250DB003135
66373	189	8350DB007363
66374	189	8350DB004588
66375	189	8350DB004589
66376	189	8350DB007364
66377	189	8350DB007365
66378	189	8350DB004210
66379	189	8350DB004211
66380	189	8350DB004215
66381	189	8350DB004216
66382	189	8350DB004222
66383	189	8350DB004224
66384	189	8350DB004225
66385	189	8350DB007462
66386	189	8350DB007461
66387	189	8350DB004230
66388	189	8350DB004248
66389	189	8350DB004252
66390	189	8350DB006137
66391	190	8220DB004495
66392	190	8220DB000746
66393	190	8220DB000844
66394	190	8220DB000846
66395	190	8220DB000848
66396	190	8220DB000758
66397	190	8220DB000760
66398	190	8250DB002007
66399	190	8250DB004571
66400	190	8250DB002014
66401	190	8250DB002016
66402	190	8250DB002017
66403	190	8250DB007362
66404	190	8250DB003134
66405	190	8250DB003135
66406	190	8350DB007363
66407	190	8350DB004588
66408	190	8350DB004589
66409	190	8350DB007364
66410	190	8350DB007365
66411	190	8350DB004210
66412	190	8350DB004211
66413	190	8350DB004215
66414	190	8350DB004216
66415	190	8350DB004222
66416	190	8350DB004224
66417	190	8350DB004225
66418	190	8350DB007462
66419	190	8350DB007461
66420	190	8350DB004230
66421	190	8350DB004248
66422	190	8350DB004252
66423	190	8350DB006137
66424	191	8220DB000956
66425	191	8240DB000957
66426	191	8220DB000958
66427	191	8220DB000959
66428	191	8220DB000960
66429	191	8220DB000961
66430	191	8220DB000962
66431	191	8220DB000963
66432	191	8220DB000964
66433	191	8220DB000965
66434	191	8220DB000966
66435	191	8220DB000967
66436	191	8220DB000968
66437	191	8220DB001252
66438	191	8220DB001228
66439	191	8220DB001244
66440	191	8220DB004597
66441	191	8220DB001246
66442	191	8220DB001229
66443	191	8220DB005174
66444	191	8220DB006078
66445	191	8220DB007112
66446	191	8220DB000972
66447	191	8240DB000973
66448	191	8240DB000974
66449	191	8240DB000975
66450	191	8240DB005055
66451	191	8240DB000976
66452	191	8220DB000127
66453	191	8220DB000102
66454	191	8220DB006239
66455	191	8220DB000104
66456	191	8220DB006241
66457	191	8220DB000105
66458	191	8220DB004365
66459	191	8220DB004367
66460	191	8240DB006219
66461	191	8240DB006229
66462	191	8240DB006364
66463	191	8220DB001558
66464	191	8220DB002957
66465	191	8220DB002958
66466	191	8220DB004938
66467	191	8220DB007845
66468	192	8220DB007838
66469	192	8220DB000987
66470	192	8220DB004937
66471	192	8220DB001547
66472	192	8220DB001548
66473	192	8220DB001280
66474	192	8240DB006366
66475	192	8240DB006230
66476	192	8240DB006228
66477	192	8220DB004368
66478	192	8220DB004781
66479	192	8220DB000107
66480	192	8220DB006125
66481	192	8220DB007092
66482	192	8220DB000110
66483	192	8220DB007828
66484	192	8220DB000126
66485	192	8240DB000989
66486	192	8240DB006009
66487	192	8240DB000990
66488	192	8240DB000992
66489	192	8220DB007044
66490	192	8220DB000993
66491	192	8220DB005060
66492	192	8220DB005061
66493	192	8220DB001235
66494	192	8220DB001251
66495	192	8220DB000253
66496	192	8220DB007130
66497	192	8220DB001237
66498	192	8220DB001253
66499	192	8220DB000997
66500	192	8220DB000998
66501	192	8220DB000999
66502	192	8220DB001000
66503	192	8220DB001001
66504	192	8220DB001002
66505	192	8220DB001003
66506	192	8220DB001004
66507	192	8220DB001005
66508	192	8220DB001006
66509	192	8220DB001007
66510	192	8220DB001008
66511	192	8220DB001009
66512	192	8240DB001010
66513	193	8230DB004664
66514	193	8230DB002160
66515	193	8230DB004665
66516	193	8230DB004666
66517	193	8230DB004667
66518	193	8230DB004668
66519	193	8230DB003376
66520	193	8230DB003377
66521	193	8230DB003378
66522	193	8230DB003379
66523	193	8230DB004669
66524	193	8230DB002146
66525	193	8230DB002147
66526	193	8230DB002148
66527	193	8230DB002149
66528	193	8230DB002150
66529	193	8230DB002151
66530	193	8230DB002152
66531	193	8230DB002153
66532	193	8230DB002154
66533	193	8230DB006245
66534	193	8230DB006013
66535	193	8230DB006247
66536	193	8230DB002681
66537	193	8230DB004691
66538	193	8230DB004796
66539	193	8230DB004690
66540	193	8230DB004411
66541	193	8230DB002239
66542	193	8230DB002241
66543	193	8230DB002242
66544	193	8220DB007435
66545	193	8220DB002722
66546	193	8220DB004413
66547	193	8220DB001476
66548	193	8220DB007453
66549	193	8220DB001478
66550	193	8220DB001479
66551	193	8220DB000315
66552	193	8220DB004495
66553	193	8220DB002809
66554	193	8220DB002810
66555	193	8220DB002811
66556	193	8220DB000749
66557	193	8220DB000750
66558	193	8220DB000751
66559	193	8220DB000752
66560	193	8220DB000753
66561	193	8220DB000754
66562	194	8220DB007392
66563	194	8220DB001443
66564	194	8220DB001444
66565	194	8220DB001445
66566	194	8220DB004407
66567	194	8220DB002637
66568	194	8220DB002638
66569	194	8220DB002721
66570	194	8220DB007012
66571	194	8230DB002201
66572	194	8230DB004401
66573	194	8230DB002213
66574	194	8230DB004688
66575	194	8230DB004689
66576	194	8230DB004410
66577	194	8230DB002678
66578	194	8230DB002679
66579	194	8230DB002680
66580	194	8230DB004677
66581	194	8230DB002136
66582	194	8230DB002137
66583	194	8230DB007201
66584	194	8230DB002138
66585	194	8230DB002139
66586	194	8230DB002140
66587	194	8230DB002141
66588	194	8230DB002142
66589	194	8230DB002143
66590	194	8230DB002145
66591	194	8230DB004670
66592	194	8230DB003420
66593	194	8230DB003421
66594	194	8230DB003422
66595	194	8230DB004671
66596	194	8230DB004672
66597	194	8230DB003465
66598	194	8230DB004673
66599	194	8230DB002172
66600	194	8230DB004409
66601	194	8230DB004550
66602	194	8230DB004551
66603	194	8230DB001965
66604	195	8230DB004713
66605	195	8230DB004714
66606	195	8230DB004960
66607	195	8230DB004932
66608	195	8230DB004933
66609	195	8230DB002590
66610	195	8230DB002591
66611	195	8230DB002592
66612	195	8230DB002357
66613	195	8230DB002566
66614	195	8230DB002567
66615	195	8230DB002568
66616	195	8230DB002569
66617	195	8230DB002570
66618	195	8230DB007222
66619	195	8230DB006170
66620	195	8230DB005023
66621	195	8230DB005024
66622	195	8230DB005161
66623	195	8230DB005162
66624	195	8230DB004880
66625	195	8230DB002606
66626	195	8230DB002607
66627	195	8230DB002608
66628	195	8230DB002609
66629	195	8230DB002610
66630	195	8230DB002554
66631	195	8230DB002425
66632	195	8230DB002426
66633	195	8230DB002427
66634	195	8230DB002428
66635	195	8230DB002429
66636	195	8230DB002430
66637	195	8230DB002371
66638	195	8230DB002372
66639	195	8230DB002373
66640	195	8220DB001424
66641	195	8220DB002190
66642	195	8220DB004434
66643	195	8220DB002379
66644	195	8220DB002380
66645	195	8220DB002382
66646	195	8220DB005099
66647	195	8220DB002383
66648	195	8220DB002002
66649	195	8220DB001358
66650	195	8220DB005192
66651	195	8220DB000350
66652	195	8220DB002809
66653	195	8220DB002810
66654	195	8220DB000750
66655	195	8220DB000751
66656	195	8220DB000752
66657	195	8220DB000753
66658	195	8220DB000754
66659	195	8220DB000755
66660	195	8220DB000756
66661	195	8220DB000757
66662	195	8220DB000758
66663	195	8220DB000759
66664	195	8220DB000760
66665	195	8220DB000761
66666	195	8220DB000762
66667	195	8220DB000763
66668	196	8230DB002955
66669	196	8230DB007067
66670	196	8230DB002956
66671	196	8230DB002965
66672	196	8230DB002967
66673	196	8230DB002968
66674	196	8250DB002969
66675	196	8250DB002970
66676	196	8250DB004988
66677	196	8250DB002853
66678	196	8250DB002854
66679	196	8250DB002855
66680	196	8250DB002856
66681	196	8250DB002857
66682	196	8250DB002858
66683	196	8250DB002859
66684	196	8250DB002860
66685	196	8250DB002861
66686	196	8250DB002829
66687	196	8250DB002830
66688	196	8250DB002831
66689	196	8250DB002832
66690	196	8250DB004349
66691	196	8250DB003184
66692	196	8250DB000449
66693	196	8250DB000450
66694	196	8250DB003181
66695	196	8250DB000451
66696	196	8250DB000447
66697	196	8250DB005045
66698	196	8250DB004460
66699	196	8250DB000453
66700	196	8250DB004477
66701	196	8250DB003321
66702	196	8250DB004727
66703	196	8250DB004728
66704	196	8250DB000461
66705	196	8250DB002068
66706	196	8250DB002069
66707	196	8250DB002070
66708	196	8250DB002084
66709	196	8250DB000768
66710	196	8220DB000769
66711	196	8220DB000770
66712	196	8220DB000771
66713	196	8220DB000772
66714	196	8220DB000773
66715	196	8220DB000774
66716	196	8220DB000775
66717	196	8220DB000776
66718	196	8220DB000777
66719	196	8220DB000906
66720	196	8220DB000907
66721	196	8220DB000908
66722	196	8220DB000909
66723	196	8220DB000786
66724	196	8220DB000792
66725	196	8220DB007586
66726	196	8220DB007587
66727	196	8220DB007588
66728	196	8220DB000281
66729	197	8220DB000848
66730	197	8220DB002795
66731	197	8220DB000756
66732	197	8220DB000757
66733	197	8220DB000758
66734	197	8220DB000759
66735	197	8220DB000760
66736	197	8220DB000761
66737	197	8220DB000762
66738	197	8220DB000763
66739	197	8250DB002007
66740	197	8250DB002008
66741	197	8250DB002009
66742	197	8250DB002010
66743	197	8250DB000435
66744	197	8250DB002011
66745	197	8250DB002012
66746	197	8250DB003322
66747	197	8250DB003563
66748	197	8250DB000444
66749	197	8250DB000445
66750	197	8250DB004779
66751	197	8250DB007057
66752	197	8250DB004847
66753	197	8250DB004848
66754	197	8250DB004350
66755	197	8250DB005143
66756	197	8250DB002837
66757	197	8250DB002838
66758	197	8250DB002839
66759	197	8250DB002840
66760	197	8250DB002845
66761	197	8250DB002846
66762	197	8250DB002847
66763	197	8250DB004397
66764	197	8250DB002848
66765	197	8250DB002849
66766	197	8250DB002850
66767	197	8250DB002851
66768	197	8250DB002852
66769	197	8250DB004987
66770	197	8250DB002978
66771	197	8250DB002979
66772	197	8230DB002980
66773	197	8230DB002981
66774	197	8230DB002954
66775	198	8250DB003085
66776	198	8250DB003034
66777	198	8250DB003114
66778	198	8250DB004353
66779	198	8250DB004355
66780	198	8250DB004354
66781	198	8250DB003196
66782	198	8250DB003345
66783	198	8250DB004727
66784	198	8250DB004728
66785	198	8250DB000461
66786	198	8250DB002068
66787	198	8250DB002069
66788	198	8250DB002070
66789	198	8250DB002084
66790	198	8250DB000768
66791	198	8220DB000769
66792	198	8220DB000770
66793	198	8220DB000771
66794	198	8220DB000772
66795	198	8220DB000773
66796	198	8220DB000774
66797	198	8220DB000775
66798	198	8220DB000776
66799	198	8220DB000777
66800	198	8220DB000906
66801	198	8220DB000907
66802	198	8220DB000908
66803	198	8220DB000909
66804	198	8220DB000786
66805	198	8220DB000792
66806	198	8220DB000320
66807	198	8220DB000278
66808	198	8220DB000002
66809	198	8220DB004726
66810	198	8220DB007555
66811	199	8220DB000288
66812	199	8220DB001171
66813	199	8220DB001172
66814	199	8220DB001173
66815	199	8220DB001174
66816	199	8220DB001175
66817	199	8220DB000015
66818	199	8220DB000017
66819	199	8220DB000018
66820	199	8220DB000019
66821	199	8220DB000021
66822	199	8220DB007602
66823	199	8220DB000085
66824	199	8220DB000203
66825	199	8220DB000204
66826	199	8220DB000205
66827	199	8220DB001620
66828	199	8220DB000220
66829	199	8240DB001622
66830	199	8240DB001623
66831	199	8240DB001624
66832	199	8240DB001625
66833	199	8240DB001626
66834	199	8240DB001627
66835	199	8240DB001628
66836	199	8240DB001629
66837	199	8240DB001630
66838	199	8240DB003670
66839	199	8240DB003671
66840	199	8240DB003672
66841	199	8240DB003674
66842	199	8240DB003675
66843	199	8240DB003676
66844	199	8240DB005073
66845	199	8240DB005074
66846	200	8240DB005044
66847	200	8240DB007116
66848	200	8240DB005079
66849	200	8240DB003694
66850	200	8240DB003695
66851	200	8240DB003696
66852	200	8240DB003697
66853	200	8240DB003698
66854	200	8240DB003699
66855	200	8240DB003885
66856	200	8240DB001631
66857	200	8240DB001632
66858	200	8240DB005053
66859	200	8240DB001633
66860	200	8240DB001634
66861	200	8240DB001635
66862	200	8240DB001636
66863	200	8240DB001637
66864	200	8240DB001638
66865	200	8240DB001639
66866	200	8240DB001640
66867	200	8240DB000231
66868	200	8220DB001641
66869	200	8220DB001642
66870	200	8220DB000213
66871	200	8220DB000214
66872	200	8220DB004432
66873	200	8220DB000119
66874	200	8220DB000044
66875	200	8220DB007603
66876	200	8220DB000045
66877	200	8220DB000046
66878	200	8220DB000047
66879	200	8220DB000048
66880	200	8220DB000049
66881	200	8220DB000051
66882	200	8220DB000052
66883	200	8220DB000277
66884	201	8240DB003640
66885	201	8240DB003574
66886	201	8240DB003641
66887	201	8240DB003642
66888	201	8240DB003643
66889	201	8240DB003583
66890	201	8240DB003584
66891	201	8240DB003585
66892	201	8240DB003587
66893	201	8240DB003588
66894	201	8240DB003589
66895	201	8240DB003593
66896	201	8240DB003594
66897	201	8240DB003595
66898	201	8240DB003596
66899	201	8240DB003597
66900	201	8240DB003598
66901	201	8240DB004465
66902	201	8240DB000944
66903	201	8240DB000945
66904	201	8240DB000947
66905	201	8240DB000948
66906	201	8240DB007725
66907	201	8240DB000928
66908	201	8240DB000588
66909	201	8240DB000590
66910	201	8220DB001729
66911	201	8220DB001731
66912	201	8220DB001738
66913	201	8220DB000614
66914	201	8220DB000675
66915	201	8220DB000621
66916	201	8220DB004495
66917	201	8220DB002809
66918	201	8220DB002810
66919	201	8220DB000842
66920	201	8220DB000846
66921	201	8220DB000848
66922	201	8220DB000759
66923	201	8220DB000760
66924	201	8220DB000761
66925	201	8220DB000762
66926	201	8220DB000763
66927	202	8250DB004952
66928	202	8250DB000768
66929	202	8220DB000770
66930	202	8220DB000773
66931	202	8220DB000774
66932	202	8220DB000906
66933	202	8220DB000909
66934	202	8220DB000790
66935	202	8220DB007585
66936	202	8220DB007587
66937	202	8220DB000496
66938	202	8220DB000522
66939	202	8220DB001741
66940	202	8220DB001747
66941	202	8220DB001749
66942	202	8240DB000544
66943	202	8240DB000546
66944	202	8240DB000914
66945	202	8240DB000938
66946	202	8240DB000940
66947	202	8240DB000941
66948	202	8240DB000942
66949	202	8240DB000943
66950	202	8240DB003599
66951	202	8240DB003600
66952	202	8240DB003601
66953	202	8240DB003602
66954	202	8240DB003604
66955	202	8240DB003616
66956	202	8240DB003618
66957	202	8240DB003619
66958	202	8240DB003620
66959	202	8240DB003621
66960	202	8240DB003622
66961	202	8240DB003623
66962	202	8240DB004387
66963	202	8240DB003634
66964	202	8240DB003635
66965	202	8240DB003636
66966	202	8240DB000905
66967	202	8240DB004331
66968	202	8240DB004339
66969	202	8240DB007616
66970	202	8240DB005081
66971	203	8220DB004595
66972	203	8220DB004596
66973	203	8220DB004563
66974	203	8220DB001218
66975	203	8220DB001258
66976	203	8220DB001259
66977	203	8220DB001260
66978	203	8220DB006130
66979	203	8220DB001262
66980	203	8220DB004692
66981	203	8220DB001245
66982	203	8220DB004693
66983	203	8220DB001254
66984	203	8220DB001255
66985	203	8220DB001256
66986	203	8220DB004694
66987	203	8220DB001249
66988	203	8220DB001247
66989	203	8220DB001248
66990	203	8220DB001273
66991	203	8220DB001274
66992	203	8220DB001275
66993	203	8220DB001276
66994	203	8220DB001277
66995	203	8220DB001219
66996	203	8220DB001220
66997	203	8220DB001221
66998	203	8220DB000664
66999	203	8220DB000614
67000	203	8220DB004415
67001	203	8220DB000302
67002	203	8220DB004495
67003	203	8220DB002809
67004	203	8220DB000408
67005	203	8220DB000409
67006	203	8220DB000411
67007	203	8220DB000414
67008	203	8220DB000416
67009	203	8220DB000417
67010	203	8220DB000418
67011	203	8220DB000419
67012	203	8220DB000420
67013	203	8220DB002088
67014	203	8220DB002089
67015	203	8220DB000763
67016	204	8250DB004952
67017	204	8250DB000768
67018	204	8220DB002085
67019	204	8220DB002086
67020	204	8220DB000479
67021	204	8220DB000480
67022	204	8220DB000481
67023	204	8220DB000482
67024	204	8220DB000483
67025	204	8220DB000485
67026	204	8220DB000488
67027	204	8220DB000491
67028	204	8220DB000493
67029	204	8220DB000494
67030	204	8220DB000495
67031	204	8220DB000496
67032	204	8220DB000523
67033	204	8220DB004382
67034	204	8220DB001196
67035	204	8220DB001197
67036	204	8220DB001198
67037	204	8220DB001199
67038	204	8220DB001200
67039	204	8220DB004385
67040	204	8220DB001201
67041	204	8220DB004695
67042	204	8220DB001243
67043	204	8220DB004696
67044	204	8220DB004697
67045	204	8220DB001250
67046	204	8220DB004698
67047	204	8220DB004383
67048	204	8220DB004699
67049	204	8220DB004388
67050	204	8220DB004700
67051	204	8220DB001266
67052	204	8220DB001267
67053	204	8220DB001268
67054	204	8220DB001269
67055	204	8220DB001265
67056	204	8220DB006115
67057	204	8220DB004593
67058	205	8220DB000407
67059	205	8220DB002498
67060	205	8220DB002499
67061	205	8220DB002500
67062	205	8220DB002501
67063	205	8220DB007623
67064	205	8240DB007041
67065	205	8240DB003719
67066	205	8240DB003718
67067	205	8240DB007724
67068	205	8240DB003720
67069	205	8240DB007691
67070	205	8240DB003721
67071	205	8240DB003722
67072	205	8240DB005069
67073	205	8240DB003723
67074	205	8240DB003724
67075	205	8240DB003725
67076	205	8240DB003726
67077	205	8240DB007039
67078	205	8240DB007204
67079	205	8240DB003728
67080	205	8240DB003729
67081	205	8240DB003730
67082	206	8240DB003732
67083	206	8240DB003733
67084	206	8240DB003734
67085	206	8240DB003735
67086	206	8240DB007039
67087	206	8240DB007204
67088	206	8240DB003736
67089	206	8240DB003738
67090	206	8240DB007170
67091	206	8240DB003740
67092	206	8240DB003741
67093	206	8240DB005165
67094	206	8240DB003743
67095	206	8240DB003780
67096	206	8240DB003744
67097	206	8240DB007723
67098	206	8240DB003745
67099	206	8240DB003746
67100	206	8240DB007040
67101	206	8220DB006252
67102	206	8220DB000302
67103	206	8220DB000333
67104	206	8220DB000747
67105	207	8220DB002243
67106	207	8220DB002200
67107	207	8220DB005006
67108	207	8220DB005007
67109	207	8220DB002655
67110	207	8220DB002656
67111	207	8220DB002668
67112	207	8220DB002672
67113	207	8230DB002673
67114	207	8230DB002206
67115	207	8230DB004798
67116	207	8230DB004795
67117	207	8230DB002675
67118	207	8230DB002124
67119	207	8230DB002125
67120	207	8230DB002126
67121	207	8230DB002127
67122	207	8230DB002128
67123	207	8230DB002129
67124	207	8230DB002130
67125	207	8230DB002158
67126	207	8230DB002159
67127	207	8230DB004409
67128	207	8230DB002173
67129	207	8230DB002174
67130	207	8230DB003425
67131	207	8230DB002763
67132	207	8230DB002619
67133	207	8230DB002620
67134	207	8230DB002345
67135	207	8230DB005008
67136	207	8230DB004640
67137	207	8230DB004347
67138	208	8230DB004341
67139	208	8230DB004348
67140	208	8230DB004646
67141	208	8230DB004647
67142	208	8230DB002363
67143	208	8230DB002364
67144	208	8230DB002618
67145	208	8230DB005011
67146	208	8230DB002762
67147	208	8230DB002110
67148	208	8230DB002111
67149	208	8230DB002112
67150	208	8230DB002114
67151	208	8230DB002115
67152	208	8230DB002116
67153	208	8230DB002117
67154	208	8230DB002118
67155	208	8230DB002119
67156	208	8230DB002120
67157	208	8230DB002121
67158	208	8230DB002123
67159	208	8230DB002685
67160	208	8230DB004795
67161	208	8230DB002686
67162	208	8230DB007510
67163	208	8230DB004799
67164	208	8230DB002205
67165	208	8230DB002687
67166	208	8220DB002688
67167	208	8220DB002689
67168	208	8220DB002696
67169	208	8220DB002697
67170	208	8220DB004414
67171	208	8220DB005009
67172	209	8220DB007391
67173	209	8220DB000493
67174	209	8220DB000494
67175	209	8220DB000495
67176	209	8220DB000400
67177	209	8220DB007581
67178	209	8220DB001283
67179	209	8220DB007579
67180	209	8220DB001285
67181	209	8220DB001016
67182	209	8220DB001017
67183	209	8220DB001018
67184	209	8220DB001019
67185	209	8220DB001020
67186	209	8220DB001076
67187	209	8220DB001077
67188	209	8220DB001078
67189	209	8220DB001079
67190	209	8220DB001080
67191	209	8220DB001081
67192	209	8220DB002914
67193	209	8220DB002915
67194	209	8220DB002916
67195	209	8220DB002917
67196	209	8220DB002918
67197	209	8220DB001300
67198	209	8230DB001301
67199	209	8230DB001302
67200	209	8230DB001303
67201	209	8230DB005129
67202	209	8230DB005130
67203	209	8230DB001135
67204	209	8230DB007064
67205	209	8230DB007066
67206	209	8230DB002924
67207	209	8230DB002925
67208	209	8230DB002948
67209	209	8230DB002949
67210	209	8230DB002950
67211	209	8230DB002954
67212	210	8230DB007067
67213	210	8230DB002956
67214	210	8230DB002965
67215	210	8230DB002983
67216	210	8230DB002984
67217	210	8230DB002941
67218	210	8230DB002942
67219	210	8230DB007065
67220	210	8230DB007063
67221	210	8230DB001137
67222	210	8230DB005131
67223	210	8230DB005132
67224	210	8230DB001331
67225	210	8230DB001332
67226	210	8230DB001333
67227	210	8230DB001334
67228	210	8220DB002985
67229	210	8220DB002986
67230	210	8220DB002988
67231	210	8220DB003001
67232	210	8220DB003002
67233	210	8220DB001166
67234	210	8220DB001167
67235	210	8220DB001168
67236	210	8220DB001169
67237	210	8220DB001170
67238	210	8220DB001069
67239	210	8220DB001070
67240	210	8220DB001071
67241	210	8220DB004528
67242	210	8220DB001072
67243	210	8220DB007577
67244	210	8220DB001353
67245	210	8220DB001354
67246	210	8220DB007578
67247	210	8220DB007582
67248	210	8220DB000340
67249	210	8220DB000350
67250	210	8220DB002809
67251	210	8220DB002810
67252	211	8240DB007158
67253	211	8240DB007048
67254	211	8240DB007699
67255	211	8240DB007159
67256	211	8240DB007017
67257	211	8240DB007018
67258	211	8240DB007030
67259	211	8240DB006111
67260	211	8240DB006112
67261	211	8240DB006113
67262	211	8240DB004323
67263	211	8240DB001845
67264	211	8220DB001696
67265	211	8220DB001700
67266	211	8220DB001906
67267	211	8220DB001909
67268	211	8220DB001713
67269	211	8220DB001715
67270	211	8220DB001478
67271	211	8220DB000315
67272	211	8220DB004495
67273	211	8220DB002809
67274	211	8220DB002810
67275	211	8220DB000749
67276	211	8220DB000751
67277	211	8220DB000752
67278	212	8220DB007333
67279	212	8220DB000783
67280	212	8220DB000785
67281	212	8220DB000786
67282	212	8220DB000793
67283	212	8220DB007586
67284	212	8220DB007587
67285	212	8220DB000328
67286	212	8220DB001443
67287	212	8220DB001647
67288	212	8220DB001649
67289	212	8220DB001911
67290	212	8220DB001805
67291	212	8220DB001662
67292	212	8220DB001666
67293	212	8240DB001808
67294	212	8240DB007475
67295	212	8240DB006107
67296	212	8240DB006109
67297	212	8240DB006110
67298	212	8240DB007029
67299	212	8240DB007038
67300	212	8240DB007011
67301	212	8240DB007160
67302	212	8240DB007700
67303	212	8240DB007047
67304	212	8240DB007161
67305	213	8250DB000877
67306	213	8250DB000876
67307	213	8250DB003011
67308	213	8250DB002896
67309	213	8250DB002897
67310	213	8220DB001062
67311	213	8220DB001063
67312	213	8220DB001064
67313	213	8220DB001065
67314	213	8220DB001066
67315	213	8220DB001067
67316	213	8220DB001068
67317	213	8220DB001069
67318	213	8220DB001070
67319	213	8220DB001071
67320	213	8220DB004528
67321	213	8220DB001072
67322	213	8220DB007577
67323	213	8220DB001353
67324	213	8220DB001354
67325	213	8220DB007578
67326	213	8220DB007582
67327	213	8220DB000407
67328	213	8220DB002498
67329	213	8220DB002499
67330	213	8220DB002500
67331	213	8220DB002501
67332	213	8220DB007623
67333	213	8240DB006312
67334	213	8240DB007197
67335	213	8240DB007195
67336	213	8240DB003653
67337	213	8240DB006055
67338	213	8240DB001073
67339	213	8240DB003641
67340	213	8240DB003642
67341	213	8240DB003643
67342	213	8240DB003583
67343	213	8240DB003584
67344	213	8240DB003585
67345	213	8240DB003625
67346	213	8240DB003626
67347	213	8240DB003627
67348	213	8240DB003628
67349	213	8240DB006052
67350	213	8240DB003613
67351	213	8240DB003615
67352	214	8240DB003605
67353	214	8240DB003606
67354	214	8240DB003607
67355	214	8240DB006051
67356	214	8240DB006053
67357	214	8240DB007327
67358	214	8240DB003629
67359	214	8240DB003630
67360	214	8240DB003631
67361	214	8240DB003632
67362	214	8240DB003633
67363	214	8240DB003634
67364	214	8240DB003635
67365	214	8240DB003636
67366	214	8240DB000905
67367	214	8240DB004331
67368	214	8240DB004339
67369	214	8240DB007692
67370	214	8240DB006010
67371	214	8240DB003656
67372	214	8240DB007194
67373	214	8240DB007196
67374	214	8240DB006310
67375	214	8240DB006311
67376	214	8220DB007399
67377	214	8220DB007398
67378	214	8220DB007397
67379	214	8220DB006252
67380	214	8220DB000301
67381	214	8220DB004495
67382	214	8220DB002809
67383	214	8220DB002810
67384	214	8220DB001013
67385	214	8220DB001015
67386	214	8220DB001016
67387	214	8220DB001017
67388	214	8220DB001018
67389	214	8220DB001019
67390	214	8220DB001020
67391	214	8220DB001076
67392	214	8220DB001021
67393	214	8220DB006042
67394	214	8220DB001022
67395	214	8220DB001023
67396	214	8220DB001024
67397	214	8220DB000895
67398	214	8220DB001025
67399	214	8220DB001026
67400	214	8220DB001027
67401	214	8220DB001028
67402	214	8250DB002818
67403	214	8250DB002819
67404	214	8250DB003012
67405	215	8260DB003980
67406	215	8260DB006089
67407	215	8260DB003917
67408	215	8260DB003981
67409	215	8260DB003982
67410	215	8260DB007704
67411	215	8260DB003983
67412	215	8260DB003985
67413	215	8260DB003986
67414	215	8260DB007313
67415	215	8260DB006164
67416	215	8260DB007712
67417	215	8260DB006159
67418	215	8260DB006160
67419	215	8260DB006161
67420	215	8260DB003991
67421	215	8260DB07758
67422	215	8260DB003998
67423	215	8260DB003999
67424	215	8260DB004000
67425	215	8230DB004001
67426	215	8230DB007193
67427	215	8230DB007049
67428	215	8230DB002236
67429	215	8230DB002239
67430	215	8230DB002241
67431	215	8230DB002242
67432	215	8220DB007435
67433	215	8220DB002722
67434	215	8220DB004413
67435	215	8220DB001476
67436	215	8220DB007854
67437	215	8220DB007856
67438	215	8220DB007883
67439	215	8220DB000315
67440	215	8220DB007733
67441	215	8220DB007861
67442	215	8220DB002809
67443	215	8220DB002810
67444	215	8220DB002811
67445	215	8220DB000785
67446	215	8220DB000846
67447	215	8220DB000847
67448	215	8220DB000848
67449	215	8220DB002795
67450	215	8220DB000756
67451	215	8220DB000757
67452	215	8220DB000758
67453	215	8220DB000759
67454	215	8220DB000760
67455	215	8220DB000761
67456	215	8220DB000762
67457	215	8220DB000763
67458	216	8250DB004952
67459	216	8250DB000768
67460	216	8220DB000769
67461	216	8220DB000770
67462	216	8220DB000771
67463	216	8220DB000772
67464	216	8220DB000773
67465	216	8220DB000774
67466	216	8220DB000775
67467	216	8220DB000776
67468	216	8220DB000777
67469	216	8220DB000906
67470	216	8220DB000909
67471	216	8220DB000786
67472	216	8220DB002905
67473	216	8220DB000494
67474	216	8220DB007587
67475	216	8220DB007732
67476	216	8220DB007392
67477	216	8220DB000312
67478	216	8220DB007857
67479	216	8220DB007855
67480	216	8220DB001447
67481	216	8220DB002637
67482	216	8220DB002721
67483	216	8220DB007012
67484	216	8230DB002201
67485	216	8230DB004401
67486	216	8230DB002213
67487	216	8230DB002214
67488	216	8230DB002215
67489	216	8230DB007184
67490	216	8230DB007050
67491	216	8230DB007185
67492	216	8230DB007186
67493	216	8230DB007187
67494	216	8260DB003954
67495	216	8260DB003955
67496	216	8260DB003956
67497	216	8260DB003957
67498	216	8260DB003958
67499	216	8260DB003959
67500	216	8260DB003960
67501	216	8260DB006156
67502	216	8260DB006165
67503	216	8260DB006157
67504	216	8260DB006158
67505	216	8260DB007314
67506	216	8260DB003964
67507	216	8260DB003965
67508	216	8260DB003968
67509	216	8260DB007694
67510	216	8260DB003966
67511	216	8260DB005113
67512	216	8260DB003918
67513	217	8260DB003921
67514	217	8260DB003922
67515	217	8260DB003923
67516	217	8260DB007079
67517	217	8260DB007080
67518	217	8260DB007081
67519	217	8260DB007565
67520	217	8260DB007746
67521	217	8260DB007082
67522	217	8260DB007083
67523	217	8260DB007789
67524	217	8260DB007084
67525	217	8260DB007108
67526	217	8260DB003935
67527	217	8260DB003936
67528	217	8260DB007110
67529	217	8260DB003938
67530	217	8260DB003939
67531	217	8260DB003940
67532	217	8260DB003941
67533	217	8230DB003943
67534	217	8230DB003945
67535	217	8230DB003946
67536	217	8230DB004001
67537	217	8230DB007193
67538	217	8230DB007049
67539	217	8230DB002236
67540	217	8230DB002239
67541	217	8230DB002241
67542	217	8230DB002242
67543	217	8220DB007435
67544	217	8220DB002722
67545	217	8220DB004413
67546	217	8220DB001476
67547	217	8220DB007854
67548	217	8220DB007856
67549	217	8220DB007883
67550	217	8220DB000315
67551	217	8220DB007733
67552	217	8220DB007861
67553	217	8220DB002809
67554	217	8220DB002810
67555	217	8220DB002811
67556	217	8220DB000785
67557	217	8220DB000846
67558	217	8220DB000847
67559	217	8220DB000848
67560	217	8220DB002795
67561	217	8220DB000756
67562	217	8220DB000757
67563	217	8220DB000758
67564	217	8220DB000759
67565	217	8220DB000760
67566	217	8220DB000761
67567	217	8220DB000762
67568	217	8220DB000763
67569	218	8250DB004952
67570	218	8250DB000768
67571	218	8220DB000769
67572	218	8220DB000770
67573	218	8220DB000771
67574	218	8220DB000772
67575	218	8220DB000773
67576	218	8220DB000774
67577	218	8220DB000775
67578	218	8220DB000776
67579	218	8220DB000777
67580	218	8220DB000906
67581	218	8220DB000909
67582	218	8220DB000786
67583	218	8220DB002905
67584	218	8220DB000494
67585	218	8220DB007587
67586	218	8220DB007732
67587	218	8220DB007392
67588	218	8220DB000312
67589	218	8220DB007857
67590	218	8220DB007855
67591	218	8220DB001447
67592	218	8220DB002637
67593	218	8220DB002721
67594	218	8220DB007012
67595	218	8230DB002201
67596	218	8230DB004401
67597	218	8230DB002213
67598	218	8230DB002214
67599	218	8230DB002215
67600	218	8230DB007184
67601	218	8230DB007050
67602	218	8230DB007185
67603	218	8230DB007186
67604	218	8230DB007187
67605	218	8230DB003947
67606	218	8230DB003892
67607	218	8230DB003893
67608	218	8230DB003896
67609	218	8260DB003897
67610	218	8260DB003898
67611	218	8260DB003899
67612	218	8260DB003900
67613	218	8260DB003901
67614	218	8260DB003902
67615	218	8260DB003904
67616	218	8260DB003905
67617	218	8260DB007085
67618	218	8260DB007790
67619	218	8260DB007086
67620	218	8260DB007087
67621	218	8260DB007745
67622	218	8260DB007088
67623	218	8260DB007089
67624	218	8260DB007802
67625	218	8260DB007091
67626	218	8260DB003910
67627	218	8260DB003911
67628	219	8230DB006290
67629	219	8230DB007120
67630	219	8230DB007119
67631	219	8230DB007127
67632	219	8230DB007143
67633	219	8230DB007796
67634	219	8230DB007168
67635	219	8230DB004616
67636	219	8230DB002227
67637	219	8230DB007049
67638	219	8230DB002236
67639	219	8230DB005056
67640	219	8230DB002239
67641	219	8230DB002241
67642	219	8230DB002242
67643	219	8220DB007435
67644	219	8220DB002722
67645	219	8220DB004413
67646	219	8220DB001476
67647	219	8220DB007854
67648	219	8220DB007856
67649	219	8220DB007883
67650	219	8220DB000315
67651	219	8220DB007733
67652	219	8220DB007861
67653	219	8220DB000351
67654	219	8220DB000352
67655	219	8220DB000353
67656	220	8220DB000395
67657	220	8220DB000396
67658	220	8220DB000397
67659	220	8220DB000398
67660	220	8220DB000399
67661	220	8220DB007859
67662	220	8220DB007732
67663	220	8220DB007392
67664	220	8220DB000312
67665	220	8220DB007857
67666	220	8220DB007855
67667	220	8220DB001447
67668	220	8220DB002637
67669	220	8220DB002721
67670	220	8220DB007012
67671	220	8230DB002201
67672	220	8230DB007239
67673	220	8230DB004401
67674	220	8230DB002213
67675	220	8230DB002214
67676	220	8230DB002215
67677	220	8230DB002216
67678	220	8230DB004599
67679	220	8230DB007184
67680	220	8230DB002225
67681	220	8230DB004620
67682	220	8230DB007563
67683	220	8230DB007797
67684	220	8230DB007231
67685	220	8230DB007128
67686	220	8230DB007117
67687	220	8230DB007118
67688	221	8260DB003980
67689	221	8260DB006089
67690	221	8260DB003917
67691	221	8260DB003981
67692	221	8260DB003982
67693	221	8260DB007704
67694	221	8260DB003983
67695	221	8260DB003985
67696	221	8260DB003986
67697	221	8260DB003987
67698	221	8260DB003989
67699	221	8260DB003990
67700	221	8260DB003991
67701	221	8260DB07758
67702	221	8260DB003998
67703	221	8260DB003999
67704	221	8260DB004000
67705	221	8230DB004001
67706	221	8230DB007193
67707	221	8230DB007049
67708	221	8230DB002236
67709	221	8230DB002239
67710	221	8230DB002241
67711	221	8230DB002242
67712	221	8220DB007435
67713	221	8220DB002722
67714	221	8220DB004413
67715	221	8220DB001476
67716	221	8220DB007854
67717	221	8220DB007856
67718	221	8220DB007883
67719	221	8220DB000315
67720	221	8220DB007733
67721	221	8220DB007861
67722	221	8220DB002809
67723	221	8220DB002810
67724	221	8220DB002811
67725	221	8220DB000785
67726	222	8260DB003921
67727	222	8260DB003922
67728	222	8260DB003923
67729	222	8260DB003112
67730	222	8260DB003924
67731	222	8260DB003927
67732	222	8260DB003928
67733	222	8260DB003929
67734	222	8260DB007108
67735	222	8260DB003935
67736	222	8260DB003936
67737	222	8260DB007110
67738	222	8260DB003938
67739	222	8260DB003939
67740	222	8260DB003940
67741	222	8260DB003941
67742	222	8230DB003943
67743	222	8230DB003945
67744	222	8230DB003946
67745	222	8230DB004001
67746	222	8230DB007193
67747	222	8230DB007049
67748	222	8230DB002236
67749	222	8230DB002239
67750	222	8230DB002241
67751	222	8230DB002242
67752	222	8220DB007435
67753	222	8220DB002722
67754	222	8220DB004413
67755	222	8220DB001476
67756	222	8220DB007854
67757	222	8220DB007856
67758	222	8220DB007883
67759	222	8220DB000315
67760	222	8220DB007733
67761	222	8220DB007861
67762	222	8220DB002809
67763	222	8220DB002810
67764	222	8220DB002811
67765	222	8220DB000785
67766	222	8220DB000846
67767	222	8220DB000847
67768	222	8220DB000848
67769	222	8220DB002795
67770	222	8220DB000756
67771	222	8220DB000757
67772	222	8220DB000758
67773	222	8220DB000759
67774	222	8220DB000760
67775	222	8220DB000761
67776	222	8220DB000762
67777	222	8220DB000763
67778	223	8250DB004952
67779	223	8250DB000768
67780	223	8220DB000769
67781	223	8220DB000770
67782	223	8220DB000771
67783	223	8220DB000772
67784	223	8220DB000773
67785	223	8220DB000774
67786	223	8220DB000775
67787	223	8220DB000776
67788	223	8220DB000777
67789	223	8220DB000906
67790	223	8220DB000909
67791	223	8220DB000786
67792	223	8220DB002905
67793	223	8220DB000494
67794	223	8220DB007587
67795	223	8220DB007732
67796	223	8220DB007392
67797	223	8220DB000312
67798	223	8220DB007857
67799	223	8220DB007855
67800	223	8220DB001447
67801	223	8220DB002637
67802	223	8220DB002721
67803	223	8220DB007012
67804	223	8230DB002201
67805	223	8230DB004401
67806	223	8230DB002213
67807	223	8230DB002214
67808	223	8230DB002215
67809	223	8230DB007184
67810	223	8230DB007050
67811	223	8230DB007185
67812	223	8230DB007186
67813	223	8230DB007187
67814	223	8230DB003947
67815	223	8230DB003892
67816	223	8230DB003893
67817	223	8230DB003896
67818	223	8260DB003897
67819	223	8260DB003898
67820	223	8260DB003899
67821	223	8260DB003900
67822	223	8260DB003901
67823	223	8260DB003902
67824	223	8260DB003904
67825	223	8260DB003905
67826	223	8260DB003906
67827	223	8260DB003907
67828	223	8260DB003908
67829	223	8260DB003909
67830	223	8260DB005118
67831	223	8260DB003910
67832	223	8260DB003911
67833	224	8230DB003890
67834	224	8230DB003891
67835	224	8230DB007187
67836	224	8230DB004001
67837	224	8230DB003949
67838	224	8230DB003950
67839	224	8230DB003372
67840	224	8230DB003373
67841	224	8230DB003374
67842	224	8230DB002233
67843	224	8230DB002232
67844	224	8230DB002234
67845	224	8230DB002236
67846	224	8230DB002239
67847	224	8230DB002241
67848	224	8230DB002242
67849	224	8220DB007435
67850	224	8220DB002722
67851	224	8220DB004413
67852	224	8220DB001476
67853	224	8220DB007854
67854	224	8220DB007856
67855	224	8220DB007883
67856	224	8220DB000315
67857	224	8220DB007733
67858	224	8220DB007861
67859	224	8220DB002809
67860	224	8220DB002810
67861	224	8220DB002811
67862	224	8220DB000785
67863	224	8220DB000846
67864	224	8220DB000847
67865	224	8220DB000848
67866	224	8220DB002795
67867	224	8220DB000756
67868	224	8220DB000757
67869	224	8220DB000758
67870	224	8220DB000759
67871	224	8220DB000760
67872	224	8220DB000761
67873	224	8220DB000762
67874	224	8220DB000763
67875	225	8250DB004952
67876	225	8250DB000768
67877	225	8220DB000769
67878	225	8220DB000770
67879	225	8220DB000771
67880	225	8220DB000772
67881	225	8220DB000773
67882	225	8220DB000774
67883	225	8220DB000775
67884	225	8220DB000776
67885	225	8220DB000777
67886	225	8220DB000906
67887	225	8220DB000909
67888	225	8220DB000786
67889	225	8220DB002905
67890	225	8220DB000494
67891	225	8220DB007587
67892	225	8220DB007732
67893	225	8220DB007392
67894	225	8220DB000312
67895	225	8220DB007857
67896	225	8220DB007855
67897	225	8220DB001447
67898	225	8220DB002637
67899	225	8220DB002721
67900	225	8220DB007012
67901	225	8230DB002201
67902	225	8230DB004401
67903	225	8230DB002213
67904	225	8230DB002214
67905	225	8230DB002215
67906	225	8230DB002216
67907	225	8230DB002217
67908	225	8230DB002218
67909	225	8230DB002219
67910	225	8230DB003365
67911	225	8230DB003366
67912	225	8230DB003367
67913	225	8230DB003886
67914	225	8230DB003887
67915	225	8230DB007810
67916	226	8260DB007820
67917	226	8260DB003995
67918	226	8260DB003996
67919	226	8260DB003997
67920	226	8260DB003998
67921	226	8260DB003999
67922	226	8260DB004000
67923	226	8230DB004001
67924	226	8230DB003949
67925	226	8230DB003950
67926	226	8230DB003372
67927	226	8230DB003373
67928	226	8230DB003374
67929	226	8230DB002233
67930	226	8230DB002232
67931	226	8230DB002234
67932	226	8230DB002236
67933	226	8230DB002239
67934	226	8230DB002241
67935	226	8230DB002242
67936	226	8220DB007435
67937	226	8220DB002722
67938	226	8220DB004413
67939	226	8220DB001476
67940	226	8220DB007854
67941	226	8220DB007856
67942	226	8220DB007883
67943	226	8220DB000315
67944	226	8220DB007733
67945	226	8220DB007861
67946	226	8220DB002809
67947	226	8220DB002810
67948	226	8220DB002811
67949	226	8220DB000785
67950	226	8220DB000786
67951	227	8220DB006074
67952	227	8220DB002905
67953	227	8220DB000494
67954	227	8220DB007859
67955	227	8220DB007732
67956	227	8220DB007392
67957	227	8220DB000312
67958	227	8220DB007857
67959	227	8220DB007855
67960	227	8220DB001447
67961	227	8220DB002637
67962	227	8220DB002721
67963	227	8220DB007012
67964	227	8230DB002201
67965	227	8230DB004401
67966	227	8230DB002213
67967	227	8230DB002214
67968	227	8230DB002215
67969	227	8230DB002216
67970	227	8230DB004599
67971	227	8230DB002217
67972	227	8230DB002218
67973	227	8230DB002219
67974	227	8230DB003365
67975	227	8230DB003366
67976	227	8230DB003367
67977	227	8230DB003886
67978	227	8230DB003887
67979	227	8230DB007186
67980	227	8230DB007187
67981	227	8260DB003954
67982	227	8260DB003955
67983	227	8260DB003956
67984	227	8260DB003957
67985	227	8260DB007798
67986	227	8260DB003993
67987	228	8260DB004003
67988	228	8260DB007770
67989	228	8260DB004404
67990	228	8260DB004405
67991	228	8260DB007785
67992	228	8260DB003991
67993	228	8260DB07758
67994	228	8260DB003998
67995	228	8260DB003999
67996	228	8260DB004000
67997	228	8230DB004001
67998	228	8230DB003949
67999	228	8230DB003950
68000	228	8230DB003372
68001	228	8230DB003373
68002	228	8230DB003374
68003	228	8230DB002233
68004	228	8230DB002232
68005	228	8230DB002234
68006	228	8230DB002236
68007	228	8230DB002239
68008	228	8230DB002241
68009	228	8230DB002242
68010	228	8220DB007435
68011	228	8220DB002722
68012	228	8220DB004413
68013	228	8220DB001476
68014	228	8220DB007854
68015	228	8220DB007856
68016	228	8220DB007883
68017	228	8220DB000315
68018	228	8220DB007733
68019	228	8220DB007861
68020	228	8220DB002809
68021	228	8220DB002810
68022	228	8220DB002811
68023	228	8220DB000785
68024	228	8220DB000786
68025	229	8220DB006074
68026	229	8220DB002905
68027	229	8220DB000494
68028	229	8220DB007587
68029	229	8220DB007732
68030	229	8220DB007392
68031	229	8220DB000312
68032	229	8220DB007857
68033	229	8220DB007855
68034	229	8220DB001447
68035	229	8220DB002637
68036	229	8220DB002721
68037	229	8220DB007012
68038	229	8230DB002201
68039	229	8230DB004401
68040	229	8230DB002213
68041	229	8230DB002214
68042	229	8230DB002215
68043	229	8230DB002216
68044	229	8230DB004599
68045	229	8230DB002217
68046	229	8230DB002218
68047	229	8230DB002219
68048	229	8230DB003365
68049	229	8230DB003366
68050	229	8230DB003367
68051	229	8230DB003886
68052	229	8230DB003887
68053	229	8230DB007186
68054	229	8230DB007187
68055	229	8260DB003954
68056	229	8260DB003955
68057	229	8260DB003956
68058	229	8260DB003957
68059	229	8260DB003958
68060	229	8260DB003959
68061	229	8260DB007234
68062	229	8260DB004002
68063	229	8260DB005112
68064	229	8260DB007771
68065	230	8250DB006200
68066	230	8250DB006201
68067	230	8250DB006196
68068	230	8250DB003532
68069	230	8250DB003533
68070	230	8250DB003491
68071	230	8250DB006007
68072	230	8250DB004349
68073	230	8250DB003184
68074	230	8250DB000449
68075	230	8250DB000450
68076	230	8250DB003181
68077	230	8250DB005142
68078	230	8250DB003187
68079	230	8250DB003188
68080	230	8250DB003189
68081	230	8250DB003190
68082	230	8250DB003191
68083	230	8250DB003192
68084	230	8250DB003193
68085	230	8250DB003194
68086	230	8250DB003195
68087	230	8250DB003196
68088	230	8250DB003198
68089	230	8250DB003199
68090	230	8250DB003200
68091	230	8250DB003201
68092	231	8250DB003085
68093	231	8250DB003082
68094	231	8250DB003165
68095	231	8250DB003166
68096	231	8250DB003167
68097	231	8250DB003168
68098	231	8250DB003169
68099	231	8250DB003171
68100	231	8250DB003173
68101	231	8250DB003174
68102	231	8250DB003175
68103	231	8250DB003176
68104	231	8250DB003177
68105	231	8250DB003178
68106	231	8250DB003179
68107	231	8250DB004984
68108	231	8250DB000448
68109	231	8250DB004457
68110	231	8250DB003182
68111	231	8250DB003183
68112	231	8250DB004350
68113	231	8250DB005143
68114	231	8250DB002833
68115	231	8250DB006006
68116	231	8250DB003493
68117	231	8250DB003494
68118	231	8250DB006197
68119	231	8250DB006198
68120	232	8240DB007026
68121	232	8240DB001882
68122	232	8240DB007379
68123	232	8240DB004903
68124	232	8240DB007219
68125	232	8240DB001887
68126	232	8240DB001888
68127	232	8240DB001889
68128	232	8240DB001890
68129	232	8240DB004820
68130	232	8240DB006126
68131	232	8230DB002226
68132	232	8230DB006134
68133	232	8230DB002223
68134	232	8230DB002224
68135	232	8230DB003886
68136	232	8230DB003887
68137	232	8230DB003888
68138	232	8230DB007810
68139	232	8230DB007749
68140	232	8230DB007801
68141	233	8230DB006290
68142	233	8230DB007800
68143	233	8230DB003890
68144	233	8230DB003891
68145	233	8230DB003949
68146	233	8230DB003950
68147	233	8230DB007774
68148	233	8230DB002229
68149	233	8230DB006133
68150	233	8230DB002228
68151	233	8240DB006127
68152	233	8240DB004826
68153	233	8240DB001912
68154	233	8240DB001895
68155	233	8240DB001896
68156	233	8240DB001897
68157	233	8240DB007227
68158	233	8240DB006073
68159	233	8240DB004493
68160	233	8240DB004362
68161	234	8250DB003099
68162	234	8250DB003100
68163	234	8250DB003101
68164	234	8250DB003102
68165	234	8250DB003103
68166	234	8250DB005105
68167	234	8250DB003105
68168	234	8250DB003106
68169	234	8250DB003107
68170	234	8250DB003108
68171	234	8250DB007666
68172	234	8250DB003111
68173	234	8250DB003058
68174	234	8250DB003059
68175	234	8250DB003060
68176	234	8250DB003061
68177	234	8250DB003062
68178	234	8250DB003063
68179	234	8250DB003064
68180	234	8250DB003065
68181	234	8250DB003066
68182	234	8250DB003067
68183	234	8250DB003068
68184	234	8250DB003069
68185	234	8250DB003070
68186	235	8250DB002037
68187	235	8250DB003046
68188	235	8250DB003047
68189	235	8250DB003048
68190	235	8250DB003049
68191	235	8250DB003050
68192	235	8250DB003051
68193	235	8250DB003052
68194	235	8250DB003053
68195	235	8250DB003054
68196	235	8250DB003055
68197	235	8250DB003056
68198	235	8250DB003057
68199	235	8250DB004830
68200	235	8250DB003091
68201	235	8250DB003092
68202	235	8250DB003093
68203	235	8250DB003094
68204	235	8250DB003095
68205	235	8250DB003096
68206	235	8250DB003097
68207	235	8250DB003098
68208	236	8250DB002039
68209	236	8250DB002040
68210	236	8250DB002041
68211	236	8250DB002042
68212	236	8250DB002043
68213	236	8250DB002044
68214	236	8250DB002045
68215	236	8250DB002046
68216	236	8250DB004568
68217	236	8250DB004569
68218	236	8250DB004570
68219	236	8250DB002056
68220	236	8250DB002057
68221	236	8250DB002058
68222	236	8250DB002059
68223	236	8250DB002060
68224	236	8250DB002061
68225	236	8250DB002062
68226	236	8250DB002063
68227	236	8250DB002064
68228	236	8250DB002065
68229	236	8250DB004637
68230	236	8250DB003322
68231	236	8250DB003563
68232	236	8250DB000444
68233	236	8250DB000445
68234	236	8250DB007393
68235	236	8250DB002880
68236	236	8250DB002882
68237	236	8250DB002883
68238	236	8250DB002885
68239	236	8250DB002886
68240	236	8250DB002887
68241	236	8250DB007718
68242	236	8250DB002842
68243	236	8250DB002843
68244	236	8250DB002844
68245	236	8250DB002845
68246	236	8250DB002846
68247	236	8250DB002847
68248	236	8250DB004397
68249	236	8250DB002848
68250	236	8250DB002849
68251	236	8250DB002850
68252	236	8250DB002851
68253	236	8250DB002852
68254	236	8250DB004707
68255	236	8250DB004708
68256	236	8250DB004336
68257	236	8250DB004337
68258	236	8250DB001317
68259	236	8250DB001318
68260	236	8250DB001319
68261	236	8250DB001281
68262	236	8230DB001329
68263	236	8230DB001330
68264	236	8230DB005129
68265	236	8230DB005130
68266	236	8230DB001138
68267	236	8230DB001139
68268	236	8230DB001140
68269	236	8230DB002515
68270	236	8230DB002516
68271	236	8230DB002517
68272	236	8230DB002518
68273	236	8230DB002520
68274	236	8230DB002521
68275	236	8230DB002522
68276	236	8230DB002524
68277	236	8230DB002523
68278	236	8230DB002532
68279	236	8230DB002533
68280	236	8230DB002534
68281	236	8230DB002535
68282	236	8230DB002536
68283	236	8230DB002616
68284	236	8230DB002617
68285	236	8230DB002557
68286	236	8230DB004436
68287	236	8230DB005008
68288	236	8230DB004640
68289	236	8230DB004347
68290	237	8230DB004342
68291	237	8230DB004348
68292	237	8230DB004646
68293	237	8230DB004647
68294	237	8230DB004435
68295	237	8230DB002604
68296	237	8230DB002605
68297	237	8230DB002538
68298	237	8230DB002539
68299	237	8230DB002540
68300	237	8230DB002542
68301	237	8230DB006128
68302	237	8230DB002544
68303	237	8230DB002545
68304	237	8230DB002547
68305	237	8230DB002548
68306	237	8230DB000946
68307	237	8230DB001131
68308	237	8230DB001132
68309	237	8230DB001133
68310	237	8230DB001134
68311	237	8230DB005131
68312	237	8230DB005132
68313	237	8230DB001305
68314	237	8250DB001306
68315	237	8250DB001307
68316	237	8250DB001308
68317	237	8250DB001309
68318	237	8250DB004332
68319	237	8250DB004333
68320	237	8250DB004334
68321	237	8250DB004712
68322	237	8250DB002853
68323	237	8250DB002854
68324	237	8250DB002855
68325	237	8250DB002856
68326	237	8250DB002857
68327	237	8250DB002858
68328	237	8250DB002859
68329	237	8250DB002860
68330	237	8250DB002861
68331	237	8250DB002862
68332	237	8250DB002863
68333	237	8250DB002864
68334	237	8250DB004486
68335	237	8250DB002865
68336	237	8250DB002866
68337	237	8250DB007719
68338	237	8250DB007720
68339	237	8250DB002872
68340	237	8250DB002873
68341	237	8250DB002874
68342	237	8250DB002877
68343	237	8250DB007394
68344	237	8250DB002878
68345	237	8250DB002879
68346	237	8250DB004460
68347	237	8250DB000453
68348	237	8250DB004477
68349	237	8250DB003321
68350	237	8250DB004571
68351	237	8250DB002013
68352	237	8250DB002014
68353	237	8250DB004636
68354	237	8250DB002016
68355	237	8250DB002015
68356	237	8250DB002017
68357	237	8250DB002018
68358	237	8250DB002019
68359	237	8250DB002020
68360	237	8250DB002021
68361	237	8250DB002022
68362	237	8250DB004565
68363	237	8250DB004566
68364	237	8250DB004567
68365	237	8250DB002031
68366	237	8250DB002032
68367	237	8250DB002033
68368	237	8250DB002034
68369	237	8250DB002035
68370	237	8250DB002036
\.


--
-- TOC entry 3485 (class 0 OID 20131)
-- Dependencies: 232
-- Data for Name: routes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.routes (id, terminus, name) FROM stdin;
\.


--
-- TOC entry 3506 (class 0 OID 0)
-- Dependencies: 215
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- TOC entry 3507 (class 0 OID 0)
-- Dependencies: 217
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 3508 (class 0 OID 0)
-- Dependencies: 213
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 40, true);


--
-- TOC entry 3509 (class 0 OID 0)
-- Dependencies: 221
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- TOC entry 3510 (class 0 OID 0)
-- Dependencies: 219
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, false);


--
-- TOC entry 3511 (class 0 OID 0)
-- Dependencies: 223
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 3512 (class 0 OID 0)
-- Dependencies: 225
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- TOC entry 3513 (class 0 OID 0)
-- Dependencies: 211
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 10, true);


--
-- TOC entry 3514 (class 0 OID 0)
-- Dependencies: 209
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 22, true);


--
-- TOC entry 3515 (class 0 OID 0)
-- Dependencies: 233
-- Name: route_connection_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.route_connection_id_seq', 1, false);


--
-- TOC entry 3516 (class 0 OID 0)
-- Dependencies: 229
-- Name: route_connections_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.route_connections_id_seq', 68370, true);


--
-- TOC entry 3255 (class 2606 OID 20077)
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 3260 (class 2606 OID 20007)
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- TOC entry 3263 (class 2606 OID 19973)
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3257 (class 2606 OID 19964)
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 3250 (class 2606 OID 19998)
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- TOC entry 3252 (class 2606 OID 19957)
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 3271 (class 2606 OID 19989)
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 3274 (class 2606 OID 20022)
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- TOC entry 3265 (class 2606 OID 19980)
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- TOC entry 3277 (class 2606 OID 19996)
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3280 (class 2606 OID 20036)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- TOC entry 3268 (class 2606 OID 20072)
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- TOC entry 3287 (class 2606 OID 20083)
-- Name: bus_routes bus_routes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bus_routes
    ADD CONSTRAINT bus_routes_pkey PRIMARY KEY (id);


--
-- TOC entry 3290 (class 2606 OID 20124)
-- Name: bus_stops bus_stops_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bus_stops
    ADD CONSTRAINT bus_stops_pkey PRIMARY KEY (id);


--
-- TOC entry 3283 (class 2606 OID 20058)
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 3245 (class 2606 OID 19950)
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- TOC entry 3247 (class 2606 OID 19948)
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 3243 (class 2606 OID 19941)
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 3299 (class 2606 OID 20118)
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 3305 (class 2606 OID 20142)
-- Name: route_connection route_connection_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.route_connection
    ADD CONSTRAINT route_connection_pkey PRIMARY KEY (id);


--
-- TOC entry 3296 (class 2606 OID 20095)
-- Name: route_connections route_connections_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.route_connections
    ADD CONSTRAINT route_connections_pkey PRIMARY KEY (id);


--
-- TOC entry 3303 (class 2606 OID 20135)
-- Name: routes routes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.routes
    ADD CONSTRAINT routes_pkey PRIMARY KEY (id);


--
-- TOC entry 3253 (class 1259 OID 20078)
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 3258 (class 1259 OID 20018)
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- TOC entry 3261 (class 1259 OID 20019)
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- TOC entry 3248 (class 1259 OID 20004)
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- TOC entry 3269 (class 1259 OID 20034)
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- TOC entry 3272 (class 1259 OID 20033)
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- TOC entry 3275 (class 1259 OID 20048)
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- TOC entry 3278 (class 1259 OID 20047)
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- TOC entry 3266 (class 1259 OID 20073)
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- TOC entry 3285 (class 1259 OID 20096)
-- Name: bus_routes_id_524164f3_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX bus_routes_id_524164f3_like ON public.bus_routes USING btree (id varchar_pattern_ops);


--
-- TOC entry 3288 (class 1259 OID 20125)
-- Name: bus_stops_id_83a69f39_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX bus_stops_id_83a69f39_like ON public.bus_stops USING btree (id varchar_pattern_ops);


--
-- TOC entry 3281 (class 1259 OID 20069)
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- TOC entry 3284 (class 1259 OID 20070)
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- TOC entry 3297 (class 1259 OID 20120)
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- TOC entry 3300 (class 1259 OID 20119)
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 3306 (class 1259 OID 20154)
-- Name: route_connection_routes_id_2d2256d4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX route_connection_routes_id_2d2256d4 ON public.route_connection USING btree (routes_id);


--
-- TOC entry 3307 (class 1259 OID 20155)
-- Name: route_connection_routes_id_2d2256d4_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX route_connection_routes_id_2d2256d4_like ON public.route_connection USING btree (routes_id varchar_pattern_ops);


--
-- TOC entry 3308 (class 1259 OID 20156)
-- Name: route_connection_stops_id_5971a9f5; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX route_connection_stops_id_5971a9f5 ON public.route_connection USING btree (stops_id);


--
-- TOC entry 3309 (class 1259 OID 20157)
-- Name: route_connection_stops_id_5971a9f5_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX route_connection_stops_id_5971a9f5_like ON public.route_connection USING btree (stops_id varchar_pattern_ops);


--
-- TOC entry 3291 (class 1259 OID 20108)
-- Name: route_connections_bus_route_id_4b49aefa; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX route_connections_bus_route_id_4b49aefa ON public.route_connections USING btree (bus_route_id);


--
-- TOC entry 3292 (class 1259 OID 20109)
-- Name: route_connections_bus_route_id_4b49aefa_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX route_connections_bus_route_id_4b49aefa_like ON public.route_connections USING btree (bus_route_id varchar_pattern_ops);


--
-- TOC entry 3293 (class 1259 OID 20110)
-- Name: route_connections_bus_stop_id_7b577cdf; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX route_connections_bus_stop_id_7b577cdf ON public.route_connections USING btree (bus_stop_id);


--
-- TOC entry 3294 (class 1259 OID 20111)
-- Name: route_connections_bus_stop_id_7b577cdf_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX route_connections_bus_stop_id_7b577cdf_like ON public.route_connections USING btree (bus_stop_id varchar_pattern_ops);


--
-- TOC entry 3301 (class 1259 OID 20143)
-- Name: routes_id_3e93b7c0_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX routes_id_3e93b7c0_like ON public.routes USING btree (id varchar_pattern_ops);


--
-- TOC entry 3312 (class 2606 OID 20013)
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3311 (class 2606 OID 20008)
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3310 (class 2606 OID 19999)
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3314 (class 2606 OID 20028)
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3313 (class 2606 OID 20023)
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3316 (class 2606 OID 20042)
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3315 (class 2606 OID 20037)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3317 (class 2606 OID 20059)
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3318 (class 2606 OID 20064)
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3321 (class 2606 OID 20144)
-- Name: route_connection route_connection_routes_id_2d2256d4_fk_routes_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.route_connection
    ADD CONSTRAINT route_connection_routes_id_2d2256d4_fk_routes_id FOREIGN KEY (routes_id) REFERENCES public.routes(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3322 (class 2606 OID 20149)
-- Name: route_connection route_connection_stops_id_5971a9f5_fk_bus_stops_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.route_connection
    ADD CONSTRAINT route_connection_stops_id_5971a9f5_fk_bus_stops_id FOREIGN KEY (stops_id) REFERENCES public.bus_stops(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3319 (class 2606 OID 20098)
-- Name: route_connections route_connections_bus_route_id_4b49aefa_fk_bus_routes_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.route_connections
    ADD CONSTRAINT route_connections_bus_route_id_4b49aefa_fk_bus_routes_id FOREIGN KEY (bus_route_id) REFERENCES public.bus_routes(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3320 (class 2606 OID 20126)
-- Name: route_connections route_connections_bus_stop_id_7b577cdf_fk_bus_stops_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.route_connections
    ADD CONSTRAINT route_connections_bus_stop_id_7b577cdf_fk_bus_stops_id FOREIGN KEY (bus_stop_id) REFERENCES public.bus_stops(id) DEFERRABLE INITIALLY DEFERRED;


-- Completed on 2022-08-09 14:41:58

--
-- PostgreSQL database dump complete
--

