--
-- PostgreSQL database dump
--

-- Dumped from database version 14.3
-- Dumped by pg_dump version 14.3

-- Started on 2022-07-19 19:24:55

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
0	40D
1	40D
2	18
3	18
4	197
5	197
6	40B
7	40B
8	9
9	9
10	331
11	331
12	77A
13	77A
14	111
15	111
16	83
17	83
18	83A
19	83A
20	61
21	61
22	49
23	49
24	16
25	16
26	43
27	43
28	42
29	42
30	37
31	37
32	151
33	151
34	54A
35	54A
36	15
37	15
38	122
39	122
40	123
41	123
42	451
43	451
44	65
45	65
46	65B
47	65B
48	7A
49	7A
50	68
51	68
52	41B
53	41B
54	41C
55	41C
56	41
57	41
58	44
59	44
60	40
61	40
62	150
63	150
64	7
65	7
66	27B
67	27B
68	102
69	102
70	39A
71	39A
72	39
73	39
74	6
75	6
76	14
77	14
78	63
79	63
80	L53
81	L53
82	26
83	26
84	L54
85	L54
86	H1
87	H1
88	L58
89	L58
90	L59
91	L59
92	H3
93	H3
94	H2
95	H2
96	33X
97	33X
98	33E
99	33E
100	33
101	33
102	15A
103	15A
104	15B
105	15B
106	16D
107	16D
108	104
109	104
110	N4
111	N4
112	120
113	120
114	13
115	13
116	1
117	1
118	236
119	236
120	C2
121	C2
122	C1
123	C1
124	270
125	270
126	C3
127	C3
128	C4
129	C4
130	C6
131	C6
132	C5
133	C5
134	52
135	52
136	17
137	17
138	84
139	84
140	140
141	140
142	27A
143	27A
144	53
145	53
146	130
147	130
148	184
149	184
150	70
151	70
152	38A
153	38A
154	38
155	38
156	4
157	4
158	56A
159	56A
160	27
161	27
162	47
163	47
164	69
165	69
166	145
167	145
168	155
169	155
170	40E
171	40E
172	11
173	11
174	220
175	220
176	46A
177	46A
178	339
179	339
180	761
181	761
182	161
183	161
184	79
185	79
186	79A
187	79A
188	332
189	332
190	951
191	951
192	238
193	238
194	631
195	631
196	751
197	751
198	7D
199	7D
200	7B
201	7B
202	38D
203	38D
204	84A
205	84A
206	175
207	175
208	38B
209	38B
210	68A
211	68A
212	69X
213	69X
214	118
215	118
216	41X
217	41X
218	185
219	185
220	44B
221	44B
222	84X
223	84X
224	452
225	452
226	536
227	536
228	51D
229	51D
230	77X
231	77X
232	116
233	116
234	46E
235	46E
236	41D
237	41D
238	32X
239	32X
240	27X
241	27X
242	33D
243	33D
244	76
245	76
246	15D
247	15D
248	39X
249	39X
250	142
251	142
252	X25
253	X25
254	X27
255	X27
256	P29
257	P29
258	X26
259	X26
260	X28
261	X28
262	X30
263	X30
264	X31
265	X31
266	X32
267	X32
268	114
269	114
270	174
271	174
272	952
273	952
274	59
275	59
276	75
277	75
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
8220DB000157	Glasilawn Road	157	53.3804116224	-6.2816378252
8220DB000158	Griffith Road	158	53.3814819498	-6.2835639541
8220DB000159	Griffith Parade	159	53.3827837192	-6.2828351125
8220DB000164	Beneavin Road	164	53.3884303639	-6.2804879229
8220DB000165	Beneavin Park	165	53.3890348747	-6.2837712488
8220DB000166	Beneavin School	166	53.3895835974	-6.2863051486
8220DB000167	Beneavin Road	167	53.3901866021	-6.2869875853
8220DB000168	Beneavin Park	168	53.3892599669	-6.2844237347
8220DB000169	Beneavin Court	169	53.3884339347	-6.2801119100
8220DB000173	Glasnamana Place	173	53.3821216123	-6.2805467484
8220DB000174	Tolka Estate	174	53.3806803549	-6.2809505621
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
8220DB000262	Parnell Square East	262	53.3539469610	-6.2627526489
8220DB000263	Parnell Square East	263	53.3537456235	-6.2625054540
8220DB000264	Parnell Square East	264	53.3535353027	-6.2622586268
8220DB000265	Parnell Square East	265	53.3533615685	-6.2620553807
8220DB000270	O'Connell St Upper	270	53.3506233915	-6.2604242916
8220DB000271	O'Connell St Lower	271	53.3485963626	-6.2594854200
8220DB000272	O'Connell St Upper	272	53.3514644799	-6.2607806057
8220DB000273	O'Connell Bridge	273	53.3472474160	-6.2588194015
8220DB000274	O'Connell St Upper	274	53.3503490838	-6.2607208686
8220DB000276	River Road	276	53.3774022009	-6.3317965831
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
8220DB000303	Eden Quay	303	53.3480599981	-6.2559924527
8220DB000307	O'Donovan Road	307	53.3345770895	-6.2800874642
8220DB000308	Oscar Square	308	53.3367711890	-6.2795336569
8220DB000309	Ardee Street	309	53.3378498918	-6.2789195882
8220DB000312	Wellington Quay	312	53.3454764728	-6.2662061555
8220DB000313	Bachelors Walk	313	53.3469069007	-6.2619724977
8220DB000315	Bachelors Walk	315	53.3470282859	-6.2616671551
8220DB000316	Bachelors Walk	316	53.3468926523	-6.2622284203
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
8220DB000341	South Townsend St	341	53.3459451129	-6.2564242394
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
8220DB000375	Dromard Terrace	375	53.3340611347	-6.2143845131
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
8220DB000969	Northside SC	969	53.3956824564	-6.2154896382
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
8220DB001012	Naomh Barróg GAA	1012	53.3902500117	-6.1526274286
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
8220DB001176	Coolock Lane Park	1176	53.3993550471	-6.2218778032
8220DB001177	Clonshaugh Ind Est W	1177	53.4008973631	-6.2252574828
8220DB001178	Clonshaugh Ind Est N	1178	53.4034534097	-6.2188492428
8220DB001179	Clonshaugh Ind Est E	1179	53.3999311496	-6.2189211831
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
8220DB001287	Synge Street	1287	53.3324783726	-6.2661177907
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
8220DB001490	Árd Scoil Rís	1490	53.3688768217	-6.2285576617
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
8220DB001591	Wellmount Road	1591	53.3871387919	-6.2994982132
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
8220DB002199	Glenaulin	2199	53.3519682959	-6.3559085340
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
8220DB002416	Cromwellsfort Road	2416	53.3163390335	-6.3178190001
8220DB002417	Cherry Grove	2417	53.3166352241	-6.3228955423
8220DB002418	Bigger Road	2418	53.3169699521	-6.3268899593
8220DB002419	Cherryfield Road	2419	53.3170799226	-6.3302477970
8220DB002431	Cromwellsfort Road	2431	53.3172032129	-6.3307082812
8220DB002432	Beechfield Avenue	2432	53.3170134667	-6.3255073800
8220DB002433	Cherry Grove	2433	53.3165862310	-6.3206910825
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
8220DB002452	St Peter's Road	2452	53.3161898762	-6.3321586972
8220DB002453	Limekiln Grove	2453	53.3148278808	-6.3305308234
8220DB002462	Greenhills CU	2462	53.3138231907	-6.3300297323
8220DB002463	St Peter's Road	2463	53.3153044515	-6.3311876243
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
8220DB002908	Spiddal Park	2908	53.3396951456	-6.3673584683
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
8220DB004322	Ashington Park	4322	53.3734731712	-6.3112546685
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
8220DB004494	Hawkins Street	4494	53.3469617101	-6.2571037215
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
8220DB006020	Barnville Green	6020	53.3380691560	-6.3766409166
8220DB006021	Cherry Orchard Ave	6021	53.3382012527	-6.3771014220
8220DB006023	Cedar Brook Place	6023	53.3372994358	-6.3788625684
8220DB006024	Cedar Brook Place	6024	53.3373727301	-6.3789649043
8220DB006025	Barnville Walk	6025	53.3359186523	-6.3791101484
8220DB006026	Barnville Walk	6026	53.3355919773	-6.3795429831
8220DB006027	Park West Station	6027	53.3345546216	-6.3786062973
8220DB006028	Park West Station	6028	53.3345956537	-6.3789801307
8220DB006029	Park West Hotel	6029	53.3325082489	-6.3748551255
8220DB006030	Park West Hotel	6030	53.3329468146	-6.3760396540
8220DB006042	Church Avenue	6042	53.3201481073	-6.2649815791
8220DB006056	Sisters of Charity	6056	53.3216863094	-6.3318542699
8220DB006057	Kilnamanagh Road	6057	53.3214610603	-6.3311725466
8220DB006059	The Spire of Dublin	6059	53.3502244283	-6.2601851754
8220DB006068	Ratoath Drive	6068	53.3902823798	-6.3170995738
8220DB006070	O'Hogan Road	6070	53.3408852097	-6.3370369912
8220DB006071	Parnell Street	6071	53.3530905892	-6.2601134999
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
8220DB006317	Clongriffin Station	6317	53.4028422286	-6.1514501582
8220DB006318	Clongriffin	6318	53.4023138147	-6.1509917902
8220DB006319	Grange Lodge Avenue	6319	53.4026629411	-6.1538041845
8220DB006320	Hole in the Wall Rd	6320	53.4015965591	-6.1621673101
8220DB006361	Jamestown Road	6361	53.4059486028	-6.2917991179
8220DB006362	Mayeston Lawn	6362	53.4065006334	-6.2895509138
8220DB006363	Hampton Wood	6363	53.4061452137	-6.2879557880
8220DB006367	Hampton Wood Road	6367	53.4038763116	-6.2914459818
8220DB007000	St. John's Church	7000	53.3244587169	-6.2117830675
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
8220DB007199	O'Tooles GAA	7199	53.3966454003	-6.1828021789
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
8220DB007339	Burlington Road	7339	53.3324079364	-6.2465409619
8220DB007340	Wilton Terrace	7340	53.3342559531	-6.2462999773
8220DB007358	Castletimon Park	7358	53.3954603017	-6.2295438404
8220DB007370	Burlington Road	7370	53.3316230664	-6.2457323258
8220DB007387	Merrion Sq South	7387	53.3394724672	-6.2508164580
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
8220DB007568	Eden Quay	7568	53.3482560827	-6.2558793032
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
8220DB007615	Granby Place	7615	53.3525081388	-6.2639378290
8220DB007622	Bachelors Walk	7622	53.3470699189	-6.2614401576
8220DB007623	Br an Phoirt Thoir	7623	53.3469141111	-6.2294534272
8220DB007661	Barry Avenue	7661	53.3954073830	-6.3108674535
8220DB007665	Poolbeg Street	7665	53.3468221439	-6.2567789715
8220DB007668	Charleston Road	7668	53.3241342651	-6.2578842114
8220DB007671	Gloucester Lane	7671	53.3537821130	-6.2526942059
8220DB007672	Broombridge Station	7672	53.3724256192	-6.2988821064
8220DB007686	Broombridge	7686	53.3724647622	-6.2991059828
8220DB007697	IKEA	7697	53.4063787655	-6.2760789903
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
8220DB007865	Shaw Street	7865	53.3451181034	-6.2521173330
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
8230DB001104	Limekiln Avenue	1104	53.3050190341	-6.3335394758
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
8230DB001320	Loretto Terrace	1320	53.2944654209	-6.2808744691
8230DB001321	Aranleigh	1321	53.2924619720	-6.2821850090
8230DB001322	Tara Hill Road	1322	53.2907131008	-6.2824501888
8230DB001323	Barton Drive	1323	53.2890805752	-6.2826806790
8230DB001324	Barton Road West	1324	53.2872489119	-6.2828141419
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
8230DB002355	Fortunestown Road	2355	53.2792709316	-6.4020244100
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
8230DB002445	Greenhills Park	2445	53.3081170935	-6.3397815186
8230DB002446	St Mel's Avenue	2446	53.3083464753	-6.3401177663
8230DB002447	St Aengus Church	2447	53.2929855283	-6.3426785783
8230DB002454	St James's Road	2454	53.3126465240	-6.3320116984
8230DB002455	St Brendan's Cres	2455	53.3116408002	-6.3372285443
8230DB002456	St Killian's Avenue	2456	53.3100298902	-6.3396622696
8230DB002457	Limekiln Avenue	2457	53.3072797684	-6.3370979067
8230DB002458	St James's Road	2458	53.3071911911	-6.3371913857
8230DB002459	St Killian's Avenue	2459	53.3103595542	-6.3394543823
8230DB002460	St Brendan's Cres	2460	53.3121889734	-6.3365769091
8230DB002461	St Joseph's Road	2461	53.3127453741	-6.3326531890
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
8230DB002919	Willbrook Road	2919	53.2959242674	-6.2854365643
8230DB002920	Otterbrook	2920	53.2938136802	-6.2874262906
8230DB002921	Willbrook Park	2921	53.2912727338	-6.2894930159
8230DB002922	Fonthill Park	2922	53.2891301418	-6.2905086077
8230DB002923	Glendoher Road	2923	53.2871896763	-6.2918310122
8230DB002924	Everton Hall	2924	53.2858282116	-6.2940451334
8230DB002925	Ballyboden Road	2925	53.2833438237	-6.2963037885
8230DB002927	Edmondstown Road	2927	53.2771350458	-6.2970756020
8230DB002929	Edmondstown Golf	2929	53.2718329035	-6.2990256437
8230DB002930	Kilmashogue Cemetery	2930	53.2679047343	-6.2983720015
8230DB002933	Rockbrook	2933	53.2618708812	-6.2975472760
8230DB002934	Rockbrook	2934	53.2620973839	-6.2976731914
8230DB002935	The Merry Ploughboy	2935	53.2641307659	-6.2971876586
8230DB002936	Kilmashogue Cemetery	2936	53.2660993482	-6.2978290346
8230DB002937	Edmondstown NS	2937	53.2686479762	-6.2988072558
8230DB002938	Edmondstown Golf	2938	53.2716453279	-6.2991080596
8230DB002940	Moyville	2940	53.2803586860	-6.2974873088
8230DB002941	Ballyboden Road	2941	53.2830890975	-6.2967188605
8230DB002942	Hillside Park	2942	53.2849290934	-6.2952808221
8230DB002943	Glendoher Road	2943	53.2872810097	-6.2919323627
8230DB002944	Edenbrook Court	2944	53.2900346315	-6.2902774900
8230DB002945	Fairbrook Lawn	2945	53.2916761086	-6.2894168959
8230DB002946	Willbrook Road	2946	53.2945128459	-6.2872933062
8230DB002947	Rathfarnham Church	2947	53.2962538348	-6.2852283323
8230DB002948	Ballyboden Crescent	2948	53.2819527231	-6.2958192274
8230DB002949	Moyville Lawns	2949	53.2816733045	-6.2932508263
8230DB002950	Pearse Brothers Park	2950	53.2817934073	-6.2884619137
8230DB002954	Whitechurch Green	2954	53.2780415019	-6.2863174624
8230DB002955	Ballyboden Church	2955	53.2778719664	-6.2895333667
8230DB002956	Glenmore Park	2956	53.2781201947	-6.2861643541
8230DB002965	Whitechurch Road	2965	53.2803041452	-6.2842773501
8230DB002966	Hermitage Avenue	2966	53.2824740662	-6.2789262858
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
8230DB004340	The Square	4340	53.2860074546	-6.3737707768
8230DB004341	The Square	4341	53.2856558425	-6.3723742773
8230DB004342	The Square Tallaght	4342	53.2861056440	-6.3730621139
8230DB004344	The Square	4344	53.2857103567	-6.3724172006
8230DB004347	Tallaght Luas	4347	53.2862220524	-6.3750075131
8230DB004348	Tallaght Luas	4348	53.2866720396	-6.3750504312
8230DB004357	Hollyville Lawn	4357	53.3579414400	-6.3806031270
8230DB004359	Hollyville Lawn	4359	53.3579749523	-6.3790994748
8230DB004360	Robin Villas	4360	53.3571539461	-6.3735869504
8230DB004361	Palmerstown Village	4361	53.3556115756	-6.3712119575
8230DB004379	Red Cow Luas	4379	53.3162963466	-6.3737150862
8230DB004392	Greenhills College	4392	53.3069669451	-6.3340038252
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
8230DB004576	Grange Castle	4576	53.3193629651	-6.4342996956
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
8230DB004862	Orwell Road	4862	53.2992050721	-6.3195427492
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
8230DB005126	Holy Family Comm Sch	5126	53.2772969054	-6.4799539992
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
8230DB006184	Greenoge	6184	53.2966622832	-6.4705351898
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
8230DB006280	Dalriada	6280	53.2710828230	-6.3260436556
8230DB006282	Ballycullen Road	6282	53.2716360705	-6.3289607888
8230DB006283	Hunter's Avenue	6283	53.2723344986	-6.3294133499
8230DB006285	Dalriada	6285	53.2711308950	-6.3262666791
8230DB006286	Woodstown	6286	53.2719366198	-6.3222018863
8230DB006287	Stocking Wood	6287	53.2734534408	-6.3163097065
8230DB006288	Stocking Avenue	6288	53.2729429685	-6.3126262244
8230DB006289	Adamstown Station	6289	53.3362624534	-6.4683977815
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
8230DB007068	St Enda's Park	7068	53.2846615487	-6.2810281171
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
8230DB007181	Belgard Square South	7181	53.2860546071	-6.3732740331
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
8240DB000332	Harristown	332	53.4173526534	-6.2785387565
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
8240DB000949	The Coast	949	53.4031715595	-6.1316127786
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
8240DB002959	Blanchardstown Ctr	2959	53.3941479797	-6.3921451443
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
8240DB003577	Myra Manor	3577	53.4321596018	-6.1770429823
8240DB003578	Streamstown Lane	3578	53.4378137935	-6.1770869184
8240DB003579	Auburn House	3579	53.4406701686	-6.1763775382
8240DB003580	Malahide Demense	3580	53.4432561965	-6.1738580644
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
8240DB003639	Malahide Castle	3639	53.4454107847	-6.1731032098
8240DB003640	Malahide Castle	3640	53.4462983942	-6.1741340523
8240DB003641	Estuary Road	3641	53.4527251816	-6.1835856101
8240DB003642	Sacred Heart Church	3642	53.4551261647	-6.1812996341
8240DB003643	Yellow Walls Rd	3643	53.4512379026	-6.1691791266
8240DB003644	Malahide Demense	3644	53.4430120664	-6.1737631565
8240DB003645	Auburn House	3645	53.4405342866	-6.1763080913
8240DB003646	Streamstown Lane	3646	53.4391157583	-6.1770010716
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
8240DB003874	Killossery	3874	53.4886435915	-6.3042106249
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
8240DB004921	Laurelton	4921	53.4682543855	-6.2368334494
8240DB004922	Applewood	4922	53.4694062781	-6.2308506839
8240DB004923	Jugback Terrace	4923	53.4686904261	-6.2280335067
8240DB004924	St Colmcille GAA	4924	53.4682558504	-6.2205652496
8240DB004925	Ballintrane Wood	4925	53.4521609247	-6.2286013426
8240DB004926	Highfield Green	4926	53.4544384961	-6.2246064631
8240DB004957	Abbeyvale	4957	53.4596261517	-6.2509106855
8240DB004958	North Street Park	4958	53.4649970648	-6.2172071964
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
8240DB005064	Balbriggan	5064	53.6059394887	-6.1839372822
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
8240DB005082	Millview	5082	53.4471974653	-6.1765044087
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
8240DB006235	Old Airport Road	6235	53.4181667953	-6.2770314314
8240DB006274	Aquatic Centre	6274	53.3976783860	-6.3714553726
8240DB006310	Holywell Crescent	6310	53.4435673356	-6.2110442344
8240DB006311	Holywell Close	6311	53.4434239591	-6.2092738466
8240DB006312	Holywell Crescent	6312	53.4434649549	-6.2114098412
8240DB006348	Lanesborough Park	6348	53.4035024295	-6.3024101130
8240DB006359	Seatown Road	6359	53.4622241148	-6.2132870569
8240DB006364	Century Business Pk	6364	53.4025827575	-6.3015744272
8240DB006365	Lanesborough Avenue	6365	53.4043825773	-6.2916512988
8240DB006366	Century Business Pk	6366	53.4026514127	-6.3013460964
8240DB007002	Airside	7002	53.4459849264	-6.2242815713
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
8240DB007072	Carlton Hotel	7072	53.4192687601	-6.3781681111
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
8240DB007114	Seatown Road	7114	53.4602431194	-6.2160509810
8240DB007115	Nevinstown Lane	7115	53.4449757756	-6.2271389247
8240DB007116	Swords Park	7116	53.4568279070	-6.2124595148
8240DB007124	Ballycoolin  Bus Pk	7124	53.4084344681	-6.3581538116
8240DB007125	Ballycoolin Bus Pk	7125	53.4082421006	-6.3578904722
8240DB007126	IDA Ireland	7126	53.4058768160	-6.3564775044
8240DB007131	Charlestown SC	7131	53.4029514511	-6.3041165116
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
8240DB007162	Hansfield Road	7162	53.3912811994	-6.4334053041
8240DB007163	Allendale Square	7163	53.3890225986	-6.4304662849
8240DB007166	Parkway Station	7166	53.3770936033	-6.3457871360
8240DB007167	Parkway Station	7167	53.3758663016	-6.3447825923
8240DB007169	Leisure Centre	7169	53.4898314017	-6.1417306292
8240DB007170	Harneys Lane	7170	53.4933776142	-6.1236395962
8240DB007172	Old Road	7172	53.5209860624	-6.1091924893
8240DB007173	Old Market Green	7173	53.6061962794	-6.1795437016
8240DB007174	Peter & Paul Church	7174	53.6039518984	-6.1844456932
8240DB007175	Ardgillan Demesne	7175	53.5895431024	-6.1544127335
8240DB007189	Swords Park	7189	53.4608552609	-6.2101065340
8240DB007194	Holywell View	7194	53.4472269807	-6.2075480676
8240DB007195	Holywell View	7195	53.4473215460	-6.2078602557
8240DB007196	Holywell Wood	7196	53.4449556373	-6.2125214906
8240DB007197	Holywell Drive	7197	53.4450151362	-6.2122931687
8240DB007204	Seaview	7204	53.4928668715	-6.1066457531
8240DB007210	Airside Ind. Estate	7210	53.4461428678	-6.2228146211
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
8240DB007721	Turvey Ave	7721	53.4864496284	-6.1560892429
8240DB007722	Turvey Ave	7722	53.4866544374	-6.1565475213
8240DB007723	Semple Woods	7723	53.4828405334	-6.1551910048
8240DB007724	Semple Woods	7724	53.4828870712	-6.1552944643
8240DB007725	Red Arches Rd	7725	53.4012492817	-6.1299674584
8240DB007866	Hollywoodrath Avenue	7866	53.4237660838	-6.3784182346
8240DB007982	Dewberry Park	7982	53.4342183269	-6.1271202339
8240DB010377	Applewood	10377	53.4706545635	-6.2466309361
8240DB010378	Rolestown	10378	53.4880864144	-6.3061165978
8240DB010379	Rolestown	10379	53.4882329143	-6.3063066693
8240DB010380	Applegreen	10380	53.4703801466	-6.2456932297
8240DB010381	Bunbury Gate Avenue	10381	53.4680681219	-6.2400495901
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
8250DB002975	Kingston	2975	53.2718651811	-6.2478804336
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
8250DB003256	Cornelscourt Village	3256	53.2688188192	-6.1666385067
8250DB003258	Westminister Grove	3258	53.2725411593	-6.1719821118
8250DB003259	Westminister Grove	3259	53.2728336740	-6.1717147246
8250DB003260	Cornelscourt Village	3260	53.2696908070	-6.1666461718
8250DB003261	Willow Grove	3261	53.2681805992	-6.1660511127
8250DB003262	Cornelscourt SC	3262	53.2657264011	-6.1613587388
8250DB003265	Mart Lane	3265	53.2695007973	-6.1677338161
8250DB003266	St Brigid's School	3266	53.2693227318	-6.1701853187
8250DB003267	Gordon Avenue	3267	53.2688643930	-6.1754674383
8250DB003268	Plunkett Avenue	3268	53.2677546827	-6.1787231119
8250DB003269	Hainault Road	3269	53.2672336828	-6.1810990675
8250DB003270	Foxrock Village	3270	53.2665831477	-6.1838252760
8250DB003271	The Coppins	3271	53.2636991422	-6.1815489216
8250DB003272	Tresillian	3272	53.2621411830	-6.1801759306
8250DB003273	Kerrymount Avenue	3273	53.2603082924	-6.1778703511
8250DB003274	Brighton Avenue	3274	53.2584906455	-6.1742152741
8250DB003275	Mountsandel Park	3275	53.2580980971	-6.1708893962
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
8250DB003290	Brighton Road	3290	53.2580930221	-6.1711444298
8250DB003291	Tresillian	3291	53.2615917093	-6.1795097034
8250DB003292	The Coppins	3292	53.2634199984	-6.1815157939
8250DB003293	Foxrock Village	3293	53.2662399854	-6.1837198849
8250DB003294	Westminster Road	3294	53.2673647624	-6.1808536236
8250DB003295	Plunkett Avenue	3295	53.2679631655	-6.1782494768
8250DB003296	Gordon Avenue	3296	53.2692092055	-6.1750929193
8250DB003297	Mart Lane	3297	53.2696798637	-6.1729588180
8250DB003298	St Brigid's School	3298	53.2693929924	-6.1694926309
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
8250DB003346	Westminster Road	3346	53.2697298277	-6.1732865400
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
8250DB003546	Shankill Station	3546	53.2374861507	-6.1176831144
8250DB003547	Shanganagh Park	3547	53.2394648303	-6.1166223896
8250DB003548	Shanganagh Cliffs	3548	53.2418375469	-6.1160387116
8250DB003551	Rathsallagh Drive	3551	53.2395934210	-6.1167965376
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
8250DB004982	Cois Coille	4982	53.2465325040	-6.1287797420
8250DB004983	Dun Laoghaire Stn	4983	53.2940779011	-6.1343078684
8250DB004984	Burton Hall Road	4984	53.2736568459	-6.2033932702
8250DB004987	Heather Lawn	4987	53.2773584977	-6.2633413194
8250DB004988	Heather Lawn	4988	53.2776523135	-6.2631494558
8250DB005013	Belarmine	5013	53.2612838641	-6.2204312737
8250DB005014	Littlewood	5014	53.2588998275	-6.2208900068
8250DB005015	Belarmine Avenue	5015	53.2586171146	-6.2206169452
8250DB005016	Belarmine	5016	53.2614258328	-6.2197058447
8250DB005032	Rosemount Estate	5032	53.2954690929	-6.2461042634
8250DB005045	St Raphaela's Road	5045	53.2835769575	-6.2091712972
8250DB005046	Valley Drive	5046	53.2459061836	-6.1392966198
8250DB005047	Valley Drive	5047	53.2458119527	-6.1401698399
8250DB005051	Pine Valley	5051	53.2735579992	-6.2597467857
8250DB005052	Grange Hall	5052	53.2720313631	-6.2549207842
8250DB005090	Shanganagh Cemetery	5090	53.2217038089	-6.1217601153
8250DB005105	Cluny Grove	5105	53.2692087138	-6.1275345859
8250DB005106	Ballyogan Luas	5106	53.2549333936	-6.1849483998
8250DB005127	Cabinteely Bypass	5127	53.2620155970	-6.1504098828
8250DB005128	Clonkeen Road	5128	53.2655267045	-6.1577392758
8250DB005142	Sandyford Luas	5142	53.2776744716	-6.2051742301
8250DB005143	Blackthorn Green	5143	53.2756669551	-6.2277962614
8250DB005168	Kerrymount Avenue	5168	53.2596353418	-6.1773593303
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
8250DB006199	Rockview	6199	53.2691816301	-6.2408235494
8250DB006200	Rockview	6200	53.2693042936	-6.2406086109
8250DB006201	Sandyford View	6201	53.2695722754	-6.2392782137
8250DB006334	Frascati SC	6334	53.3010989674	-6.1803351700
8250DB007056	Somerton	7056	53.2735313073	-6.1476185049
8250DB007057	Stillorgan Luas	7057	53.2801060993	-6.2102762349
8250DB007176	Greenlands	7176	53.2735190400	-6.2290247050
8250DB007188	Temple Road	7188	53.2994765772	-6.1747477516
8250DB007226	Richmond Grove	7226	53.2885567498	-6.1537934416
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
8250DB007667	Saval Park Road	7667	53.2768275478	-6.1193286702
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
8260DB005115	Kilcock	5115	53.4031789869	-6.6711621509
8260DB005117	Kilcock	5117	53.4044442491	-6.6734087416
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
8260DB007280	Barrack Street	7280	53.1327594194	-6.6108211478
8260DB007281	Waterworks Road	7281	53.1303495930	-6.5999898877
8260DB007282	Waterworks Road	7282	53.1303236933	-6.6000803926
8260DB007283	Ballymore Road	7283	53.1287106522	-6.5875505830
8260DB007284	GAA club	7284	53.1287902723	-6.5874433687
8260DB007286	Ballymore Road	7286	53.1264974690	-6.5805702859
8260DB007287	Bishops Lane	7287	53.1292806780	-6.5765484188
8260DB007288	Lake Picnic Area	7288	53.1294301990	-6.5762744930
8260DB007289	Main Street	7289	53.1333997478	-6.6148654962
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
8260DB007766	Hazelhatch Station	7766	53.3235857217	-6.5222477205
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
8260DB007818	Intel Campus 1	7818	53.3746471745	-6.5231256848
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
8350DB004137	Boghall Road	4137	53.1886313684	-6.1028086185
8350DB004138	Cherry Tree Drive	4138	53.1884473363	-6.1059294812
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
8350DB004176	O'Byrne Road	4176	53.1918652130	-6.1072006009
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
8350DB004590	Hollybrook Park	4590	53.1843623051	-6.1090573674
8350DB004591	Southern Cross	4591	53.1853249084	-6.1045856702
8350DB004650	Kilpeddar Grove	4650	53.1109028921	-6.1048134938
8350DB004651	Garden Village	4651	53.1011911797	-6.1068235902
8350DB004652	Coillte Offices	4652	53.0971249236	-6.1100037570
8350DB004653	Newtownmountkennedy	4653	53.0921962383	-6.1120862470
8350DB004654	Springfield Heights	4654	53.0884641636	-6.1091441198
8350DB004655	Newtown Business Ctr	4655	53.0843459250	-6.1050997786
8350DB004656	Newcastle Hospital	4656	53.0794899781	-6.1004617258
8350DB004657	Newcastle Hospital	4657	53.0798354229	-6.1012675204
8350DB004658	Springfield Heights	4658	53.0888497467	-6.1102171380
8350DB004659	Newtownmountkennedy	4659	53.0918303260	-6.1122515825
8350DB004660	Coillte Offices	4660	53.0977967081	-6.1098548375
8350DB004661	Garden Village	4661	53.0996898040	-6.1085024235
8350DB004844	Glencormack Road	4844	53.1743757146	-6.1392822793
8350DB004956	Sea Road	4956	53.0711237336	-6.0638025809
8350DB005088	Woodview Drive	5088	53.1886580059	-6.1095716909
8350DB005089	Wolfe Tone Square	5089	53.1903896846	-6.1093757746
8350DB005091	Ballywaltrim Heights	5091	53.1879238916	-6.1273972138
8350DB005092	Springfield Cemetery	5092	53.1858287287	-6.1290597457
8350DB005110	Arduan	5110	53.2202730815	-6.4697991216
8350DB005111	Troopersfield	5111	53.1672517576	-6.5362399752
8350DB005135	Kilruddery Cottages	5135	53.1767923001	-6.0954167776
8350DB005136	Gorse Hill	5136	53.0778880042	-6.0674098314
8350DB005139	Windgate Cottages	5139	53.1617095882	-6.0847781424
8350DB005167	Woodview Drive	5167	53.1886017386	-6.1094245152
8350DB006000	Kilmacanogue	6000	53.1704672157	-6.1365045520
8350DB006019	Glen Of The Downs	6019	53.1290328372	-6.1042398456
8350DB006097	Ashridge Green	6097	53.2003151141	-6.1763897827
8350DB006137	Kilcoole Golf Club	6137	53.0992432845	-6.0672888988
8350DB006138	Drake's Way	6138	53.0807694771	-6.1023459846
8350DB006139	Bridge Road	6139	53.1954526779	-6.1958890869
8350DB007207	Russborough House	7207	53.1408899060	-6.5605742940
8350DB007208	Russborough House	7208	53.1408291827	-6.5607556949
8350DB007248	Valleymount Road	7248	53.1509293542	-6.5553644683
8350DB007249	Valleymount Road	7249	53.1508690018	-6.5555758089
8350DB007250	Old Ballymore Road	7250	53.1677261041	-6.5368071515
8350DB007251	Old Ballymore Road	7251	53.1678689339	-6.5367275073
8350DB007252	Burgage	7252	53.1634630958	-6.5439214068
8350DB007253	Burgage	7253	53.1635899726	-6.5440068448
8350DB007254	Valleymount Bridge	7254	53.1491242247	-6.5363482832
8350DB007255	Valleymount Bridge	7255	53.1487245232	-6.5367356349
8350DB007256	Pollaphuca Road	7256	53.1298591386	-6.5273045792
8350DB007257	Pollaphuca Road	7257	53.1298022761	-6.5270674232
8350DB007258	Pollaphuca	7258	53.1210403371	-6.5359280494
8350DB007259	Pollaphuca	7259	53.1210944268	-6.5359411520
8350DB007260	Humphreystown	7260	53.1165866969	-6.5384845900
8350DB007261	Humphreystown	7261	53.1164733835	-6.5380402595
8350DB007262	Valleymount School	7262	53.1059862647	-6.5250884317
8350DB007263	Valleymount School	7263	53.1067214980	-6.5249437873
8350DB007264	Lake Drive	7264	53.0963036792	-6.5248970207
8350DB007265	Lake Drive	7265	53.0966645322	-6.5250041343
8350DB007266	Carrigacurra View	7266	53.0958681057	-6.5137278327
8350DB007268	Ballyknockan	7268	53.1061620069	-6.4988853620
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
8350DB007366	Bray Business Park	7366	53.1839148878	-6.1182646312
8350DB007367	Shoreline Sports	7367	53.1828656852	-6.1235476541
8350DB007368	Giltspur	7368	53.1814106830	-6.1281897274
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
18338	0	8240DB007073
18339	0	8240DB007097
18340	0	8240DB007098
18341	0	8240DB007099
18342	0	8240DB007100
18343	0	8240DB007101
18344	0	8240DB007505
18345	0	8240DB005071
18346	0	8240DB005072
18347	0	8240DB007342
18348	0	8240DB007125
18349	0	8240DB007344
18350	0	8240DB002510
18351	0	8240DB007242
18352	0	8240DB007238
18353	0	8240DB007224
18354	0	8240DB001581
18355	0	8240DB001582
18356	0	8220DB004793
18357	0	8220DB006068
18358	0	8220DB001584
18359	0	8220DB000983
18360	0	8220DB000984
18361	0	8220DB000985
18362	0	8220DB001529
18363	0	8220DB004542
18364	0	8220DB001531
18365	0	8220DB001532
18366	0	8220DB001533
18367	0	8220DB001534
18368	0	8220DB001535
18369	0	8220DB001536
18370	0	8220DB001537
18371	0	8220DB000186
18372	0	8220DB000838
18373	0	8220DB000839
18374	0	8220DB000840
18375	0	8220DB000841
18376	0	8220DB000049
18377	0	8220DB000051
18378	0	8220DB000052
18379	0	8220DB004725
18380	1	8220DB004725
18381	1	8220DB000052
18382	1	8220DB000051
18383	1	8220DB000049
18384	1	8220DB000841
18385	1	8220DB000840
18386	1	8220DB000839
18387	1	8220DB000838
18388	1	8220DB000186
18389	1	8220DB001537
18390	1	8220DB001536
18391	1	8220DB001535
18392	1	8220DB001534
18393	1	8220DB001533
18394	1	8220DB001532
18395	1	8220DB001531
18396	1	8220DB004542
18397	1	8220DB001529
18398	1	8220DB000985
18399	1	8220DB000984
18400	1	8220DB000983
18401	1	8220DB001584
18402	1	8220DB006068
18403	1	8220DB004793
18404	1	8240DB001582
18405	1	8240DB001581
18406	1	8240DB007224
18407	1	8240DB007238
18408	1	8240DB007242
18409	1	8240DB002510
18410	1	8240DB007344
18411	1	8240DB007125
18412	1	8240DB007342
18413	1	8240DB005072
18414	1	8240DB005071
18415	1	8240DB007505
18416	1	8240DB007101
18417	1	8240DB007100
18418	1	8240DB007099
18419	1	8240DB007098
18420	1	8240DB007097
18421	1	8240DB007073
18422	2	8230DB004359
18423	2	8230DB004360
18424	2	8230DB004361
18425	2	8230DB002202
18426	2	8230DB002203
18427	2	8230DB002204
18428	2	8230DB004888
18429	2	8230DB004799
18430	2	8230DB002205
18431	2	8230DB002687
18432	2	8220DB002688
18433	2	8220DB002689
18434	2	8220DB002696
18435	2	8220DB002697
18436	2	8220DB002700
18437	2	8220DB002701
18438	2	8220DB002702
18439	2	8220DB002784
18440	2	8220DB002785
18441	2	8220DB002786
18442	2	8220DB002787
18443	2	8220DB002181
18444	2	8220DB002182
18445	2	8220DB002778
18446	2	8220DB002185
18447	2	8220DB001421
18448	2	8220DB002317
18449	2	8220DB002318
18450	2	8220DB002319
18451	2	8220DB002464
18452	2	8220DB002465
18453	2	8220DB002466
18454	2	8220DB002467
18455	2	8220DB002494
18456	2	8220DB002495
18457	2	8220DB002496
18458	2	8220DB002497
18459	2	8220DB002471
18460	2	8220DB002472
18461	2	8220DB002473
18462	2	8220DB002474
18463	2	8220DB002475
18464	2	8220DB002476
18465	2	8220DB002477
18466	2	8220DB002478
18467	2	8220DB004527
18468	2	8220DB002788
18469	2	8220DB002789
18470	2	8220DB002790
18471	2	8220DB000903
18472	2	8220DB000904
18473	2	8220DB000779
18474	2	8220DB000780
18475	2	8220DB000781
18476	2	8220DB002796
18477	2	8220DB002797
18478	2	8220DB000414
18479	2	8220DB000415
18480	2	8220DB000416
18481	2	8220DB000417
18482	2	8220DB002800
18483	2	8220DB002801
18484	2	8220DB007599
18485	3	8220DB007599
18486	3	8220DB002801
18487	3	8220DB002800
18488	3	8220DB000417
18489	3	8220DB000416
18490	3	8220DB000415
18491	3	8220DB000414
18492	3	8220DB002797
18493	3	8220DB002796
18494	3	8220DB000781
18495	3	8220DB000780
18496	3	8220DB000779
18497	3	8220DB000904
18498	3	8220DB000903
18499	3	8220DB002790
18500	3	8220DB002789
18501	3	8220DB002788
18502	3	8220DB004527
18503	3	8220DB002478
18504	3	8220DB002477
18505	3	8220DB002476
18506	3	8220DB002475
18507	3	8220DB002474
18508	3	8220DB002473
18509	3	8220DB002472
18510	3	8220DB002471
18511	3	8220DB002497
18512	3	8220DB002496
18513	3	8220DB002495
18514	3	8220DB002494
18515	3	8220DB002467
18516	3	8220DB002466
18517	3	8220DB002465
18518	3	8220DB002464
18519	3	8220DB002319
18520	3	8220DB002318
18521	3	8220DB002317
18522	3	8220DB001421
18523	3	8220DB002185
18524	3	8220DB002778
18525	3	8220DB002182
18526	3	8220DB002181
18527	3	8220DB002787
18528	3	8220DB002786
18529	3	8220DB002785
18530	3	8220DB002784
18531	3	8220DB002702
18532	3	8220DB002701
18533	3	8220DB002700
18534	3	8220DB002697
18535	3	8220DB002696
18536	3	8220DB002689
18537	3	8220DB002688
18538	3	8230DB002687
18539	3	8230DB002205
18540	3	8230DB004799
18541	3	8230DB004888
18542	3	8230DB002204
18543	3	8230DB002203
18544	3	8230DB002202
18545	3	8230DB004361
18546	3	8230DB004360
18547	3	8230DB004359
18548	4	8240DB007210
18549	4	8240DB003676
18550	4	8240DB005073
18551	4	8240DB005074
18552	4	8240DB006054
18553	4	8240DB004330
18554	4	8240DB003679
18555	4	8240DB005075
18556	4	8240DB005076
18557	4	8240DB003682
18558	4	8240DB003864
18559	4	8240DB003865
18560	4	8240DB007133
18561	4	8240DB010377
18562	4	8240DB007134
18563	4	8240DB003867
18564	4	8240DB007135
18565	4	8240DB007136
18566	4	8240DB010378
18567	5	8240DB010378
18568	5	8240DB007136
18569	5	8240DB007135
18570	5	8240DB003867
18571	5	8240DB007134
18572	5	8240DB010377
18573	5	8240DB007133
18574	5	8240DB003865
18575	5	8240DB003864
18576	5	8240DB003682
18577	5	8240DB005076
18578	5	8240DB005075
18579	5	8240DB003679
18580	5	8240DB004330
18581	5	8240DB006054
18582	5	8240DB005074
18583	5	8240DB005073
18584	5	8240DB003676
18585	5	8240DB007210
18586	6	8220DB006004
18587	6	8220DB000007
18588	6	8220DB000011
18589	6	8220DB000014
18590	6	8220DB000015
18591	6	8220DB000834
18592	6	8220DB000835
18593	6	8220DB000836
18594	6	8220DB000837
18595	6	8220DB001506
18596	6	8220DB001507
18597	6	8220DB001508
18598	6	8220DB001509
18599	6	8220DB001510
18600	6	8220DB001511
18601	6	8220DB001512
18602	6	8220DB001538
18603	6	8220DB004548
18604	6	8220DB000980
18605	6	8220DB000981
18606	6	8220DB001518
18607	6	8220DB001519
18608	6	8220DB001520
18609	6	8220DB007661
18610	6	8220DB001521
18611	6	8220DB004546
18612	6	8220DB001559
18613	6	8220DB001560
18614	6	8220DB001280
18615	6	8240DB006348
18616	6	8240DB001182
18617	6	8240DB001550
18618	6	8240DB001551
18619	6	8240DB001552
18620	6	8240DB001553
18621	6	8240DB007023
18622	6	8240DB007014
18623	6	8240DB004315
18624	7	8240DB004315
18625	7	8240DB007014
18626	7	8240DB007023
18627	7	8240DB001553
18628	7	8240DB001552
18629	7	8240DB001551
18630	7	8240DB001550
18631	7	8240DB001182
18632	7	8240DB006348
18633	7	8220DB001280
18634	7	8220DB001560
18635	7	8220DB001559
18636	7	8220DB004546
18637	7	8220DB001521
18638	7	8220DB007661
18639	7	8220DB001520
18640	7	8220DB001519
18641	7	8220DB001518
18642	7	8220DB000981
18643	7	8220DB000980
18644	7	8220DB004548
18645	7	8220DB001538
18646	7	8220DB001512
18647	7	8220DB001511
18648	7	8220DB001510
18649	7	8220DB001509
18650	7	8220DB001508
18651	7	8220DB001507
18652	7	8220DB001506
18653	7	8220DB000837
18654	7	8220DB000836
18655	7	8220DB000835
18656	7	8220DB000834
18657	7	8220DB000015
18658	7	8220DB000014
18659	7	8220DB000011
18660	7	8220DB000007
18661	7	8220DB006004
18662	8	8240DB007132
18663	8	8240DB006230
18664	8	8240DB006228
18665	8	8220DB004788
18666	8	8220DB006273
18667	8	8220DB000136
18668	8	8220DB000137
18669	8	8220DB000193
18670	8	8220DB000138
18671	8	8220DB000167
18672	8	8220DB000168
18673	8	8220DB000169
18674	8	8220DB000141
18675	8	8220DB000142
18676	8	8220DB000143
18677	8	8220DB000115
18678	8	8220DB000037
18679	8	8220DB000038
18680	8	8220DB000039
18681	8	8220DB000040
18682	8	8220DB000146
18683	8	8220DB000147
18684	8	8220DB000184
18685	8	8220DB000185
18686	8	8220DB000186
18687	8	8220DB000187
18688	8	8220DB000188
18689	8	8220DB000189
18690	8	8220DB000190
18691	8	8220DB000191
18692	8	8220DB000819
18693	8	8220DB000263
18694	8	8220DB000277
18695	8	8220DB000336
18696	8	8220DB001278
18697	8	8220DB001282
18698	8	8220DB004456
18699	8	8220DB001284
18700	8	8220DB001285
18701	8	8220DB001286
18702	8	8220DB001288
18703	8	8220DB001289
18704	8	8220DB001290
18705	8	8220DB001291
18706	8	8220DB002389
18707	8	8220DB002390
18708	8	8220DB002391
18709	8	8220DB002392
18710	8	8220DB002393
18711	8	8220DB002394
18712	8	8220DB001090
18713	8	8220DB002413
18714	8	8220DB002414
18715	8	8220DB002415
18716	8	8220DB002416
18717	8	8220DB002417
18718	8	8220DB002418
18719	8	8220DB002419
18720	8	8220DB002452
18721	8	8220DB002453
18722	8	8230DB002454
18723	8	8230DB002455
18724	8	8230DB002456
18725	8	8230DB002445
18726	8	8230DB002457
18727	9	8230DB002457
18728	9	8230DB002445
18729	9	8230DB002456
18730	9	8230DB002455
18731	9	8230DB002454
18732	9	8220DB002453
18733	9	8220DB002452
18734	9	8220DB002419
18735	9	8220DB002418
18736	9	8220DB002417
18737	9	8220DB002416
18738	9	8220DB002415
18739	9	8220DB002414
18740	9	8220DB002413
18741	9	8220DB001090
18742	9	8220DB002394
18743	9	8220DB002393
18744	9	8220DB002392
18745	9	8220DB002391
18746	9	8220DB002390
18747	9	8220DB002389
18748	9	8220DB001291
18749	9	8220DB001290
18750	9	8220DB001289
18751	9	8220DB001288
18752	9	8220DB001286
18753	9	8220DB001285
18754	9	8220DB001284
18755	9	8220DB004456
18756	9	8220DB001282
18757	9	8220DB001278
18758	9	8220DB000336
18759	9	8220DB000277
18760	9	8220DB000263
18761	9	8220DB000819
18762	9	8220DB000191
18763	9	8220DB000190
18764	9	8220DB000189
18765	9	8220DB000188
18766	9	8220DB000187
18767	9	8220DB000186
18768	9	8220DB000185
18769	9	8220DB000184
18770	9	8220DB000147
18771	9	8220DB000146
18772	9	8220DB000040
18773	9	8220DB000039
18774	9	8220DB000038
18775	9	8220DB000037
18776	9	8220DB000115
18777	9	8220DB000143
18778	9	8220DB000142
18779	9	8220DB000141
18780	9	8220DB000169
18781	9	8220DB000168
18782	9	8220DB000167
18783	9	8220DB000138
18784	9	8220DB000193
18785	9	8220DB000137
18786	9	8220DB000136
18787	9	8220DB006273
18788	9	8220DB004788
18789	9	8240DB006228
18790	9	8240DB006230
18791	9	8240DB007132
18792	10	8240DB003677
18793	10	8240DB003678
18794	10	8240DB003679
18795	10	8240DB003711
18796	10	8240DB003712
18797	10	8240DB003713
18798	10	8240DB003714
18799	10	8240DB003715
18800	10	8240DB005175
18801	10	8240DB003755
18802	10	8240DB003756
18803	10	8240DB003757
18804	10	8240DB003758
18805	10	8240DB003759
18806	10	8240DB003760
18807	10	8240DB003761
18808	10	8240DB003762
18809	10	8240DB003763
18810	10	8240DB003764
18811	10	8240DB003765
18812	10	8240DB003766
18813	10	8240DB003767
18814	10	8240DB003768
18815	10	8240DB003770
18816	10	8240DB003769
18817	10	8240DB003771
18818	10	8240DB003772
18819	10	8240DB003773
18820	10	8240DB005176
18821	10	8240DB003774
18822	10	8240DB007172
18823	10	8240DB003775
18824	10	8240DB003777
18825	10	8240DB003778
18826	10	8240DB003781
18827	10	8240DB003782
18828	10	8240DB003783
18829	10	8240DB003784
18830	10	8240DB003785
18831	10	8240DB003786
18832	10	8240DB003787
18833	10	8240DB003788
18834	10	8240DB003789
18835	10	8240DB003790
18836	10	8240DB003791
18837	10	8240DB003792
18838	10	8240DB003793
18839	10	8240DB003794
18840	10	8240DB003795
18841	10	8240DB003797
18842	10	8240DB003798
18843	10	8240DB003799
18844	10	8240DB006076
18845	10	8240DB006077
18846	10	8240DB003569
18847	10	8240DB003571
18848	10	8240DB003801
18849	10	8240DB003802
18850	10	8240DB003805
18851	10	8240DB007175
18852	10	8240DB003806
18853	10	8240DB003807
18854	10	8240DB003808
18855	10	8240DB003809
18856	11	8240DB003809
18857	11	8240DB003808
18858	11	8240DB003807
18859	11	8240DB003806
18860	11	8240DB007175
18861	11	8240DB003805
18862	11	8240DB003802
18863	11	8240DB003801
18864	11	8240DB003571
18865	11	8240DB003569
18866	11	8240DB006077
18867	11	8240DB006076
18868	11	8240DB003799
18869	11	8240DB003798
18870	11	8240DB003797
18871	11	8240DB003795
18872	11	8240DB003794
18873	11	8240DB003793
18874	11	8240DB003792
18875	11	8240DB003791
18876	11	8240DB003790
18877	11	8240DB003789
18878	11	8240DB003788
18879	11	8240DB003787
18880	11	8240DB003786
18881	11	8240DB003785
18882	11	8240DB003784
18883	11	8240DB003783
18884	11	8240DB003782
18885	11	8240DB003781
18886	11	8240DB003778
18887	11	8240DB003777
18888	11	8240DB003775
18889	11	8240DB007172
18890	11	8240DB003774
18891	11	8240DB005176
18892	11	8240DB003773
18893	11	8240DB003772
18894	11	8240DB003771
18895	11	8240DB003769
18896	11	8240DB003770
18897	11	8240DB003768
18898	11	8240DB003767
18899	11	8240DB003766
18900	11	8240DB003765
18901	11	8240DB003764
18902	11	8240DB003763
18903	11	8240DB003762
18904	11	8240DB003761
18905	11	8240DB003760
18906	11	8240DB003759
18907	11	8240DB003758
18908	11	8240DB003757
18909	11	8240DB003756
18910	11	8240DB003755
18911	11	8240DB005175
18912	11	8240DB003715
18913	11	8240DB003714
18914	11	8240DB003713
18915	11	8240DB003712
18916	11	8240DB003711
18917	11	8240DB003679
18918	11	8240DB003678
18919	11	8240DB003677
18920	12	8220DB000395
18921	12	8220DB000396
18922	12	8220DB000397
18923	12	8220DB000398
18924	12	8220DB000399
18925	12	8220DB000400
18926	12	8220DB004522
18927	12	8220DB001934
18928	12	8220DB002310
18929	12	8220DB002311
18930	12	8220DB002312
18931	12	8220DB002313
18932	12	8220DB002314
18933	12	8220DB002315
18934	12	8220DB002094
18935	12	8220DB001406
18936	12	8220DB001407
18937	12	8220DB001409
18938	12	8220DB002095
18939	12	8220DB002096
18940	12	8220DB002097
18941	12	8220DB002099
18942	12	8220DB002101
18943	12	8220DB002102
18944	12	8220DB002103
18945	12	8220DB002332
18946	12	8220DB002333
18947	12	8230DB002334
18948	12	8230DB004662
18949	12	8230DB002335
18950	12	8230DB002336
18951	12	8230DB002337
18952	12	8230DB002339
18953	12	8230DB002420
18954	12	8230DB002421
18955	12	8230DB002423
18956	12	8230DB002424
18957	12	8230DB002447
18958	12	8230DB005133
18959	12	8230DB002596
18960	12	8230DB002611
18961	12	8230DB002602
18962	12	8230DB002613
18963	12	8230DB002614
18964	12	8230DB002615
18965	12	8230DB002535
18966	12	8230DB002536
18967	12	8230DB002616
18968	12	8230DB002617
18969	12	8230DB002557
18970	12	8230DB004436
18971	12	8230DB005008
18972	12	8230DB004640
18973	12	8230DB004347
18974	12	8230DB002349
18975	12	8230DB002351
18976	12	8230DB002558
18977	12	8230DB002559
18978	12	8230DB002560
18979	12	8230DB002561
18980	12	8230DB002562
18981	12	8230DB002564
18982	12	8230DB004927
18983	12	8230DB004928
18984	12	8230DB002352
18985	12	8230DB002573
18986	12	8230DB002574
18987	12	8230DB002575
18988	12	8230DB004929
18989	12	8230DB007460
18990	12	8230DB004930
18991	12	8230DB004931
18992	13	8230DB004931
18993	13	8230DB004930
18994	13	8230DB007460
18995	13	8230DB004929
18996	13	8230DB002575
18997	13	8230DB002574
18998	13	8230DB002573
18999	13	8230DB002352
19000	13	8230DB004928
19001	13	8230DB004927
19002	13	8230DB002564
19003	13	8230DB002562
19004	13	8230DB002561
19005	13	8230DB002560
19006	13	8230DB002559
19007	13	8230DB002558
19008	13	8230DB002351
19009	13	8230DB002349
19010	13	8230DB004347
19011	13	8230DB004640
19012	13	8230DB005008
19013	13	8230DB004436
19014	13	8230DB002557
19015	13	8230DB002617
19016	13	8230DB002616
19017	13	8230DB002536
19018	13	8230DB002535
19019	13	8230DB002615
19020	13	8230DB002614
19021	13	8230DB002613
19022	13	8230DB002602
19023	13	8230DB002611
19024	13	8230DB002596
19025	13	8230DB005133
19026	13	8230DB002447
19027	13	8230DB002424
19028	13	8230DB002423
19029	13	8230DB002421
19030	13	8230DB002420
19031	13	8230DB002339
19032	13	8230DB002337
19033	13	8230DB002336
19034	13	8230DB002335
19035	13	8230DB004662
19036	13	8230DB002334
19037	13	8220DB002333
19038	13	8220DB002332
19039	13	8220DB002103
19040	13	8220DB002102
19041	13	8220DB002101
19042	13	8220DB002099
19043	13	8220DB002097
19044	13	8220DB002096
19045	13	8220DB002095
19046	13	8220DB001409
19047	13	8220DB001407
19048	13	8220DB001406
19049	13	8220DB002094
19050	13	8220DB002315
19051	13	8220DB002314
19052	13	8220DB002313
19053	13	8220DB002312
19054	13	8220DB002311
19055	13	8220DB002310
19056	13	8220DB001934
19057	13	8220DB004522
19058	13	8220DB000400
19059	13	8220DB000399
19060	13	8220DB000398
19061	13	8220DB000397
19062	13	8220DB000396
19063	13	8220DB000395
19064	14	8250DB003058
19065	14	8250DB003059
19066	14	8250DB003060
19067	14	8250DB003061
19068	14	8250DB003062
19069	14	8250DB003063
19070	14	8250DB003064
19071	14	8250DB003065
19072	14	8250DB003066
19073	14	8250DB003067
19074	14	8250DB003068
19075	14	8250DB003069
19076	14	8250DB003070
19077	14	8250DB004983
19078	14	8250DB002042
19079	14	8250DB002043
19080	14	8250DB002044
19081	14	8250DB002045
19082	14	8250DB002046
19083	14	8250DB007553
19084	14	8250DB006082
19085	14	8250DB003205
19086	14	8250DB003206
19087	14	8250DB003207
19088	14	8250DB003208
19089	14	8250DB003209
19090	14	8250DB003210
19091	14	8250DB004981
19092	14	8250DB003211
19093	14	8250DB003212
19094	14	8250DB003213
19095	14	8250DB003214
19096	14	8250DB003215
19097	14	8250DB003216
19098	14	8250DB003217
19099	14	8250DB003218
19100	14	8250DB003219
19101	14	8250DB003220
19102	14	8250DB003221
19103	14	8250DB003222
19104	14	8250DB003223
19105	14	8250DB003134
19106	14	8250DB003143
19107	14	8250DB003144
19108	14	8250DB005046
19109	15	8250DB005046
19110	15	8250DB003144
19111	15	8250DB003143
19112	15	8250DB003134
19113	15	8250DB003223
19114	15	8250DB003222
19115	15	8250DB003221
19116	15	8250DB003220
19117	15	8250DB003219
19118	15	8250DB003218
19119	15	8250DB003217
19120	15	8250DB003216
19121	15	8250DB003215
19122	15	8250DB003214
19123	15	8250DB003213
19124	15	8250DB003212
19125	15	8250DB003211
19126	15	8250DB004981
19127	15	8250DB003210
19128	15	8250DB003209
19129	15	8250DB003208
19130	15	8250DB003207
19131	15	8250DB003206
19132	15	8250DB003205
19133	15	8250DB006082
19134	15	8250DB007553
19135	15	8250DB002046
19136	15	8250DB002045
19137	15	8250DB002044
19138	15	8250DB002043
19139	15	8250DB002042
19140	15	8250DB004983
19141	15	8250DB003070
19142	15	8250DB003069
19143	15	8250DB003068
19144	15	8250DB003067
19145	15	8250DB003066
19146	15	8250DB003065
19147	15	8250DB003064
19148	15	8250DB003063
19149	15	8250DB003062
19150	15	8250DB003061
19151	15	8250DB003060
19152	15	8250DB003059
19153	15	8250DB003058
19154	16	8220DB002492
19155	16	8220DB002493
19156	16	8220DB002465
19157	16	8220DB002466
19158	16	8220DB002467
19159	16	8220DB002494
19160	16	8220DB002495
19161	16	8220DB002496
19162	16	8220DB002497
19163	16	8220DB002471
19164	16	8220DB002472
19165	16	8220DB002473
19166	16	8220DB002474
19167	16	8220DB002475
19168	16	8220DB002476
19169	16	8220DB002477
19170	16	8220DB002478
19171	16	8220DB001170
19172	16	8220DB001069
19173	16	8220DB001070
19174	16	8220DB001071
19175	16	8220DB004528
19176	16	8220DB001072
19177	16	8220DB001352
19178	16	8220DB001353
19179	16	8220DB001355
19180	16	8220DB001357
19181	16	8220DB001359
19182	16	8220DB000319
19183	16	8220DB001443
19184	16	8220DB001616
19185	16	8220DB001617
19186	16	8220DB001618
19187	16	8220DB001619
19188	16	8220DB000195
19189	16	8220DB000196
19190	16	8220DB000197
19191	16	8220DB000198
19192	16	8220DB000199
19193	16	8220DB000200
19194	16	8220DB000201
19195	16	8220DB000202
19196	16	8220DB000151
19197	16	8220DB000153
19198	16	8220DB000154
19199	16	8220DB000155
19200	16	8220DB000156
19201	16	8220DB007430
19202	16	8220DB000177
19203	16	8220DB000178
19204	16	8220DB001539
19205	16	8220DB001540
19206	16	8220DB007426
19207	16	8220DB007427
19208	16	8220DB007428
19209	16	8220DB000138
19210	16	8220DB000133
19211	16	8220DB000134
19212	16	8220DB004890
19213	16	8220DB004369
19214	16	8240DB006219
19215	16	8240DB006229
19216	16	8240DB006348
19217	16	8240DB001182
19218	16	8240DB001550
19219	16	8240DB001551
19220	16	8240DB001552
19221	17	8240DB001552
19222	17	8240DB001551
19223	17	8240DB001550
19224	17	8240DB001182
19225	17	8240DB006348
19226	17	8240DB006229
19227	17	8240DB006219
19228	17	8220DB004369
19229	17	8220DB004890
19230	17	8220DB000134
19231	17	8220DB000133
19232	17	8220DB000138
19233	17	8220DB007428
19234	17	8220DB007427
19235	17	8220DB007426
19236	17	8220DB001540
19237	17	8220DB001539
19238	17	8220DB000178
19239	17	8220DB000177
19240	17	8220DB007430
19241	17	8220DB000156
19242	17	8220DB000155
19243	17	8220DB000154
19244	17	8220DB000153
19245	17	8220DB000151
19246	17	8220DB000202
19247	17	8220DB000201
19248	17	8220DB000200
19249	17	8220DB000199
19250	17	8220DB000198
19251	17	8220DB000197
19252	17	8220DB000196
19253	17	8220DB000195
19254	17	8220DB001619
19255	17	8220DB001618
19256	17	8220DB001617
19257	17	8220DB001616
19258	17	8220DB001443
19259	17	8220DB000319
19260	17	8220DB001359
19261	17	8220DB001357
19262	17	8220DB001355
19263	17	8220DB001353
19264	17	8220DB001352
19265	17	8220DB001072
19266	17	8220DB004528
19267	17	8220DB001071
19268	17	8220DB001070
19269	17	8220DB001069
19270	17	8220DB001170
19271	17	8220DB002478
19272	17	8220DB002477
19273	17	8220DB002476
19274	17	8220DB002475
19275	17	8220DB002474
19276	17	8220DB002473
19277	17	8220DB002472
19278	17	8220DB002471
19279	17	8220DB002497
19280	17	8220DB002496
19281	17	8220DB002495
19282	17	8220DB002494
19283	17	8220DB002467
19284	17	8220DB002466
19285	17	8220DB002465
19286	17	8220DB002493
19287	17	8220DB002492
19288	18	8220DB002492
19289	18	8220DB002493
19290	18	8220DB002465
19291	18	8220DB002466
19292	18	8220DB002467
19293	18	8220DB002494
19294	18	8220DB002495
19295	18	8220DB002496
19296	18	8220DB002497
19297	18	8220DB002471
19298	18	8220DB002472
19299	18	8220DB002473
19300	18	8220DB002474
19301	18	8220DB002475
19302	18	8220DB002476
19303	18	8220DB002477
19304	18	8220DB002478
19305	18	8220DB001170
19306	18	8220DB001069
19307	18	8220DB001070
19308	18	8220DB001071
19309	18	8220DB004528
19310	18	8220DB001072
19311	18	8220DB001352
19312	18	8220DB001353
19313	18	8220DB001355
19314	18	8220DB001357
19315	18	8220DB001359
19316	18	8220DB000319
19317	18	8220DB001443
19318	18	8220DB001616
19319	18	8220DB001617
19320	18	8220DB001618
19321	18	8220DB001619
19322	18	8220DB000195
19323	18	8220DB000196
19324	18	8220DB000197
19325	18	8220DB000198
19326	18	8220DB000199
19327	18	8220DB000200
19328	18	8220DB000201
19329	18	8220DB000202
19330	18	8220DB000151
19331	18	8220DB000153
19332	18	8220DB000154
19333	18	8220DB000155
19334	18	8220DB000156
19335	18	8220DB000157
19336	18	8220DB000158
19337	18	8220DB000159
19338	18	8220DB001539
19339	18	8220DB001540
19340	18	8220DB007426
19341	18	8220DB007427
19342	18	8220DB007428
19343	18	8220DB000138
19344	18	8220DB000133
19345	18	8220DB000134
19346	18	8220DB004890
19347	18	8220DB004369
19348	18	8240DB006219
19349	18	8240DB006229
19350	18	8240DB006348
19351	18	8240DB001182
19352	18	8240DB001550
19353	18	8240DB001551
19354	18	8240DB001552
19355	19	8240DB001552
19356	19	8240DB001551
19357	19	8240DB001550
19358	19	8240DB001182
19359	19	8240DB006348
19360	19	8240DB006229
19361	19	8240DB006219
19362	19	8220DB004369
19363	19	8220DB004890
19364	19	8220DB000134
19365	19	8220DB000133
19366	19	8220DB000138
19367	19	8220DB007428
19368	19	8220DB007427
19369	19	8220DB007426
19370	19	8220DB001540
19371	19	8220DB001539
19372	19	8220DB000159
19373	19	8220DB000158
19374	19	8220DB000157
19375	19	8220DB000156
19376	19	8220DB000155
19377	19	8220DB000154
19378	19	8220DB000153
19379	19	8220DB000151
19380	19	8220DB000202
19381	19	8220DB000201
19382	19	8220DB000200
19383	19	8220DB000199
19384	19	8220DB000198
19385	19	8220DB000197
19386	19	8220DB000196
19387	19	8220DB000195
19388	19	8220DB001619
19389	19	8220DB001618
19390	19	8220DB001617
19391	19	8220DB001616
19392	19	8220DB001443
19393	19	8220DB000319
19394	19	8220DB001359
19395	19	8220DB001357
19396	19	8220DB001355
19397	19	8220DB001353
19398	19	8220DB001352
19399	19	8220DB001072
19400	19	8220DB004528
19401	19	8220DB001071
19402	19	8220DB001070
19403	19	8220DB001069
19404	19	8220DB001170
19405	19	8220DB002478
19406	19	8220DB002477
19407	19	8220DB002476
19408	19	8220DB002475
19409	19	8220DB002474
19410	19	8220DB002473
19411	19	8220DB002472
19412	19	8220DB002471
19413	19	8220DB002497
19414	19	8220DB002496
19415	19	8220DB002495
19416	19	8220DB002494
19417	19	8220DB002467
19418	19	8220DB002466
19419	19	8220DB002465
19420	19	8220DB002493
19421	19	8220DB002492
19422	20	8230DB007067
19423	20	8230DB002956
19424	20	8230DB002965
19425	20	8230DB002983
19426	20	8230DB002984
19427	20	8230DB007449
19428	20	8230DB002941
19429	20	8230DB002942
19430	20	8230DB002943
19431	20	8230DB002944
19432	20	8230DB002945
19433	20	8230DB002946
19434	20	8230DB002947
19435	20	8230DB001305
19436	20	8250DB001306
19437	20	8250DB001307
19438	20	8250DB001308
19439	20	8250DB001309
19440	20	8250DB001310
19441	20	8250DB001311
19442	20	8250DB001312
19443	20	8250DB001313
19444	20	8250DB001055
19445	20	8250DB002868
19446	20	8250DB002892
19447	20	8250DB002893
19448	20	8250DB002894
19449	20	8250DB002895
19450	20	8250DB002896
19451	20	8250DB002897
19452	20	8220DB002898
19453	20	8220DB003562
19454	20	8220DB002899
19455	20	8220DB000884
19456	20	8220DB000885
19457	20	8220DB000886
19458	20	8220DB000887
19459	20	8220DB002900
19460	20	8220DB002901
19461	20	8220DB002902
19462	20	8220DB002903
19463	20	8220DB001074
19464	20	8220DB006074
19465	20	8220DB000793
19466	20	8220DB000495
19467	20	8220DB000400
19468	21	8220DB000400
19469	21	8220DB000495
19470	21	8220DB000793
19471	21	8220DB006074
19472	21	8220DB001074
19473	21	8220DB002903
19474	21	8220DB002902
19475	21	8220DB002901
19476	21	8220DB002900
19477	21	8220DB000887
19478	21	8220DB000886
19479	21	8220DB000885
19480	21	8220DB000884
19481	21	8220DB002899
19482	21	8220DB003562
19483	21	8220DB002898
19484	21	8250DB002897
19485	21	8250DB002896
19486	21	8250DB002895
19487	21	8250DB002894
19488	21	8250DB002893
19489	21	8250DB002892
19490	21	8250DB002868
19491	21	8250DB001055
19492	21	8250DB001313
19493	21	8250DB001312
19494	21	8250DB001311
19495	21	8250DB001310
19496	21	8250DB001309
19497	21	8250DB001308
19498	21	8250DB001307
19499	21	8250DB001306
19500	21	8230DB001305
19501	21	8230DB002947
19502	21	8230DB002946
19503	21	8230DB002945
19504	21	8230DB002944
19505	21	8230DB002943
19506	21	8230DB002942
19507	21	8230DB002941
19508	21	8230DB007449
19509	21	8230DB002984
19510	21	8230DB002983
19511	21	8230DB002965
19512	21	8230DB002956
19513	21	8230DB007067
19514	22	8220DB000342
19515	22	8220DB004521
19516	22	8220DB001934
19517	22	8220DB002385
19518	22	8220DB002386
19519	22	8220DB002387
19520	22	8220DB002388
19521	22	8220DB001290
19522	22	8220DB001291
19523	22	8220DB001292
19524	22	8220DB001293
19525	22	8220DB001294
19526	22	8220DB001295
19527	22	8220DB001296
19528	22	8220DB001297
19529	22	8220DB001298
19530	22	8220DB001121
19531	22	8220DB001122
19532	22	8220DB001123
19533	22	8220DB001124
19534	22	8230DB001125
19535	22	8230DB001127
19536	22	8230DB001130
19537	22	8230DB001140
19538	22	8230DB002515
19539	22	8230DB002516
19540	22	8230DB002517
19541	22	8230DB002518
19542	22	8230DB004749
19543	22	8230DB004750
19544	22	8230DB004751
19545	22	8230DB004754
19546	22	8230DB004755
19547	22	8230DB003003
19548	22	8230DB002522
19549	22	8230DB002524
19550	22	8230DB002523
19551	22	8230DB002532
19552	22	8230DB004877
19553	22	8230DB004878
19554	22	8230DB007180
19555	22	8230DB007123
19556	22	8230DB004347
19557	23	8230DB004347
19558	23	8230DB007123
19559	23	8230DB007180
19560	23	8230DB004878
19561	23	8230DB004877
19562	23	8230DB002532
19563	23	8230DB002523
19564	23	8230DB002524
19565	23	8230DB002522
19566	23	8230DB003003
19567	23	8230DB004755
19568	23	8230DB004754
19569	23	8230DB004751
19570	23	8230DB004750
19571	23	8230DB004749
19572	23	8230DB002518
19573	23	8230DB002517
19574	23	8230DB002516
19575	23	8230DB002515
19576	23	8230DB001140
19577	23	8230DB001130
19578	23	8230DB001127
19579	23	8230DB001125
19580	23	8220DB001124
19581	23	8220DB001123
19582	23	8220DB001122
19583	23	8220DB001121
19584	23	8220DB001298
19585	23	8220DB001297
19586	23	8220DB001296
19587	23	8220DB001295
19588	23	8220DB001294
19589	23	8220DB001293
19590	23	8220DB001292
19591	23	8220DB001291
19592	23	8220DB001290
19593	23	8220DB002388
19594	23	8220DB002387
19595	23	8220DB002386
19596	23	8220DB002385
19597	23	8220DB001934
19598	23	8220DB004521
19599	23	8220DB000342
19600	24	8250DB005171
19601	24	8250DB002976
19602	24	8250DB002977
19603	24	8250DB002978
19604	24	8250DB002979
19605	24	8230DB002980
19606	24	8230DB002981
19607	24	8230DB002991
19608	24	8230DB002992
19609	24	8230DB001325
19610	24	8230DB001326
19611	24	8230DB001327
19612	24	8230DB001328
19613	24	8230DB001329
19614	24	8230DB001330
19615	24	8230DB001331
19616	24	8230DB001332
19617	24	8230DB001333
19618	24	8230DB001334
19619	24	8220DB007293
19620	24	8220DB001335
19621	24	8220DB001336
19622	24	8220DB001337
19623	24	8220DB001338
19624	24	8220DB001339
19625	24	8220DB001340
19626	24	8220DB001341
19627	24	8220DB001342
19628	24	8220DB001343
19629	24	8220DB001344
19630	24	8220DB001345
19631	24	8220DB001347
19632	24	8220DB001348
19633	24	8220DB001349
19634	24	8220DB001350
19635	24	8220DB001352
19636	24	8220DB001353
19637	24	8220DB001355
19638	24	8220DB001357
19639	24	8220DB001359
19640	24	8220DB000320
19641	24	8220DB000278
19642	24	8220DB000008
19643	24	8220DB000012
19644	24	8220DB000014
19645	24	8220DB000015
19646	24	8220DB000017
19647	24	8220DB000018
19648	24	8220DB000019
19649	24	8220DB000021
19650	24	8220DB007602
19651	24	8220DB000085
19652	24	8220DB000203
19653	24	8220DB000204
19654	24	8220DB000205
19655	24	8220DB000215
19656	24	8220DB000216
19657	24	8220DB000217
19658	24	8220DB000218
19659	24	8240DB000219
19660	24	8220DB000220
19661	24	8240DB001622
19662	24	8240DB001623
19663	24	8240DB001624
19664	24	8240DB001625
19665	24	8240DB001626
19666	24	8240DB001627
19667	24	8240DB001628
19668	24	8240DB001629
19669	24	8240DB001630
19670	25	8240DB001630
19671	25	8240DB001629
19672	25	8240DB001628
19673	25	8240DB001627
19674	25	8240DB001626
19675	25	8240DB001625
19676	25	8240DB001624
19677	25	8240DB001623
19678	25	8240DB001622
19679	25	8220DB000220
19680	25	8240DB000219
19681	25	8220DB000218
19682	25	8220DB000217
19683	25	8220DB000216
19684	25	8220DB000215
19685	25	8220DB000205
19686	25	8220DB000204
19687	25	8220DB000203
19688	25	8220DB000085
19689	25	8220DB007602
19690	25	8220DB000021
19691	25	8220DB000019
19692	25	8220DB000018
19693	25	8220DB000017
19694	25	8220DB000015
19695	25	8220DB000014
19696	25	8220DB000012
19697	25	8220DB000008
19698	25	8220DB000278
19699	25	8220DB000320
19700	25	8220DB001359
19701	25	8220DB001357
19702	25	8220DB001355
19703	25	8220DB001353
19704	25	8220DB001352
19705	25	8220DB001350
19706	25	8220DB001349
19707	25	8220DB001348
19708	25	8220DB001347
19709	25	8220DB001345
19710	25	8220DB001344
19711	25	8220DB001343
19712	25	8220DB001342
19713	25	8220DB001341
19714	25	8220DB001340
19715	25	8220DB001339
19716	25	8220DB001338
19717	25	8220DB001337
19718	25	8220DB001336
19719	25	8220DB001335
19720	25	8220DB007293
19721	25	8230DB001334
19722	25	8230DB001333
19723	25	8230DB001332
19724	25	8230DB001331
19725	25	8230DB001330
19726	25	8230DB001329
19727	25	8230DB001328
19728	25	8230DB001327
19729	25	8230DB001326
19730	25	8230DB001325
19731	25	8230DB002992
19732	25	8230DB002991
19733	25	8230DB002981
19734	25	8230DB002980
19735	25	8250DB002979
19736	25	8250DB002978
19737	25	8250DB002977
19738	25	8250DB002976
19739	25	8250DB005171
19740	26	8240DB005044
19741	26	8240DB004433
19742	26	8240DB003752
19743	26	8240DB003751
19744	26	8240DB003689
19745	26	8240DB003690
19746	26	8240DB006117
19747	26	8240DB003655
19748	26	8240DB005086
19749	26	8240DB003656
19750	26	8240DB003657
19751	26	8240DB003658
19752	26	8240DB007329
19753	26	8240DB003659
19754	26	8240DB003660
19755	26	8240DB003647
19756	26	8240DB003661
19757	26	8240DB003573
19758	26	8240DB003662
19759	26	8240DB001212
19760	26	8240DB001213
19761	26	8240DB001214
19762	26	8240DB001215
19763	26	8240DB001216
19764	26	8240DB001217
19765	26	8220DB004563
19766	26	8220DB001218
19767	26	8220DB001270
19768	26	8220DB001272
19769	26	8220DB001273
19770	26	8220DB001274
19771	26	8220DB001275
19772	26	8220DB001276
19773	26	8220DB001277
19774	26	8220DB001219
19775	26	8220DB001220
19776	26	8220DB001221
19777	26	8220DB000664
19778	26	8220DB000665
19779	26	8220DB000666
19780	26	8220DB000667
19781	26	8220DB000668
19782	26	8220DB000614
19783	26	8220DB000615
19784	26	8220DB000616
19785	26	8220DB000617
19786	26	8220DB000618
19787	26	8220DB000619
19788	26	8220DB000675
19789	27	8220DB000675
19790	27	8220DB000619
19791	27	8220DB000618
19792	27	8220DB000617
19793	27	8220DB000616
19794	27	8220DB000615
19795	27	8220DB000614
19796	27	8220DB000668
19797	27	8220DB000667
19798	27	8220DB000666
19799	27	8220DB000665
19800	27	8220DB000664
19801	27	8220DB001221
19802	27	8220DB001220
19803	27	8220DB001219
19804	27	8220DB001277
19805	27	8220DB001276
19806	27	8220DB001275
19807	27	8220DB001274
19808	27	8220DB001273
19809	27	8220DB001272
19810	27	8220DB001270
19811	27	8220DB001218
19812	27	8220DB004563
19813	27	8240DB001217
19814	27	8240DB001216
19815	27	8240DB001215
19816	27	8240DB001214
19817	27	8240DB001213
19818	27	8240DB001212
19819	27	8240DB003662
19820	27	8240DB003573
19821	27	8240DB003661
19822	27	8240DB003647
19823	27	8240DB003660
19824	27	8240DB003659
19825	27	8240DB007329
19826	27	8240DB003658
19827	27	8240DB003657
19828	27	8240DB003656
19829	27	8240DB005086
19830	27	8240DB003655
19831	27	8240DB006117
19832	27	8240DB003690
19833	27	8240DB003689
19834	27	8240DB003751
19835	27	8240DB003752
19836	27	8240DB004433
19837	27	8240DB005044
19838	28	8220DB001184
19839	28	8220DB000497
19840	28	8220DB000515
19841	28	8220DB000516
19842	28	8220DB004384
19843	28	8220DB000519
19844	28	8220DB000521
19845	28	8220DB000522
19846	28	8220DB000523
19847	28	8220DB000669
19848	28	8220DB000670
19849	28	8220DB000671
19850	28	8220DB000672
19851	28	8220DB004382
19852	28	8220DB001196
19853	28	8220DB001197
19854	28	8220DB001198
19855	28	8220DB001199
19856	28	8220DB001200
19857	28	8220DB004385
19858	28	8220DB001201
19859	28	8220DB001202
19860	28	8220DB001203
19861	28	8220DB006115
19862	28	8220DB001205
19863	28	8240DB001206
19864	28	8240DB001207
19865	28	8240DB001208
19866	28	8240DB001209
19867	28	8240DB001210
19868	28	8240DB001211
19869	28	8240DB003575
19870	28	8240DB003576
19871	28	8240DB003577
19872	28	8240DB003578
19873	28	8240DB003579
19874	28	8240DB003580
19875	28	8240DB003640
19876	28	8240DB003574
19877	28	8240DB003641
19878	28	8240DB003642
19879	28	8240DB003643
19880	28	8240DB003583
19881	28	8240DB003584
19882	28	8240DB003585
19883	28	8240DB003625
19884	28	8240DB003626
19885	28	8240DB003627
19886	28	8240DB003628
19887	28	8240DB006052
19888	28	8240DB003613
19889	28	8240DB003615
19890	29	8240DB003615
19891	29	8240DB003613
19892	29	8240DB006052
19893	29	8240DB003628
19894	29	8240DB003627
19895	29	8240DB003626
19896	29	8240DB003625
19897	29	8240DB003585
19898	29	8240DB003584
19899	29	8240DB003583
19900	29	8240DB003643
19901	29	8240DB003642
19902	29	8240DB003641
19903	29	8240DB003574
19904	29	8240DB003640
19905	29	8240DB003580
19906	29	8240DB003579
19907	29	8240DB003578
19908	29	8240DB003577
19909	29	8240DB003576
19910	29	8240DB003575
19911	29	8240DB001211
19912	29	8240DB001210
19913	29	8240DB001209
19914	29	8240DB001208
19915	29	8240DB001207
19916	29	8240DB001206
19917	29	8220DB001205
19918	29	8220DB006115
19919	29	8220DB001203
19920	29	8220DB001202
19921	29	8220DB001201
19922	29	8220DB004385
19923	29	8220DB001200
19924	29	8220DB001199
19925	29	8220DB001198
19926	29	8220DB001197
19927	29	8220DB001196
19928	29	8220DB004382
19929	29	8220DB000672
19930	29	8220DB000671
19931	29	8220DB000670
19932	29	8220DB000669
19933	29	8220DB000523
19934	29	8220DB000522
19935	29	8220DB000521
19936	29	8220DB000519
19937	29	8220DB004384
19938	29	8220DB000516
19939	29	8220DB000515
19940	29	8220DB000497
19941	29	8220DB001184
19942	30	8220DB007340
19943	30	8220DB000783
19944	30	8220DB000784
19945	30	8220DB000785
19946	30	8220DB000786
19947	30	8220DB000793
19948	30	8220DB007586
19949	30	8220DB007587
19950	30	8220DB007588
19951	30	8220DB000329
19952	30	8220DB001443
19953	30	8220DB001444
19954	30	8220DB001445
19955	30	8220DB001647
19956	30	8220DB001648
19957	30	8220DB001649
19958	30	8220DB001911
19959	30	8220DB000802
19960	30	8220DB001654
19961	30	8220DB001655
19962	30	8220DB001656
19963	30	8220DB001657
19964	30	8220DB004458
19965	30	8220DB001658
19966	30	8220DB001659
19967	30	8220DB001660
19968	30	8220DB001661
19969	30	8220DB001662
19970	30	8220DB001664
19971	30	8220DB001665
19972	30	8220DB001666
19973	30	8220DB001667
19974	30	8220DB001668
19975	30	8240DB001669
19976	30	8240DB001670
19977	30	8240DB001671
19978	30	8240DB001672
19979	30	8240DB001673
19980	30	8240DB001674
19981	30	8240DB001675
19982	30	8240DB007380
19983	30	8240DB001676
19984	30	8240DB001517
19985	30	8240DB001678
19986	30	8240DB001679
19987	30	8240DB004520
19988	30	8240DB004825
19989	30	8240DB007233
19990	30	8240DB004573
19991	30	8240DB004893
19992	30	8240DB004894
19993	30	8240DB004895
19994	30	8240DB007217
19995	30	8240DB007227
19996	30	8240DB006172
19997	30	8240DB004493
19998	30	8240DB004362
19999	31	8240DB004362
20000	31	8240DB004493
20001	31	8240DB006172
20002	31	8240DB007227
20003	31	8240DB007217
20004	31	8240DB004895
20005	31	8240DB004894
20006	31	8240DB004893
20007	31	8240DB004573
20008	31	8240DB007233
20009	31	8240DB004825
20010	31	8240DB004520
20011	31	8240DB001679
20012	31	8240DB001678
20013	31	8240DB001517
20014	31	8240DB001676
20015	31	8240DB007380
20016	31	8240DB001675
20017	31	8240DB001674
20018	31	8240DB001673
20019	31	8240DB001672
20020	31	8240DB001671
20021	31	8240DB001670
20022	31	8240DB001669
20023	31	8220DB001668
20024	31	8220DB001667
20025	31	8220DB001666
20026	31	8220DB001665
20027	31	8220DB001664
20028	31	8220DB001662
20029	31	8220DB001661
20030	31	8220DB001660
20031	31	8220DB001659
20032	31	8220DB001658
20033	31	8220DB004458
20034	31	8220DB001657
20035	31	8220DB001656
20036	31	8220DB001655
20037	31	8220DB001654
20038	31	8220DB000802
20039	31	8220DB001911
20040	31	8220DB001649
20041	31	8220DB001648
20042	31	8220DB001647
20043	31	8220DB001445
20044	31	8220DB001444
20045	31	8220DB001443
20046	31	8220DB000329
20047	31	8220DB007588
20048	31	8220DB007587
20049	31	8220DB007586
20050	31	8220DB000793
20051	31	8220DB000786
20052	31	8220DB000785
20053	31	8220DB000784
20054	31	8220DB000783
20055	31	8220DB007340
20056	32	8230DB004606
20057	32	8230DB007142
20058	32	8230DB007015
20059	32	8230DB004617
20060	32	8230DB004555
20061	32	8230DB004576
20062	32	8230DB003418
20063	32	8230DB003419
20064	32	8230DB004762
20065	32	8230DB004763
20066	32	8230DB006245
20067	32	8230DB002156
20068	32	8230DB006014
20069	32	8230DB006242
20070	32	8230DB006152
20071	32	8230DB006153
20072	32	8230DB006243
20073	32	8230DB006154
20074	32	8230DB006155
20075	32	8230DB006141
20076	32	8220DB006142
20077	32	8220DB002181
20078	32	8220DB002182
20079	32	8220DB002778
20080	32	8220DB002185
20081	32	8220DB007043
20082	32	8220DB001424
20083	32	8220DB002186
20084	32	8220DB002187
20085	32	8220DB002188
20086	32	8220DB002189
20087	32	8220DB001436
20088	32	8220DB003952
20089	32	8220DB002190
20090	32	8220DB004434
20091	32	8220DB002379
20092	32	8220DB002380
20093	32	8220DB002382
20094	32	8220DB005099
20095	32	8220DB002383
20096	32	8220DB001479
20097	32	8220DB007622
20098	32	8220DB000297
20099	32	8220DB000407
20100	32	8220DB002498
20101	32	8220DB002499
20102	32	8220DB002500
20103	32	8220DB002501
20104	32	8220DB007623
20105	32	8220DB002508
20106	33	8220DB002508
20107	33	8220DB007623
20108	33	8220DB002501
20109	33	8220DB002500
20110	33	8220DB002499
20111	33	8220DB002498
20112	33	8220DB000407
20113	33	8220DB000297
20114	33	8220DB007622
20115	33	8220DB001479
20116	33	8220DB002383
20117	33	8220DB005099
20118	33	8220DB002382
20119	33	8220DB002380
20120	33	8220DB002379
20121	33	8220DB004434
20122	33	8220DB002190
20123	33	8220DB003952
20124	33	8220DB001436
20125	33	8220DB002189
20126	33	8220DB002188
20127	33	8220DB002187
20128	33	8220DB002186
20129	33	8220DB001424
20130	33	8220DB007043
20131	33	8220DB002185
20132	33	8220DB002778
20133	33	8220DB002182
20134	33	8220DB002181
20135	33	8220DB006142
20136	33	8230DB006141
20137	33	8230DB006155
20138	33	8230DB006154
20139	33	8230DB006243
20140	33	8230DB006153
20141	33	8230DB006152
20142	33	8230DB006242
20143	33	8230DB006014
20144	33	8230DB002156
20145	33	8230DB006245
20146	33	8230DB004763
20147	33	8230DB004762
20148	33	8230DB003419
20149	33	8230DB003418
20150	33	8230DB004576
20151	33	8230DB004555
20152	33	8230DB004617
20153	33	8230DB007015
20154	33	8230DB007142
20155	33	8230DB004606
20156	34	8220DB000342
20157	34	8220DB001279
20158	34	8220DB001934
20159	34	8220DB002385
20160	34	8220DB002386
20161	34	8220DB002387
20162	34	8220DB002388
20163	34	8220DB001290
20164	34	8220DB001291
20165	34	8220DB002389
20166	34	8220DB002390
20167	34	8220DB002391
20168	34	8220DB002392
20169	34	8220DB002393
20170	34	8220DB002394
20171	34	8220DB002395
20172	34	8220DB002396
20173	34	8220DB002397
20174	34	8220DB002398
20175	34	8230DB002399
20176	34	8230DB002400
20177	34	8230DB002401
20178	34	8230DB002402
20179	34	8230DB002403
20180	34	8230DB001096
20181	34	8230DB001097
20182	34	8230DB001099
20183	34	8230DB006132
20184	34	8230DB002551
20185	34	8230DB002553
20186	34	8230DB002554
20187	34	8230DB002555
20188	34	8230DB002556
20189	34	8230DB002557
20190	34	8230DB004436
20191	34	8230DB005008
20192	34	8230DB004640
20193	34	8230DB007214
20194	34	8230DB004347
20195	34	8230DB002349
20196	34	8230DB002351
20197	34	8230DB002558
20198	34	8230DB006170
20199	34	8230DB005023
20200	35	8230DB005023
20201	35	8230DB006170
20202	35	8230DB002558
20203	35	8230DB002351
20204	35	8230DB002349
20205	35	8230DB004347
20206	35	8230DB007214
20207	35	8230DB004640
20208	35	8230DB005008
20209	35	8230DB004436
20210	35	8230DB002557
20211	35	8230DB002556
20212	35	8230DB002555
20213	35	8230DB002554
20214	35	8230DB002553
20215	35	8230DB002551
20216	35	8230DB006132
20217	35	8230DB001099
20218	35	8230DB001097
20219	35	8230DB001096
20220	35	8230DB002403
20221	35	8230DB002402
20222	35	8230DB002401
20223	35	8230DB002400
20224	35	8230DB002399
20225	35	8220DB002398
20226	35	8220DB002397
20227	35	8220DB002396
20228	35	8220DB002395
20229	35	8220DB002394
20230	35	8220DB002393
20231	35	8220DB002392
20232	35	8220DB002391
20233	35	8220DB002390
20234	35	8220DB002389
20235	35	8220DB001291
20236	35	8220DB001290
20237	35	8220DB002388
20238	35	8220DB002387
20239	35	8220DB002386
20240	35	8220DB002385
20241	35	8220DB001934
20242	35	8220DB001279
20243	35	8220DB000342
20244	36	8230DB006282
20245	36	8230DB006335
20246	36	8230DB006326
20247	36	8230DB004886
20248	36	8230DB004887
20249	36	8230DB001150
20250	36	8230DB001151
20251	36	8230DB001152
20252	36	8230DB001153
20253	36	8230DB001154
20254	36	8230DB000946
20255	36	8230DB001155
20256	36	8230DB001157
20257	36	8230DB001158
20258	36	8220DB001159
20259	36	8220DB001160
20260	36	8220DB001161
20261	36	8220DB001162
20262	36	8220DB001163
20263	36	8220DB001164
20264	36	8220DB001165
20265	36	8220DB001166
20266	36	8220DB001167
20267	36	8220DB001168
20268	36	8220DB001169
20269	36	8220DB001170
20270	36	8220DB001069
20271	36	8220DB001070
20272	36	8220DB001071
20273	36	8220DB004528
20274	36	8220DB001072
20275	36	8220DB007577
20276	36	8220DB001353
20277	36	8220DB001354
20278	36	8220DB007578
20279	36	8220DB007582
20280	36	8220DB000299
20281	36	8220DB000497
20282	36	8220DB000515
20283	36	8220DB000516
20284	36	8220DB004384
20285	36	8220DB000519
20286	36	8220DB000521
20287	36	8220DB000522
20288	36	8220DB000523
20289	36	8220DB000669
20290	36	8220DB000670
20291	36	8220DB000671
20292	36	8220DB000672
20293	36	8220DB004382
20294	36	8220DB001196
20295	36	8220DB001197
20296	36	8220DB001198
20297	36	8220DB001199
20298	36	8220DB001200
20299	36	8220DB004385
20300	36	8220DB001201
20301	36	8220DB001202
20302	36	8220DB001203
20303	36	8220DB006115
20304	36	8220DB004593
20305	36	8220DB007516
20306	36	8220DB006079
20307	36	8220DB006315
20308	36	8220DB006316
20309	36	8220DB007236
20310	36	8220DB007245
20311	37	8220DB007245
20312	37	8220DB007236
20313	37	8220DB006316
20314	37	8220DB006315
20315	37	8220DB006079
20316	37	8220DB007516
20317	37	8220DB004593
20318	37	8220DB006115
20319	37	8220DB001203
20320	37	8220DB001202
20321	37	8220DB001201
20322	37	8220DB004385
20323	37	8220DB001200
20324	37	8220DB001199
20325	37	8220DB001198
20326	37	8220DB001197
20327	37	8220DB001196
20328	37	8220DB004382
20329	37	8220DB000672
20330	37	8220DB000671
20331	37	8220DB000670
20332	37	8220DB000669
20333	37	8220DB000523
20334	37	8220DB000522
20335	37	8220DB000521
20336	37	8220DB000519
20337	37	8220DB004384
20338	37	8220DB000516
20339	37	8220DB000515
20340	37	8220DB000497
20341	37	8220DB000299
20342	37	8220DB007582
20343	37	8220DB007578
20344	37	8220DB001354
20345	37	8220DB001353
20346	37	8220DB007577
20347	37	8220DB001072
20348	37	8220DB004528
20349	37	8220DB001071
20350	37	8220DB001070
20351	37	8220DB001069
20352	37	8220DB001170
20353	37	8220DB001169
20354	37	8220DB001168
20355	37	8220DB001167
20356	37	8220DB001166
20357	37	8220DB001165
20358	37	8220DB001164
20359	37	8220DB001163
20360	37	8220DB001162
20361	37	8220DB001161
20362	37	8220DB001160
20363	37	8220DB001159
20364	37	8230DB001158
20365	37	8230DB001157
20366	37	8230DB001155
20367	37	8230DB000946
20368	37	8230DB001154
20369	37	8230DB001153
20370	37	8230DB001152
20371	37	8230DB001151
20372	37	8230DB001150
20373	37	8230DB004887
20374	37	8230DB004886
20375	37	8230DB006326
20376	37	8230DB006335
20377	37	8230DB006282
20378	38	8220DB004525
20379	38	8220DB004526
20380	38	8220DB001700
20381	38	8220DB001701
20382	38	8220DB001702
20383	38	8220DB000016
20384	38	8220DB000073
20385	38	8220DB000074
20386	38	8220DB004371
20387	38	8220DB000832
20388	38	8220DB000833
20389	38	8220DB000077
20390	38	8220DB000078
20391	38	8220DB000079
20392	38	8220DB000080
20393	38	8220DB000082
20394	38	8220DB000083
20395	38	8220DB000084
20396	38	8220DB000051
20397	38	8220DB000052
20398	38	8220DB000263
20399	38	8220DB000271
20400	38	8220DB001278
20401	38	8220DB001282
20402	38	8220DB004456
20403	38	8220DB001284
20404	38	8220DB001285
20405	38	8220DB001286
20406	38	8220DB001288
20407	38	8220DB001289
20408	38	8220DB001360
20409	38	8220DB001362
20410	38	8220DB001363
20411	38	8220DB001364
20412	38	8220DB001365
20413	38	8220DB001366
20414	38	8220DB001367
20415	38	8220DB007455
20416	38	8220DB007438
20417	38	8220DB001410
20418	38	8220DB001411
20419	38	8220DB001412
20420	38	8220DB001413
20421	38	8220DB001414
20422	38	8220DB001415
20423	38	8220DB001417
20424	38	8220DB001418
20425	38	8220DB005149
20426	38	8220DB001419
20427	39	8220DB001419
20428	39	8220DB005149
20429	39	8220DB001418
20430	39	8220DB001417
20431	39	8220DB001415
20432	39	8220DB001414
20433	39	8220DB001413
20434	39	8220DB001412
20435	39	8220DB001411
20436	39	8220DB001410
20437	39	8220DB007438
20438	39	8220DB007455
20439	39	8220DB001367
20440	39	8220DB001366
20441	39	8220DB001365
20442	39	8220DB001364
20443	39	8220DB001363
20444	39	8220DB001362
20445	39	8220DB001360
20446	39	8220DB001289
20447	39	8220DB001288
20448	39	8220DB001286
20449	39	8220DB001285
20450	39	8220DB001284
20451	39	8220DB004456
20452	39	8220DB001282
20453	39	8220DB001278
20454	39	8220DB000271
20455	39	8220DB000263
20456	39	8220DB000052
20457	39	8220DB000051
20458	39	8220DB000084
20459	39	8220DB000083
20460	39	8220DB000082
20461	39	8220DB000080
20462	39	8220DB000079
20463	39	8220DB000078
20464	39	8220DB000077
20465	39	8220DB000833
20466	39	8220DB000832
20467	39	8220DB004371
20468	39	8220DB000074
20469	39	8220DB000073
20470	39	8220DB000016
20471	39	8220DB001702
20472	39	8220DB001701
20473	39	8220DB001700
20474	39	8220DB004526
20475	39	8220DB004525
20476	40	8220DB006057
20477	40	8220DB002183
20478	40	8220DB002184
20479	40	8220DB002185
20480	40	8220DB001423
20481	40	8220DB001424
20482	40	8220DB001425
20483	40	8220DB001426
20484	40	8220DB001463
20485	40	8220DB004399
20486	40	8220DB004400
20487	40	8220DB001464
20488	40	8220DB001469
20489	40	8220DB001465
20490	40	8220DB001466
20491	40	8220DB001467
20492	40	8220DB001468
20493	40	8220DB001377
20494	40	8220DB001378
20495	40	8220DB004514
20496	40	8220DB004515
20497	40	8220DB001995
20498	40	8220DB001996
20499	40	8220DB001997
20500	40	8220DB001998
20501	40	8220DB001999
20502	40	8220DB002001
20503	40	8220DB002002
20504	40	8220DB001359
20505	40	8220DB000274
20506	40	8220DB001505
20507	40	8220DB004509
20508	40	8220DB000499
20509	40	8220DB000500
20510	40	8220DB000501
20511	40	8220DB001484
20512	40	8220DB001481
20513	40	8220DB007320
20514	40	8220DB001486
20515	40	8220DB001487
20516	40	8220DB001488
20517	40	8220DB001489
20518	41	8220DB001489
20519	41	8220DB001488
20520	41	8220DB001487
20521	41	8220DB001486
20522	41	8220DB007320
20523	41	8220DB001481
20524	41	8220DB001484
20525	41	8220DB000501
20526	41	8220DB000500
20527	41	8220DB000499
20528	41	8220DB004509
20529	41	8220DB001505
20530	41	8220DB000274
20531	41	8220DB001359
20532	41	8220DB002002
20533	41	8220DB002001
20534	41	8220DB001999
20535	41	8220DB001998
20536	41	8220DB001997
20537	41	8220DB001996
20538	41	8220DB001995
20539	41	8220DB004515
20540	41	8220DB004514
20541	41	8220DB001378
20542	41	8220DB001377
20543	41	8220DB001468
20544	41	8220DB001467
20545	41	8220DB001466
20546	41	8220DB001465
20547	41	8220DB001469
20548	41	8220DB001464
20549	41	8220DB004400
20550	41	8220DB004399
20551	41	8220DB001463
20552	41	8220DB001426
20553	41	8220DB001425
20554	41	8220DB001424
20555	41	8220DB001423
20556	41	8220DB002185
20557	41	8220DB002184
20558	41	8220DB002183
20559	41	8220DB006057
20560	42	8350DB004533
20561	42	8350DB004844
20562	42	8350DB004177
20563	42	8350DB004178
20564	42	8350DB004142
20565	42	8350DB004143
20566	42	8350DB004144
20567	42	8350DB005088
20568	42	8350DB005089
20569	42	8350DB004176
20570	42	8350DB004149
20571	42	8350DB003045
20572	42	8350DB004150
20573	42	8350DB004151
20574	42	8350DB002997
20575	42	8350DB004156
20576	42	8350DB004169
20577	42	8350DB004170
20578	42	8350DB004153
20579	42	8350DB004154
20580	42	8350DB004416
20581	42	8350DB004201
20582	42	8250DB004202
20583	42	8250DB004203
20584	42	8250DB005090
20585	42	8250DB004204
20586	42	8250DB004205
20587	42	8250DB004206
20588	42	8250DB003140
20589	42	8250DB003545
20590	42	8250DB003552
20591	42	8250DB003553
20592	42	8250DB003554
20593	42	8250DB003555
20594	42	8250DB003556
20595	42	8250DB003557
20596	42	8250DB003560
20597	42	8250DB007323
20598	42	8250DB003561
20599	42	8250DB003225
20600	42	8250DB003226
20601	42	8250DB003227
20602	42	8250DB003228
20603	42	8250DB003229
20604	42	8250DB007472
20605	42	8250DB003230
20606	42	8250DB003231
20607	42	8250DB003246
20608	42	8250DB003247
20609	42	8250DB007056
20610	42	8250DB003248
20611	42	8250DB003343
20612	42	8250DB003236
20613	42	8250DB003237
20614	42	8250DB003238
20615	42	8250DB003239
20616	42	8250DB003240
20617	42	8250DB003068
20618	42	8250DB003069
20619	42	8250DB003070
20620	43	8250DB003070
20621	43	8250DB003069
20622	43	8250DB003068
20623	43	8250DB003240
20624	43	8250DB003239
20625	43	8250DB003238
20626	43	8250DB003237
20627	43	8250DB003236
20628	43	8250DB003343
20629	43	8250DB003248
20630	43	8250DB007056
20631	43	8250DB003247
20632	43	8250DB003246
20633	43	8250DB003231
20634	43	8250DB003230
20635	43	8250DB007472
20636	43	8250DB003229
20637	43	8250DB003228
20638	43	8250DB003227
20639	43	8250DB003226
20640	43	8250DB003225
20641	43	8250DB003561
20642	43	8250DB007323
20643	43	8250DB003560
20644	43	8250DB003557
20645	43	8250DB003556
20646	43	8250DB003555
20647	43	8250DB003554
20648	43	8250DB003553
20649	43	8250DB003552
20650	43	8250DB003545
20651	43	8250DB003140
20652	43	8250DB004206
20653	43	8250DB004205
20654	43	8250DB004204
20655	43	8250DB005090
20656	43	8250DB004203
20657	43	8250DB004202
20658	43	8350DB004201
20659	43	8350DB004416
20660	43	8350DB004154
20661	43	8350DB004153
20662	43	8350DB004170
20663	43	8350DB004169
20664	43	8350DB004156
20665	43	8350DB002997
20666	43	8350DB004151
20667	43	8350DB004150
20668	43	8350DB003045
20669	43	8350DB004149
20670	43	8350DB004176
20671	43	8350DB005089
20672	43	8350DB005088
20673	43	8350DB004144
20674	43	8350DB004143
20675	43	8350DB004142
20676	43	8350DB004178
20677	43	8350DB004177
20678	43	8350DB004844
20679	43	8350DB004533
20680	44	8220DB007564
20681	44	8220DB004521
20682	44	8220DB001283
20683	44	8220DB004456
20684	44	8220DB001284
20685	44	8220DB001285
20686	44	8220DB001016
20687	44	8220DB001017
20688	44	8220DB001018
20689	44	8220DB001019
20690	44	8220DB001020
20691	44	8220DB001076
20692	44	8220DB001077
20693	44	8220DB001078
20694	44	8220DB001079
20695	44	8220DB001080
20696	44	8220DB001081
20697	44	8220DB001082
20698	44	8220DB001083
20699	44	8220DB001085
20700	44	8220DB001121
20701	44	8220DB001122
20702	44	8220DB001123
20703	44	8220DB001124
20704	44	8230DB001125
20705	44	8230DB001127
20706	44	8230DB001130
20707	44	8230DB002550
20708	44	8230DB002551
20709	44	8230DB002553
20710	44	8230DB002554
20711	44	8230DB002555
20712	44	8230DB002556
20713	44	8230DB002557
20714	44	8230DB004436
20715	44	8230DB005008
20716	44	8230DB004640
20717	44	8230DB004347
20718	44	8230DB002349
20719	44	8230DB002351
20720	44	8230DB004445
20721	44	8230DB002352
20722	44	8230DB002573
20723	44	8230DB002574
20724	44	8230DB002577
20725	44	8230DB002578
20726	44	8230DB002579
20727	44	8230DB007395
20728	44	8230DB006124
20729	44	8230DB004004
20730	44	8230DB004005
20731	44	8230DB004006
20732	44	8230DB004007
20733	44	8230DB004008
20734	44	8230DB004010
20735	44	8230DB004009
20736	44	8350DB004011
20737	44	8350DB005110
20738	44	8350DB004012
20739	44	8350DB004013
20740	44	8350DB004014
20741	44	8350DB004098
20742	44	8350DB004015
20743	44	8350DB004017
20744	44	8350DB004018
20745	44	8350DB004019
20746	44	8350DB004020
20747	44	8350DB004100
20748	44	8350DB004021
20749	44	8350DB004022
20750	44	8350DB004023
20751	44	8350DB004024
20752	44	8350DB004027
20753	44	8350DB007250
20754	44	8350DB007248
20755	44	8350DB007207
20756	44	8260DB007288
20757	44	8260DB007286
20758	44	8260DB007283
20759	44	8260DB007282
20760	44	8260DB007278
20761	45	8260DB007278
20762	45	8260DB007282
20763	45	8260DB007283
20764	45	8260DB007286
20765	45	8260DB007288
20766	45	8350DB007207
20767	45	8350DB007248
20768	45	8350DB007250
20769	45	8350DB004027
20770	45	8350DB004024
20771	45	8350DB004023
20772	45	8350DB004022
20773	45	8350DB004021
20774	45	8350DB004100
20775	45	8350DB004020
20776	45	8350DB004019
20777	45	8350DB004018
20778	45	8350DB004017
20779	45	8350DB004015
20780	45	8350DB004098
20781	45	8350DB004014
20782	45	8350DB004013
20783	45	8350DB004012
20784	45	8350DB005110
20785	45	8350DB004011
20786	45	8230DB004009
20787	45	8230DB004010
20788	45	8230DB004008
20789	45	8230DB004007
20790	45	8230DB004006
20791	45	8230DB004005
20792	45	8230DB004004
20793	45	8230DB006124
20794	45	8230DB007395
20795	45	8230DB002579
20796	45	8230DB002578
20797	45	8230DB002577
20798	45	8230DB002574
20799	45	8230DB002573
20800	45	8230DB002352
20801	45	8230DB004445
20802	45	8230DB002351
20803	45	8230DB002349
20804	45	8230DB004347
20805	45	8230DB004640
20806	45	8230DB005008
20807	45	8230DB004436
20808	45	8230DB002557
20809	45	8230DB002556
20810	45	8230DB002555
20811	45	8230DB002554
20812	45	8230DB002553
20813	45	8230DB002551
20814	45	8230DB002550
20815	45	8230DB001130
20816	45	8230DB001127
20817	45	8230DB001125
20818	45	8220DB001124
20819	45	8220DB001123
20820	45	8220DB001122
20821	45	8220DB001121
20822	45	8220DB001085
20823	45	8220DB001083
20824	45	8220DB001082
20825	45	8220DB001081
20826	45	8220DB001080
20827	45	8220DB001079
20828	45	8220DB001078
20829	45	8220DB001077
20830	45	8220DB001076
20831	45	8220DB001020
20832	45	8220DB001019
20833	45	8220DB001018
20834	45	8220DB001017
20835	45	8220DB001016
20836	45	8220DB001285
20837	45	8220DB001284
20838	45	8220DB004456
20839	45	8220DB001283
20840	45	8220DB004521
20841	45	8220DB007564
20842	46	8220DB007564
20843	46	8220DB004521
20844	46	8220DB001283
20845	46	8220DB004456
20846	46	8220DB001284
20847	46	8220DB001285
20848	46	8220DB001016
20849	46	8220DB001017
20850	46	8220DB001018
20851	46	8220DB001019
20852	46	8220DB001020
20853	46	8220DB001076
20854	46	8220DB001077
20855	46	8220DB001078
20856	46	8220DB001079
20857	46	8220DB001080
20858	46	8220DB001081
20859	46	8220DB001082
20860	46	8220DB001083
20861	46	8220DB001085
20862	46	8220DB001121
20863	46	8220DB001122
20864	46	8220DB001123
20865	46	8220DB001124
20866	46	8230DB001125
20867	46	8230DB001127
20868	46	8230DB001130
20869	46	8230DB002550
20870	46	8230DB002516
20871	46	8230DB002517
20872	46	8230DB002518
20873	46	8230DB004749
20874	46	8230DB004750
20875	46	8230DB003006
20876	46	8230DB004871
20877	46	8230DB004872
20878	46	8230DB004873
20879	46	8230DB004874
20880	46	8230DB002532
20881	46	8230DB004877
20882	46	8230DB004878
20883	46	8230DB007180
20884	46	8230DB007331
20885	46	8230DB002559
20886	46	8230DB002560
20887	46	8230DB002561
20888	46	8230DB002562
20889	46	8230DB002564
20890	46	8230DB004927
20891	46	8230DB004928
20892	46	8230DB002352
20893	46	8230DB002573
20894	46	8230DB002574
20895	46	8230DB002575
20896	46	8230DB004929
20897	46	8230DB007460
20898	46	8230DB004930
20899	46	8230DB004931
20900	47	8230DB004931
20901	47	8230DB004930
20902	47	8230DB007460
20903	47	8230DB004929
20904	47	8230DB002575
20905	47	8230DB002574
20906	47	8230DB002573
20907	47	8230DB002352
20908	47	8230DB004928
20909	47	8230DB004927
20910	47	8230DB002564
20911	47	8230DB002562
20912	47	8230DB002561
20913	47	8230DB002560
20914	47	8230DB002559
20915	47	8230DB007331
20916	47	8230DB007180
20917	47	8230DB004878
20918	47	8230DB004877
20919	47	8230DB002532
20920	47	8230DB004874
20921	47	8230DB004873
20922	47	8230DB004872
20923	47	8230DB004871
20924	47	8230DB003006
20925	47	8230DB004750
20926	47	8230DB004749
20927	47	8230DB002518
20928	47	8230DB002517
20929	47	8230DB002516
20930	47	8230DB002550
20931	47	8230DB001130
20932	47	8230DB001127
20933	47	8230DB001125
20934	47	8220DB001124
20935	47	8220DB001123
20936	47	8220DB001122
20937	47	8220DB001121
20938	47	8220DB001085
20939	47	8220DB001083
20940	47	8220DB001082
20941	47	8220DB001081
20942	47	8220DB001080
20943	47	8220DB001079
20944	47	8220DB001078
20945	47	8220DB001077
20946	47	8220DB001076
20947	47	8220DB001020
20948	47	8220DB001019
20949	47	8220DB001018
20950	47	8220DB001017
20951	47	8220DB001016
20952	47	8220DB001285
20953	47	8220DB001284
20954	47	8220DB004456
20955	47	8220DB001283
20956	47	8220DB004521
20957	47	8220DB007564
20958	48	8220DB004962
20959	48	8220DB004725
20960	48	8220DB000273
20961	48	8220DB000405
20962	48	8220DB000408
20963	48	8220DB000409
20964	48	8220DB000410
20965	48	8220DB000411
20966	48	8220DB000412
20967	48	8220DB000413
20968	48	8220DB000414
20969	48	8220DB000415
20970	48	8220DB000416
20971	48	8220DB000417
20972	48	8220DB000418
20973	48	8220DB000419
20974	48	8220DB000420
20975	48	8220DB000421
20976	48	8220DB000422
20977	48	8220DB000423
20978	48	8220DB000424
20979	48	8250DB000425
20980	48	8250DB000426
20981	48	8250DB000427
20982	48	8250DB000428
20983	48	8250DB000429
20984	48	8250DB003032
20985	48	8250DB003033
20986	48	8250DB003034
20987	48	8250DB003036
20988	48	8250DB003037
20989	48	8250DB003038
20990	48	8250DB003039
20991	48	8250DB003040
20992	48	8250DB003041
20993	48	8250DB002035
20994	48	8250DB002036
20995	48	8250DB002040
20996	48	8250DB003047
20997	48	8250DB003202
20998	48	8250DB003203
20999	48	8250DB003204
21000	48	8250DB003205
21001	48	8250DB003206
21002	48	8250DB003207
21003	48	8250DB003208
21004	48	8250DB003209
21005	48	8250DB003210
21006	48	8250DB004981
21007	48	8250DB003211
21008	48	8250DB003212
21009	48	8250DB003213
21010	48	8250DB003214
21011	48	8250DB003215
21012	48	8250DB003216
21013	48	8250DB003217
21014	48	8250DB003218
21015	48	8250DB003219
21016	48	8250DB003220
21017	48	8250DB003221
21018	49	8250DB003221
21019	49	8250DB003220
21020	49	8250DB003219
21021	49	8250DB003218
21022	49	8250DB003217
21023	49	8250DB003216
21024	49	8250DB003215
21025	49	8250DB003214
21026	49	8250DB003213
21027	49	8250DB003212
21028	49	8250DB003211
21029	49	8250DB004981
21030	49	8250DB003210
21031	49	8250DB003209
21032	49	8250DB003208
21033	49	8250DB003207
21034	49	8250DB003206
21035	49	8250DB003205
21036	49	8250DB003204
21037	49	8250DB003203
21038	49	8250DB003202
21039	49	8250DB003047
21040	49	8250DB002040
21041	49	8250DB002036
21042	49	8250DB002035
21043	49	8250DB003041
21044	49	8250DB003040
21045	49	8250DB003039
21046	49	8250DB003038
21047	49	8250DB003037
21048	49	8250DB003036
21049	49	8250DB003034
21050	49	8250DB003033
21051	49	8250DB003032
21052	49	8250DB000429
21053	49	8250DB000428
21054	49	8250DB000427
21055	49	8250DB000426
21056	49	8250DB000425
21057	49	8220DB000424
21058	49	8220DB000423
21059	49	8220DB000422
21060	49	8220DB000421
21061	49	8220DB000420
21062	49	8220DB000419
21063	49	8220DB000418
21064	49	8220DB000417
21065	49	8220DB000416
21066	49	8220DB000415
21067	49	8220DB000414
21068	49	8220DB000413
21069	49	8220DB000412
21070	49	8220DB000411
21071	49	8220DB000410
21072	49	8220DB000409
21073	49	8220DB000408
21074	49	8220DB000405
21075	49	8220DB000273
21076	49	8220DB004725
21077	49	8220DB004962
21078	50	8230DB006185
21079	50	8230DB006186
21080	50	8230DB006216
21081	50	8230DB003400
21082	50	8230DB003401
21083	50	8230DB003402
21084	50	8230DB003403
21085	50	8230DB003404
21086	50	8230DB003405
21087	50	8230DB003406
21088	50	8230DB003410
21089	50	8230DB003407
21090	50	8230DB003408
21091	50	8230DB003409
21092	50	8230DB004558
21093	50	8230DB003411
21094	50	8230DB003412
21095	50	8230DB003413
21096	50	8230DB003414
21097	50	8230DB003415
21098	50	8230DB003416
21099	50	8230DB003417
21100	50	8230DB003418
21101	50	8230DB003419
21102	50	8230DB003420
21103	50	8230DB003421
21104	50	8230DB003422
21105	50	8230DB003423
21106	50	8230DB002156
21107	50	8230DB006014
21108	50	8230DB002158
21109	50	8230DB002159
21110	50	8230DB004409
21111	50	8230DB001972
21112	50	8230DB001973
21113	50	8230DB001974
21114	50	8230DB007781
21115	50	8230DB001975
21116	50	8230DB001977
21117	50	8230DB001978
21118	50	8230DB001980
21119	50	8220DB001981
21120	50	8220DB001982
21121	50	8220DB004406
21122	50	8220DB001984
21123	50	8220DB001985
21124	50	8220DB001986
21125	50	8220DB001987
21126	50	8220DB001988
21127	50	8220DB001989
21128	50	8220DB001375
21129	50	8220DB001376
21130	50	8220DB001377
21131	50	8220DB001378
21132	50	8220DB001379
21133	50	8220DB001380
21134	50	8220DB001381
21135	50	8220DB001382
21136	50	8220DB001383
21137	50	8220DB001384
21138	50	8220DB001385
21139	50	8220DB001348
21140	50	8220DB001349
21141	50	8220DB001350
21142	50	8220DB001352
21143	50	8220DB001353
21144	50	8220DB001355
21145	50	8220DB001357
21146	50	8220DB001358
21147	51	8220DB001358
21148	51	8220DB001357
21149	51	8220DB001355
21150	51	8220DB001353
21151	51	8220DB001352
21152	51	8220DB001350
21153	51	8220DB001349
21154	51	8220DB001348
21155	51	8220DB001385
21156	51	8220DB001384
21157	51	8220DB001383
21158	51	8220DB001382
21159	51	8220DB001381
21160	51	8220DB001380
21161	51	8220DB001379
21162	51	8220DB001378
21163	51	8220DB001377
21164	51	8220DB001376
21165	51	8220DB001375
21166	51	8220DB001989
21167	51	8220DB001988
21168	51	8220DB001987
21169	51	8220DB001986
21170	51	8220DB001985
21171	51	8220DB001984
21172	51	8220DB004406
21173	51	8220DB001982
21174	51	8220DB001981
21175	51	8230DB001980
21176	51	8230DB001978
21177	51	8230DB001977
21178	51	8230DB001975
21179	51	8230DB007781
21180	51	8230DB001974
21181	51	8230DB001973
21182	51	8230DB001972
21183	51	8230DB004409
21184	51	8230DB002159
21185	51	8230DB002158
21186	51	8230DB006014
21187	51	8230DB002156
21188	51	8230DB003423
21189	51	8230DB003422
21190	51	8230DB003421
21191	51	8230DB003420
21192	51	8230DB003419
21193	51	8230DB003418
21194	51	8230DB003417
21195	51	8230DB003416
21196	51	8230DB003415
21197	51	8230DB003414
21198	51	8230DB003413
21199	51	8230DB003412
21200	51	8230DB003411
21201	51	8230DB004558
21202	51	8230DB003409
21203	51	8230DB003408
21204	51	8230DB003407
21205	51	8230DB003410
21206	51	8230DB003406
21207	51	8230DB003405
21208	51	8230DB003404
21209	51	8230DB003403
21210	51	8230DB003402
21211	51	8230DB003401
21212	51	8230DB003400
21213	51	8230DB006216
21214	51	8230DB006186
21215	51	8230DB006185
21216	52	8240DB007144
21217	52	8240DB003881
21218	52	8240DB005096
21219	52	8240DB007145
21220	52	8240DB003884
21221	52	8240DB003686
21222	52	8240DB005077
21223	52	8240DB005078
21224	52	8240DB003689
21225	52	8240DB003690
21226	52	8240DB005079
21227	52	8240DB003694
21228	52	8240DB003695
21229	52	8240DB003696
21230	52	8240DB003697
21231	52	8240DB003698
21232	52	8240DB003699
21233	52	8240DB003885
21234	52	8240DB001631
21235	52	8240DB001632
21236	52	8240DB005053
21237	52	8240DB001633
21238	52	8240DB001634
21239	52	8240DB001635
21240	52	8240DB001636
21241	52	8240DB001637
21242	52	8240DB001638
21243	52	8240DB001639
21244	52	8240DB001640
21245	52	8240DB000231
21246	52	8220DB001641
21247	52	8220DB001642
21248	52	8220DB000213
21249	52	8220DB000214
21250	52	8220DB004432
21251	52	8220DB000119
21252	52	8220DB000044
21253	52	8220DB007603
21254	52	8220DB000045
21255	52	8220DB000046
21256	52	8220DB000047
21257	52	8220DB000048
21258	52	8220DB000049
21259	52	8220DB000051
21260	52	8220DB000052
21261	52	8220DB000277
21262	53	8220DB000277
21263	53	8220DB000052
21264	53	8220DB000051
21265	53	8220DB000049
21266	53	8220DB000048
21267	53	8220DB000047
21268	53	8220DB000046
21269	53	8220DB000045
21270	53	8220DB007603
21271	53	8220DB000044
21272	53	8220DB000119
21273	53	8220DB004432
21274	53	8220DB000214
21275	53	8220DB000213
21276	53	8220DB001642
21277	53	8220DB001641
21278	53	8240DB000231
21279	53	8240DB001640
21280	53	8240DB001639
21281	53	8240DB001638
21282	53	8240DB001637
21283	53	8240DB001636
21284	53	8240DB001635
21285	53	8240DB001634
21286	53	8240DB001633
21287	53	8240DB005053
21288	53	8240DB001632
21289	53	8240DB001631
21290	53	8240DB003885
21291	53	8240DB003699
21292	53	8240DB003698
21293	53	8240DB003697
21294	53	8240DB003696
21295	53	8240DB003695
21296	53	8240DB003694
21297	53	8240DB005079
21298	53	8240DB003690
21299	53	8240DB003689
21300	53	8240DB005078
21301	53	8240DB005077
21302	53	8240DB003686
21303	53	8240DB003884
21304	53	8240DB007145
21305	53	8240DB005096
21306	53	8240DB003881
21307	53	8240DB007144
21308	54	8220DB000288
21309	54	8220DB001171
21310	54	8220DB001172
21311	54	8220DB001173
21312	54	8220DB001174
21313	54	8220DB001175
21314	54	8220DB000015
21315	54	8220DB000017
21316	54	8220DB000018
21317	54	8220DB000019
21318	54	8220DB000021
21319	54	8220DB007602
21320	54	8220DB000085
21321	54	8220DB000203
21322	54	8220DB000204
21323	54	8220DB000205
21324	54	8220DB001620
21325	54	8220DB000220
21326	54	8240DB001622
21327	54	8240DB001623
21328	54	8240DB001624
21329	54	8240DB001625
21330	54	8240DB001626
21331	54	8240DB001627
21332	54	8240DB001628
21333	54	8240DB001629
21334	54	8240DB001630
21335	54	8240DB003670
21336	54	8240DB003671
21337	54	8240DB003672
21338	54	8240DB003674
21339	54	8240DB003675
21340	54	8240DB005030
21341	54	8240DB005031
21342	54	8240DB006033
21343	54	8240DB003089
21344	54	8240DB003090
21345	54	8240DB003706
21346	54	8240DB003707
21347	54	8240DB003708
21348	54	8240DB003709
21349	54	8240DB003710
21350	54	8240DB004925
21351	54	8240DB004926
21352	54	8240DB003678
21353	54	8240DB003679
21354	54	8240DB003711
21355	54	8240DB003712
21356	54	8240DB004916
21357	54	8240DB004917
21358	54	8240DB004918
21359	54	8240DB004919
21360	54	8240DB004920
21361	54	8240DB004910
21362	54	8240DB004911
21363	54	8240DB004912
21364	54	8240DB004913
21365	54	8240DB004914
21366	54	8240DB004915
21367	55	8240DB004915
21368	55	8240DB004914
21369	55	8240DB004913
21370	55	8240DB004912
21371	55	8240DB004911
21372	55	8240DB004910
21373	55	8240DB004920
21374	55	8240DB004919
21375	55	8240DB004918
21376	55	8240DB004917
21377	55	8240DB004916
21378	55	8240DB003712
21379	55	8240DB003711
21380	55	8240DB003679
21381	55	8240DB003678
21382	55	8240DB004926
21383	55	8240DB004925
21384	55	8240DB003710
21385	55	8240DB003709
21386	55	8240DB003708
21387	55	8240DB003707
21388	55	8240DB003706
21389	55	8240DB003090
21390	55	8240DB003089
21391	55	8240DB006033
21392	55	8240DB005031
21393	55	8240DB005030
21394	55	8240DB003675
21395	55	8240DB003674
21396	55	8240DB003672
21397	55	8240DB003671
21398	55	8240DB003670
21399	55	8240DB001630
21400	55	8240DB001629
21401	55	8240DB001628
21402	55	8240DB001627
21403	55	8240DB001626
21404	55	8240DB001625
21405	55	8240DB001624
21406	55	8240DB001623
21407	55	8240DB001622
21408	55	8220DB000220
21409	55	8220DB001620
21410	55	8220DB000205
21411	55	8220DB000204
21412	55	8220DB000203
21413	55	8220DB000085
21414	55	8220DB007602
21415	55	8220DB000021
21416	55	8220DB000019
21417	55	8220DB000018
21418	55	8220DB000017
21419	55	8220DB000015
21420	55	8220DB001175
21421	55	8220DB001174
21422	55	8220DB001173
21423	55	8220DB001172
21424	55	8220DB001171
21425	55	8220DB000288
21426	56	8240DB004843
21427	56	8240DB004905
21428	56	8240DB004906
21429	56	8240DB004907
21430	56	8240DB004908
21431	56	8240DB004909
21432	56	8240DB003884
21433	56	8240DB003686
21434	56	8240DB005077
21435	56	8240DB005078
21436	56	8240DB003689
21437	56	8240DB003690
21438	56	8240DB006117
21439	56	8240DB005079
21440	56	8240DB003694
21441	56	8240DB003695
21442	56	8240DB003696
21443	56	8240DB003697
21444	56	8240DB003698
21445	56	8240DB003699
21446	56	8240DB003885
21447	56	8240DB003663
21448	56	8240DB007347
21449	56	8240DB003669
21450	56	8240DB007349
21451	56	8240DB001631
21452	56	8240DB001632
21453	56	8240DB005053
21454	56	8240DB001633
21455	56	8240DB001634
21456	56	8240DB001635
21457	56	8240DB001636
21458	56	8240DB001637
21459	56	8240DB001638
21460	56	8240DB001639
21461	56	8240DB001640
21462	56	8240DB000231
21463	56	8220DB001641
21464	56	8220DB001642
21465	56	8220DB000213
21466	56	8220DB000214
21467	56	8220DB004432
21468	56	8220DB000119
21469	56	8220DB000044
21470	56	8220DB007603
21471	56	8220DB000045
21472	56	8220DB000046
21473	56	8220DB000047
21474	56	8220DB000048
21475	56	8220DB000049
21476	56	8220DB000051
21477	56	8220DB000052
21478	56	8220DB000277
21479	57	8220DB000277
21480	57	8220DB000052
21481	57	8220DB000051
21482	57	8220DB000049
21483	57	8220DB000048
21484	57	8220DB000047
21485	57	8220DB000046
21486	57	8220DB000045
21487	57	8220DB007603
21488	57	8220DB000044
21489	57	8220DB000119
21490	57	8220DB004432
21491	57	8220DB000214
21492	57	8220DB000213
21493	57	8220DB001642
21494	57	8220DB001641
21495	57	8240DB000231
21496	57	8240DB001640
21497	57	8240DB001639
21498	57	8240DB001638
21499	57	8240DB001637
21500	57	8240DB001636
21501	57	8240DB001635
21502	57	8240DB001634
21503	57	8240DB001633
21504	57	8240DB005053
21505	57	8240DB001632
21506	57	8240DB001631
21507	57	8240DB007349
21508	57	8240DB003669
21509	57	8240DB007347
21510	57	8240DB003663
21511	57	8240DB003885
21512	57	8240DB003699
21513	57	8240DB003698
21514	57	8240DB003697
21515	57	8240DB003696
21516	57	8240DB003695
21517	57	8240DB003694
21518	57	8240DB005079
21519	57	8240DB006117
21520	57	8240DB003690
21521	57	8240DB003689
21522	57	8240DB005078
21523	57	8240DB005077
21524	57	8240DB003686
21525	57	8240DB003884
21526	57	8240DB004909
21527	57	8240DB004908
21528	57	8240DB004907
21529	57	8240DB004906
21530	57	8240DB004905
21531	57	8240DB004843
21532	58	8350DB007823
21533	58	8350DB007824
21534	58	8350DB004114
21535	58	8350DB004115
21536	58	8350DB004116
21537	58	8350DB004117
21538	58	8350DB004118
21539	58	8350DB004119
21540	58	8350DB004120
21541	58	8250DB004121
21542	58	8250DB004122
21543	58	8250DB004123
21544	58	8250DB003283
21545	58	8250DB003284
21546	58	8250DB003310
21547	58	8250DB003481
21548	58	8250DB003482
21549	58	8250DB003483
21550	58	8250DB003484
21551	58	8250DB003485
21552	58	8250DB003486
21553	58	8250DB003487
21554	58	8250DB003488
21555	58	8250DB003489
21556	58	8250DB003492
21557	58	8250DB002835
21558	58	8250DB007176
21559	58	8250DB002836
21560	58	8250DB002837
21561	58	8250DB002838
21562	58	8250DB002839
21563	58	8250DB002840
21564	58	8250DB002841
21565	58	8250DB002865
21566	58	8250DB002866
21567	58	8250DB002892
21568	58	8250DB002893
21569	58	8250DB002894
21570	58	8250DB002895
21571	58	8250DB002896
21572	58	8250DB002897
21573	58	8220DB002898
21574	58	8220DB003562
21575	58	8220DB002899
21576	58	8220DB000884
21577	58	8220DB000885
21578	58	8220DB000886
21579	58	8220DB000887
21580	58	8220DB002900
21581	58	8220DB002901
21582	58	8220DB002902
21583	58	8220DB002903
21584	58	8220DB001074
21585	58	8220DB006074
21586	58	8220DB000793
21587	58	8220DB000495
21588	58	8220DB000400
21589	58	8220DB000319
21590	58	8220DB000278
21591	58	8220DB000010
21592	58	8220DB000012
21593	58	8220DB000014
21594	58	8220DB000015
21595	58	8220DB000017
21596	58	8220DB000018
21597	58	8220DB000019
21598	58	8220DB000021
21599	58	8220DB007602
21600	58	8220DB000085
21601	58	8220DB000203
21602	58	8220DB000204
21603	58	8220DB000205
21604	58	8220DB000206
21605	58	8220DB000207
21606	58	8220DB000208
21607	58	8220DB000209
21608	58	8220DB000210
21609	58	8220DB001643
21610	59	8220DB001643
21611	59	8220DB000210
21612	59	8220DB000209
21613	59	8220DB000208
21614	59	8220DB000207
21615	59	8220DB000206
21616	59	8220DB000205
21617	59	8220DB000204
21618	59	8220DB000203
21619	59	8220DB000085
21620	59	8220DB007602
21621	59	8220DB000021
21622	59	8220DB000019
21623	59	8220DB000018
21624	59	8220DB000017
21625	59	8220DB000015
21626	59	8220DB000014
21627	59	8220DB000012
21628	59	8220DB000010
21629	59	8220DB000278
21630	59	8220DB000319
21631	59	8220DB000400
21632	59	8220DB000495
21633	59	8220DB000793
21634	59	8220DB006074
21635	59	8220DB001074
21636	59	8220DB002903
21637	59	8220DB002902
21638	59	8220DB002901
21639	59	8220DB002900
21640	59	8220DB000887
21641	59	8220DB000886
21642	59	8220DB000885
21643	59	8220DB000884
21644	59	8220DB002899
21645	59	8220DB003562
21646	59	8220DB002898
21647	59	8250DB002897
21648	59	8250DB002896
21649	59	8250DB002895
21650	59	8250DB002894
21651	59	8250DB002893
21652	59	8250DB002892
21653	59	8250DB002866
21654	59	8250DB002865
21655	59	8250DB002841
21656	59	8250DB002840
21657	59	8250DB002839
21658	59	8250DB002838
21659	59	8250DB002837
21660	59	8250DB002836
21661	59	8250DB007176
21662	59	8250DB002835
21663	59	8250DB003492
21664	59	8250DB003489
21665	59	8250DB003488
21666	59	8250DB003487
21667	59	8250DB003486
21668	59	8250DB003485
21669	59	8250DB003484
21670	59	8250DB003483
21671	59	8250DB003482
21672	59	8250DB003481
21673	59	8250DB003310
21674	59	8250DB003284
21675	59	8250DB003283
21676	59	8250DB004123
21677	59	8250DB004122
21678	59	8250DB004121
21679	59	8350DB004120
21680	59	8350DB004119
21681	59	8350DB004118
21682	59	8350DB004117
21683	59	8350DB004116
21684	59	8350DB004115
21685	59	8350DB004114
21686	59	8350DB007824
21687	59	8350DB007823
21688	60	8230DB004795
21689	60	8230DB004688
21690	60	8230DB004689
21691	60	8230DB004410
21692	60	8230DB002678
21693	60	8230DB002679
21694	60	8230DB002680
21695	60	8230DB002676
21696	60	8230DB002118
21697	60	8230DB002119
21698	60	8230DB002120
21699	60	8230DB002121
21700	60	8230DB002123
21701	60	8230DB002685
21702	60	8230DB002686
21703	60	8230DB007510
21704	60	8230DB004799
21705	60	8230DB002205
21706	60	8230DB002687
21707	60	8220DB002688
21708	60	8220DB002689
21709	60	8220DB002696
21710	60	8220DB002697
21711	60	8220DB002713
21712	60	8220DB002714
21713	60	8220DB002715
21714	60	8220DB002716
21715	60	8220DB002718
21716	60	8220DB002719
21717	60	8220DB001989
21718	60	8220DB001990
21719	60	8220DB001992
21720	60	8220DB001993
21721	60	8220DB001994
21722	60	8220DB001995
21723	60	8220DB001996
21724	60	8220DB001997
21725	60	8220DB001998
21726	60	8220DB001999
21727	60	8220DB002001
21728	60	8220DB002002
21729	60	8220DB001358
21730	60	8220DB000319
21731	60	8220DB000279
21732	60	8220DB000007
21733	60	8220DB000011
21734	60	8220DB000014
21735	60	8220DB000015
21736	60	8220DB000834
21737	60	8220DB000835
21738	60	8220DB000836
21739	60	8220DB000837
21740	60	8220DB001506
21741	60	8220DB001507
21742	60	8220DB001508
21743	60	8220DB001509
21744	60	8220DB001510
21745	60	8220DB001511
21746	60	8220DB001592
21747	60	8220DB001593
21748	60	8220DB001594
21749	60	8220DB001596
21750	60	8220DB004363
21751	60	8220DB001598
21752	60	8220DB001597
21753	60	8220DB001599
21754	60	8220DB001573
21755	60	8220DB001574
21756	60	8220DB001575
21757	60	8220DB004583
21758	60	8220DB001518
21759	60	8220DB001519
21760	60	8220DB001520
21761	60	8220DB007661
21762	60	8220DB001521
21763	60	8220DB004546
21764	60	8220DB001559
21765	60	8220DB000987
21766	60	8220DB004937
21767	60	8220DB001547
21768	60	8220DB001548
21769	60	8220DB001280
21770	61	8220DB001280
21771	61	8220DB001548
21772	61	8220DB001547
21773	61	8220DB004937
21774	61	8220DB000987
21775	61	8220DB001559
21776	61	8220DB004546
21777	61	8220DB001521
21778	61	8220DB007661
21779	61	8220DB001520
21780	61	8220DB001519
21781	61	8220DB001518
21782	61	8220DB004583
21783	61	8220DB001575
21784	61	8220DB001574
21785	61	8220DB001573
21786	61	8220DB001599
21787	61	8220DB001597
21788	61	8220DB001598
21789	61	8220DB004363
21790	61	8220DB001596
21791	61	8220DB001594
21792	61	8220DB001593
21793	61	8220DB001592
21794	61	8220DB001511
21795	61	8220DB001510
21796	61	8220DB001509
21797	61	8220DB001508
21798	61	8220DB001507
21799	61	8220DB001506
21800	61	8220DB000837
21801	61	8220DB000836
21802	61	8220DB000835
21803	61	8220DB000834
21804	61	8220DB000015
21805	61	8220DB000014
21806	61	8220DB000011
21807	61	8220DB000007
21808	61	8220DB000279
21809	61	8220DB000319
21810	61	8220DB001358
21811	61	8220DB002002
21812	61	8220DB002001
21813	61	8220DB001999
21814	61	8220DB001998
21815	61	8220DB001997
21816	61	8220DB001996
21817	61	8220DB001995
21818	61	8220DB001994
21819	61	8220DB001993
21820	61	8220DB001992
21821	61	8220DB001990
21822	61	8220DB001989
21823	61	8220DB002719
21824	61	8220DB002718
21825	61	8220DB002716
21826	61	8220DB002715
21827	61	8220DB002714
21828	61	8220DB002713
21829	61	8220DB002697
21830	61	8220DB002696
21831	61	8220DB002689
21832	61	8220DB002688
21833	61	8230DB002687
21834	61	8230DB002205
21835	61	8230DB004799
21836	61	8230DB007510
21837	61	8230DB002686
21838	61	8230DB002685
21839	61	8230DB002123
21840	61	8230DB002121
21841	61	8230DB002120
21842	61	8230DB002119
21843	61	8230DB002118
21844	61	8230DB002676
21845	61	8230DB002680
21846	61	8230DB002679
21847	61	8230DB002678
21848	61	8230DB004410
21849	61	8230DB004689
21850	61	8230DB004688
21851	61	8230DB004795
21852	62	8230DB004863
21853	62	8230DB004864
21854	62	8230DB004865
21855	62	8230DB004577
21856	62	8230DB004578
21857	62	8230DB001100
21858	62	8230DB000100
21859	62	8230DB001111
21860	62	8230DB002323
21861	62	8230DB002324
21862	62	8230DB002325
21863	62	8230DB002326
21864	62	8230DB005150
21865	62	8220DB002327
21866	62	8220DB002328
21867	62	8220DB002329
21868	62	8220DB002330
21869	62	8220DB002331
21870	62	8220DB001397
21871	62	8220DB001398
21872	62	8220DB001399
21873	62	8220DB005148
21874	62	8220DB001401
21875	62	8220DB001402
21876	62	8220DB001403
21877	62	8220DB001404
21878	62	8220DB001405
21879	62	8220DB004856
21880	62	8220DB004857
21881	62	8220DB000307
21882	62	8220DB000308
21883	62	8220DB000309
21884	62	8220DB007412
21885	62	8220DB007413
21886	62	8220DB002383
21887	62	8220DB002003
21888	62	8220DB001358
21889	63	8220DB001358
21890	63	8220DB002003
21891	63	8220DB002383
21892	63	8220DB007413
21893	63	8220DB007412
21894	63	8220DB000309
21895	63	8220DB000308
21896	63	8220DB000307
21897	63	8220DB004857
21898	63	8220DB004856
21899	63	8220DB001405
21900	63	8220DB001404
21901	63	8220DB001403
21902	63	8220DB001402
21903	63	8220DB001401
21904	63	8220DB005148
21905	63	8220DB001399
21906	63	8220DB001398
21907	63	8220DB001397
21908	63	8220DB002331
21909	63	8220DB002330
21910	63	8220DB002329
21911	63	8220DB002328
21912	63	8220DB002327
21913	63	8230DB005150
21914	63	8230DB002326
21915	63	8230DB002325
21916	63	8230DB002324
21917	63	8230DB002323
21918	63	8230DB001111
21919	63	8230DB000100
21920	63	8230DB001100
21921	63	8230DB004578
21922	63	8230DB004577
21923	63	8230DB004865
21924	63	8230DB004864
21925	63	8230DB004863
21926	64	8220DB004962
21927	64	8220DB004725
21928	64	8220DB000273
21929	64	8220DB000405
21930	64	8220DB000408
21931	64	8220DB000409
21932	64	8220DB000410
21933	64	8220DB000411
21934	64	8220DB000412
21935	64	8220DB000413
21936	64	8220DB000414
21937	64	8220DB000415
21938	64	8220DB000416
21939	64	8220DB000417
21940	64	8220DB000418
21941	64	8220DB000419
21942	64	8220DB000420
21943	64	8220DB000421
21944	64	8220DB000422
21945	64	8220DB000423
21946	64	8220DB000424
21947	64	8250DB000425
21948	64	8250DB000426
21949	64	8250DB000427
21950	64	8250DB000428
21951	64	8250DB000429
21952	64	8250DB003032
21953	64	8250DB003033
21954	64	8250DB003034
21955	64	8250DB003036
21956	64	8250DB003037
21957	64	8250DB003038
21958	64	8250DB003039
21959	64	8250DB003040
21960	64	8250DB003041
21961	64	8250DB003042
21962	64	8250DB002035
21963	64	8250DB002036
21964	64	8250DB002040
21965	64	8250DB003047
21966	64	8250DB003202
21967	64	8250DB003203
21968	64	8250DB003204
21969	64	8250DB007641
21970	64	8250DB007642
21971	64	8250DB007643
21972	64	8250DB003214
21973	64	8250DB003215
21974	64	8250DB003216
21975	64	8250DB003217
21976	64	8250DB003218
21977	64	8250DB003219
21978	64	8250DB003220
21979	64	8250DB005046
21980	65	8250DB005046
21981	65	8250DB003220
21982	65	8250DB003219
21983	65	8250DB003218
21984	65	8250DB003217
21985	65	8250DB003216
21986	65	8250DB003215
21987	65	8250DB003214
21988	65	8250DB007643
21989	65	8250DB007642
21990	65	8250DB007641
21991	65	8250DB003204
21992	65	8250DB003203
21993	65	8250DB003202
21994	65	8250DB003047
21995	65	8250DB002040
21996	65	8250DB002036
21997	65	8250DB002035
21998	65	8250DB003042
21999	65	8250DB003041
22000	65	8250DB003040
22001	65	8250DB003039
22002	65	8250DB003038
22003	65	8250DB003037
22004	65	8250DB003036
22005	65	8250DB003034
22006	65	8250DB003033
22007	65	8250DB003032
22008	65	8250DB000429
22009	65	8250DB000428
22010	65	8250DB000427
22011	65	8250DB000426
22012	65	8250DB000425
22013	65	8220DB000424
22014	65	8220DB000423
22015	65	8220DB000422
22016	65	8220DB000421
22017	65	8220DB000420
22018	65	8220DB000419
22019	65	8220DB000418
22020	65	8220DB000417
22021	65	8220DB000416
22022	65	8220DB000415
22023	65	8220DB000414
22024	65	8220DB000413
22025	65	8220DB000412
22026	65	8220DB000411
22027	65	8220DB000410
22028	65	8220DB000409
22029	65	8220DB000408
22030	65	8220DB000405
22031	65	8220DB000273
22032	65	8220DB004725
22033	65	8220DB004962
22034	66	8220DB000300
22035	66	8220DB000497
22036	66	8220DB000515
22037	66	8220DB000516
22038	66	8220DB004384
22039	66	8220DB000519
22040	66	8220DB000521
22041	66	8220DB000522
22042	66	8220DB000523
22043	66	8220DB000669
22044	66	8220DB000670
22045	66	8220DB000671
22046	66	8220DB000672
22047	66	8220DB004382
22048	66	8220DB001196
22049	66	8220DB001197
22050	66	8220DB001198
22051	66	8220DB001222
22052	66	8220DB001223
22053	66	8220DB001224
22054	66	8220DB001225
22055	66	8220DB001226
22056	66	8220DB001227
22057	66	8220DB001228
22058	66	8220DB001244
22059	66	8220DB000254
22060	66	8220DB001246
22061	66	8220DB001229
22062	66	8220DB001231
22063	66	8220DB001232
22064	66	8220DB001233
22065	66	8220DB001234
22066	66	8220DB007358
22067	66	8220DB005174
22068	66	8220DB006078
22069	66	8220DB007112
22070	66	8220DB000972
22071	66	8240DB001625
22072	66	8240DB001626
22073	66	8240DB001627
22074	66	8240DB001628
22075	66	8240DB001629
22076	66	8240DB006234
22077	67	8240DB006234
22078	67	8240DB001629
22079	67	8240DB001628
22080	67	8240DB001627
22081	67	8240DB001626
22082	67	8240DB001625
22083	67	8220DB000972
22084	67	8220DB007112
22085	67	8220DB006078
22086	67	8220DB005174
22087	67	8220DB007358
22088	67	8220DB001234
22089	67	8220DB001233
22090	67	8220DB001232
22091	67	8220DB001231
22092	67	8220DB001229
22093	67	8220DB001246
22094	67	8220DB000254
22095	67	8220DB001244
22096	67	8220DB001228
22097	67	8220DB001227
22098	67	8220DB001226
22099	67	8220DB001225
22100	67	8220DB001224
22101	67	8220DB001223
22102	67	8220DB001222
22103	67	8220DB001198
22104	67	8220DB001197
22105	67	8220DB001196
22106	67	8220DB004382
22107	67	8220DB000672
22108	67	8220DB000671
22109	67	8220DB000670
22110	67	8220DB000669
22111	67	8220DB000523
22112	67	8220DB000522
22113	67	8220DB000521
22114	67	8220DB000519
22115	67	8220DB004384
22116	67	8220DB000516
22117	67	8220DB000515
22118	67	8220DB000497
22119	67	8220DB000300
22120	68	8240DB007348
22121	68	8240DB003669
22122	68	8240DB003671
22123	68	8240DB003672
22124	68	8240DB003078
22125	68	8240DB003087
22126	68	8240DB006033
22127	68	8240DB003089
22128	68	8240DB003090
22129	68	8240DB003706
22130	68	8240DB003707
22131	68	8240DB003708
22132	68	8240DB003709
22133	68	8240DB003710
22134	68	8240DB004925
22135	68	8240DB004926
22136	68	8240DB003678
22137	68	8240DB006117
22138	68	8240DB001041
22139	68	8240DB001050
22140	68	8240DB003656
22141	68	8240DB003653
22142	68	8240DB006055
22143	68	8240DB001073
22144	68	8240DB003641
22145	68	8240DB003642
22146	68	8240DB003643
22147	68	8240DB003583
22148	68	8240DB003584
22149	68	8240DB003585
22150	68	8240DB003586
22151	68	8240DB003587
22152	68	8240DB003588
22153	68	8240DB003590
22154	68	8240DB003589
22155	68	8240DB003591
22156	68	8240DB003592
22157	68	8240DB003593
22158	68	8240DB003594
22159	68	8240DB003595
22160	68	8240DB003596
22161	68	8240DB003597
22162	68	8240DB003598
22163	68	8240DB004465
22164	68	8240DB000944
22165	68	8240DB000945
22166	68	8240DB000947
22167	68	8240DB000948
22168	68	8240DB007725
22169	68	8240DB000950
22170	68	8240DB000928
22171	68	8240DB000951
22172	68	8240DB000952
22173	68	8240DB000953
22174	69	8240DB000953
22175	69	8240DB000952
22176	69	8240DB000951
22177	69	8240DB000928
22178	69	8240DB000950
22179	69	8240DB007725
22180	69	8240DB000948
22181	69	8240DB000947
22182	69	8240DB000945
22183	69	8240DB000944
22184	69	8240DB004465
22185	69	8240DB003598
22186	69	8240DB003597
22187	69	8240DB003596
22188	69	8240DB003595
22189	69	8240DB003594
22190	69	8240DB003593
22191	69	8240DB003592
22192	69	8240DB003591
22193	69	8240DB003589
22194	69	8240DB003590
22195	69	8240DB003588
22196	69	8240DB003587
22197	69	8240DB003586
22198	69	8240DB003585
22199	69	8240DB003584
22200	69	8240DB003583
22201	69	8240DB003643
22202	69	8240DB003642
22203	69	8240DB003641
22204	69	8240DB001073
22205	69	8240DB006055
22206	69	8240DB003653
22207	69	8240DB003656
22208	69	8240DB001050
22209	69	8240DB001041
22210	69	8240DB006117
22211	69	8240DB003678
22212	69	8240DB004926
22213	69	8240DB004925
22214	69	8240DB003710
22215	69	8240DB003709
22216	69	8240DB003708
22217	69	8240DB003707
22218	69	8240DB003706
22219	69	8240DB003090
22220	69	8240DB003089
22221	69	8240DB006033
22222	69	8240DB003087
22223	69	8240DB003078
22224	69	8240DB003672
22225	69	8240DB003671
22226	69	8240DB003669
22227	69	8240DB007348
22228	70	8240DB007158
22229	70	8240DB007048
22230	70	8240DB007699
22231	70	8240DB007159
22232	70	8240DB007388
22233	70	8240DB007017
22234	70	8240DB007018
22235	70	8240DB007030
22236	70	8240DB007021
22237	70	8240DB006111
22238	70	8240DB006112
22239	70	8240DB006113
22240	70	8240DB001898
22241	70	8240DB001858
22242	70	8240DB001859
22243	70	8240DB001860
22244	70	8240DB004492
22245	70	8240DB001861
22246	70	8240DB001862
22247	70	8240DB001863
22248	70	8240DB001864
22249	70	8240DB001865
22250	70	8240DB001866
22251	70	8240DB001850
22252	70	8240DB001867
22253	70	8240DB004489
22254	70	8240DB004747
22255	70	8240DB001845
22256	70	8240DB007166
22257	70	8220DB001847
22258	70	8220DB001696
22259	70	8220DB001697
22260	70	8220DB001698
22261	70	8220DB001699
22262	70	8220DB001700
22263	70	8220DB001701
22264	70	8220DB001702
22265	70	8220DB001703
22266	70	8220DB001905
22267	70	8220DB001906
22268	70	8220DB001907
22269	70	8220DB001908
22270	70	8220DB001909
22271	70	8220DB001713
22272	70	8220DB001714
22273	70	8220DB001715
22274	70	8220DB007453
22275	70	8220DB001478
22276	70	8220DB001479
22277	70	8220DB000315
22278	70	8220DB000335
22279	70	8220DB000404
22280	70	8220DB000747
22281	70	8220DB000748
22282	70	8220DB000749
22283	70	8220DB000750
22284	70	8220DB000751
22285	70	8220DB000752
22286	70	8220DB000753
22287	70	8220DB000754
22288	70	8220DB000755
22289	70	8220DB000756
22290	70	8220DB000757
22291	70	8220DB000758
22292	70	8220DB000759
22293	70	8220DB000760
22294	70	8220DB000761
22295	70	8220DB000762
22296	70	8220DB000763
22297	71	8220DB000763
22298	71	8220DB000762
22299	71	8220DB000761
22300	71	8220DB000760
22301	71	8220DB000759
22302	71	8220DB000758
22303	71	8220DB000757
22304	71	8220DB000756
22305	71	8220DB000755
22306	71	8220DB000754
22307	71	8220DB000753
22308	71	8220DB000752
22309	71	8220DB000751
22310	71	8220DB000750
22311	71	8220DB000749
22312	71	8220DB000748
22313	71	8220DB000747
22314	71	8220DB000404
22315	71	8220DB000335
22316	71	8220DB000315
22317	71	8220DB001479
22318	71	8220DB001478
22319	71	8220DB007453
22320	71	8220DB001715
22321	71	8220DB001714
22322	71	8220DB001713
22323	71	8220DB001909
22324	71	8220DB001908
22325	71	8220DB001907
22326	71	8220DB001906
22327	71	8220DB001905
22328	71	8220DB001703
22329	71	8220DB001702
22330	71	8220DB001701
22331	71	8220DB001700
22332	71	8220DB001699
22333	71	8220DB001698
22334	71	8220DB001697
22335	71	8220DB001696
22336	71	8220DB001847
22337	71	8240DB007166
22338	71	8240DB001845
22339	71	8240DB004747
22340	71	8240DB004489
22341	71	8240DB001867
22342	71	8240DB001850
22343	71	8240DB001866
22344	71	8240DB001865
22345	71	8240DB001864
22346	71	8240DB001863
22347	71	8240DB001862
22348	71	8240DB001861
22349	71	8240DB004492
22350	71	8240DB001860
22351	71	8240DB001859
22352	71	8240DB001858
22353	71	8240DB001898
22354	71	8240DB006113
22355	71	8240DB006112
22356	71	8240DB006111
22357	71	8240DB007021
22358	71	8240DB007030
22359	71	8240DB007018
22360	71	8240DB007017
22361	71	8240DB007388
22362	71	8240DB007159
22363	71	8240DB007699
22364	71	8240DB007048
22365	71	8240DB007158
22366	72	8240DB007158
22367	72	8240DB007048
22368	72	8240DB007699
22369	72	8240DB007159
22370	72	8240DB007388
22371	72	8240DB007017
22372	72	8240DB007018
22373	72	8240DB007030
22374	72	8240DB007021
22375	72	8240DB007163
22376	72	8240DB001893
22377	72	8240DB001894
22378	72	8240DB001912
22379	72	8240DB001895
22380	72	8240DB001896
22381	72	8240DB001897
22382	72	8240DB006088
22383	72	8240DB001898
22384	72	8240DB001858
22385	72	8240DB001859
22386	72	8240DB001860
22387	72	8240DB004492
22388	72	8240DB001861
22389	72	8240DB001862
22390	72	8240DB001863
22391	72	8240DB001864
22392	72	8240DB001865
22393	72	8240DB001866
22394	72	8240DB001850
22395	72	8240DB001867
22396	72	8240DB004489
22397	72	8240DB004747
22398	72	8240DB001882
22399	72	8240DB007379
22400	72	8240DB004903
22401	72	8240DB001883
22402	72	8240DB001884
22403	72	8240DB001902
22404	72	8240DB001903
22405	72	8240DB001904
22406	72	8240DB001840
22407	72	8240DB001841
22408	72	8240DB001842
22409	72	8240DB007374
22410	72	8240DB001845
22411	72	8240DB007166
22412	72	8220DB001847
22413	72	8220DB001696
22414	72	8220DB001697
22415	72	8220DB001698
22416	72	8220DB001699
22417	72	8220DB001700
22418	72	8220DB001701
22419	72	8220DB001702
22420	72	8220DB001703
22421	72	8220DB001905
22422	72	8220DB001906
22423	72	8220DB001907
22424	72	8220DB001908
22425	72	8220DB001909
22426	72	8220DB001713
22427	72	8220DB001714
22428	72	8220DB001715
22429	72	8220DB007453
22430	72	8220DB001478
22431	72	8220DB001479
22432	72	8220DB000315
22433	72	8220DB000335
22434	72	8220DB000404
22435	72	8220DB000747
22436	72	8220DB000748
22437	72	8220DB000749
22438	72	8220DB000750
22439	72	8220DB000751
22440	72	8220DB000752
22441	72	8220DB000753
22442	73	8220DB000753
22443	73	8220DB000752
22444	73	8220DB000751
22445	73	8220DB000750
22446	73	8220DB000749
22447	73	8220DB000748
22448	73	8220DB000747
22449	73	8220DB000404
22450	73	8220DB000335
22451	73	8220DB000315
22452	73	8220DB001479
22453	73	8220DB001478
22454	73	8220DB007453
22455	73	8220DB001715
22456	73	8220DB001714
22457	73	8220DB001713
22458	73	8220DB001909
22459	73	8220DB001908
22460	73	8220DB001907
22461	73	8220DB001906
22462	73	8220DB001905
22463	73	8220DB001703
22464	73	8220DB001702
22465	73	8220DB001701
22466	73	8220DB001700
22467	73	8220DB001699
22468	73	8220DB001698
22469	73	8220DB001697
22470	73	8220DB001696
22471	73	8220DB001847
22472	73	8240DB007166
22473	73	8240DB001845
22474	73	8240DB007374
22475	73	8240DB001842
22476	73	8240DB001841
22477	73	8240DB001840
22478	73	8240DB001904
22479	73	8240DB001903
22480	73	8240DB001902
22481	73	8240DB001884
22482	73	8240DB001883
22483	73	8240DB004903
22484	73	8240DB007379
22485	73	8240DB001882
22486	73	8240DB004747
22487	73	8240DB004489
22488	73	8240DB001867
22489	73	8240DB001850
22490	73	8240DB001866
22491	73	8240DB001865
22492	73	8240DB001864
22493	73	8240DB001863
22494	73	8240DB001862
22495	73	8240DB001861
22496	73	8240DB004492
22497	73	8240DB001860
22498	73	8240DB001859
22499	73	8240DB001858
22500	73	8240DB001898
22501	73	8240DB006088
22502	73	8240DB001897
22503	73	8240DB001896
22504	73	8240DB001895
22505	73	8240DB001912
22506	73	8240DB001894
22507	73	8240DB001893
22508	73	8240DB007163
22509	73	8240DB007021
22510	73	8240DB007030
22511	73	8240DB007018
22512	73	8240DB007017
22513	73	8240DB007388
22514	73	8240DB007159
22515	73	8240DB007699
22516	73	8240DB007048
22517	73	8240DB007158
22518	74	8220DB007591
22519	74	8220DB000496
22520	74	8220DB000515
22521	74	8220DB000516
22522	74	8220DB004384
22523	74	8220DB000518
22524	74	8220DB000519
22525	74	8220DB000521
22526	74	8220DB000522
22527	74	8220DB000523
22528	74	8220DB000525
22529	74	8220DB000526
22530	74	8220DB000527
22531	74	8220DB000528
22532	74	8220DB000529
22533	74	8220DB000530
22534	74	8220DB000531
22535	74	8220DB000709
22536	74	8220DB000532
22537	74	8220DB000533
22538	74	8220DB000534
22539	74	8220DB000654
22540	74	8220DB007727
22541	74	8220DB007729
22542	74	8220DB007731
22543	74	8220DB000542
22544	74	8240DB000543
22545	74	8240DB000544
22546	74	8240DB000545
22547	74	8240DB000546
22548	74	8240DB000547
22549	74	8240DB000548
22550	74	8240DB000549
22551	74	8240DB000677
22552	74	8240DB000678
22553	74	8240DB000679
22554	74	8240DB000680
22555	74	8240DB000681
22556	74	8240DB000682
22557	74	8240DB000683
22558	74	8240DB000684
22559	74	8240DB000685
22560	74	8240DB000686
22561	74	8240DB000688
22562	74	8240DB000689
22563	74	8240DB000690
22564	74	8240DB000691
22565	74	8240DB000692
22566	74	8240DB000695
22567	74	8240DB000696
22568	74	8240DB000697
22569	74	8240DB000698
22570	74	8240DB000699
22571	74	8240DB000700
22572	74	8240DB000701
22573	74	8240DB000702
22574	74	8240DB000703
22575	74	8240DB000704
22576	74	8240DB000707
22577	74	8240DB000568
22578	74	8240DB000569
22579	74	8240DB000570
22580	74	8240DB000571
22581	74	8240DB000572
22582	74	8240DB000573
22583	74	8240DB000574
22584	74	8240DB000575
22585	74	8240DB000576
22586	74	8240DB000577
22587	75	8240DB000577
22588	75	8240DB000576
22589	75	8240DB000575
22590	75	8240DB000574
22591	75	8240DB000573
22592	75	8240DB000572
22593	75	8240DB000571
22594	75	8240DB000570
22595	75	8240DB000569
22596	75	8240DB000568
22597	75	8240DB000707
22598	75	8240DB000704
22599	75	8240DB000703
22600	75	8240DB000702
22601	75	8240DB000701
22602	75	8240DB000700
22603	75	8240DB000699
22604	75	8240DB000698
22605	75	8240DB000697
22606	75	8240DB000696
22607	75	8240DB000695
22608	75	8240DB000692
22609	75	8240DB000691
22610	75	8240DB000690
22611	75	8240DB000689
22612	75	8240DB000688
22613	75	8240DB000686
22614	75	8240DB000685
22615	75	8240DB000684
22616	75	8240DB000683
22617	75	8240DB000682
22618	75	8240DB000681
22619	75	8240DB000680
22620	75	8240DB000679
22621	75	8240DB000678
22622	75	8240DB000677
22623	75	8240DB000549
22624	75	8240DB000548
22625	75	8240DB000547
22626	75	8240DB000546
22627	75	8240DB000545
22628	75	8240DB000544
22629	75	8240DB000543
22630	75	8220DB000542
22631	75	8220DB007731
22632	75	8220DB007729
22633	75	8220DB007727
22634	75	8220DB000654
22635	75	8220DB000534
22636	75	8220DB000533
22637	75	8220DB000532
22638	75	8220DB000709
22639	75	8220DB000531
22640	75	8220DB000530
22641	75	8220DB000529
22642	75	8220DB000528
22643	75	8220DB000527
22644	75	8220DB000526
22645	75	8220DB000525
22646	75	8220DB000523
22647	75	8220DB000522
22648	75	8220DB000521
22649	75	8220DB000519
22650	75	8220DB000518
22651	75	8220DB004384
22652	75	8220DB000516
22653	75	8220DB000515
22654	75	8220DB000496
22655	75	8220DB007591
22656	76	8220DB000297
22657	76	8220DB000496
22658	76	8220DB000497
22659	76	8220DB000515
22660	76	8220DB000516
22661	76	8220DB004384
22662	76	8220DB000519
22663	76	8220DB000521
22664	76	8220DB000522
22665	76	8220DB000523
22666	76	8220DB000669
22667	76	8220DB000670
22668	76	8220DB000671
22669	76	8220DB000672
22670	76	8220DB004382
22671	76	8220DB001185
22672	76	8220DB001186
22673	76	8220DB001187
22674	76	8220DB001188
22675	76	8220DB000216
22676	76	8220DB000217
22677	76	8220DB000242
22678	76	8220DB000243
22679	76	8220DB000254
22680	76	8220DB000244
22681	76	8220DB000245
22682	76	8220DB000246
22683	77	8220DB000246
22684	77	8220DB000245
22685	77	8220DB000244
22686	77	8220DB000254
22687	77	8220DB000243
22688	77	8220DB000242
22689	77	8220DB000217
22690	77	8220DB000216
22691	77	8220DB001188
22692	77	8220DB001187
22693	77	8220DB001186
22694	77	8220DB001185
22695	77	8220DB004382
22696	77	8220DB000672
22697	77	8220DB000671
22698	77	8220DB000670
22699	77	8220DB000669
22700	77	8220DB000523
22701	77	8220DB000522
22702	77	8220DB000521
22703	77	8220DB000519
22704	77	8220DB004384
22705	77	8220DB000516
22706	77	8220DB000515
22707	77	8220DB000497
22708	77	8220DB000496
22709	77	8220DB000297
22710	78	8250DB003283
22711	78	8250DB003284
22712	78	8250DB003285
22713	78	8250DB007324
22714	78	8250DB005106
22715	78	8250DB004396
22716	78	8250DB004773
22717	78	8250DB004393
22718	78	8250DB004395
22719	78	8250DB004313
22720	78	8250DB007373
22721	78	8250DB003289
22722	78	8250DB003312
22723	78	8250DB004771
22724	78	8250DB003307
22725	78	8250DB003262
22726	78	8250DB003153
22727	78	8250DB007362
22728	78	8250DB003129
22729	78	8250DB007634
22730	78	8250DB003249
22731	78	8250DB007637
22732	78	8250DB002023
22733	78	8250DB002024
22734	78	8250DB002025
22735	78	8250DB002026
22736	78	8250DB002027
22737	78	8250DB002028
22738	78	8250DB002029
22739	78	8250DB002030
22740	78	8250DB002031
22741	78	8250DB002032
22742	78	8250DB002033
22743	78	8250DB002034
22744	78	8250DB002035
22745	78	8250DB002036
22746	79	8250DB002036
22747	79	8250DB002035
22748	79	8250DB002034
22749	79	8250DB002033
22750	79	8250DB002032
22751	79	8250DB002031
22752	79	8250DB002030
22753	79	8250DB002029
22754	79	8250DB002028
22755	79	8250DB002027
22756	79	8250DB002026
22757	79	8250DB002025
22758	79	8250DB002024
22759	79	8250DB002023
22760	79	8250DB007637
22761	79	8250DB003249
22762	79	8250DB007634
22763	79	8250DB003129
22764	79	8250DB007362
22765	79	8250DB003153
22766	79	8250DB003262
22767	79	8250DB003307
22768	79	8250DB004771
22769	79	8250DB003312
22770	79	8250DB003289
22771	79	8250DB007373
22772	79	8250DB004313
22773	79	8250DB004395
22774	79	8250DB004393
22775	79	8250DB004773
22776	79	8250DB004396
22777	79	8250DB005106
22778	79	8250DB007324
22779	79	8250DB003285
22780	79	8250DB003284
22781	79	8250DB003283
22782	80	8230DB006290
22783	80	8230DB007120
22784	80	8230DB007119
22785	80	8230DB007127
22786	80	8230DB007143
22787	80	8230DB007796
22788	80	8230DB003368
22789	80	8230DB007762
22790	80	8230DB007137
22791	80	8230DB007139
22792	80	8230DB004623
22793	80	8230DB004619
22794	80	8230DB007776
22795	80	8230DB007748
22796	80	8230DB007783
22797	80	8230DB002681
22798	80	8230DB004691
22799	80	8230DB002682
22800	80	8230DB004796
22801	80	8230DB004690
22802	80	8230DB004411
22803	80	8230DB007754
22804	81	8230DB007754
22805	81	8230DB004411
22806	81	8230DB004690
22807	81	8230DB004796
22808	81	8230DB002682
22809	81	8230DB004691
22810	81	8230DB002681
22811	81	8230DB007783
22812	81	8230DB007748
22813	81	8230DB007776
22814	81	8230DB004619
22815	81	8230DB004623
22816	81	8230DB007139
22817	81	8230DB007137
22818	81	8230DB007762
22819	81	8230DB003368
22820	81	8230DB007796
22821	81	8230DB007143
22822	81	8230DB007127
22823	81	8230DB007119
22824	81	8230DB007120
22825	81	8230DB006290
22826	82	8230DB004795
22827	82	8230DB002686
22828	82	8230DB007510
22829	82	8230DB002207
22830	82	8230DB002208
22831	82	8230DB002210
22832	82	8230DB002211
22833	82	8230DB002241
22834	82	8230DB002242
22835	82	8220DB002243
22836	82	8220DB002244
22837	82	8220DB002245
22838	82	8220DB002246
22839	82	8220DB002247
22840	82	8220DB002248
22841	82	8220DB002249
22842	82	8220DB002250
22843	82	8220DB002251
22844	82	8220DB001472
22845	82	8220DB004408
22846	82	8220DB001473
22847	82	8220DB001474
22848	82	8220DB001476
22849	82	8220DB007453
22850	82	8220DB001478
22851	82	8220DB001479
22852	82	8220DB000315
22853	82	8220DB000406
22854	82	8220DB002810
22855	83	8220DB002810
22856	83	8220DB000406
22857	83	8220DB000315
22858	83	8220DB001479
22859	83	8220DB001478
22860	83	8220DB007453
22861	83	8220DB001476
22862	83	8220DB001474
22863	83	8220DB001473
22864	83	8220DB004408
22865	83	8220DB001472
22866	83	8220DB002251
22867	83	8220DB002250
22868	83	8220DB002249
22869	83	8220DB002248
22870	83	8220DB002247
22871	83	8220DB002246
22872	83	8220DB002245
22873	83	8220DB002244
22874	83	8220DB002243
22875	83	8230DB002242
22876	83	8230DB002241
22877	83	8230DB002211
22878	83	8230DB002210
22879	83	8230DB002208
22880	83	8230DB002207
22881	83	8230DB007510
22882	83	8230DB002686
22883	83	8230DB004795
22884	84	8260DB007820
22885	84	8260DB003995
22886	84	8260DB003996
22887	84	8260DB003997
22888	84	8260DB003998
22889	84	8260DB003999
22890	84	8260DB004000
22891	84	8230DB004001
22892	84	8230DB003949
22893	84	8230DB003950
22894	84	8230DB003372
22895	84	8230DB003373
22896	84	8230DB003374
22897	84	8230DB002233
22898	84	8230DB002232
22899	84	8230DB004601
22900	84	8230DB005058
22901	84	8230DB004602
22902	84	8230DB007760
22903	84	8230DB004619
22904	84	8230DB007776
22905	84	8230DB007748
22906	84	8230DB007783
22907	84	8230DB002680
22908	84	8230DB007756
22909	84	8230DB007750
22910	84	8230DB002156
22911	84	8230DB006014
22912	84	8230DB002158
22913	84	8230DB002159
22914	84	8230DB004409
22915	84	8230DB004550
22916	84	8230DB004551
22917	84	8230DB001965
22918	84	8230DB001966
22919	84	8230DB007781
22920	85	8230DB007781
22921	85	8230DB001966
22922	85	8230DB001965
22923	85	8230DB004551
22924	85	8230DB004550
22925	85	8230DB004409
22926	85	8230DB002159
22927	85	8230DB002158
22928	85	8230DB006014
22929	85	8230DB002156
22930	85	8230DB007750
22931	85	8230DB007756
22932	85	8230DB002680
22933	85	8230DB007783
22934	85	8230DB007748
22935	85	8230DB007776
22936	85	8230DB004619
22937	85	8230DB007760
22938	85	8230DB004602
22939	85	8230DB005058
22940	85	8230DB004601
22941	85	8230DB002232
22942	85	8230DB002233
22943	85	8230DB003374
22944	85	8230DB003373
22945	85	8230DB003372
22946	85	8230DB003950
22947	85	8230DB003949
22948	85	8230DB004001
22949	85	8260DB004000
22950	85	8260DB003999
22951	85	8260DB003998
22952	85	8260DB003997
22953	85	8260DB003996
22954	85	8260DB003995
22955	85	8260DB007820
22956	86	8240DB000950
22957	86	8240DB000915
22958	86	8240DB000916
22959	86	8240DB000917
22960	86	8240DB000918
22961	86	8240DB000919
22962	86	8240DB007551
22963	86	8240DB004800
22964	86	8220DB005157
22965	86	8220DB005154
22966	86	8220DB004804
22967	86	8220DB000738
22968	86	8220DB000739
22969	86	8220DB000740
22970	86	8220DB000741
22971	86	8220DB000742
22972	86	8220DB000743
22973	86	8220DB000744
22974	86	8220DB000745
22975	86	8220DB000600
22976	86	8220DB000654
22977	86	8220DB000655
22978	86	8220DB000656
22979	86	8220DB000657
22980	86	8220DB000658
22981	86	8220DB000659
22982	86	8220DB000604
22983	86	8220DB000605
22984	86	8220DB000606
22985	86	8220DB000607
22986	86	8220DB000608
22987	86	8220DB000609
22988	86	8220DB000610
22989	86	8220DB000611
22990	86	8220DB000612
22991	86	8220DB000613
22992	86	8220DB000614
22993	86	8220DB000615
22994	86	8220DB000616
22995	86	8220DB000617
22996	86	8220DB000618
22997	86	8220DB000619
22998	86	8220DB000675
22999	86	8220DB000620
23000	86	8220DB007569
23001	87	8220DB007569
23002	87	8220DB000620
23003	87	8220DB000675
23004	87	8220DB000619
23005	87	8220DB000618
23006	87	8220DB000617
23007	87	8220DB000616
23008	87	8220DB000615
23009	87	8220DB000614
23010	87	8220DB000613
23011	87	8220DB000612
23012	87	8220DB000611
23013	87	8220DB000610
23014	87	8220DB000609
23015	87	8220DB000608
23016	87	8220DB000607
23017	87	8220DB000606
23018	87	8220DB000605
23019	87	8220DB000604
23020	87	8220DB000659
23021	87	8220DB000658
23022	87	8220DB000657
23023	87	8220DB000656
23024	87	8220DB000655
23025	87	8220DB000654
23026	87	8220DB000600
23027	87	8220DB000745
23028	87	8220DB000744
23029	87	8220DB000743
23030	87	8220DB000742
23031	87	8220DB000741
23032	87	8220DB000740
23033	87	8220DB000739
23034	87	8220DB000738
23035	87	8220DB004804
23036	87	8220DB005154
23037	87	8220DB005157
23038	87	8240DB004800
23039	87	8240DB007551
23040	87	8240DB000919
23041	87	8240DB000918
23042	87	8240DB000917
23043	87	8240DB000916
23044	87	8240DB000915
23045	87	8240DB000950
23046	88	8260DB007812
23047	88	8260DB007764
23048	88	8260DB007804
23049	88	8260DB007814
23050	88	8260DB007816
23051	88	8260DB003935
23052	88	8260DB003936
23053	88	8260DB007110
23054	88	8260DB003938
23055	88	8260DB007747
23056	88	8260DB004003
23057	88	8260DB007770
23058	88	8260DB004404
23059	88	8260DB004405
23060	88	8260DB007785
23061	88	8260DB003991
23062	88	8260DB07758
23063	88	8260DB007798
23064	88	8260DB003993
23065	89	8260DB003993
23066	89	8260DB007798
23067	89	8260DB07758
23068	89	8260DB003991
23069	89	8260DB007785
23070	89	8260DB004405
23071	89	8260DB004404
23072	89	8260DB007770
23073	89	8260DB004003
23074	89	8260DB007747
23075	89	8260DB003938
23076	89	8260DB007110
23077	89	8260DB003936
23078	89	8260DB003935
23079	89	8260DB007816
23080	89	8260DB007814
23081	89	8260DB007804
23082	89	8260DB007764
23083	89	8260DB007812
23084	90	8260DB007820
23085	90	8260DB003995
23086	90	8260DB003996
23087	90	8260DB003997
23088	90	8260DB003958
23089	90	8260DB003959
23090	90	8260DB003960
23091	90	8260DB006156
23092	90	8260DB006165
23093	90	8260DB006157
23094	90	8260DB006158
23095	90	8260DB007314
23096	90	8260DB007778
23097	90	8260DB003922
23098	90	8260DB003923
23099	90	8260DB007079
23100	90	8260DB007080
23101	90	8260DB007081
23102	90	8260DB007565
23103	90	8260DB007746
23104	90	8260DB007082
23105	90	8260DB007083
23106	90	8260DB007789
23107	90	8260DB007084
23108	90	8260DB007811
23109	90	8260DB007794
23110	90	8260DB007805
23111	90	8260DB007765
23112	91	8260DB007765
23113	91	8260DB007805
23114	91	8260DB007794
23115	91	8260DB007811
23116	91	8260DB007084
23117	91	8260DB007789
23118	91	8260DB007083
23119	91	8260DB007082
23120	91	8260DB007746
23121	91	8260DB007565
23122	91	8260DB007081
23123	91	8260DB007080
23124	91	8260DB007079
23125	91	8260DB003923
23126	91	8260DB003922
23127	91	8260DB007778
23128	91	8260DB007314
23129	91	8260DB006158
23130	91	8260DB006157
23131	91	8260DB006165
23132	91	8260DB006156
23133	91	8260DB003960
23134	91	8260DB003959
23135	91	8260DB003958
23136	91	8260DB003997
23137	91	8260DB003996
23138	91	8260DB003995
23139	91	8260DB007820
23140	92	8240DB000707
23141	92	8240DB000568
23142	92	8240DB000569
23143	92	8240DB000570
23144	92	8240DB000571
23145	92	8240DB000572
23146	92	8240DB000573
23147	92	8240DB000574
23148	92	8240DB000575
23149	92	8240DB000576
23150	92	8240DB000577
23151	92	8240DB000579
23152	92	8240DB000580
23153	92	8240DB000581
23154	92	8240DB000582
23155	92	8240DB000583
23156	92	8240DB000584
23157	92	8240DB000585
23158	92	8240DB000586
23159	92	8240DB000587
23160	92	8240DB000588
23161	92	8240DB000589
23162	92	8240DB000590
23163	92	8220DB000591
23164	92	8220DB000592
23165	92	8220DB000593
23166	92	8220DB000594
23167	92	8220DB000595
23168	92	8220DB000596
23169	92	8220DB000597
23170	92	8220DB000598
23171	92	8220DB000599
23172	92	8220DB000600
23173	92	8220DB000601
23174	92	8220DB000602
23175	92	8220DB000603
23176	92	8220DB000604
23177	92	8220DB000605
23178	92	8220DB000606
23179	92	8220DB000607
23180	92	8220DB000608
23181	92	8220DB000609
23182	92	8220DB000610
23183	92	8220DB000611
23184	92	8220DB000612
23185	92	8220DB000613
23186	92	8220DB000614
23187	92	8220DB000615
23188	92	8220DB000616
23189	92	8220DB000617
23190	92	8220DB000618
23191	92	8220DB000619
23192	92	8220DB000675
23193	92	8220DB000620
23194	92	8220DB007569
23195	93	8220DB007569
23196	93	8220DB000620
23197	93	8220DB000675
23198	93	8220DB000619
23199	93	8220DB000618
23200	93	8220DB000617
23201	93	8220DB000616
23202	93	8220DB000615
23203	93	8220DB000614
23204	93	8220DB000613
23205	93	8220DB000612
23206	93	8220DB000611
23207	93	8220DB000610
23208	93	8220DB000609
23209	93	8220DB000608
23210	93	8220DB000607
23211	93	8220DB000606
23212	93	8220DB000605
23213	93	8220DB000604
23214	93	8220DB000603
23215	93	8220DB000602
23216	93	8220DB000601
23217	93	8220DB000600
23218	93	8220DB000599
23219	93	8220DB000598
23220	93	8220DB000597
23221	93	8220DB000596
23222	93	8220DB000595
23223	93	8220DB000594
23224	93	8220DB000593
23225	93	8220DB000592
23226	93	8220DB000591
23227	93	8240DB000590
23228	93	8240DB000589
23229	93	8240DB000588
23230	93	8240DB000587
23231	93	8240DB000586
23232	93	8240DB000585
23233	93	8240DB000584
23234	93	8240DB000583
23235	93	8240DB000582
23236	93	8240DB000581
23237	93	8240DB000580
23238	93	8240DB000579
23239	93	8240DB000577
23240	93	8240DB000576
23241	93	8240DB000575
23242	93	8240DB000574
23243	93	8240DB000573
23244	93	8240DB000572
23245	93	8240DB000571
23246	93	8240DB000570
23247	93	8240DB000569
23248	93	8240DB000568
23249	93	8240DB000707
23250	94	8220DB007591
23251	94	8220DB000496
23252	94	8220DB000515
23253	94	8220DB000516
23254	94	8220DB004384
23255	94	8220DB000518
23256	94	8220DB000519
23257	94	8220DB000521
23258	94	8220DB000522
23259	94	8220DB000523
23260	94	8220DB000525
23261	94	8220DB000526
23262	94	8220DB000527
23263	94	8220DB000528
23264	94	8220DB000529
23265	94	8220DB000530
23266	94	8220DB000531
23267	94	8220DB000709
23268	94	8220DB000532
23269	94	8220DB000533
23270	94	8220DB000534
23271	94	8220DB000535
23272	94	8220DB000536
23273	94	8220DB000537
23274	94	8220DB000538
23275	94	8220DB000539
23276	94	8220DB000540
23277	94	8220DB000541
23278	94	8220DB000542
23279	94	8240DB000543
23280	94	8240DB000544
23281	94	8240DB000545
23282	94	8240DB000546
23283	94	8240DB000910
23284	94	8240DB000911
23285	94	8240DB000912
23286	94	8240DB000913
23287	94	8240DB000914
23288	94	8240DB000938
23289	94	8240DB000940
23290	94	8240DB000941
23291	94	8240DB000942
23292	94	8240DB000943
23293	94	8240DB004503
23294	94	8240DB003599
23295	94	8240DB003610
23296	94	8240DB003611
23297	94	8240DB006135
23298	94	8240DB003612
23299	94	8240DB003613
23300	94	8240DB003615
23301	94	8240DB007982
23302	94	8240DB003616
23303	94	8240DB003618
23304	94	8240DB003619
23305	94	8240DB003620
23306	94	8240DB003621
23307	94	8240DB003622
23308	94	8240DB003623
23309	95	8240DB003623
23310	95	8240DB003622
23311	95	8240DB003621
23312	95	8240DB003620
23313	95	8240DB003619
23314	95	8240DB003618
23315	95	8240DB003616
23316	95	8240DB007982
23317	95	8240DB003615
23318	95	8240DB003613
23319	95	8240DB003612
23320	95	8240DB006135
23321	95	8240DB003611
23322	95	8240DB003610
23323	95	8240DB003599
23324	95	8240DB004503
23325	95	8240DB000943
23326	95	8240DB000942
23327	95	8240DB000941
23328	95	8240DB000940
23329	95	8240DB000938
23330	95	8240DB000914
23331	95	8240DB000913
23332	95	8240DB000912
23333	95	8240DB000911
23334	95	8240DB000910
23335	95	8240DB000546
23336	95	8240DB000545
23337	95	8240DB000544
23338	95	8240DB000543
23339	95	8220DB000542
23340	95	8220DB000541
23341	95	8220DB000540
23342	95	8220DB000539
23343	95	8220DB000538
23344	95	8220DB000537
23345	95	8220DB000536
23346	95	8220DB000535
23347	95	8220DB000534
23348	95	8220DB000533
23349	95	8220DB000532
23350	95	8220DB000709
23351	95	8220DB000531
23352	95	8220DB000530
23353	95	8220DB000529
23354	95	8220DB000528
23355	95	8220DB000527
23356	95	8220DB000526
23357	95	8220DB000525
23358	95	8220DB000523
23359	95	8220DB000522
23360	95	8220DB000521
23361	95	8220DB000519
23362	95	8220DB000518
23363	95	8220DB004384
23364	95	8220DB000516
23365	95	8220DB000515
23366	95	8220DB000496
23367	95	8220DB007591
23368	96	8240DB003815
23369	96	8240DB003816
23370	96	8240DB003566
23371	96	8240DB003567
23372	96	8240DB007292
23373	96	8240DB003818
23374	96	8240DB003819
23375	96	8240DB003820
23376	96	8240DB003822
23377	96	8240DB003823
23378	96	8240DB003824
23379	96	8240DB003565
23380	96	8240DB003825
23381	96	8240DB003826
23382	96	8240DB003827
23383	96	8240DB003828
23384	96	8240DB003829
23385	96	8240DB003831
23386	96	8240DB003832
23387	96	8240DB003833
23388	96	8240DB003834
23389	96	8240DB003835
23390	96	8240DB003836
23391	96	8240DB003837
23392	96	8240DB003838
23393	96	8240DB003840
23394	96	8240DB003842
23395	96	8240DB003843
23396	96	8240DB003844
23397	96	8240DB003845
23398	96	8240DB003846
23399	96	8240DB003848
23400	96	8240DB003849
23401	96	8240DB003850
23402	96	8240DB003851
23403	96	8240DB003852
23404	96	8240DB003853
23405	96	8240DB003854
23406	96	8240DB003855
23407	96	8240DB003856
23408	96	8240DB003857
23409	96	8240DB003858
23410	96	8240DB003859
23411	96	8240DB003860
23412	96	8240DB003861
23413	96	8240DB003862
23414	96	8240DB003863
23415	96	8240DB003748
23416	96	8240DB006050
23417	96	8220DB007398
23418	96	8220DB006252
23419	96	8220DB000302
23420	96	8220DB004495
23421	96	8220DB002809
23422	97	8220DB002809
23423	97	8220DB004495
23424	97	8220DB000302
23425	97	8220DB006252
23426	97	8220DB007398
23427	97	8240DB006050
23428	97	8240DB003748
23429	97	8240DB003863
23430	97	8240DB003862
23431	97	8240DB003861
23432	97	8240DB003860
23433	97	8240DB003859
23434	97	8240DB003858
23435	97	8240DB003857
23436	97	8240DB003856
23437	97	8240DB003855
23438	97	8240DB003854
23439	97	8240DB003853
23440	97	8240DB003852
23441	97	8240DB003851
23442	97	8240DB003850
23443	97	8240DB003849
23444	97	8240DB003848
23445	97	8240DB003846
23446	97	8240DB003845
23447	97	8240DB003844
23448	97	8240DB003843
23449	97	8240DB003842
23450	97	8240DB003840
23451	97	8240DB003838
23452	97	8240DB003837
23453	97	8240DB003836
23454	97	8240DB003835
23455	97	8240DB003834
23456	97	8240DB003833
23457	97	8240DB003832
23458	97	8240DB003831
23459	97	8240DB003829
23460	97	8240DB003828
23461	97	8240DB003827
23462	97	8240DB003826
23463	97	8240DB003825
23464	97	8240DB003565
23465	97	8240DB003824
23466	97	8240DB003823
23467	97	8240DB003822
23468	97	8240DB003820
23469	97	8240DB003819
23470	97	8240DB003818
23471	97	8240DB007292
23472	97	8240DB003567
23473	97	8240DB003566
23474	97	8240DB003816
23475	97	8240DB003815
23476	98	8220DB000292
23477	98	8220DB001171
23478	98	8220DB001172
23479	98	8220DB001173
23480	98	8220DB001174
23481	98	8220DB001175
23482	98	8220DB000015
23483	98	8220DB000017
23484	98	8220DB000018
23485	98	8220DB000019
23486	98	8220DB000021
23487	98	8220DB007602
23488	98	8220DB000085
23489	98	8220DB000203
23490	98	8220DB000204
23491	98	8220DB000205
23492	98	8220DB001620
23493	98	8220DB000220
23494	98	8240DB001622
23495	98	8240DB001623
23496	98	8240DB001624
23497	98	8240DB001625
23498	98	8240DB001626
23499	98	8240DB001627
23500	98	8240DB001628
23501	98	8240DB001629
23502	98	8240DB001630
23503	98	8240DB003670
23504	98	8240DB003671
23505	98	8240DB003672
23506	98	8240DB003674
23507	98	8240DB003675
23508	98	8240DB003676
23509	98	8240DB003677
23510	98	8240DB003678
23511	98	8240DB003679
23512	98	8240DB003711
23513	98	8240DB003712
23514	98	8240DB003713
23515	98	8240DB003714
23516	98	8240DB003719
23517	98	8240DB003718
23518	98	8240DB007724
23519	98	8240DB003720
23520	98	8240DB007691
23521	98	8240DB003721
23522	98	8240DB003722
23523	98	8240DB005069
23524	98	8240DB003723
23525	98	8240DB003724
23526	98	8240DB003725
23527	98	8240DB003738
23528	98	8240DB007170
23529	98	8240DB003740
23530	98	8240DB003741
23531	98	8240DB005165
23532	98	8240DB007169
23533	98	8240DB003743
23534	98	8240DB003780
23535	98	8240DB003744
23536	98	8240DB007721
23537	98	8240DB003755
23538	98	8240DB003756
23539	98	8240DB003757
23540	98	8240DB003758
23541	98	8240DB003759
23542	98	8240DB003760
23543	98	8240DB003761
23544	98	8240DB003762
23545	98	8240DB003763
23546	98	8240DB003764
23547	98	8240DB003765
23548	98	8240DB003766
23549	98	8240DB003767
23550	98	8240DB003768
23551	98	8240DB003769
23552	98	8240DB003771
23553	98	8240DB003772
23554	98	8240DB003773
23555	98	8240DB005176
23556	98	8240DB003774
23557	98	8240DB007172
23558	98	8240DB003775
23559	98	8240DB003777
23560	98	8240DB003778
23561	98	8240DB007690
23562	98	8240DB003781
23563	98	8240DB003782
23564	98	8240DB003783
23565	98	8240DB003784
23566	98	8240DB003785
23567	98	8240DB003786
23568	98	8240DB003787
23569	98	8240DB003788
23570	98	8240DB003789
23571	98	8240DB003790
23572	98	8240DB003791
23573	98	8240DB003792
23574	98	8240DB003793
23575	98	8240DB003794
23576	98	8240DB003795
23577	98	8240DB003797
23578	98	8240DB003798
23579	98	8240DB006076
23580	98	8240DB006077
23581	98	8240DB003569
23582	98	8240DB003571
23583	98	8240DB003801
23584	99	8240DB003801
23585	99	8240DB003571
23586	99	8240DB003569
23587	99	8240DB006077
23588	99	8240DB006076
23589	99	8240DB003798
23590	99	8240DB003797
23591	99	8240DB003795
23592	99	8240DB003794
23593	99	8240DB003793
23594	99	8240DB003792
23595	99	8240DB003791
23596	99	8240DB003790
23597	99	8240DB003789
23598	99	8240DB003788
23599	99	8240DB003787
23600	99	8240DB003786
23601	99	8240DB003785
23602	99	8240DB003784
23603	99	8240DB003783
23604	99	8240DB003782
23605	99	8240DB003781
23606	99	8240DB007690
23607	99	8240DB003778
23608	99	8240DB003777
23609	99	8240DB003775
23610	99	8240DB007172
23611	99	8240DB003774
23612	99	8240DB005176
23613	99	8240DB003773
23614	99	8240DB003772
23615	99	8240DB003771
23616	99	8240DB003769
23617	99	8240DB003768
23618	99	8240DB003767
23619	99	8240DB003766
23620	99	8240DB003765
23621	99	8240DB003764
23622	99	8240DB003763
23623	99	8240DB003762
23624	99	8240DB003761
23625	99	8240DB003760
23626	99	8240DB003759
23627	99	8240DB003758
23628	99	8240DB003757
23629	99	8240DB003756
23630	99	8240DB003755
23631	99	8240DB007721
23632	99	8240DB003744
23633	99	8240DB003780
23634	99	8240DB003743
23635	99	8240DB007169
23636	99	8240DB005165
23637	99	8240DB003741
23638	99	8240DB003740
23639	99	8240DB007170
23640	99	8240DB003738
23641	99	8240DB003725
23642	99	8240DB003724
23643	99	8240DB003723
23644	99	8240DB005069
23645	99	8240DB003722
23646	99	8240DB003721
23647	99	8240DB007691
23648	99	8240DB003720
23649	99	8240DB007724
23650	99	8240DB003718
23651	99	8240DB003719
23652	99	8240DB003714
23653	99	8240DB003713
23654	99	8240DB003712
23655	99	8240DB003711
23656	99	8240DB003679
23657	99	8240DB003678
23658	99	8240DB003677
23659	99	8240DB003676
23660	99	8240DB003675
23661	99	8240DB003674
23662	99	8240DB003672
23663	99	8240DB003671
23664	99	8240DB003670
23665	99	8240DB001630
23666	99	8240DB001629
23667	99	8240DB001628
23668	99	8240DB001627
23669	99	8240DB001626
23670	99	8240DB001625
23671	99	8240DB001624
23672	99	8240DB001623
23673	99	8240DB001622
23674	99	8220DB000220
23675	99	8220DB001620
23676	99	8220DB000205
23677	99	8220DB000204
23678	99	8220DB000203
23679	99	8220DB000085
23680	99	8220DB007602
23681	99	8220DB000021
23682	99	8220DB000019
23683	99	8220DB000018
23684	99	8220DB000017
23685	99	8220DB000015
23686	99	8220DB001175
23687	99	8220DB001174
23688	99	8220DB001173
23689	99	8220DB001172
23690	99	8220DB001171
23691	99	8220DB000292
23692	100	8240DB003815
23693	100	8240DB003816
23694	100	8240DB003566
23695	100	8240DB003567
23696	100	8240DB007292
23697	100	8240DB003818
23698	100	8240DB003819
23699	100	8240DB003820
23700	100	8240DB003822
23701	100	8240DB003823
23702	100	8240DB003824
23703	100	8240DB003565
23704	100	8240DB003825
23705	100	8240DB003826
23706	100	8240DB003827
23707	100	8240DB003828
23708	100	8240DB003829
23709	100	8240DB003831
23710	100	8240DB003832
23711	100	8240DB003833
23712	100	8240DB003834
23713	100	8240DB003835
23714	100	8240DB003836
23715	100	8240DB003837
23716	100	8240DB003838
23717	100	8240DB003840
23718	100	8240DB003842
23719	100	8240DB003843
23720	100	8240DB003844
23721	100	8240DB003845
23722	100	8240DB003846
23723	100	8240DB003848
23724	100	8240DB003849
23725	100	8240DB003850
23726	100	8240DB003851
23727	100	8240DB003852
23728	100	8240DB003853
23729	100	8240DB003854
23730	100	8240DB003855
23731	100	8240DB003856
23732	100	8240DB003857
23733	100	8240DB003858
23734	100	8240DB003859
23735	100	8240DB003860
23736	100	8240DB003861
23737	100	8240DB003862
23738	100	8240DB003863
23739	100	8240DB003748
23740	100	8240DB006050
23741	100	8240DB003749
23742	100	8240DB003750
23743	100	8240DB003752
23744	100	8240DB003751
23745	100	8240DB003689
23746	100	8240DB003691
23747	100	8240DB003692
23748	100	8240DB003694
23749	100	8240DB003695
23750	100	8240DB003696
23751	100	8240DB003697
23752	100	8240DB003698
23753	100	8240DB003699
23754	100	8240DB003885
23755	100	8240DB001631
23756	100	8240DB001632
23757	100	8240DB005053
23758	100	8240DB001633
23759	100	8240DB001634
23760	100	8240DB001635
23761	100	8240DB001636
23762	100	8240DB001637
23763	100	8240DB001638
23764	100	8240DB001639
23765	100	8240DB001640
23766	100	8240DB000231
23767	100	8220DB001641
23768	100	8220DB001642
23769	100	8220DB000213
23770	100	8220DB000214
23771	100	8220DB004432
23772	100	8220DB000119
23773	100	8220DB000044
23774	100	8220DB007603
23775	100	8220DB000045
23776	100	8220DB000046
23777	100	8220DB000047
23778	100	8220DB000048
23779	100	8220DB000049
23780	100	8220DB000051
23781	100	8220DB000052
23782	100	8220DB000277
23783	101	8220DB000277
23784	101	8220DB000052
23785	101	8220DB000051
23786	101	8220DB000049
23787	101	8220DB000048
23788	101	8220DB000047
23789	101	8220DB000046
23790	101	8220DB000045
23791	101	8220DB007603
23792	101	8220DB000044
23793	101	8220DB000119
23794	101	8220DB004432
23795	101	8220DB000214
23796	101	8220DB000213
23797	101	8220DB001642
23798	101	8220DB001641
23799	101	8240DB000231
23800	101	8240DB001640
23801	101	8240DB001639
23802	101	8240DB001638
23803	101	8240DB001637
23804	101	8240DB001636
23805	101	8240DB001635
23806	101	8240DB001634
23807	101	8240DB001633
23808	101	8240DB005053
23809	101	8240DB001632
23810	101	8240DB001631
23811	101	8240DB003885
23812	101	8240DB003699
23813	101	8240DB003698
23814	101	8240DB003697
23815	101	8240DB003696
23816	101	8240DB003695
23817	101	8240DB003694
23818	101	8240DB003692
23819	101	8240DB003691
23820	101	8240DB003689
23821	101	8240DB003751
23822	101	8240DB003752
23823	101	8240DB003750
23824	101	8240DB003749
23825	101	8240DB006050
23826	101	8240DB003748
23827	101	8240DB003863
23828	101	8240DB003862
23829	101	8240DB003861
23830	101	8240DB003860
23831	101	8240DB003859
23832	101	8240DB003858
23833	101	8240DB003857
23834	101	8240DB003856
23835	101	8240DB003855
23836	101	8240DB003854
23837	101	8240DB003853
23838	101	8240DB003852
23839	101	8240DB003851
23840	101	8240DB003850
23841	101	8240DB003849
23842	101	8240DB003848
23843	101	8240DB003846
23844	101	8240DB003845
23845	101	8240DB003844
23846	101	8240DB003843
23847	101	8240DB003842
23848	101	8240DB003840
23849	101	8240DB003838
23850	101	8240DB003837
23851	101	8240DB003836
23852	101	8240DB003835
23853	101	8240DB003834
23854	101	8240DB003833
23855	101	8240DB003832
23856	101	8240DB003831
23857	101	8240DB003829
23858	101	8240DB003828
23859	101	8240DB003827
23860	101	8240DB003826
23861	101	8240DB003825
23862	101	8240DB003565
23863	101	8240DB003824
23864	101	8240DB003823
23865	101	8240DB003822
23866	101	8240DB003820
23867	101	8240DB003819
23868	101	8240DB003818
23869	101	8240DB007292
23870	101	8240DB003567
23871	101	8240DB003566
23872	101	8240DB003816
23873	101	8240DB003815
23874	102	8230DB001105
23875	102	8230DB001107
23876	102	8230DB001108
23877	102	8230DB001109
23878	102	8230DB001110
23879	102	8230DB001111
23880	102	8230DB001112
23881	102	8230DB001113
23882	102	8230DB001114
23883	102	8230DB001115
23884	102	8220DB002437
23885	102	8220DB001117
23886	102	8220DB001118
23887	102	8220DB001119
23888	102	8220DB001120
23889	102	8220DB001164
23890	102	8220DB001165
23891	102	8220DB001166
23892	102	8220DB001167
23893	102	8220DB001168
23894	102	8220DB001169
23895	102	8220DB001170
23896	102	8220DB001069
23897	102	8220DB001070
23898	102	8220DB001071
23899	102	8220DB004528
23900	102	8220DB001072
23901	102	8220DB007577
23902	102	8220DB001353
23903	102	8220DB001354
23904	102	8220DB007578
23905	102	8220DB007582
23906	102	8220DB000340
23907	102	8220DB000350
23908	102	8220DB002809
23909	102	8220DB002810
23910	103	8220DB002810
23911	103	8220DB002809
23912	103	8220DB000350
23913	103	8220DB000340
23914	103	8220DB007582
23915	103	8220DB007578
23916	103	8220DB001354
23917	103	8220DB001353
23918	103	8220DB007577
23919	103	8220DB001072
23920	103	8220DB004528
23921	103	8220DB001071
23922	103	8220DB001070
23923	103	8220DB001069
23924	103	8220DB001170
23925	103	8220DB001169
23926	103	8220DB001168
23927	103	8220DB001167
23928	103	8220DB001166
23929	103	8220DB001165
23930	103	8220DB001164
23931	103	8220DB001120
23932	103	8220DB001119
23933	103	8220DB001118
23934	103	8220DB001117
23935	103	8220DB002437
23936	103	8230DB001115
23937	103	8230DB001114
23938	103	8230DB001113
23939	103	8230DB001112
23940	103	8230DB001111
23941	103	8230DB001110
23942	103	8230DB001109
23943	103	8230DB001108
23944	103	8230DB001107
23945	103	8230DB001105
23946	104	8230DB006285
23947	104	8230DB006286
23948	104	8230DB006287
23949	104	8230DB006288
23950	104	8230DB006342
23951	104	8230DB006298
23952	104	8230DB006336
23953	104	8230DB007069
23954	104	8230DB007443
23955	104	8230DB007444
23956	104	8230DB002941
23957	104	8230DB002942
23958	104	8230DB007065
23959	104	8230DB007063
23960	104	8230DB001137
23961	104	8230DB005131
23962	104	8230DB005132
23963	104	8230DB001331
23964	104	8230DB001332
23965	104	8230DB001333
23966	104	8230DB001334
23967	104	8220DB002985
23968	104	8220DB002986
23969	104	8220DB002988
23970	104	8220DB003001
23971	104	8220DB003002
23972	104	8220DB001166
23973	104	8220DB001167
23974	104	8220DB001168
23975	104	8220DB001169
23976	104	8220DB001170
23977	104	8220DB001069
23978	104	8220DB001070
23979	104	8220DB001071
23980	104	8220DB004528
23981	104	8220DB001072
23982	104	8220DB007577
23983	104	8220DB001353
23984	104	8220DB001354
23985	104	8220DB007578
23986	104	8220DB007582
23987	104	8220DB000340
23988	104	8220DB000350
23989	104	8220DB002809
23990	104	8220DB002810
23991	105	8220DB002810
23992	105	8220DB002809
23993	105	8220DB000350
23994	105	8220DB000340
23995	105	8220DB007582
23996	105	8220DB007578
23997	105	8220DB001354
23998	105	8220DB001353
23999	105	8220DB007577
24000	105	8220DB001072
24001	105	8220DB004528
24002	105	8220DB001071
24003	105	8220DB001070
24004	105	8220DB001069
24005	105	8220DB001170
24006	105	8220DB001169
24007	105	8220DB001168
24008	105	8220DB001167
24009	105	8220DB001166
24010	105	8220DB003002
24011	105	8220DB003001
24012	105	8220DB002988
24013	105	8220DB002986
24014	105	8220DB002985
24015	105	8230DB001334
24016	105	8230DB001333
24017	105	8230DB001332
24018	105	8230DB001331
24019	105	8230DB005132
24020	105	8230DB005131
24021	105	8230DB001137
24022	105	8230DB007063
24023	105	8230DB007065
24024	105	8230DB002942
24025	105	8230DB002941
24026	105	8230DB007444
24027	105	8230DB007443
24028	105	8230DB007069
24029	105	8230DB006336
24030	105	8230DB006298
24031	105	8230DB006342
24032	105	8230DB006288
24033	105	8230DB006287
24034	105	8230DB006286
24035	105	8230DB006285
24036	106	8240DB007347
24037	106	8240DB003669
24038	106	8240DB007349
24039	106	8240DB001631
24040	106	8240DB001632
24041	106	8240DB005053
24042	106	8240DB001633
24043	106	8240DB001634
24044	106	8240DB001635
24045	106	8240DB001636
24046	106	8240DB001637
24047	106	8240DB001638
24048	106	8240DB001639
24049	106	8240DB001640
24050	106	8240DB000231
24051	106	8220DB001641
24052	106	8220DB001642
24053	106	8220DB000213
24054	106	8220DB000214
24055	106	8220DB004432
24056	106	8220DB000119
24057	106	8220DB000044
24058	106	8220DB007603
24059	106	8220DB000045
24060	106	8220DB000046
24061	106	8220DB000047
24062	106	8220DB000048
24063	106	8220DB000049
24064	106	8220DB000051
24065	106	8220DB000052
24066	106	8220DB000262
24067	106	8220DB000270
24068	106	8220DB000336
24069	106	8220DB001279
24070	106	8220DB001282
24071	106	8220DB004456
24072	106	8220DB001284
24073	106	8220DB001285
24074	106	8220DB001287
24075	106	8220DB001288
24076	106	8220DB001289
24077	106	8220DB001290
24078	106	8220DB001291
24079	106	8220DB001292
24080	106	8220DB001293
24081	106	8220DB001294
24082	106	8220DB001295
24083	106	8220DB001296
24084	106	8220DB001297
24085	106	8220DB001298
24086	106	8220DB001299
24087	106	8220DB001300
24088	106	8230DB001301
24089	106	8230DB001302
24090	106	8230DB001303
24091	106	8230DB001304
24092	106	8230DB001305
24093	106	8230DB001320
24094	106	8230DB001321
24095	106	8230DB001322
24096	106	8230DB001323
24097	106	8230DB001324
24098	106	8230DB007068
24099	106	8230DB002966
24100	106	8230DB002967
24101	106	8230DB002968
24102	106	8250DB002969
24103	106	8250DB002970
24104	106	8250DB002971
24105	106	8250DB005051
24106	106	8250DB005052
24107	107	8250DB005052
24108	107	8250DB005051
24109	107	8250DB002971
24110	107	8250DB002970
24111	107	8250DB002969
24112	107	8230DB002968
24113	107	8230DB002967
24114	107	8230DB002966
24115	107	8230DB007068
24116	107	8230DB001324
24117	107	8230DB001323
24118	107	8230DB001322
24119	107	8230DB001321
24120	107	8230DB001320
24121	107	8230DB001305
24122	107	8230DB001304
24123	107	8230DB001303
24124	107	8230DB001302
24125	107	8230DB001301
24126	107	8220DB001300
24127	107	8220DB001299
24128	107	8220DB001298
24129	107	8220DB001297
24130	107	8220DB001296
24131	107	8220DB001295
24132	107	8220DB001294
24133	107	8220DB001293
24134	107	8220DB001292
24135	107	8220DB001291
24136	107	8220DB001290
24137	107	8220DB001289
24138	107	8220DB001288
24139	107	8220DB001287
24140	107	8220DB001285
24141	107	8220DB001284
24142	107	8220DB004456
24143	107	8220DB001282
24144	107	8220DB001279
24145	107	8220DB000336
24146	107	8220DB000270
24147	107	8220DB000262
24148	107	8220DB000052
24149	107	8220DB000051
24150	107	8220DB000049
24151	107	8220DB000048
24152	107	8220DB000047
24153	107	8220DB000046
24154	107	8220DB000045
24155	107	8220DB007603
24156	107	8220DB000044
24157	107	8220DB000119
24158	107	8220DB004432
24159	107	8220DB000214
24160	107	8220DB000213
24161	107	8220DB001642
24162	107	8220DB001641
24163	107	8240DB000231
24164	107	8240DB001640
24165	107	8240DB001639
24166	107	8240DB001638
24167	107	8240DB001637
24168	107	8240DB001636
24169	107	8240DB001635
24170	107	8240DB001634
24171	107	8240DB001633
24172	107	8240DB005053
24173	107	8240DB001632
24174	107	8240DB001631
24175	107	8240DB007349
24176	107	8240DB003669
24177	107	8240DB007347
24178	108	8220DB004794
24179	108	8220DB001741
24180	108	8220DB001742
24181	108	8220DB001743
24182	108	8220DB001650
24183	108	8220DB001652
24184	108	8220DB005141
24185	108	8220DB001773
24186	108	8220DB001774
24187	108	8220DB001651
24188	108	8220DB004784
24189	108	8220DB000608
24190	108	8220DB004791
24191	108	8220DB004792
24192	108	8220DB000662
24193	108	8220DB000663
24194	108	8220DB001196
24195	108	8220DB001197
24196	108	8220DB004473
24197	108	8220DB000250
24198	108	8220DB000251
24199	108	8220DB004597
24200	108	8220DB000255
24201	108	8220DB000218
24202	108	8240DB000219
24203	108	8220DB000220
24204	108	8240DB000221
24205	108	8240DB000222
24206	108	8240DB000223
24207	108	8240DB000224
24208	108	8240DB000225
24209	108	8240DB000226
24210	108	8220DB000114
24211	108	8240DB001645
24212	108	8220DB001646
24213	109	8220DB001646
24214	109	8240DB001645
24215	109	8220DB000114
24216	109	8240DB000226
24217	109	8240DB000225
24218	109	8240DB000224
24219	109	8240DB000223
24220	109	8240DB000222
24221	109	8240DB000221
24222	109	8220DB000220
24223	109	8240DB000219
24224	109	8220DB000218
24225	109	8220DB000255
24226	109	8220DB004597
24227	109	8220DB000251
24228	109	8220DB000250
24229	109	8220DB004473
24230	109	8220DB001197
24231	109	8220DB001196
24232	109	8220DB000663
24233	109	8220DB000662
24234	109	8220DB004792
24235	109	8220DB004791
24236	109	8220DB000608
24237	109	8220DB004784
24238	109	8220DB001651
24239	109	8220DB001774
24240	109	8220DB001773
24241	109	8220DB005141
24242	109	8220DB001652
24243	109	8220DB001650
24244	109	8220DB001743
24245	109	8220DB001742
24246	109	8220DB001741
24247	109	8220DB004794
24248	110	8240DB004747
24249	110	8240DB002960
24250	110	8240DB001545
24251	110	8240DB001840
24252	110	8240DB001841
24253	110	8240DB001842
24254	110	8240DB007298
24255	110	8240DB002294
24256	110	8240DB006039
24257	110	8240DB001816
24258	110	8240DB006171
24259	110	8240DB004974
24260	110	8240DB004976
24261	110	8240DB002510
24262	110	8240DB007242
24263	110	8240DB007238
24264	110	8240DB007224
24265	110	8240DB001581
24266	110	8240DB001582
24267	110	8220DB004793
24268	110	8220DB006068
24269	110	8220DB001584
24270	110	8220DB000983
24271	110	8220DB000984
24272	110	8220DB000985
24273	110	8220DB000987
24274	110	8220DB000988
24275	110	8220DB000138
24276	110	8220DB000139
24277	110	8220DB000140
24278	110	8220DB000141
24279	110	8220DB000142
24280	110	8220DB000143
24281	110	8240DB001645
24282	110	8220DB001646
24283	110	8220DB000211
24284	110	8220DB000212
24285	110	8220DB007851
24286	110	8220DB007830
24287	110	8220DB001190
24288	110	8220DB001191
24289	110	8220DB001192
24290	110	8220DB001193
24291	110	8220DB001194
24292	110	8220DB001195
24293	110	8220DB007839
24294	110	8220DB000674
24295	110	8220DB004389
24296	110	8220DB004390
24297	110	8220DB000609
24298	110	8220DB000610
24299	110	8220DB000611
24300	110	8220DB000612
24301	110	8220DB000613
24302	110	8220DB001740
24303	110	8220DB007852
24304	110	8220DB002278
24305	110	8220DB002279
24306	110	8220DB007842
24307	111	8220DB007842
24308	111	8220DB002279
24309	111	8220DB002278
24310	111	8220DB007852
24311	111	8220DB001740
24312	111	8220DB000613
24313	111	8220DB000612
24314	111	8220DB000611
24315	111	8220DB000610
24316	111	8220DB000609
24317	111	8220DB004390
24318	111	8220DB004389
24319	111	8220DB000674
24320	111	8220DB007839
24321	111	8220DB001195
24322	111	8220DB001194
24323	111	8220DB001193
24324	111	8220DB001192
24325	111	8220DB001191
24326	111	8220DB001190
24327	111	8220DB007830
24328	111	8220DB007851
24329	111	8220DB000212
24330	111	8220DB000211
24331	111	8220DB001646
24332	111	8240DB001645
24333	111	8220DB000143
24334	111	8220DB000142
24335	111	8220DB000141
24336	111	8220DB000140
24337	111	8220DB000139
24338	111	8220DB000138
24339	111	8220DB000988
24340	111	8220DB000987
24341	111	8220DB000985
24342	111	8220DB000984
24343	111	8220DB000983
24344	111	8220DB001584
24345	111	8220DB006068
24346	111	8220DB004793
24347	111	8240DB001582
24348	111	8240DB001581
24349	111	8240DB007224
24350	111	8240DB007238
24351	111	8240DB007242
24352	111	8240DB002510
24353	111	8240DB004976
24354	111	8240DB004974
24355	111	8240DB006171
24356	111	8240DB001816
24357	111	8240DB006039
24358	111	8240DB002294
24359	111	8240DB007298
24360	111	8240DB001842
24361	111	8240DB001841
24362	111	8240DB001840
24363	111	8240DB001545
24364	111	8240DB002960
24365	111	8240DB004747
24366	112	8220DB000284
24367	112	8220DB004504
24368	112	8220DB007028
24369	112	8220DB005147
24370	112	8220DB000068
24371	112	8220DB000030
24372	112	8220DB000069
24373	112	8220DB000828
24374	112	8220DB000829
24375	112	8220DB000830
24376	112	8220DB000831
24377	112	8220DB000075
24378	112	8220DB004501
24379	112	8220DB004935
24380	112	8220DB004502
24381	112	8220DB004936
24382	112	8220DB000079
24383	112	8220DB000080
24384	112	8220DB000082
24385	112	8220DB000817
24386	112	8220DB000818
24387	112	8220DB000819
24388	112	8220DB000263
24389	113	8220DB000263
24390	113	8220DB000819
24391	113	8220DB000818
24392	113	8220DB000817
24393	113	8220DB000082
24394	113	8220DB000080
24395	113	8220DB000079
24396	113	8220DB004936
24397	113	8220DB004502
24398	113	8220DB004935
24399	113	8220DB004501
24400	113	8220DB000075
24401	113	8220DB000831
24402	113	8220DB000830
24403	113	8220DB000829
24404	113	8220DB000828
24405	113	8220DB000069
24406	113	8220DB000030
24407	113	8220DB000068
24408	113	8220DB005147
24409	113	8220DB007028
24410	113	8220DB004504
24411	113	8220DB000284
24412	114	8230DB007229
24413	114	8230DB004617
24414	114	8230DB004555
24415	114	8230DB004576
24416	114	8230DB003418
24417	114	8230DB003419
24418	114	8230DB002374
24419	114	8230DB002146
24420	114	8230DB002147
24421	114	8230DB002148
24422	114	8230DB002149
24423	114	8230DB002150
24424	114	8230DB002151
24425	114	8230DB002152
24426	114	8230DB002153
24427	114	8230DB002154
24428	114	8230DB006245
24429	114	8230DB004671
24430	114	8230DB004672
24431	114	8230DB003465
24432	114	8230DB004673
24433	114	8230DB002172
24434	114	8230DB002159
24435	114	8230DB004409
24436	114	8230DB004550
24437	114	8230DB004551
24438	114	8230DB001965
24439	114	8230DB001966
24440	114	8230DB007781
24441	114	8230DB001975
24442	114	8230DB001977
24443	114	8230DB001978
24444	114	8230DB001980
24445	114	8220DB001981
24446	114	8220DB001982
24447	114	8220DB004406
24448	114	8220DB001984
24449	114	8220DB001985
24450	114	8220DB001986
24451	114	8220DB001987
24452	114	8220DB001988
24453	114	8220DB001989
24454	114	8220DB001990
24455	114	8220DB001992
24456	114	8220DB001993
24457	114	8220DB001994
24458	114	8220DB001995
24459	114	8220DB001996
24460	114	8220DB001997
24461	114	8220DB001998
24462	114	8220DB001999
24463	114	8220DB002001
24464	114	8220DB002002
24465	114	8220DB001359
24466	114	8220DB000319
24467	114	8220DB000281
24468	114	8220DB000007
24469	114	8220DB000011
24470	114	8220DB000014
24471	114	8220DB000015
24472	114	8220DB000017
24473	114	8220DB000018
24474	114	8220DB000019
24475	114	8220DB000021
24476	114	8220DB007602
24477	114	8220DB000085
24478	114	8220DB000086
24479	114	8220DB000087
24480	114	8220DB000088
24481	114	8220DB00089
24482	114	8220DB000027
24483	114	8220DB000028
24484	114	8220DB000029
24485	114	8220DB004680
24486	114	8220DB000090
24487	114	8220DB000091
24488	114	8220DB000092
24489	114	8220DB000093
24490	114	8220DB000094
24491	114	8220DB000102
24492	114	8220DB006239
24493	114	8220DB000104
24494	114	8220DB006241
24495	114	8220DB000105
24496	114	8220DB006253
24497	114	8220DB007191
24498	114	8220DB006238
24499	114	8220DB006182
24500	114	8220DB000322
24501	114	8240DB000323
24502	115	8240DB000323
24503	115	8220DB000322
24504	115	8220DB006182
24505	115	8220DB006238
24506	115	8220DB007191
24507	115	8220DB006253
24508	115	8220DB000105
24509	115	8220DB006241
24510	115	8220DB000104
24511	115	8220DB006239
24512	115	8220DB000102
24513	115	8220DB000094
24514	115	8220DB000093
24515	115	8220DB000092
24516	115	8220DB000091
24517	115	8220DB000090
24518	115	8220DB004680
24519	115	8220DB000029
24520	115	8220DB000028
24521	115	8220DB000027
24522	115	8220DB00089
24523	115	8220DB000088
24524	115	8220DB000087
24525	115	8220DB000086
24526	115	8220DB000085
24527	115	8220DB007602
24528	115	8220DB000021
24529	115	8220DB000019
24530	115	8220DB000018
24531	115	8220DB000017
24532	115	8220DB000015
24533	115	8220DB000014
24534	115	8220DB000011
24535	115	8220DB000007
24536	115	8220DB000281
24537	115	8220DB000319
24538	115	8220DB001359
24539	115	8220DB002002
24540	115	8220DB002001
24541	115	8220DB001999
24542	115	8220DB001998
24543	115	8220DB001997
24544	115	8220DB001996
24545	115	8220DB001995
24546	115	8220DB001994
24547	115	8220DB001993
24548	115	8220DB001992
24549	115	8220DB001990
24550	115	8220DB001989
24551	115	8220DB001988
24552	115	8220DB001987
24553	115	8220DB001986
24554	115	8220DB001985
24555	115	8220DB001984
24556	115	8220DB004406
24557	115	8220DB001982
24558	115	8220DB001981
24559	115	8230DB001980
24560	115	8230DB001978
24561	115	8230DB001977
24562	115	8230DB001975
24563	115	8230DB007781
24564	115	8230DB001966
24565	115	8230DB001965
24566	115	8230DB004551
24567	115	8230DB004550
24568	115	8230DB004409
24569	115	8230DB002159
24570	115	8230DB002172
24571	115	8230DB004673
24572	115	8230DB003465
24573	115	8230DB004672
24574	115	8230DB004671
24575	115	8230DB006245
24576	115	8230DB002154
24577	115	8230DB002153
24578	115	8230DB002152
24579	115	8230DB002151
24580	115	8230DB002150
24581	115	8230DB002149
24582	115	8230DB002148
24583	115	8230DB002147
24584	115	8230DB002146
24585	115	8230DB002374
24586	115	8230DB003419
24587	115	8230DB003418
24588	115	8230DB004576
24589	115	8230DB004555
24590	115	8230DB004617
24591	115	8230DB007229
24592	116	8220DB000400
24593	116	8220DB000319
24594	116	8220DB000278
24595	116	8220DB000010
24596	116	8220DB000012
24597	116	8220DB000014
24598	116	8220DB000015
24599	116	8220DB000017
24600	116	8220DB000018
24601	116	8220DB000019
24602	116	8220DB000021
24603	116	8220DB007602
24604	116	8220DB000085
24605	116	8220DB000203
24606	116	8220DB000204
24607	116	8220DB000205
24608	116	8220DB001620
24609	116	8220DB000220
24610	116	8240DB000221
24611	116	8240DB000222
24612	116	8240DB000223
24613	116	8240DB000224
24614	116	8240DB000225
24615	117	8240DB000225
24616	117	8240DB000224
24617	117	8240DB000223
24618	117	8240DB000222
24619	117	8240DB000221
24620	117	8220DB000220
24621	117	8220DB001620
24622	117	8220DB000205
24623	117	8220DB000204
24624	117	8220DB000203
24625	117	8220DB000085
24626	117	8220DB007602
24627	117	8220DB000021
24628	117	8220DB000019
24629	117	8220DB000018
24630	117	8220DB000017
24631	117	8220DB000015
24632	117	8220DB000014
24633	117	8220DB000012
24634	117	8220DB000010
24635	117	8220DB000278
24636	117	8220DB000319
24637	117	8220DB000400
24638	118	8240DB004747
24639	118	8240DB002960
24640	118	8240DB001545
24641	118	8240DB001816
24642	118	8240DB006171
24643	118	8240DB004974
24644	118	8240DB004976
24645	118	8240DB007126
24646	118	8240DB007124
24647	118	8240DB007343
24648	118	8240DB007575
24649	118	8240DB004978
24650	118	8240DB004979
24651	118	8240DB004986
24652	118	8240DB007107
24653	118	8240DB007102
24654	118	8240DB007103
24655	118	8240DB007104
24656	118	8240DB007105
24657	118	8240DB007106
24658	118	8240DB006005
24659	118	8240DB001546
24660	118	8240DB007381
24661	118	8240DB004742
24662	118	8240DB004743
24663	118	8240DB004744
24664	119	8240DB004744
24665	119	8240DB004743
24666	119	8240DB004742
24667	119	8240DB007381
24668	119	8240DB001546
24669	119	8240DB006005
24670	119	8240DB007106
24671	119	8240DB007105
24672	119	8240DB007104
24673	119	8240DB007103
24674	119	8240DB007102
24675	119	8240DB007107
24676	119	8240DB004986
24677	119	8240DB004979
24678	119	8240DB004978
24679	119	8240DB007575
24680	119	8240DB007343
24681	119	8240DB007124
24682	119	8240DB007126
24683	119	8240DB004976
24684	119	8240DB004974
24685	119	8240DB006171
24686	119	8240DB001816
24687	119	8240DB001545
24688	119	8240DB002960
24689	119	8240DB004747
24690	120	8230DB006290
24691	120	8230DB007120
24692	120	8230DB007119
24693	120	8230DB007127
24694	120	8230DB007143
24695	120	8230DB007796
24696	120	8230DB003368
24697	120	8230DB007762
24698	120	8230DB007137
24699	120	8230DB007139
24700	120	8230DB004623
24701	120	8230DB004619
24702	120	8230DB004561
24703	120	8230DB004629
24704	120	8230DB004630
24705	120	8230DB004631
24706	120	8230DB004632
24707	120	8230DB005164
24708	120	8230DB004633
24709	120	8230DB002234
24710	120	8230DB002236
24711	120	8230DB005056
24712	120	8230DB002239
24713	120	8230DB002241
24714	120	8230DB002242
24715	120	8220DB007435
24716	120	8220DB002722
24717	120	8220DB004413
24718	120	8220DB001476
24719	120	8220DB007854
24720	120	8220DB007856
24721	120	8220DB007883
24722	120	8220DB000315
24723	120	8220DB000340
24724	120	8220DB007861
24725	120	8220DB000351
24726	120	8220DB000352
24727	120	8220DB000353
24728	120	8220DB000354
24729	120	8220DB000355
24730	120	8220DB000356
24731	120	8220DB000357
24732	120	8220DB000390
24733	120	8220DB000372
24734	120	8220DB000373
24735	120	8220DB000374
24736	120	8220DB007738
24737	120	8220DB007739
24738	121	8220DB007739
24739	121	8220DB007738
24740	121	8220DB000374
24741	121	8220DB000373
24742	121	8220DB000372
24743	121	8220DB000390
24744	121	8220DB000357
24745	121	8220DB000356
24746	121	8220DB000355
24747	121	8220DB000354
24748	121	8220DB000353
24749	121	8220DB000352
24750	121	8220DB000351
24751	121	8220DB007861
24752	121	8220DB000340
24753	121	8220DB000315
24754	121	8220DB007883
24755	121	8220DB007856
24756	121	8220DB007854
24757	121	8220DB001476
24758	121	8220DB004413
24759	121	8220DB002722
24760	121	8220DB007435
24761	121	8230DB002242
24762	121	8230DB002241
24763	121	8230DB002239
24764	121	8230DB005056
24765	121	8230DB002236
24766	121	8230DB002234
24767	121	8230DB004633
24768	121	8230DB005164
24769	121	8230DB004632
24770	121	8230DB004631
24771	121	8230DB004630
24772	121	8230DB004629
24773	121	8230DB004561
24774	121	8230DB004619
24775	121	8230DB004623
24776	121	8230DB007139
24777	121	8230DB007137
24778	121	8230DB007762
24779	121	8230DB003368
24780	121	8230DB007796
24781	121	8230DB007143
24782	121	8230DB007127
24783	121	8230DB007119
24784	121	8230DB007120
24785	121	8230DB006290
24786	122	8220DB000381
24787	122	8220DB007740
24788	122	8220DB007741
24789	122	8220DB000387
24790	122	8220DB000388
24791	122	8220DB000389
24792	122	8220DB000393
24793	122	8220DB000371
24794	122	8220DB000391
24795	122	8220DB000392
24796	122	8220DB000395
24797	122	8220DB000396
24798	122	8220DB000397
24799	122	8220DB000398
24800	122	8220DB000399
24801	122	8220DB007859
24802	122	8220DB007732
24803	122	8220DB007392
24804	122	8220DB000312
24805	122	8220DB007857
24806	122	8220DB007855
24807	122	8220DB004407
24808	122	8220DB002637
24809	122	8220DB002721
24810	122	8220DB007012
24811	122	8230DB002201
24812	122	8230DB007239
24813	122	8230DB004401
24814	122	8230DB002213
24815	122	8230DB002214
24816	122	8230DB002215
24817	122	8230DB002216
24818	122	8230DB004599
24819	122	8230DB004601
24820	122	8230DB005058
24821	122	8230DB004602
24822	122	8230DB004603
24823	122	8230DB004604
24824	122	8230DB004605
24825	122	8230DB004562
24826	122	8230DB007386
24827	122	8230DB004607
24828	122	8230DB004608
24829	122	8230DB004609
24830	122	8230DB004610
24831	122	8230DB004611
24832	122	8230DB004612
24833	122	8230DB004613
24834	122	8230DB003370
24835	122	8230DB007797
24836	122	8230DB007231
24837	122	8230DB007128
24838	122	8230DB007117
24839	122	8230DB007118
24840	123	8230DB007118
24841	123	8230DB007117
24842	123	8230DB007128
24843	123	8230DB007231
24844	123	8230DB007797
24845	123	8230DB003370
24846	123	8230DB004613
24847	123	8230DB004612
24848	123	8230DB004611
24849	123	8230DB004610
24850	123	8230DB004609
24851	123	8230DB004608
24852	123	8230DB004607
24853	123	8230DB007386
24854	123	8230DB004562
24855	123	8230DB004605
24856	123	8230DB004604
24857	123	8230DB004603
24858	123	8230DB004602
24859	123	8230DB005058
24860	123	8230DB004601
24861	123	8230DB004599
24862	123	8230DB002216
24863	123	8230DB002215
24864	123	8230DB002214
24865	123	8230DB002213
24866	123	8230DB004401
24867	123	8230DB007239
24868	123	8230DB002201
24869	123	8220DB007012
24870	123	8220DB002721
24871	123	8220DB002637
24872	123	8220DB004407
24873	123	8220DB007855
24874	123	8220DB007857
24875	123	8220DB000312
24876	123	8220DB007392
24877	123	8220DB007732
24878	123	8220DB007859
24879	123	8220DB000399
24880	123	8220DB000398
24881	123	8220DB000397
24882	123	8220DB000396
24883	123	8220DB000395
24884	123	8220DB000392
24885	123	8220DB000391
24886	123	8220DB000371
24887	123	8220DB000393
24888	123	8220DB000389
24889	123	8220DB000388
24890	123	8220DB000387
24891	123	8220DB007741
24892	123	8220DB007740
24893	123	8220DB000381
24894	124	8310DB003333
24895	124	8310DB003334
24896	124	8310DB003352
24897	124	8310DB003335
24898	124	8310DB003336
24899	124	8310DB003337
24900	124	8310DB003338
24901	124	8310DB003339
24902	124	8240DB003340
24903	124	8240DB004324
24904	124	8240DB004769
24905	124	8240DB004770
24906	124	8240DB004765
24907	124	8240DB004766
24908	124	8240DB004767
24909	124	8240DB004768
24910	125	8240DB004768
24911	125	8240DB004767
24912	125	8240DB004766
24913	125	8240DB004765
24914	125	8240DB004770
24915	125	8240DB004769
24916	125	8240DB004324
24917	125	8240DB003340
24918	125	8310DB003339
24919	125	8310DB003338
24920	125	8310DB003337
24921	125	8310DB003336
24922	125	8310DB003335
24923	125	8310DB003352
24924	125	8310DB003334
24925	125	8310DB003333
24926	126	8260DB007799
24927	126	8260DB003980
24928	126	8260DB006089
24929	126	8260DB003981
24930	126	8260DB003982
24931	126	8260DB007704
24932	126	8260DB003983
24933	126	8260DB003985
24934	126	8260DB003986
24935	126	8260DB003987
24936	126	8260DB003989
24937	126	8260DB003990
24938	126	8260DB003991
24939	126	8260DB07758
24940	126	8260DB003998
24941	126	8260DB003999
24942	126	8260DB004000
24943	126	8230DB004001
24944	126	8230DB003949
24945	126	8230DB003950
24946	126	8230DB003372
24947	126	8230DB003373
24948	126	8230DB003374
24949	126	8230DB002233
24950	126	8230DB002232
24951	126	8230DB002234
24952	126	8230DB002236
24953	126	8230DB005056
24954	126	8230DB002239
24955	126	8230DB002241
24956	126	8230DB002242
24957	126	8220DB007435
24958	126	8220DB002722
24959	126	8220DB004413
24960	126	8220DB001476
24961	126	8220DB007854
24962	126	8220DB007856
24963	126	8220DB007883
24964	126	8220DB000315
24965	126	8220DB000340
24966	126	8220DB007861
24967	126	8220DB000351
24968	126	8220DB000352
24969	126	8220DB000353
24970	127	8220DB000353
24971	127	8220DB000352
24972	127	8220DB000351
24973	127	8220DB007861
24974	127	8220DB000340
24975	127	8220DB000315
24976	127	8220DB007883
24977	127	8220DB007856
24978	127	8220DB007854
24979	127	8220DB001476
24980	127	8220DB004413
24981	127	8220DB002722
24982	127	8220DB007435
24983	127	8230DB002242
24984	127	8230DB002241
24985	127	8230DB002239
24986	127	8230DB005056
24987	127	8230DB002236
24988	127	8230DB002234
24989	127	8230DB002232
24990	127	8230DB002233
24991	127	8230DB003374
24992	127	8230DB003373
24993	127	8230DB003372
24994	127	8230DB003950
24995	127	8230DB003949
24996	127	8230DB004001
24997	127	8260DB004000
24998	127	8260DB003999
24999	127	8260DB003998
25000	127	8260DB07758
25001	127	8260DB003991
25002	127	8260DB003990
25003	127	8260DB003989
25004	127	8260DB003987
25005	127	8260DB003986
25006	127	8260DB003985
25007	127	8260DB003983
25008	127	8260DB007704
25009	127	8260DB003982
25010	127	8260DB003981
25011	127	8260DB006089
25012	127	8260DB003980
25013	127	8260DB007799
25014	128	8220DB000395
25015	128	8220DB000396
25016	128	8220DB000397
25017	128	8220DB000398
25018	128	8220DB000399
25019	128	8220DB007859
25020	128	8220DB007732
25021	128	8220DB007392
25022	128	8220DB000312
25023	128	8220DB007857
25024	128	8220DB007855
25025	128	8220DB004407
25026	128	8220DB002637
25027	128	8220DB002721
25028	128	8220DB007012
25029	128	8230DB002201
25030	128	8230DB007239
25031	128	8230DB004401
25032	128	8230DB002213
25033	128	8230DB002214
25034	128	8230DB002215
25035	128	8230DB002216
25036	128	8230DB004599
25037	128	8230DB002217
25038	128	8230DB002218
25039	128	8230DB002219
25040	128	8230DB003365
25041	128	8230DB003366
25042	128	8230DB003367
25043	128	8230DB003886
25044	128	8230DB003887
25045	128	8230DB003888
25046	128	8230DB007186
25047	128	8230DB007187
25048	128	8230DB003947
25049	128	8230DB003892
25050	128	8230DB003893
25051	128	8230DB003896
25052	128	8260DB003897
25053	128	8260DB003898
25054	128	8260DB003899
25055	128	8260DB003900
25056	128	8260DB003901
25057	128	8260DB003902
25058	128	8260DB003904
25059	128	8260DB003905
25060	128	8260DB003906
25061	128	8260DB003907
25062	128	8260DB003908
25063	128	8260DB003909
25064	128	8260DB005118
25065	128	8260DB003910
25066	128	8260DB003911
25067	128	8260DB003912
25068	128	8260DB003913
25069	128	8260DB003914
25070	128	8260DB007075
25071	128	8260DB003925
25072	128	8260DB003008
25073	128	8260DB006089
25074	129	8260DB006089
25075	129	8260DB003008
25076	129	8260DB003925
25077	129	8260DB007075
25078	129	8260DB003914
25079	129	8260DB003913
25080	129	8260DB003912
25081	129	8260DB003911
25082	129	8260DB003910
25083	129	8260DB005118
25084	129	8260DB003909
25085	129	8260DB003908
25086	129	8260DB003907
25087	129	8260DB003906
25088	129	8260DB003905
25089	129	8260DB003904
25090	129	8260DB003902
25091	129	8260DB003901
25092	129	8260DB003900
25093	129	8260DB003899
25094	129	8260DB003898
25095	129	8260DB003897
25096	129	8230DB003896
25097	129	8230DB003893
25098	129	8230DB003892
25099	129	8230DB003947
25100	129	8230DB007187
25101	129	8230DB007186
25102	129	8230DB003888
25103	129	8230DB003887
25104	129	8230DB003886
25105	129	8230DB003367
25106	129	8230DB003366
25107	129	8230DB003365
25108	129	8230DB002219
25109	129	8230DB002218
25110	129	8230DB002217
25111	129	8230DB004599
25112	129	8230DB002216
25113	129	8230DB002215
25114	129	8230DB002214
25115	129	8230DB002213
25116	129	8230DB004401
25117	129	8230DB007239
25118	129	8230DB002201
25119	129	8220DB007012
25120	129	8220DB002721
25121	129	8220DB002637
25122	129	8220DB004407
25123	129	8220DB007855
25124	129	8220DB007857
25125	129	8220DB000312
25126	129	8220DB007392
25127	129	8220DB007732
25128	129	8220DB007859
25129	129	8220DB000399
25130	129	8220DB000398
25131	129	8220DB000397
25132	129	8220DB000396
25133	129	8220DB000395
25134	130	8220DB000395
25135	130	8220DB000396
25136	130	8220DB000397
25137	130	8220DB000398
25138	130	8220DB000399
25139	130	8220DB007859
25140	130	8220DB007732
25141	130	8220DB007392
25142	130	8220DB000312
25143	130	8220DB007857
25144	130	8220DB007855
25145	130	8220DB007078
25146	130	8220DB001449
25147	130	8220DB001450
25148	130	8220DB001451
25149	130	8220DB002191
25150	130	8220DB002192
25151	130	8220DB002193
25152	130	8220DB002194
25153	130	8220DB002195
25154	130	8220DB002196
25155	130	8220DB002197
25156	130	8220DB002198
25157	130	8220DB002200
25158	130	8230DB002201
25159	130	8230DB007239
25160	130	8230DB004401
25161	130	8230DB002213
25162	130	8230DB002214
25163	130	8230DB002215
25164	130	8230DB002216
25165	130	8230DB004599
25166	130	8230DB002217
25167	130	8230DB002218
25168	130	8230DB002219
25169	130	8230DB003365
25170	130	8230DB003366
25171	130	8230DB003367
25172	130	8230DB003886
25173	130	8230DB003887
25174	130	8230DB003888
25175	130	8230DB007186
25176	130	8230DB007187
25177	130	8230DB003947
25178	130	8230DB003892
25179	130	8230DB003893
25180	130	8230DB003896
25181	130	8260DB003897
25182	130	8260DB003898
25183	130	8260DB003899
25184	130	8260DB003900
25185	130	8260DB003901
25186	130	8260DB003902
25187	130	8260DB003904
25188	130	8260DB003905
25189	130	8260DB003906
25190	130	8260DB003907
25191	130	8260DB003908
25192	130	8260DB003909
25193	130	8260DB005118
25194	130	8260DB003910
25195	130	8260DB003911
25196	130	8260DB003912
25197	130	8260DB003913
25198	130	8260DB003914
25199	130	8260DB007075
25200	130	8260DB003925
25201	130	8260DB003008
25202	130	8260DB006089
25203	131	8260DB006089
25204	131	8260DB003008
25205	131	8260DB003925
25206	131	8260DB007075
25207	131	8260DB003914
25208	131	8260DB003913
25209	131	8260DB003912
25210	131	8260DB003911
25211	131	8260DB003910
25212	131	8260DB005118
25213	131	8260DB003909
25214	131	8260DB003908
25215	131	8260DB003907
25216	131	8260DB003906
25217	131	8260DB003905
25218	131	8260DB003904
25219	131	8260DB003902
25220	131	8260DB003901
25221	131	8260DB003900
25222	131	8260DB003899
25223	131	8260DB003898
25224	131	8260DB003897
25225	131	8230DB003896
25226	131	8230DB003893
25227	131	8230DB003892
25228	131	8230DB003947
25229	131	8230DB007187
25230	131	8230DB007186
25231	131	8230DB003888
25232	131	8230DB003887
25233	131	8230DB003886
25234	131	8230DB003367
25235	131	8230DB003366
25236	131	8230DB003365
25237	131	8230DB002219
25238	131	8230DB002218
25239	131	8230DB002217
25240	131	8230DB004599
25241	131	8230DB002216
25242	131	8230DB002215
25243	131	8230DB002214
25244	131	8230DB002213
25245	131	8230DB004401
25246	131	8230DB007239
25247	131	8230DB002201
25248	131	8220DB002200
25249	131	8220DB002198
25250	131	8220DB002197
25251	131	8220DB002196
25252	131	8220DB002195
25253	131	8220DB002194
25254	131	8220DB002193
25255	131	8220DB002192
25256	131	8220DB002191
25257	131	8220DB001451
25258	131	8220DB001450
25259	131	8220DB001449
25260	131	8220DB007078
25261	131	8220DB007855
25262	131	8220DB007857
25263	131	8220DB000312
25264	131	8220DB007392
25265	131	8220DB007732
25266	131	8220DB007859
25267	131	8220DB000399
25268	131	8220DB000398
25269	131	8220DB000397
25270	131	8220DB000396
25271	131	8220DB000395
25272	132	8260DB007799
25273	132	8260DB003980
25274	132	8260DB006089
25275	132	8260DB003981
25276	132	8260DB003982
25277	132	8260DB007704
25278	132	8260DB003983
25279	132	8260DB003985
25280	132	8260DB003986
25281	132	8260DB007313
25282	132	8260DB006164
25283	132	8260DB007712
25284	132	8260DB006159
25285	132	8260DB006160
25286	132	8260DB006161
25287	132	8260DB003991
25288	132	8260DB07758
25289	132	8260DB007798
25290	132	8260DB003993
25291	132	8260DB007821
25292	132	8260DB007820
25293	132	8260DB003995
25294	132	8260DB003996
25295	132	8260DB003997
25296	132	8260DB003998
25297	132	8260DB003999
25298	132	8260DB004000
25299	132	8230DB004001
25300	132	8230DB003949
25301	132	8230DB003950
25302	132	8230DB003372
25303	132	8230DB003373
25304	132	8230DB003374
25305	132	8230DB002233
25306	132	8230DB002232
25307	132	8230DB002234
25308	132	8230DB002236
25309	132	8230DB005056
25310	132	8230DB002239
25311	132	8230DB002241
25312	132	8230DB002242
25313	132	8220DB002243
25314	132	8220DB002244
25315	132	8220DB002245
25316	132	8220DB002246
25317	132	8220DB002247
25318	132	8220DB002248
25319	132	8220DB002249
25320	132	8220DB002250
25321	132	8220DB002251
25322	132	8220DB001472
25323	132	8220DB004408
25324	132	8220DB001473
25325	132	8220DB001474
25326	132	8220DB001476
25327	132	8220DB007854
25328	132	8220DB007856
25329	132	8220DB007883
25330	132	8220DB000315
25331	132	8220DB000340
25332	132	8220DB007861
25333	132	8220DB000351
25334	132	8220DB000352
25335	132	8220DB000353
25336	133	8220DB000353
25337	133	8220DB000352
25338	133	8220DB000351
25339	133	8220DB007861
25340	133	8220DB000340
25341	133	8220DB000315
25342	133	8220DB007883
25343	133	8220DB007856
25344	133	8220DB007854
25345	133	8220DB001476
25346	133	8220DB001474
25347	133	8220DB001473
25348	133	8220DB004408
25349	133	8220DB001472
25350	133	8220DB002251
25351	133	8220DB002250
25352	133	8220DB002249
25353	133	8220DB002248
25354	133	8220DB002247
25355	133	8220DB002246
25356	133	8220DB002245
25357	133	8220DB002244
25358	133	8220DB002243
25359	133	8230DB002242
25360	133	8230DB002241
25361	133	8230DB002239
25362	133	8230DB005056
25363	133	8230DB002236
25364	133	8230DB002234
25365	133	8230DB002232
25366	133	8230DB002233
25367	133	8230DB003374
25368	133	8230DB003373
25369	133	8230DB003372
25370	133	8230DB003950
25371	133	8230DB003949
25372	133	8230DB004001
25373	133	8260DB004000
25374	133	8260DB003999
25375	133	8260DB003998
25376	133	8260DB003997
25377	133	8260DB003996
25378	133	8260DB003995
25379	133	8260DB007820
25380	133	8260DB007821
25381	133	8260DB003993
25382	133	8260DB007798
25383	133	8260DB07758
25384	133	8260DB003991
25385	133	8260DB006161
25386	133	8260DB006160
25387	133	8260DB006159
25388	133	8260DB007712
25389	133	8260DB006164
25390	133	8260DB007313
25391	133	8260DB003986
25392	133	8260DB003985
25393	133	8260DB003983
25394	133	8260DB007704
25395	133	8260DB003982
25396	133	8260DB003981
25397	133	8260DB006089
25398	133	8260DB003980
25399	133	8260DB007799
25400	134	8220DB000395
25401	134	8220DB000396
25402	134	8220DB000397
25403	134	8220DB000398
25404	134	8220DB000399
25405	134	8220DB007859
25406	134	8220DB007732
25407	134	8220DB007392
25408	134	8220DB000312
25409	134	8220DB007857
25410	134	8220DB007855
25411	134	8220DB004407
25412	134	8220DB002637
25413	134	8220DB002721
25414	134	8220DB007012
25415	134	8230DB002201
25416	134	8230DB007239
25417	134	8230DB004401
25418	134	8230DB002213
25419	134	8230DB002214
25420	134	8230DB002215
25421	134	8230DB002216
25422	134	8230DB004599
25423	134	8230DB007184
25424	134	8230DB007050
25425	134	8230DB007185
25426	134	8230DB007186
25427	134	8230DB007187
25428	134	8260DB003954
25429	134	8260DB003955
25430	134	8260DB003956
25431	134	8260DB003957
25432	134	8260DB003958
25433	134	8260DB003959
25434	134	8260DB003960
25435	134	8260DB006156
25436	134	8260DB006165
25437	134	8260DB006157
25438	134	8260DB006158
25439	134	8260DB007314
25440	134	8260DB007819
25441	135	8260DB007819
25442	135	8260DB007314
25443	135	8260DB006158
25444	135	8260DB006157
25445	135	8260DB006165
25446	135	8260DB006156
25447	135	8260DB003960
25448	135	8260DB003959
25449	135	8260DB003958
25450	135	8260DB003957
25451	135	8260DB003956
25452	135	8260DB003955
25453	135	8260DB003954
25454	135	8230DB007187
25455	135	8230DB007186
25456	135	8230DB007185
25457	135	8230DB007050
25458	135	8230DB007184
25459	135	8230DB004599
25460	135	8230DB002216
25461	135	8230DB002215
25462	135	8230DB002214
25463	135	8230DB002213
25464	135	8230DB004401
25465	135	8230DB007239
25466	135	8230DB002201
25467	135	8220DB007012
25468	135	8220DB002721
25469	135	8220DB002637
25470	135	8220DB004407
25471	135	8220DB007855
25472	135	8220DB007857
25473	135	8220DB000312
25474	135	8220DB007392
25475	135	8220DB007732
25476	135	8220DB007859
25477	135	8220DB000399
25478	135	8220DB000398
25479	135	8220DB000397
25480	135	8220DB000396
25481	135	8220DB000395
25482	136	8220DB001380
25483	136	8220DB001381
25484	136	8220DB001406
25485	136	8220DB001407
25486	136	8220DB001409
25487	136	8220DB003353
25488	136	8220DB003354
25489	136	8220DB003355
25490	136	8220DB003356
25491	136	8220DB001400
25492	136	8220DB001391
25493	136	8220DB003357
25494	136	8220DB003358
25495	136	8220DB002449
25496	136	8220DB002450
25497	136	8220DB002451
25498	136	8220DB002434
25499	136	8220DB002435
25500	136	8220DB002436
25501	136	8220DB002437
25502	136	8220DB001117
25503	136	8220DB001118
25504	136	8220DB001119
25505	136	8220DB001120
25506	136	8220DB001299
25507	136	8220DB001300
25508	136	8230DB001301
25509	136	8230DB001302
25510	136	8230DB001303
25511	136	8230DB001304
25512	136	8230DB001305
25513	136	8250DB001306
25514	136	8250DB001307
25515	136	8250DB001308
25516	136	8250DB001309
25517	136	8250DB001310
25518	136	8250DB001311
25519	136	8250DB001312
25520	136	8250DB001313
25521	136	8250DB001055
25522	136	8250DB002868
25523	136	8250DB002892
25524	136	8250DB002893
25525	136	8250DB002894
25526	136	8250DB002895
25527	136	8250DB003012
25528	136	8250DB000861
25529	136	8250DB000862
25530	136	8250DB000863
25531	136	8250DB000864
25532	136	8250DB000865
25533	136	8250DB000866
25534	136	8250DB002052
25535	136	8250DB002082
25536	136	8250DB002083
25537	136	8250DB002084
25538	136	8250DB000765
25539	136	8250DB002007
25540	136	8250DB002008
25541	136	8250DB002009
25542	136	8250DB002010
25543	136	8250DB000462
25544	136	8250DB000464
25545	136	8250DB000465
25546	136	8250DB000466
25547	136	8250DB000467
25548	136	8250DB000468
25549	136	8250DB003032
25550	136	8250DB003033
25551	137	8250DB003033
25552	137	8250DB003032
25553	137	8250DB000468
25554	137	8250DB000467
25555	137	8250DB000466
25556	137	8250DB000465
25557	137	8250DB000464
25558	137	8250DB000462
25559	137	8250DB002010
25560	137	8250DB002009
25561	137	8250DB002008
25562	137	8250DB002007
25563	137	8250DB000765
25564	137	8250DB002084
25565	137	8250DB002083
25566	137	8250DB002082
25567	137	8250DB002052
25568	137	8250DB000866
25569	137	8250DB000865
25570	137	8250DB000864
25571	137	8250DB000863
25572	137	8250DB000862
25573	137	8250DB000861
25574	137	8250DB003012
25575	137	8250DB002895
25576	137	8250DB002894
25577	137	8250DB002893
25578	137	8250DB002892
25579	137	8250DB002868
25580	137	8250DB001055
25581	137	8250DB001313
25582	137	8250DB001312
25583	137	8250DB001311
25584	137	8250DB001310
25585	137	8250DB001309
25586	137	8250DB001308
25587	137	8250DB001307
25588	137	8250DB001306
25589	137	8230DB001305
25590	137	8230DB001304
25591	137	8230DB001303
25592	137	8230DB001302
25593	137	8230DB001301
25594	137	8220DB001300
25595	137	8220DB001299
25596	137	8220DB001120
25597	137	8220DB001119
25598	137	8220DB001118
25599	137	8220DB001117
25600	137	8220DB002437
25601	137	8220DB002436
25602	137	8220DB002435
25603	137	8220DB002434
25604	137	8220DB002451
25605	137	8220DB002450
25606	137	8220DB002449
25607	137	8220DB003358
25608	137	8220DB003357
25609	137	8220DB001391
25610	137	8220DB001400
25611	137	8220DB003356
25612	137	8220DB003355
25613	137	8220DB003354
25614	137	8220DB003353
25615	137	8220DB001409
25616	137	8220DB001407
25617	137	8220DB001406
25618	137	8220DB001381
25619	137	8220DB001380
25620	138	8350DB004260
25621	138	8350DB004261
25622	138	8350DB007271
25623	138	8350DB005136
25624	138	8350DB004262
25625	138	8350DB004263
25626	138	8350DB004264
25627	138	8350DB007296
25628	138	8350DB004265
25629	138	8350DB004266
25630	138	8350DB004307
25631	138	8350DB004308
25632	138	8350DB004267
25633	138	8350DB004268
25634	138	8350DB004269
25635	138	8350DB004270
25636	138	8350DB004271
25637	138	8350DB004273
25638	138	8350DB004274
25639	138	8350DB004275
25640	138	8350DB004276
25641	138	8350DB004277
25642	138	8350DB004278
25643	138	8350DB004279
25644	138	8350DB004280
25645	138	8350DB004281
25646	138	8350DB004282
25647	138	8350DB004283
25648	138	8350DB004284
25649	138	8350DB004285
25650	138	8350DB004286
25651	138	8350DB004287
25652	138	8350DB004288
25653	138	8350DB004295
25654	138	8350DB004296
25655	138	8350DB004297
25656	138	8350DB004299
25657	138	8350DB004300
25658	138	8350DB004301
25659	138	8350DB004302
25660	138	8350DB005135
25661	138	8350DB004303
25662	138	8350DB004304
25663	138	8350DB004148
25664	138	8350DB004149
25665	138	8350DB003045
25666	138	8350DB004150
25667	138	8350DB004151
25668	138	8350DB004156
25669	138	8350DB004168
25670	138	8350DB004170
25671	138	8350DB004153
25672	138	8350DB004154
25673	138	8350DB004416
25674	138	8350DB004201
25675	138	8250DB004202
25676	138	8250DB004203
25677	138	8250DB004204
25678	138	8250DB004205
25679	138	8250DB004206
25680	138	8250DB003140
25681	138	8250DB003141
25682	138	8250DB003142
25683	138	8250DB003143
25684	138	8250DB003144
25685	138	8250DB007639
25686	138	8250DB007640
25687	138	8250DB005047
25688	138	8250DB003146
25689	138	8250DB003147
25690	138	8250DB003148
25691	138	8250DB003149
25692	138	8250DB003150
25693	138	8250DB003151
25694	138	8250DB003153
25695	138	8250DB003152
25696	138	8250DB002995
25697	138	8250DB003154
25698	138	8250DB003155
25699	138	8250DB003156
25700	138	8250DB003158
25701	138	8250DB003159
25702	138	8250DB003160
25703	138	8250DB003161
25704	138	8250DB003162
25705	138	8250DB003163
25706	138	8250DB003164
25707	138	8250DB003079
25708	138	8250DB003080
25709	138	8250DB003081
25710	139	8250DB003081
25711	139	8250DB003080
25712	139	8250DB003079
25713	139	8250DB003164
25714	139	8250DB003163
25715	139	8250DB003162
25716	139	8250DB003161
25717	139	8250DB003160
25718	139	8250DB003159
25719	139	8250DB003158
25720	139	8250DB003156
25721	139	8250DB003155
25722	139	8250DB003154
25723	139	8250DB002995
25724	139	8250DB003152
25725	139	8250DB003153
25726	139	8250DB003151
25727	139	8250DB003150
25728	139	8250DB003149
25729	139	8250DB003148
25730	139	8250DB003147
25731	139	8250DB003146
25732	139	8250DB005047
25733	139	8250DB007640
25734	139	8250DB007639
25735	139	8250DB003144
25736	139	8250DB003143
25737	139	8250DB003142
25738	139	8250DB003141
25739	139	8250DB003140
25740	139	8250DB004206
25741	139	8250DB004205
25742	139	8250DB004204
25743	139	8250DB004203
25744	139	8250DB004202
25745	139	8350DB004201
25746	139	8350DB004416
25747	139	8350DB004154
25748	139	8350DB004153
25749	139	8350DB004170
25750	139	8350DB004168
25751	139	8350DB004156
25752	139	8350DB004151
25753	139	8350DB004150
25754	139	8350DB003045
25755	139	8350DB004149
25756	139	8350DB004148
25757	139	8350DB004304
25758	139	8350DB004303
25759	139	8350DB005135
25760	139	8350DB004302
25761	139	8350DB004301
25762	139	8350DB004300
25763	139	8350DB004299
25764	139	8350DB004297
25765	139	8350DB004296
25766	139	8350DB004295
25767	139	8350DB004288
25768	139	8350DB004287
25769	139	8350DB004286
25770	139	8350DB004285
25771	139	8350DB004284
25772	139	8350DB004283
25773	139	8350DB004282
25774	139	8350DB004281
25775	139	8350DB004280
25776	139	8350DB004279
25777	139	8350DB004278
25778	139	8350DB004277
25779	139	8350DB004276
25780	139	8350DB004275
25781	139	8350DB004274
25782	139	8350DB004273
25783	139	8350DB004271
25784	139	8350DB004270
25785	139	8350DB004269
25786	139	8350DB004268
25787	139	8350DB004267
25788	139	8350DB004308
25789	139	8350DB004307
25790	139	8350DB004266
25791	139	8350DB004265
25792	139	8350DB007296
25793	139	8350DB004264
25794	139	8350DB004263
25795	139	8350DB004262
25796	139	8350DB005136
25797	139	8350DB007271
25798	139	8350DB004261
25799	139	8350DB004260
25800	140	8220DB007149
25801	140	8220DB007277
25802	140	8220DB006363
25803	140	8220DB006361
25804	140	8220DB006367
25805	140	8220DB004985
25806	140	8240DB006219
25807	140	8240DB006229
25808	140	8240DB006364
25809	140	8220DB001558
25810	140	8220DB004542
25811	140	8220DB001531
25812	140	8220DB001532
25813	140	8220DB001533
25814	140	8220DB001534
25815	140	8220DB001535
25816	140	8220DB001536
25817	140	8220DB001537
25818	140	8220DB000186
25819	140	8220DB000187
25820	140	8220DB000188
25821	140	8220DB000189
25822	140	8220DB000190
25823	140	8220DB000191
25824	140	8220DB000819
25825	140	8220DB000264
25826	140	8220DB006059
25827	140	8220DB000334
25828	140	8220DB007581
25829	140	8220DB001283
25830	140	8220DB007579
25831	140	8220DB001285
25832	140	8220DB001016
25833	140	8220DB001017
25834	140	8220DB001018
25835	140	8220DB001019
25836	140	8220DB001020
25837	140	8220DB001076
25838	140	8220DB001021
25839	140	8220DB006042
25840	140	8220DB001022
25841	140	8220DB001023
25842	140	8220DB001024
25843	141	8220DB001024
25844	141	8220DB001023
25845	141	8220DB001022
25846	141	8220DB006042
25847	141	8220DB001021
25848	141	8220DB001076
25849	141	8220DB001020
25850	141	8220DB001019
25851	141	8220DB001018
25852	141	8220DB001017
25853	141	8220DB001016
25854	141	8220DB001285
25855	141	8220DB007579
25856	141	8220DB001283
25857	141	8220DB007581
25858	141	8220DB000334
25859	141	8220DB006059
25860	141	8220DB000264
25861	141	8220DB000819
25862	141	8220DB000191
25863	141	8220DB000190
25864	141	8220DB000189
25865	141	8220DB000188
25866	141	8220DB000187
25867	141	8220DB000186
25868	141	8220DB001537
25869	141	8220DB001536
25870	141	8220DB001535
25871	141	8220DB001534
25872	141	8220DB001533
25873	141	8220DB001532
25874	141	8220DB001531
25875	141	8220DB004542
25876	141	8220DB001558
25877	141	8240DB006364
25878	141	8240DB006229
25879	141	8240DB006219
25880	141	8220DB004985
25881	141	8220DB006367
25882	141	8220DB006361
25883	141	8220DB006363
25884	141	8220DB007277
25885	141	8220DB007149
25886	142	8220DB000956
25887	142	8240DB000957
25888	142	8220DB000958
25889	142	8220DB000959
25890	142	8220DB000960
25891	142	8220DB000961
25892	142	8220DB000962
25893	142	8220DB000635
25894	142	8220DB000636
25895	142	8220DB000637
25896	142	8220DB000638
25897	142	8220DB000639
25898	142	8220DB000640
25899	142	8220DB000641
25900	142	8220DB000642
25901	142	8220DB000643
25902	142	8220DB000644
25903	142	8220DB000645
25904	142	8220DB001796
25905	142	8220DB001797
25906	142	8220DB001798
25907	142	8220DB001799
25908	142	8220DB001800
25909	142	8220DB001801
25910	142	8220DB001277
25911	142	8220DB001219
25912	142	8220DB001220
25913	142	8220DB001221
25914	142	8220DB000664
25915	142	8220DB000665
25916	142	8220DB000666
25917	142	8220DB000667
25918	142	8220DB000668
25919	142	8220DB000614
25920	142	8220DB000615
25921	142	8220DB000616
25922	142	8220DB000617
25923	142	8220DB000618
25924	142	8220DB000619
25925	142	8220DB000675
25926	143	8220DB000675
25927	143	8220DB000619
25928	143	8220DB000618
25929	143	8220DB000617
25930	143	8220DB000616
25931	143	8220DB000615
25932	143	8220DB000614
25933	143	8220DB000668
25934	143	8220DB000667
25935	143	8220DB000666
25936	143	8220DB000665
25937	143	8220DB000664
25938	143	8220DB001221
25939	143	8220DB001220
25940	143	8220DB001219
25941	143	8220DB001277
25942	143	8220DB001801
25943	143	8220DB001800
25944	143	8220DB001799
25945	143	8220DB001798
25946	143	8220DB001797
25947	143	8220DB001796
25948	143	8220DB000645
25949	143	8220DB000644
25950	143	8220DB000643
25951	143	8220DB000642
25952	143	8220DB000641
25953	143	8220DB000640
25954	143	8220DB000639
25955	143	8220DB000638
25956	143	8220DB000637
25957	143	8220DB000636
25958	143	8220DB000635
25959	143	8220DB000962
25960	143	8220DB000961
25961	143	8220DB000960
25962	143	8220DB000959
25963	143	8220DB000958
25964	143	8240DB000957
25965	143	8220DB000956
25966	144	8220DB002270
25967	144	8220DB002274
25968	144	8220DB007336
25969	144	8220DB002508
25970	144	8220DB002278
25971	144	8220DB002279
25972	144	8220DB002720
25973	144	8220DB002280
25974	144	8220DB002281
25975	144	8220DB002282
25976	144	8220DB004468
25977	144	8220DB002283
25978	144	8220DB000616
25979	144	8220DB000617
25980	144	8220DB000618
25981	144	8220DB000619
25982	144	8220DB000675
25983	145	8220DB000675
25984	145	8220DB000619
25985	145	8220DB000618
25986	145	8220DB000617
25987	145	8220DB000616
25988	145	8220DB002283
25989	145	8220DB004468
25990	145	8220DB002282
25991	145	8220DB002281
25992	145	8220DB002280
25993	145	8220DB002720
25994	145	8220DB002279
25995	145	8220DB002278
25996	145	8220DB002508
25997	145	8220DB007336
25998	145	8220DB002274
25999	145	8220DB002270
26000	146	8220DB001772
26001	146	8220DB001773
26002	146	8220DB001774
26003	146	8220DB001775
26004	146	8220DB001776
26005	146	8220DB001777
26006	146	8220DB001778
26007	146	8220DB001755
26008	146	8220DB001756
26009	146	8220DB001757
26010	146	8220DB001794
26011	146	8220DB007469
26012	146	8220DB001724
26013	146	8220DB001725
26014	146	8220DB001726
26015	146	8220DB001727
26016	146	8220DB001728
26017	146	8220DB001729
26018	146	8220DB001730
26019	146	8220DB001731
26020	146	8220DB001732
26021	146	8220DB001733
26022	146	8220DB001734
26023	146	8220DB001735
26024	146	8220DB001736
26025	146	8220DB001737
26026	146	8220DB001738
26027	146	8220DB001739
26028	146	8220DB000614
26029	146	8220DB000615
26030	146	8220DB000616
26031	146	8220DB000617
26032	146	8220DB000618
26033	146	8220DB000619
26034	146	8220DB000675
26035	146	8220DB000620
26036	147	8220DB000620
26037	147	8220DB000675
26038	147	8220DB000619
26039	147	8220DB000618
26040	147	8220DB000617
26041	147	8220DB000616
26042	147	8220DB000615
26043	147	8220DB000614
26044	147	8220DB001739
26045	147	8220DB001738
26046	147	8220DB001737
26047	147	8220DB001736
26048	147	8220DB001735
26049	147	8220DB001734
26050	147	8220DB001733
26051	147	8220DB001732
26052	147	8220DB001731
26053	147	8220DB001730
26054	147	8220DB001729
26055	147	8220DB001728
26056	147	8220DB001727
26057	147	8220DB001726
26058	147	8220DB001725
26059	147	8220DB001724
26060	147	8220DB007469
26061	147	8220DB001794
26062	147	8220DB001757
26063	147	8220DB001756
26064	147	8220DB001755
26065	147	8220DB001778
26066	147	8220DB001777
26067	147	8220DB001776
26068	147	8220DB001775
26069	147	8220DB001774
26070	147	8220DB001773
26071	147	8220DB001772
26072	148	8350DB004168
26073	148	8350DB004170
26074	148	8350DB004132
26075	148	8350DB004134
26076	148	8350DB004135
26077	148	8350DB004136
26078	148	8350DB004207
26079	148	8350DB004208
26080	148	8350DB004209
26081	148	8350DB004210
26082	148	8350DB004211
26083	148	8350DB004212
26084	148	8350DB004213
26085	148	8350DB005139
26086	148	8350DB004214
26087	148	8350DB004215
26088	148	8350DB004216
26089	148	8350DB004289
26090	148	8350DB004290
26091	148	8350DB004291
26092	148	8350DB004222
26093	148	8350DB004224
26094	148	8350DB004225
26095	148	8350DB004226
26096	148	8350DB007462
26097	148	8350DB007461
26098	148	8350DB004227
26099	148	8350DB004228
26100	148	8350DB004229
26101	148	8350DB004230
26102	148	8350DB004232
26103	148	8350DB007351
26104	148	8350DB004234
26105	148	8350DB004235
26106	148	8350DB006019
26107	148	8350DB004236
26108	148	8350DB004650
26109	148	8350DB004651
26110	148	8350DB004652
26111	148	8350DB004653
26112	148	8350DB004654
26113	148	8350DB004655
26114	148	8350DB006138
26115	149	8350DB006138
26116	149	8350DB004655
26117	149	8350DB004654
26118	149	8350DB004653
26119	149	8350DB004652
26120	149	8350DB004651
26121	149	8350DB004650
26122	149	8350DB004236
26123	149	8350DB006019
26124	149	8350DB004235
26125	149	8350DB004234
26126	149	8350DB007351
26127	149	8350DB004232
26128	149	8350DB004230
26129	149	8350DB004229
26130	149	8350DB004228
26131	149	8350DB004227
26132	149	8350DB007461
26133	149	8350DB007462
26134	149	8350DB004226
26135	149	8350DB004225
26136	149	8350DB004224
26137	149	8350DB004222
26138	149	8350DB004291
26139	149	8350DB004290
26140	149	8350DB004289
26141	149	8350DB004216
26142	149	8350DB004215
26143	149	8350DB004214
26144	149	8350DB005139
26145	149	8350DB004213
26146	149	8350DB004212
26147	149	8350DB004211
26148	149	8350DB004210
26149	149	8350DB004209
26150	149	8350DB004208
26151	149	8350DB004207
26152	149	8350DB004136
26153	149	8350DB004135
26154	149	8350DB004134
26155	149	8350DB004132
26156	149	8350DB004170
26157	149	8350DB004168
26158	150	8310DB003333
26159	150	8310DB003334
26160	150	8310DB003352
26161	150	8310DB003335
26162	150	8310DB003336
26163	150	8310DB003337
26164	150	8310DB003338
26165	150	8310DB003339
26166	150	8240DB003340
26167	150	8240DB004324
26168	150	8240DB004769
26169	150	8240DB004770
26170	150	8240DB004765
26171	150	8240DB004766
26172	150	8240DB004767
26173	150	8240DB004768
26174	150	8240DB001845
26175	150	8240DB007166
26176	150	8220DB001847
26177	150	8220DB001696
26178	150	8220DB001697
26179	150	8220DB001698
26180	150	8220DB001699
26181	150	8220DB001700
26182	150	8220DB001701
26183	150	8220DB001702
26184	150	8220DB001703
26185	150	8220DB001905
26186	150	8220DB001906
26187	150	8220DB001907
26188	150	8220DB001908
26189	150	8220DB001909
26190	150	8220DB001713
26191	150	8220DB001714
26192	150	8220DB001715
26193	150	8220DB007453
26194	150	8220DB001478
26195	150	8220DB001479
26196	150	8220DB000315
26197	150	8220DB000404
26198	150	8220DB000747
26199	150	8220DB000748
26200	150	8220DB000749
26201	150	8220DB000750
26202	150	8220DB000751
26203	150	8220DB000752
26204	150	8220DB000753
26205	150	8220DB007370
26206	151	8220DB007370
26207	151	8220DB000753
26208	151	8220DB000752
26209	151	8220DB000751
26210	151	8220DB000750
26211	151	8220DB000749
26212	151	8220DB000748
26213	151	8220DB000747
26214	151	8220DB000404
26215	151	8220DB000315
26216	151	8220DB001479
26217	151	8220DB001478
26218	151	8220DB007453
26219	151	8220DB001715
26220	151	8220DB001714
26221	151	8220DB001713
26222	151	8220DB001909
26223	151	8220DB001908
26224	151	8220DB001907
26225	151	8220DB001906
26226	151	8220DB001905
26227	151	8220DB001703
26228	151	8220DB001702
26229	151	8220DB001701
26230	151	8220DB001700
26231	151	8220DB001699
26232	151	8220DB001698
26233	151	8220DB001697
26234	151	8220DB001696
26235	151	8220DB001847
26236	151	8240DB007166
26237	151	8240DB001845
26238	151	8240DB004768
26239	151	8240DB004767
26240	151	8240DB004766
26241	151	8240DB004765
26242	151	8240DB004770
26243	151	8240DB004769
26244	151	8240DB004324
26245	151	8240DB003340
26246	151	8310DB003339
26247	151	8310DB003338
26248	151	8310DB003337
26249	151	8310DB003336
26250	151	8310DB003335
26251	151	8310DB003352
26252	151	8310DB003334
26253	151	8310DB003333
26254	152	8240DB004745
26255	152	8240DB004989
26256	152	8240DB004990
26257	152	8240DB004991
26258	152	8240DB004992
26259	152	8240DB001719
26260	152	8240DB001828
26261	152	8240DB001829
26262	152	8240DB004997
26263	152	8240DB004998
26264	152	8240DB004999
26265	152	8240DB001833
26266	152	8240DB001834
26267	152	8240DB001835
26268	152	8240DB001836
26269	152	8240DB001837
26270	152	8240DB002338
26271	152	8240DB001840
26272	152	8240DB001841
26273	152	8240DB001842
26274	152	8240DB007374
26275	152	8240DB001845
26276	152	8240DB007166
26277	152	8220DB001847
26278	152	8220DB001696
26279	152	8220DB001697
26280	152	8220DB001698
26281	152	8220DB001699
26282	152	8220DB001700
26283	152	8220DB001701
26284	152	8220DB001702
26285	152	8220DB001703
26286	152	8220DB001905
26287	152	8220DB001804
26288	152	8220DB001803
26289	152	8220DB000077
26290	152	8220DB000078
26291	152	8220DB000079
26292	152	8220DB000080
26293	152	8220DB000082
26294	152	8220DB000817
26295	152	8220DB000818
26296	152	8220DB000819
26297	152	8220DB000265
26298	152	8220DB006059
26299	152	8220DB000404
26300	152	8220DB000747
26301	152	8220DB000748
26302	152	8220DB000749
26303	152	8220DB000750
26304	152	8220DB000751
26305	152	8220DB000752
26306	152	8220DB000753
26307	152	8220DB007370
26308	153	8220DB007370
26309	153	8220DB000753
26310	153	8220DB000752
26311	153	8220DB000751
26312	153	8220DB000750
26313	153	8220DB000749
26314	153	8220DB000748
26315	153	8220DB000747
26316	153	8220DB000404
26317	153	8220DB006059
26318	153	8220DB000265
26319	153	8220DB000819
26320	153	8220DB000818
26321	153	8220DB000817
26322	153	8220DB000082
26323	153	8220DB000080
26324	153	8220DB000079
26325	153	8220DB000078
26326	153	8220DB000077
26327	153	8220DB001803
26328	153	8220DB001804
26329	153	8220DB001905
26330	153	8220DB001703
26331	153	8220DB001702
26332	153	8220DB001701
26333	153	8220DB001700
26334	153	8220DB001699
26335	153	8220DB001698
26336	153	8220DB001697
26337	153	8220DB001696
26338	153	8220DB001847
26339	153	8240DB007166
26340	153	8240DB001845
26341	153	8240DB007374
26342	153	8240DB001842
26343	153	8240DB001841
26344	153	8240DB001840
26345	153	8240DB002338
26346	153	8240DB001837
26347	153	8240DB001836
26348	153	8240DB001835
26349	153	8240DB001834
26350	153	8240DB001833
26351	153	8240DB004999
26352	153	8240DB004998
26353	153	8240DB004997
26354	153	8240DB001829
26355	153	8240DB001828
26356	153	8240DB001719
26357	153	8240DB004992
26358	153	8240DB004991
26359	153	8240DB004990
26360	153	8240DB004989
26361	153	8240DB004745
26362	154	8220DB007333
26363	154	8220DB000783
26364	154	8220DB000784
26365	154	8220DB000785
26366	154	8220DB000786
26367	154	8220DB000793
26368	154	8220DB000274
26369	154	8220DB000002
26370	154	8220DB000192
26371	154	8220DB000795
26372	154	8220DB000796
26373	154	8220DB000057
26374	154	8220DB000058
26375	154	8220DB000059
26376	154	8220DB000060
26377	154	8220DB001802
26378	154	8220DB001795
26379	154	8220DB001806
26380	154	8220DB001660
26381	154	8220DB001661
26382	154	8220DB001662
26383	154	8220DB001664
26384	154	8220DB001665
26385	154	8220DB001666
26386	154	8220DB001807
26387	154	8240DB007167
26388	154	8240DB001808
26389	154	8240DB002961
26390	154	8240DB004901
26391	154	8240DB004902
26392	154	8240DB001672
26393	154	8240DB001673
26394	154	8240DB001674
26395	154	8240DB001675
26396	154	8240DB001849
26397	154	8240DB001851
26398	154	8240DB001813
26399	154	8240DB001814
26400	154	8240DB001816
26401	154	8240DB001817
26402	154	8240DB001818
26403	154	8240DB001819
26404	154	8240DB001822
26405	154	8240DB004994
26406	154	8240DB004995
26407	154	8240DB004996
26408	154	8240DB001827
26409	154	8240DB007382
26410	154	8240DB007381
26411	154	8240DB004742
26412	154	8240DB004743
26413	154	8240DB004744
26414	155	8240DB004744
26415	155	8240DB004743
26416	155	8240DB004742
26417	155	8240DB007381
26418	155	8240DB007382
26419	155	8240DB001827
26420	155	8240DB004996
26421	155	8240DB004995
26422	155	8240DB004994
26423	155	8240DB001822
26424	155	8240DB001819
26425	155	8240DB001818
26426	155	8240DB001817
26427	155	8240DB001816
26428	155	8240DB001814
26429	155	8240DB001813
26430	155	8240DB001851
26431	155	8240DB001849
26432	155	8240DB001675
26433	155	8240DB001674
26434	155	8240DB001673
26435	155	8240DB001672
26436	155	8240DB004902
26437	155	8240DB004901
26438	155	8240DB002961
26439	155	8240DB001808
26440	155	8240DB007167
26441	155	8220DB001807
26442	155	8220DB001666
26443	155	8220DB001665
26444	155	8220DB001664
26445	155	8220DB001662
26446	155	8220DB001661
26447	155	8220DB001660
26448	155	8220DB001806
26449	155	8220DB001795
26450	155	8220DB001802
26451	155	8220DB000060
26452	155	8220DB000059
26453	155	8220DB000058
26454	155	8220DB000057
26455	155	8220DB000796
26456	155	8220DB000795
26457	155	8220DB000192
26458	155	8220DB000002
26459	155	8220DB000274
26460	155	8220DB000793
26461	155	8220DB000786
26462	155	8220DB000785
26463	155	8220DB000784
26464	155	8220DB000783
26465	155	8220DB007333
26466	156	8250DB007330
26467	156	8250DB002051
26468	156	8250DB006086
26469	156	8250DB003161
26470	156	8250DB003162
26471	156	8250DB003163
26472	156	8250DB003164
26473	156	8250DB003084
26474	156	8250DB000469
26475	156	8250DB000470
26476	156	8250DB000471
26477	156	8250DB000472
26478	156	8250DB000473
26479	156	8250DB004705
26480	156	8250DB000475
26481	156	8220DB000476
26482	156	8220DB000477
26483	156	8220DB000478
26484	156	8220DB000479
26485	156	8220DB000480
26486	156	8220DB000481
26487	156	8220DB000482
26488	156	8220DB000483
26489	156	8220DB000485
26490	156	8220DB000487
26491	156	8220DB000488
26492	156	8220DB000489
26493	156	8220DB000490
26494	156	8220DB000491
26495	156	8220DB000492
26496	156	8220DB000493
26497	156	8220DB000494
26498	156	8220DB000495
26499	156	8220DB000400
26500	156	8220DB000281
26501	156	8220DB000006
26502	156	8220DB000194
26503	156	8220DB000195
26504	156	8220DB000196
26505	156	8220DB000197
26506	156	8220DB000198
26507	156	8220DB000199
26508	156	8220DB000200
26509	156	8220DB000201
26510	156	8220DB000148
26511	156	8220DB000149
26512	156	8220DB000150
26513	156	8220DB000027
26514	156	8220DB000028
26515	156	8220DB000029
26516	156	8220DB004680
26517	156	8220DB000090
26518	156	8220DB000091
26519	156	8220DB000092
26520	156	8220DB000093
26521	156	8220DB000094
26522	156	8220DB000126
26523	156	8220DB006182
26524	156	8220DB000322
26525	156	8240DB000323
26526	157	8240DB000323
26527	157	8220DB000322
26528	157	8220DB006182
26529	157	8220DB000126
26530	157	8220DB000094
26531	157	8220DB000093
26532	157	8220DB000092
26533	157	8220DB000091
26534	157	8220DB000090
26535	157	8220DB004680
26536	157	8220DB000029
26537	157	8220DB000028
26538	157	8220DB000027
26539	157	8220DB000150
26540	157	8220DB000149
26541	157	8220DB000148
26542	157	8220DB000201
26543	157	8220DB000200
26544	157	8220DB000199
26545	157	8220DB000198
26546	157	8220DB000197
26547	157	8220DB000196
26548	157	8220DB000195
26549	157	8220DB000194
26550	157	8220DB000006
26551	157	8220DB000281
26552	157	8220DB000400
26553	157	8220DB000495
26554	157	8220DB000494
26555	157	8220DB000493
26556	157	8220DB000492
26557	157	8220DB000491
26558	157	8220DB000490
26559	157	8220DB000489
26560	157	8220DB000488
26561	157	8220DB000487
26562	157	8220DB000485
26563	157	8220DB000483
26564	157	8220DB000482
26565	157	8220DB000481
26566	157	8220DB000480
26567	157	8220DB000479
26568	157	8220DB000478
26569	157	8220DB000477
26570	157	8220DB000476
26571	157	8250DB000475
26572	157	8250DB004705
26573	157	8250DB000473
26574	157	8250DB000472
26575	157	8250DB000471
26576	157	8250DB000470
26577	157	8250DB000469
26578	157	8250DB003084
26579	157	8250DB003164
26580	157	8250DB003163
26581	157	8250DB003162
26582	157	8250DB003161
26583	157	8250DB006086
26584	157	8250DB002051
26585	157	8250DB007330
26586	158	8220DB000395
26587	158	8220DB000396
26588	158	8220DB000397
26589	158	8220DB000398
26590	158	8220DB000399
26591	158	8220DB000400
26592	158	8220DB004522
26593	158	8220DB001934
26594	158	8220DB002310
26595	158	8220DB002311
26596	158	8220DB002312
26597	158	8220DB002313
26598	158	8220DB002314
26599	158	8220DB002315
26600	158	8220DB002094
26601	158	8220DB001406
26602	158	8220DB001407
26603	158	8220DB001409
26604	158	8220DB002095
26605	158	8220DB002096
26606	158	8220DB002097
26607	158	8220DB002099
26608	158	8220DB002101
26609	158	8220DB002102
26610	158	8220DB002726
26611	158	8220DB002727
26612	158	8220DB002105
26613	158	8220DB002728
26614	158	8220DB002729
26615	158	8220DB002730
26616	158	8230DB006083
26617	158	8230DB002733
26618	158	8230DB002734
26619	158	8230DB005169
26620	158	8230DB002735
26621	158	8230DB002736
26622	158	8230DB002725
26623	158	8230DB002737
26624	158	8230DB002738
26625	158	8230DB002739
26626	158	8230DB007177
26627	158	8230DB002740
26628	158	8230DB002741
26629	158	8230DB002742
26630	158	8230DB002743
26631	158	8230DB002745
26632	158	8230DB002746
26633	158	8230DB002747
26634	158	8230DB002748
26635	158	8230DB007062
26636	158	8230DB006075
26637	158	8230DB002631
26638	158	8230DB002359
26639	158	8230DB002360
26640	159	8230DB002360
26641	159	8230DB002359
26642	159	8230DB002631
26643	159	8230DB006075
26644	159	8230DB007062
26645	159	8230DB002748
26646	159	8230DB002747
26647	159	8230DB002746
26648	159	8230DB002745
26649	159	8230DB002743
26650	159	8230DB002742
26651	159	8230DB002741
26652	159	8230DB002740
26653	159	8230DB007177
26654	159	8230DB002739
26655	159	8230DB002738
26656	159	8230DB002737
26657	159	8230DB002725
26658	159	8230DB002736
26659	159	8230DB002735
26660	159	8230DB005169
26661	159	8230DB002734
26662	159	8230DB002733
26663	159	8230DB006083
26664	159	8220DB002730
26665	159	8220DB002729
26666	159	8220DB002728
26667	159	8220DB002105
26668	159	8220DB002727
26669	159	8220DB002726
26670	159	8220DB002102
26671	159	8220DB002101
26672	159	8220DB002099
26673	159	8220DB002097
26674	159	8220DB002096
26675	159	8220DB002095
26676	159	8220DB001409
26677	159	8220DB001407
26678	159	8220DB001406
26679	159	8220DB002094
26680	159	8220DB002315
26681	159	8220DB002314
26682	159	8220DB002313
26683	159	8220DB002312
26684	159	8220DB002311
26685	159	8220DB002310
26686	159	8220DB001934
26687	159	8220DB004522
26688	159	8220DB000400
26689	159	8220DB000399
26690	159	8220DB000398
26691	159	8220DB000397
26692	159	8220DB000396
26693	159	8220DB000395
26694	160	8220DB004595
26695	160	8220DB004596
26696	160	8220DB004563
26697	160	8220DB001218
26698	160	8220DB001258
26699	160	8220DB001259
26700	160	8220DB001260
26701	160	8220DB006130
26702	160	8220DB001262
26703	160	8220DB004692
26704	160	8220DB001245
26705	160	8220DB004693
26706	160	8220DB001254
26707	160	8220DB001255
26708	160	8220DB001256
26709	160	8220DB004694
26710	160	8220DB001249
26711	160	8220DB001247
26712	160	8220DB001248
26713	160	8220DB001273
26714	160	8220DB001274
26715	160	8220DB001275
26716	160	8220DB001276
26717	160	8220DB001277
26718	160	8220DB001219
26719	160	8220DB001220
26720	160	8220DB001221
26721	160	8220DB000664
26722	160	8220DB000665
26723	160	8220DB000666
26724	160	8220DB000667
26725	160	8220DB000668
26726	160	8220DB000614
26727	160	8220DB000615
26728	160	8220DB000616
26729	160	8220DB000617
26730	160	8220DB000618
26731	160	8220DB000619
26732	160	8220DB000675
26733	160	8220DB001500
26734	160	8220DB000302
26735	160	8220DB004495
26736	160	8220DB004522
26737	160	8220DB001934
26738	160	8220DB002310
26739	160	8220DB002311
26740	160	8220DB002312
26741	160	8220DB002313
26742	160	8220DB002314
26743	160	8220DB002315
26744	160	8220DB002094
26745	160	8220DB001406
26746	160	8220DB001407
26747	160	8220DB001409
26748	160	8220DB002095
26749	160	8220DB002096
26750	160	8220DB002097
26751	160	8220DB002099
26752	160	8220DB002101
26753	160	8220DB002102
26754	160	8220DB002103
26755	160	8220DB002332
26756	160	8220DB002333
26757	160	8230DB002334
26758	160	8230DB004662
26759	160	8230DB002335
26760	160	8230DB002336
26761	160	8230DB002337
26762	160	8230DB002339
26763	160	8230DB002340
26764	160	8230DB002601
26765	160	8230DB004446
26766	160	8230DB002603
26767	160	8230DB002557
26768	160	8230DB004436
26769	160	8230DB005008
26770	160	8230DB004640
26771	160	8230DB004347
26772	160	8230DB002349
26773	160	8230DB002351
26774	160	8230DB002621
26775	160	8230DB002622
26776	160	8230DB002623
26777	160	8230DB002624
26778	160	8230DB004441
26779	160	8230DB002626
26780	160	8230DB002669
26781	160	8230DB004641
26782	160	8230DB004642
26783	161	8230DB004642
26784	161	8230DB004641
26785	161	8230DB002669
26786	161	8230DB002626
26787	161	8230DB004441
26788	161	8230DB002624
26789	161	8230DB002623
26790	161	8230DB002622
26791	161	8230DB002621
26792	161	8230DB002351
26793	161	8230DB002349
26794	161	8230DB004347
26795	161	8230DB004640
26796	161	8230DB005008
26797	161	8230DB004436
26798	161	8230DB002557
26799	161	8230DB002603
26800	161	8230DB004446
26801	161	8230DB002601
26802	161	8230DB002340
26803	161	8230DB002339
26804	161	8230DB002337
26805	161	8230DB002336
26806	161	8230DB002335
26807	161	8230DB004662
26808	161	8230DB002334
26809	161	8220DB002333
26810	161	8220DB002332
26811	161	8220DB002103
26812	161	8220DB002102
26813	161	8220DB002101
26814	161	8220DB002099
26815	161	8220DB002097
26816	161	8220DB002096
26817	161	8220DB002095
26818	161	8220DB001409
26819	161	8220DB001407
26820	161	8220DB001406
26821	161	8220DB002094
26822	161	8220DB002315
26823	161	8220DB002314
26824	161	8220DB002313
26825	161	8220DB002312
26826	161	8220DB002311
26827	161	8220DB002310
26828	161	8220DB001934
26829	161	8220DB004522
26830	161	8220DB004495
26831	161	8220DB000302
26832	161	8220DB001500
26833	161	8220DB000675
26834	161	8220DB000619
26835	161	8220DB000618
26836	161	8220DB000617
26837	161	8220DB000616
26838	161	8220DB000615
26839	161	8220DB000614
26840	161	8220DB000668
26841	161	8220DB000667
26842	161	8220DB000666
26843	161	8220DB000665
26844	161	8220DB000664
26845	161	8220DB001221
26846	161	8220DB001220
26847	161	8220DB001219
26848	161	8220DB001277
26849	161	8220DB001276
26850	161	8220DB001275
26851	161	8220DB001274
26852	161	8220DB001273
26853	161	8220DB001248
26854	161	8220DB001247
26855	161	8220DB001249
26856	161	8220DB004694
26857	161	8220DB001256
26858	161	8220DB001255
26859	161	8220DB001254
26860	161	8220DB004693
26861	161	8220DB001245
26862	161	8220DB004692
26863	161	8220DB001262
26864	161	8220DB006130
26865	161	8220DB001260
26866	161	8220DB001259
26867	161	8220DB001258
26868	161	8220DB001218
26869	161	8220DB004563
26870	161	8220DB004596
26871	161	8220DB004595
26872	162	8250DB005013
26873	162	8250DB005014
26874	162	8250DB007291
26875	162	8250DB003485
26876	162	8250DB003486
26877	162	8250DB003487
26878	162	8250DB007415
26879	162	8250DB007416
26880	162	8250DB007325
26881	162	8250DB004984
26882	162	8250DB000448
26883	162	8250DB003181
26884	162	8250DB000451
26885	162	8250DB000447
26886	162	8250DB005045
26887	162	8250DB004460
26888	162	8250DB000453
26889	162	8250DB004477
26890	162	8250DB003321
26891	162	8250DB002066
26892	162	8250DB002067
26893	162	8250DB004728
26894	162	8250DB000461
26895	162	8250DB002068
26896	162	8250DB002069
26897	162	8250DB002070
26898	162	8250DB002084
26899	162	8250DB000768
26900	162	8220DB002085
26901	162	8220DB002086
26902	162	8220DB004455
26903	162	8220DB000381
26904	162	8220DB007740
26905	162	8220DB007741
26906	162	8220DB000387
26907	162	8220DB000388
26908	162	8220DB000389
26909	162	8220DB000393
26910	162	8220DB000371
26911	162	8220DB000391
26912	162	8220DB000392
26913	162	8220DB000395
26914	162	8220DB000396
26915	162	8220DB000397
26916	162	8220DB000398
26917	162	8220DB000399
26918	162	8220DB000400
26919	163	8220DB000400
26920	163	8220DB000399
26921	163	8220DB000398
26922	163	8220DB000397
26923	163	8220DB000396
26924	163	8220DB000395
26925	163	8220DB000392
26926	163	8220DB000391
26927	163	8220DB000371
26928	163	8220DB000393
26929	163	8220DB000389
26930	163	8220DB000388
26931	163	8220DB000387
26932	163	8220DB007741
26933	163	8220DB007740
26934	163	8220DB000381
26935	163	8220DB004455
26936	163	8220DB002086
26937	163	8220DB002085
26938	163	8250DB000768
26939	163	8250DB002084
26940	163	8250DB002070
26941	163	8250DB002069
26942	163	8250DB002068
26943	163	8250DB000461
26944	163	8250DB004728
26945	163	8250DB002067
26946	163	8250DB002066
26947	163	8250DB003321
26948	163	8250DB004477
26949	163	8250DB000453
26950	163	8250DB004460
26951	163	8250DB005045
26952	163	8250DB000447
26953	163	8250DB000451
26954	163	8250DB003181
26955	163	8250DB000448
26956	163	8250DB004984
26957	163	8250DB007325
26958	163	8250DB007416
26959	163	8250DB007415
26960	163	8250DB003487
26961	163	8250DB003486
26962	163	8250DB003485
26963	163	8250DB007291
26964	163	8250DB005014
26965	163	8250DB005013
26966	164	8220DB004495
26967	164	8220DB004720
26968	164	8220DB001443
26969	164	8220DB001444
26970	164	8220DB001445
26971	164	8220DB007078
26972	164	8220DB001449
26973	164	8220DB001450
26974	164	8220DB001451
26975	164	8220DB001452
26976	164	8220DB002640
26977	164	8220DB002641
26978	164	8220DB001948
26979	164	8220DB001949
26980	164	8220DB001950
26981	164	8220DB001951
26982	164	8220DB001952
26983	164	8220DB001953
26984	164	8220DB001954
26985	164	8220DB001955
26986	164	8220DB001956
26987	164	8230DB001957
26988	164	8230DB001958
26989	164	8230DB001959
26990	164	8230DB001960
26991	164	8230DB004379
26992	164	8230DB007782
26993	164	8230DB001968
26994	164	8230DB001969
26995	164	8230DB001970
26996	164	8230DB001971
26997	164	8230DB002160
26998	164	8230DB002161
26999	164	8230DB004665
27000	164	8230DB004666
27001	164	8230DB004667
27002	164	8230DB002162
27003	164	8230DB002163
27004	164	8230DB002168
27005	164	8230DB004536
27006	164	8230DB006003
27007	164	8230DB005123
27008	164	8230DB005124
27009	164	8230DB005125
27010	164	8230DB006001
27011	164	8230DB004438
27012	164	8230DB003432
27013	164	8230DB003426
27014	164	8230DB003434
27015	164	8230DB003435
27016	164	8230DB003453
27017	164	8230DB003437
27018	164	8230DB003439
27019	164	8230DB003440
27020	164	8230DB004557
27021	164	8230DB003441
27022	164	8230DB004560
27023	165	8230DB004560
27024	165	8230DB003441
27025	165	8230DB004557
27026	165	8230DB003440
27027	165	8230DB003439
27028	165	8230DB003437
27029	165	8230DB003453
27030	165	8230DB003435
27031	165	8230DB003434
27032	165	8230DB003426
27033	165	8230DB003432
27034	165	8230DB004438
27035	165	8230DB006001
27036	165	8230DB005125
27037	165	8230DB005124
27038	165	8230DB005123
27039	165	8230DB006003
27040	165	8230DB004536
27041	165	8230DB002168
27042	165	8230DB002163
27043	165	8230DB002162
27044	165	8230DB004667
27045	165	8230DB004666
27046	165	8230DB004665
27047	165	8230DB002161
27048	165	8230DB002160
27049	165	8230DB001971
27050	165	8230DB001970
27051	165	8230DB001969
27052	165	8230DB001968
27053	165	8230DB007782
27054	165	8230DB004379
27055	165	8230DB001960
27056	165	8230DB001959
27057	165	8230DB001958
27058	165	8230DB001957
27059	165	8220DB001956
27060	165	8220DB001955
27061	165	8220DB001954
27062	165	8220DB001953
27063	165	8220DB001952
27064	165	8220DB001951
27065	165	8220DB001950
27066	165	8220DB001949
27067	165	8220DB001948
27068	165	8220DB002641
27069	165	8220DB002640
27070	165	8220DB001452
27071	165	8220DB001451
27072	165	8220DB001450
27073	165	8220DB001449
27074	165	8220DB007078
27075	165	8220DB001445
27076	165	8220DB001444
27077	165	8220DB001443
27078	165	8220DB004720
27079	165	8220DB004495
27080	166	8220DB004320
27081	166	8220DB001476
27082	166	8220DB007453
27083	166	8220DB001478
27084	166	8220DB001479
27085	166	8220DB007622
27086	166	8220DB000334
27087	166	8220DB000406
27088	166	8220DB000747
27089	166	8220DB000842
27090	166	8220DB000845
27091	166	8220DB000846
27092	166	8220DB000847
27093	166	8220DB000848
27094	166	8220DB002795
27095	166	8220DB000756
27096	166	8220DB000757
27097	166	8220DB000758
27098	166	8220DB000759
27099	166	8220DB000760
27100	166	8220DB000761
27101	166	8220DB000762
27102	166	8220DB000763
27103	166	8250DB002007
27104	166	8250DB002008
27105	166	8250DB002009
27106	166	8250DB002010
27107	166	8250DB000435
27108	166	8250DB007353
27109	166	8250DB004571
27110	166	8250DB002013
27111	166	8250DB002014
27112	166	8250DB004636
27113	166	8250DB002016
27114	166	8250DB002015
27115	166	8250DB002017
27116	166	8250DB003259
27117	166	8250DB007361
27118	166	8250DB007362
27119	166	8250DB003129
27120	166	8250DB003130
27121	166	8250DB003131
27122	166	8250DB003132
27123	166	8250DB003133
27124	166	8250DB003134
27125	166	8250DB003135
27126	166	8250DB003136
27127	166	8250DB003138
27128	166	8250DB003139
27129	166	8250DB004124
27130	166	8250DB004125
27131	166	8250DB004126
27132	166	8250DB004127
27133	166	8250DB004128
27134	166	8350DB004129
27135	166	8350DB004130
27136	166	8350DB004131
27137	166	8350DB007294
27138	166	8350DB004132
27139	166	8350DB004171
27140	166	8350DB004172
27141	166	8350DB004173
27142	166	8350DB002962
27143	166	8350DB002963
27144	166	8350DB002964
27145	166	8350DB004175
27146	166	8350DB005091
27147	166	8350DB005092
27148	167	8350DB005092
27149	167	8350DB005091
27150	167	8350DB004175
27151	167	8350DB002964
27152	167	8350DB002963
27153	167	8350DB002962
27154	167	8350DB004173
27155	167	8350DB004172
27156	167	8350DB004171
27157	167	8350DB004132
27158	167	8350DB007294
27159	167	8350DB004131
27160	167	8350DB004130
27161	167	8350DB004129
27162	167	8250DB004128
27163	167	8250DB004127
27164	167	8250DB004126
27165	167	8250DB004125
27166	167	8250DB004124
27167	167	8250DB003139
27168	167	8250DB003138
27169	167	8250DB003136
27170	167	8250DB003135
27171	167	8250DB003134
27172	167	8250DB003133
27173	167	8250DB003132
27174	167	8250DB003131
27175	167	8250DB003130
27176	167	8250DB003129
27177	167	8250DB007362
27178	167	8250DB007361
27179	167	8250DB003259
27180	167	8250DB002017
27181	167	8250DB002015
27182	167	8250DB002016
27183	167	8250DB004636
27184	167	8250DB002014
27185	167	8250DB002013
27186	167	8250DB004571
27187	167	8250DB007353
27188	167	8250DB000435
27189	167	8250DB002010
27190	167	8250DB002009
27191	167	8250DB002008
27192	167	8250DB002007
27193	167	8220DB000763
27194	167	8220DB000762
27195	167	8220DB000761
27196	167	8220DB000760
27197	167	8220DB000759
27198	167	8220DB000758
27199	167	8220DB000757
27200	167	8220DB000756
27201	167	8220DB002795
27202	167	8220DB000848
27203	167	8220DB000847
27204	167	8220DB000846
27205	167	8220DB000845
27206	167	8220DB000842
27207	167	8220DB000747
27208	167	8220DB000406
27209	167	8220DB000334
27210	167	8220DB007622
27211	167	8220DB001479
27212	167	8220DB001478
27213	167	8220DB007453
27214	167	8220DB001476
27215	167	8220DB004320
27216	168	8220DB007698
27217	168	8220DB007113
27218	168	8220DB000127
27219	168	8220DB000112
27220	168	8220DB000113
27221	168	8220DB000114
27222	168	8220DB000115
27223	168	8220DB000037
27224	168	8220DB000038
27225	168	8220DB000039
27226	168	8220DB000040
27227	168	8220DB000146
27228	168	8220DB000147
27229	168	8220DB000184
27230	168	8220DB000185
27231	168	8220DB000186
27232	168	8220DB000187
27233	168	8220DB000188
27234	168	8220DB000189
27235	168	8220DB000190
27236	168	8220DB000191
27237	168	8220DB000819
27238	168	8220DB000264
27239	168	8220DB006059
27240	168	8220DB000334
27241	168	8220DB000406
27242	168	8220DB000747
27243	168	8220DB000842
27244	168	8220DB000845
27245	168	8220DB000846
27246	168	8220DB000847
27247	168	8220DB000848
27248	168	8220DB002795
27249	168	8220DB000756
27250	168	8220DB000757
27251	168	8220DB000758
27252	168	8220DB000759
27253	168	8220DB000760
27254	168	8220DB000761
27255	168	8220DB000762
27256	168	8220DB000763
27257	168	8250DB002007
27258	168	8250DB002008
27259	168	8250DB002009
27260	168	8250DB002010
27261	168	8250DB000435
27262	168	8250DB007353
27263	168	8250DB004571
27264	168	8250DB002013
27265	168	8250DB002014
27266	168	8250DB004636
27267	168	8250DB002016
27268	168	8250DB002015
27269	168	8250DB002017
27270	168	8250DB003259
27271	168	8250DB007361
27272	168	8250DB007362
27273	168	8250DB003129
27274	168	8250DB003130
27275	168	8250DB003131
27276	168	8250DB003132
27277	168	8250DB003133
27278	168	8250DB003134
27279	168	8250DB003135
27280	168	8250DB003136
27281	168	8250DB003138
27282	168	8250DB003139
27283	168	8250DB004124
27284	168	8250DB004125
27285	168	8250DB004126
27286	168	8250DB004127
27287	168	8250DB004128
27288	168	8350DB004129
27289	168	8350DB004130
27290	168	8350DB004131
27291	168	8350DB007294
27292	168	8350DB004156
27293	169	8350DB004156
27294	169	8350DB007294
27295	169	8350DB004131
27296	169	8350DB004130
27297	169	8350DB004129
27298	169	8250DB004128
27299	169	8250DB004127
27300	169	8250DB004126
27301	169	8250DB004125
27302	169	8250DB004124
27303	169	8250DB003139
27304	169	8250DB003138
27305	169	8250DB003136
27306	169	8250DB003135
27307	169	8250DB003134
27308	169	8250DB003133
27309	169	8250DB003132
27310	169	8250DB003131
27311	169	8250DB003130
27312	169	8250DB003129
27313	169	8250DB007362
27314	169	8250DB007361
27315	169	8250DB003259
27316	169	8250DB002017
27317	169	8250DB002015
27318	169	8250DB002016
27319	169	8250DB004636
27320	169	8250DB002014
27321	169	8250DB002013
27322	169	8250DB004571
27323	169	8250DB007353
27324	169	8250DB000435
27325	169	8250DB002010
27326	169	8250DB002009
27327	169	8250DB002008
27328	169	8250DB002007
27329	169	8220DB000763
27330	169	8220DB000762
27331	169	8220DB000761
27332	169	8220DB000760
27333	169	8220DB000759
27334	169	8220DB000758
27335	169	8220DB000757
27336	169	8220DB000756
27337	169	8220DB002795
27338	169	8220DB000848
27339	169	8220DB000847
27340	169	8220DB000846
27341	169	8220DB000845
27342	169	8220DB000842
27343	169	8220DB000747
27344	169	8220DB000406
27345	169	8220DB000334
27346	169	8220DB006059
27347	169	8220DB000264
27348	169	8220DB000819
27349	169	8220DB000191
27350	169	8220DB000190
27351	169	8220DB000189
27352	169	8220DB000188
27353	169	8220DB000187
27354	169	8220DB000186
27355	169	8220DB000185
27356	169	8220DB000184
27357	169	8220DB000147
27358	169	8220DB000146
27359	169	8220DB000040
27360	169	8220DB000039
27361	169	8220DB000038
27362	169	8220DB000037
27363	169	8220DB000115
27364	169	8220DB000114
27365	169	8220DB000113
27366	169	8220DB000112
27367	169	8220DB000127
27368	169	8220DB007113
27369	169	8220DB007698
27370	170	8240DB007073
27371	170	8240DB007097
27372	170	8240DB007098
27373	170	8240DB007099
27374	170	8240DB007100
27375	170	8240DB007101
27376	170	8240DB007505
27377	170	8240DB007678
27378	170	8240DB007560
27379	170	8240DB007679
27380	170	8240DB007680
27381	170	8240DB007681
27382	170	8240DB007683
27383	170	8240DB001582
27384	170	8220DB004793
27385	170	8220DB006068
27386	170	8220DB001584
27387	170	8220DB001585
27388	170	8220DB001586
27389	170	8220DB001600
27390	170	8220DB007701
27391	170	8220DB007010
27392	170	8220DB007703
27393	170	8220DB005147
27394	170	8220DB000068
27395	170	8220DB000030
27396	170	8220DB000069
27397	171	8220DB000069
27398	171	8220DB000030
27399	171	8220DB000068
27400	171	8220DB005147
27401	171	8220DB007703
27402	171	8220DB007010
27403	171	8220DB007701
27404	171	8220DB001600
27405	171	8220DB001586
27406	171	8220DB001585
27407	171	8220DB001584
27408	171	8220DB006068
27409	171	8220DB004793
27410	171	8240DB001582
27411	171	8240DB007683
27412	171	8240DB007681
27413	171	8240DB007680
27414	171	8240DB007679
27415	171	8240DB007560
27416	171	8240DB007678
27417	171	8240DB007505
27418	171	8240DB007101
27419	171	8240DB007100
27420	171	8240DB007099
27421	171	8240DB007098
27422	171	8240DB007097
27423	171	8240DB007073
27424	172	8250DB000449
27425	172	8250DB000450
27426	172	8250DB003181
27427	172	8250DB000451
27428	172	8250DB000447
27429	172	8250DB005045
27430	172	8250DB004460
27431	172	8250DB000453
27432	172	8250DB000454
27433	172	8250DB004475
27434	172	8250DB003023
27435	172	8250DB003024
27436	172	8250DB003025
27437	172	8250DB003026
27438	172	8250DB003027
27439	172	8250DB003028
27440	172	8250DB003029
27441	172	8250DB003030
27442	172	8250DB003031
27443	172	8250DB000875
27444	172	8250DB000876
27445	172	8250DB000878
27446	172	8250DB000879
27447	172	8250DB000880
27448	172	8220DB000881
27449	172	8220DB000882
27450	172	8220DB000883
27451	172	8220DB000884
27452	172	8220DB000885
27453	172	8220DB000886
27454	172	8220DB000887
27455	172	8220DB000903
27456	172	8220DB000904
27457	172	8220DB000906
27458	172	8220DB000907
27459	172	8220DB000908
27460	172	8220DB000909
27461	172	8220DB000786
27462	172	8220DB000793
27463	172	8220DB000320
27464	172	8220DB000278
27465	172	8220DB000010
27466	172	8220DB000012
27467	172	8220DB000014
27468	172	8220DB000015
27469	172	8220DB000017
27470	172	8220DB000018
27471	172	8220DB000019
27472	172	8220DB000021
27473	172	8220DB007602
27474	172	8220DB000022
27475	172	8220DB000023
27476	172	8220DB000024
27477	172	8220DB000025
27478	172	8220DB000027
27479	172	8220DB000028
27480	172	8220DB000029
27481	172	8220DB004680
27482	172	8220DB000031
27483	172	8220DB000032
27484	172	8220DB000033
27485	172	8220DB007220
27486	173	8220DB007220
27487	173	8220DB000033
27488	173	8220DB000032
27489	173	8220DB000031
27490	173	8220DB004680
27491	173	8220DB000029
27492	173	8220DB000028
27493	173	8220DB000027
27494	173	8220DB000025
27495	173	8220DB000024
27496	173	8220DB000023
27497	173	8220DB000022
27498	173	8220DB007602
27499	173	8220DB000021
27500	173	8220DB000019
27501	173	8220DB000018
27502	173	8220DB000017
27503	173	8220DB000015
27504	173	8220DB000014
27505	173	8220DB000012
27506	173	8220DB000010
27507	173	8220DB000278
27508	173	8220DB000320
27509	173	8220DB000793
27510	173	8220DB000786
27511	173	8220DB000909
27512	173	8220DB000908
27513	173	8220DB000907
27514	173	8220DB000906
27515	173	8220DB000904
27516	173	8220DB000903
27517	173	8220DB000887
27518	173	8220DB000886
27519	173	8220DB000885
27520	173	8220DB000884
27521	173	8220DB000883
27522	173	8220DB000882
27523	173	8220DB000881
27524	173	8250DB000880
27525	173	8250DB000879
27526	173	8250DB000878
27527	173	8250DB000876
27528	173	8250DB000875
27529	173	8250DB003031
27530	173	8250DB003030
27531	173	8250DB003029
27532	173	8250DB003028
27533	173	8250DB003027
27534	173	8250DB003026
27535	173	8250DB003025
27536	173	8250DB003024
27537	173	8250DB003023
27538	173	8250DB004475
27539	173	8250DB000454
27540	173	8250DB000453
27541	173	8250DB004460
27542	173	8250DB005045
27543	173	8250DB000447
27544	173	8250DB000451
27545	173	8250DB003181
27546	173	8250DB000450
27547	173	8250DB000449
27548	174	8240DB004686
27549	174	8240DB004687
27550	174	8220DB000102
27551	174	8220DB006239
27552	174	8220DB000104
27553	174	8220DB006241
27554	174	8220DB000105
27555	174	8220DB004365
27556	174	8220DB004367
27557	174	8220DB004788
27558	174	8220DB006273
27559	174	8220DB000136
27560	174	8220DB000137
27561	174	8220DB000193
27562	174	8220DB000979
27563	174	8220DB001529
27564	174	8220DB001530
27565	174	8220DB001531
27566	174	8220DB001532
27567	174	8220DB001592
27568	174	8220DB001593
27569	174	8220DB001594
27570	174	8220DB001596
27571	174	8220DB004363
27572	174	8220DB001598
27573	174	8220DB001597
27574	174	8220DB001599
27575	174	8220DB001600
27576	174	8220DB001601
27577	174	8220DB001602
27578	174	8220DB001603
27579	174	8220DB001604
27580	174	8220DB001573
27581	174	8220DB001574
27582	174	8220DB001575
27583	174	8220DB004583
27584	174	8220DB001576
27585	174	8220DB001577
27586	174	8220DB001578
27587	174	8220DB004364
27588	174	8240DB001580
27589	174	8240DB007237
27590	174	8240DB007241
27591	174	8240DB007247
27592	174	8240DB007243
27593	174	8240DB007126
27594	174	8240DB007124
27595	174	8240DB007343
27596	174	8240DB007318
27597	174	8240DB004980
27598	174	8240DB002289
27599	174	8240DB001835
27600	174	8240DB001836
27601	174	8240DB001837
27602	174	8240DB002338
27603	174	8240DB002290
27604	174	8240DB006179
27605	174	8240DB007297
27606	174	8240DB001813
27607	174	8240DB001814
27608	174	8240DB000661
27609	174	8240DB007026
27610	174	8240DB001882
27611	174	8240DB001856
27612	174	8240DB001857
27613	174	8240DB001858
27614	174	8240DB001859
27615	174	8240DB001860
27616	174	8240DB004492
27617	174	8240DB001861
27618	174	8240DB001862
27619	174	8240DB001863
27620	174	8240DB001864
27621	174	8240DB001865
27622	174	8240DB001866
27623	174	8240DB001850
27624	174	8240DB001867
27625	174	8240DB004489
27626	174	8240DB004323
27627	174	8240DB001824
27628	174	8240DB001825
27629	174	8240DB001826
27630	175	8240DB001826
27631	175	8240DB001825
27632	175	8240DB001824
27633	175	8240DB004323
27634	175	8240DB004489
27635	175	8240DB001867
27636	175	8240DB001850
27637	175	8240DB001866
27638	175	8240DB001865
27639	175	8240DB001864
27640	175	8240DB001863
27641	175	8240DB001862
27642	175	8240DB001861
27643	175	8240DB004492
27644	175	8240DB001860
27645	175	8240DB001859
27646	175	8240DB001858
27647	175	8240DB001857
27648	175	8240DB001856
27649	175	8240DB001882
27650	175	8240DB007026
27651	175	8240DB000661
27652	175	8240DB001814
27653	175	8240DB001813
27654	175	8240DB007297
27655	175	8240DB006179
27656	175	8240DB002290
27657	175	8240DB002338
27658	175	8240DB001837
27659	175	8240DB001836
27660	175	8240DB001835
27661	175	8240DB002289
27662	175	8240DB004980
27663	175	8240DB007318
27664	175	8240DB007343
27665	175	8240DB007124
27666	175	8240DB007126
27667	175	8240DB007243
27668	175	8240DB007247
27669	175	8240DB007241
27670	175	8240DB007237
27671	175	8240DB001580
27672	175	8220DB004364
27673	175	8220DB001578
27674	175	8220DB001577
27675	175	8220DB001576
27676	175	8220DB004583
27677	175	8220DB001575
27678	175	8220DB001574
27679	175	8220DB001573
27680	175	8220DB001604
27681	175	8220DB001603
27682	175	8220DB001602
27683	175	8220DB001601
27684	175	8220DB001600
27685	175	8220DB001599
27686	175	8220DB001597
27687	175	8220DB001598
27688	175	8220DB004363
27689	175	8220DB001596
27690	175	8220DB001594
27691	175	8220DB001593
27692	175	8220DB001592
27693	175	8220DB001532
27694	175	8220DB001531
27695	175	8220DB001530
27696	175	8220DB001529
27697	175	8220DB000979
27698	175	8220DB000193
27699	175	8220DB000137
27700	175	8220DB000136
27701	175	8220DB006273
27702	175	8220DB004788
27703	175	8220DB004367
27704	175	8220DB004365
27705	175	8220DB000105
27706	175	8220DB006241
27707	175	8220DB000104
27708	175	8220DB006239
27709	175	8220DB000102
27710	175	8240DB004687
27711	175	8240DB004686
27712	176	8250DB002039
27713	176	8250DB002040
27714	176	8250DB002041
27715	176	8250DB002042
27716	176	8250DB002043
27717	176	8250DB002044
27718	176	8250DB002045
27719	176	8250DB002046
27720	176	8250DB004568
27721	176	8250DB004569
27722	176	8250DB004570
27723	176	8250DB002056
27724	176	8250DB002057
27725	176	8250DB002058
27726	176	8250DB002059
27727	176	8250DB002060
27728	176	8250DB002061
27729	176	8250DB002062
27730	176	8250DB002063
27731	176	8250DB002064
27732	176	8250DB002065
27733	176	8250DB004727
27734	176	8250DB004728
27735	176	8250DB000461
27736	176	8250DB002068
27737	176	8250DB002069
27738	176	8250DB002070
27739	176	8250DB002084
27740	176	8250DB000768
27741	176	8220DB000769
27742	176	8220DB000770
27743	176	8220DB000771
27744	176	8220DB000772
27745	176	8220DB000773
27746	176	8220DB000774
27747	176	8220DB000775
27748	176	8220DB000776
27749	176	8220DB000777
27750	176	8220DB000906
27751	176	8220DB000907
27752	176	8220DB000908
27753	176	8220DB000909
27754	176	8220DB000786
27755	176	8220DB000792
27756	176	8220DB000320
27757	176	8220DB000278
27758	176	8220DB000002
27759	176	8220DB000192
27760	176	8220DB000795
27761	176	8220DB000796
27762	176	8220DB000797
27763	176	8220DB000798
27764	176	8220DB000799
27765	176	8220DB000800
27766	176	8220DB000801
27767	176	8220DB000802
27768	176	8220DB000803
27769	176	8220DB000804
27770	176	8220DB007877
27771	176	8220DB007513
27772	177	8220DB007513
27773	177	8220DB007877
27774	177	8220DB000804
27775	177	8220DB000803
27776	177	8220DB000802
27777	177	8220DB000801
27778	177	8220DB000800
27779	177	8220DB000799
27780	177	8220DB000798
27781	177	8220DB000797
27782	177	8220DB000796
27783	177	8220DB000795
27784	177	8220DB000192
27785	177	8220DB000002
27786	177	8220DB000278
27787	177	8220DB000320
27788	177	8220DB000792
27789	177	8220DB000786
27790	177	8220DB000909
27791	177	8220DB000908
27792	177	8220DB000907
27793	177	8220DB000906
27794	177	8220DB000777
27795	177	8220DB000776
27796	177	8220DB000775
27797	177	8220DB000774
27798	177	8220DB000773
27799	177	8220DB000772
27800	177	8220DB000771
27801	177	8220DB000770
27802	177	8220DB000769
27803	177	8250DB000768
27804	177	8250DB002084
27805	177	8250DB002070
27806	177	8250DB002069
27807	177	8250DB002068
27808	177	8250DB000461
27809	177	8250DB004728
27810	177	8250DB004727
27811	177	8250DB002065
27812	177	8250DB002064
27813	177	8250DB002063
27814	177	8250DB002062
27815	177	8250DB002061
27816	177	8250DB002060
27817	177	8250DB002059
27818	177	8250DB002058
27819	177	8250DB002057
27820	177	8250DB002056
27821	177	8250DB004570
27822	177	8250DB004569
27823	177	8250DB004568
27824	177	8250DB002046
27825	177	8250DB002045
27826	177	8250DB002044
27827	177	8250DB002043
27828	177	8250DB002042
27829	177	8250DB002041
27830	177	8250DB002040
27831	177	8250DB002039
27832	178	8240DB007722
27833	178	8240DB007691
27834	178	8240DB003721
27835	178	8240DB003722
27836	178	8240DB005069
27837	178	8240DB003723
27838	178	8240DB003724
27839	178	8240DB003725
27840	178	8240DB003726
27841	178	8240DB003728
27842	178	8240DB003729
27843	178	8240DB003730
27844	178	8240DB003732
27845	178	8240DB003733
27846	178	8240DB003734
27847	178	8240DB003735
27848	178	8240DB007204
27849	178	8240DB003736
27850	178	8240DB003738
27851	178	8240DB007170
27852	178	8240DB003740
27853	179	8240DB003740
27854	179	8240DB007170
27855	179	8240DB003738
27856	179	8240DB003736
27857	179	8240DB007204
27858	179	8240DB003735
27859	179	8240DB003734
27860	179	8240DB003733
27861	179	8240DB003732
27862	179	8240DB003730
27863	179	8240DB003729
27864	179	8240DB003728
27865	179	8240DB003726
27866	179	8240DB003725
27867	179	8240DB003724
27868	179	8240DB003723
27869	179	8240DB005069
27870	179	8240DB003722
27871	179	8240DB003721
27872	179	8240DB007691
27873	179	8240DB007722
27874	180	8230DB004341
27875	180	8230DB004348
27876	180	8230DB004646
27877	180	8230DB004647
27878	180	8230DB002363
27879	180	8230DB002364
27880	180	8230DB002618
27881	180	8230DB005011
27882	180	8230DB002762
27883	180	8230DB002110
27884	180	8230DB002111
27885	180	8230DB002112
27886	180	8230DB002114
27887	180	8230DB002115
27888	180	8230DB002116
27889	180	8230DB002117
27890	180	8230DB002118
27891	180	8230DB002119
27892	180	8230DB002120
27893	180	8230DB002121
27894	180	8230DB002123
27895	180	8230DB002685
27896	180	8230DB004795
27897	180	8230DB002686
27898	180	8230DB007510
27899	180	8230DB004799
27900	180	8230DB002205
27901	180	8230DB002687
27902	180	8220DB002688
27903	180	8220DB002689
27904	180	8220DB002696
27905	180	8220DB002697
27906	180	8220DB004414
27907	180	8220DB005009
27908	180	8230DB002201
27909	180	8230DB004401
27910	180	8240DB001813
27911	180	8240DB001814
27912	181	8240DB001814
27913	181	8240DB001813
27914	181	8230DB004401
27915	181	8230DB002201
27916	181	8220DB005009
27917	181	8220DB004414
27918	181	8220DB002697
27919	181	8220DB002696
27920	181	8220DB002689
27921	181	8220DB002688
27922	181	8230DB002687
27923	181	8230DB002205
27924	181	8230DB004799
27925	181	8230DB007510
27926	181	8230DB002686
27927	181	8230DB004795
27928	181	8230DB002685
27929	181	8230DB002123
27930	181	8230DB002121
27931	181	8230DB002120
27932	181	8230DB002119
27933	181	8230DB002118
27934	181	8230DB002117
27935	181	8230DB002116
27936	181	8230DB002115
27937	181	8230DB002114
27938	181	8230DB002112
27939	181	8230DB002111
27940	181	8230DB002110
27941	181	8230DB002762
27942	181	8230DB005011
27943	181	8230DB002618
27944	181	8230DB002364
27945	181	8230DB002363
27946	181	8230DB004647
27947	181	8230DB004646
27948	181	8230DB004348
27949	181	8230DB004341
27950	182	8230DB002934
27951	182	8230DB002935
27952	182	8230DB002936
27953	182	8230DB002937
27954	182	8230DB002938
27955	182	8230DB007440
27956	182	8230DB002940
27957	182	8230DB002948
27958	182	8230DB002949
27959	182	8230DB002950
27960	182	8230DB002954
27961	182	8230DB007067
27962	182	8230DB002956
27963	182	8230DB002965
27964	182	8230DB007448
27965	182	8230DB002967
27966	182	8230DB002968
27967	182	8250DB002969
27968	182	8250DB002970
27969	182	8250DB004988
27970	182	8250DB004707
27971	182	8250DB004708
27972	182	8250DB004336
27973	182	8250DB004337
27974	182	8250DB001310
27975	182	8250DB001311
27976	182	8250DB001312
27977	182	8250DB001313
27978	182	8250DB001055
27979	182	8250DB002868
27980	183	8250DB002868
27981	183	8250DB001055
27982	183	8250DB001313
27983	183	8250DB001312
27984	183	8250DB001311
27985	183	8250DB001310
27986	183	8250DB004337
27987	183	8250DB004336
27988	183	8250DB004708
27989	183	8250DB004707
27990	183	8250DB004988
27991	183	8250DB002970
27992	183	8250DB002969
27993	183	8230DB002968
27994	183	8230DB002967
27995	183	8230DB007448
27996	183	8230DB002965
27997	183	8230DB002956
27998	183	8230DB007067
27999	183	8230DB002954
28000	183	8230DB002950
28001	183	8230DB002949
28002	183	8230DB002948
28003	183	8230DB002940
28004	183	8230DB007440
28005	183	8230DB002938
28006	183	8230DB002937
28007	183	8230DB002936
28008	183	8230DB002935
28009	183	8230DB002934
28010	184	8220DB002670
28011	184	8220DB002910
28012	184	8220DB002911
28013	184	8220DB007507
28014	184	8220DB002663
28015	184	8220DB002664
28016	184	8220DB002665
28017	184	8220DB002666
28018	184	8220DB002667
28019	184	8220DB002696
28020	184	8220DB002697
28021	184	8220DB002700
28022	184	8220DB002701
28023	184	8220DB002702
28024	184	8220DB002703
28025	184	8220DB002704
28026	184	8220DB002706
28027	184	8220DB006070
28028	184	8220DB002708
28029	184	8220DB005134
28030	184	8220DB002718
28031	184	8220DB002719
28032	184	8220DB007435
28033	184	8220DB002722
28034	184	8220DB004413
28035	184	8220DB001476
28036	184	8220DB007453
28037	184	8220DB001480
28038	184	8220DB002912
28039	184	8220DB001358
28040	185	8220DB001358
28041	185	8220DB002912
28042	185	8220DB001480
28043	185	8220DB007453
28044	185	8220DB001476
28045	185	8220DB004413
28046	185	8220DB002722
28047	185	8220DB007435
28048	185	8220DB002719
28049	185	8220DB002718
28050	185	8220DB005134
28051	185	8220DB002708
28052	185	8220DB006070
28053	185	8220DB002706
28054	185	8220DB002704
28055	185	8220DB002703
28056	185	8220DB002702
28057	185	8220DB002701
28058	185	8220DB002700
28059	185	8220DB002697
28060	185	8220DB002696
28061	185	8220DB002667
28062	185	8220DB002666
28063	185	8220DB002665
28064	185	8220DB002664
28065	185	8220DB002663
28066	185	8220DB007507
28067	185	8220DB002911
28068	185	8220DB002910
28069	185	8220DB002670
28070	186	8220DB000326
28071	186	8220DB001443
28072	186	8220DB001444
28073	186	8220DB001445
28074	186	8220DB004407
28075	186	8220DB002637
28076	186	8220DB002638
28077	186	8220DB002721
28078	186	8220DB007012
28079	186	8220DB002644
28080	186	8220DB002645
28081	186	8220DB002646
28082	186	8220DB002647
28083	186	8220DB002648
28084	186	8220DB002649
28085	186	8220DB002650
28086	186	8220DB002652
28087	186	8220DB002653
28088	186	8220DB002654
28089	186	8220DB002655
28090	186	8220DB002656
28091	186	8220DB002657
28092	186	8220DB002658
28093	186	8220DB002659
28094	186	8220DB002660
28095	186	8220DB002661
28096	186	8220DB002662
28097	186	8220DB002909
28098	186	8220DB006020
28099	186	8220DB006023
28100	186	8220DB006026
28101	186	8220DB006027
28102	187	8220DB006027
28103	187	8220DB006026
28104	187	8220DB006023
28105	187	8220DB006020
28106	187	8220DB002909
28107	187	8220DB002662
28108	187	8220DB002661
28109	187	8220DB002660
28110	187	8220DB002659
28111	187	8220DB002658
28112	187	8220DB002657
28113	187	8220DB002656
28114	187	8220DB002655
28115	187	8220DB002654
28116	187	8220DB002653
28117	187	8220DB002652
28118	187	8220DB002650
28119	187	8220DB002649
28120	187	8220DB002648
28121	187	8220DB002647
28122	187	8220DB002646
28123	187	8220DB002645
28124	187	8220DB002644
28125	187	8220DB007012
28126	187	8220DB002721
28127	187	8220DB002638
28128	187	8220DB002637
28129	187	8220DB004407
28130	187	8220DB001445
28131	187	8220DB001444
28132	187	8220DB001443
28133	187	8220DB000326
28134	188	8240DB003732
28135	188	8240DB003733
28136	188	8240DB003734
28137	188	8240DB003735
28138	188	8240DB007204
28139	188	8240DB003736
28140	188	8240DB003739
28141	188	8240DB003738
28142	188	8240DB007170
28143	188	8240DB003740
28144	188	8240DB003741
28145	188	8240DB005165
28146	188	8240DB007169
28147	188	8240DB003743
28148	188	8240DB003780
28149	188	8240DB007723
28150	188	8240DB003745
28151	188	8240DB003746
28152	188	8240DB007040
28153	188	8240DB003749
28154	188	8240DB003750
28155	188	8240DB003752
28156	188	8240DB003751
28157	188	8240DB003689
28158	188	8240DB003690
28159	189	8240DB003690
28160	189	8240DB003689
28161	189	8240DB003751
28162	189	8240DB003752
28163	189	8240DB003750
28164	189	8240DB003749
28165	189	8240DB007040
28166	189	8240DB003746
28167	189	8240DB003745
28168	189	8240DB007723
28169	189	8240DB003780
28170	189	8240DB003743
28171	189	8240DB007169
28172	189	8240DB005165
28173	189	8240DB003741
28174	189	8240DB003740
28175	189	8240DB007170
28176	189	8240DB003738
28177	189	8240DB003739
28178	189	8240DB003736
28179	189	8240DB007204
28180	189	8240DB003735
28181	189	8240DB003734
28182	189	8240DB003733
28183	189	8240DB003732
28184	190	8230DB004715
28185	190	8230DB07755
28186	190	8230DB007793
28187	190	8230DB007773
28188	190	8230DB007769
28189	190	8230DB007807
28190	190	8230DB007809
28191	190	8230DB005138
28192	190	8230DB007751
28193	190	8230DB004611
28194	190	8230DB004612
28195	190	8230DB004613
28196	190	8230DB003370
28197	190	8230DB007168
28198	190	8230DB004616
28199	190	8230DB002227
28200	190	8230DB007775
28201	190	8230DB003886
28202	190	8230DB003887
28203	190	8230DB003888
28204	190	8230DB007810
28205	190	8230DB007749
28206	190	8230DB007801
28207	191	8230DB007801
28208	191	8230DB007749
28209	191	8230DB007810
28210	191	8230DB003888
28211	191	8230DB003887
28212	191	8230DB003886
28213	191	8230DB007775
28214	191	8230DB002227
28215	191	8230DB004616
28216	191	8230DB007168
28217	191	8230DB003370
28218	191	8230DB004613
28219	191	8230DB004612
28220	191	8230DB004611
28221	191	8230DB007751
28222	191	8230DB005138
28223	191	8230DB007809
28224	191	8230DB007807
28225	191	8230DB007769
28226	191	8230DB007773
28227	191	8230DB007793
28228	191	8230DB07755
28229	191	8230DB004715
28230	192	8240DB007073
28231	192	8240DB007097
28232	192	8240DB007098
28233	192	8240DB007099
28234	192	8240DB007100
28235	192	8240DB007101
28236	192	8240DB007505
28237	192	8240DB005071
28238	192	8240DB005072
28239	192	8240DB004980
28240	192	8240DB002289
28241	192	8240DB001835
28242	192	8240DB001836
28243	192	8240DB001837
28244	192	8240DB002338
28245	192	8240DB000661
28246	192	8240DB007026
28247	192	8240DB004323
28248	192	8240DB001824
28249	192	8240DB001825
28250	192	8240DB001826
28251	193	8240DB001826
28252	193	8240DB001825
28253	193	8240DB001824
28254	193	8240DB004323
28255	193	8240DB007026
28256	193	8240DB000661
28257	193	8240DB002338
28258	193	8240DB001837
28259	193	8240DB001836
28260	193	8240DB001835
28261	193	8240DB002289
28262	193	8240DB004980
28263	193	8240DB005072
28264	193	8240DB005071
28265	193	8240DB007505
28266	193	8240DB007101
28267	193	8240DB007100
28268	193	8240DB007099
28269	193	8240DB007098
28270	193	8240DB007097
28271	193	8240DB007073
28272	194	8250DB003283
28273	194	8250DB003284
28274	194	8250DB003285
28275	194	8250DB007324
28276	194	8250DB005106
28277	194	8250DB004396
28278	194	8250DB004773
28279	194	8250DB004393
28280	194	8250DB004395
28281	194	8250DB004313
28282	194	8250DB007373
28283	194	8250DB003289
28284	194	8250DB003290
28285	194	8250DB005168
28286	194	8250DB003291
28287	194	8250DB003292
28288	194	8250DB003293
28289	194	8250DB003294
28290	194	8250DB003295
28291	194	8250DB003296
28292	194	8250DB003297
28293	194	8250DB003298
28294	194	8250DB003260
28295	194	8250DB003261
28296	194	8250DB003262
28297	194	8250DB003153
28298	194	8250DB007362
28299	194	8250DB003129
28300	194	8250DB007634
28301	194	8250DB003249
28302	194	8250DB007637
28303	194	8250DB002023
28304	194	8250DB002024
28305	194	8250DB002025
28306	194	8250DB002026
28307	194	8250DB002027
28308	194	8250DB002028
28309	194	8250DB002029
28310	194	8250DB002030
28311	194	8250DB002031
28312	194	8250DB002032
28313	194	8250DB002033
28314	194	8250DB002034
28315	194	8250DB002035
28316	194	8250DB002036
28317	195	8250DB002036
28318	195	8250DB002035
28319	195	8250DB002034
28320	195	8250DB002033
28321	195	8250DB002032
28322	195	8250DB002031
28323	195	8250DB002030
28324	195	8250DB002029
28325	195	8250DB002028
28326	195	8250DB002027
28327	195	8250DB002026
28328	195	8250DB002025
28329	195	8250DB002024
28330	195	8250DB002023
28331	195	8250DB007637
28332	195	8250DB003249
28333	195	8250DB007634
28334	195	8250DB003129
28335	195	8250DB007362
28336	195	8250DB003153
28337	195	8250DB003262
28338	195	8250DB003261
28339	195	8250DB003260
28340	195	8250DB003298
28341	195	8250DB003297
28342	195	8250DB003296
28343	195	8250DB003295
28344	195	8250DB003294
28345	195	8250DB003293
28346	195	8250DB003292
28347	195	8250DB003291
28348	195	8250DB005168
28349	195	8250DB003290
28350	195	8250DB003289
28351	195	8250DB007373
28352	195	8250DB004313
28353	195	8250DB004395
28354	195	8250DB004393
28355	195	8250DB004773
28356	195	8250DB004396
28357	195	8250DB005106
28358	195	8250DB007324
28359	195	8250DB003285
28360	195	8250DB003284
28361	195	8250DB003283
28362	196	8230DB004342
28363	196	8230DB004348
28364	196	8230DB004646
28365	196	8230DB004647
28366	196	8230DB004435
28367	196	8230DB002604
28368	196	8230DB002605
28369	196	8230DB002538
28370	196	8230DB002539
28371	196	8230DB002540
28372	196	8230DB002542
28373	196	8230DB006128
28374	196	8230DB002544
28375	196	8230DB002545
28376	196	8230DB002547
28377	196	8230DB002548
28378	196	8230DB000946
28379	196	8230DB001131
28380	196	8230DB001132
28381	196	8230DB001133
28382	196	8230DB001134
28383	196	8230DB005131
28384	196	8230DB005132
28385	196	8230DB001305
28386	196	8250DB001306
28387	196	8250DB001307
28388	196	8250DB001308
28389	196	8250DB001309
28390	196	8250DB004332
28391	196	8250DB004333
28392	196	8250DB004334
28393	196	8250DB004712
28394	196	8250DB002853
28395	196	8250DB002854
28396	196	8250DB002855
28397	196	8250DB002856
28398	196	8250DB002857
28399	196	8250DB002858
28400	196	8250DB002859
28401	196	8250DB002860
28402	196	8250DB002861
28403	196	8250DB002862
28404	196	8250DB002863
28405	196	8250DB002864
28406	196	8250DB004486
28407	196	8250DB002865
28408	196	8250DB002866
28409	196	8250DB007719
28410	196	8250DB007720
28411	196	8250DB002872
28412	196	8250DB002873
28413	196	8250DB002874
28414	196	8250DB002877
28415	196	8250DB007394
28416	196	8250DB002878
28417	196	8250DB002879
28418	196	8250DB004779
28419	196	8250DB007057
28420	196	8250DB004847
28421	196	8250DB004848
28422	196	8250DB000449
28423	196	8250DB000450
28424	196	8250DB003181
28425	196	8250DB000447
28426	196	8250DB005045
28427	196	8250DB004460
28428	196	8250DB000453
28429	196	8250DB004477
28430	196	8250DB003321
28431	196	8250DB004571
28432	196	8250DB002013
28433	196	8250DB002014
28434	196	8250DB004636
28435	196	8250DB002016
28436	196	8250DB002015
28437	196	8250DB002017
28438	196	8250DB002018
28439	196	8250DB002019
28440	196	8250DB002020
28441	196	8250DB002021
28442	196	8250DB002022
28443	196	8250DB004565
28444	196	8250DB004566
28445	196	8250DB004567
28446	196	8250DB002031
28447	196	8250DB002032
28448	196	8250DB002033
28449	196	8250DB002034
28450	196	8250DB002035
28451	196	8250DB002036
28452	197	8250DB002036
28453	197	8250DB002035
28454	197	8250DB002034
28455	197	8250DB002033
28456	197	8250DB002032
28457	197	8250DB002031
28458	197	8250DB004567
28459	197	8250DB004566
28460	197	8250DB004565
28461	197	8250DB002022
28462	197	8250DB002021
28463	197	8250DB002020
28464	197	8250DB002019
28465	197	8250DB002018
28466	197	8250DB002017
28467	197	8250DB002015
28468	197	8250DB002016
28469	197	8250DB004636
28470	197	8250DB002014
28471	197	8250DB002013
28472	197	8250DB004571
28473	197	8250DB003321
28474	197	8250DB004477
28475	197	8250DB000453
28476	197	8250DB004460
28477	197	8250DB005045
28478	197	8250DB000447
28479	197	8250DB003181
28480	197	8250DB000450
28481	197	8250DB000449
28482	197	8250DB004848
28483	197	8250DB004847
28484	197	8250DB007057
28485	197	8250DB004779
28486	197	8250DB002879
28487	197	8250DB002878
28488	197	8250DB007394
28489	197	8250DB002877
28490	197	8250DB002874
28491	197	8250DB002873
28492	197	8250DB002872
28493	197	8250DB007720
28494	197	8250DB007719
28495	197	8250DB002866
28496	197	8250DB002865
28497	197	8250DB004486
28498	197	8250DB002864
28499	197	8250DB002863
28500	197	8250DB002862
28501	197	8250DB002861
28502	197	8250DB002860
28503	197	8250DB002859
28504	197	8250DB002858
28505	197	8250DB002857
28506	197	8250DB002856
28507	197	8250DB002855
28508	197	8250DB002854
28509	197	8250DB002853
28510	197	8250DB004712
28511	197	8250DB004334
28512	197	8250DB004333
28513	197	8250DB004332
28514	197	8250DB001309
28515	197	8250DB001308
28516	197	8250DB001307
28517	197	8250DB001306
28518	197	8230DB001305
28519	197	8230DB005132
28520	197	8230DB005131
28521	197	8230DB001134
28522	197	8230DB001133
28523	197	8230DB001132
28524	197	8230DB001131
28525	197	8230DB000946
28526	197	8230DB002548
28527	197	8230DB002547
28528	197	8230DB002545
28529	197	8230DB002544
28530	197	8230DB006128
28531	197	8230DB002542
28532	197	8230DB002540
28533	197	8230DB002539
28534	197	8230DB002538
28535	197	8230DB002605
28536	197	8230DB002604
28537	197	8230DB004435
28538	197	8230DB004647
28539	197	8230DB004646
28540	197	8230DB004348
28541	197	8230DB004342
28542	198	8250DB003057
28543	198	8250DB004830
28544	198	8250DB007667
28545	198	8250DB003091
28546	198	8250DB003092
28547	198	8250DB003093
28548	198	8250DB003535
28549	198	8250DB003536
28550	198	8250DB003537
28551	198	8250DB003538
28552	198	8250DB007556
28553	198	8250DB003539
28554	198	8250DB003540
28555	198	8250DB003541
28556	198	8250DB003542
28557	198	8250DB003543
28558	198	8250DB003141
28559	198	8250DB003142
28560	198	8250DB003224
28561	198	8250DB003225
28562	198	8250DB003226
28563	198	8250DB003227
28564	198	8250DB003228
28565	198	8250DB003229
28566	198	8250DB007472
28567	198	8250DB003230
28568	198	8250DB003232
28569	198	8250DB003233
28570	198	8250DB003234
28571	198	8250DB004462
28572	198	8250DB003235
28573	198	8250DB003236
28574	198	8250DB003237
28575	198	8250DB003238
28576	198	8250DB003239
28577	198	8250DB003240
28578	198	8250DB003068
28579	198	8250DB003069
28580	198	8250DB003070
28581	198	8250DB002041
28582	198	8250DB003071
28583	198	8250DB003072
28584	198	8250DB003073
28585	198	8250DB003074
28586	198	8250DB003075
28587	198	8250DB003076
28588	198	8250DB003077
28589	198	8250DB003084
28590	198	8250DB000469
28591	198	8250DB000470
28592	198	8250DB000471
28593	198	8250DB000472
28594	198	8250DB000473
28595	198	8250DB004705
28596	198	8250DB000475
28597	198	8220DB000476
28598	198	8220DB000477
28599	198	8220DB000478
28600	198	8220DB007053
28601	198	8220DB002088
28602	198	8220DB002089
28603	198	8220DB000770
28604	198	8220DB000771
28605	198	8220DB000772
28606	198	8220DB000417
28607	198	8220DB000485
28608	198	8220DB000487
28609	198	8220DB000488
28610	198	8220DB000489
28611	198	8220DB000490
28612	198	8220DB000491
28613	198	8220DB000492
28614	198	8220DB000493
28615	198	8220DB000494
28616	198	8220DB000495
28617	198	8220DB007587
28618	198	8220DB000345
28619	198	8220DB000320
28620	198	8220DB000281
28621	198	8220DB000004
28622	199	8220DB000004
28623	199	8220DB000281
28624	199	8220DB000320
28625	199	8220DB000345
28626	199	8220DB007587
28627	199	8220DB000495
28628	199	8220DB000494
28629	199	8220DB000493
28630	199	8220DB000492
28631	199	8220DB000491
28632	199	8220DB000490
28633	199	8220DB000489
28634	199	8220DB000488
28635	199	8220DB000487
28636	199	8220DB000485
28637	199	8220DB000417
28638	199	8220DB000772
28639	199	8220DB000771
28640	199	8220DB000770
28641	199	8220DB002089
28642	199	8220DB002088
28643	199	8220DB007053
28644	199	8220DB000478
28645	199	8220DB000477
28646	199	8220DB000476
28647	199	8250DB000475
28648	199	8250DB004705
28649	199	8250DB000473
28650	199	8250DB000472
28651	199	8250DB000471
28652	199	8250DB000470
28653	199	8250DB000469
28654	199	8250DB003084
28655	199	8250DB003077
28656	199	8250DB003076
28657	199	8250DB003075
28658	199	8250DB003074
28659	199	8250DB003073
28660	199	8250DB003072
28661	199	8250DB003071
28662	199	8250DB002041
28663	199	8250DB003070
28664	199	8250DB003069
28665	199	8250DB003068
28666	199	8250DB003240
28667	199	8250DB003239
28668	199	8250DB003238
28669	199	8250DB003237
28670	199	8250DB003236
28671	199	8250DB003235
28672	199	8250DB004462
28673	199	8250DB003234
28674	199	8250DB003233
28675	199	8250DB003232
28676	199	8250DB003230
28677	199	8250DB007472
28678	199	8250DB003229
28679	199	8250DB003228
28680	199	8250DB003227
28681	199	8250DB003226
28682	199	8250DB003225
28683	199	8250DB003224
28684	199	8250DB003142
28685	199	8250DB003141
28686	199	8250DB003543
28687	199	8250DB003542
28688	199	8250DB003541
28689	199	8250DB003540
28690	199	8250DB003539
28691	199	8250DB007556
28692	199	8250DB003538
28693	199	8250DB003537
28694	199	8250DB003536
28695	199	8250DB003535
28696	199	8250DB003093
28697	199	8250DB003092
28698	199	8250DB003091
28699	199	8250DB007667
28700	199	8250DB004830
28701	199	8250DB003057
28702	200	8250DB003544
28703	200	8250DB003552
28704	200	8250DB003553
28705	200	8250DB003554
28706	200	8250DB003555
28707	200	8250DB003556
28708	200	8250DB003557
28709	200	8250DB007317
28710	200	8250DB003224
28711	200	8250DB003225
28712	200	8250DB003226
28713	200	8250DB003227
28714	200	8250DB003228
28715	200	8250DB003229
28716	200	8250DB007472
28717	200	8250DB003230
28718	200	8250DB003231
28719	200	8250DB003246
28720	200	8250DB003247
28721	200	8250DB007056
28722	200	8250DB004731
28723	200	8250DB002023
28724	200	8250DB002024
28725	200	8250DB002025
28726	200	8250DB006086
28727	200	8250DB007419
28728	200	8250DB007420
28729	200	8250DB003345
28730	200	8250DB004727
28731	200	8250DB004728
28732	200	8250DB000461
28733	200	8250DB002068
28734	200	8250DB002069
28735	200	8250DB002070
28736	200	8250DB002084
28737	200	8250DB000768
28738	200	8220DB000769
28739	200	8220DB000770
28740	200	8220DB000771
28741	200	8220DB000772
28742	200	8220DB000773
28743	200	8220DB000774
28744	200	8220DB000775
28745	200	8220DB000776
28746	200	8220DB000777
28747	200	8220DB000906
28748	200	8220DB000907
28749	200	8220DB000908
28750	200	8220DB000909
28751	200	8220DB000786
28752	200	8220DB000792
28753	200	8220DB007586
28754	200	8220DB007587
28755	200	8220DB000345
28756	200	8220DB000320
28757	200	8220DB000281
28758	200	8220DB000004
28759	201	8220DB000004
28760	201	8220DB000281
28761	201	8220DB000320
28762	201	8220DB000345
28763	201	8220DB007587
28764	201	8220DB007586
28765	201	8220DB000792
28766	201	8220DB000786
28767	201	8220DB000909
28768	201	8220DB000908
28769	201	8220DB000907
28770	201	8220DB000906
28771	201	8220DB000777
28772	201	8220DB000776
28773	201	8220DB000775
28774	201	8220DB000774
28775	201	8220DB000773
28776	201	8220DB000772
28777	201	8220DB000771
28778	201	8220DB000770
28779	201	8220DB000769
28780	201	8250DB000768
28781	201	8250DB002084
28782	201	8250DB002070
28783	201	8250DB002069
28784	201	8250DB002068
28785	201	8250DB000461
28786	201	8250DB004728
28787	201	8250DB004727
28788	201	8250DB003345
28789	201	8250DB007420
28790	201	8250DB007419
28791	201	8250DB006086
28792	201	8250DB002025
28793	201	8250DB002024
28794	201	8250DB002023
28795	201	8250DB004731
28796	201	8250DB007056
28797	201	8250DB003247
28798	201	8250DB003246
28799	201	8250DB003231
28800	201	8250DB003230
28801	201	8250DB007472
28802	201	8250DB003229
28803	201	8250DB003228
28804	201	8250DB003227
28805	201	8250DB003226
28806	201	8250DB003225
28807	201	8250DB003224
28808	201	8250DB007317
28809	201	8250DB003557
28810	201	8250DB003556
28811	201	8250DB003555
28812	201	8250DB003554
28813	201	8250DB003553
28814	201	8250DB003552
28815	201	8250DB003544
28816	202	8240DB004745
28817	202	8240DB004989
28818	202	8240DB001845
28819	202	8240DB007166
28820	202	8220DB001847
28821	202	8220DB001696
28822	202	8220DB001697
28823	202	8220DB001698
28824	202	8220DB001699
28825	202	8220DB001700
28826	202	8220DB001701
28827	202	8220DB001702
28828	202	8220DB001703
28829	202	8220DB001905
28830	202	8220DB001804
28831	202	8220DB001803
28832	202	8220DB000077
28833	202	8220DB000078
28834	202	8220DB000079
28835	202	8220DB000080
28836	202	8220DB000082
28837	202	8220DB000817
28838	202	8220DB000818
28839	202	8220DB000819
28840	202	8220DB000265
28841	202	8220DB006059
28842	202	8220DB000404
28843	202	8220DB000747
28844	202	8220DB000748
28845	202	8220DB000749
28846	202	8220DB000750
28847	202	8220DB000751
28848	202	8220DB000752
28849	202	8220DB000753
28850	202	8220DB007370
28851	203	8220DB007370
28852	203	8220DB000753
28853	203	8220DB000752
28854	203	8220DB000751
28855	203	8220DB000750
28856	203	8220DB000749
28857	203	8220DB000748
28858	203	8220DB000747
28859	203	8220DB000404
28860	203	8220DB006059
28861	203	8220DB000265
28862	203	8220DB000819
28863	203	8220DB000818
28864	203	8220DB000817
28865	203	8220DB000082
28866	203	8220DB000080
28867	203	8220DB000079
28868	203	8220DB000078
28869	203	8220DB000077
28870	203	8220DB001803
28871	203	8220DB001804
28872	203	8220DB001905
28873	203	8220DB001703
28874	203	8220DB001702
28875	203	8220DB001701
28876	203	8220DB001700
28877	203	8220DB001699
28878	203	8220DB001698
28879	203	8220DB001697
28880	203	8220DB001696
28881	203	8220DB001847
28882	203	8240DB007166
28883	203	8240DB001845
28884	203	8240DB004989
28885	203	8240DB004745
28886	204	8350DB004168
28887	204	8350DB004170
28888	204	8350DB004153
28889	204	8350DB004154
28890	204	8350DB004416
28891	204	8350DB004201
28892	204	8250DB004202
28893	204	8250DB004203
28894	204	8250DB004204
28895	204	8250DB004205
28896	204	8250DB004206
28897	204	8250DB003140
28898	204	8250DB003141
28899	204	8250DB003142
28900	204	8250DB003143
28901	204	8250DB003144
28902	204	8250DB007639
28903	204	8250DB007640
28904	204	8250DB005047
28905	204	8250DB003146
28906	204	8250DB003147
28907	204	8250DB003148
28908	204	8250DB003149
28909	204	8250DB003150
28910	204	8250DB003151
28911	204	8250DB003153
28912	204	8250DB003152
28913	204	8250DB002995
28914	204	8250DB003154
28915	204	8250DB003155
28916	204	8250DB003156
28917	204	8250DB003158
28918	204	8250DB003159
28919	204	8250DB003160
28920	204	8250DB003161
28921	204	8250DB003162
28922	204	8250DB003163
28923	204	8250DB003164
28924	205	8250DB003164
28925	205	8250DB003163
28926	205	8250DB003162
28927	205	8250DB003161
28928	205	8250DB003160
28929	205	8250DB003159
28930	205	8250DB003158
28931	205	8250DB003156
28932	205	8250DB003155
28933	205	8250DB003154
28934	205	8250DB002995
28935	205	8250DB003152
28936	205	8250DB003153
28937	205	8250DB003151
28938	205	8250DB003150
28939	205	8250DB003149
28940	205	8250DB003148
28941	205	8250DB003147
28942	205	8250DB003146
28943	205	8250DB005047
28944	205	8250DB007640
28945	205	8250DB007639
28946	205	8250DB003144
28947	205	8250DB003143
28948	205	8250DB003142
28949	205	8250DB003141
28950	205	8250DB003140
28951	205	8250DB004206
28952	205	8250DB004205
28953	205	8250DB004204
28954	205	8250DB004203
28955	205	8250DB004202
28956	205	8350DB004201
28957	205	8350DB004416
28958	205	8350DB004154
28959	205	8350DB004153
28960	205	8350DB004170
28961	205	8350DB004168
28962	206	8250DB000765
28963	206	8250DB002007
28964	206	8250DB002008
28965	206	8250DB002071
28966	206	8250DB002072
28967	206	8250DB000867
28968	206	8250DB002825
28969	206	8250DB007716
28970	206	8250DB007717
28971	206	8250DB002845
28972	206	8250DB002846
28973	206	8250DB002847
28974	206	8250DB004397
28975	206	8250DB002978
28976	206	8250DB002979
28977	206	8230DB002980
28978	206	8230DB002981
28979	206	8230DB007447
28980	206	8230DB002983
28981	206	8230DB002984
28982	206	8230DB007449
28983	206	8230DB007442
28984	206	8230DB007446
28985	206	8230DB001149
28986	206	8230DB004869
28987	206	8230DB004870
28988	206	8230DB004871
28989	206	8230DB004872
28990	206	8230DB004873
28991	206	8230DB004874
28992	206	8230DB002532
28993	206	8230DB002533
28994	206	8230DB002534
28995	206	8230DB002535
28996	206	8230DB002536
28997	206	8230DB002616
28998	206	8230DB002617
28999	206	8230DB002557
29000	206	8230DB004436
29001	206	8230DB002363
29002	206	8230DB005008
29003	206	8230DB004640
29004	206	8230DB004347
29005	206	8230DB002349
29006	206	8230DB002351
29007	206	8230DB002621
29008	206	8230DB004644
29009	206	8230DB004645
29010	206	8230DB004930
29011	206	8230DB004931
29012	206	8230DB007459
29013	206	8230DB005022
29014	207	8230DB005022
29015	207	8230DB007459
29016	207	8230DB004931
29017	207	8230DB004930
29018	207	8230DB004645
29019	207	8230DB004644
29020	207	8230DB002621
29021	207	8230DB002351
29022	207	8230DB002349
29023	207	8230DB004347
29024	207	8230DB004640
29025	207	8230DB005008
29026	207	8230DB002363
29027	207	8230DB004436
29028	207	8230DB002557
29029	207	8230DB002617
29030	207	8230DB002616
29031	207	8230DB002536
29032	207	8230DB002535
29033	207	8230DB002534
29034	207	8230DB002533
29035	207	8230DB002532
29036	207	8230DB004874
29037	207	8230DB004873
29038	207	8230DB004872
29039	207	8230DB004871
29040	207	8230DB004870
29041	207	8230DB004869
29042	207	8230DB001149
29043	207	8230DB007446
29044	207	8230DB007442
29045	207	8230DB007449
29046	207	8230DB002984
29047	207	8230DB002983
29048	207	8230DB007447
29049	207	8230DB002981
29050	207	8230DB002980
29051	207	8250DB002979
29052	207	8250DB002978
29053	207	8250DB004397
29054	207	8250DB002847
29055	207	8250DB002846
29056	207	8250DB002845
29057	207	8250DB007717
29058	207	8250DB007716
29059	207	8250DB002825
29060	207	8250DB000867
29061	207	8250DB002072
29062	207	8250DB002071
29063	207	8250DB002008
29064	207	8250DB002007
29065	207	8250DB000765
29066	208	8220DB007333
29067	208	8220DB000783
29068	208	8220DB000784
29069	208	8220DB000785
29070	208	8220DB000786
29071	208	8220DB000793
29072	208	8220DB000274
29073	208	8220DB000002
29074	208	8220DB000192
29075	208	8220DB000795
29076	208	8220DB000796
29077	208	8220DB000057
29078	208	8220DB000058
29079	208	8220DB000059
29080	208	8220DB000060
29081	208	8220DB001802
29082	208	8220DB001795
29083	208	8220DB001806
29084	208	8220DB001660
29085	208	8220DB001661
29086	208	8220DB001662
29087	208	8220DB001664
29088	208	8220DB001665
29089	208	8220DB001666
29090	208	8220DB001807
29091	208	8240DB007167
29092	208	8240DB001808
29093	208	8240DB001816
29094	208	8240DB006171
29095	208	8240DB004974
29096	208	8240DB004976
29097	208	8240DB007126
29098	208	8240DB007124
29099	208	8240DB007343
29100	208	8240DB007318
29101	208	8240DB004980
29102	208	8240DB002289
29103	208	8240DB001822
29104	208	8240DB004994
29105	208	8240DB004995
29106	208	8240DB004996
29107	208	8240DB001826
29108	208	8240DB001827
29109	208	8240DB007382
29110	208	8240DB007381
29111	208	8240DB004742
29112	208	8240DB004743
29113	209	8240DB004743
29114	209	8240DB004742
29115	209	8240DB007381
29116	209	8240DB007382
29117	209	8240DB001827
29118	209	8240DB001826
29119	209	8240DB004996
29120	209	8240DB004995
29121	209	8240DB004994
29122	209	8240DB001822
29123	209	8240DB002289
29124	209	8240DB004980
29125	209	8240DB007318
29126	209	8240DB007343
29127	209	8240DB007124
29128	209	8240DB007126
29129	209	8240DB004976
29130	209	8240DB004974
29131	209	8240DB006171
29132	209	8240DB001816
29133	209	8240DB001808
29134	209	8240DB007167
29135	209	8220DB001807
29136	209	8220DB001666
29137	209	8220DB001665
29138	209	8220DB001664
29139	209	8220DB001662
29140	209	8220DB001661
29141	209	8220DB001660
29142	209	8220DB001806
29143	209	8220DB001795
29144	209	8220DB001802
29145	209	8220DB000060
29146	209	8220DB000059
29147	209	8220DB000058
29148	209	8220DB000057
29149	209	8220DB000796
29150	209	8220DB000795
29151	209	8220DB000192
29152	209	8220DB000002
29153	209	8220DB000274
29154	209	8220DB000793
29155	209	8220DB000786
29156	209	8220DB000785
29157	209	8220DB000784
29158	209	8220DB000783
29159	209	8220DB007333
29160	210	8220DB004495
29161	210	8220DB001278
29162	210	8220DB001282
29163	210	8220DB004456
29164	210	8220DB001284
29165	210	8220DB001285
29166	210	8220DB001286
29167	210	8220DB001288
29168	210	8220DB001289
29169	210	8220DB001360
29170	210	8220DB001362
29171	210	8220DB001363
29172	210	8220DB001364
29173	210	8220DB001365
29174	210	8220DB001366
29175	210	8220DB001367
29176	210	8220DB001369
29177	210	8220DB001370
29178	210	8220DB001371
29179	210	8220DB001372
29180	210	8220DB001373
29181	210	8220DB001374
29182	211	8220DB001374
29183	211	8220DB001373
29184	211	8220DB001372
29185	211	8220DB001371
29186	211	8220DB001370
29187	211	8220DB001369
29188	211	8220DB001367
29189	211	8220DB001366
29190	211	8220DB001365
29191	211	8220DB001364
29192	211	8220DB001363
29193	211	8220DB001362
29194	211	8220DB001360
29195	211	8220DB001289
29196	211	8220DB001288
29197	211	8220DB001286
29198	211	8220DB001285
29199	211	8220DB001284
29200	211	8220DB004456
29201	211	8220DB001282
29202	211	8220DB001278
29203	211	8220DB004495
29204	212	8220DB004495
29205	212	8220DB004720
29206	212	8220DB001443
29207	212	8220DB001444
29208	212	8220DB001445
29209	212	8220DB004407
29210	212	8220DB002637
29211	212	8220DB001956
29212	212	8230DB002109
29213	212	8230DB003427
29214	212	8230DB003428
29215	212	8230DB003432
29216	212	8230DB003434
29217	212	8230DB003453
29218	212	8230DB003437
29219	212	8230DB003440
29220	212	8230DB003441
29221	212	8230DB004560
29222	213	8230DB004560
29223	213	8230DB003441
29224	213	8230DB003440
29225	213	8230DB003437
29226	213	8230DB003453
29227	213	8230DB003434
29228	213	8230DB003432
29229	213	8230DB003428
29230	213	8230DB003427
29231	213	8230DB002109
29232	213	8220DB001956
29233	213	8220DB002637
29234	213	8220DB004407
29235	213	8220DB001445
29236	213	8220DB001444
29237	213	8220DB001443
29238	213	8220DB004720
29239	213	8220DB004495
29240	214	8250DB003283
29241	214	8250DB003284
29242	214	8250DB003310
29243	214	8250DB003481
29244	214	8250DB003482
29245	214	8250DB003483
29246	214	8250DB003484
29247	214	8250DB003485
29248	214	8250DB003486
29249	214	8250DB003487
29250	214	8250DB007415
29251	214	8250DB007416
29252	214	8250DB007325
29253	214	8250DB003317
29254	214	8250DB003318
29255	214	8250DB003320
29256	214	8250DB002064
29257	214	8250DB002065
29258	214	8250DB004727
29259	214	8250DB004728
29260	214	8250DB000461
29261	214	8250DB002068
29262	214	8250DB002069
29263	214	8250DB002070
29264	214	8250DB002084
29265	214	8250DB000768
29266	214	8220DB000769
29267	214	8220DB000770
29268	214	8220DB000771
29269	214	8220DB000772
29270	214	8220DB000773
29271	214	8220DB000774
29272	214	8220DB000775
29273	214	8220DB000776
29274	214	8220DB000777
29275	214	8220DB000906
29276	214	8220DB000907
29277	214	8220DB000908
29278	214	8220DB000909
29279	214	8220DB000786
29280	214	8220DB000792
29281	214	8220DB007586
29282	214	8220DB007587
29283	215	8220DB007587
29284	215	8220DB007586
29285	215	8220DB000792
29286	215	8220DB000786
29287	215	8220DB000909
29288	215	8220DB000908
29289	215	8220DB000907
29290	215	8220DB000906
29291	215	8220DB000777
29292	215	8220DB000776
29293	215	8220DB000775
29294	215	8220DB000774
29295	215	8220DB000773
29296	215	8220DB000772
29297	215	8220DB000771
29298	215	8220DB000770
29299	215	8220DB000769
29300	215	8250DB000768
29301	215	8250DB002084
29302	215	8250DB002070
29303	215	8250DB002069
29304	215	8250DB002068
29305	215	8250DB000461
29306	215	8250DB004728
29307	215	8250DB004727
29308	215	8250DB002065
29309	215	8250DB002064
29310	215	8250DB003320
29311	215	8250DB003318
29312	215	8250DB003317
29313	215	8250DB007325
29314	215	8250DB007416
29315	215	8250DB007415
29316	215	8250DB003487
29317	215	8250DB003486
29318	215	8250DB003485
29319	215	8250DB003484
29320	215	8250DB003483
29321	215	8250DB003482
29322	215	8250DB003481
29323	215	8250DB003310
29324	215	8250DB003284
29325	215	8250DB003283
29326	216	8240DB003088
29327	216	8240DB003704
29328	216	8240DB003705
29329	216	8240DB000733
29330	216	8240DB006015
29331	216	8240DB005029
29332	216	8240DB005028
29333	216	8240DB007115
29334	216	8240DB006310
29335	216	8240DB006311
29336	216	8220DB004495
29337	216	8220DB002809
29338	216	8220DB002810
29339	216	8220DB000842
29340	216	8220DB000845
29341	216	8220DB000846
29342	216	8220DB000847
29343	216	8220DB000848
29344	216	8220DB002795
29345	216	8220DB000756
29346	216	8220DB000757
29347	216	8220DB000758
29348	216	8220DB000759
29349	216	8220DB000760
29350	216	8220DB000762
29351	216	8220DB000763
29352	217	8220DB000763
29353	217	8220DB000762
29354	217	8220DB000760
29355	217	8220DB000759
29356	217	8220DB000758
29357	217	8220DB000757
29358	217	8220DB000756
29359	217	8220DB002795
29360	217	8220DB000848
29361	217	8220DB000847
29362	217	8220DB000846
29363	217	8220DB000845
29364	217	8220DB000842
29365	217	8220DB002810
29366	217	8220DB002809
29367	217	8220DB004495
29368	217	8240DB006311
29369	217	8240DB006310
29370	217	8240DB007115
29371	217	8240DB005028
29372	217	8240DB005029
29373	217	8240DB006015
29374	217	8240DB000733
29375	217	8240DB003705
29376	217	8240DB003704
29377	217	8240DB003088
29378	218	8350DB004108
29379	218	8350DB004109
29380	218	8350DB004110
29381	218	8350DB004111
29382	218	8350DB004112
29383	218	8350DB004113
29384	218	8350DB004095
29385	218	8350DB004192
29386	218	8350DB004194
29387	218	8350DB004196
29388	218	8350DB004422
29389	218	8350DB007369
29390	218	8350DB007295
29391	218	8350DB004199
29392	218	8350DB004416
29393	218	8350DB004417
29394	218	8350DB004419
29395	218	8350DB004420
29396	218	8350DB004421
29397	218	8350DB002113
29398	218	8350DB004131
29399	218	8350DB007294
29400	218	8350DB004156
29401	219	8350DB004156
29402	219	8350DB007294
29403	219	8350DB004131
29404	219	8350DB002113
29405	219	8350DB004421
29406	219	8350DB004420
29407	219	8350DB004419
29408	219	8350DB004417
29409	219	8350DB004416
29410	219	8350DB004199
29411	219	8350DB007295
29412	219	8350DB007369
29413	219	8350DB004422
29414	219	8350DB004196
29415	219	8350DB004194
29416	219	8350DB004192
29417	219	8350DB004095
29418	219	8350DB004113
29419	219	8350DB004112
29420	219	8350DB004111
29421	219	8350DB004110
29422	219	8350DB004109
29423	219	8350DB004108
29424	220	8250DB006041
29425	220	8250DB007716
29426	220	8250DB007717
29427	220	8250DB002829
29428	220	8250DB002830
29429	220	8250DB002831
29430	220	8250DB002832
29431	220	8250DB002833
29432	220	8250DB006006
29433	220	8250DB003493
29434	220	8250DB003494
29435	220	8250DB003495
29436	220	8250DB003496
29437	220	8250DB003497
29438	220	8250DB003498
29439	220	8250DB003499
29440	220	8250DB003500
29441	220	8250DB003501
29442	220	8250DB003502
29443	220	8250DB003503
29444	220	8250DB003504
29445	220	8250DB003505
29446	220	8250DB003506
29447	220	8250DB003507
29448	220	8250DB003508
29449	220	8250DB003510
29450	220	8250DB003512
29451	221	8250DB003512
29452	221	8250DB003510
29453	221	8250DB003508
29454	221	8250DB003507
29455	221	8250DB003506
29456	221	8250DB003505
29457	221	8250DB003504
29458	221	8250DB003503
29459	221	8250DB003502
29460	221	8250DB003501
29461	221	8250DB003500
29462	221	8250DB003499
29463	221	8250DB003498
29464	221	8250DB003497
29465	221	8250DB003496
29466	221	8250DB003495
29467	221	8250DB003494
29468	221	8250DB003493
29469	221	8250DB006006
29470	221	8250DB002833
29471	221	8250DB002832
29472	221	8250DB002831
29473	221	8250DB002830
29474	221	8250DB002829
29475	221	8250DB007717
29476	221	8250DB007716
29477	221	8250DB006041
29478	222	8220DB000342
29479	222	8220DB004495
29480	222	8220DB000746
29481	222	8220DB000844
29482	222	8220DB000846
29483	222	8220DB000848
29484	222	8220DB000758
29485	222	8220DB000760
29486	222	8250DB002007
29487	222	8250DB004571
29488	222	8250DB002014
29489	222	8250DB002016
29490	222	8250DB002017
29491	222	8250DB007362
29492	222	8250DB003134
29493	222	8250DB003135
29494	222	8350DB007363
29495	222	8350DB004588
29496	222	8350DB004589
29497	222	8350DB007364
29498	222	8350DB007365
29499	222	8350DB004210
29500	222	8350DB004211
29501	222	8350DB004215
29502	222	8350DB004216
29503	222	8350DB004222
29504	222	8350DB004224
29505	222	8350DB004225
29506	222	8350DB007462
29507	222	8350DB007461
29508	222	8350DB004230
29509	222	8350DB004248
29510	222	8350DB004252
29511	222	8350DB006137
29512	223	8350DB006137
29513	223	8350DB004252
29514	223	8350DB004248
29515	223	8350DB004230
29516	223	8350DB007461
29517	223	8350DB007462
29518	223	8350DB004225
29519	223	8350DB004224
29520	223	8350DB004222
29521	223	8350DB004216
29522	223	8350DB004215
29523	223	8350DB004211
29524	223	8350DB004210
29525	223	8350DB007365
29526	223	8350DB007364
29527	223	8350DB004589
29528	223	8350DB004588
29529	223	8350DB007363
29530	223	8250DB003135
29531	223	8250DB003134
29532	223	8250DB007362
29533	223	8250DB002017
29534	223	8250DB002016
29535	223	8250DB002014
29536	223	8250DB004571
29537	223	8250DB002007
29538	223	8220DB000760
29539	223	8220DB000758
29540	223	8220DB000848
29541	223	8220DB000846
29542	223	8220DB000844
29543	223	8220DB000746
29544	223	8220DB004495
29545	223	8220DB000342
29546	224	8350DB004533
29547	224	8350DB004844
29548	224	8350DB004177
29549	224	8350DB004178
29550	224	8350DB004142
29551	224	8350DB004143
29552	224	8350DB004144
29553	224	8350DB005088
29554	224	8350DB005089
29555	224	8350DB004176
29556	224	8350DB004149
29557	224	8350DB003045
29558	224	8350DB004150
29559	224	8350DB004151
29560	224	8350DB002997
29561	224	8350DB004156
29562	224	8350DB004169
29563	224	8350DB004170
29564	224	8350DB004153
29565	224	8350DB004154
29566	224	8350DB004416
29567	224	8350DB004201
29568	224	8250DB004202
29569	224	8250DB004203
29570	224	8250DB005090
29571	224	8250DB004204
29572	224	8250DB004205
29573	224	8250DB004206
29574	224	8250DB003140
29575	224	8250DB003545
29576	224	8250DB003546
29577	224	8250DB003551
29578	224	8250DB003547
29579	224	8250DB003548
29580	224	8250DB003552
29581	224	8250DB003553
29582	224	8250DB003554
29583	224	8250DB003555
29584	224	8250DB003556
29585	224	8250DB003557
29586	224	8250DB003560
29587	224	8250DB007323
29588	224	8250DB003561
29589	224	8250DB003225
29590	224	8250DB003226
29591	224	8250DB003227
29592	224	8250DB003228
29593	224	8250DB003229
29594	224	8250DB007472
29595	224	8250DB003230
29596	224	8250DB003231
29597	224	8250DB003246
29598	224	8250DB003247
29599	224	8250DB007056
29600	224	8250DB003248
29601	224	8250DB003343
29602	224	8250DB003236
29603	224	8250DB003237
29604	224	8250DB003238
29605	224	8250DB003239
29606	224	8250DB003240
29607	224	8250DB003068
29608	224	8250DB003069
29609	224	8250DB003070
29610	225	8250DB003070
29611	225	8250DB003069
29612	225	8250DB003068
29613	225	8250DB003240
29614	225	8250DB003239
29615	225	8250DB003238
29616	225	8250DB003237
29617	225	8250DB003236
29618	225	8250DB003343
29619	225	8250DB003248
29620	225	8250DB007056
29621	225	8250DB003247
29622	225	8250DB003246
29623	225	8250DB003231
29624	225	8250DB003230
29625	225	8250DB007472
29626	225	8250DB003229
29627	225	8250DB003228
29628	225	8250DB003227
29629	225	8250DB003226
29630	225	8250DB003225
29631	225	8250DB003561
29632	225	8250DB007323
29633	225	8250DB003560
29634	225	8250DB003557
29635	225	8250DB003556
29636	225	8250DB003555
29637	225	8250DB003554
29638	225	8250DB003553
29639	225	8250DB003552
29640	225	8250DB003548
29641	225	8250DB003547
29642	225	8250DB003551
29643	225	8250DB003546
29644	225	8250DB003545
29645	225	8250DB003140
29646	225	8250DB004206
29647	225	8250DB004205
29648	225	8250DB004204
29649	225	8250DB005090
29650	225	8250DB004203
29651	225	8250DB004202
29652	225	8350DB004201
29653	225	8350DB004416
29654	225	8350DB004154
29655	225	8350DB004153
29656	225	8350DB004170
29657	225	8350DB004169
29658	225	8350DB004156
29659	225	8350DB002997
29660	225	8350DB004151
29661	225	8350DB004150
29662	225	8350DB003045
29663	225	8350DB004149
29664	225	8350DB004176
29665	225	8350DB005089
29666	225	8350DB005088
29667	225	8350DB004144
29668	225	8350DB004143
29669	225	8350DB004142
29670	225	8350DB004178
29671	225	8350DB004177
29672	225	8350DB004844
29673	225	8350DB004533
29674	226	8220DB000956
29675	226	8240DB000957
29676	226	8220DB000958
29677	226	8220DB000959
29678	226	8220DB000960
29679	226	8220DB000961
29680	226	8220DB000962
29681	226	8220DB000963
29682	226	8220DB000964
29683	226	8220DB000965
29684	226	8220DB000966
29685	226	8220DB000967
29686	226	8220DB000968
29687	226	8220DB001252
29688	226	8220DB001228
29689	226	8220DB001244
29690	226	8220DB004597
29691	226	8220DB001246
29692	226	8220DB001229
29693	226	8220DB005174
29694	226	8220DB006078
29695	226	8220DB007112
29696	226	8220DB000972
29697	226	8240DB000973
29698	226	8240DB000974
29699	226	8240DB000975
29700	226	8240DB005055
29701	226	8240DB000976
29702	226	8220DB000127
29703	226	8220DB000102
29704	226	8220DB006239
29705	226	8220DB000104
29706	226	8220DB006241
29707	226	8220DB000105
29708	226	8220DB004365
29709	226	8220DB004367
29710	226	8240DB006219
29711	226	8240DB006229
29712	226	8240DB006364
29713	226	8220DB001558
29714	226	8220DB002957
29715	226	8220DB002958
29716	226	8220DB004938
29717	226	8220DB007845
29718	227	8220DB007845
29719	227	8220DB004938
29720	227	8220DB002958
29721	227	8220DB002957
29722	227	8220DB001558
29723	227	8240DB006364
29724	227	8240DB006229
29725	227	8240DB006219
29726	227	8220DB004367
29727	227	8220DB004365
29728	227	8220DB000105
29729	227	8220DB006241
29730	227	8220DB000104
29731	227	8220DB006239
29732	227	8220DB000102
29733	227	8220DB000127
29734	227	8240DB000976
29735	227	8240DB005055
29736	227	8240DB000975
29737	227	8240DB000974
29738	227	8240DB000973
29739	227	8220DB000972
29740	227	8220DB007112
29741	227	8220DB006078
29742	227	8220DB005174
29743	227	8220DB001229
29744	227	8220DB001246
29745	227	8220DB004597
29746	227	8220DB001244
29747	227	8220DB001228
29748	227	8220DB001252
29749	227	8220DB000968
29750	227	8220DB000967
29751	227	8220DB000966
29752	227	8220DB000965
29753	227	8220DB000964
29754	227	8220DB000963
29755	227	8220DB000962
29756	227	8220DB000961
29757	227	8220DB000960
29758	227	8220DB000959
29759	227	8220DB000958
29760	227	8240DB000957
29761	227	8220DB000956
29762	228	8230DB004664
29763	228	8230DB002160
29764	228	8230DB004665
29765	228	8230DB004666
29766	228	8230DB004667
29767	228	8230DB004668
29768	228	8230DB003376
29769	228	8230DB003377
29770	228	8230DB003378
29771	228	8230DB003379
29772	228	8230DB004669
29773	228	8230DB002146
29774	228	8230DB002147
29775	228	8230DB002148
29776	228	8230DB002149
29777	228	8230DB002150
29778	228	8230DB002151
29779	228	8230DB002152
29780	228	8230DB002153
29781	228	8230DB002154
29782	228	8230DB006245
29783	228	8230DB006013
29784	228	8230DB006247
29785	228	8230DB002681
29786	228	8230DB004691
29787	228	8230DB004796
29788	228	8230DB004690
29789	228	8230DB004411
29790	228	8230DB002239
29791	228	8230DB002241
29792	228	8230DB002242
29793	228	8220DB007435
29794	228	8220DB002722
29795	228	8220DB004413
29796	228	8220DB001476
29797	228	8220DB007453
29798	228	8220DB001478
29799	228	8220DB001479
29800	228	8220DB000315
29801	228	8220DB004495
29802	228	8220DB002809
29803	228	8220DB002810
29804	228	8220DB002811
29805	228	8220DB000749
29806	228	8220DB000750
29807	228	8220DB000751
29808	228	8220DB000752
29809	228	8220DB000753
29810	228	8220DB000754
29811	229	8220DB000754
29812	229	8220DB000753
29813	229	8220DB000752
29814	229	8220DB000751
29815	229	8220DB000750
29816	229	8220DB000749
29817	229	8220DB002811
29818	229	8220DB002810
29819	229	8220DB002809
29820	229	8220DB004495
29821	229	8220DB000315
29822	229	8220DB001479
29823	229	8220DB001478
29824	229	8220DB007453
29825	229	8220DB001476
29826	229	8220DB004413
29827	229	8220DB002722
29828	229	8220DB007435
29829	229	8230DB002242
29830	229	8230DB002241
29831	229	8230DB002239
29832	229	8230DB004411
29833	229	8230DB004690
29834	229	8230DB004796
29835	229	8230DB004691
29836	229	8230DB002681
29837	229	8230DB006247
29838	229	8230DB006013
29839	229	8230DB006245
29840	229	8230DB002154
29841	229	8230DB002153
29842	229	8230DB002152
29843	229	8230DB002151
29844	229	8230DB002150
29845	229	8230DB002149
29846	229	8230DB002148
29847	229	8230DB002147
29848	229	8230DB002146
29849	229	8230DB004669
29850	229	8230DB003379
29851	229	8230DB003378
29852	229	8230DB003377
29853	229	8230DB003376
29854	229	8230DB004668
29855	229	8230DB004667
29856	229	8230DB004666
29857	229	8230DB004665
29858	229	8230DB002160
29859	229	8230DB004664
29860	230	8230DB004713
29861	230	8230DB004714
29862	230	8230DB004960
29863	230	8230DB004932
29864	230	8230DB004933
29865	230	8230DB002590
29866	230	8230DB002591
29867	230	8230DB002592
29868	230	8230DB002357
29869	230	8230DB002566
29870	230	8230DB002567
29871	230	8230DB002568
29872	230	8230DB002569
29873	230	8230DB002570
29874	230	8230DB007222
29875	230	8230DB006170
29876	230	8230DB005023
29877	230	8230DB005024
29878	230	8230DB005161
29879	230	8230DB005162
29880	230	8230DB004880
29881	230	8230DB002606
29882	230	8230DB002607
29883	230	8230DB002608
29884	230	8230DB002609
29885	230	8230DB002610
29886	230	8230DB002554
29887	230	8230DB002425
29888	230	8230DB002426
29889	230	8230DB002427
29890	230	8230DB002428
29891	230	8230DB002429
29892	230	8230DB002430
29893	230	8230DB002371
29894	230	8230DB002372
29895	230	8230DB002373
29896	230	8220DB001424
29897	230	8220DB002190
29898	230	8220DB004434
29899	230	8220DB002379
29900	230	8220DB002380
29901	230	8220DB002382
29902	230	8220DB005099
29903	230	8220DB002383
29904	230	8220DB002002
29905	230	8220DB001358
29906	230	8220DB005192
29907	230	8220DB000350
29908	230	8220DB002809
29909	230	8220DB002810
29910	230	8220DB000750
29911	230	8220DB000751
29912	230	8220DB000752
29913	230	8220DB000753
29914	230	8220DB000754
29915	230	8220DB000755
29916	230	8220DB000756
29917	230	8220DB000757
29918	230	8220DB000758
29919	230	8220DB000759
29920	230	8220DB000760
29921	230	8220DB000761
29922	230	8220DB000762
29923	230	8220DB000763
29924	231	8220DB000763
29925	231	8220DB000762
29926	231	8220DB000761
29927	231	8220DB000760
29928	231	8220DB000759
29929	231	8220DB000758
29930	231	8220DB000757
29931	231	8220DB000756
29932	231	8220DB000755
29933	231	8220DB000754
29934	231	8220DB000753
29935	231	8220DB000752
29936	231	8220DB000751
29937	231	8220DB000750
29938	231	8220DB002810
29939	231	8220DB002809
29940	231	8220DB000350
29941	231	8220DB005192
29942	231	8220DB001358
29943	231	8220DB002002
29944	231	8220DB002383
29945	231	8220DB005099
29946	231	8220DB002382
29947	231	8220DB002380
29948	231	8220DB002379
29949	231	8220DB004434
29950	231	8220DB002190
29951	231	8220DB001424
29952	231	8230DB002373
29953	231	8230DB002372
29954	231	8230DB002371
29955	231	8230DB002430
29956	231	8230DB002429
29957	231	8230DB002428
29958	231	8230DB002427
29959	231	8230DB002426
29960	231	8230DB002425
29961	231	8230DB002554
29962	231	8230DB002610
29963	231	8230DB002609
29964	231	8230DB002608
29965	231	8230DB002607
29966	231	8230DB002606
29967	231	8230DB004880
29968	231	8230DB005162
29969	231	8230DB005161
29970	231	8230DB005024
29971	231	8230DB005023
29972	231	8230DB006170
29973	231	8230DB007222
29974	231	8230DB002570
29975	231	8230DB002569
29976	231	8230DB002568
29977	231	8230DB002567
29978	231	8230DB002566
29979	231	8230DB002357
29980	231	8230DB002592
29981	231	8230DB002591
29982	231	8230DB002590
29983	231	8230DB004933
29984	231	8230DB004932
29985	231	8230DB004960
29986	231	8230DB004714
29987	231	8230DB004713
29988	232	8230DB002955
29989	232	8230DB007067
29990	232	8230DB002956
29991	232	8230DB002965
29992	232	8230DB002967
29993	232	8230DB002968
29994	232	8250DB002969
29995	232	8250DB002970
29996	232	8250DB004988
29997	232	8250DB002853
29998	232	8250DB002854
29999	232	8250DB002855
30000	232	8250DB002856
30001	232	8250DB002857
30002	232	8250DB002858
30003	232	8250DB002859
30004	232	8250DB002860
30005	232	8250DB002861
30006	232	8250DB002829
30007	232	8250DB002830
30008	232	8250DB002831
30009	232	8250DB002832
30010	232	8250DB004349
30011	232	8250DB003184
30012	232	8250DB000449
30013	232	8250DB000450
30014	232	8250DB003181
30015	232	8250DB000451
30016	232	8250DB000447
30017	232	8250DB005045
30018	232	8250DB004460
30019	232	8250DB000453
30020	232	8250DB004477
30021	232	8250DB003321
30022	232	8250DB004727
30023	232	8250DB004728
30024	232	8250DB000461
30025	232	8250DB002068
30026	232	8250DB002069
30027	232	8250DB002070
30028	232	8250DB002084
30029	232	8250DB000768
30030	232	8220DB000769
30031	232	8220DB000770
30032	232	8220DB000771
30033	232	8220DB000772
30034	232	8220DB000773
30035	232	8220DB000774
30036	232	8220DB000775
30037	232	8220DB000776
30038	232	8220DB000777
30039	232	8220DB000906
30040	232	8220DB000907
30041	232	8220DB000908
30042	232	8220DB000909
30043	232	8220DB000786
30044	232	8220DB000792
30045	232	8220DB007586
30046	232	8220DB007587
30047	232	8220DB007588
30048	232	8220DB000281
30049	233	8220DB000281
30050	233	8220DB007588
30051	233	8220DB007587
30052	233	8220DB007586
30053	233	8220DB000792
30054	233	8220DB000786
30055	233	8220DB000909
30056	233	8220DB000908
30057	233	8220DB000907
30058	233	8220DB000906
30059	233	8220DB000777
30060	233	8220DB000776
30061	233	8220DB000775
30062	233	8220DB000774
30063	233	8220DB000773
30064	233	8220DB000772
30065	233	8220DB000771
30066	233	8220DB000770
30067	233	8220DB000769
30068	233	8250DB000768
30069	233	8250DB002084
30070	233	8250DB002070
30071	233	8250DB002069
30072	233	8250DB002068
30073	233	8250DB000461
30074	233	8250DB004728
30075	233	8250DB004727
30076	233	8250DB003321
30077	233	8250DB004477
30078	233	8250DB000453
30079	233	8250DB004460
30080	233	8250DB005045
30081	233	8250DB000447
30082	233	8250DB000451
30083	233	8250DB003181
30084	233	8250DB000450
30085	233	8250DB000449
30086	233	8250DB003184
30087	233	8250DB004349
30088	233	8250DB002832
30089	233	8250DB002831
30090	233	8250DB002830
30091	233	8250DB002829
30092	233	8250DB002861
30093	233	8250DB002860
30094	233	8250DB002859
30095	233	8250DB002858
30096	233	8250DB002857
30097	233	8250DB002856
30098	233	8250DB002855
30099	233	8250DB002854
30100	233	8250DB002853
30101	233	8250DB004988
30102	233	8250DB002970
30103	233	8250DB002969
30104	233	8230DB002968
30105	233	8230DB002967
30106	233	8230DB002965
30107	233	8230DB002956
30108	233	8230DB007067
30109	233	8230DB002955
30110	234	8250DB003085
30111	234	8250DB003034
30112	234	8250DB003114
30113	234	8250DB004353
30114	234	8250DB004355
30115	234	8250DB004354
30116	234	8250DB003196
30117	234	8250DB003345
30118	234	8250DB004727
30119	234	8250DB004728
30120	234	8250DB000461
30121	234	8250DB002068
30122	234	8250DB002069
30123	234	8250DB002070
30124	234	8250DB002084
30125	234	8250DB000768
30126	234	8220DB000769
30127	234	8220DB000770
30128	234	8220DB000771
30129	234	8220DB000772
30130	234	8220DB000773
30131	234	8220DB000774
30132	234	8220DB000775
30133	234	8220DB000776
30134	234	8220DB000777
30135	234	8220DB000906
30136	234	8220DB000907
30137	234	8220DB000908
30138	234	8220DB000909
30139	234	8220DB000786
30140	234	8220DB000792
30141	234	8220DB000320
30142	234	8220DB000278
30143	234	8220DB000002
30144	234	8220DB004726
30145	234	8220DB007555
30146	235	8220DB007555
30147	235	8220DB004726
30148	235	8220DB000002
30149	235	8220DB000278
30150	235	8220DB000320
30151	235	8220DB000792
30152	235	8220DB000786
30153	235	8220DB000909
30154	235	8220DB000908
30155	235	8220DB000907
30156	235	8220DB000906
30157	235	8220DB000777
30158	235	8220DB000776
30159	235	8220DB000775
30160	235	8220DB000774
30161	235	8220DB000773
30162	235	8220DB000772
30163	235	8220DB000771
30164	235	8220DB000770
30165	235	8220DB000769
30166	235	8250DB000768
30167	235	8250DB002084
30168	235	8250DB002070
30169	235	8250DB002069
30170	235	8250DB002068
30171	235	8250DB000461
30172	235	8250DB004728
30173	235	8250DB004727
30174	235	8250DB003345
30175	235	8250DB003196
30176	235	8250DB004354
30177	235	8250DB004355
30178	235	8250DB004353
30179	235	8250DB003114
30180	235	8250DB003034
30181	235	8250DB003085
30182	236	8220DB000288
30183	236	8220DB001171
30184	236	8220DB001172
30185	236	8220DB001173
30186	236	8220DB001174
30187	236	8220DB001175
30188	236	8220DB000015
30189	236	8220DB000017
30190	236	8220DB000018
30191	236	8220DB000019
30192	236	8220DB000021
30193	236	8220DB007602
30194	236	8220DB000085
30195	236	8220DB000203
30196	236	8220DB000204
30197	236	8220DB000205
30198	236	8220DB001620
30199	236	8220DB000220
30200	236	8240DB001622
30201	236	8240DB001623
30202	236	8240DB001624
30203	236	8240DB001625
30204	236	8240DB001626
30205	236	8240DB001627
30206	236	8240DB001628
30207	236	8240DB001629
30208	236	8240DB001630
30209	236	8240DB003670
30210	236	8240DB003671
30211	236	8240DB003672
30212	236	8240DB003674
30213	236	8240DB003675
30214	236	8240DB003676
30215	236	8240DB005073
30216	236	8240DB005074
30217	237	8240DB005074
30218	237	8240DB005073
30219	237	8240DB003676
30220	237	8240DB003675
30221	237	8240DB003674
30222	237	8240DB003672
30223	237	8240DB003671
30224	237	8240DB003670
30225	237	8240DB001630
30226	237	8240DB001629
30227	237	8240DB001628
30228	237	8240DB001627
30229	237	8240DB001626
30230	237	8240DB001625
30231	237	8240DB001624
30232	237	8240DB001623
30233	237	8240DB001622
30234	237	8220DB000220
30235	237	8220DB001620
30236	237	8220DB000205
30237	237	8220DB000204
30238	237	8220DB000203
30239	237	8220DB000085
30240	237	8220DB007602
30241	237	8220DB000021
30242	237	8220DB000019
30243	237	8220DB000018
30244	237	8220DB000017
30245	237	8220DB000015
30246	237	8220DB001175
30247	237	8220DB001174
30248	237	8220DB001173
30249	237	8220DB001172
30250	237	8220DB001171
30251	237	8220DB000288
30252	238	8240DB003640
30253	238	8240DB003574
30254	238	8240DB003641
30255	238	8240DB003642
30256	238	8240DB003643
30257	238	8240DB003583
30258	238	8240DB003584
30259	238	8240DB003585
30260	238	8240DB003587
30261	238	8240DB003588
30262	238	8240DB003589
30263	238	8240DB003593
30264	238	8240DB003594
30265	238	8240DB003595
30266	238	8240DB003596
30267	238	8240DB003597
30268	238	8240DB003598
30269	238	8240DB004465
30270	238	8240DB000944
30271	238	8240DB000945
30272	238	8240DB000947
30273	238	8240DB000948
30274	238	8240DB007725
30275	238	8240DB000928
30276	238	8240DB000588
30277	238	8240DB000590
30278	238	8220DB001729
30279	238	8220DB001731
30280	238	8220DB001738
30281	238	8220DB000614
30282	238	8220DB000675
30283	238	8220DB000621
30284	238	8220DB004495
30285	238	8220DB002809
30286	238	8220DB002810
30287	238	8220DB000842
30288	238	8220DB000846
30289	238	8220DB000848
30290	238	8220DB000759
30291	238	8220DB000760
30292	238	8220DB000761
30293	238	8220DB000762
30294	238	8220DB000763
30295	239	8220DB000763
30296	239	8220DB000762
30297	239	8220DB000761
30298	239	8220DB000760
30299	239	8220DB000759
30300	239	8220DB000848
30301	239	8220DB000846
30302	239	8220DB000842
30303	239	8220DB002810
30304	239	8220DB002809
30305	239	8220DB004495
30306	239	8220DB000621
30307	239	8220DB000675
30308	239	8220DB000614
30309	239	8220DB001738
30310	239	8220DB001731
30311	239	8220DB001729
30312	239	8240DB000590
30313	239	8240DB000588
30314	239	8240DB000928
30315	239	8240DB007725
30316	239	8240DB000948
30317	239	8240DB000947
30318	239	8240DB000945
30319	239	8240DB000944
30320	239	8240DB004465
30321	239	8240DB003598
30322	239	8240DB003597
30323	239	8240DB003596
30324	239	8240DB003595
30325	239	8240DB003594
30326	239	8240DB003593
30327	239	8240DB003589
30328	239	8240DB003588
30329	239	8240DB003587
30330	239	8240DB003585
30331	239	8240DB003584
30332	239	8240DB003583
30333	239	8240DB003643
30334	239	8240DB003642
30335	239	8240DB003641
30336	239	8240DB003574
30337	239	8240DB003640
30338	240	8220DB004595
30339	240	8220DB004596
30340	240	8220DB004563
30341	240	8220DB001218
30342	240	8220DB001258
30343	240	8220DB001259
30344	240	8220DB001260
30345	240	8220DB006130
30346	240	8220DB001262
30347	240	8220DB004692
30348	240	8220DB001245
30349	240	8220DB004693
30350	240	8220DB001254
30351	240	8220DB001255
30352	240	8220DB001256
30353	240	8220DB004694
30354	240	8220DB001249
30355	240	8220DB001247
30356	240	8220DB001248
30357	240	8220DB001273
30358	240	8220DB001274
30359	240	8220DB001275
30360	240	8220DB001276
30361	240	8220DB001277
30362	240	8220DB001219
30363	240	8220DB001220
30364	240	8220DB001221
30365	240	8220DB000664
30366	240	8220DB000614
30367	240	8220DB004415
30368	240	8220DB000302
30369	240	8220DB004495
30370	240	8220DB002809
30371	240	8220DB000408
30372	240	8220DB000409
30373	240	8220DB000411
30374	240	8220DB000414
30375	240	8220DB000416
30376	240	8220DB000417
30377	240	8220DB000418
30378	240	8220DB000419
30379	240	8220DB000420
30380	240	8220DB002088
30381	240	8220DB002089
30382	240	8220DB000763
30383	241	8220DB000763
30384	241	8220DB002089
30385	241	8220DB002088
30386	241	8220DB000420
30387	241	8220DB000419
30388	241	8220DB000418
30389	241	8220DB000417
30390	241	8220DB000416
30391	241	8220DB000414
30392	241	8220DB000411
30393	241	8220DB000409
30394	241	8220DB000408
30395	241	8220DB002809
30396	241	8220DB004495
30397	241	8220DB000302
30398	241	8220DB004415
30399	241	8220DB000614
30400	241	8220DB000664
30401	241	8220DB001221
30402	241	8220DB001220
30403	241	8220DB001219
30404	241	8220DB001277
30405	241	8220DB001276
30406	241	8220DB001275
30407	241	8220DB001274
30408	241	8220DB001273
30409	241	8220DB001248
30410	241	8220DB001247
30411	241	8220DB001249
30412	241	8220DB004694
30413	241	8220DB001256
30414	241	8220DB001255
30415	241	8220DB001254
30416	241	8220DB004693
30417	241	8220DB001245
30418	241	8220DB004692
30419	241	8220DB001262
30420	241	8220DB006130
30421	241	8220DB001260
30422	241	8220DB001259
30423	241	8220DB001258
30424	241	8220DB001218
30425	241	8220DB004563
30426	241	8220DB004596
30427	241	8220DB004595
30428	242	8220DB000407
30429	242	8220DB002498
30430	242	8220DB002499
30431	242	8220DB002500
30432	242	8220DB002501
30433	242	8220DB007623
30434	242	8240DB007041
30435	242	8240DB003719
30436	242	8240DB003718
30437	242	8240DB007724
30438	242	8240DB003720
30439	242	8240DB007691
30440	242	8240DB003721
30441	242	8240DB003722
30442	242	8240DB005069
30443	242	8240DB003723
30444	242	8240DB003724
30445	242	8240DB003725
30446	242	8240DB003726
30447	242	8240DB007039
30448	242	8240DB007204
30449	242	8240DB003728
30450	242	8240DB003729
30451	242	8240DB003730
30452	243	8240DB003730
30453	243	8240DB003729
30454	243	8240DB003728
30455	243	8240DB007204
30456	243	8240DB007039
30457	243	8240DB003726
30458	243	8240DB003725
30459	243	8240DB003724
30460	243	8240DB003723
30461	243	8240DB005069
30462	243	8240DB003722
30463	243	8240DB003721
30464	243	8240DB007691
30465	243	8240DB003720
30466	243	8240DB007724
30467	243	8240DB003718
30468	243	8240DB003719
30469	243	8240DB007041
30470	243	8220DB007623
30471	243	8220DB002501
30472	243	8220DB002500
30473	243	8220DB002499
30474	243	8220DB002498
30475	243	8220DB000407
30476	244	8220DB002243
30477	244	8220DB002200
30478	244	8220DB005006
30479	244	8220DB005007
30480	244	8220DB002655
30481	244	8220DB002656
30482	244	8220DB002668
30483	244	8220DB002672
30484	244	8230DB002673
30485	244	8230DB002206
30486	244	8230DB004798
30487	244	8230DB004795
30488	244	8230DB002675
30489	244	8230DB002124
30490	244	8230DB002125
30491	244	8230DB002126
30492	244	8230DB002127
30493	244	8230DB002128
30494	244	8230DB002129
30495	244	8230DB002130
30496	244	8230DB002158
30497	244	8230DB002159
30498	244	8230DB004409
30499	244	8230DB002173
30500	244	8230DB002174
30501	244	8230DB003425
30502	244	8230DB002763
30503	244	8230DB002619
30504	244	8230DB002620
30505	244	8230DB002345
30506	244	8230DB005008
30507	244	8230DB004640
30508	244	8230DB004347
30509	245	8230DB004347
30510	245	8230DB004640
30511	245	8230DB005008
30512	245	8230DB002345
30513	245	8230DB002620
30514	245	8230DB002619
30515	245	8230DB002763
30516	245	8230DB003425
30517	245	8230DB002174
30518	245	8230DB002173
30519	245	8230DB004409
30520	245	8230DB002159
30521	245	8230DB002158
30522	245	8230DB002130
30523	245	8230DB002129
30524	245	8230DB002128
30525	245	8230DB002127
30526	245	8230DB002126
30527	245	8230DB002125
30528	245	8230DB002124
30529	245	8230DB002675
30530	245	8230DB004795
30531	245	8230DB004798
30532	245	8230DB002206
30533	245	8230DB002673
30534	245	8220DB002672
30535	245	8220DB002668
30536	245	8220DB002656
30537	245	8220DB002655
30538	245	8220DB005007
30539	245	8220DB005006
30540	245	8220DB002200
30541	245	8220DB002243
30542	246	8220DB007391
30543	246	8220DB000493
30544	246	8220DB000494
30545	246	8220DB000495
30546	246	8220DB000400
30547	246	8220DB007581
30548	246	8220DB001283
30549	246	8220DB007579
30550	246	8220DB001285
30551	246	8220DB001016
30552	246	8220DB001017
30553	246	8220DB001018
30554	246	8220DB001019
30555	246	8220DB001020
30556	246	8220DB001076
30557	246	8220DB001077
30558	246	8220DB001078
30559	246	8220DB001079
30560	246	8220DB001080
30561	246	8220DB001081
30562	246	8220DB002914
30563	246	8220DB002915
30564	246	8220DB002916
30565	246	8220DB002917
30566	246	8220DB002918
30567	246	8220DB001300
30568	246	8230DB001301
30569	246	8230DB001302
30570	246	8230DB001303
30571	246	8230DB005129
30572	246	8230DB005130
30573	246	8230DB001135
30574	246	8230DB007064
30575	246	8230DB007066
30576	246	8230DB002924
30577	246	8230DB002925
30578	246	8230DB002948
30579	246	8230DB002949
30580	246	8230DB002950
30581	246	8230DB002954
30582	247	8230DB002954
30583	247	8230DB002950
30584	247	8230DB002949
30585	247	8230DB002948
30586	247	8230DB002925
30587	247	8230DB002924
30588	247	8230DB007066
30589	247	8230DB007064
30590	247	8230DB001135
30591	247	8230DB005130
30592	247	8230DB005129
30593	247	8230DB001303
30594	247	8230DB001302
30595	247	8230DB001301
30596	247	8220DB001300
30597	247	8220DB002918
30598	247	8220DB002917
30599	247	8220DB002916
30600	247	8220DB002915
30601	247	8220DB002914
30602	247	8220DB001081
30603	247	8220DB001080
30604	247	8220DB001079
30605	247	8220DB001078
30606	247	8220DB001077
30607	247	8220DB001076
30608	247	8220DB001020
30609	247	8220DB001019
30610	247	8220DB001018
30611	247	8220DB001017
30612	247	8220DB001016
30613	247	8220DB001285
30614	247	8220DB007579
30615	247	8220DB001283
30616	247	8220DB007581
30617	247	8220DB000400
30618	247	8220DB000495
30619	247	8220DB000494
30620	247	8220DB000493
30621	247	8220DB007391
30622	248	8240DB007158
30623	248	8240DB007048
30624	248	8240DB007699
30625	248	8240DB007159
30626	248	8240DB007017
30627	248	8240DB007018
30628	248	8240DB007030
30629	248	8240DB006111
30630	248	8240DB006112
30631	248	8240DB006113
30632	248	8240DB004323
30633	248	8240DB001845
30634	248	8220DB001696
30635	248	8220DB001700
30636	248	8220DB001906
30637	248	8220DB001909
30638	248	8220DB001713
30639	248	8220DB001715
30640	248	8220DB001478
30641	248	8220DB000315
30642	248	8220DB004495
30643	248	8220DB002809
30644	248	8220DB002810
30645	248	8220DB000749
30646	248	8220DB000751
30647	248	8220DB000752
30648	249	8220DB000752
30649	249	8220DB000751
30650	249	8220DB000749
30651	249	8220DB002810
30652	249	8220DB002809
30653	249	8220DB004495
30654	249	8220DB000315
30655	249	8220DB001478
30656	249	8220DB001715
30657	249	8220DB001713
30658	249	8220DB001909
30659	249	8220DB001906
30660	249	8220DB001700
30661	249	8220DB001696
30662	249	8240DB001845
30663	249	8240DB004323
30664	249	8240DB006113
30665	249	8240DB006112
30666	249	8240DB006111
30667	249	8240DB007030
30668	249	8240DB007018
30669	249	8240DB007017
30670	249	8240DB007159
30671	249	8240DB007699
30672	249	8240DB007048
30673	249	8240DB007158
30674	250	8250DB000877
30675	250	8250DB000876
30676	250	8250DB003011
30677	250	8250DB002896
30678	250	8250DB002897
30679	250	8220DB001062
30680	250	8220DB001063
30681	250	8220DB001064
30682	250	8220DB001065
30683	250	8220DB001066
30684	250	8220DB001067
30685	250	8220DB001068
30686	250	8220DB001069
30687	250	8220DB001070
30688	250	8220DB001071
30689	250	8220DB004528
30690	250	8220DB001072
30691	250	8220DB007577
30692	250	8220DB001353
30693	250	8220DB001354
30694	250	8220DB007578
30695	250	8220DB007582
30696	250	8220DB000407
30697	250	8220DB002498
30698	250	8220DB002499
30699	250	8220DB002500
30700	250	8220DB002501
30701	250	8220DB007623
30702	250	8240DB006312
30703	250	8240DB007197
30704	250	8240DB007195
30705	250	8240DB003653
30706	250	8240DB006055
30707	250	8240DB001073
30708	250	8240DB003641
30709	250	8240DB003642
30710	250	8240DB003643
30711	250	8240DB003583
30712	250	8240DB003584
30713	250	8240DB003585
30714	250	8240DB003625
30715	250	8240DB003626
30716	250	8240DB003627
30717	250	8240DB003628
30718	250	8240DB006052
30719	250	8240DB003613
30720	250	8240DB003615
30721	251	8240DB003615
30722	251	8240DB003613
30723	251	8240DB006052
30724	251	8240DB003628
30725	251	8240DB003627
30726	251	8240DB003626
30727	251	8240DB003625
30728	251	8240DB003585
30729	251	8240DB003584
30730	251	8240DB003583
30731	251	8240DB003643
30732	251	8240DB003642
30733	251	8240DB003641
30734	251	8240DB001073
30735	251	8240DB006055
30736	251	8240DB003653
30737	251	8240DB007195
30738	251	8240DB007197
30739	251	8240DB006312
30740	251	8220DB007623
30741	251	8220DB002501
30742	251	8220DB002500
30743	251	8220DB002499
30744	251	8220DB002498
30745	251	8220DB000407
30746	251	8220DB007582
30747	251	8220DB007578
30748	251	8220DB001354
30749	251	8220DB001353
30750	251	8220DB007577
30751	251	8220DB001072
30752	251	8220DB004528
30753	251	8220DB001071
30754	251	8220DB001070
30755	251	8220DB001069
30756	251	8220DB001068
30757	251	8220DB001067
30758	251	8220DB001066
30759	251	8220DB001065
30760	251	8220DB001064
30761	251	8220DB001063
30762	251	8220DB001062
30763	251	8250DB002897
30764	251	8250DB002896
30765	251	8250DB003011
30766	251	8250DB000876
30767	251	8250DB000877
30768	252	8260DB007313
30769	252	8260DB006164
30770	252	8260DB007712
30771	252	8260DB006159
30772	252	8260DB006160
30773	252	8260DB006161
30774	252	8260DB003991
30775	252	8260DB07758
30776	252	8260DB003998
30777	252	8260DB003999
30778	252	8260DB004000
30779	252	8230DB004001
30780	252	8230DB007193
30781	252	8230DB007049
30782	252	8230DB002236
30783	252	8230DB002239
30784	252	8230DB002241
30785	252	8230DB002242
30786	252	8220DB007435
30787	252	8220DB002722
30788	252	8220DB004413
30789	252	8220DB001476
30790	252	8220DB007854
30791	252	8220DB007856
30792	252	8220DB007883
30793	252	8220DB000315
30794	252	8220DB007733
30795	252	8220DB007861
30796	252	8220DB002809
30797	252	8220DB002810
30798	252	8220DB002811
30799	252	8220DB000785
30800	253	8220DB000785
30801	253	8220DB002811
30802	253	8220DB002810
30803	253	8220DB002809
30804	253	8220DB007861
30805	253	8220DB007733
30806	253	8220DB000315
30807	253	8220DB007883
30808	253	8220DB007856
30809	253	8220DB007854
30810	253	8220DB001476
30811	253	8220DB004413
30812	253	8220DB002722
30813	253	8220DB007435
30814	253	8230DB002242
30815	253	8230DB002241
30816	253	8230DB002239
30817	253	8230DB002236
30818	253	8230DB007049
30819	253	8230DB007193
30820	253	8230DB004001
30821	253	8260DB004000
30822	253	8260DB003999
30823	253	8260DB003998
30824	253	8260DB07758
30825	253	8260DB003991
30826	253	8260DB006161
30827	253	8260DB006160
30828	253	8260DB006159
30829	253	8260DB007712
30830	253	8260DB006164
30831	253	8260DB007313
30832	254	8260DB003921
30833	254	8260DB003922
30834	254	8260DB003923
30835	254	8260DB007079
30836	254	8260DB007080
30837	254	8260DB007081
30838	254	8260DB007565
30839	254	8260DB007746
30840	254	8260DB007082
30841	254	8260DB007083
30842	254	8260DB007789
30843	254	8260DB007084
30844	254	8260DB007108
30845	254	8260DB003935
30846	254	8260DB003936
30847	254	8260DB007110
30848	254	8260DB003938
30849	254	8260DB003939
30850	254	8260DB003940
30851	254	8260DB003941
30852	254	8230DB003943
30853	254	8230DB003945
30854	254	8230DB003946
30855	254	8230DB004001
30856	254	8230DB007193
30857	254	8230DB007049
30858	254	8230DB002236
30859	254	8230DB002239
30860	254	8230DB002241
30861	254	8230DB002242
30862	254	8220DB007435
30863	254	8220DB002722
30864	254	8220DB004413
30865	254	8220DB001476
30866	254	8220DB007854
30867	254	8220DB007856
30868	254	8220DB007883
30869	254	8220DB000315
30870	254	8220DB007733
30871	254	8220DB007861
30872	254	8220DB002809
30873	254	8220DB002810
30874	254	8220DB002811
30875	254	8220DB000785
30876	254	8220DB000846
30877	254	8220DB000847
30878	254	8220DB000848
30879	254	8220DB002795
30880	254	8220DB000756
30881	254	8220DB000757
30882	254	8220DB000758
30883	254	8220DB000759
30884	254	8220DB000760
30885	254	8220DB000761
30886	254	8220DB000762
30887	254	8220DB000763
30888	255	8220DB000763
30889	255	8220DB000762
30890	255	8220DB000761
30891	255	8220DB000760
30892	255	8220DB000759
30893	255	8220DB000758
30894	255	8220DB000757
30895	255	8220DB000756
30896	255	8220DB002795
30897	255	8220DB000848
30898	255	8220DB000847
30899	255	8220DB000846
30900	255	8220DB000785
30901	255	8220DB002811
30902	255	8220DB002810
30903	255	8220DB002809
30904	255	8220DB007861
30905	255	8220DB007733
30906	255	8220DB000315
30907	255	8220DB007883
30908	255	8220DB007856
30909	255	8220DB007854
30910	255	8220DB001476
30911	255	8220DB004413
30912	255	8220DB002722
30913	255	8220DB007435
30914	255	8230DB002242
30915	255	8230DB002241
30916	255	8230DB002239
30917	255	8230DB002236
30918	255	8230DB007049
30919	255	8230DB007193
30920	255	8230DB004001
30921	255	8230DB003946
30922	255	8230DB003945
30923	255	8230DB003943
30924	255	8260DB003941
30925	255	8260DB003940
30926	255	8260DB003939
30927	255	8260DB003938
30928	255	8260DB007110
30929	255	8260DB003936
30930	255	8260DB003935
30931	255	8260DB007108
30932	255	8260DB007084
30933	255	8260DB007789
30934	255	8260DB007083
30935	255	8260DB007082
30936	255	8260DB007746
30937	255	8260DB007565
30938	255	8260DB007081
30939	255	8260DB007080
30940	255	8260DB007079
30941	255	8260DB003923
30942	255	8260DB003922
30943	255	8260DB003921
30944	256	8230DB006290
30945	256	8230DB007120
30946	256	8230DB007119
30947	256	8230DB007127
30948	256	8230DB007143
30949	256	8230DB007796
30950	256	8230DB007168
30951	256	8230DB004616
30952	256	8230DB002227
30953	256	8230DB007049
30954	256	8230DB002236
30955	256	8230DB005056
30956	256	8230DB002239
30957	256	8230DB002241
30958	256	8230DB002242
30959	256	8220DB007435
30960	256	8220DB002722
30961	256	8220DB004413
30962	256	8220DB001476
30963	256	8220DB007854
30964	256	8220DB007856
30965	256	8220DB007883
30966	256	8220DB000315
30967	256	8220DB007733
30968	256	8220DB007861
30969	256	8220DB000351
30970	256	8220DB000352
30971	256	8220DB000353
30972	257	8220DB000353
30973	257	8220DB000352
30974	257	8220DB000351
30975	257	8220DB007861
30976	257	8220DB007733
30977	257	8220DB000315
30978	257	8220DB007883
30979	257	8220DB007856
30980	257	8220DB007854
30981	257	8220DB001476
30982	257	8220DB004413
30983	257	8220DB002722
30984	257	8220DB007435
30985	257	8230DB002242
30986	257	8230DB002241
30987	257	8230DB002239
30988	257	8230DB005056
30989	257	8230DB002236
30990	257	8230DB007049
30991	257	8230DB002227
30992	257	8230DB004616
30993	257	8230DB007168
30994	257	8230DB007796
30995	257	8230DB007143
30996	257	8230DB007127
30997	257	8230DB007119
30998	257	8230DB007120
30999	257	8230DB006290
31000	258	8260DB003980
31001	258	8260DB006089
31002	258	8260DB003917
31003	258	8260DB003981
31004	258	8260DB003982
31005	258	8260DB007704
31006	258	8260DB003983
31007	258	8260DB003985
31008	258	8260DB003986
31009	258	8260DB003987
31010	258	8260DB003989
31011	258	8260DB003990
31012	258	8260DB003991
31013	258	8260DB07758
31014	258	8260DB003998
31015	258	8260DB003999
31016	258	8260DB004000
31017	258	8230DB004001
31018	258	8230DB007193
31019	258	8230DB007049
31020	258	8230DB002236
31021	258	8230DB002239
31022	258	8230DB002241
31023	258	8230DB002242
31024	258	8220DB007435
31025	258	8220DB002722
31026	258	8220DB004413
31027	258	8220DB001476
31028	258	8220DB007854
31029	258	8220DB007856
31030	258	8220DB007883
31031	258	8220DB000315
31032	258	8220DB007733
31033	258	8220DB007861
31034	258	8220DB002809
31035	258	8220DB002810
31036	258	8220DB002811
31037	258	8220DB000785
31038	259	8220DB000785
31039	259	8220DB002811
31040	259	8220DB002810
31041	259	8220DB002809
31042	259	8220DB007861
31043	259	8220DB007733
31044	259	8220DB000315
31045	259	8220DB007883
31046	259	8220DB007856
31047	259	8220DB007854
31048	259	8220DB001476
31049	259	8220DB004413
31050	259	8220DB002722
31051	259	8220DB007435
31052	259	8230DB002242
31053	259	8230DB002241
31054	259	8230DB002239
31055	259	8230DB002236
31056	259	8230DB007049
31057	259	8230DB007193
31058	259	8230DB004001
31059	259	8260DB004000
31060	259	8260DB003999
31061	259	8260DB003998
31062	259	8260DB07758
31063	259	8260DB003991
31064	259	8260DB003990
31065	259	8260DB003989
31066	259	8260DB003987
31067	259	8260DB003986
31068	259	8260DB003985
31069	259	8260DB003983
31070	259	8260DB007704
31071	259	8260DB003982
31072	259	8260DB003981
31073	259	8260DB003917
31074	259	8260DB006089
31075	259	8260DB003980
31076	260	8260DB003921
31077	260	8260DB003922
31078	260	8260DB003923
31079	260	8260DB003112
31080	260	8260DB003924
31081	260	8260DB003927
31082	260	8260DB003928
31083	260	8260DB003929
31084	260	8260DB007108
31085	260	8260DB003935
31086	260	8260DB003936
31087	260	8260DB007110
31088	260	8260DB003938
31089	260	8260DB003939
31090	260	8260DB003940
31091	260	8260DB003941
31092	260	8230DB003943
31093	260	8230DB003945
31094	260	8230DB003946
31095	260	8230DB004001
31096	260	8230DB007193
31097	260	8230DB007049
31098	260	8230DB002236
31099	260	8230DB002239
31100	260	8230DB002241
31101	260	8230DB002242
31102	260	8220DB007435
31103	260	8220DB002722
31104	260	8220DB004413
31105	260	8220DB001476
31106	260	8220DB007854
31107	260	8220DB007856
31108	260	8220DB007883
31109	260	8220DB000315
31110	260	8220DB007733
31111	260	8220DB007861
31112	260	8220DB002809
31113	260	8220DB002810
31114	260	8220DB002811
31115	260	8220DB000785
31116	260	8220DB000846
31117	260	8220DB000847
31118	260	8220DB000848
31119	260	8220DB002795
31120	260	8220DB000756
31121	260	8220DB000757
31122	260	8220DB000758
31123	260	8220DB000759
31124	260	8220DB000760
31125	260	8220DB000761
31126	260	8220DB000762
31127	260	8220DB000763
31128	261	8220DB000763
31129	261	8220DB000762
31130	261	8220DB000761
31131	261	8220DB000760
31132	261	8220DB000759
31133	261	8220DB000758
31134	261	8220DB000757
31135	261	8220DB000756
31136	261	8220DB002795
31137	261	8220DB000848
31138	261	8220DB000847
31139	261	8220DB000846
31140	261	8220DB000785
31141	261	8220DB002811
31142	261	8220DB002810
31143	261	8220DB002809
31144	261	8220DB007861
31145	261	8220DB007733
31146	261	8220DB000315
31147	261	8220DB007883
31148	261	8220DB007856
31149	261	8220DB007854
31150	261	8220DB001476
31151	261	8220DB004413
31152	261	8220DB002722
31153	261	8220DB007435
31154	261	8230DB002242
31155	261	8230DB002241
31156	261	8230DB002239
31157	261	8230DB002236
31158	261	8230DB007049
31159	261	8230DB007193
31160	261	8230DB004001
31161	261	8230DB003946
31162	261	8230DB003945
31163	261	8230DB003943
31164	261	8260DB003941
31165	261	8260DB003940
31166	261	8260DB003939
31167	261	8260DB003938
31168	261	8260DB007110
31169	261	8260DB003936
31170	261	8260DB003935
31171	261	8260DB007108
31172	261	8260DB003929
31173	261	8260DB003928
31174	261	8260DB003927
31175	261	8260DB003924
31176	261	8260DB003112
31177	261	8260DB003923
31178	261	8260DB003922
31179	261	8260DB003921
31180	262	8230DB003890
31181	262	8230DB003891
31182	262	8230DB003949
31183	262	8230DB003950
31184	262	8230DB003372
31185	262	8230DB003373
31186	262	8230DB003374
31187	262	8230DB002233
31188	262	8230DB002232
31189	262	8230DB002234
31190	262	8230DB002236
31191	262	8230DB002239
31192	262	8230DB002241
31193	262	8230DB002242
31194	262	8220DB007435
31195	262	8220DB002722
31196	262	8220DB004413
31197	262	8220DB001476
31198	262	8220DB007854
31199	262	8220DB007856
31200	262	8220DB007883
31201	262	8220DB000315
31202	262	8220DB007733
31203	262	8220DB007861
31204	262	8220DB002809
31205	262	8220DB002810
31206	262	8220DB002811
31207	262	8220DB000785
31208	262	8220DB000846
31209	262	8220DB000847
31210	262	8220DB000848
31211	262	8220DB002795
31212	262	8220DB000756
31213	262	8220DB000757
31214	262	8220DB000758
31215	262	8220DB000759
31216	262	8220DB000760
31217	262	8220DB000761
31218	262	8220DB000762
31219	262	8220DB000763
31220	263	8220DB000763
31221	263	8220DB000762
31222	263	8220DB000761
31223	263	8220DB000760
31224	263	8220DB000759
31225	263	8220DB000758
31226	263	8220DB000757
31227	263	8220DB000756
31228	263	8220DB002795
31229	263	8220DB000848
31230	263	8220DB000847
31231	263	8220DB000846
31232	263	8220DB000785
31233	263	8220DB002811
31234	263	8220DB002810
31235	263	8220DB002809
31236	263	8220DB007861
31237	263	8220DB007733
31238	263	8220DB000315
31239	263	8220DB007883
31240	263	8220DB007856
31241	263	8220DB007854
31242	263	8220DB001476
31243	263	8220DB004413
31244	263	8220DB002722
31245	263	8220DB007435
31246	263	8230DB002242
31247	263	8230DB002241
31248	263	8230DB002239
31249	263	8230DB002236
31250	263	8230DB002234
31251	263	8230DB002232
31252	263	8230DB002233
31253	263	8230DB003374
31254	263	8230DB003373
31255	263	8230DB003372
31256	263	8230DB003950
31257	263	8230DB003949
31258	263	8230DB003891
31259	263	8230DB003890
31260	264	8260DB007820
31261	264	8260DB003995
31262	264	8260DB003996
31263	264	8260DB003997
31264	264	8260DB003998
31265	264	8260DB003999
31266	264	8260DB004000
31267	264	8230DB004001
31268	264	8230DB003949
31269	264	8230DB003950
31270	264	8230DB003372
31271	264	8230DB003373
31272	264	8230DB003374
31273	264	8230DB002233
31274	264	8230DB002232
31275	264	8230DB002234
31276	264	8230DB002236
31277	264	8230DB002239
31278	264	8230DB002241
31279	264	8230DB002242
31280	264	8220DB007435
31281	264	8220DB002722
31282	264	8220DB004413
31283	264	8220DB001476
31284	264	8220DB007854
31285	264	8220DB007856
31286	264	8220DB007883
31287	264	8220DB000315
31288	264	8220DB007733
31289	264	8220DB007861
31290	264	8220DB002809
31291	264	8220DB002810
31292	264	8220DB002811
31293	264	8220DB000785
31294	264	8220DB000786
31295	265	8220DB000786
31296	265	8220DB000785
31297	265	8220DB002811
31298	265	8220DB002810
31299	265	8220DB002809
31300	265	8220DB007861
31301	265	8220DB007733
31302	265	8220DB000315
31303	265	8220DB007883
31304	265	8220DB007856
31305	265	8220DB007854
31306	265	8220DB001476
31307	265	8220DB004413
31308	265	8220DB002722
31309	265	8220DB007435
31310	265	8230DB002242
31311	265	8230DB002241
31312	265	8230DB002239
31313	265	8230DB002236
31314	265	8230DB002234
31315	265	8230DB002232
31316	265	8230DB002233
31317	265	8230DB003374
31318	265	8230DB003373
31319	265	8230DB003372
31320	265	8230DB003950
31321	265	8230DB003949
31322	265	8230DB004001
31323	265	8260DB004000
31324	265	8260DB003999
31325	265	8260DB003998
31326	265	8260DB003997
31327	265	8260DB003996
31328	265	8260DB003995
31329	265	8260DB007820
31330	266	8260DB004003
31331	266	8260DB007770
31332	266	8260DB004404
31333	266	8260DB004405
31334	266	8260DB007785
31335	266	8260DB003991
31336	266	8260DB07758
31337	266	8260DB003998
31338	266	8260DB003999
31339	266	8260DB004000
31340	266	8230DB004001
31341	266	8230DB003949
31342	266	8230DB003950
31343	266	8230DB003372
31344	266	8230DB003373
31345	266	8230DB003374
31346	266	8230DB002233
31347	266	8230DB002232
31348	266	8230DB002234
31349	266	8230DB002236
31350	266	8230DB002239
31351	266	8230DB002241
31352	266	8230DB002242
31353	266	8220DB007435
31354	266	8220DB002722
31355	266	8220DB004413
31356	266	8220DB001476
31357	266	8220DB007854
31358	266	8220DB007856
31359	266	8220DB007883
31360	266	8220DB000315
31361	266	8220DB007733
31362	266	8220DB007861
31363	266	8220DB002809
31364	266	8220DB002810
31365	266	8220DB002811
31366	266	8220DB000785
31367	266	8220DB000786
31368	267	8220DB000786
31369	267	8220DB000785
31370	267	8220DB002811
31371	267	8220DB002810
31372	267	8220DB002809
31373	267	8220DB007861
31374	267	8220DB007733
31375	267	8220DB000315
31376	267	8220DB007883
31377	267	8220DB007856
31378	267	8220DB007854
31379	267	8220DB001476
31380	267	8220DB004413
31381	267	8220DB002722
31382	267	8220DB007435
31383	267	8230DB002242
31384	267	8230DB002241
31385	267	8230DB002239
31386	267	8230DB002236
31387	267	8230DB002234
31388	267	8230DB002232
31389	267	8230DB002233
31390	267	8230DB003374
31391	267	8230DB003373
31392	267	8230DB003372
31393	267	8230DB003950
31394	267	8230DB003949
31395	267	8230DB004001
31396	267	8260DB004000
31397	267	8260DB003999
31398	267	8260DB003998
31399	267	8260DB07758
31400	267	8260DB003991
31401	267	8260DB007785
31402	267	8260DB004405
31403	267	8260DB004404
31404	267	8260DB007770
31405	267	8260DB004003
31406	268	8250DB006200
31407	268	8250DB006201
31408	268	8250DB006196
31409	268	8250DB003532
31410	268	8250DB003533
31411	268	8250DB003491
31412	268	8250DB006007
31413	268	8250DB004349
31414	268	8250DB003184
31415	268	8250DB000449
31416	268	8250DB000450
31417	268	8250DB003181
31418	268	8250DB005142
31419	268	8250DB003187
31420	268	8250DB003188
31421	268	8250DB003189
31422	268	8250DB003190
31423	268	8250DB003191
31424	268	8250DB003192
31425	268	8250DB003193
31426	268	8250DB003194
31427	268	8250DB003195
31428	268	8250DB003196
31429	268	8250DB003198
31430	268	8250DB003199
31431	268	8250DB003200
31432	268	8250DB003201
31433	269	8250DB003201
31434	269	8250DB003200
31435	269	8250DB003199
31436	269	8250DB003198
31437	269	8250DB003196
31438	269	8250DB003195
31439	269	8250DB003194
31440	269	8250DB003193
31441	269	8250DB003192
31442	269	8250DB003191
31443	269	8250DB003190
31444	269	8250DB003189
31445	269	8250DB003188
31446	269	8250DB003187
31447	269	8250DB005142
31448	269	8250DB003181
31449	269	8250DB000450
31450	269	8250DB000449
31451	269	8250DB003184
31452	269	8250DB004349
31453	269	8250DB006007
31454	269	8250DB003491
31455	269	8250DB003533
31456	269	8250DB003532
31457	269	8250DB006196
31458	269	8250DB006201
31459	269	8250DB006200
31460	270	8250DB002825
31461	270	8250DB002867
31462	270	8250DB001035
31463	270	8250DB001314
31464	270	8250DB001316
31465	270	8250DB001315
31466	270	8250DB001317
31467	270	8250DB001318
31468	270	8250DB001319
31469	270	8250DB001281
31470	270	8230DB001329
31471	270	8230DB001330
31472	270	8230DB001331
31473	270	8230DB001332
31474	270	8230DB001333
31475	270	8230DB001334
31476	270	8220DB001335
31477	270	8220DB001336
31478	270	8220DB001086
31479	270	8220DB001087
31480	270	8220DB001088
31481	270	8220DB001089
31482	270	8220DB001090
31483	270	8220DB002413
31484	270	8220DB002414
31485	270	8220DB002415
31486	270	8220DB002327
31487	270	8220DB002464
31488	270	8220DB002465
31489	270	8220DB002466
31490	270	8220DB003360
31491	270	8220DB001392
31492	270	8220DB001394
31493	270	8220DB001395
31494	270	8220DB003361
31495	270	8220DB003362
31496	270	8220DB001436
31497	270	8220DB003952
31498	270	8220DB002190
31499	270	8220DB001366
31500	271	8220DB001366
31501	271	8220DB002190
31502	271	8220DB003952
31503	271	8220DB001436
31504	271	8220DB003362
31505	271	8220DB003361
31506	271	8220DB001395
31507	271	8220DB001394
31508	271	8220DB001392
31509	271	8220DB003360
31510	271	8220DB002466
31511	271	8220DB002465
31512	271	8220DB002464
31513	271	8220DB002327
31514	271	8220DB002415
31515	271	8220DB002414
31516	271	8220DB002413
31517	271	8220DB001090
31518	271	8220DB001089
31519	271	8220DB001088
31520	271	8220DB001087
31521	271	8220DB001086
31522	271	8220DB001336
31523	271	8220DB001335
31524	271	8230DB001334
31525	271	8230DB001333
31526	271	8230DB001332
31527	271	8230DB001331
31528	271	8230DB001330
31529	271	8230DB001329
31530	271	8250DB001281
31531	271	8250DB001319
31532	271	8250DB001318
31533	271	8250DB001317
31534	271	8250DB001315
31535	271	8250DB001316
31536	271	8250DB001314
31537	271	8250DB001035
31538	271	8250DB002867
31539	271	8250DB002825
31540	272	8240DB007026
31541	272	8240DB001882
31542	272	8240DB007379
31543	272	8240DB004903
31544	272	8240DB007219
31545	272	8240DB001887
31546	272	8240DB001888
31547	272	8240DB001889
31548	272	8240DB001890
31549	272	8240DB004820
31550	272	8240DB006126
31551	272	8230DB002226
31552	272	8230DB006134
31553	272	8230DB002223
31554	272	8230DB002224
31555	272	8230DB003886
31556	272	8230DB003887
31557	272	8230DB003888
31558	272	8230DB007810
31559	272	8230DB007749
31560	272	8230DB007801
31561	273	8230DB007801
31562	273	8230DB007749
31563	273	8230DB007810
31564	273	8230DB003888
31565	273	8230DB003887
31566	273	8230DB003886
31567	273	8230DB002224
31568	273	8230DB002223
31569	273	8230DB006134
31570	273	8230DB002226
31571	273	8240DB006126
31572	273	8240DB004820
31573	273	8240DB001890
31574	273	8240DB001889
31575	273	8240DB001888
31576	273	8240DB001887
31577	273	8240DB007219
31578	273	8240DB004903
31579	273	8240DB007379
31580	273	8240DB001882
31581	273	8240DB007026
31582	274	8250DB003099
31583	274	8250DB003100
31584	274	8250DB003101
31585	274	8250DB003102
31586	274	8250DB003103
31587	274	8250DB005105
31588	274	8250DB003105
31589	274	8250DB003106
31590	274	8250DB003107
31591	274	8250DB003108
31592	274	8250DB007666
31593	274	8250DB003111
31594	274	8250DB003058
31595	274	8250DB003059
31596	274	8250DB003060
31597	274	8250DB003061
31598	274	8250DB003062
31599	274	8250DB003063
31600	274	8250DB003064
31601	274	8250DB003065
31602	274	8250DB003066
31603	274	8250DB003067
31604	274	8250DB003068
31605	274	8250DB003069
31606	274	8250DB003070
31607	275	8250DB003070
31608	275	8250DB003069
31609	275	8250DB003068
31610	275	8250DB003067
31611	275	8250DB003066
31612	275	8250DB003065
31613	275	8250DB003064
31614	275	8250DB003063
31615	275	8250DB003062
31616	275	8250DB003061
31617	275	8250DB003060
31618	275	8250DB003059
31619	275	8250DB003058
31620	275	8250DB003111
31621	275	8250DB007666
31622	275	8250DB003108
31623	275	8250DB003107
31624	275	8250DB003106
31625	275	8250DB003105
31626	275	8250DB005105
31627	275	8250DB003103
31628	275	8250DB003102
31629	275	8250DB003101
31630	275	8250DB003100
31631	275	8250DB003099
31632	276	8250DB002039
31633	276	8250DB002040
31634	276	8250DB002041
31635	276	8250DB002042
31636	276	8250DB002043
31637	276	8250DB002044
31638	276	8250DB002045
31639	276	8250DB002046
31640	276	8250DB004568
31641	276	8250DB004569
31642	276	8250DB004570
31643	276	8250DB002056
31644	276	8250DB002057
31645	276	8250DB002058
31646	276	8250DB002059
31647	276	8250DB002060
31648	276	8250DB002061
31649	276	8250DB002062
31650	276	8250DB002063
31651	276	8250DB002064
31652	276	8250DB002065
31653	276	8250DB004637
31654	276	8250DB003322
31655	276	8250DB003563
31656	276	8250DB000444
31657	276	8250DB000445
31658	276	8250DB007393
31659	276	8250DB002880
31660	276	8250DB002882
31661	276	8250DB002883
31662	276	8250DB002885
31663	276	8250DB002886
31664	276	8250DB002887
31665	276	8250DB007718
31666	276	8250DB002842
31667	276	8250DB002843
31668	276	8250DB002844
31669	276	8250DB002845
31670	276	8250DB002846
31671	276	8250DB002847
31672	276	8250DB004397
31673	276	8250DB002848
31674	276	8250DB002849
31675	276	8250DB002850
31676	276	8250DB002851
31677	276	8250DB002852
31678	276	8250DB004707
31679	276	8250DB004708
31680	276	8250DB004336
31681	276	8250DB004337
31682	276	8250DB001317
31683	276	8250DB001318
31684	276	8250DB001319
31685	276	8250DB001281
31686	276	8230DB001329
31687	276	8230DB001330
31688	276	8230DB005129
31689	276	8230DB005130
31690	276	8230DB001138
31691	276	8230DB001139
31692	276	8230DB001140
31693	276	8230DB002515
31694	276	8230DB002516
31695	276	8230DB002517
31696	276	8230DB002518
31697	276	8230DB002520
31698	276	8230DB002521
31699	276	8230DB002522
31700	276	8230DB002524
31701	276	8230DB002523
31702	276	8230DB002532
31703	276	8230DB002533
31704	276	8230DB002534
31705	276	8230DB002535
31706	276	8230DB002536
31707	276	8230DB002616
31708	276	8230DB002617
31709	276	8230DB002557
31710	276	8230DB004436
31711	276	8230DB005008
31712	276	8230DB004640
31713	276	8230DB004347
31714	277	8230DB004347
31715	277	8230DB004640
31716	277	8230DB005008
31717	277	8230DB004436
31718	277	8230DB002557
31719	277	8230DB002617
31720	277	8230DB002616
31721	277	8230DB002536
31722	277	8230DB002535
31723	277	8230DB002534
31724	277	8230DB002533
31725	277	8230DB002532
31726	277	8230DB002523
31727	277	8230DB002524
31728	277	8230DB002522
31729	277	8230DB002521
31730	277	8230DB002520
31731	277	8230DB002518
31732	277	8230DB002517
31733	277	8230DB002516
31734	277	8230DB002515
31735	277	8230DB001140
31736	277	8230DB001139
31737	277	8230DB001138
31738	277	8230DB005130
31739	277	8230DB005129
31740	277	8230DB001330
31741	277	8230DB001329
31742	277	8250DB001281
31743	277	8250DB001319
31744	277	8250DB001318
31745	277	8250DB001317
31746	277	8250DB004337
31747	277	8250DB004336
31748	277	8250DB004708
31749	277	8250DB004707
31750	277	8250DB002852
31751	277	8250DB002851
31752	277	8250DB002850
31753	277	8250DB002849
31754	277	8250DB002848
31755	277	8250DB004397
31756	277	8250DB002847
31757	277	8250DB002846
31758	277	8250DB002845
31759	277	8250DB002844
31760	277	8250DB002843
31761	277	8250DB002842
31762	277	8250DB007718
31763	277	8250DB002887
31764	277	8250DB002886
31765	277	8250DB002885
31766	277	8250DB002883
31767	277	8250DB002882
31768	277	8250DB002880
31769	277	8250DB007393
31770	277	8250DB000445
31771	277	8250DB000444
31772	277	8250DB003563
31773	277	8250DB003322
31774	277	8250DB004637
31775	277	8250DB002065
31776	277	8250DB002064
31777	277	8250DB002063
31778	277	8250DB002062
31779	277	8250DB002061
31780	277	8250DB002060
31781	277	8250DB002059
31782	277	8250DB002058
31783	277	8250DB002057
31784	277	8250DB002056
31785	277	8250DB004570
31786	277	8250DB004569
31787	277	8250DB004568
31788	277	8250DB002046
31789	277	8250DB002045
31790	277	8250DB002044
31791	277	8250DB002043
31792	277	8250DB002042
31793	277	8250DB002041
31794	277	8250DB002040
31795	277	8250DB002039
\.


--
-- TOC entry 3485 (class 0 OID 20131)
-- Dependencies: 232
-- Data for Name: routes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.routes (id, name) FROM stdin;
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

SELECT pg_catalog.setval('public.route_connections_id_seq', 31795, true);


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


-- Completed on 2022-07-19 19:24:56

--
-- PostgreSQL database dump complete
--

