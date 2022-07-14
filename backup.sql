--
-- PostgreSQL database dump
--

-- Dumped from database version 14.3
-- Dumped by pg_dump version 14.3

-- Started on 2022-07-14 14:23:24

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
0	197
1	102
2	102
3	104
4	104
5	111
6	111
7	114
8	114
9	161
10	161
11	17
12	17
13	174
14	174
15	175
16	175
17	18
18	18
19	184
20	184
21	185
22	185
23	220
24	220
25	236
26	236
27	238
28	238
29	270
30	270
31	331
32	331
33	332
34	332
35	339
36	339
37	451
38	451
39	452
40	452
41	536
42	536
43	59
44	59
45	63
46	63
47	75
48	75
49	751
50	751
51	76
52	76
53	761
54	761
55	951
56	951
57	952
58	952
59	631
60	631
61	115
62	126
63	125
64	125
65	1
66	1
67	11
68	11
69	116
70	116
71	118
72	120
73	120
74	122
75	122
76	123
77	123
78	13
79	13
80	130
81	130
82	14
83	14
84	140
85	140
86	142
87	142
88	145
89	145
90	15
91	15
92	150
93	150
94	151
95	151
96	155
97	155
98	15A
99	15A
100	15B
101	15B
102	15D
103	15D
104	16
105	16
106	16D
107	26
108	26
109	27
110	27
111	27A
112	27A
113	27B
114	27B
115	27X
116	27X
117	32X
118	32X
119	33
120	33
121	33D
122	33D
123	33E
124	33X
125	33X
126	37
127	37
128	38
129	38
130	38A
131	38A
132	38B
133	38B
134	38D
135	38D
136	39
137	39
138	39A
139	39A
140	39X
141	39X
142	4
143	4
144	40
145	40
146	40B
147	40B
148	40D
149	40D
150	40E
151	40E
152	41
153	41
154	41B
155	41B
156	41C
157	41C
158	41D
159	41D
160	41X
161	41X
162	42
163	42
164	43
165	43
166	44
167	44
168	44B
169	44B
170	46A
171	46A
172	46E
173	47
174	47
175	49
176	49
177	51D
178	51D
179	52
180	52
181	53
182	53
183	54A
184	54A
185	56A
186	56A
187	6
188	6
189	61
190	61
191	65
192	65
193	65B
194	65B
195	68
196	68
197	68A
198	68A
199	69
200	69
201	69X
202	69X
203	7
204	7
205	70
206	70
207	77A
208	77A
209	77X
210	79
211	79
212	79A
213	79A
214	7A
215	7A
216	7B
217	7B
218	7D
219	7D
220	83
221	83
222	83A
223	83A
224	84
225	84
226	84A
227	84A
228	84X
229	84X
230	9
231	9
232	C1
233	C1
234	C2
235	C2
236	C3
237	C3
238	C4
239	C4
240	C5
241	C5
242	C6
243	C6
244	H1
245	H1
246	H2
247	H2
248	H3
249	H3
250	L53
251	L53
252	L54
253	L54
254	L58
255	L58
256	L59
257	L59
258	N4
259	N4
260	P29
261	P29
262	X25
263	X25
264	X26
265	X27
266	X27
267	X28
268	X28
269	X30
270	X30
271	X31
272	X31
273	X32
274	X32
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
4913	0	8240DB007210
4914	0	8240DB003676
4915	0	8240DB005073
4916	0	8240DB005074
4917	0	8240DB006054
4918	0	8240DB004330
4919	0	8240DB003679
4920	0	8240DB005075
4921	0	8240DB005076
4922	0	8240DB003682
4923	0	8240DB003864
4924	0	8240DB003865
4925	0	8240DB007133
4926	0	8240DB010377
4927	0	8240DB007134
4928	0	8240DB003867
4929	0	8240DB007135
4930	0	8240DB007136
4931	0	8240DB010378
4932	1	8240DB007348
4933	1	8240DB003669
4934	1	8240DB003671
4935	1	8240DB003672
4936	1	8240DB003078
4937	1	8240DB003087
4938	1	8240DB006033
4939	1	8240DB003089
4940	1	8240DB003090
4941	1	8240DB003706
4942	1	8240DB003707
4943	1	8240DB003708
4944	1	8240DB003709
4945	1	8240DB003710
4946	1	8240DB004925
4947	1	8240DB004926
4948	1	8240DB003678
4949	1	8240DB006117
4950	1	8240DB001041
4951	1	8240DB001050
4952	1	8240DB003656
4953	1	8240DB003653
4954	1	8240DB006055
4955	1	8240DB001073
4956	1	8240DB003641
4957	1	8240DB003642
4958	1	8240DB003643
4959	1	8240DB003583
4960	1	8240DB003584
4961	1	8240DB003585
4962	1	8240DB003586
4963	1	8240DB003587
4964	1	8240DB003588
4965	1	8240DB003590
4966	1	8240DB003589
4967	1	8240DB003591
4968	1	8240DB003592
4969	1	8240DB003593
4970	1	8240DB003594
4971	1	8240DB003595
4972	1	8240DB003596
4973	1	8240DB003597
4974	1	8240DB003598
4975	1	8240DB004465
4976	1	8240DB000944
4977	1	8240DB000945
4978	1	8240DB000947
4979	1	8240DB000948
4980	1	8240DB007725
4981	1	8240DB000950
4982	1	8240DB000928
4983	1	8240DB000951
4984	1	8240DB000952
4985	1	8240DB000953
4986	2	8240DB004381
4987	2	8240DB000935
4988	2	8240DB000936
4989	2	8240DB000913
4990	2	8240DB000914
4991	2	8240DB000938
4992	2	8240DB000940
4993	2	8240DB000941
4994	2	8240DB000942
4995	2	8240DB000943
4996	2	8240DB004503
4997	2	8240DB003599
4998	2	8240DB003600
4999	2	8240DB003601
5000	2	8240DB003602
5001	2	8240DB003604
5002	2	8240DB003616
5003	2	8240DB003618
5004	2	8240DB003619
5005	2	8240DB003620
5006	2	8240DB003621
5007	2	8240DB003622
5008	2	8240DB003623
5009	2	8240DB004387
5010	2	8240DB003634
5011	2	8240DB003635
5012	2	8240DB003636
5013	2	8240DB000905
5014	2	8240DB004331
5015	2	8240DB004339
5016	2	8240DB007692
5017	2	8240DB006010
5018	2	8240DB003656
5019	2	8240DB003653
5020	2	8240DB001039
5021	2	8240DB001040
5022	2	8240DB006054
5023	2	8240DB004330
5024	2	8240DB003691
5025	2	8240DB003572
5026	2	8240DB003701
5027	2	8240DB003702
5028	2	8240DB003088
5029	2	8240DB003704
5030	2	8240DB003705
5031	2	8240DB000733
5032	2	8240DB006015
5033	2	8240DB000788
5034	2	8240DB000815
5035	2	8240DB003663
5036	3	8220DB004794
5037	3	8220DB001741
5038	3	8220DB001742
5039	3	8220DB001743
5040	3	8220DB001650
5041	3	8220DB001652
5042	3	8220DB005141
5043	3	8220DB001773
5044	3	8220DB001774
5045	3	8220DB001651
5046	3	8220DB004784
5047	3	8220DB000608
5048	3	8220DB004791
5049	3	8220DB004792
5050	3	8220DB000662
5051	3	8220DB000663
5052	3	8220DB001196
5053	3	8220DB001197
5054	3	8220DB004473
5055	3	8220DB000250
5056	3	8220DB000251
5057	3	8220DB004597
5058	3	8220DB000255
5059	3	8220DB000218
5060	3	8240DB000219
5061	3	8220DB000220
5062	3	8240DB000221
5063	3	8240DB000222
5064	3	8240DB000223
5065	3	8240DB000224
5066	3	8240DB000225
5067	3	8240DB000226
5068	3	8220DB000114
5069	3	8240DB001645
5070	3	8220DB001646
5071	4	8220DB007571
5072	4	8220DB001644
5073	4	8220DB001605
5074	4	8220DB000228
5075	4	8240DB000229
5076	4	8240DB000227
5077	4	8240DB000230
5078	4	8240DB000231
5079	4	8240DB000232
5080	4	8220DB000233
5081	4	8220DB000242
5082	4	8220DB000243
5083	4	8220DB000253
5084	4	8220DB000244
5085	4	8220DB000245
5086	4	8220DB004474
5087	4	8220DB004790
5088	4	8220DB001220
5089	4	8220DB001221
5090	4	8220DB000674
5091	4	8220DB004389
5092	4	8220DB004390
5093	4	8220DB000530
5094	4	8220DB004785
5095	4	8220DB007607
5096	4	8220DB001764
5097	4	8220DB001765
5098	4	8220DB001766
5099	4	8220DB001767
5100	4	8220DB007129
5101	4	8220DB001734
5102	4	8220DB001735
5103	4	8220DB001736
5104	4	8220DB001737
5105	4	8220DB001738
5106	5	8250DB003058
5107	5	8250DB003059
5108	5	8250DB003060
5109	5	8250DB003061
5110	5	8250DB003062
5111	5	8250DB003063
5112	5	8250DB003064
5113	5	8250DB003065
5114	5	8250DB003066
5115	5	8250DB003067
5116	5	8250DB003068
5117	5	8250DB003069
5118	5	8250DB003070
5119	5	8250DB004983
5120	5	8250DB002042
5121	5	8250DB002043
5122	5	8250DB002044
5123	5	8250DB002045
5124	5	8250DB002046
5125	5	8250DB007553
5126	5	8250DB006082
5127	5	8250DB003205
5128	5	8250DB003206
5129	5	8250DB003207
5130	5	8250DB003208
5131	5	8250DB003209
5132	5	8250DB003210
5133	5	8250DB004981
5134	5	8250DB003211
5135	5	8250DB003212
5136	5	8250DB003213
5137	5	8250DB003214
5138	5	8250DB003215
5139	5	8250DB003216
5140	5	8250DB003217
5141	5	8250DB003218
5142	5	8250DB003219
5143	5	8250DB003220
5144	5	8250DB003221
5145	5	8250DB003222
5146	5	8250DB003223
5147	5	8250DB003134
5148	5	8250DB003143
5149	5	8250DB003144
5150	5	8250DB005046
5151	6	8250DB007639
5152	6	8250DB007640
5153	6	8250DB005047
5154	6	8250DB003134
5155	6	8250DB003143
5156	6	8250DB003144
5157	6	8250DB003221
5158	6	8250DB003222
5159	6	8250DB003223
5160	6	8250DB003224
5161	6	8250DB003225
5162	6	8250DB003226
5163	6	8250DB003227
5164	6	8250DB003228
5165	6	8250DB003229
5166	6	8250DB007472
5167	6	8250DB003230
5168	6	8250DB003232
5169	6	8250DB003233
5170	6	8250DB003234
5171	6	8250DB004462
5172	6	8250DB003235
5173	6	8250DB003236
5174	6	8250DB003237
5175	6	8250DB006103
5176	6	8250DB007554
5177	6	8250DB002031
5178	6	8250DB002032
5179	6	8250DB002033
5180	6	8250DB002034
5181	6	8250DB002035
5182	6	8250DB002036
5183	6	8250DB002039
5184	6	8250DB002037
5185	6	8250DB003046
5186	6	8250DB003047
5187	6	8250DB003048
5188	6	8250DB003049
5189	6	8250DB003050
5190	6	8250DB003051
5191	6	8250DB003052
5192	6	8250DB003053
5193	6	8250DB003054
5194	6	8250DB003055
5195	6	8250DB003056
5196	7	8250DB006200
5197	7	8250DB006201
5198	7	8250DB006196
5199	7	8250DB003532
5200	7	8250DB003533
5201	7	8250DB003491
5202	7	8250DB006007
5203	7	8250DB004349
5204	7	8250DB003184
5205	7	8250DB000449
5206	7	8250DB000450
5207	7	8250DB003181
5208	7	8250DB005142
5209	7	8250DB003187
5210	7	8250DB003188
5211	7	8250DB003189
5212	7	8250DB003190
5213	7	8250DB003191
5214	7	8250DB003192
5215	7	8250DB003193
5216	7	8250DB003194
5217	7	8250DB003195
5218	7	8250DB003196
5219	7	8250DB003198
5220	7	8250DB003199
5221	7	8250DB003200
5222	7	8250DB003201
5223	8	8250DB003085
5224	8	8250DB003082
5225	8	8250DB003165
5226	8	8250DB003166
5227	8	8250DB003167
5228	8	8250DB003168
5229	8	8250DB003169
5230	8	8250DB003171
5231	8	8250DB003173
5232	8	8250DB003174
5233	8	8250DB003175
5234	8	8250DB003176
5235	8	8250DB003177
5236	8	8250DB003178
5237	8	8250DB003179
5238	8	8250DB004984
5239	8	8250DB000448
5240	8	8250DB004457
5241	8	8250DB003182
5242	8	8250DB003183
5243	8	8250DB004350
5244	8	8250DB005143
5245	8	8250DB002833
5246	8	8250DB006006
5247	8	8250DB003493
5248	8	8250DB003494
5249	8	8250DB006197
5250	8	8250DB006198
5251	9	8230DB002934
5252	9	8230DB002935
5253	9	8230DB002936
5254	9	8230DB002937
5255	9	8230DB002938
5256	9	8230DB007440
5257	9	8230DB002940
5258	9	8230DB002948
5259	9	8230DB002949
5260	9	8230DB002950
5261	9	8230DB002954
5262	9	8230DB007067
5263	9	8230DB002956
5264	9	8230DB002965
5265	9	8230DB007448
5266	9	8230DB002967
5267	9	8230DB002968
5268	9	8250DB002969
5269	9	8250DB002970
5270	9	8250DB004988
5271	9	8250DB004707
5272	9	8250DB004708
5273	9	8250DB004336
5274	9	8250DB004337
5275	9	8250DB001310
5276	9	8250DB001311
5277	9	8250DB001312
5278	9	8250DB001313
5279	9	8250DB001055
5280	9	8250DB002868
5281	10	8250DB002825
5282	10	8250DB002867
5283	10	8250DB001035
5284	10	8250DB001314
5285	10	8250DB001316
5286	10	8250DB001315
5287	10	8250DB004332
5288	10	8250DB004333
5289	10	8250DB004334
5290	10	8250DB004712
5291	10	8250DB004582
5292	10	8250DB004987
5293	10	8250DB002979
5294	10	8230DB002980
5295	10	8230DB002981
5296	10	8230DB007447
5297	10	8230DB002954
5298	10	8230DB007067
5299	10	8230DB002956
5300	10	8230DB002965
5301	10	8230DB002983
5302	10	8230DB002984
5303	10	8230DB007449
5304	10	8230DB002927
5305	10	8230DB002929
5306	10	8230DB002930
5307	10	8230DB007441
5308	11	8220DB001380
5309	11	8220DB001381
5310	11	8220DB001406
5311	11	8220DB001407
5312	11	8220DB001409
5313	11	8220DB003353
5314	11	8220DB003354
5315	11	8220DB003355
5316	11	8220DB003356
5317	11	8220DB001400
5318	11	8220DB001391
5319	11	8220DB003357
5320	11	8220DB003358
5321	11	8220DB002449
5322	11	8220DB002450
5323	11	8220DB002451
5324	11	8220DB002434
5325	11	8220DB002435
5326	11	8220DB002436
5327	11	8220DB002437
5328	11	8220DB001117
5329	11	8220DB001118
5330	11	8220DB001119
5331	11	8220DB001120
5332	11	8220DB001299
5333	11	8220DB001300
5334	11	8230DB001301
5335	11	8230DB001302
5336	11	8230DB001303
5337	11	8230DB001304
5338	11	8230DB001305
5339	11	8250DB001306
5340	11	8250DB001307
5341	11	8250DB001308
5342	11	8250DB001309
5343	11	8250DB001310
5344	11	8250DB001311
5345	11	8250DB001312
5346	11	8250DB001313
5347	11	8250DB001055
5348	11	8250DB002868
5349	11	8250DB002892
5350	11	8250DB002893
5351	11	8250DB002894
5352	11	8250DB002895
5353	11	8250DB003012
5354	11	8250DB000861
5355	11	8250DB000862
5356	11	8250DB000863
5357	11	8250DB000864
5358	11	8250DB000865
5359	11	8250DB000866
5360	11	8250DB002052
5361	11	8250DB002082
5362	11	8250DB002083
5363	11	8250DB002084
5364	11	8250DB000765
5365	11	8250DB002007
5366	11	8250DB002008
5367	11	8250DB002009
5368	11	8250DB002010
5369	11	8250DB000462
5370	11	8250DB000464
5371	11	8250DB000465
5372	11	8250DB000466
5373	11	8250DB000467
5374	11	8250DB000468
5375	11	8250DB003032
5376	11	8250DB003033
5377	12	8250DB003085
5378	12	8250DB003082
5379	12	8250DB003083
5380	12	8250DB000430
5381	12	8250DB000431
5382	12	8250DB000432
5383	12	8250DB000433
5384	12	8250DB000434
5385	12	8250DB002068
5386	12	8250DB002069
5387	12	8250DB002070
5388	12	8250DB002084
5389	12	8250DB000765
5390	12	8250DB002007
5391	12	8250DB002008
5392	12	8250DB002071
5393	12	8250DB002072
5394	12	8250DB000867
5395	12	8250DB000869
5396	12	8250DB000870
5397	12	8250DB000873
5398	12	8250DB000874
5399	12	8250DB000875
5400	12	8250DB000876
5401	12	8250DB003011
5402	12	8250DB002820
5403	12	8250DB002822
5404	12	8250DB002823
5405	12	8250DB005032
5406	12	8250DB002867
5407	12	8250DB001035
5408	12	8250DB001314
5409	12	8250DB001316
5410	12	8250DB001315
5411	12	8250DB001317
5412	12	8250DB001318
5413	12	8250DB001319
5414	12	8250DB001281
5415	12	8230DB001329
5416	12	8230DB001330
5417	12	8230DB001331
5418	12	8230DB001332
5419	12	8230DB001333
5420	12	8230DB001334
5421	12	8220DB001335
5422	12	8220DB001336
5423	12	8220DB001086
5424	12	8220DB001087
5425	12	8220DB001088
5426	12	8220DB001089
5427	12	8220DB001090
5428	12	8220DB002413
5429	12	8220DB002414
5430	12	8220DB002415
5431	12	8220DB002327
5432	12	8220DB002464
5433	12	8220DB002465
5434	12	8220DB002466
5435	12	8220DB003360
5436	12	8220DB001392
5437	12	8220DB001394
5438	12	8220DB001395
5439	12	8220DB003361
5440	12	8220DB003362
5441	12	8220DB001436
5442	12	8220DB003952
5443	12	8220DB002190
5444	12	8220DB001366
5445	13	8250DB002825
5446	13	8250DB002867
5447	13	8250DB001035
5448	13	8250DB001314
5449	13	8250DB001316
5450	13	8250DB001315
5451	13	8250DB001317
5452	13	8250DB001318
5453	13	8250DB001319
5454	13	8250DB001281
5455	13	8230DB001329
5456	13	8230DB001330
5457	13	8230DB001331
5458	13	8230DB001332
5459	13	8230DB001333
5460	13	8230DB001334
5461	13	8220DB001335
5462	13	8220DB001336
5463	13	8220DB001086
5464	13	8220DB001087
5465	13	8220DB001088
5466	13	8220DB001089
5467	13	8220DB001090
5468	13	8220DB002413
5469	13	8220DB002414
5470	13	8220DB002415
5471	13	8220DB002327
5472	13	8220DB002464
5473	13	8220DB002465
5474	13	8220DB002466
5475	13	8220DB003360
5476	13	8220DB001392
5477	13	8220DB001394
5478	13	8220DB001395
5479	13	8220DB003361
5480	13	8220DB003362
5481	13	8220DB001436
5482	13	8220DB003952
5483	13	8220DB002190
5484	13	8220DB001366
5485	14	8220DB001380
5486	14	8220DB001381
5487	14	8220DB001406
5488	14	8220DB001407
5489	14	8220DB001409
5490	14	8220DB003353
5491	14	8220DB003354
5492	14	8220DB003355
5493	14	8220DB003356
5494	14	8220DB001400
5495	14	8220DB001391
5496	14	8220DB003357
5497	14	8220DB003358
5498	14	8220DB002449
5499	14	8220DB002450
5500	14	8220DB002451
5501	14	8220DB002434
5502	14	8220DB002435
5503	14	8220DB002436
5504	14	8220DB002437
5505	14	8220DB001117
5506	14	8220DB001118
5507	14	8220DB001119
5508	14	8220DB001120
5509	14	8220DB001299
5510	14	8220DB001300
5511	14	8230DB001301
5512	14	8230DB001302
5513	14	8230DB001303
5514	14	8230DB001304
5515	14	8230DB001305
5516	14	8250DB001306
5517	14	8250DB001307
5518	14	8250DB001308
5519	14	8250DB001309
5520	14	8250DB001310
5521	14	8250DB001311
5522	14	8250DB001312
5523	14	8250DB001313
5524	14	8250DB001055
5525	14	8250DB002868
5526	15	8230DB006001
5527	15	8230DB004438
5528	15	8230DB004713
5529	15	8230DB004714
5530	15	8230DB004960
5531	15	8230DB002669
5532	15	8230DB010334
5533	15	8230DB006075
5534	15	8230DB002631
5535	15	8230DB002359
5536	15	8230DB002360
5537	15	8230DB004348
5538	15	8230DB004646
5539	15	8230DB004647
5540	15	8230DB002346
5541	15	8230DB004435
5542	15	8230DB002604
5543	15	8230DB002605
5544	15	8230DB002538
5545	15	8230DB002539
5546	15	8230DB002540
5547	15	8230DB004882
5548	15	8230DB004883
5549	15	8230DB004884
5550	15	8230DB004885
5551	15	8230DB004886
5552	15	8230DB004887
5553	15	8230DB007443
5554	15	8230DB007444
5555	15	8230DB002948
5556	15	8230DB002949
5557	15	8230DB002950
5558	15	8230DB007448
5559	15	8230DB002967
5560	15	8230DB002968
5561	15	8250DB002969
5562	15	8250DB002970
5563	15	8250DB002971
5564	15	8250DB002858
5565	15	8250DB002859
5566	15	8250DB002860
5567	15	8250DB002861
5568	15	8250DB002841
5569	15	8250DB002865
5570	15	8250DB002866
5571	15	8250DB007719
5572	15	8250DB002052
5573	15	8250DB002082
5574	15	8250DB002083
5575	15	8250DB002084
5576	16	8250DB000765
5577	16	8250DB002007
5578	16	8250DB002008
5579	16	8250DB002071
5580	16	8250DB002072
5581	16	8250DB000867
5582	16	8250DB002825
5583	16	8250DB007716
5584	16	8250DB007717
5585	16	8250DB002845
5586	16	8250DB002846
5587	16	8250DB002847
5588	16	8250DB004397
5589	16	8250DB002978
5590	16	8250DB002979
5591	16	8230DB002980
5592	16	8230DB002981
5593	16	8230DB007447
5594	16	8230DB002983
5595	16	8230DB002984
5596	16	8230DB007449
5597	16	8230DB007442
5598	16	8230DB007446
5599	16	8230DB001149
5600	16	8230DB004869
5601	16	8230DB004870
5602	16	8230DB004871
5603	16	8230DB004872
5604	16	8230DB004873
5605	16	8230DB004874
5606	16	8230DB002532
5607	16	8230DB002533
5608	16	8230DB002534
5609	16	8230DB002535
5610	16	8230DB002536
5611	16	8230DB002616
5612	16	8230DB002617
5613	16	8230DB002557
5614	16	8230DB004436
5615	16	8230DB002363
5616	16	8230DB005008
5617	16	8230DB004640
5618	16	8230DB004347
5619	16	8230DB002349
5620	16	8230DB002351
5621	16	8230DB002621
5622	16	8230DB004644
5623	16	8230DB004645
5624	16	8230DB004930
5625	16	8230DB004931
5626	16	8230DB007459
5627	16	8230DB005022
5628	17	8230DB004359
5629	17	8230DB004360
5630	17	8230DB004361
5631	17	8230DB002202
5632	17	8230DB002203
5633	17	8230DB002204
5634	17	8230DB004888
5635	17	8230DB004799
5636	17	8230DB002205
5637	17	8230DB002687
5638	17	8220DB002688
5639	17	8220DB002689
5640	17	8220DB002696
5641	17	8220DB002697
5642	17	8220DB002700
5643	17	8220DB002701
5644	17	8220DB002702
5645	17	8220DB002784
5646	17	8220DB002785
5647	17	8220DB002786
5648	17	8220DB002787
5649	17	8220DB002181
5650	17	8220DB002182
5651	17	8220DB002778
5652	17	8220DB002185
5653	17	8220DB001421
5654	17	8220DB002317
5655	17	8220DB002318
5656	17	8220DB002319
5657	17	8220DB002464
5658	17	8220DB002465
5659	17	8220DB002466
5660	17	8220DB002467
5661	17	8220DB002494
5662	17	8220DB002495
5663	17	8220DB002496
5664	17	8220DB002497
5665	17	8220DB002471
5666	17	8220DB002472
5667	17	8220DB002473
5668	17	8220DB002474
5669	17	8220DB002475
5670	17	8220DB002476
5671	17	8220DB002477
5672	17	8220DB002478
5673	17	8220DB004527
5674	17	8220DB002788
5675	17	8220DB002789
5676	17	8220DB002790
5677	17	8220DB000903
5678	17	8220DB000904
5679	17	8220DB000779
5680	17	8220DB000780
5681	17	8220DB000781
5682	17	8220DB002796
5683	17	8220DB002797
5684	17	8220DB000414
5685	17	8220DB000415
5686	17	8220DB000416
5687	17	8220DB000417
5688	17	8220DB002800
5689	17	8220DB002801
5690	17	8220DB007599
5691	18	8220DB000385
5692	18	8220DB002806
5693	18	8220DB002807
5694	18	8220DB002808
5695	18	8220DB000486
5696	18	8220DB000487
5697	18	8220DB002798
5698	18	8220DB002799
5699	18	8220DB000753
5700	18	8220DB000754
5701	18	8220DB000755
5702	18	8220DB000849
5703	18	8220DB000850
5704	18	8220DB000851
5705	18	8220DB002791
5706	18	8220DB007668
5707	18	8220DB002793
5708	18	8220DB002794
5709	18	8220DB001077
5710	18	8220DB002479
5711	18	8220DB002480
5712	18	8220DB002481
5713	18	8220DB002482
5714	18	8220DB002483
5715	18	8220DB002484
5716	18	8220DB002485
5717	18	8220DB002486
5718	18	8220DB002487
5719	18	8220DB002488
5720	18	8220DB002489
5721	18	8220DB002448
5722	18	8220DB005026
5723	18	8220DB002450
5724	18	8220DB002328
5725	18	8220DB002329
5726	18	8220DB002330
5727	18	8220DB002331
5728	18	8220DB002101
5729	18	8220DB002102
5730	18	8220DB002726
5731	18	8220DB002727
5732	18	8220DB002105
5733	18	8220DB002780
5734	18	8220DB002781
5735	18	8220DB002782
5736	18	8220DB002783
5737	18	8220DB002652
5738	18	8220DB002653
5739	18	8220DB002654
5740	18	8220DB002655
5741	18	8220DB002656
5742	18	8220DB002668
5743	18	8220DB002672
5744	18	8230DB002673
5745	18	8230DB002206
5746	18	8230DB002207
5747	18	8230DB002208
5748	18	8230DB002210
5749	18	8230DB002211
5750	18	8230DB002212
5751	18	8230DB007165
5752	19	8350DB004168
5753	19	8350DB004170
5754	19	8350DB004132
5755	19	8350DB004134
5756	19	8350DB004135
5757	19	8350DB004136
5758	19	8350DB004207
5759	19	8350DB004208
5760	19	8350DB004209
5761	19	8350DB004210
5762	19	8350DB004211
5763	19	8350DB004212
5764	19	8350DB004213
5765	19	8350DB005139
5766	19	8350DB004214
5767	19	8350DB004215
5768	19	8350DB004216
5769	19	8350DB004289
5770	19	8350DB004290
5771	19	8350DB004291
5772	19	8350DB004222
5773	19	8350DB004224
5774	19	8350DB004225
5775	19	8350DB004226
5776	19	8350DB007462
5777	19	8350DB007461
5778	19	8350DB004227
5779	19	8350DB004228
5780	19	8350DB004229
5781	19	8350DB004230
5782	19	8350DB004232
5783	19	8350DB007351
5784	19	8350DB004234
5785	19	8350DB004235
5786	19	8350DB006019
5787	19	8350DB004236
5788	19	8350DB004650
5789	19	8350DB004651
5790	19	8350DB004652
5791	19	8350DB004653
5792	19	8350DB004654
5793	19	8350DB004655
5794	19	8350DB006138
5795	20	8350DB004657
5796	20	8350DB007279
5797	20	8350DB004658
5798	20	8350DB004659
5799	20	8350DB004660
5800	20	8350DB004661
5801	20	8350DB004238
5802	20	8350DB004239
5803	20	8350DB004237
5804	20	8350DB003442
5805	20	8350DB004240
5806	20	8350DB004241
5807	20	8350DB004242
5808	20	8350DB004243
5809	20	8350DB004244
5810	20	8350DB004277
5811	20	8350DB004278
5812	20	8350DB004279
5813	20	8350DB004280
5814	20	8350DB007462
5815	20	8350DB007461
5816	20	8350DB004281
5817	20	8350DB004282
5818	20	8350DB004283
5819	20	8350DB004284
5820	20	8350DB004292
5821	20	8350DB004293
5822	20	8350DB004294
5823	20	8350DB004295
5824	20	8350DB004296
5825	20	8350DB004297
5826	20	8350DB004299
5827	20	8350DB004300
5828	20	8350DB004301
5829	20	8350DB004302
5830	20	8350DB005135
5831	20	8350DB004303
5832	20	8350DB004304
5833	20	8350DB004148
5834	20	8350DB004149
5835	20	8350DB003045
5836	20	8350DB004150
5837	20	8350DB004151
5838	20	8350DB004156
5839	21	8350DB004109
5840	21	8350DB004110
5841	21	8350DB004111
5842	21	8350DB004112
5843	21	8350DB004113
5844	21	8350DB004095
5845	21	8350DB004192
5846	21	8350DB004194
5847	21	8350DB004196
5848	21	8350DB004422
5849	21	8350DB007369
5850	21	8350DB007294
5851	21	8350DB004132
5852	21	8350DB004134
5853	21	8350DB004135
5854	21	8350DB004136
5855	21	8350DB004207
5856	21	8350DB004137
5857	21	8350DB004138
5858	21	8350DB004139
5859	21	8350DB004140
5860	21	8350DB007522
5861	21	8350DB004175
5862	21	8350DB005091
5863	21	8350DB005092
5864	22	8350DB004167
5865	22	8350DB004170
5866	22	8350DB004153
5867	22	8350DB004154
5868	22	8350DB004416
5869	22	8350DB004417
5870	22	8350DB004419
5871	22	8350DB004420
5872	22	8350DB004421
5873	22	8350DB002113
5874	22	8350DB004183
5875	22	8350DB004184
5876	22	8350DB004185
5877	22	8350DB004584
5878	22	8350DB004186
5879	22	8350DB004187
5880	22	8350DB004189
5881	22	8350DB004190
5882	22	8350DB004103
5883	22	8350DB004104
5884	22	8350DB004105
5885	22	8350DB004106
5886	22	8350DB006139
5887	23	8220DB007571
5888	23	8220DB001644
5889	23	8220DB001605
5890	23	8220DB000092
5891	23	8220DB000093
5892	23	8240DB000124
5893	23	8240DB004686
5894	23	8240DB004687
5895	23	8220DB000102
5896	23	8220DB006239
5897	23	8220DB000104
5898	23	8220DB006241
5899	23	8220DB000105
5900	23	8220DB004365
5901	23	8220DB004367
5902	23	8220DB004788
5903	23	8220DB006273
5904	23	8220DB000136
5905	23	8220DB000137
5906	23	8220DB000193
5907	23	8220DB000979
5908	23	8220DB001529
5909	23	8220DB001530
5910	23	8220DB001531
5911	23	8220DB001532
5912	23	8220DB001592
5913	23	8220DB001593
5914	23	8220DB001594
5915	23	8220DB001596
5916	23	8220DB004363
5917	23	8220DB001598
5918	23	8220DB001597
5919	23	8220DB001599
5920	23	8220DB001600
5921	23	8220DB001601
5922	23	8220DB001602
5923	23	8220DB001603
5924	23	8220DB001604
5925	23	8220DB001573
5926	23	8220DB001574
5927	23	8220DB001575
5928	23	8220DB004583
5929	23	8220DB001576
5930	23	8220DB001577
5931	23	8220DB001578
5932	23	8220DB004364
5933	23	8240DB001580
5934	23	8240DB007237
5935	23	8240DB007241
5936	23	8240DB007247
5937	23	8240DB007243
5938	23	8240DB007126
5939	23	8240DB007124
5940	23	8240DB007343
5941	23	8240DB007318
5942	23	8240DB004980
5943	23	8240DB002289
5944	23	8240DB001835
5945	23	8240DB001836
5946	23	8240DB001837
5947	23	8240DB002338
5948	23	8240DB002290
5949	23	8240DB006179
5950	23	8240DB007297
5951	23	8240DB001813
5952	23	8240DB001814
5953	23	8240DB001852
5954	23	8240DB001853
5955	23	8240DB001854
5956	23	8240DB001844
5957	23	8240DB006172
5958	23	8240DB001856
5959	23	8240DB001857
5960	23	8240DB001858
5961	23	8240DB001859
5962	23	8240DB001860
5963	23	8240DB004492
5964	23	8240DB001861
5965	23	8240DB001862
5966	23	8240DB001863
5967	23	8240DB001864
5968	23	8240DB001865
5969	23	8240DB001866
5970	23	8240DB001850
5971	23	8240DB001867
5972	23	8240DB004489
5973	23	8240DB004323
5974	23	8240DB001824
5975	23	8240DB001825
5976	23	8240DB001826
5977	24	8240DB001828
5978	24	8240DB001829
5979	24	8240DB001830
5980	24	8240DB001831
5981	24	8240DB004464
5982	24	8240DB001869
5983	24	8240DB001870
5984	24	8240DB001871
5985	24	8240DB001872
5986	24	8240DB001873
5987	24	8240DB001874
5988	24	8240DB001875
5989	24	8240DB001876
5990	24	8240DB001877
5991	24	8240DB001878
5992	24	8240DB001879
5993	24	8240DB001880
5994	24	8240DB001881
5995	24	8240DB007379
5996	24	8240DB004903
5997	24	8240DB001883
5998	24	8240DB001884
5999	24	8240DB001902
6000	24	8240DB001903
6001	24	8240DB001904
6002	24	8240DB001840
6003	24	8240DB001841
6004	24	8240DB001842
6005	24	8240DB007298
6006	24	8240DB002294
6007	24	8240DB006039
6008	24	8240DB001816
6009	24	8240DB001817
6010	24	8240DB001818
6011	24	8240DB001819
6012	24	8240DB001820
6013	24	8240DB002468
6014	24	8240DB007319
6015	24	8240DB007342
6016	24	8240DB007125
6017	24	8240DB007344
6018	24	8240DB002510
6019	24	8240DB007242
6020	24	8240DB007238
6021	24	8240DB007224
6022	24	8240DB001581
6023	24	8220DB004793
6024	24	8220DB006068
6025	24	8220DB001584
6026	24	8220DB001585
6027	24	8220DB001586
6028	24	8220DB001600
6029	24	8220DB001601
6030	24	8220DB001602
6031	24	8220DB001603
6032	24	8220DB001604
6033	24	8220DB001587
6034	24	8220DB004539
6035	24	8220DB001606
6036	24	8220DB001607
6037	24	8220DB001608
6038	24	8220DB001609
6039	24	8220DB001610
6040	24	8220DB007471
6041	24	8220DB001512
6042	24	8220DB001538
6043	24	8220DB001513
6044	24	8220DB004592
6045	24	8220DB004375
6046	24	8220DB004366
6047	24	8220DB004479
6048	24	8220DB004376
6049	24	8220DB004377
6050	24	8220DB004890
6051	24	8220DB004369
6052	24	8220DB004368
6053	24	8220DB004781
6054	24	8220DB000107
6055	24	8220DB007092
6056	24	8220DB000110
6057	24	8240DB000124
6058	24	8240DB004686
6059	24	8240DB004687
6060	24	8220DB000112
6061	24	8220DB000113
6062	24	8220DB000114
6063	24	8240DB001645
6064	24	8220DB001646
6065	25	8240DB004747
6066	25	8240DB002960
6067	25	8240DB001545
6068	25	8240DB001816
6069	25	8240DB006171
6070	25	8240DB004974
6071	25	8240DB004976
6072	25	8240DB007126
6073	25	8240DB007124
6074	25	8240DB007343
6075	25	8240DB007575
6076	25	8240DB004978
6077	25	8240DB004979
6078	25	8240DB004986
6079	25	8240DB007107
6080	25	8240DB007102
6081	25	8240DB007103
6082	25	8240DB007104
6083	25	8240DB007105
6084	25	8240DB007106
6085	25	8240DB006005
6086	25	8240DB001546
6087	25	8240DB007381
6088	25	8240DB004742
6089	25	8240DB004743
6090	25	8240DB004744
6091	26	8240DB004745
6092	26	8240DB004989
6093	26	8240DB004990
6094	26	8240DB004991
6095	26	8240DB004992
6096	26	8240DB004986
6097	26	8240DB007107
6098	26	8240DB007102
6099	26	8240DB007103
6100	26	8240DB007104
6101	26	8240DB007105
6102	26	8240DB007106
6103	26	8240DB006005
6104	26	8240DB001546
6105	26	8240DB005071
6106	26	8240DB005072
6107	26	8240DB004321
6108	26	8240DB007570
6109	26	8240DB007342
6110	26	8240DB007125
6111	26	8240DB007344
6112	26	8240DB007334
6113	26	8240DB006274
6114	26	8240DB001838
6115	26	8240DB002338
6116	26	8240DB000661
6117	27	8240DB001828
6118	27	8240DB001829
6119	27	8240DB001830
6120	27	8240DB001831
6121	27	8240DB004747
6122	27	8240DB002960
6123	27	8240DB001545
6124	27	8240DB001816
6125	27	8240DB001817
6126	27	8240DB001818
6127	27	8240DB001819
6128	27	8240DB001820
6129	27	8240DB002468
6130	27	8240DB004978
6131	27	8240DB004979
6132	27	8240DB004986
6133	27	8240DB007107
6134	27	8240DB007102
6135	27	8240DB007103
6136	27	8240DB007104
6137	27	8240DB007105
6138	27	8240DB007106
6139	27	8240DB006005
6140	27	8240DB001546
6141	28	8240DB007073
6142	28	8240DB007097
6143	28	8240DB007098
6144	28	8240DB007099
6145	28	8240DB007100
6146	28	8240DB007101
6147	28	8240DB007505
6148	28	8240DB005071
6149	28	8240DB005072
6150	28	8240DB004980
6151	28	8240DB002289
6152	28	8240DB001835
6153	28	8240DB001836
6154	28	8240DB001837
6155	28	8240DB002338
6156	28	8240DB000661
6157	28	8240DB007026
6158	28	8240DB004323
6159	28	8240DB001824
6160	28	8240DB001825
6161	28	8240DB001826
6162	29	8240DB007026
6163	29	8240DB004323
6164	29	8240DB004324
6165	29	8240DB004769
6166	29	8240DB004770
6167	29	8240DB004765
6168	29	8240DB004766
6169	29	8240DB004767
6170	29	8240DB004768
6171	29	8240DB004325
6172	29	8310DB003328
6173	29	8310DB003329
6174	29	8310DB003330
6175	29	8310DB003331
6176	29	8310DB003351
6177	29	8310DB003332
6178	30	8310DB003333
6179	30	8310DB003334
6180	30	8310DB003352
6181	30	8310DB003335
6182	30	8310DB003336
6183	30	8310DB003337
6184	30	8310DB003338
6185	30	8310DB003339
6186	30	8240DB003340
6187	30	8240DB004324
6188	30	8240DB004769
6189	30	8240DB004770
6190	30	8240DB004765
6191	30	8240DB004766
6192	30	8240DB004767
6193	30	8240DB004768
6194	31	8240DB003677
6195	31	8240DB003678
6196	31	8240DB003679
6197	31	8240DB003711
6198	31	8240DB003712
6199	31	8240DB003713
6200	31	8240DB003714
6201	31	8240DB003715
6202	31	8240DB005175
6203	31	8240DB003755
6204	31	8240DB003756
6205	31	8240DB003757
6206	31	8240DB003758
6207	31	8240DB003759
6208	31	8240DB003760
6209	31	8240DB003761
6210	31	8240DB003762
6211	31	8240DB003763
6212	31	8240DB003764
6213	31	8240DB003765
6214	31	8240DB003766
6215	31	8240DB003767
6216	31	8240DB003768
6217	31	8240DB003770
6218	31	8240DB003769
6219	31	8240DB003771
6220	31	8240DB003772
6221	31	8240DB003773
6222	31	8240DB005176
6223	31	8240DB003774
6224	31	8240DB007172
6225	31	8240DB003775
6226	31	8240DB003777
6227	31	8240DB003778
6228	31	8240DB003781
6229	31	8240DB003782
6230	31	8240DB003783
6231	31	8240DB003784
6232	31	8240DB003785
6233	31	8240DB003786
6234	31	8240DB003787
6235	31	8240DB003788
6236	31	8240DB003789
6237	31	8240DB003790
6238	31	8240DB003791
6239	31	8240DB003792
6240	31	8240DB003793
6241	31	8240DB003794
6242	31	8240DB003795
6243	31	8240DB003797
6244	31	8240DB003798
6245	31	8240DB003799
6246	31	8240DB006076
6247	31	8240DB006077
6248	31	8240DB003569
6249	31	8240DB003571
6250	31	8240DB003801
6251	31	8240DB003802
6252	31	8240DB003805
6253	31	8240DB007175
6254	31	8240DB003806
6255	31	8240DB003807
6256	31	8240DB003808
6257	31	8240DB003809
6258	32	8240DB007348
6259	32	8240DB003671
6260	32	8240DB003672
6261	32	8240DB003674
6262	32	8240DB003675
6263	32	8240DB003676
6264	32	8240DB003677
6265	32	8240DB003678
6266	32	8240DB003679
6267	32	8240DB003711
6268	32	8240DB003712
6269	32	8240DB003713
6270	32	8240DB003714
6271	32	8240DB003715
6272	32	8240DB005175
6273	32	8240DB003755
6274	32	8240DB003756
6275	32	8240DB003757
6276	32	8240DB003758
6277	32	8240DB003759
6278	32	8240DB003760
6279	32	8240DB003761
6280	32	8240DB003762
6281	32	8240DB003763
6282	32	8240DB003764
6283	32	8240DB003765
6284	32	8240DB003766
6285	32	8240DB003767
6286	32	8240DB003768
6287	32	8240DB003770
6288	32	8240DB003769
6289	32	8240DB003771
6290	32	8240DB003772
6291	32	8240DB003773
6292	32	8240DB005176
6293	32	8240DB003774
6294	32	8240DB007172
6295	32	8240DB003775
6296	32	8240DB003777
6297	32	8240DB003778
6298	32	8240DB003781
6299	32	8240DB003782
6300	32	8240DB003783
6301	32	8240DB003784
6302	32	8240DB003785
6303	32	8240DB003786
6304	32	8240DB003787
6305	32	8240DB003788
6306	32	8240DB003789
6307	32	8240DB003790
6308	32	8240DB003791
6309	32	8240DB003792
6310	32	8240DB003793
6311	32	8240DB003794
6312	32	8240DB003795
6313	32	8240DB003797
6314	32	8240DB003798
6315	32	8240DB003799
6316	32	8240DB006076
6317	32	8240DB006077
6318	32	8240DB003569
6319	32	8240DB003571
6320	32	8240DB003801
6321	33	8240DB003732
6322	33	8240DB003733
6323	33	8240DB003734
6324	33	8240DB003735
6325	33	8240DB007204
6326	33	8240DB003736
6327	33	8240DB003739
6328	33	8240DB003738
6329	33	8240DB007170
6330	33	8240DB003740
6331	33	8240DB003741
6332	33	8240DB005165
6333	33	8240DB007169
6334	33	8240DB003743
6335	33	8240DB003780
6336	33	8240DB007723
6337	33	8240DB003745
6338	33	8240DB003746
6339	33	8240DB007040
6340	33	8240DB003749
6341	33	8240DB003750
6342	33	8240DB003752
6343	33	8240DB003751
6344	33	8240DB003689
6345	33	8240DB003690
6346	34	8240DB003732
6347	34	8240DB003733
6348	34	8240DB003734
6349	34	8240DB003735
6350	34	8240DB007204
6351	34	8240DB003736
6352	34	8240DB003738
6353	34	8240DB007170
6354	34	8240DB003740
6355	34	8240DB003741
6356	34	8240DB005165
6357	34	8240DB007169
6358	34	8240DB003743
6359	34	8240DB003780
6360	34	8240DB007723
6361	34	8240DB003745
6362	34	8240DB003746
6363	34	8240DB007040
6364	34	8240DB003749
6365	34	8240DB003750
6366	34	8240DB003752
6367	34	8240DB003751
6368	34	8240DB003689
6369	34	8240DB003690
6370	35	8240DB003723
6371	35	8240DB003724
6372	35	8240DB003725
6373	35	8240DB003726
6374	35	8240DB007039
6375	35	8240DB007204
6376	35	8240DB003728
6377	35	8240DB003729
6378	35	8240DB003730
6379	35	8240DB003732
6380	35	8240DB003733
6381	35	8240DB003734
6382	35	8240DB003735
6383	35	8240DB003738
6384	35	8240DB007170
6385	35	8240DB003740
6386	35	8240DB003741
6387	35	8240DB005165
6388	35	8240DB007169
6389	35	8240DB003743
6390	35	8240DB003780
6391	35	8240DB007721
6392	35	8240DB003755
6393	35	8240DB003756
6394	35	8240DB003757
6395	35	8240DB003758
6396	35	8240DB003759
6397	35	8240DB003760
6398	35	8240DB003761
6399	35	8240DB003762
6400	35	8240DB003763
6401	36	8240DB007722
6402	36	8240DB007691
6403	36	8240DB003721
6404	36	8240DB003722
6405	36	8240DB005069
6406	36	8240DB003723
6407	36	8240DB003724
6408	36	8240DB003725
6409	36	8240DB003726
6410	36	8240DB003728
6411	36	8240DB003729
6412	36	8240DB003730
6413	36	8240DB003732
6414	36	8240DB003733
6415	36	8240DB003734
6416	36	8240DB003735
6417	36	8240DB007204
6418	36	8240DB003736
6419	36	8240DB003738
6420	36	8240DB007170
6421	36	8240DB003740
6422	37	8350DB004533
6423	37	8350DB004844
6424	37	8350DB004177
6425	37	8350DB004178
6426	37	8350DB004142
6427	37	8350DB004143
6428	37	8350DB004144
6429	37	8350DB004145
6430	37	8350DB004146
6431	37	8350DB004304
6432	37	8350DB004148
6433	37	8350DB004149
6434	37	8350DB003045
6435	37	8350DB004150
6436	37	8350DB004151
6437	37	8350DB002997
6438	37	8350DB004156
6439	37	8350DB004169
6440	37	8350DB004170
6441	37	8350DB004153
6442	37	8350DB004154
6443	37	8350DB004416
6444	37	8350DB004201
6445	37	8250DB004202
6446	37	8250DB004203
6447	37	8250DB005090
6448	37	8250DB004204
6449	37	8250DB004205
6450	37	8250DB004206
6451	37	8250DB003140
6452	37	8250DB003545
6453	37	8250DB003552
6454	37	8250DB003553
6455	37	8250DB003554
6456	37	8250DB003555
6457	37	8250DB003556
6458	37	8250DB003557
6459	37	8250DB003560
6460	37	8250DB007323
6461	37	8250DB003561
6462	37	8250DB003225
6463	37	8250DB003226
6464	37	8250DB003227
6465	37	8250DB003228
6466	37	8250DB003229
6467	37	8250DB007472
6468	37	8250DB003230
6469	37	8250DB003231
6470	37	8250DB003246
6471	37	8250DB003247
6472	37	8250DB007056
6473	37	8250DB003248
6474	37	8250DB003343
6475	37	8250DB003236
6476	37	8250DB003237
6477	37	8250DB003238
6478	37	8250DB003239
6479	37	8250DB003240
6480	37	8250DB003068
6481	37	8250DB003069
6482	37	8250DB003070
6483	38	8350DB004533
6484	38	8350DB004844
6485	38	8350DB004177
6486	38	8350DB004178
6487	38	8350DB004142
6488	38	8350DB004143
6489	38	8350DB004144
6490	38	8350DB005088
6491	38	8350DB005089
6492	38	8350DB004176
6493	38	8350DB004149
6494	38	8350DB003045
6495	38	8350DB004150
6496	38	8350DB004151
6497	38	8350DB002997
6498	38	8350DB004156
6499	38	8350DB004169
6500	38	8350DB004170
6501	38	8350DB004153
6502	38	8350DB004154
6503	38	8350DB004416
6504	38	8350DB004201
6505	38	8250DB004202
6506	38	8250DB004203
6507	38	8250DB005090
6508	38	8250DB004204
6509	38	8250DB004205
6510	38	8250DB004206
6511	38	8250DB003140
6512	38	8250DB003545
6513	38	8250DB003552
6514	38	8250DB003553
6515	38	8250DB003554
6516	38	8250DB003555
6517	38	8250DB003556
6518	38	8250DB003557
6519	38	8250DB003560
6520	38	8250DB007323
6521	38	8250DB003561
6522	38	8250DB003225
6523	38	8250DB003226
6524	38	8250DB003227
6525	38	8250DB003228
6526	38	8250DB003229
6527	38	8250DB007472
6528	38	8250DB003230
6529	38	8250DB003231
6530	38	8250DB003246
6531	38	8250DB003247
6532	38	8250DB007056
6533	38	8250DB003248
6534	38	8250DB003343
6535	38	8250DB003236
6536	38	8250DB003237
6537	38	8250DB003238
6538	38	8250DB003239
6539	38	8250DB003240
6540	38	8250DB003068
6541	38	8250DB003069
6542	38	8250DB003070
6543	39	8350DB004533
6544	39	8350DB004844
6545	39	8350DB004177
6546	39	8350DB004178
6547	39	8350DB004142
6548	39	8350DB004143
6549	39	8350DB004144
6550	39	8350DB005088
6551	39	8350DB005089
6552	39	8350DB004176
6553	39	8350DB004149
6554	39	8350DB003045
6555	39	8350DB004150
6556	39	8350DB004151
6557	39	8350DB002997
6558	39	8350DB004156
6559	39	8350DB004169
6560	39	8350DB004170
6561	39	8350DB004153
6562	39	8350DB004154
6563	39	8350DB004416
6564	39	8350DB004201
6565	39	8250DB004202
6566	39	8250DB004203
6567	39	8250DB005090
6568	39	8250DB004204
6569	39	8250DB004205
6570	39	8250DB004206
6571	39	8250DB003140
6572	39	8250DB003545
6573	39	8250DB003546
6574	39	8250DB003551
6575	39	8250DB003547
6576	39	8250DB003548
6577	39	8250DB003552
6578	39	8250DB003553
6579	39	8250DB003554
6580	39	8250DB003555
6581	39	8250DB003556
6582	39	8250DB003557
6583	39	8250DB003560
6584	39	8250DB007323
6585	39	8250DB003561
6586	39	8250DB003225
6587	39	8250DB003226
6588	39	8250DB003227
6589	39	8250DB003228
6590	39	8250DB003229
6591	39	8250DB007472
6592	39	8250DB003230
6593	39	8250DB003231
6594	39	8250DB003246
6595	39	8250DB003247
6596	39	8250DB007056
6597	39	8250DB003248
6598	39	8250DB003343
6599	39	8250DB003236
6600	39	8250DB003237
6601	39	8250DB003238
6602	39	8250DB003239
6603	39	8250DB003240
6604	39	8250DB003068
6605	39	8250DB003069
6606	39	8250DB003070
6607	40	8250DB002037
6608	40	8250DB002040
6609	40	8250DB003047
6610	40	8250DB003202
6611	40	8250DB003203
6612	40	8250DB003204
6613	40	8250DB003205
6614	40	8250DB003206
6615	40	8250DB003241
6616	40	8250DB003242
6617	40	8250DB003243
6618	40	8250DB003244
6619	40	8250DB003245
6620	40	8250DB003212
6621	40	8250DB003213
6622	40	8250DB003214
6623	40	8250DB003215
6624	40	8250DB003216
6625	40	8250DB003217
6626	40	8250DB003218
6627	40	8250DB003534
6628	40	8250DB003535
6629	40	8250DB003536
6630	40	8250DB003537
6631	40	8250DB003538
6632	40	8250DB007556
6633	40	8250DB003539
6634	40	8250DB003540
6635	40	8250DB003541
6636	40	8250DB003546
6637	40	8250DB003551
6638	40	8250DB003547
6639	40	8250DB003548
6640	40	8250DB003542
6641	40	8250DB003543
6642	40	8250DB003139
6643	40	8250DB004124
6644	40	8250DB004125
6645	40	8250DB004126
6646	40	8250DB004127
6647	40	8250DB004128
6648	40	8350DB004129
6649	40	8350DB004130
6650	40	8350DB004131
6651	40	8350DB007294
6652	40	8350DB004156
6653	40	8350DB004169
6654	40	8350DB004170
6655	40	8350DB004132
6656	40	8350DB004134
6657	40	8350DB004135
6658	40	8350DB004136
6659	40	8350DB004147
6660	40	8350DB005167
6661	40	8350DB004139
6662	40	8350DB004140
6663	40	8350DB007522
6664	40	8350DB004175
6665	40	8350DB005091
6666	40	8350DB005092
6667	41	8220DB000956
6668	41	8240DB000957
6669	41	8220DB000958
6670	41	8220DB000959
6671	41	8220DB000960
6672	41	8220DB000961
6673	41	8220DB000962
6674	41	8220DB000963
6675	41	8220DB000964
6676	41	8220DB000965
6677	41	8220DB000966
6678	41	8220DB000967
6679	41	8220DB000968
6680	41	8220DB001252
6681	41	8220DB001228
6682	41	8220DB001244
6683	41	8220DB004597
6684	41	8220DB001246
6685	41	8220DB001229
6686	41	8220DB005174
6687	41	8220DB006078
6688	41	8220DB007112
6689	41	8220DB000972
6690	41	8240DB000973
6691	41	8240DB000974
6692	41	8240DB000975
6693	41	8240DB005055
6694	41	8240DB000976
6695	41	8220DB000127
6696	41	8220DB000102
6697	41	8220DB006239
6698	41	8220DB000104
6699	41	8220DB006241
6700	41	8220DB000105
6701	41	8220DB004365
6702	41	8220DB004367
6703	41	8240DB006219
6704	41	8240DB006229
6705	41	8240DB006364
6706	41	8220DB001558
6707	41	8220DB002957
6708	41	8220DB002958
6709	41	8220DB004938
6710	41	8220DB007845
6711	42	8220DB007838
6712	42	8220DB000987
6713	42	8220DB004937
6714	42	8220DB001547
6715	42	8220DB001548
6716	42	8220DB001280
6717	42	8240DB006366
6718	42	8240DB006230
6719	42	8240DB006228
6720	42	8220DB004368
6721	42	8220DB004781
6722	42	8220DB000107
6723	42	8220DB006125
6724	42	8220DB007092
6725	42	8220DB000110
6726	42	8220DB007828
6727	42	8220DB000126
6728	42	8240DB000989
6729	42	8240DB006009
6730	42	8240DB000990
6731	42	8240DB000992
6732	42	8220DB007044
6733	42	8220DB000993
6734	42	8220DB005060
6735	42	8220DB005061
6736	42	8220DB001235
6737	42	8220DB001251
6738	42	8220DB000253
6739	42	8220DB007130
6740	42	8220DB001237
6741	42	8220DB001253
6742	42	8220DB000997
6743	42	8220DB000998
6744	42	8220DB000999
6745	42	8220DB001000
6746	42	8220DB001001
6747	42	8220DB001002
6748	42	8220DB001003
6749	42	8220DB001004
6750	42	8220DB001005
6751	42	8220DB001006
6752	42	8220DB001007
6753	42	8220DB001008
6754	42	8220DB001009
6755	42	8240DB001010
6756	43	8250DB002037
6757	43	8250DB003046
6758	43	8250DB003047
6759	43	8250DB003048
6760	43	8250DB003049
6761	43	8250DB003050
6762	43	8250DB003051
6763	43	8250DB003052
6764	43	8250DB003053
6765	43	8250DB003054
6766	43	8250DB003055
6767	43	8250DB003056
6768	43	8250DB003057
6769	43	8250DB004830
6770	43	8250DB003091
6771	43	8250DB003092
6772	43	8250DB003093
6773	43	8250DB003094
6774	43	8250DB003095
6775	43	8250DB003096
6776	43	8250DB003097
6777	43	8250DB003098
6778	44	8250DB003099
6779	44	8250DB003100
6780	44	8250DB003101
6781	44	8250DB003102
6782	44	8250DB003103
6783	44	8250DB005105
6784	44	8250DB003105
6785	44	8250DB003106
6786	44	8250DB003107
6787	44	8250DB003108
6788	44	8250DB007666
6789	44	8250DB003111
6790	44	8250DB003058
6791	44	8250DB003059
6792	44	8250DB003060
6793	44	8250DB003061
6794	44	8250DB003062
6795	44	8250DB003063
6796	44	8250DB003064
6797	44	8250DB003065
6798	44	8250DB003066
6799	44	8250DB003067
6800	44	8250DB003068
6801	44	8250DB003069
6802	44	8250DB003070
6803	45	8250DB002039
6804	45	8250DB002040
6805	45	8250DB002041
6806	45	8250DB002042
6807	45	8250DB002043
6808	45	8250DB002044
6809	45	8250DB002045
6810	45	8250DB002046
6811	45	8250DB002047
6812	45	8250DB002048
6813	45	8250DB002049
6814	45	8250DB002050
6815	45	8250DB002051
6816	45	8250DB002053
6817	45	8250DB002054
6818	45	8250DB002055
6819	45	8250DB007636
6820	45	8250DB007651
6821	45	8250DB007635
6822	45	8250DB003254
6823	45	8250DB005127
6824	45	8250DB005128
6825	45	8250DB003126
6826	45	8250DB003255
6827	45	8250DB003309
6828	45	8250DB003306
6829	45	8250DB004772
6830	45	8250DB003276
6831	45	8250DB007372
6832	45	8250DB005106
6833	45	8250DB004396
6834	45	8250DB004773
6835	45	8250DB004393
6836	45	8250DB004395
6837	45	8250DB004313
6838	45	8250DB007360
6839	45	8250DB003277
6840	45	8250DB003278
6841	45	8250DB003279
6842	45	8250DB003478
6843	45	8250DB003280
6844	46	8250DB002039
6845	46	8250DB002040
6846	46	8250DB002041
6847	46	8250DB002042
6848	46	8250DB002043
6849	46	8250DB002044
6850	46	8250DB002045
6851	46	8250DB002046
6852	46	8250DB002047
6853	46	8250DB002048
6854	46	8250DB002049
6855	46	8250DB002050
6856	46	8250DB002051
6857	46	8250DB002053
6858	46	8250DB002054
6859	46	8250DB002055
6860	46	8250DB007636
6861	46	8250DB007651
6862	46	8250DB007635
6863	46	8250DB003254
6864	46	8250DB005127
6865	46	8250DB005128
6866	46	8250DB003126
6867	46	8250DB003255
6868	46	8250DB003309
6869	46	8250DB003306
6870	46	8250DB004772
6871	46	8250DB003276
6872	46	8250DB007372
6873	46	8250DB005106
6874	46	8250DB004396
6875	46	8250DB004773
6876	46	8250DB004393
6877	46	8250DB004395
6878	46	8250DB004313
6879	46	8250DB003277
6880	46	8250DB003278
6881	46	8250DB003279
6882	46	8250DB003478
6883	46	8250DB003280
6884	47	8250DB002039
6885	47	8250DB002040
6886	47	8250DB002041
6887	47	8250DB002042
6888	47	8250DB002043
6889	47	8250DB002044
6890	47	8250DB002045
6891	47	8250DB002046
6892	47	8250DB004568
6893	47	8250DB004569
6894	47	8250DB004570
6895	47	8250DB002056
6896	47	8250DB002057
6897	47	8250DB002058
6898	47	8250DB002059
6899	47	8250DB002060
6900	47	8250DB002061
6901	47	8250DB002062
6902	47	8250DB002063
6903	47	8250DB002064
6904	47	8250DB002065
6905	47	8250DB004637
6906	47	8250DB003322
6907	47	8250DB003563
6908	47	8250DB000444
6909	47	8250DB000445
6910	47	8250DB007393
6911	47	8250DB002880
6912	47	8250DB002882
6913	47	8250DB002883
6914	47	8250DB002885
6915	47	8250DB002886
6916	47	8250DB002887
6917	47	8250DB007718
6918	47	8250DB002842
6919	47	8250DB002843
6920	47	8250DB002844
6921	47	8250DB002845
6922	47	8250DB002846
6923	47	8250DB002847
6924	47	8250DB004397
6925	47	8250DB002848
6926	47	8250DB002849
6927	47	8250DB002850
6928	47	8250DB002851
6929	47	8250DB002852
6930	47	8250DB004707
6931	47	8250DB004708
6932	47	8250DB004336
6933	47	8250DB004337
6934	47	8250DB001317
6935	47	8250DB001318
6936	47	8250DB001319
6937	47	8250DB001281
6938	47	8230DB001329
6939	47	8230DB001330
6940	47	8230DB005129
6941	47	8230DB005130
6942	47	8230DB001138
6943	47	8230DB001139
6944	47	8230DB001140
6945	47	8230DB002515
6946	47	8230DB002516
6947	47	8230DB002517
6948	47	8230DB002518
6949	47	8230DB002520
6950	47	8230DB002521
6951	47	8230DB002522
6952	47	8230DB002524
6953	47	8230DB002523
6954	47	8230DB002532
6955	47	8230DB002533
6956	47	8230DB002534
6957	47	8230DB002535
6958	47	8230DB002536
6959	47	8230DB002616
6960	47	8230DB002617
6961	47	8230DB002557
6962	47	8230DB004436
6963	47	8230DB005008
6964	47	8230DB004640
6965	47	8230DB004347
6966	48	8230DB004342
6967	48	8230DB004348
6968	48	8230DB004646
6969	48	8230DB004647
6970	48	8230DB004435
6971	48	8230DB002604
6972	48	8230DB002605
6973	48	8230DB002538
6974	48	8230DB002539
6975	48	8230DB002540
6976	48	8230DB002542
6977	48	8230DB006128
6978	48	8230DB002544
6979	48	8230DB002545
6980	48	8230DB002547
6981	48	8230DB002548
6982	48	8230DB000946
6983	48	8230DB001131
6984	48	8230DB001132
6985	48	8230DB001133
6986	48	8230DB001134
6987	48	8230DB005131
6988	48	8230DB005132
6989	48	8230DB001305
6990	48	8250DB001306
6991	48	8250DB001307
6992	48	8250DB001308
6993	48	8250DB001309
6994	48	8250DB004332
6995	48	8250DB004333
6996	48	8250DB004334
6997	48	8250DB004712
6998	48	8250DB002853
6999	48	8250DB002854
7000	48	8250DB002855
7001	48	8250DB002856
7002	48	8250DB002857
7003	48	8250DB002858
7004	48	8250DB002859
7005	48	8250DB002860
7006	48	8250DB002861
7007	48	8250DB002862
7008	48	8250DB002863
7009	48	8250DB002864
7010	48	8250DB004486
7011	48	8250DB002865
7012	48	8250DB002866
7013	48	8250DB007719
7014	48	8250DB007720
7015	48	8250DB002872
7016	48	8250DB002873
7017	48	8250DB002874
7018	48	8250DB002877
7019	48	8250DB007394
7020	48	8250DB002878
7021	48	8250DB002879
7022	48	8250DB004460
7023	48	8250DB000453
7024	48	8250DB004477
7025	48	8250DB003321
7026	48	8250DB004571
7027	48	8250DB002013
7028	48	8250DB002014
7029	48	8250DB004636
7030	48	8250DB002016
7031	48	8250DB002015
7032	48	8250DB002017
7033	48	8250DB002018
7034	48	8250DB002019
7035	48	8250DB002020
7036	48	8250DB002021
7037	48	8250DB002022
7038	48	8250DB004565
7039	48	8250DB004566
7040	48	8250DB004567
7041	48	8250DB002031
7042	48	8250DB002032
7043	48	8250DB002033
7044	48	8250DB002034
7045	48	8250DB002035
7046	48	8250DB002036
7047	49	8250DB002039
7048	49	8250DB002040
7049	49	8250DB002041
7050	49	8250DB002042
7051	49	8250DB002043
7052	49	8250DB002044
7053	49	8250DB002045
7054	49	8250DB002046
7055	49	8250DB004568
7056	49	8250DB004569
7057	49	8250DB004570
7058	49	8250DB002056
7059	49	8250DB002057
7060	49	8250DB002058
7061	49	8250DB002059
7062	49	8250DB002060
7063	49	8250DB002061
7064	49	8250DB002062
7065	49	8250DB002063
7066	49	8250DB002064
7067	49	8250DB002065
7068	49	8250DB004637
7069	49	8250DB003322
7070	49	8250DB003563
7071	49	8250DB000444
7072	49	8250DB000445
7073	49	8250DB004779
7074	49	8250DB007057
7075	49	8250DB004847
7076	49	8250DB004848
7077	49	8250DB000449
7078	49	8250DB000450
7079	49	8250DB003181
7080	49	8250DB000447
7081	49	8250DB005045
7082	49	8250DB007393
7083	49	8250DB002880
7084	49	8250DB002882
7085	49	8250DB002883
7086	49	8250DB002885
7087	49	8250DB002886
7088	49	8250DB002887
7089	49	8250DB007718
7090	49	8250DB002842
7091	49	8250DB002843
7092	49	8250DB002844
7093	49	8250DB002845
7094	49	8250DB002846
7095	49	8250DB002847
7096	49	8250DB004397
7097	49	8250DB002848
7098	49	8250DB002849
7099	49	8250DB002850
7100	49	8250DB002851
7101	49	8250DB002852
7102	49	8250DB004707
7103	49	8250DB004708
7104	49	8250DB004336
7105	49	8250DB004337
7106	49	8250DB001317
7107	49	8250DB001318
7108	49	8250DB001319
7109	49	8250DB001281
7110	49	8230DB001329
7111	49	8230DB001330
7112	49	8230DB005129
7113	49	8230DB005130
7114	49	8230DB001138
7115	49	8230DB001139
7116	49	8230DB001140
7117	49	8230DB002515
7118	49	8230DB002516
7119	49	8230DB002517
7120	49	8230DB002518
7121	49	8230DB002520
7122	49	8230DB002521
7123	49	8230DB002522
7124	49	8230DB002524
7125	49	8230DB002523
7126	49	8230DB002532
7127	49	8230DB002533
7128	49	8230DB002534
7129	49	8230DB002535
7130	49	8230DB002536
7131	49	8230DB002616
7132	49	8230DB002617
7133	49	8230DB002557
7134	49	8230DB004436
7135	49	8230DB005008
7136	49	8230DB004640
7137	49	8230DB004347
7138	50	8230DB004342
7139	50	8230DB004348
7140	50	8230DB004646
7141	50	8230DB004647
7142	50	8230DB004435
7143	50	8230DB002604
7144	50	8230DB002605
7145	50	8230DB002538
7146	50	8230DB002539
7147	50	8230DB002540
7148	50	8230DB002542
7149	50	8230DB006128
7150	50	8230DB002544
7151	50	8230DB002545
7152	50	8230DB002547
7153	50	8230DB002548
7154	50	8230DB000946
7155	50	8230DB001131
7156	50	8230DB001132
7157	50	8230DB001133
7158	50	8230DB001134
7159	50	8230DB005131
7160	50	8230DB005132
7161	50	8230DB001305
7162	50	8250DB001306
7163	50	8250DB001307
7164	50	8250DB001308
7165	50	8250DB001309
7166	50	8250DB004332
7167	50	8250DB004333
7168	50	8250DB004334
7169	50	8250DB004712
7170	50	8250DB002853
7171	50	8250DB002854
7172	50	8250DB002855
7173	50	8250DB002856
7174	50	8250DB002857
7175	50	8250DB002858
7176	50	8250DB002859
7177	50	8250DB002860
7178	50	8250DB002861
7179	50	8250DB002862
7180	50	8250DB002863
7181	50	8250DB002864
7182	50	8250DB004486
7183	50	8250DB002865
7184	50	8250DB002866
7185	50	8250DB007719
7186	50	8250DB007720
7187	50	8250DB002872
7188	50	8250DB002873
7189	50	8250DB002874
7190	50	8250DB002877
7191	50	8250DB007394
7192	50	8250DB002878
7193	50	8250DB002879
7194	50	8250DB004779
7195	50	8250DB007057
7196	50	8250DB004847
7197	50	8250DB004848
7198	50	8250DB000449
7199	50	8250DB000450
7200	50	8250DB003181
7201	50	8250DB000447
7202	50	8250DB005045
7203	50	8250DB004460
7204	50	8250DB000453
7205	50	8250DB004477
7206	50	8250DB003321
7207	50	8250DB004571
7208	50	8250DB002013
7209	50	8250DB002014
7210	50	8250DB004636
7211	50	8250DB002016
7212	50	8250DB002015
7213	50	8250DB002017
7214	50	8250DB002018
7215	50	8250DB002019
7216	50	8250DB002020
7217	50	8250DB002021
7218	50	8250DB002022
7219	50	8250DB004565
7220	50	8250DB004566
7221	50	8250DB004567
7222	50	8250DB002031
7223	50	8250DB002032
7224	50	8250DB002033
7225	50	8250DB002034
7226	50	8250DB002035
7227	50	8250DB002036
7228	51	8230DB004341
7229	51	8230DB004348
7230	51	8230DB004646
7231	51	8230DB004647
7232	51	8230DB002363
7233	51	8230DB002364
7234	51	8230DB002618
7235	51	8230DB005011
7236	51	8230DB002762
7237	51	8230DB002110
7238	51	8230DB002111
7239	51	8230DB002112
7240	51	8230DB002114
7241	51	8230DB002115
7242	51	8230DB002116
7243	51	8230DB002117
7244	51	8230DB002118
7245	51	8230DB002119
7246	51	8230DB002120
7247	51	8230DB002121
7248	51	8230DB002123
7249	51	8230DB002685
7250	51	8230DB004795
7251	51	8230DB002686
7252	51	8230DB007510
7253	51	8230DB004799
7254	51	8230DB002205
7255	51	8230DB002687
7256	51	8220DB002688
7257	51	8220DB002689
7258	51	8220DB002696
7259	51	8220DB002697
7260	51	8220DB004414
7261	51	8220DB005009
7262	52	8220DB002243
7263	52	8220DB002200
7264	52	8220DB005006
7265	52	8220DB005007
7266	52	8220DB002655
7267	52	8220DB002656
7268	52	8220DB002668
7269	52	8220DB002672
7270	52	8230DB002673
7271	52	8230DB002206
7272	52	8230DB004798
7273	52	8230DB004795
7274	52	8230DB002675
7275	52	8230DB002124
7276	52	8230DB002125
7277	52	8230DB002126
7278	52	8230DB002127
7279	52	8230DB002128
7280	52	8230DB002129
7281	52	8230DB002130
7282	52	8230DB002158
7283	52	8230DB002159
7284	52	8230DB004409
7285	52	8230DB002173
7286	52	8230DB002174
7287	52	8230DB003425
7288	52	8230DB002763
7289	52	8230DB002619
7290	52	8230DB002620
7291	52	8230DB002345
7292	52	8230DB005008
7293	52	8230DB004640
7294	52	8230DB004347
7295	53	8240DB004747
7296	53	8240DB002960
7297	53	8240DB001840
7298	53	8240DB001841
7299	53	8240DB001842
7300	53	8240DB007374
7301	53	8230DB002241
7302	53	8230DB002242
7303	53	8220DB002243
7304	53	8220DB002200
7305	53	8220DB005006
7306	53	8220DB005007
7307	53	8220DB002655
7308	53	8220DB002656
7309	53	8220DB002668
7310	53	8220DB002672
7311	53	8230DB002673
7312	53	8230DB002206
7313	53	8230DB004798
7314	53	8230DB004795
7315	53	8230DB002675
7316	53	8230DB002124
7317	53	8230DB002125
7318	53	8230DB002126
7319	53	8230DB002127
7320	53	8230DB002128
7321	53	8230DB002129
7322	53	8230DB002130
7323	53	8230DB002158
7324	53	8230DB002159
7325	53	8230DB004409
7326	53	8230DB002173
7327	53	8230DB002174
7328	53	8230DB003425
7329	53	8230DB002763
7330	53	8230DB002619
7331	53	8230DB002620
7332	53	8230DB002345
7333	53	8230DB005008
7334	53	8230DB004640
7335	53	8230DB004347
7336	54	8230DB004341
7337	54	8230DB004348
7338	54	8230DB004646
7339	54	8230DB004647
7340	54	8230DB002363
7341	54	8230DB002364
7342	54	8230DB002618
7343	54	8230DB005011
7344	54	8230DB002762
7345	54	8230DB002110
7346	54	8230DB002111
7347	54	8230DB002112
7348	54	8230DB002114
7349	54	8230DB002115
7350	54	8230DB002116
7351	54	8230DB002117
7352	54	8230DB002118
7353	54	8230DB002119
7354	54	8230DB002120
7355	54	8230DB002121
7356	54	8230DB002123
7357	54	8230DB002685
7358	54	8230DB004795
7359	54	8230DB002686
7360	54	8230DB007510
7361	54	8230DB004799
7362	54	8230DB002205
7363	54	8230DB002687
7364	54	8220DB002688
7365	54	8220DB002689
7366	54	8220DB002696
7367	54	8220DB002697
7368	54	8220DB004414
7369	54	8220DB005009
7370	54	8230DB002201
7371	54	8230DB004401
7372	54	8240DB001813
7373	54	8240DB001814
7374	55	8230DB006290
7375	55	8230DB007800
7376	55	8230DB003890
7377	55	8230DB003891
7378	55	8230DB003949
7379	55	8230DB003950
7380	55	8230DB007774
7381	55	8230DB002225
7382	55	8230DB004620
7383	55	8230DB007563
7384	55	8230DB003368
7385	55	8230DB004626
7386	55	8230DB004627
7387	55	8230DB004327
7388	55	8230DB007752
7389	55	8230DB007808
7390	55	8230DB007806
7391	55	8230DB007768
7392	55	8230DB007772
7393	55	8230DB007792
7394	55	8230DB007754
7395	56	8230DB004715
7396	56	8230DB07755
7397	56	8230DB007793
7398	56	8230DB007773
7399	56	8230DB007769
7400	56	8230DB007807
7401	56	8230DB007809
7402	56	8230DB005138
7403	56	8230DB007751
7404	56	8230DB004611
7405	56	8230DB004612
7406	56	8230DB004613
7407	56	8230DB003370
7408	56	8230DB007168
7409	56	8230DB004616
7410	56	8230DB002227
7411	56	8230DB007775
7412	56	8230DB003886
7413	56	8230DB003887
7414	56	8230DB003888
7415	56	8230DB007810
7416	56	8230DB007749
7417	56	8230DB007801
7418	57	8230DB006290
7419	57	8230DB007800
7420	57	8230DB003890
7421	57	8230DB003891
7422	57	8230DB003949
7423	57	8230DB003950
7424	57	8230DB007774
7425	57	8230DB002229
7426	57	8230DB006133
7427	57	8230DB002228
7428	57	8240DB006127
7429	57	8240DB004826
7430	57	8240DB001912
7431	57	8240DB001895
7432	57	8240DB001896
7433	57	8240DB001897
7434	57	8240DB007227
7435	57	8240DB006073
7436	57	8240DB004493
7437	57	8240DB004362
7438	58	8240DB007026
7439	58	8240DB001882
7440	58	8240DB007379
7441	58	8240DB004903
7442	58	8240DB007219
7443	58	8240DB001887
7444	58	8240DB001888
7445	58	8240DB001889
7446	58	8240DB001890
7447	58	8240DB004820
7448	58	8240DB006126
7449	58	8230DB002226
7450	58	8230DB006134
7451	58	8230DB002223
7452	58	8230DB002224
7453	58	8230DB003886
7454	58	8230DB003887
7455	58	8230DB003888
7456	58	8230DB007810
7457	58	8230DB007749
7458	58	8230DB007801
7459	59	8250DB002039
7460	59	8250DB002040
7461	59	8250DB002041
7462	59	8250DB002042
7463	59	8250DB002043
7464	59	8250DB002044
7465	59	8250DB002045
7466	59	8250DB002046
7467	59	8250DB002047
7468	59	8250DB002048
7469	59	8250DB002049
7470	59	8250DB002050
7471	59	8250DB002051
7472	59	8250DB002053
7473	59	8250DB002054
7474	59	8250DB002055
7475	59	8250DB007636
7476	59	8250DB007651
7477	59	8250DB007635
7478	59	8250DB003254
7479	59	8250DB005127
7480	59	8250DB005128
7481	59	8250DB003126
7482	59	8250DB003255
7483	59	8250DB003256
7484	59	8250DB003265
7485	59	8250DB003266
7486	59	8250DB003346
7487	59	8250DB003267
7488	59	8250DB003268
7489	59	8250DB003269
7490	59	8250DB003270
7491	59	8250DB003271
7492	59	8250DB003272
7493	59	8250DB003273
7494	59	8250DB003274
7495	59	8250DB003275
7496	59	8250DB003276
7497	59	8250DB007372
7498	59	8250DB005106
7499	59	8250DB004396
7500	59	8250DB004773
7501	59	8250DB004393
7502	59	8250DB004395
7503	59	8250DB004313
7504	59	8250DB003277
7505	59	8250DB003278
7506	59	8250DB003279
7507	59	8250DB003478
7508	59	8250DB003280
7509	60	8250DB003283
7510	60	8250DB003284
7511	60	8250DB003285
7512	60	8250DB007324
7513	60	8250DB005106
7514	60	8250DB004396
7515	60	8250DB004773
7516	60	8250DB004393
7517	60	8250DB004395
7518	60	8250DB004313
7519	60	8250DB007373
7520	60	8250DB003289
7521	60	8250DB003290
7522	60	8250DB005168
7523	60	8250DB003291
7524	60	8250DB003292
7525	60	8250DB003293
7526	60	8250DB003294
7527	60	8250DB003295
7528	60	8250DB003296
7529	60	8250DB003297
7530	60	8250DB003298
7531	60	8250DB003260
7532	60	8250DB003261
7533	60	8250DB003262
7534	60	8250DB003153
7535	60	8250DB007362
7536	60	8250DB003129
7537	60	8250DB007634
7538	60	8250DB003249
7539	60	8250DB007637
7540	60	8250DB002023
7541	60	8250DB002024
7542	60	8250DB002025
7543	60	8250DB002026
7544	60	8250DB002027
7545	60	8250DB002028
7546	60	8250DB002029
7547	60	8250DB002030
7548	60	8250DB002031
7549	60	8250DB002032
7550	60	8250DB002033
7551	60	8250DB002034
7552	60	8250DB002035
7553	60	8250DB002036
7554	61	8260DB005117
7555	62	8220DB001644
7556	62	8220DB001945
7557	62	8220DB001948
7558	62	8220DB001956
7559	62	8230DB001960
7560	62	8230DB003427
7561	63	8250DB000767
7562	63	8220DB000746
7563	63	8220DB001013
7564	63	8220DB001286
7565	63	8220DB002101
7566	63	8230DB001960
7567	63	8230DB003427
7568	64	8220DB000746
7569	64	8220DB001013
7570	64	8220DB001286
7571	64	8220DB002101
7572	64	8230DB001960
7573	64	8230DB003427
7574	65	8240DB000226
7575	65	8220DB000228
7576	65	8240DB000229
7577	65	8240DB000227
7578	65	8240DB000230
7579	65	8240DB000231
7580	65	8220DB001641
7581	65	8220DB001642
7582	65	8220DB000213
7583	65	8220DB000214
7584	65	8220DB004432
7585	65	8220DB000119
7586	65	8220DB000044
7587	65	8220DB007603
7588	65	8220DB000045
7589	65	8220DB000046
7590	65	8220DB000047
7591	65	8220DB000048
7592	65	8220DB000049
7593	65	8220DB000051
7594	65	8220DB000052
7595	65	8220DB000265
7596	65	8220DB000271
7597	65	8220DB000340
7598	66	8220DB000400
7599	66	8220DB000319
7600	66	8220DB000278
7601	66	8220DB000010
7602	66	8220DB000012
7603	66	8220DB000014
7604	66	8220DB000015
7605	66	8220DB000017
7606	66	8220DB000018
7607	66	8220DB000019
7608	66	8220DB000021
7609	66	8220DB007602
7610	66	8220DB000085
7611	66	8220DB000203
7612	66	8220DB000204
7613	66	8220DB000205
7614	66	8220DB001620
7615	66	8220DB000220
7616	66	8240DB000221
7617	66	8240DB000222
7618	66	8240DB000223
7619	66	8240DB000224
7620	66	8240DB000225
7621	67	8250DB000449
7622	67	8250DB000450
7623	67	8250DB003181
7624	67	8250DB000451
7625	67	8250DB000447
7626	67	8250DB005045
7627	67	8250DB004460
7628	67	8250DB000453
7629	67	8250DB000454
7630	67	8250DB004475
7631	67	8250DB003023
7632	67	8250DB003024
7633	67	8250DB003025
7634	67	8250DB003026
7635	67	8250DB003027
7636	67	8250DB003028
7637	67	8250DB003029
7638	67	8250DB003030
7639	67	8250DB003031
7640	67	8250DB000875
7641	67	8250DB000876
7642	67	8250DB000878
7643	67	8250DB000879
7644	67	8250DB000880
7645	67	8220DB000881
7646	67	8220DB000882
7647	67	8220DB000883
7648	67	8220DB000884
7649	67	8220DB000885
7650	67	8220DB000886
7651	67	8220DB000887
7652	67	8220DB000903
7653	67	8220DB000904
7654	67	8220DB000906
7655	67	8220DB000907
7656	67	8220DB000908
7657	67	8220DB000909
7658	67	8220DB000786
7659	67	8220DB000793
7660	67	8220DB000320
7661	67	8220DB000278
7662	67	8220DB000010
7663	67	8220DB000012
7664	67	8220DB000014
7665	67	8220DB000015
7666	67	8220DB000017
7667	67	8220DB000018
7668	67	8220DB000019
7669	67	8220DB000021
7670	67	8220DB007602
7671	67	8220DB000022
7672	67	8220DB000023
7673	67	8220DB000024
7674	67	8220DB000025
7675	67	8220DB000027
7676	67	8220DB000028
7677	67	8220DB000029
7678	67	8220DB004680
7679	67	8220DB000031
7680	67	8220DB000032
7681	67	8220DB000033
7682	67	8220DB007220
7683	68	8220DB006122
7684	68	8220DB000035
7685	68	8220DB000036
7686	68	8220DB000037
7687	68	8220DB000038
7688	68	8220DB000039
7689	68	8220DB000040
7690	68	8220DB000041
7691	68	8220DB000042
7692	68	8220DB000043
7693	68	8220DB000044
7694	68	8220DB007603
7695	68	8220DB000045
7696	68	8220DB000046
7697	68	8220DB000047
7698	68	8220DB000048
7699	68	8220DB000049
7700	68	8220DB000051
7701	68	8220DB000052
7702	68	8220DB000261
7703	68	8220DB000271
7704	68	8220DB000404
7705	68	8220DB000747
7706	68	8220DB000842
7707	68	8220DB000845
7708	68	8220DB000846
7709	68	8220DB000847
7710	68	8220DB000848
7711	68	8220DB000849
7712	68	8220DB000850
7713	68	8220DB000851
7714	68	8220DB000852
7715	68	8220DB000853
7716	68	8220DB000854
7717	68	8220DB000855
7718	68	8220DB000856
7719	68	8220DB000857
7720	68	8220DB000858
7721	68	8250DB000859
7722	68	8250DB000860
7723	68	8250DB000861
7724	68	8250DB000862
7725	68	8250DB003014
7726	68	8250DB003015
7727	68	8250DB003016
7728	68	8250DB003017
7729	68	8250DB003018
7730	68	8250DB003019
7731	68	8250DB003020
7732	68	8250DB003021
7733	68	8250DB003022
7734	68	8250DB000441
7735	68	8250DB000442
7736	68	8250DB000443
7737	68	8250DB000444
7738	68	8250DB000445
7739	68	8250DB004779
7740	68	8250DB007057
7741	68	8250DB004847
7742	69	8220DB000848
7743	69	8220DB002795
7744	69	8220DB000756
7745	69	8220DB000757
7746	69	8220DB000758
7747	69	8220DB000759
7748	69	8220DB000760
7749	69	8220DB000761
7750	69	8220DB000762
7751	69	8220DB000763
7752	69	8250DB002007
7753	69	8250DB002008
7754	69	8250DB002009
7755	69	8250DB002010
7756	69	8250DB000435
7757	69	8250DB002011
7758	69	8250DB002012
7759	69	8250DB003322
7760	69	8250DB003563
7761	69	8250DB000444
7762	69	8250DB000445
7763	69	8250DB004779
7764	69	8250DB007057
7765	69	8250DB004847
7766	69	8250DB004848
7767	69	8250DB004350
7768	69	8250DB005143
7769	69	8250DB002837
7770	69	8250DB002838
7771	69	8250DB002839
7772	69	8250DB002840
7773	69	8250DB002845
7774	69	8250DB002846
7775	69	8250DB002847
7776	69	8250DB004397
7777	69	8250DB002848
7778	69	8250DB002849
7779	69	8250DB002850
7780	69	8250DB002851
7781	69	8250DB002852
7782	69	8250DB004987
7783	69	8250DB002978
7784	69	8250DB002979
7785	69	8230DB002980
7786	69	8230DB002981
7787	69	8230DB002954
7788	70	8230DB002955
7789	70	8230DB007067
7790	70	8230DB002956
7791	70	8230DB002965
7792	70	8230DB002967
7793	70	8230DB002968
7794	70	8250DB002969
7795	70	8250DB002970
7796	70	8250DB004988
7797	70	8250DB002853
7798	70	8250DB002854
7799	70	8250DB002855
7800	70	8250DB002856
7801	70	8250DB002857
7802	70	8250DB002858
7803	70	8250DB002859
7804	70	8250DB002860
7805	70	8250DB002861
7806	70	8250DB002829
7807	70	8250DB002830
7808	70	8250DB002831
7809	70	8250DB002832
7810	70	8250DB004349
7811	70	8250DB003184
7812	70	8250DB000449
7813	70	8250DB000450
7814	70	8250DB003181
7815	70	8250DB000451
7816	70	8250DB000447
7817	70	8250DB005045
7818	70	8250DB004460
7819	70	8250DB000453
7820	70	8250DB004477
7821	70	8250DB003321
7822	70	8250DB004727
7823	70	8250DB004728
7824	70	8250DB000461
7825	70	8250DB002068
7826	70	8250DB002069
7827	70	8250DB002070
7828	70	8250DB002084
7829	70	8250DB000768
7830	70	8220DB000769
7831	70	8220DB000770
7832	70	8220DB000771
7833	70	8220DB000772
7834	70	8220DB000773
7835	70	8220DB000774
7836	70	8220DB000775
7837	70	8220DB000776
7838	70	8220DB000777
7839	70	8220DB000906
7840	70	8220DB000907
7841	70	8220DB000908
7842	70	8220DB000909
7843	70	8220DB000786
7844	70	8220DB000792
7845	70	8220DB007586
7846	70	8220DB007587
7847	70	8220DB007588
7848	70	8220DB000281
7849	71	8250DB003283
7850	71	8250DB003284
7851	71	8250DB003310
7852	71	8250DB003481
7853	71	8250DB003482
7854	71	8250DB003483
7855	71	8250DB003484
7856	71	8250DB003485
7857	71	8250DB003486
7858	71	8250DB003487
7859	71	8250DB007415
7860	71	8250DB007416
7861	71	8250DB007325
7862	71	8250DB003317
7863	71	8250DB003318
7864	71	8250DB003320
7865	71	8250DB002064
7866	71	8250DB002065
7867	71	8250DB004727
7868	71	8250DB004728
7869	71	8250DB000461
7870	71	8250DB002068
7871	71	8250DB002069
7872	71	8250DB002070
7873	71	8250DB002084
7874	71	8250DB000768
7875	71	8220DB000769
7876	71	8220DB000770
7877	71	8220DB000771
7878	71	8220DB000772
7879	71	8220DB000773
7880	71	8220DB000774
7881	71	8220DB000775
7882	71	8220DB000776
7883	71	8220DB000777
7884	71	8220DB000906
7885	71	8220DB000907
7886	71	8220DB000908
7887	71	8220DB000909
7888	71	8220DB000786
7889	71	8220DB000792
7890	71	8220DB007586
7891	71	8220DB007587
7892	72	8220DB000485
7893	72	8220DB000487
7894	72	8220DB000488
7895	72	8220DB000489
7896	72	8220DB000490
7897	72	8220DB000491
7898	72	8220DB000492
7899	72	8220DB000493
7900	72	8220DB000494
7901	72	8220DB000495
7902	72	8220DB000400
7903	72	8220DB000279
7904	72	8220DB000003
7905	72	8220DB000192
7906	72	8220DB000795
7907	72	8220DB000796
7908	72	8220DB000056
7909	72	8220DB000058
7910	72	8220DB004499
7911	72	8220DB004934
7912	72	8220DB004500
7913	72	8220DB004481
7914	72	8220DB004485
7915	72	8220DB000822
7916	72	8220DB000823
7917	72	8220DB000824
7918	72	8220DB000825
7919	72	8220DB000826
7920	72	8220DB000827
7921	72	8220DB000071
7922	72	8220DB000072
7923	72	8220DB005144
7924	72	8220DB007027
7925	72	8220DB004538
7926	72	8220DB007396
7927	72	8220DB005145
7928	73	8220DB000284
7929	73	8220DB004504
7930	73	8220DB007028
7931	73	8220DB005147
7932	73	8220DB000068
7933	73	8220DB000030
7934	73	8220DB000069
7935	73	8220DB000828
7936	73	8220DB000829
7937	73	8220DB000830
7938	73	8220DB000831
7939	73	8220DB000075
7940	73	8220DB004501
7941	73	8220DB004935
7942	73	8220DB004502
7943	73	8220DB004936
7944	73	8220DB000079
7945	73	8220DB000080
7946	73	8220DB000082
7947	73	8220DB000817
7948	73	8220DB000818
7949	73	8220DB000819
7950	73	8220DB000263
7951	73	8220DB004725
7952	73	8220DB004495
7953	73	8220DB002809
7954	73	8220DB000408
7955	73	8220DB000409
7956	73	8220DB000410
7957	73	8220DB000411
7958	73	8220DB000412
7959	73	8220DB000413
7960	73	8220DB000414
7961	74	8220DB001423
7962	74	8220DB001424
7963	74	8220DB001425
7964	74	8220DB001426
7965	74	8220DB001427
7966	74	8220DB001428
7967	74	8220DB001429
7968	74	8220DB001430
7969	74	8220DB001432
7970	74	8220DB001433
7971	74	8220DB001434
7972	74	8220DB001435
7973	74	8220DB007439
7974	74	8220DB007454
7975	74	8220DB001380
7976	74	8220DB001381
7977	74	8220DB001382
7978	74	8220DB001383
7979	74	8220DB001384
7980	74	8220DB001385
7981	74	8220DB001348
7982	74	8220DB001349
7983	74	8220DB001350
7984	74	8220DB001352
7985	74	8220DB001353
7986	74	8220DB001355
7987	74	8220DB001357
7988	74	8220DB001359
7989	74	8220DB000279
7990	74	8220DB000003
7991	74	8220DB000012
7992	74	8220DB000014
7993	74	8220DB000053
7994	74	8220DB000054
7995	74	8220DB000055
7996	74	8220DB000056
7997	74	8220DB000058
7998	74	8220DB000059
7999	74	8220DB000060
8000	74	8220DB000820
8001	74	8220DB000821
8002	74	8220DB000063
8003	74	8220DB000064
8004	74	8220DB000065
8005	74	8220DB000066
8006	74	8220DB004498
8007	74	8220DB001660
8008	74	8220DB001661
8009	74	8220DB004523
8010	74	8220DB004524
8011	75	8220DB004525
8012	75	8220DB004526
8013	75	8220DB001700
8014	75	8220DB001701
8015	75	8220DB001702
8016	75	8220DB000016
8017	75	8220DB000073
8018	75	8220DB000074
8019	75	8220DB004371
8020	75	8220DB000832
8021	75	8220DB000833
8022	75	8220DB000077
8023	75	8220DB000078
8024	75	8220DB000079
8025	75	8220DB000080
8026	75	8220DB000082
8027	75	8220DB000083
8028	75	8220DB000084
8029	75	8220DB000051
8030	75	8220DB000052
8031	75	8220DB000263
8032	75	8220DB000271
8033	75	8220DB001278
8034	75	8220DB001282
8035	75	8220DB004456
8036	75	8220DB001284
8037	75	8220DB001285
8038	75	8220DB001286
8039	75	8220DB001288
8040	75	8220DB001289
8041	75	8220DB001360
8042	75	8220DB001362
8043	75	8220DB001363
8044	75	8220DB001364
8045	75	8220DB001365
8046	75	8220DB001366
8047	75	8220DB001367
8048	75	8220DB007455
8049	75	8220DB007438
8050	75	8220DB001410
8051	75	8220DB001411
8052	75	8220DB001412
8053	75	8220DB001413
8054	75	8220DB001414
8055	75	8220DB001415
8056	75	8220DB001417
8057	75	8220DB001418
8058	75	8220DB005149
8059	75	8220DB001419
8060	76	8220DB001491
8061	76	8220DB001492
8062	76	8220DB001493
8063	76	8220DB001482
8064	76	8220DB001494
8065	76	8220DB001495
8066	76	8220DB001496
8067	76	8220DB001515
8068	76	8220DB001499
8069	76	8220DB001485
8070	76	8220DB004518
8071	76	8220DB000509
8072	76	8220DB000510
8073	76	8220DB000511
8074	76	8220DB000513
8075	76	8220DB004513
8076	76	8220DB000272
8077	76	8220DB000335
8078	76	8220DB001278
8079	76	8220DB001934
8080	76	8220DB001935
8081	76	8220DB001937
8082	76	8220DB001938
8083	76	8220DB001939
8084	76	8220DB001940
8085	76	8220DB001941
8086	76	8220DB004516
8087	76	8220DB001369
8088	76	8220DB001370
8089	76	8220DB001371
8090	76	8220DB001454
8091	76	8220DB001455
8092	76	8220DB001453
8093	76	8220DB001456
8094	76	8220DB001457
8095	76	8220DB001458
8096	76	8220DB001459
8097	76	8220DB001460
8098	76	8220DB001462
8099	76	8220DB005149
8100	76	8220DB001419
8101	76	8220DB006094
8102	76	8220DB002102
8103	76	8220DB002103
8104	76	8220DB007154
8105	76	8220DB007153
8106	77	8220DB006057
8107	77	8220DB002183
8108	77	8220DB002184
8109	77	8220DB002185
8110	77	8220DB001423
8111	77	8220DB001424
8112	77	8220DB001425
8113	77	8220DB001426
8114	77	8220DB001463
8115	77	8220DB004399
8116	77	8220DB004400
8117	77	8220DB001464
8118	77	8220DB001469
8119	77	8220DB001465
8120	77	8220DB001466
8121	77	8220DB001467
8122	77	8220DB001468
8123	77	8220DB001377
8124	77	8220DB001378
8125	77	8220DB004514
8126	77	8220DB004515
8127	77	8220DB001995
8128	77	8220DB001996
8129	77	8220DB001997
8130	77	8220DB001998
8131	77	8220DB001999
8132	77	8220DB002001
8133	77	8220DB002002
8134	77	8220DB001359
8135	77	8220DB000274
8136	77	8220DB001505
8137	77	8220DB004509
8138	77	8220DB000499
8139	77	8220DB000500
8140	77	8220DB000501
8141	77	8220DB001484
8142	77	8220DB001481
8143	77	8220DB007320
8144	77	8220DB001486
8145	77	8220DB001487
8146	77	8220DB001488
8147	77	8220DB001489
8148	78	8230DB007229
8149	78	8230DB004617
8150	78	8230DB004555
8151	78	8230DB007714
8152	78	8230DB003415
8153	78	8230DB003416
8154	78	8230DB003417
8155	78	8230DB003418
8156	78	8230DB003419
8157	78	8230DB002374
8158	78	8230DB002146
8159	78	8230DB002147
8160	78	8230DB002148
8161	78	8230DB002149
8162	78	8230DB002150
8163	78	8230DB002151
8164	78	8230DB002152
8165	78	8230DB002153
8166	78	8230DB002154
8167	78	8230DB006245
8168	78	8230DB004671
8169	78	8230DB004672
8170	78	8230DB003465
8171	78	8230DB004673
8172	78	8230DB002172
8173	78	8230DB002159
8174	78	8230DB004409
8175	78	8230DB004550
8176	78	8230DB004551
8177	78	8230DB001965
8178	78	8230DB001966
8179	78	8230DB007781
8180	78	8230DB001975
8181	78	8230DB001977
8182	78	8230DB001978
8183	78	8230DB001980
8184	78	8220DB001981
8185	78	8220DB001982
8186	78	8220DB004406
8187	78	8220DB001984
8188	78	8220DB001985
8189	78	8220DB001986
8190	78	8220DB001987
8191	78	8220DB001988
8192	78	8220DB001989
8193	78	8220DB001990
8194	78	8220DB001992
8195	78	8220DB001993
8196	78	8220DB001994
8197	78	8220DB001995
8198	78	8220DB001996
8199	78	8220DB001997
8200	78	8220DB001998
8201	78	8220DB001999
8202	78	8220DB002001
8203	78	8220DB002002
8204	78	8220DB001359
8205	78	8220DB000319
8206	78	8220DB000281
8207	78	8220DB000007
8208	78	8220DB000011
8209	78	8220DB000014
8210	78	8220DB000015
8211	78	8220DB000017
8212	78	8220DB000018
8213	78	8220DB000019
8214	78	8220DB000021
8215	78	8220DB007602
8216	78	8220DB000085
8217	78	8220DB000086
8218	78	8220DB000087
8219	78	8220DB000088
8220	78	8220DB00089
8221	78	8220DB000027
8222	78	8220DB000028
8223	78	8220DB000029
8224	78	8220DB004680
8225	78	8220DB000090
8226	78	8220DB000091
8227	78	8220DB000092
8228	78	8220DB000093
8229	78	8220DB000094
8230	78	8220DB000102
8231	78	8220DB006239
8232	78	8220DB000104
8233	78	8220DB006241
8234	78	8220DB000105
8235	78	8220DB006253
8236	78	8220DB007191
8237	78	8220DB006238
8238	78	8220DB006182
8239	78	8220DB000322
8240	78	8240DB000323
8241	79	8230DB007229
8242	79	8230DB004617
8243	79	8230DB004555
8244	79	8230DB007714
8245	79	8230DB003414
8246	79	8230DB003415
8247	79	8230DB003416
8248	79	8230DB003417
8249	79	8230DB003418
8250	79	8230DB003419
8251	79	8230DB002374
8252	79	8230DB002146
8253	79	8230DB002147
8254	79	8230DB002148
8255	79	8230DB002149
8256	79	8230DB002150
8257	79	8230DB002151
8258	79	8230DB002152
8259	79	8230DB002153
8260	79	8230DB002154
8261	79	8230DB006245
8262	79	8230DB004671
8263	79	8230DB004672
8264	79	8230DB003465
8265	79	8230DB004673
8266	79	8230DB002172
8267	79	8230DB002159
8268	79	8230DB004409
8269	79	8230DB004550
8270	79	8230DB004551
8271	79	8230DB001965
8272	79	8230DB001966
8273	79	8230DB007781
8274	79	8230DB001975
8275	79	8230DB001977
8276	79	8230DB001978
8277	79	8230DB001980
8278	79	8220DB001981
8279	79	8220DB001982
8280	79	8220DB004406
8281	79	8220DB001984
8282	79	8220DB001985
8283	79	8220DB001986
8284	79	8220DB001987
8285	79	8220DB001988
8286	79	8220DB001989
8287	79	8220DB001990
8288	79	8220DB001992
8289	79	8220DB001993
8290	79	8220DB001994
8291	79	8220DB001995
8292	79	8220DB001996
8293	79	8220DB001997
8294	79	8220DB001998
8295	79	8220DB001999
8296	79	8220DB002001
8297	79	8220DB002002
8298	79	8220DB001359
8299	79	8220DB000319
8300	79	8220DB000281
8301	79	8220DB000007
8302	79	8220DB000011
8303	79	8220DB000014
8304	79	8220DB000015
8305	79	8220DB000017
8306	79	8220DB000018
8307	79	8220DB000019
8308	79	8220DB000021
8309	79	8220DB000085
8310	79	8220DB000086
8311	79	8220DB000087
8312	79	8220DB000088
8313	79	8220DB00089
8314	79	8220DB000027
8315	79	8220DB000028
8316	79	8220DB000029
8317	79	8220DB004680
8318	79	8220DB000090
8319	79	8220DB000091
8320	79	8220DB000092
8321	79	8220DB000093
8322	79	8220DB000094
8323	79	8220DB000102
8324	79	8220DB006239
8325	79	8220DB000104
8326	79	8220DB006241
8327	79	8220DB000105
8328	79	8220DB006253
8329	79	8220DB007191
8330	79	8220DB006238
8331	79	8220DB006182
8332	79	8220DB000322
8333	79	8240DB000323
8334	80	8220DB000621
8335	80	8220DB000289
8336	80	8220DB000496
8337	80	8220DB000515
8338	80	8220DB000516
8339	80	8220DB004384
8340	80	8220DB000519
8341	80	8220DB000521
8342	80	8220DB000522
8343	80	8220DB000523
8344	80	8220DB001740
8345	80	8220DB001741
8346	80	8220DB001742
8347	80	8220DB001743
8348	80	8220DB001744
8349	80	8220DB001745
8350	80	8220DB001746
8351	80	8220DB001747
8352	80	8220DB001748
8353	80	8220DB001749
8354	80	8220DB001751
8355	80	8220DB001752
8356	80	8220DB001753
8357	80	8220DB001754
8358	80	8220DB001759
8359	80	8220DB001758
8360	80	8220DB001750
8361	80	8220DB001769
8362	80	8220DB001770
8363	80	8220DB001771
8364	80	8220DB001760
8365	80	8220DB001761
8366	80	8220DB001762
8367	80	8220DB001763
8368	80	8220DB001764
8369	80	8220DB001765
8370	81	8220DB001772
8371	81	8220DB001773
8372	81	8220DB001774
8373	81	8220DB001775
8374	81	8220DB001776
8375	81	8220DB001777
8376	81	8220DB001778
8377	81	8220DB001755
8378	81	8220DB001756
8379	81	8220DB001757
8380	81	8220DB001794
8381	81	8220DB007469
8382	81	8220DB001724
8383	81	8220DB001725
8384	81	8220DB001726
8385	81	8220DB001727
8386	81	8220DB001728
8387	81	8220DB001729
8388	81	8220DB001730
8389	81	8220DB001731
8390	81	8220DB001732
8391	81	8220DB001733
8392	81	8220DB001734
8393	81	8220DB001735
8394	81	8220DB001736
8395	81	8220DB001737
8396	81	8220DB001738
8397	81	8220DB001739
8398	81	8220DB000614
8399	81	8220DB000615
8400	81	8220DB000616
8401	81	8220DB000617
8402	81	8220DB000618
8403	81	8220DB000619
8404	81	8220DB000675
8405	81	8220DB000620
8406	82	8220DB000248
8407	82	8220DB000249
8408	82	8220DB000250
8409	82	8220DB000251
8410	82	8220DB000252
8411	82	8220DB000255
8412	82	8220DB000234
8413	82	8220DB000235
8414	82	8220DB000236
8415	82	8220DB001190
8416	82	8220DB001191
8417	82	8220DB001192
8418	82	8220DB001193
8419	82	8220DB001194
8420	82	8220DB001195
8421	82	8220DB000664
8422	82	8220DB000665
8423	82	8220DB000666
8424	82	8220DB000667
8425	82	8220DB000668
8426	82	8220DB000614
8427	82	8220DB000615
8428	82	8220DB000616
8429	82	8220DB000617
8430	82	8220DB000618
8431	82	8220DB000619
8432	82	8220DB000675
8433	82	8220DB004415
8434	82	8220DB000301
8435	82	8220DB000336
8436	82	8220DB007581
8437	82	8220DB001283
8438	82	8220DB007579
8439	82	8220DB001285
8440	82	8220DB001016
8441	82	8220DB001017
8442	82	8220DB001018
8443	82	8220DB001019
8444	82	8220DB001020
8445	82	8220DB001076
8446	82	8220DB001077
8447	82	8220DB001078
8448	82	8220DB001079
8449	82	8220DB001080
8450	82	8220DB001081
8451	82	8220DB002914
8452	82	8220DB002989
8453	82	8220DB002990
8454	82	8250DB001042
8455	82	8250DB001043
8456	82	8250DB001044
8457	82	8250DB001045
8458	82	8250DB004710
8459	82	8250DB001046
8460	82	8250DB001047
8461	82	8250DB001048
8462	82	8250DB001049
8463	82	8250DB004333
8464	82	8250DB004334
8465	82	8250DB004712
8466	82	8250DB002853
8467	82	8250DB002854
8468	82	8250DB002855
8469	82	8250DB002856
8470	82	8250DB002857
8471	82	8250DB002858
8472	82	8250DB002859
8473	82	8250DB002860
8474	82	8250DB002861
8475	82	8250DB002862
8476	82	8250DB002863
8477	82	8250DB002864
8478	82	8250DB004486
8479	82	8250DB002865
8480	82	8250DB002866
8481	83	8250DB002825
8482	83	8250DB007719
8483	83	8250DB007720
8484	83	8250DB007718
8485	83	8250DB002842
8486	83	8250DB002843
8487	83	8250DB002844
8488	83	8250DB002845
8489	83	8250DB002846
8490	83	8250DB002847
8491	83	8250DB004397
8492	83	8250DB002848
8493	83	8250DB002849
8494	83	8250DB002850
8495	83	8250DB002851
8496	83	8250DB002852
8497	83	8250DB004707
8498	83	8250DB004708
8499	83	8250DB004336
8500	83	8250DB001051
8501	83	8250DB001052
8502	83	8250DB001053
8503	83	8250DB001054
8504	83	8250DB001036
8505	83	8250DB004709
8506	83	8250DB001037
8507	83	8250DB001038
8508	83	8250DB002998
8509	83	8220DB002999
8510	83	8220DB003000
8511	83	8220DB003001
8512	83	8220DB003002
8513	83	8220DB001166
8514	83	8220DB001167
8515	83	8220DB001168
8516	83	8220DB001169
8517	83	8220DB001170
8518	83	8220DB001069
8519	83	8220DB001070
8520	83	8220DB001071
8521	83	8220DB004528
8522	83	8220DB001072
8523	83	8220DB007577
8524	83	8220DB001353
8525	83	8220DB001354
8526	83	8220DB007578
8527	83	8220DB007582
8528	83	8220DB000297
8529	83	8220DB000496
8530	83	8220DB000497
8531	83	8220DB000515
8532	83	8220DB000516
8533	83	8220DB004384
8534	83	8220DB000519
8535	83	8220DB000521
8536	83	8220DB000522
8537	83	8220DB000523
8538	83	8220DB000669
8539	83	8220DB000670
8540	83	8220DB000671
8541	83	8220DB000672
8542	83	8220DB004382
8543	83	8220DB001185
8544	83	8220DB001186
8545	83	8220DB001187
8546	83	8220DB001188
8547	83	8220DB000216
8548	83	8220DB000217
8549	83	8220DB000242
8550	83	8220DB000243
8551	83	8220DB000244
8552	83	8220DB000245
8553	83	8220DB000246
8554	84	8220DB000896
8555	84	8220DB000897
8556	84	8220DB000893
8557	84	8220DB000894
8558	84	8220DB001067
8559	84	8220DB001068
8560	84	8220DB001069
8561	84	8220DB001070
8562	84	8220DB001071
8563	84	8220DB004528
8564	84	8220DB001072
8565	84	8220DB007577
8566	84	8220DB001353
8567	84	8220DB001354
8568	84	8220DB007578
8569	84	8220DB007582
8570	84	8220DB000319
8571	84	8220DB000274
8572	84	8220DB000007
8573	84	8220DB000194
8574	84	8220DB000195
8575	84	8220DB000196
8576	84	8220DB000197
8577	84	8220DB000198
8578	84	8220DB000199
8579	84	8220DB001506
8580	84	8220DB001507
8581	84	8220DB001508
8582	84	8220DB001509
8583	84	8220DB001510
8584	84	8220DB001511
8585	84	8220DB001512
8586	84	8220DB001538
8587	84	8220DB004543
8588	84	8220DB001560
8589	84	8220DB001280
8590	84	8240DB006366
8591	84	8240DB006230
8592	84	8240DB006228
8593	84	8240DB007111
8594	84	8240DB006365
8595	84	8220DB006276
8596	84	8220DB006362
8597	84	8220DB007276
8598	85	8220DB007149
8599	85	8220DB007277
8600	85	8220DB006363
8601	85	8220DB006361
8602	85	8220DB006367
8603	85	8220DB004985
8604	85	8240DB006219
8605	85	8240DB006229
8606	85	8240DB006364
8607	85	8220DB001558
8608	85	8220DB004542
8609	85	8220DB001531
8610	85	8220DB001532
8611	85	8220DB001533
8612	85	8220DB001534
8613	85	8220DB001535
8614	85	8220DB001536
8615	85	8220DB001537
8616	85	8220DB000186
8617	85	8220DB000187
8618	85	8220DB000188
8619	85	8220DB000189
8620	85	8220DB000190
8621	85	8220DB000191
8622	85	8220DB000819
8623	85	8220DB000264
8624	85	8220DB006059
8625	85	8220DB000334
8626	85	8220DB007581
8627	85	8220DB001283
8628	85	8220DB007579
8629	85	8220DB001285
8630	85	8220DB001016
8631	85	8220DB001017
8632	85	8220DB001018
8633	85	8220DB001019
8634	85	8220DB001020
8635	85	8220DB001076
8636	85	8220DB001021
8637	85	8220DB006042
8638	85	8220DB001022
8639	85	8220DB001023
8640	85	8220DB001024
8641	86	8240DB003605
8642	86	8240DB003606
8643	86	8240DB003607
8644	86	8240DB006051
8645	86	8240DB006053
8646	86	8240DB007327
8647	86	8240DB003629
8648	86	8240DB003630
8649	86	8240DB003631
8650	86	8240DB003632
8651	86	8240DB003633
8652	86	8240DB003634
8653	86	8240DB003635
8654	86	8240DB003636
8655	86	8240DB000905
8656	86	8240DB004331
8657	86	8240DB004339
8658	86	8240DB007692
8659	86	8240DB006010
8660	86	8240DB003656
8661	86	8240DB007194
8662	86	8240DB007196
8663	86	8240DB006310
8664	86	8240DB006311
8665	86	8220DB007399
8666	86	8220DB007398
8667	86	8220DB007397
8668	86	8220DB006252
8669	86	8220DB000301
8670	86	8220DB004495
8671	86	8220DB002809
8672	86	8220DB002810
8673	86	8220DB001013
8674	86	8220DB001015
8675	86	8220DB001016
8676	86	8220DB001017
8677	86	8220DB001018
8678	86	8220DB001019
8679	86	8220DB001020
8680	86	8220DB001076
8681	86	8220DB001021
8682	86	8220DB006042
8683	86	8220DB001022
8684	86	8220DB001023
8685	86	8220DB001024
8686	86	8220DB000895
8687	86	8220DB001025
8688	86	8220DB001026
8689	86	8220DB001027
8690	86	8220DB001028
8691	86	8250DB002818
8692	86	8250DB002819
8693	86	8250DB003012
8694	87	8250DB000877
8695	87	8250DB000876
8696	87	8250DB003011
8697	87	8250DB002896
8698	87	8250DB002897
8699	87	8220DB001062
8700	87	8220DB001063
8701	87	8220DB001064
8702	87	8220DB001065
8703	87	8220DB001066
8704	87	8220DB001067
8705	87	8220DB001068
8706	87	8220DB001069
8707	87	8220DB001070
8708	87	8220DB001071
8709	87	8220DB004528
8710	87	8220DB001072
8711	87	8220DB007577
8712	87	8220DB001353
8713	87	8220DB001354
8714	87	8220DB007578
8715	87	8220DB007582
8716	87	8220DB000407
8717	87	8220DB002498
8718	87	8220DB002499
8719	87	8220DB002500
8720	87	8220DB002501
8721	87	8220DB007623
8722	87	8240DB006312
8723	87	8240DB007197
8724	87	8240DB007195
8725	87	8240DB003653
8726	87	8240DB006055
8727	87	8240DB001073
8728	87	8240DB003641
8729	87	8240DB003642
8730	87	8240DB003643
8731	87	8240DB003583
8732	87	8240DB003584
8733	87	8240DB003585
8734	87	8240DB003625
8735	87	8240DB003626
8736	87	8240DB003627
8737	87	8240DB003628
8738	87	8240DB006052
8739	87	8240DB003613
8740	87	8240DB003615
8741	88	8350DB004533
8742	88	8350DB004844
8743	88	8350DB004177
8744	88	8350DB004178
8745	88	8350DB004179
8746	88	8350DB002993
8747	88	8350DB002994
8748	88	8350DB004180
8749	88	8350DB004181
8750	88	8350DB004182
8751	88	8350DB004151
8752	88	8350DB002997
8753	88	8350DB004153
8754	88	8350DB004154
8755	88	8350DB004416
8756	88	8350DB004201
8757	88	8250DB004202
8758	88	8250DB004203
8759	88	8250DB005090
8760	88	8250DB004204
8761	88	8250DB004205
8762	88	8250DB004206
8763	88	8250DB003140
8764	88	8250DB003141
8765	88	8250DB003142
8766	88	8250DB003143
8767	88	8250DB003144
8768	88	8250DB003145
8769	88	8250DB003146
8770	88	8250DB003147
8771	88	8250DB003148
8772	88	8250DB005127
8773	88	8250DB005128
8774	88	8250DB002996
8775	88	8250DB003258
8776	88	8250DB002060
8777	88	8250DB002061
8778	88	8250DB002062
8779	88	8250DB002063
8780	88	8250DB002064
8781	88	8250DB002065
8782	88	8250DB004727
8783	88	8250DB004728
8784	88	8250DB000461
8785	88	8250DB002068
8786	88	8250DB002069
8787	88	8250DB002070
8788	88	8250DB002084
8789	88	8250DB000768
8790	88	8220DB000769
8791	88	8220DB000770
8792	88	8220DB000771
8793	88	8220DB000772
8794	88	8220DB000773
8795	88	8220DB000774
8796	88	8220DB000775
8797	88	8220DB000776
8798	88	8220DB000777
8799	88	8220DB000906
8800	88	8220DB000907
8801	88	8220DB000908
8802	88	8220DB000909
8803	88	8220DB000786
8804	88	8220DB000792
8805	88	8220DB007586
8806	88	8220DB007587
8807	88	8220DB007588
8808	88	8220DB000325
8809	88	8220DB001443
8810	88	8220DB001444
8811	88	8220DB001445
8812	88	8220DB004407
8813	89	8350DB007574
8814	89	8350DB004177
8815	89	8350DB004178
8816	89	8350DB004179
8817	89	8350DB002993
8818	89	8350DB002994
8819	89	8350DB004180
8820	89	8350DB004181
8821	89	8350DB004182
8822	89	8350DB004151
8823	89	8350DB002997
8824	89	8350DB004153
8825	89	8350DB004154
8826	89	8350DB004416
8827	89	8350DB004201
8828	89	8250DB004202
8829	89	8250DB004203
8830	89	8250DB005090
8831	89	8250DB004204
8832	89	8250DB004205
8833	89	8250DB004206
8834	89	8250DB003140
8835	89	8250DB003141
8836	89	8250DB003142
8837	89	8250DB003143
8838	89	8250DB003144
8839	89	8250DB003145
8840	89	8250DB003146
8841	89	8250DB003147
8842	89	8250DB003148
8843	89	8250DB005127
8844	89	8250DB005128
8845	89	8250DB002996
8846	89	8250DB003258
8847	89	8250DB002060
8848	89	8250DB002061
8849	89	8250DB002062
8850	89	8250DB002063
8851	89	8250DB002064
8852	89	8250DB002065
8853	89	8250DB004727
8854	89	8250DB004728
8855	89	8250DB000461
8856	89	8250DB002068
8857	89	8250DB002069
8858	89	8250DB002070
8859	89	8250DB002084
8860	89	8250DB000768
8861	89	8220DB000769
8862	89	8220DB000770
8863	89	8220DB000771
8864	89	8220DB000772
8865	89	8220DB000773
8866	89	8220DB000774
8867	89	8220DB000775
8868	89	8220DB000776
8869	89	8220DB000777
8870	89	8220DB000906
8871	89	8220DB000907
8872	89	8220DB000908
8873	89	8220DB000909
8874	89	8220DB000786
8875	89	8220DB000792
8876	89	8220DB007586
8877	89	8220DB007587
8878	89	8220DB007588
8879	89	8220DB000325
8880	89	8220DB001443
8881	89	8220DB001444
8882	89	8220DB001445
8883	89	8220DB004407
8884	90	8220DB006318
8885	90	8220DB006319
8886	90	8220DB007246
8887	90	8220DB006320
8888	90	8220DB004594
8889	90	8220DB004595
8890	90	8220DB004596
8891	90	8220DB004563
8892	90	8220DB001218
8893	90	8220DB001270
8894	90	8220DB001272
8895	90	8220DB001273
8896	90	8220DB001274
8897	90	8220DB001275
8898	90	8220DB001276
8899	90	8220DB001277
8900	90	8220DB001219
8901	90	8220DB001220
8902	90	8220DB001221
8903	90	8220DB000664
8904	90	8220DB000665
8905	90	8220DB000666
8906	90	8220DB000667
8907	90	8220DB000668
8908	90	8220DB000614
8909	90	8220DB000615
8910	90	8220DB000616
8911	90	8220DB000617
8912	90	8220DB000618
8913	90	8220DB000619
8914	90	8220DB000675
8915	90	8220DB004415
8916	90	8220DB000301
8917	90	8220DB004495
8918	90	8220DB007581
8919	90	8220DB001283
8920	90	8220DB007579
8921	90	8220DB001285
8922	90	8220DB001016
8923	90	8220DB001017
8924	90	8220DB001018
8925	90	8220DB001019
8926	90	8220DB001020
8927	90	8220DB001076
8928	90	8220DB001077
8929	90	8220DB001078
8930	90	8220DB001079
8931	90	8220DB001080
8932	90	8220DB001081
8933	90	8220DB001082
8934	90	8220DB001083
8935	90	8220DB001085
8936	90	8220DB001121
8937	90	8220DB001122
8938	90	8220DB001123
8939	90	8220DB001124
8940	90	8230DB001125
8941	90	8230DB001127
8942	90	8230DB001130
8943	90	8230DB001140
8944	90	8230DB001141
8945	90	8230DB001142
8946	90	8230DB001143
8947	90	8230DB001144
8948	90	8230DB001145
8949	90	8230DB004869
8950	90	8230DB004870
8951	90	8230DB003007
8952	90	8230DB006283
8953	91	8230DB006282
8954	91	8230DB006335
8955	91	8230DB006326
8956	91	8230DB004886
8957	91	8230DB004887
8958	91	8230DB001150
8959	91	8230DB001151
8960	91	8230DB001152
8961	91	8230DB001153
8962	91	8230DB001154
8963	91	8230DB000946
8964	91	8230DB001155
8965	91	8230DB001157
8966	91	8230DB001158
8967	91	8220DB001159
8968	91	8220DB001160
8969	91	8220DB001161
8970	91	8220DB001162
8971	91	8220DB001163
8972	91	8220DB001164
8973	91	8220DB001165
8974	91	8220DB001166
8975	91	8220DB001167
8976	91	8220DB001168
8977	91	8220DB001169
8978	91	8220DB001170
8979	91	8220DB001069
8980	91	8220DB001070
8981	91	8220DB001071
8982	91	8220DB004528
8983	91	8220DB001072
8984	91	8220DB007577
8985	91	8220DB001353
8986	91	8220DB001354
8987	91	8220DB007578
8988	91	8220DB007582
8989	91	8220DB000299
8990	91	8220DB000497
8991	91	8220DB000515
8992	91	8220DB000516
8993	91	8220DB004384
8994	91	8220DB000519
8995	91	8220DB000521
8996	91	8220DB000522
8997	91	8220DB000523
8998	91	8220DB000669
8999	91	8220DB000670
9000	91	8220DB000671
9001	91	8220DB000672
9002	91	8220DB004382
9003	91	8220DB001196
9004	91	8220DB001197
9005	91	8220DB001198
9006	91	8220DB001199
9007	91	8220DB001200
9008	91	8220DB004385
9009	91	8220DB001201
9010	91	8220DB001202
9011	91	8220DB001203
9012	91	8220DB006115
9013	91	8220DB004593
9014	91	8220DB007516
9015	91	8220DB006079
9016	91	8220DB006315
9017	91	8220DB006316
9018	91	8220DB007236
9019	91	8220DB007245
9020	92	8230DB004863
9021	92	8230DB004864
9022	92	8230DB004865
9023	92	8230DB004577
9024	92	8230DB004578
9025	92	8230DB001100
9026	92	8230DB000100
9027	92	8230DB001111
9028	92	8230DB002323
9029	92	8230DB002324
9030	92	8230DB002325
9031	92	8230DB002326
9032	92	8230DB005150
9033	92	8220DB002327
9034	92	8220DB002328
9035	92	8220DB002329
9036	92	8220DB002330
9037	92	8220DB002331
9038	92	8220DB001397
9039	92	8220DB001398
9040	92	8220DB001399
9041	92	8220DB005148
9042	92	8220DB001401
9043	92	8220DB001402
9044	92	8220DB001403
9045	92	8220DB001404
9046	92	8220DB001405
9047	92	8220DB004856
9048	92	8220DB004857
9049	92	8220DB000307
9050	92	8220DB000308
9051	92	8220DB000309
9052	92	8220DB007412
9053	92	8220DB007413
9054	92	8220DB002383
9055	92	8220DB002003
9056	92	8220DB001358
9057	93	8230DB004863
9058	93	8230DB004864
9059	93	8230DB004865
9060	93	8230DB004577
9061	93	8230DB004578
9062	93	8230DB001100
9063	93	8230DB000100
9064	93	8230DB001111
9065	93	8230DB002323
9066	93	8230DB002324
9067	93	8230DB002325
9068	93	8230DB002326
9069	93	8230DB005150
9070	93	8220DB002327
9071	93	8220DB002328
9072	93	8220DB002329
9073	93	8220DB002330
9074	93	8220DB002331
9075	93	8220DB001397
9076	93	8220DB001398
9077	93	8220DB001399
9078	93	8220DB005148
9079	93	8220DB001401
9080	93	8220DB001402
9081	93	8220DB001403
9082	93	8220DB001404
9083	93	8220DB001405
9084	93	8220DB004856
9085	93	8220DB004857
9086	93	8220DB000307
9087	93	8220DB000308
9088	93	8220DB000309
9089	93	8220DB002383
9090	93	8220DB002003
9091	93	8220DB001358
9092	94	8230DB004606
9093	94	8230DB007142
9094	94	8230DB007015
9095	94	8230DB004617
9096	94	8230DB004555
9097	94	8230DB004552
9098	94	8230DB004554
9099	94	8230DB003418
9100	94	8230DB003419
9101	94	8230DB004762
9102	94	8230DB004763
9103	94	8230DB006245
9104	94	8230DB002156
9105	94	8230DB006014
9106	94	8230DB006242
9107	94	8230DB006152
9108	94	8230DB006153
9109	94	8230DB006243
9110	94	8230DB006154
9111	94	8230DB006155
9112	94	8230DB006141
9113	94	8220DB006142
9114	94	8220DB002181
9115	94	8220DB002182
9116	94	8220DB002778
9117	94	8220DB002185
9118	94	8220DB007043
9119	94	8220DB001424
9120	94	8220DB002186
9121	94	8220DB002187
9122	94	8220DB002188
9123	94	8220DB002189
9124	94	8220DB001436
9125	94	8220DB003952
9126	94	8220DB002190
9127	94	8220DB004434
9128	94	8220DB002379
9129	94	8220DB002380
9130	94	8220DB002382
9131	94	8220DB005099
9132	94	8220DB002383
9133	94	8220DB001479
9134	94	8220DB007622
9135	94	8220DB000297
9136	94	8220DB000407
9137	94	8220DB002498
9138	94	8220DB002499
9139	94	8220DB002500
9140	94	8220DB002501
9141	94	8220DB007623
9142	94	8220DB002508
9143	95	8230DB004606
9144	95	8230DB007142
9145	95	8230DB007015
9146	95	8230DB004617
9147	95	8230DB004555
9148	95	8230DB004576
9149	95	8230DB003418
9150	95	8230DB003419
9151	95	8230DB004762
9152	95	8230DB004763
9153	95	8230DB006245
9154	95	8230DB002156
9155	95	8230DB006014
9156	95	8230DB006242
9157	95	8230DB006152
9158	95	8230DB006153
9159	95	8230DB006243
9160	95	8230DB006154
9161	95	8230DB006155
9162	95	8230DB006141
9163	95	8220DB006142
9164	95	8220DB002181
9165	95	8220DB002182
9166	95	8220DB002778
9167	95	8220DB002185
9168	95	8220DB007043
9169	95	8220DB001424
9170	95	8220DB002186
9171	95	8220DB002187
9172	95	8220DB002188
9173	95	8220DB002189
9174	95	8220DB001436
9175	95	8220DB003952
9176	95	8220DB002190
9177	95	8220DB004434
9178	95	8220DB002379
9179	95	8220DB002380
9180	95	8220DB002382
9181	95	8220DB005099
9182	95	8220DB002383
9183	95	8220DB001479
9184	95	8220DB007622
9185	95	8220DB000297
9186	95	8220DB000407
9187	95	8220DB002498
9188	95	8220DB002499
9189	95	8220DB002500
9190	95	8220DB002501
9191	95	8220DB007623
9192	95	8220DB002508
9193	96	8350DB004168
9194	96	8350DB004170
9195	96	8350DB004153
9196	96	8350DB004154
9197	96	8350DB004416
9198	96	8350DB004201
9199	96	8250DB004202
9200	96	8250DB004203
9201	96	8250DB005090
9202	96	8250DB004204
9203	96	8250DB004205
9204	96	8250DB004206
9205	96	8250DB003140
9206	96	8250DB003141
9207	96	8250DB003142
9208	96	8250DB003143
9209	96	8250DB003144
9210	96	8250DB003145
9211	96	8250DB003146
9212	96	8250DB003147
9213	96	8250DB003148
9214	96	8250DB005127
9215	96	8250DB005128
9216	96	8250DB002996
9217	96	8250DB003258
9218	96	8250DB002060
9219	96	8250DB002061
9220	96	8250DB002062
9221	96	8250DB002063
9222	96	8250DB002064
9223	96	8250DB002065
9224	96	8250DB004727
9225	96	8250DB004728
9226	96	8250DB000461
9227	96	8250DB002068
9228	96	8250DB002069
9229	96	8250DB002070
9230	96	8250DB002084
9231	96	8250DB000768
9232	96	8220DB000769
9233	96	8220DB000770
9234	96	8220DB000771
9235	96	8220DB000772
9236	96	8220DB000773
9237	96	8220DB000774
9238	96	8220DB000775
9239	96	8220DB000776
9240	96	8220DB000777
9241	96	8220DB000906
9242	96	8220DB000907
9243	96	8220DB000908
9244	96	8220DB000909
9245	96	8220DB000786
9246	96	8220DB000792
9247	96	8220DB000319
9248	96	8220DB000281
9249	96	8220DB000006
9250	96	8220DB000194
9251	96	8220DB000195
9252	96	8220DB000196
9253	96	8220DB000197
9254	96	8220DB000198
9255	96	8220DB000199
9256	96	8220DB000200
9257	96	8220DB000201
9258	96	8220DB000148
9259	96	8220DB000149
9260	96	8220DB000150
9261	96	8220DB000027
9262	96	8220DB000028
9263	96	8220DB000029
9264	96	8220DB004680
9265	96	8220DB000090
9266	96	8220DB000091
9267	96	8220DB000092
9268	96	8220DB000093
9269	96	8220DB000094
9270	96	8220DB000126
9271	96	8220DB006182
9272	96	8220DB000322
9273	97	8220DB007698
9274	97	8220DB007113
9275	97	8220DB000127
9276	97	8220DB000112
9277	97	8220DB000113
9278	97	8220DB000114
9279	97	8220DB000115
9280	97	8220DB000037
9281	97	8220DB000038
9282	97	8220DB000039
9283	97	8220DB000040
9284	97	8220DB000146
9285	97	8220DB000147
9286	97	8220DB000184
9287	97	8220DB000185
9288	97	8220DB000186
9289	97	8220DB000187
9290	97	8220DB000188
9291	97	8220DB000189
9292	97	8220DB000190
9293	97	8220DB000191
9294	97	8220DB000819
9295	97	8220DB000264
9296	97	8220DB006059
9297	97	8220DB000334
9298	97	8220DB000406
9299	97	8220DB000747
9300	97	8220DB000842
9301	97	8220DB000845
9302	97	8220DB000846
9303	97	8220DB000847
9304	97	8220DB000848
9305	97	8220DB002795
9306	97	8220DB000756
9307	97	8220DB000757
9308	97	8220DB000758
9309	97	8220DB000759
9310	97	8220DB000760
9311	97	8220DB000761
9312	97	8220DB000762
9313	97	8220DB000763
9314	97	8250DB002007
9315	97	8250DB002008
9316	97	8250DB002009
9317	97	8250DB002010
9318	97	8250DB000435
9319	97	8250DB007353
9320	97	8250DB004571
9321	97	8250DB002013
9322	97	8250DB002014
9323	97	8250DB004636
9324	97	8250DB002016
9325	97	8250DB002015
9326	97	8250DB002017
9327	97	8250DB003259
9328	97	8250DB007361
9329	97	8250DB007362
9330	97	8250DB003129
9331	97	8250DB003130
9332	97	8250DB003131
9333	97	8250DB003132
9334	97	8250DB003133
9335	97	8250DB003134
9336	97	8250DB003135
9337	97	8250DB003136
9338	97	8250DB003138
9339	97	8250DB003139
9340	97	8250DB004124
9341	97	8250DB004125
9342	97	8250DB004126
9343	97	8250DB004127
9344	97	8250DB004128
9345	97	8350DB004129
9346	97	8350DB004130
9347	97	8350DB004131
9348	97	8350DB007294
9349	97	8350DB004156
9350	98	8220DB007391
9351	98	8220DB000493
9352	98	8220DB000494
9353	98	8220DB000495
9354	98	8220DB000400
9355	98	8220DB007581
9356	98	8220DB001283
9357	98	8220DB007579
9358	98	8220DB001285
9359	98	8220DB001016
9360	98	8220DB001017
9361	98	8220DB001018
9362	98	8220DB001019
9363	98	8220DB001020
9364	98	8220DB001076
9365	98	8220DB001077
9366	98	8220DB001078
9367	98	8220DB001079
9368	98	8220DB001080
9369	98	8220DB001081
9370	98	8220DB001082
9371	98	8220DB001083
9372	98	8220DB001085
9373	98	8220DB001086
9374	98	8220DB001087
9375	98	8220DB001088
9376	98	8220DB001089
9377	98	8220DB001090
9378	98	8220DB001091
9379	98	8230DB001092
9380	98	8230DB001093
9381	98	8230DB001094
9382	98	8230DB001095
9383	98	8230DB001096
9384	98	8230DB001101
9385	98	8230DB001102
9386	98	8230DB001103
9387	99	8230DB001105
9388	99	8230DB001107
9389	99	8230DB001108
9390	99	8230DB001109
9391	99	8230DB001110
9392	99	8230DB001111
9393	99	8230DB001112
9394	99	8230DB001113
9395	99	8230DB001114
9396	99	8230DB001115
9397	99	8220DB002437
9398	99	8220DB001117
9399	99	8220DB001118
9400	99	8220DB001119
9401	99	8220DB001120
9402	99	8220DB001164
9403	99	8220DB001165
9404	99	8220DB001166
9405	99	8220DB001167
9406	99	8220DB001168
9407	99	8220DB001169
9408	99	8220DB001170
9409	99	8220DB001069
9410	99	8220DB001070
9411	99	8220DB001071
9412	99	8220DB004528
9413	99	8220DB001072
9414	99	8220DB007577
9415	99	8220DB001353
9416	99	8220DB001354
9417	99	8220DB007578
9418	99	8220DB007582
9419	99	8220DB000340
9420	99	8220DB000350
9421	99	8220DB002809
9422	99	8220DB002810
9423	100	8220DB007391
9424	100	8220DB000493
9425	100	8220DB000494
9426	100	8220DB000495
9427	100	8220DB000400
9428	100	8220DB007581
9429	100	8220DB001283
9430	100	8220DB007579
9431	100	8220DB001285
9432	100	8220DB001016
9433	100	8220DB001017
9434	100	8220DB001018
9435	100	8220DB001019
9436	100	8220DB001020
9437	100	8220DB001076
9438	100	8220DB001077
9439	100	8220DB001078
9440	100	8220DB001079
9441	100	8220DB001080
9442	100	8220DB001081
9443	100	8220DB002914
9444	100	8220DB002915
9445	100	8220DB002916
9446	100	8220DB002917
9447	100	8220DB002918
9448	100	8220DB001300
9449	100	8230DB001301
9450	100	8230DB001302
9451	100	8230DB001303
9452	100	8230DB005129
9453	100	8230DB005130
9454	100	8230DB001135
9455	100	8230DB007064
9456	100	8230DB007066
9457	100	8230DB002924
9458	100	8230DB002925
9459	100	8230DB007442
9460	100	8230DB007446
9461	100	8230DB007070
9462	100	8230DB007445
9463	100	8230DB006339
9464	100	8230DB006324
9465	100	8230DB006325
9466	100	8230DB006341
9467	100	8230DB006277
9468	100	8230DB006278
9469	100	8230DB006279
9470	101	8230DB006285
9471	101	8230DB006286
9472	101	8230DB006287
9473	101	8230DB006288
9474	101	8230DB006342
9475	101	8230DB006298
9476	101	8230DB006336
9477	101	8230DB007069
9478	101	8230DB007443
9479	101	8230DB007444
9480	101	8230DB002941
9481	101	8230DB002942
9482	101	8230DB007065
9483	101	8230DB007063
9484	101	8230DB001137
9485	101	8230DB005131
9486	101	8230DB005132
9487	101	8230DB001331
9488	101	8230DB001332
9489	101	8230DB001333
9490	101	8230DB001334
9491	101	8220DB002985
9492	101	8220DB002986
9493	101	8220DB002988
9494	101	8220DB003001
9495	101	8220DB003002
9496	101	8220DB001166
9497	101	8220DB001167
9498	101	8220DB001168
9499	101	8220DB001169
9500	101	8220DB001170
9501	101	8220DB001069
9502	101	8220DB001070
9503	101	8220DB001071
9504	101	8220DB004528
9505	101	8220DB001072
9506	101	8220DB007577
9507	101	8220DB001353
9508	101	8220DB001354
9509	101	8220DB007578
9510	101	8220DB007582
9511	101	8220DB000340
9512	101	8220DB000350
9513	101	8220DB002809
9514	101	8220DB002810
9515	102	8220DB007391
9516	102	8220DB000493
9517	102	8220DB000494
9518	102	8220DB000495
9519	102	8220DB000400
9520	102	8220DB007581
9521	102	8220DB001283
9522	102	8220DB007579
9523	102	8220DB001285
9524	102	8220DB001016
9525	102	8220DB001017
9526	102	8220DB001018
9527	102	8220DB001019
9528	102	8220DB001020
9529	102	8220DB001076
9530	102	8220DB001077
9531	102	8220DB001078
9532	102	8220DB001079
9533	102	8220DB001080
9534	102	8220DB001081
9535	102	8220DB002914
9536	102	8220DB002915
9537	102	8220DB002916
9538	102	8220DB002917
9539	102	8220DB002918
9540	102	8220DB001300
9541	102	8230DB001301
9542	102	8230DB001302
9543	102	8230DB001303
9544	102	8230DB005129
9545	102	8230DB005130
9546	102	8230DB001135
9547	102	8230DB007064
9548	102	8230DB007066
9549	102	8230DB002924
9550	102	8230DB002925
9551	102	8230DB002948
9552	102	8230DB002949
9553	102	8230DB002950
9554	102	8230DB002954
9555	103	8230DB007067
9556	103	8230DB002956
9557	103	8230DB002965
9558	103	8230DB002983
9559	103	8230DB002984
9560	103	8230DB002941
9561	103	8230DB002942
9562	103	8230DB007065
9563	103	8230DB007063
9564	103	8230DB001137
9565	103	8230DB005131
9566	103	8230DB005132
9567	103	8230DB001331
9568	103	8230DB001332
9569	103	8230DB001333
9570	103	8230DB001334
9571	103	8220DB002985
9572	103	8220DB002986
9573	103	8220DB002988
9574	103	8220DB003001
9575	103	8220DB003002
9576	103	8220DB001166
9577	103	8220DB001167
9578	103	8220DB001168
9579	103	8220DB001169
9580	103	8220DB001170
9581	103	8220DB001069
9582	103	8220DB001070
9583	103	8220DB001071
9584	103	8220DB004528
9585	103	8220DB001072
9586	103	8220DB007577
9587	103	8220DB001353
9588	103	8220DB001354
9589	103	8220DB007578
9590	103	8220DB007582
9591	103	8220DB000340
9592	103	8220DB000350
9593	103	8220DB002809
9594	103	8220DB002810
9595	104	8240DB007347
9596	104	8240DB003669
9597	104	8240DB007349
9598	104	8240DB001631
9599	104	8240DB001632
9600	104	8240DB005053
9601	104	8240DB001633
9602	104	8240DB001634
9603	104	8240DB001635
9604	104	8240DB001636
9605	104	8240DB001637
9606	104	8240DB001638
9607	104	8240DB001639
9608	104	8240DB001640
9609	104	8240DB000231
9610	104	8240DB000232
9611	104	8220DB000233
9612	104	8220DB000234
9613	104	8220DB000235
9614	104	8220DB000236
9615	104	8220DB000237
9616	104	8220DB000213
9617	104	8220DB000214
9618	104	8220DB004432
9619	104	8220DB000119
9620	104	8220DB000044
9621	104	8220DB007603
9622	104	8220DB000045
9623	104	8220DB000046
9624	104	8220DB000047
9625	104	8220DB000048
9626	104	8220DB000049
9627	104	8220DB000051
9628	104	8220DB000052
9629	104	8220DB000262
9630	104	8220DB000270
9631	104	8220DB000336
9632	104	8220DB001279
9633	104	8220DB001282
9634	104	8220DB004456
9635	104	8220DB001284
9636	104	8220DB001285
9637	104	8220DB001287
9638	104	8220DB001288
9639	104	8220DB001289
9640	104	8220DB001290
9641	104	8220DB001291
9642	104	8220DB001292
9643	104	8220DB001293
9644	104	8220DB001294
9645	104	8220DB001295
9646	104	8220DB001296
9647	104	8220DB001297
9648	104	8220DB001298
9649	104	8220DB001299
9650	104	8220DB001300
9651	104	8230DB001301
9652	104	8230DB001302
9653	104	8230DB001303
9654	104	8230DB001304
9655	104	8230DB001305
9656	104	8230DB001320
9657	104	8230DB001321
9658	104	8230DB001322
9659	104	8230DB001323
9660	104	8230DB001324
9661	104	8230DB007068
9662	104	8230DB002966
9663	104	8230DB002967
9664	104	8230DB002968
9665	104	8250DB002969
9666	104	8250DB002970
9667	104	8250DB002971
9668	104	8250DB005051
9669	104	8250DB005052
9670	105	8250DB005171
9671	105	8250DB002976
9672	105	8250DB002977
9673	105	8250DB002978
9674	105	8250DB002979
9675	105	8230DB002980
9676	105	8230DB002981
9677	105	8230DB002991
9678	105	8230DB002992
9679	105	8230DB001325
9680	105	8230DB001326
9681	105	8230DB001327
9682	105	8230DB001328
9683	105	8230DB001329
9684	105	8230DB001330
9685	105	8230DB001331
9686	105	8230DB001332
9687	105	8230DB001333
9688	105	8230DB001334
9689	105	8220DB007293
9690	105	8220DB001335
9691	105	8220DB001336
9692	105	8220DB001337
9693	105	8220DB001338
9694	105	8220DB001339
9695	105	8220DB001340
9696	105	8220DB001341
9697	105	8220DB001342
9698	105	8220DB001343
9699	105	8220DB001344
9700	105	8220DB001345
9701	105	8220DB001347
9702	105	8220DB001348
9703	105	8220DB001349
9704	105	8220DB001350
9705	105	8220DB001352
9706	105	8220DB001353
9707	105	8220DB001355
9708	105	8220DB001357
9709	105	8220DB001359
9710	105	8220DB000320
9711	105	8220DB000278
9712	105	8220DB000008
9713	105	8220DB000012
9714	105	8220DB000014
9715	105	8220DB000015
9716	105	8220DB000017
9717	105	8220DB000018
9718	105	8220DB000019
9719	105	8220DB000021
9720	105	8220DB007602
9721	105	8220DB000085
9722	105	8220DB000203
9723	105	8220DB000204
9724	105	8220DB000205
9725	105	8220DB000215
9726	105	8220DB000216
9727	105	8220DB000217
9728	105	8220DB000218
9729	105	8240DB000219
9730	105	8220DB000220
9731	105	8240DB001622
9732	105	8240DB001623
9733	105	8240DB001624
9734	105	8240DB001625
9735	105	8240DB001626
9736	105	8240DB001627
9737	105	8240DB001628
9738	105	8240DB001629
9739	105	8240DB001630
9740	106	8240DB007347
9741	106	8240DB003669
9742	106	8240DB007349
9743	106	8240DB001631
9744	106	8240DB001632
9745	106	8240DB005053
9746	106	8240DB001633
9747	106	8240DB001634
9748	106	8240DB001635
9749	106	8240DB001636
9750	106	8240DB001637
9751	106	8240DB001638
9752	106	8240DB001639
9753	106	8240DB001640
9754	106	8240DB000231
9755	106	8220DB001641
9756	106	8220DB001642
9757	106	8220DB000213
9758	106	8220DB000214
9759	106	8220DB004432
9760	106	8220DB000119
9761	106	8220DB000044
9762	106	8220DB007603
9763	106	8220DB000045
9764	106	8220DB000046
9765	106	8220DB000047
9766	106	8220DB000048
9767	106	8220DB000049
9768	106	8220DB000051
9769	106	8220DB000052
9770	106	8220DB000262
9771	106	8220DB000270
9772	106	8220DB000336
9773	106	8220DB001279
9774	106	8220DB001282
9775	106	8220DB004456
9776	106	8220DB001284
9777	106	8220DB001285
9778	106	8220DB001287
9779	106	8220DB001288
9780	106	8220DB001289
9781	106	8220DB001290
9782	106	8220DB001291
9783	106	8220DB001292
9784	106	8220DB001293
9785	106	8220DB001294
9786	106	8220DB001295
9787	106	8220DB001296
9788	106	8220DB001297
9789	106	8220DB001298
9790	106	8220DB001299
9791	106	8220DB001300
9792	106	8230DB001301
9793	106	8230DB001302
9794	106	8230DB001303
9795	106	8230DB001304
9796	106	8230DB001305
9797	106	8230DB001320
9798	106	8230DB001321
9799	106	8230DB001322
9800	106	8230DB001323
9801	106	8230DB001324
9802	106	8230DB007068
9803	106	8230DB002966
9804	106	8230DB002967
9805	106	8230DB002968
9806	106	8250DB002969
9807	106	8250DB002970
9808	106	8250DB002971
9809	106	8250DB005051
9810	106	8250DB005052
9811	107	8220DB007391
9812	107	8220DB000493
9813	107	8220DB000494
9814	107	8220DB000495
9815	107	8220DB000400
9816	107	8220DB000346
9817	107	8220DB000317
9818	107	8220DB000312
9819	107	8220DB001444
9820	107	8220DB001445
9821	107	8220DB007078
9822	107	8220DB001449
9823	107	8220DB001450
9824	107	8220DB001451
9825	107	8220DB002191
9826	107	8220DB002192
9827	107	8220DB002193
9828	107	8220DB002194
9829	107	8220DB002195
9830	107	8220DB002196
9831	107	8220DB002197
9832	107	8220DB002198
9833	107	8220DB002200
9834	107	8230DB002201
9835	107	8230DB007239
9836	107	8230DB004401
9837	107	8230DB002202
9838	107	8230DB002203
9839	107	8230DB002204
9840	107	8230DB004888
9841	107	8230DB004798
9842	108	8230DB004795
9843	108	8230DB002686
9844	108	8230DB007510
9845	108	8230DB002207
9846	108	8230DB002208
9847	108	8230DB002210
9848	108	8230DB002211
9849	108	8230DB002241
9850	108	8230DB002242
9851	108	8220DB002243
9852	108	8220DB002244
9853	108	8220DB002245
9854	108	8220DB002246
9855	108	8220DB002247
9856	108	8220DB002248
9857	108	8220DB002249
9858	108	8220DB002250
9859	108	8220DB002251
9860	108	8220DB001472
9861	108	8220DB004408
9862	108	8220DB001473
9863	108	8220DB001474
9864	108	8220DB001476
9865	108	8220DB007453
9866	108	8220DB001478
9867	108	8220DB001479
9868	108	8220DB000315
9869	108	8220DB000406
9870	108	8220DB002810
9871	109	8220DB004595
9872	109	8220DB004596
9873	109	8220DB004563
9874	109	8220DB001218
9875	109	8220DB001258
9876	109	8220DB001259
9877	109	8220DB001260
9878	109	8220DB006130
9879	109	8220DB001262
9880	109	8220DB004692
9881	109	8220DB001245
9882	109	8220DB004693
9883	109	8220DB001254
9884	109	8220DB001255
9885	109	8220DB001256
9886	109	8220DB004694
9887	109	8220DB001249
9888	109	8220DB001247
9889	109	8220DB001248
9890	109	8220DB001273
9891	109	8220DB001274
9892	109	8220DB001275
9893	109	8220DB001276
9894	109	8220DB001277
9895	109	8220DB001219
9896	109	8220DB001220
9897	109	8220DB001221
9898	109	8220DB000664
9899	109	8220DB000665
9900	109	8220DB000666
9901	109	8220DB000667
9902	109	8220DB000668
9903	109	8220DB000614
9904	109	8220DB000615
9905	109	8220DB000616
9906	109	8220DB000617
9907	109	8220DB000618
9908	109	8220DB000619
9909	109	8220DB000675
9910	109	8220DB001500
9911	109	8220DB000302
9912	109	8220DB004495
9913	109	8220DB004522
9914	109	8220DB001934
9915	109	8220DB002310
9916	109	8220DB002311
9917	109	8220DB002312
9918	109	8220DB002313
9919	109	8220DB002314
9920	109	8220DB002315
9921	109	8220DB002094
9922	109	8220DB001406
9923	109	8220DB001407
9924	109	8220DB001409
9925	109	8220DB002095
9926	109	8220DB002096
9927	109	8220DB002097
9928	109	8220DB002099
9929	109	8220DB002101
9930	109	8220DB002102
9931	109	8220DB002103
9932	109	8220DB002332
9933	109	8220DB002333
9934	109	8230DB002334
9935	109	8230DB004662
9936	109	8230DB002335
9937	109	8230DB002336
9938	109	8230DB002337
9939	109	8230DB002339
9940	109	8230DB002340
9941	109	8230DB002601
9942	109	8230DB004446
9943	109	8230DB002603
9944	109	8230DB002557
9945	109	8230DB004436
9946	109	8230DB005008
9947	109	8230DB004640
9948	109	8230DB004347
9949	109	8230DB002349
9950	109	8230DB002351
9951	109	8230DB002621
9952	109	8230DB002622
9953	109	8230DB002623
9954	109	8230DB002624
9955	109	8230DB004441
9956	109	8230DB002626
9957	109	8230DB002669
9958	109	8230DB004641
9959	109	8230DB004642
9960	110	8230DB002353
9961	110	8230DB004643
9962	110	8230DB004644
9963	110	8230DB004645
9964	110	8230DB004440
9965	110	8230DB002628
9966	110	8230DB002629
9967	110	8230DB006095
9968	110	8230DB007062
9969	110	8230DB006075
9970	110	8230DB002631
9971	110	8230DB002359
9972	110	8230DB002360
9973	110	8230DB004348
9974	110	8230DB004646
9975	110	8230DB004647
9976	110	8230DB002346
9977	110	8230DB004435
9978	110	8230DB002632
9979	110	8230DB002633
9980	110	8230DB002369
9981	110	8230DB002370
9982	110	8230DB002371
9983	110	8230DB002372
9984	110	8230DB002373
9985	110	8230DB002377
9986	110	8220DB002378
9987	110	8220DB002183
9988	110	8220DB002184
9989	110	8220DB002185
9990	110	8220DB007043
9991	110	8220DB001424
9992	110	8220DB002186
9993	110	8220DB002187
9994	110	8220DB002188
9995	110	8220DB002189
9996	110	8220DB001436
9997	110	8220DB003952
9998	110	8220DB002190
9999	110	8220DB004434
10000	110	8220DB002379
10001	110	8220DB002380
10002	110	8220DB002382
10003	110	8220DB005099
10004	110	8220DB002383
10005	110	8220DB002002
10006	110	8220DB001358
10007	110	8220DB000298
10008	110	8220DB000496
10009	110	8220DB000497
10010	110	8220DB000515
10011	110	8220DB000516
10012	110	8220DB004384
10013	110	8220DB000519
10014	110	8220DB000521
10015	110	8220DB000522
10016	110	8220DB000523
10017	110	8220DB000669
10018	110	8220DB000670
10019	110	8220DB000671
10020	110	8220DB000672
10021	110	8220DB004382
10022	110	8220DB001196
10023	110	8220DB001197
10024	110	8220DB001198
10025	110	8220DB001199
10026	110	8220DB001200
10027	110	8220DB004385
10028	110	8220DB001201
10029	110	8220DB004695
10030	110	8220DB001243
10031	110	8220DB004696
10032	110	8220DB004697
10033	110	8220DB001250
10034	110	8220DB004698
10035	110	8220DB004383
10036	110	8220DB004699
10037	110	8220DB004388
10038	110	8220DB004700
10039	110	8220DB001266
10040	110	8220DB001267
10041	110	8220DB001268
10042	110	8220DB001269
10043	110	8220DB001265
10044	110	8220DB006115
10045	110	8220DB004593
10046	111	8220DB000956
10047	111	8240DB000957
10048	111	8220DB000958
10049	111	8220DB000959
10050	111	8220DB000960
10051	111	8220DB000961
10052	111	8220DB000962
10053	111	8220DB000635
10054	111	8220DB000636
10055	111	8220DB000637
10056	111	8220DB000638
10057	111	8220DB000639
10058	111	8220DB000640
10059	111	8220DB000641
10060	111	8220DB000642
10061	111	8220DB000643
10062	111	8220DB000644
10063	111	8220DB000645
10064	111	8220DB001796
10065	111	8220DB001797
10066	111	8220DB001798
10067	111	8220DB001799
10068	111	8220DB001800
10069	111	8220DB001801
10070	111	8220DB001277
10071	111	8220DB001219
10072	111	8220DB001220
10073	111	8220DB001221
10074	111	8220DB000664
10075	111	8220DB000665
10076	111	8220DB000666
10077	111	8220DB000667
10078	111	8220DB000668
10079	111	8220DB000614
10080	111	8220DB000615
10081	111	8220DB000616
10082	111	8220DB000617
10083	111	8220DB000618
10084	111	8220DB000619
10085	111	8220DB000675
10086	112	8220DB001791
10087	112	8220DB001792
10088	112	8220DB001793
10089	112	8220DB000962
10090	112	8220DB000635
10091	112	8220DB000636
10092	112	8220DB000637
10093	112	8220DB000638
10094	112	8220DB000639
10095	112	8220DB000640
10096	112	8220DB000641
10097	112	8220DB000642
10098	112	8220DB000643
10099	112	8220DB000644
10100	112	8220DB000645
10101	112	8220DB001796
10102	112	8220DB001797
10103	112	8220DB001798
10104	112	8220DB001799
10105	112	8220DB001800
10106	112	8220DB001801
10107	112	8220DB001277
10108	112	8220DB001219
10109	112	8220DB001220
10110	112	8220DB001221
10111	112	8220DB000664
10112	112	8220DB000665
10113	112	8220DB000666
10114	112	8220DB000667
10115	112	8220DB000668
10116	112	8220DB000614
10117	112	8220DB000615
10118	112	8220DB000616
10119	112	8220DB000617
10120	112	8220DB000618
10121	112	8220DB000619
10122	112	8220DB000675
10123	112	8220DB000620
10124	112	8220DB007569
10125	113	8240DB000324
10126	113	8240DB001634
10127	113	8240DB001635
10128	113	8240DB001636
10129	113	8240DB001637
10130	113	8240DB001638
10131	113	8240DB000992
10132	113	8220DB007044
10133	113	8220DB000993
10134	113	8220DB005060
10135	113	8220DB005061
10136	113	8220DB001231
10137	113	8220DB001232
10138	113	8220DB001233
10139	113	8220DB001234
10140	113	8220DB007358
10141	113	8220DB001235
10142	113	8220DB001251
10143	113	8220DB000253
10144	113	8220DB007130
10145	113	8220DB001237
10146	113	8220DB001238
10147	113	8220DB001239
10148	113	8220DB000247
10149	113	8220DB001240
10150	113	8220DB001241
10151	113	8220DB001242
10152	113	8220DB001277
10153	113	8220DB001219
10154	113	8220DB001220
10155	113	8220DB001221
10156	113	8220DB000664
10157	113	8220DB000665
10158	113	8220DB000666
10159	113	8220DB000667
10160	113	8220DB000668
10161	113	8220DB000614
10162	113	8220DB000615
10163	113	8220DB000616
10164	113	8220DB000617
10165	113	8220DB000618
10166	113	8220DB000619
10167	113	8220DB000675
10168	113	8220DB007569
10169	114	8240DB000324
10170	114	8240DB001634
10171	114	8240DB001635
10172	114	8240DB001636
10173	114	8240DB001637
10174	114	8240DB001638
10175	114	8240DB000992
10176	114	8220DB007044
10177	114	8220DB000993
10178	114	8220DB005060
10179	114	8220DB005061
10180	114	8220DB001231
10181	114	8220DB001232
10182	114	8220DB001233
10183	114	8220DB001234
10184	114	8220DB007358
10185	114	8220DB001235
10186	114	8220DB001251
10187	114	8220DB007130
10188	114	8220DB001237
10189	114	8220DB001238
10190	114	8220DB001239
10191	114	8220DB000247
10192	114	8220DB001240
10193	114	8220DB001241
10194	114	8220DB001242
10195	114	8220DB001277
10196	114	8220DB001219
10197	114	8220DB001220
10198	114	8220DB001221
10199	114	8220DB000664
10200	114	8220DB000665
10201	114	8220DB000666
10202	114	8220DB000667
10203	114	8220DB000668
10204	114	8220DB000614
10205	114	8220DB000615
10206	114	8220DB000616
10207	114	8220DB000617
10208	114	8220DB000618
10209	114	8220DB000619
10210	114	8220DB000675
10211	114	8220DB007569
10212	115	8220DB004595
10213	115	8220DB004596
10214	115	8220DB004563
10215	115	8220DB001218
10216	115	8220DB001258
10217	115	8220DB001259
10218	115	8220DB001260
10219	115	8220DB006130
10220	115	8220DB001262
10221	115	8220DB004692
10222	115	8220DB001245
10223	115	8220DB004693
10224	115	8220DB001254
10225	115	8220DB001255
10226	115	8220DB001256
10227	115	8220DB004694
10228	115	8220DB001249
10229	115	8220DB001247
10230	115	8220DB001248
10231	115	8220DB001273
10232	115	8220DB001274
10233	115	8220DB001275
10234	115	8220DB001276
10235	115	8220DB001277
10236	115	8220DB001219
10237	115	8220DB001220
10238	115	8220DB001221
10239	115	8220DB000664
10240	115	8220DB000614
10241	115	8220DB004415
10242	115	8220DB000302
10243	115	8220DB004495
10244	115	8220DB002809
10245	115	8220DB000408
10246	115	8220DB000409
10247	115	8220DB000411
10248	115	8220DB000414
10249	115	8220DB000416
10250	115	8220DB000417
10251	115	8220DB000418
10252	115	8220DB000419
10253	115	8220DB000420
10254	115	8220DB002088
10255	115	8220DB002089
10256	115	8220DB000763
10257	116	8250DB004952
10258	116	8250DB000768
10259	116	8220DB002085
10260	116	8220DB002086
10261	116	8220DB000479
10262	116	8220DB000480
10263	116	8220DB000481
10264	116	8220DB000482
10265	116	8220DB000483
10266	116	8220DB000485
10267	116	8220DB000488
10268	116	8220DB000491
10269	116	8220DB000493
10270	116	8220DB000494
10271	116	8220DB000495
10272	116	8220DB000496
10273	116	8220DB000523
10274	116	8220DB004382
10275	116	8220DB001196
10276	116	8220DB001197
10277	116	8220DB001198
10278	116	8220DB001199
10279	116	8220DB001200
10280	116	8220DB004385
10281	116	8220DB001201
10282	116	8220DB004695
10283	116	8220DB001243
10284	116	8220DB004696
10285	116	8220DB004697
10286	116	8220DB001250
10287	116	8220DB004698
10288	116	8220DB004383
10289	116	8220DB004699
10290	116	8220DB004388
10291	116	8220DB004700
10292	116	8220DB001266
10293	116	8220DB001267
10294	116	8220DB001268
10295	116	8220DB001269
10296	116	8220DB001265
10297	116	8220DB006115
10298	116	8220DB004593
10299	117	8240DB003640
10300	117	8240DB003574
10301	117	8240DB003641
10302	117	8240DB003642
10303	117	8240DB003643
10304	117	8240DB003583
10305	117	8240DB003584
10306	117	8240DB003585
10307	117	8240DB003587
10308	117	8240DB003588
10309	117	8240DB003589
10310	117	8240DB003593
10311	117	8240DB003594
10312	117	8240DB003595
10313	117	8240DB003596
10314	117	8240DB003597
10315	117	8240DB003598
10316	117	8240DB004465
10317	117	8240DB000944
10318	117	8240DB000945
10319	117	8240DB000947
10320	117	8240DB000948
10321	117	8240DB007725
10322	117	8240DB000928
10323	117	8240DB000588
10324	117	8240DB000590
10325	117	8220DB001729
10326	117	8220DB001731
10327	117	8220DB001738
10328	117	8220DB000614
10329	117	8220DB000675
10330	117	8220DB000621
10331	117	8220DB004495
10332	117	8220DB002809
10333	117	8220DB002810
10334	117	8220DB000842
10335	117	8220DB000846
10336	117	8220DB000848
10337	117	8220DB000759
10338	117	8220DB000760
10339	117	8220DB000761
10340	117	8220DB000762
10341	117	8220DB000763
10342	118	8250DB004952
10343	118	8250DB000768
10344	118	8220DB000770
10345	118	8220DB000773
10346	118	8220DB000774
10347	118	8220DB000906
10348	118	8220DB000909
10349	118	8220DB000790
10350	118	8220DB007585
10351	118	8220DB007587
10352	118	8220DB000496
10353	118	8220DB000522
10354	118	8220DB001741
10355	118	8220DB001747
10356	118	8220DB001749
10357	118	8240DB000544
10358	118	8240DB000546
10359	118	8240DB000914
10360	118	8240DB000938
10361	118	8240DB000940
10362	118	8240DB000941
10363	118	8240DB000942
10364	118	8240DB000943
10365	118	8240DB003599
10366	118	8240DB003600
10367	118	8240DB003601
10368	118	8240DB003602
10369	118	8240DB003604
10370	118	8240DB003616
10371	118	8240DB003618
10372	118	8240DB003619
10373	118	8240DB003620
10374	118	8240DB003621
10375	118	8240DB003622
10376	118	8240DB003623
10377	118	8240DB004387
10378	118	8240DB003634
10379	118	8240DB003635
10380	118	8240DB003636
10381	118	8240DB000905
10382	118	8240DB004331
10383	118	8240DB004339
10384	118	8240DB007616
10385	118	8240DB005081
10386	119	8240DB006048
10387	119	8240DB007173
10388	119	8240DB003811
10389	119	8240DB003812
10390	119	8240DB003664
10391	119	8240DB003813
10392	119	8240DB003814
10393	119	8240DB003815
10394	119	8240DB003816
10395	119	8240DB003566
10396	119	8240DB003567
10397	119	8240DB007292
10398	119	8240DB003818
10399	119	8240DB003819
10400	119	8240DB003820
10401	119	8240DB003822
10402	119	8240DB003823
10403	119	8240DB003824
10404	119	8240DB003565
10405	119	8240DB003825
10406	119	8240DB003826
10407	119	8240DB003827
10408	119	8240DB003828
10409	119	8240DB003829
10410	119	8240DB003831
10411	119	8240DB003832
10412	119	8240DB003833
10413	119	8240DB003834
10414	119	8240DB003835
10415	119	8240DB003836
10416	119	8240DB003837
10417	119	8240DB003838
10418	119	8240DB003840
10419	119	8240DB003842
10420	119	8240DB003843
10421	119	8240DB003844
10422	119	8240DB003845
10423	119	8240DB003846
10424	119	8240DB003848
10425	119	8240DB003849
10426	119	8240DB003850
10427	119	8240DB003851
10428	119	8240DB003852
10429	119	8240DB003853
10430	119	8240DB003854
10431	119	8240DB003855
10432	119	8240DB003856
10433	119	8240DB003857
10434	119	8240DB003858
10435	119	8240DB003859
10436	119	8240DB003860
10437	119	8240DB003861
10438	119	8240DB003862
10439	119	8240DB003863
10440	119	8240DB003748
10441	119	8240DB006050
10442	119	8240DB003749
10443	119	8240DB003750
10444	119	8240DB003752
10445	119	8240DB003751
10446	119	8240DB003689
10447	119	8240DB003691
10448	119	8240DB003692
10449	119	8240DB003694
10450	119	8240DB003695
10451	119	8240DB003696
10452	119	8240DB003697
10453	119	8240DB003698
10454	119	8240DB003699
10455	119	8240DB003885
10456	119	8240DB001631
10457	119	8240DB001632
10458	119	8240DB005053
10459	119	8240DB001633
10460	119	8240DB001634
10461	119	8240DB001635
10462	119	8240DB001636
10463	119	8240DB001637
10464	119	8240DB001638
10465	119	8240DB001639
10466	119	8240DB001640
10467	119	8240DB000231
10468	119	8220DB001641
10469	119	8220DB001642
10470	119	8220DB000213
10471	119	8220DB000214
10472	119	8220DB004432
10473	119	8220DB000119
10474	119	8220DB000044
10475	119	8220DB007603
10476	119	8220DB000045
10477	119	8220DB000046
10478	119	8220DB000047
10479	119	8220DB000048
10480	119	8220DB000049
10481	119	8220DB000051
10482	119	8220DB000052
10483	119	8220DB000277
10484	120	8220DB000292
10485	120	8220DB001171
10486	120	8220DB001172
10487	120	8220DB001173
10488	120	8220DB001174
10489	120	8220DB001175
10490	120	8220DB000015
10491	120	8220DB000017
10492	120	8220DB000018
10493	120	8220DB000019
10494	120	8220DB000021
10495	120	8220DB007602
10496	120	8220DB000085
10497	120	8220DB000203
10498	120	8220DB000204
10499	120	8220DB000205
10500	120	8220DB001620
10501	120	8220DB000220
10502	120	8240DB001622
10503	120	8240DB001623
10504	120	8240DB001624
10505	120	8240DB001625
10506	120	8240DB001626
10507	120	8240DB001627
10508	120	8240DB001628
10509	120	8240DB001629
10510	120	8240DB001630
10511	120	8240DB003670
10512	120	8240DB003671
10513	120	8240DB003672
10514	120	8240DB003674
10515	120	8240DB003675
10516	120	8240DB003676
10517	120	8240DB003677
10518	120	8240DB003678
10519	120	8240DB003679
10520	120	8240DB003711
10521	120	8240DB003712
10522	120	8240DB003713
10523	120	8240DB003714
10524	120	8240DB003715
10525	120	8240DB005175
10526	120	8240DB003755
10527	120	8240DB003756
10528	120	8240DB003757
10529	120	8240DB003758
10530	120	8240DB003759
10531	120	8240DB003760
10532	120	8240DB003761
10533	120	8240DB003762
10534	120	8240DB003763
10535	120	8240DB003764
10536	120	8240DB003765
10537	120	8240DB003766
10538	120	8240DB003767
10539	120	8240DB003768
10540	120	8240DB003769
10541	120	8240DB003771
10542	120	8240DB003772
10543	120	8240DB003773
10544	120	8240DB003774
10545	120	8240DB007172
10546	120	8240DB003775
10547	120	8240DB003777
10548	120	8240DB003778
10549	120	8240DB007690
10550	120	8240DB003781
10551	120	8240DB003782
10552	120	8240DB003783
10553	120	8240DB003784
10554	120	8240DB003785
10555	120	8240DB003786
10556	120	8240DB003787
10557	120	8240DB003788
10558	120	8240DB003789
10559	120	8240DB003790
10560	120	8240DB003791
10561	120	8240DB003792
10562	120	8240DB003793
10563	120	8240DB003794
10564	120	8240DB003795
10565	120	8240DB003797
10566	120	8240DB003798
10567	120	8240DB003799
10568	120	8240DB006076
10569	120	8240DB006077
10570	120	8240DB003569
10571	120	8240DB003571
10572	120	8240DB003801
10573	120	8240DB003802
10574	120	8240DB003805
10575	120	8240DB007175
10576	120	8240DB003806
10577	120	8240DB003807
10578	120	8240DB003808
10579	120	8240DB003809
10580	121	8220DB000407
10581	121	8220DB002498
10582	121	8220DB002499
10583	121	8220DB002500
10584	121	8220DB002501
10585	121	8220DB007623
10586	121	8240DB007041
10587	121	8240DB003719
10588	121	8240DB003718
10589	121	8240DB007724
10590	121	8240DB003720
10591	121	8240DB007691
10592	121	8240DB003721
10593	121	8240DB003722
10594	121	8240DB005069
10595	121	8240DB003723
10596	121	8240DB003724
10597	121	8240DB003725
10598	121	8240DB003726
10599	121	8240DB007039
10600	121	8240DB007204
10601	121	8240DB003728
10602	121	8240DB003729
10603	121	8240DB003730
10604	122	8240DB003732
10605	122	8240DB003733
10606	122	8240DB003734
10607	122	8240DB003735
10608	122	8240DB007039
10609	122	8240DB007204
10610	122	8240DB003736
10611	122	8240DB003738
10612	122	8240DB007170
10613	122	8240DB003740
10614	122	8240DB003741
10615	122	8240DB005165
10616	122	8240DB003743
10617	122	8240DB003780
10618	122	8240DB003744
10619	122	8240DB007723
10620	122	8240DB003745
10621	122	8240DB003746
10622	122	8240DB007040
10623	122	8220DB006252
10624	122	8220DB000302
10625	122	8220DB000333
10626	122	8220DB000747
10627	123	8220DB000292
10628	123	8220DB001171
10629	123	8220DB001172
10630	123	8220DB001173
10631	123	8220DB001174
10632	123	8220DB001175
10633	123	8220DB000015
10634	123	8220DB000017
10635	123	8220DB000018
10636	123	8220DB000019
10637	123	8220DB000021
10638	123	8220DB007602
10639	123	8220DB000085
10640	123	8220DB000203
10641	123	8220DB000204
10642	123	8220DB000205
10643	123	8220DB001620
10644	123	8220DB000220
10645	123	8240DB001622
10646	123	8240DB001623
10647	123	8240DB001624
10648	123	8240DB001625
10649	123	8240DB001626
10650	123	8240DB001627
10651	123	8240DB001628
10652	123	8240DB001629
10653	123	8240DB001630
10654	123	8240DB003670
10655	123	8240DB003671
10656	123	8240DB003672
10657	123	8240DB003674
10658	123	8240DB003675
10659	123	8240DB003676
10660	123	8240DB003677
10661	123	8240DB003678
10662	123	8240DB003679
10663	123	8240DB003711
10664	123	8240DB003712
10665	123	8240DB003713
10666	123	8240DB003714
10667	123	8240DB003719
10668	123	8240DB003718
10669	123	8240DB007724
10670	123	8240DB003720
10671	123	8240DB007691
10672	123	8240DB003721
10673	123	8240DB003722
10674	123	8240DB005069
10675	123	8240DB003723
10676	123	8240DB003724
10677	123	8240DB003725
10678	123	8240DB003738
10679	123	8240DB007170
10680	123	8240DB003740
10681	123	8240DB003741
10682	123	8240DB005165
10683	123	8240DB007169
10684	123	8240DB003743
10685	123	8240DB003780
10686	123	8240DB003744
10687	123	8240DB007721
10688	123	8240DB003755
10689	123	8240DB003756
10690	123	8240DB003757
10691	123	8240DB003758
10692	123	8240DB003759
10693	123	8240DB003760
10694	123	8240DB003761
10695	123	8240DB003762
10696	123	8240DB003763
10697	123	8240DB003764
10698	123	8240DB003765
10699	123	8240DB003766
10700	123	8240DB003767
10701	123	8240DB003768
10702	123	8240DB003769
10703	123	8240DB003771
10704	123	8240DB003772
10705	123	8240DB003773
10706	123	8240DB005176
10707	123	8240DB003774
10708	123	8240DB007172
10709	123	8240DB003775
10710	123	8240DB003777
10711	123	8240DB003778
10712	123	8240DB007690
10713	123	8240DB003781
10714	123	8240DB003782
10715	123	8240DB003783
10716	123	8240DB003784
10717	123	8240DB003785
10718	123	8240DB003786
10719	123	8240DB003787
10720	123	8240DB003788
10721	123	8240DB003789
10722	123	8240DB003790
10723	123	8240DB003791
10724	123	8240DB003792
10725	123	8240DB003793
10726	123	8240DB003794
10727	123	8240DB003795
10728	123	8240DB003797
10729	123	8240DB003798
10730	123	8240DB006076
10731	123	8240DB006077
10732	123	8240DB003569
10733	123	8240DB003571
10734	123	8240DB003801
10735	124	8220DB000407
10736	124	8220DB002498
10737	124	8220DB002499
10738	124	8220DB002500
10739	124	8220DB002501
10740	124	8220DB007623
10741	124	8240DB003715
10742	124	8240DB005175
10743	124	8240DB003755
10744	124	8240DB003756
10745	124	8240DB003757
10746	124	8240DB003758
10747	124	8240DB003759
10748	124	8240DB003760
10749	124	8240DB003761
10750	124	8240DB003762
10751	124	8240DB003763
10752	124	8240DB003764
10753	124	8240DB003765
10754	124	8240DB003766
10755	124	8240DB003767
10756	124	8240DB003768
10757	124	8240DB003769
10758	124	8240DB003771
10759	124	8240DB003772
10760	124	8240DB003773
10761	124	8240DB005176
10762	124	8240DB003774
10763	124	8240DB007172
10764	124	8240DB003775
10765	124	8240DB003777
10766	124	8240DB003778
10767	124	8240DB007690
10768	124	8240DB003781
10769	124	8240DB003782
10770	124	8240DB003783
10771	124	8240DB003784
10772	124	8240DB003785
10773	124	8240DB003786
10774	124	8240DB003787
10775	124	8240DB003788
10776	124	8240DB003789
10777	124	8240DB003790
10778	124	8240DB003791
10779	124	8240DB003792
10780	124	8240DB003793
10781	124	8240DB003794
10782	124	8240DB003795
10783	124	8240DB003797
10784	124	8240DB003798
10785	124	8240DB003799
10786	124	8240DB006076
10787	124	8240DB006077
10788	124	8240DB003569
10789	124	8240DB003571
10790	124	8240DB003801
10791	124	8240DB003802
10792	124	8240DB003805
10793	124	8240DB007175
10794	124	8240DB003806
10795	124	8240DB003807
10796	124	8240DB003808
10797	124	8240DB003809
10798	125	8240DB003815
10799	125	8240DB003816
10800	125	8240DB003566
10801	125	8240DB003567
10802	125	8240DB007292
10803	125	8240DB003818
10804	125	8240DB003819
10805	125	8240DB003820
10806	125	8240DB003822
10807	125	8240DB003823
10808	125	8240DB003824
10809	125	8240DB003565
10810	125	8240DB003825
10811	125	8240DB003826
10812	125	8240DB003827
10813	125	8240DB003828
10814	125	8240DB003829
10815	125	8240DB003831
10816	125	8240DB003832
10817	125	8240DB003833
10818	125	8240DB003834
10819	125	8240DB003835
10820	125	8240DB003836
10821	125	8240DB003837
10822	125	8240DB003838
10823	125	8240DB003840
10824	125	8240DB003842
10825	125	8240DB003843
10826	125	8240DB003844
10827	125	8240DB003845
10828	125	8240DB003846
10829	125	8240DB003848
10830	125	8240DB003849
10831	125	8240DB003850
10832	125	8240DB003851
10833	125	8240DB003852
10834	125	8240DB003853
10835	125	8240DB003854
10836	125	8240DB003855
10837	125	8240DB003856
10838	125	8240DB003857
10839	125	8240DB003858
10840	125	8240DB003859
10841	125	8240DB003860
10842	125	8240DB003861
10843	125	8240DB003862
10844	125	8240DB003863
10845	125	8240DB003748
10846	125	8240DB006050
10847	125	8220DB007398
10848	125	8220DB006252
10849	125	8220DB000302
10850	125	8220DB004495
10851	125	8220DB002809
10852	126	8240DB004747
10853	126	8240DB001882
10854	126	8240DB007379
10855	126	8240DB004903
10856	126	8240DB007219
10857	126	8240DB007218
10858	126	8240DB007031
10859	126	8240DB004897
10860	126	8240DB004898
10861	126	8240DB004574
10862	126	8240DB004575
10863	126	8240DB001680
10864	126	8240DB001681
10865	126	8240DB001682
10866	126	8240DB001683
10867	126	8240DB001684
10868	126	8240DB001685
10869	126	8240DB001686
10870	126	8240DB001687
10871	126	8240DB001688
10872	126	8240DB001689
10873	126	8240DB001690
10874	126	8240DB001691
10875	126	8240DB001692
10876	126	8240DB001693
10877	126	8220DB001694
10878	126	8220DB001695
10879	126	8220DB001696
10880	126	8220DB001697
10881	126	8220DB001698
10882	126	8220DB001699
10883	126	8220DB001700
10884	126	8220DB001701
10885	126	8220DB001702
10886	126	8220DB001703
10887	126	8220DB001704
10888	126	8220DB001705
10889	126	8220DB001706
10890	126	8220DB001707
10891	126	8220DB001708
10892	126	8220DB001709
10893	126	8220DB001528
10894	126	8220DB001710
10895	126	8220DB001711
10896	126	8220DB001712
10897	126	8220DB001713
10898	126	8220DB001714
10899	126	8220DB001715
10900	126	8220DB007453
10901	126	8220DB001478
10902	126	8220DB001479
10903	126	8220DB000315
10904	126	8220DB000404
10905	126	8220DB000747
10906	126	8220DB000843
10907	126	8220DB000845
10908	126	8220DB000846
10909	127	8220DB007340
10910	127	8220DB000783
10911	127	8220DB000784
10912	127	8220DB000785
10913	127	8220DB000786
10914	127	8220DB000793
10915	127	8220DB007586
10916	127	8220DB007587
10917	127	8220DB007588
10918	127	8220DB000329
10919	127	8220DB001443
10920	127	8220DB001444
10921	127	8220DB001445
10922	127	8220DB001647
10923	127	8220DB001648
10924	127	8220DB001649
10925	127	8220DB001911
10926	127	8220DB000802
10927	127	8220DB001654
10928	127	8220DB001655
10929	127	8220DB001656
10930	127	8220DB001657
10931	127	8220DB004458
10932	127	8220DB001658
10933	127	8220DB001659
10934	127	8220DB001660
10935	127	8220DB001661
10936	127	8220DB001662
10937	127	8220DB001664
10938	127	8220DB001665
10939	127	8220DB001666
10940	127	8220DB001667
10941	127	8220DB001668
10942	127	8240DB001669
10943	127	8240DB001670
10944	127	8240DB001671
10945	127	8240DB001672
10946	127	8240DB001673
10947	127	8240DB001674
10948	127	8240DB001675
10949	127	8240DB007380
10950	127	8240DB001676
10951	127	8240DB001517
10952	127	8240DB001678
10953	127	8240DB001679
10954	127	8240DB004520
10955	127	8240DB004825
10956	127	8240DB007233
10957	127	8240DB004573
10958	127	8240DB004893
10959	127	8240DB004894
10960	127	8240DB004895
10961	127	8240DB007217
10962	127	8240DB007227
10963	127	8240DB006172
10964	127	8240DB004493
10965	127	8240DB004362
10966	128	8240DB004745
10967	128	8240DB004989
10968	128	8240DB004990
10969	128	8240DB004991
10970	128	8240DB004992
10971	128	8240DB001719
10972	128	8240DB001828
10973	128	8240DB001829
10974	128	8240DB004997
10975	128	8240DB004998
10976	128	8240DB004999
10977	128	8240DB001833
10978	128	8240DB001834
10979	128	8240DB001820
10980	128	8240DB002468
10981	128	8240DB007319
10982	128	8240DB007342
10983	128	8240DB007125
10984	128	8240DB007344
10985	128	8240DB007334
10986	128	8240DB001838
10987	128	8240DB002338
10988	128	8240DB001840
10989	128	8240DB001841
10990	128	8240DB004314
10991	128	8240DB001687
10992	128	8240DB001688
10993	128	8240DB001689
10994	128	8240DB004899
10995	128	8240DB004900
10996	128	8240DB004746
10997	128	8240DB001845
10998	128	8240DB007166
10999	128	8220DB001847
11000	128	8220DB001696
11001	128	8220DB001697
11002	128	8220DB001698
11003	128	8220DB001699
11004	128	8220DB001700
11005	128	8220DB001701
11006	128	8220DB001702
11007	128	8220DB001703
11008	128	8220DB001905
11009	128	8220DB001804
11010	128	8220DB001803
11011	128	8220DB000077
11012	128	8220DB000078
11013	128	8220DB000079
11014	128	8220DB000080
11015	128	8220DB000082
11016	128	8220DB000817
11017	128	8220DB000818
11018	128	8220DB000819
11019	128	8220DB000265
11020	128	8220DB006059
11021	128	8220DB000404
11022	128	8220DB000747
11023	128	8220DB000748
11024	128	8220DB000749
11025	128	8220DB000750
11026	128	8220DB000751
11027	128	8220DB000752
11028	128	8220DB000753
11029	128	8220DB007370
11030	129	8240DB004745
11031	129	8240DB004989
11032	129	8240DB004990
11033	129	8240DB004991
11034	129	8240DB004992
11035	129	8240DB001719
11036	129	8240DB001828
11037	129	8240DB001829
11038	129	8240DB004997
11039	129	8240DB004998
11040	129	8240DB004999
11041	129	8240DB001833
11042	129	8240DB001834
11043	129	8240DB001835
11044	129	8240DB001836
11045	129	8240DB001837
11046	129	8240DB002338
11047	129	8240DB001840
11048	129	8240DB001841
11049	129	8240DB004314
11050	129	8240DB001687
11051	129	8240DB001688
11052	129	8240DB001689
11053	129	8240DB004899
11054	129	8240DB004900
11055	129	8240DB004746
11056	129	8240DB001845
11057	129	8240DB007166
11058	129	8220DB001847
11059	129	8220DB001696
11060	129	8220DB001697
11061	129	8220DB001698
11062	129	8220DB001699
11063	129	8220DB001700
11064	129	8220DB001701
11065	129	8220DB001702
11066	129	8220DB001703
11067	129	8220DB001905
11068	129	8220DB001804
11069	129	8220DB001803
11070	129	8220DB000077
11071	129	8220DB000078
11072	129	8220DB000079
11073	129	8220DB000080
11074	129	8220DB000082
11075	129	8220DB000817
11076	129	8220DB000818
11077	129	8220DB000819
11078	129	8220DB000265
11079	129	8220DB006059
11080	129	8220DB000404
11081	129	8220DB000747
11082	129	8220DB000748
11083	129	8220DB000749
11084	129	8220DB000750
11085	129	8220DB000751
11086	129	8220DB000752
11087	129	8220DB000753
11088	129	8220DB007370
11089	130	8240DB004745
11090	130	8240DB004989
11091	130	8240DB004990
11092	130	8240DB004991
11093	130	8240DB004992
11094	130	8240DB001719
11095	130	8240DB001828
11096	130	8240DB001829
11097	130	8240DB004997
11098	130	8240DB004998
11099	130	8240DB004999
11100	130	8240DB001833
11101	130	8240DB001834
11102	130	8240DB001820
11103	130	8240DB002468
11104	130	8240DB007319
11105	130	8240DB007342
11106	130	8240DB007125
11107	130	8240DB007344
11108	130	8240DB007334
11109	130	8240DB001838
11110	130	8240DB002338
11111	130	8240DB001840
11112	130	8240DB001841
11113	130	8240DB001842
11114	130	8240DB007374
11115	130	8240DB001845
11116	130	8240DB007166
11117	130	8220DB001847
11118	130	8220DB001696
11119	130	8220DB001697
11120	130	8220DB001698
11121	130	8220DB001699
11122	130	8220DB001700
11123	130	8220DB001701
11124	130	8220DB001702
11125	130	8220DB001703
11126	130	8220DB001905
11127	130	8220DB001804
11128	130	8220DB001803
11129	130	8220DB000077
11130	130	8220DB000078
11131	130	8220DB000079
11132	130	8220DB000080
11133	130	8220DB000082
11134	130	8220DB000817
11135	130	8220DB000818
11136	130	8220DB000819
11137	130	8220DB000265
11138	130	8220DB006059
11139	130	8220DB000404
11140	130	8220DB000747
11141	130	8220DB000748
11142	130	8220DB000749
11143	130	8220DB000750
11144	130	8220DB000751
11145	130	8220DB000752
11146	130	8220DB000753
11147	130	8220DB007370
11148	131	8240DB004745
11149	131	8240DB004989
11150	131	8240DB004990
11151	131	8240DB004991
11152	131	8240DB004992
11153	131	8240DB001719
11154	131	8240DB001828
11155	131	8240DB001829
11156	131	8240DB004997
11157	131	8240DB004998
11158	131	8240DB004999
11159	131	8240DB001833
11160	131	8240DB001834
11161	131	8240DB001835
11162	131	8240DB001836
11163	131	8240DB001837
11164	131	8240DB002338
11165	131	8240DB001840
11166	131	8240DB001841
11167	131	8240DB001842
11168	131	8240DB007374
11169	131	8240DB001845
11170	131	8240DB007166
11171	131	8220DB001847
11172	131	8220DB001696
11173	131	8220DB001697
11174	131	8220DB001698
11175	131	8220DB001699
11176	131	8220DB001700
11177	131	8220DB001701
11178	131	8220DB001702
11179	131	8220DB001703
11180	131	8220DB001905
11181	131	8220DB001804
11182	131	8220DB001803
11183	131	8220DB000077
11184	131	8220DB000078
11185	131	8220DB000079
11186	131	8220DB000080
11187	131	8220DB000082
11188	131	8220DB000817
11189	131	8220DB000818
11190	131	8220DB000819
11191	131	8220DB000265
11192	131	8220DB006059
11193	131	8220DB000404
11194	131	8220DB000747
11195	131	8220DB000748
11196	131	8220DB000749
11197	131	8220DB000750
11198	131	8220DB000751
11199	131	8220DB000752
11200	131	8220DB000753
11201	131	8220DB007370
11202	132	8240DB004745
11203	132	8240DB004989
11204	132	8240DB004990
11205	132	8240DB004991
11206	132	8240DB004992
11207	132	8240DB001719
11208	132	8240DB001828
11209	132	8240DB001829
11210	132	8240DB004997
11211	132	8240DB004998
11212	132	8240DB004999
11213	132	8240DB001833
11214	132	8240DB001834
11215	132	8240DB001835
11216	132	8240DB001836
11217	132	8240DB001837
11218	132	8240DB002338
11219	132	8240DB001845
11220	132	8240DB007166
11221	132	8220DB001847
11222	132	8220DB001696
11223	132	8220DB001697
11224	132	8220DB001698
11225	132	8220DB001699
11226	132	8220DB001700
11227	132	8220DB001701
11228	132	8220DB001702
11229	132	8220DB001703
11230	132	8220DB001905
11231	132	8220DB001804
11232	132	8220DB001803
11233	132	8220DB000077
11234	132	8220DB000078
11235	132	8220DB000079
11236	132	8220DB000080
11237	132	8220DB000082
11238	132	8220DB000817
11239	132	8220DB000818
11240	132	8220DB000819
11241	132	8220DB000265
11242	132	8220DB006059
11243	132	8220DB000404
11244	132	8220DB000747
11245	132	8220DB000748
11246	132	8220DB000749
11247	132	8220DB000750
11248	132	8220DB000751
11249	132	8220DB000752
11250	132	8220DB000753
11251	132	8220DB007370
11252	133	8220DB007333
11253	133	8220DB000783
11254	133	8220DB000784
11255	133	8220DB000785
11256	133	8220DB000786
11257	133	8220DB000793
11258	133	8220DB000274
11259	133	8220DB000002
11260	133	8220DB000192
11261	133	8220DB000795
11262	133	8220DB000796
11263	133	8220DB000057
11264	133	8220DB000058
11265	133	8220DB000059
11266	133	8220DB000060
11267	133	8220DB001802
11268	133	8220DB001795
11269	133	8220DB001806
11270	133	8220DB001660
11271	133	8220DB001661
11272	133	8220DB001662
11273	133	8220DB001664
11274	133	8220DB001665
11275	133	8220DB001666
11276	133	8220DB001807
11277	133	8240DB007167
11278	133	8240DB001808
11279	133	8240DB001816
11280	133	8240DB006171
11281	133	8240DB004974
11282	133	8240DB004976
11283	133	8240DB007126
11284	133	8240DB007124
11285	133	8240DB007343
11286	133	8240DB007318
11287	133	8240DB004980
11288	133	8240DB002289
11289	133	8240DB001822
11290	133	8240DB004994
11291	133	8240DB004995
11292	133	8240DB004996
11293	133	8240DB001826
11294	133	8240DB001827
11295	133	8240DB007382
11296	133	8240DB007381
11297	133	8240DB004742
11298	133	8240DB004743
11299	134	8240DB004745
11300	134	8240DB004989
11301	134	8240DB001845
11302	134	8240DB007166
11303	134	8220DB001847
11304	134	8220DB001696
11305	134	8220DB001697
11306	134	8220DB001698
11307	134	8220DB001699
11308	134	8220DB001700
11309	134	8220DB001701
11310	134	8220DB001702
11311	134	8220DB001703
11312	134	8220DB001905
11313	134	8220DB001804
11314	134	8220DB001803
11315	134	8220DB000077
11316	134	8220DB000078
11317	134	8220DB000079
11318	134	8220DB000080
11319	134	8220DB000082
11320	134	8220DB000817
11321	134	8220DB000818
11322	134	8220DB000819
11323	134	8220DB000265
11324	134	8220DB006059
11325	134	8220DB000404
11326	134	8220DB000747
11327	134	8220DB000748
11328	134	8220DB000749
11329	134	8220DB000750
11330	134	8220DB000751
11331	134	8220DB000752
11332	134	8220DB000753
11333	134	8220DB007370
11334	135	8220DB007333
11335	135	8220DB000783
11336	135	8220DB000784
11337	135	8220DB000785
11338	135	8220DB000786
11339	135	8220DB000793
11340	135	8220DB000274
11341	135	8220DB000002
11342	135	8220DB000192
11343	135	8220DB000795
11344	135	8220DB000796
11345	135	8220DB000057
11346	135	8220DB000058
11347	135	8220DB000059
11348	135	8220DB000060
11349	135	8220DB001802
11350	135	8220DB001795
11351	135	8220DB001806
11352	135	8220DB001660
11353	135	8220DB001661
11354	135	8220DB001662
11355	135	8220DB001664
11356	135	8220DB001665
11357	135	8220DB001666
11358	135	8220DB001807
11359	135	8240DB007167
11360	135	8240DB001808
11361	135	8240DB004744
11362	136	8220DB007333
11363	136	8220DB000783
11364	136	8220DB000784
11365	136	8220DB000785
11366	136	8220DB000786
11367	136	8220DB000793
11368	136	8220DB007586
11369	136	8220DB007587
11370	136	8220DB007588
11371	136	8220DB000328
11372	136	8220DB001443
11373	136	8220DB001444
11374	136	8220DB001445
11375	136	8220DB001647
11376	136	8220DB001648
11377	136	8220DB001649
11378	136	8220DB001911
11379	136	8220DB001913
11380	136	8220DB001914
11381	136	8220DB001805
11382	136	8220DB001806
11383	136	8220DB001660
11384	136	8220DB001661
11385	136	8220DB001662
11386	136	8220DB001664
11387	136	8220DB001665
11388	136	8220DB001666
11389	136	8220DB001807
11390	136	8240DB007167
11391	136	8240DB001808
11392	136	8240DB001813
11393	136	8240DB001814
11394	136	8240DB001852
11395	136	8240DB001853
11396	136	8240DB001854
11397	136	8240DB001844
11398	136	8240DB006172
11399	136	8240DB004493
11400	136	8240DB004362
11401	136	8240DB007025
11402	136	8240DB004464
11403	136	8240DB001869
11404	136	8240DB001870
11405	136	8240DB001871
11406	136	8240DB001872
11407	136	8240DB001873
11408	136	8240DB001874
11409	136	8240DB001875
11410	136	8240DB001876
11411	136	8240DB001877
11412	136	8240DB001878
11413	136	8240DB001879
11414	136	8240DB001899
11415	136	8240DB001887
11416	136	8240DB001888
11417	136	8240DB001889
11418	136	8240DB001890
11419	136	8240DB007240
11420	136	8240DB001891
11421	136	8240DB007156
11422	136	8240DB007020
11423	136	8240DB007029
11424	136	8240DB007038
11425	136	8240DB007011
11426	136	8240DB002171
11427	136	8240DB007160
11428	136	8240DB007700
11429	136	8240DB007047
11430	136	8240DB007161
11431	137	8240DB007158
11432	137	8240DB007048
11433	137	8240DB007699
11434	137	8240DB007159
11435	137	8240DB007388
11436	137	8240DB007017
11437	137	8240DB007018
11438	137	8240DB007030
11439	137	8240DB007021
11440	137	8240DB007163
11441	137	8240DB001893
11442	137	8240DB001894
11443	137	8240DB001912
11444	137	8240DB001895
11445	137	8240DB001896
11446	137	8240DB001897
11447	137	8240DB006088
11448	137	8240DB001898
11449	137	8240DB001858
11450	137	8240DB001859
11451	137	8240DB001860
11452	137	8240DB004492
11453	137	8240DB001861
11454	137	8240DB001862
11455	137	8240DB001863
11456	137	8240DB001864
11457	137	8240DB001865
11458	137	8240DB001866
11459	137	8240DB001850
11460	137	8240DB001867
11461	137	8240DB004489
11462	137	8240DB004747
11463	137	8240DB001882
11464	137	8240DB007379
11465	137	8240DB004903
11466	137	8240DB001883
11467	137	8240DB001884
11468	137	8240DB001902
11469	137	8240DB001903
11470	137	8240DB001904
11471	137	8240DB001840
11472	137	8240DB001841
11473	137	8240DB001842
11474	137	8240DB007374
11475	137	8240DB001845
11476	137	8240DB007166
11477	137	8220DB001847
11478	137	8220DB001696
11479	137	8220DB001697
11480	137	8220DB001698
11481	137	8220DB001699
11482	137	8220DB001700
11483	137	8220DB001701
11484	137	8220DB001702
11485	137	8220DB001703
11486	137	8220DB001905
11487	137	8220DB001906
11488	137	8220DB001907
11489	137	8220DB001908
11490	137	8220DB001909
11491	137	8220DB001713
11492	137	8220DB001714
11493	137	8220DB001715
11494	137	8220DB007453
11495	137	8220DB001478
11496	137	8220DB001479
11497	137	8220DB000315
11498	137	8220DB000335
11499	137	8220DB000404
11500	137	8220DB000747
11501	137	8220DB000748
11502	137	8220DB000749
11503	137	8220DB000750
11504	137	8220DB000751
11505	137	8220DB000752
11506	137	8220DB000753
11507	138	8250DB000767
11508	138	8250DB000768
11509	138	8220DB000769
11510	138	8220DB000770
11511	138	8220DB000771
11512	138	8220DB000772
11513	138	8220DB000773
11514	138	8220DB000774
11515	138	8220DB000775
11516	138	8220DB000776
11517	138	8220DB000777
11518	138	8220DB000779
11519	138	8220DB000780
11520	138	8220DB000781
11521	138	8220DB000782
11522	138	8220DB000783
11523	138	8220DB000784
11524	138	8220DB000785
11525	138	8220DB000786
11526	138	8220DB000793
11527	138	8220DB007586
11528	138	8220DB007587
11529	138	8220DB007588
11530	138	8220DB000328
11531	138	8220DB001443
11532	138	8220DB001444
11533	138	8220DB001445
11534	138	8220DB001647
11535	138	8220DB001648
11536	138	8220DB001649
11537	138	8220DB001911
11538	138	8220DB001913
11539	138	8220DB001914
11540	138	8220DB001805
11541	138	8220DB001806
11542	138	8220DB001660
11543	138	8220DB001661
11544	138	8220DB001662
11545	138	8220DB001664
11546	138	8220DB001665
11547	138	8220DB001666
11548	138	8220DB001807
11549	138	8240DB007167
11550	138	8240DB001808
11551	138	8240DB007389
11552	138	8240DB007025
11553	138	8240DB004464
11554	138	8240DB001869
11555	138	8240DB001870
11556	138	8240DB001871
11557	138	8240DB001872
11558	138	8240DB001873
11559	138	8240DB001874
11560	138	8240DB001875
11561	138	8240DB001876
11562	138	8240DB001877
11563	138	8240DB001878
11564	138	8240DB001879
11565	138	8240DB001899
11566	138	8240DB006107
11567	138	8240DB006108
11568	138	8240DB006109
11569	138	8240DB006110
11570	138	8240DB007020
11571	138	8240DB007029
11572	138	8240DB007038
11573	138	8240DB007011
11574	138	8240DB002171
11575	138	8240DB007160
11576	138	8240DB007700
11577	138	8240DB007047
11578	138	8240DB007161
11579	139	8240DB007158
11580	139	8240DB007048
11581	139	8240DB007699
11582	139	8240DB007159
11583	139	8240DB007388
11584	139	8240DB007017
11585	139	8240DB007018
11586	139	8240DB007030
11587	139	8240DB007021
11588	139	8240DB006111
11589	139	8240DB006112
11590	139	8240DB006113
11591	139	8240DB001898
11592	139	8240DB001858
11593	139	8240DB001859
11594	139	8240DB001860
11595	139	8240DB004492
11596	139	8240DB001861
11597	139	8240DB001862
11598	139	8240DB001863
11599	139	8240DB001864
11600	139	8240DB001865
11601	139	8240DB001866
11602	139	8240DB001850
11603	139	8240DB001867
11604	139	8240DB004489
11605	139	8240DB004747
11606	139	8240DB001845
11607	139	8240DB007166
11608	139	8220DB001847
11609	139	8220DB001696
11610	139	8220DB001697
11611	139	8220DB001698
11612	139	8220DB001699
11613	139	8220DB001700
11614	139	8220DB001701
11615	139	8220DB001702
11616	139	8220DB001703
11617	139	8220DB001905
11618	139	8220DB001906
11619	139	8220DB001907
11620	139	8220DB001908
11621	139	8220DB001909
11622	139	8220DB001713
11623	139	8220DB001714
11624	139	8220DB001715
11625	139	8220DB007453
11626	139	8220DB001478
11627	139	8220DB001479
11628	139	8220DB000315
11629	139	8220DB000335
11630	139	8220DB000404
11631	139	8220DB000747
11632	139	8220DB000748
11633	139	8220DB000749
11634	139	8220DB000750
11635	139	8220DB000751
11636	139	8220DB000752
11637	139	8220DB000753
11638	139	8220DB000754
11639	139	8220DB000755
11640	139	8220DB000756
11641	139	8220DB000757
11642	139	8220DB000758
11643	139	8220DB000759
11644	139	8220DB000760
11645	139	8220DB000761
11646	139	8220DB000762
11647	139	8220DB000763
11648	140	8220DB007333
11649	140	8220DB000783
11650	140	8220DB000785
11651	140	8220DB000786
11652	140	8220DB000793
11653	140	8220DB007586
11654	140	8220DB007587
11655	140	8220DB000328
11656	140	8220DB001443
11657	140	8220DB001647
11658	140	8220DB001649
11659	140	8220DB001911
11660	140	8220DB001805
11661	140	8220DB001662
11662	140	8220DB001666
11663	140	8240DB001808
11664	140	8240DB007475
11665	140	8240DB006107
11666	140	8240DB006109
11667	140	8240DB006110
11668	140	8240DB007029
11669	140	8240DB007038
11670	140	8240DB007011
11671	140	8240DB007160
11672	140	8240DB007700
11673	140	8240DB007047
11674	140	8240DB007161
11675	141	8240DB007158
11676	141	8240DB007048
11677	141	8240DB007699
11678	141	8240DB007159
11679	141	8240DB007017
11680	141	8240DB007018
11681	141	8240DB007030
11682	141	8240DB006111
11683	141	8240DB006112
11684	141	8240DB006113
11685	141	8240DB004323
11686	141	8240DB001845
11687	141	8220DB001696
11688	141	8220DB001700
11689	141	8220DB001906
11690	141	8220DB001909
11691	141	8220DB001713
11692	141	8220DB001715
11693	141	8220DB001478
11694	141	8220DB000315
11695	141	8220DB004495
11696	141	8220DB002809
11697	141	8220DB002810
11698	141	8220DB000749
11699	141	8220DB000751
11700	141	8220DB000752
11701	142	8250DB007330
11702	142	8250DB002051
11703	142	8250DB006086
11704	142	8250DB003161
11705	142	8250DB003162
11706	142	8250DB003163
11707	142	8250DB003164
11708	142	8250DB003084
11709	142	8250DB000469
11710	142	8250DB000470
11711	142	8250DB000471
11712	142	8250DB000472
11713	142	8250DB000473
11714	142	8250DB004705
11715	142	8250DB000475
11716	142	8220DB000476
11717	142	8220DB000477
11718	142	8220DB000478
11719	142	8220DB000479
11720	142	8220DB000480
11721	142	8220DB000481
11722	142	8220DB000482
11723	142	8220DB000483
11724	142	8220DB000485
11725	142	8220DB000487
11726	142	8220DB000488
11727	142	8220DB000489
11728	142	8220DB000490
11729	142	8220DB000491
11730	142	8220DB000492
11731	142	8220DB000493
11732	142	8220DB000494
11733	142	8220DB000495
11734	142	8220DB000400
11735	142	8220DB000281
11736	142	8220DB000006
11737	142	8220DB000194
11738	142	8220DB000195
11739	142	8220DB000196
11740	142	8220DB000197
11741	142	8220DB000198
11742	142	8220DB000199
11743	142	8220DB000200
11744	142	8220DB000201
11745	142	8220DB000148
11746	142	8220DB000149
11747	142	8220DB000150
11748	142	8220DB000027
11749	142	8220DB000028
11750	142	8220DB000029
11751	142	8220DB004680
11752	142	8220DB000090
11753	142	8220DB000091
11754	142	8220DB000092
11755	142	8220DB000093
11756	142	8220DB000094
11757	142	8220DB000126
11758	142	8220DB006182
11759	142	8220DB000322
11760	142	8240DB000323
11761	143	8240DB000324
11762	143	8240DB000327
11763	143	8220DB007113
11764	143	8220DB000127
11765	143	8220DB000112
11766	143	8220DB000113
11767	143	8220DB000114
11768	143	8220DB000115
11769	143	8220DB000037
11770	143	8220DB000038
11771	143	8220DB000039
11772	143	8220DB000040
11773	143	8220DB000146
11774	143	8220DB000147
11775	143	8220DB000184
11776	143	8220DB000185
11777	143	8220DB000186
11778	143	8220DB000187
11779	143	8220DB000188
11780	143	8220DB000189
11781	143	8220DB000190
11782	143	8220DB000191
11783	143	8220DB000819
11784	143	8220DB004725
11785	143	8220DB000273
11786	143	8220DB000405
11787	143	8220DB000408
11788	143	8220DB000409
11789	143	8220DB000410
11790	143	8220DB000411
11791	143	8220DB000412
11792	143	8220DB000413
11793	143	8220DB000414
11794	143	8220DB000415
11795	143	8220DB000416
11796	143	8220DB000417
11797	143	8220DB000418
11798	143	8220DB000419
11799	143	8220DB000420
11800	143	8220DB000421
11801	143	8220DB000422
11802	143	8220DB000423
11803	143	8220DB000424
11804	143	8250DB000425
11805	143	8250DB000426
11806	143	8250DB000427
11807	143	8250DB000428
11808	143	8250DB000429
11809	143	8250DB006334
11810	143	8250DB007660
11811	143	8250DB003114
11812	143	8250DB003115
11813	143	8250DB003116
11814	143	8250DB006085
11815	143	8250DB002026
11816	144	8230DB004795
11817	144	8230DB004688
11818	144	8230DB004689
11819	144	8230DB004410
11820	144	8230DB002678
11821	144	8230DB002679
11822	144	8230DB002680
11823	144	8230DB002676
11824	144	8230DB002118
11825	144	8230DB002119
11826	144	8230DB002120
11827	144	8230DB002121
11828	144	8230DB002123
11829	144	8230DB002685
11830	144	8230DB002686
11831	144	8230DB007510
11832	144	8230DB004799
11833	144	8230DB002205
11834	144	8230DB002687
11835	144	8220DB002688
11836	144	8220DB002689
11837	144	8220DB002696
11838	144	8220DB002697
11839	144	8220DB002713
11840	144	8220DB002714
11841	144	8220DB002715
11842	144	8220DB002716
11843	144	8220DB002718
11844	144	8220DB002719
11845	144	8220DB001989
11846	144	8220DB001990
11847	144	8220DB001992
11848	144	8220DB001993
11849	144	8220DB001994
11850	144	8220DB001995
11851	144	8220DB001996
11852	144	8220DB001997
11853	144	8220DB001998
11854	144	8220DB001999
11855	144	8220DB002001
11856	144	8220DB002002
11857	144	8220DB001358
11858	144	8220DB000319
11859	144	8220DB000279
11860	144	8220DB000007
11861	144	8220DB000011
11862	144	8220DB000014
11863	144	8220DB000015
11864	144	8220DB000834
11865	144	8220DB000835
11866	144	8220DB000836
11867	144	8220DB000837
11868	144	8220DB001506
11869	144	8220DB001507
11870	144	8220DB001508
11871	144	8220DB001509
11872	144	8220DB001510
11873	144	8220DB001511
11874	144	8220DB001592
11875	144	8220DB001593
11876	144	8220DB001594
11877	144	8220DB001596
11878	144	8220DB004363
11879	144	8220DB001598
11880	144	8220DB001597
11881	144	8220DB001599
11882	144	8220DB001573
11883	144	8220DB001574
11884	144	8220DB001575
11885	144	8220DB004583
11886	144	8220DB001518
11887	144	8220DB001519
11888	144	8220DB001520
11889	144	8220DB007661
11890	144	8220DB001521
11891	144	8220DB004546
11892	144	8220DB001559
11893	144	8220DB000987
11894	144	8220DB004937
11895	144	8220DB001547
11896	144	8220DB001548
11897	144	8220DB001280
11898	145	8240DB007132
11899	145	8220DB001558
11900	145	8220DB002957
11901	145	8220DB002958
11902	145	8220DB004938
11903	145	8220DB007845
11904	145	8220DB001549
11905	145	8220DB001523
11906	145	8220DB001524
11907	145	8220DB001525
11908	145	8220DB001526
11909	145	8220DB006080
11910	145	8220DB001585
11911	145	8220DB001586
11912	145	8220DB001587
11913	145	8220DB004539
11914	145	8220DB001606
11915	145	8220DB001607
11916	145	8220DB001608
11917	145	8220DB001609
11918	145	8220DB001610
11919	145	8220DB007471
11920	145	8220DB001533
11921	145	8220DB001534
11922	145	8220DB001535
11923	145	8220DB001536
11924	145	8220DB001537
11925	145	8220DB000186
11926	145	8220DB000838
11927	145	8220DB000839
11928	145	8220DB000840
11929	145	8220DB000841
11930	145	8220DB000049
11931	145	8220DB000051
11932	145	8220DB000052
11933	145	8220DB000261
11934	145	8220DB000270
11935	145	8220DB000335
11936	145	8220DB004521
11937	145	8220DB001935
11938	145	8220DB001937
11939	145	8220DB001938
11940	145	8220DB001939
11941	145	8220DB001940
11942	145	8220DB001941
11943	145	8220DB001942
11944	145	8220DB001943
11945	145	8220DB001944
11946	145	8220DB001945
11947	145	8220DB001946
11948	145	8220DB001947
11949	145	8220DB002642
11950	145	8220DB002643
11951	145	8220DB002644
11952	145	8220DB002709
11953	145	8220DB002710
11954	145	8220DB002711
11955	145	8220DB002712
11956	145	8220DB002655
11957	145	8220DB002656
11958	145	8220DB002668
11959	145	8220DB002672
11960	145	8230DB002673
11961	145	8230DB002206
11962	145	8230DB004798
11963	145	8230DB002674
11964	145	8230DB002675
11965	145	8230DB002124
11966	145	8230DB002125
11967	145	8230DB002126
11968	145	8230DB002127
11969	145	8230DB002128
11970	145	8230DB002129
11971	145	8230DB004797
11972	145	8230DB007473
11973	145	8230DB002681
11974	145	8230DB004691
11975	145	8230DB002682
11976	145	8230DB004796
11977	145	8230DB004690
11978	145	8230DB004411
11979	146	8240DB004316
11980	146	8240DB004317
11981	146	8240DB007013
11982	146	8240DB006162
11983	146	8240DB007022
11984	146	8240DB001554
11985	146	8240DB001555
11986	146	8240DB001556
11987	146	8240DB001557
11988	146	8240DB001181
11989	146	8240DB007350
11990	146	8220DB001558
11991	146	8220DB001549
11992	146	8220DB001523
11993	146	8220DB001524
11994	146	8220DB001525
11995	146	8220DB001526
11996	146	8220DB006080
11997	146	8220DB000983
11998	146	8220DB000984
11999	146	8220DB000985
12000	146	8220DB001529
12001	146	8220DB004542
12002	146	8220DB001531
12003	146	8220DB001532
12004	146	8220DB001533
12005	146	8220DB001534
12006	146	8220DB001535
12007	146	8220DB001536
12008	146	8220DB001537
12009	146	8220DB000186
12010	146	8220DB000838
12011	146	8220DB000839
12012	146	8220DB000840
12013	146	8220DB000841
12014	146	8220DB000049
12015	146	8220DB000051
12016	146	8220DB000052
12017	146	8220DB004725
12018	147	8220DB006004
12019	147	8220DB000007
12020	147	8220DB000011
12021	147	8220DB000014
12022	147	8220DB000015
12023	147	8220DB000834
12024	147	8220DB000835
12025	147	8220DB000836
12026	147	8220DB000837
12027	147	8220DB001506
12028	147	8220DB001507
12029	147	8220DB001508
12030	147	8220DB001509
12031	147	8220DB001510
12032	147	8220DB001511
12033	147	8220DB001512
12034	147	8220DB001538
12035	147	8220DB004548
12036	147	8220DB000980
12037	147	8220DB000981
12038	147	8220DB001518
12039	147	8220DB001519
12040	147	8220DB001520
12041	147	8220DB007661
12042	147	8220DB001521
12043	147	8220DB004546
12044	147	8220DB001559
12045	147	8220DB001560
12046	147	8220DB001280
12047	147	8240DB006348
12048	147	8240DB001182
12049	147	8240DB001550
12050	147	8240DB001551
12051	147	8240DB001552
12052	147	8240DB001553
12053	147	8240DB007023
12054	147	8240DB007014
12055	147	8240DB004315
12056	148	8220DB006004
12057	148	8220DB000007
12058	148	8220DB000011
12059	148	8220DB000014
12060	148	8220DB000015
12061	148	8220DB000834
12062	148	8220DB000835
12063	148	8220DB000836
12064	148	8220DB000837
12065	148	8220DB001506
12066	148	8220DB001507
12067	148	8220DB001508
12068	148	8220DB001509
12069	148	8220DB001510
12070	148	8220DB001511
12071	148	8220DB001512
12072	148	8220DB001538
12073	148	8220DB004548
12074	148	8220DB001514
12075	148	8220DB000980
12076	148	8220DB000981
12077	148	8220DB001576
12078	148	8220DB001577
12079	148	8220DB001578
12080	148	8220DB004364
12081	148	8240DB001579
12082	148	8240DB001580
12083	148	8240DB007237
12084	148	8240DB007241
12085	148	8240DB007247
12086	148	8240DB007243
12087	148	8240DB007126
12088	148	8240DB007124
12089	148	8240DB007343
12090	148	8240DB007318
12091	148	8240DB004978
12092	148	8240DB004979
12093	148	8240DB004986
12094	148	8240DB007107
12095	148	8240DB007102
12096	148	8240DB007103
12097	148	8240DB007104
12098	148	8240DB007105
12099	148	8240DB007106
12100	148	8240DB006005
12101	148	8240DB001546
12102	149	8220DB006004
12103	149	8220DB000007
12104	149	8220DB000011
12105	149	8220DB000014
12106	149	8220DB000015
12107	149	8220DB000834
12108	149	8220DB000835
12109	149	8220DB000836
12110	149	8220DB000837
12111	149	8220DB001506
12112	149	8220DB001507
12113	149	8220DB001508
12114	149	8220DB001509
12115	149	8220DB001510
12116	149	8220DB001511
12117	149	8220DB001512
12118	149	8220DB001538
12119	149	8220DB004548
12120	149	8220DB001514
12121	149	8220DB000980
12122	149	8220DB000981
12123	149	8220DB001576
12124	149	8220DB001577
12125	149	8220DB001578
12126	149	8220DB004364
12127	149	8240DB001579
12128	149	8240DB001580
12129	149	8240DB007237
12130	149	8240DB007241
12131	149	8240DB007247
12132	149	8240DB007243
12133	149	8240DB007126
12134	149	8240DB007124
12135	149	8240DB007343
12136	149	8240DB004978
12137	149	8240DB004979
12138	149	8240DB004986
12139	149	8240DB007107
12140	149	8240DB007102
12141	149	8240DB007103
12142	149	8240DB007104
12143	149	8240DB007105
12144	149	8240DB007106
12145	149	8240DB006005
12146	149	8240DB001546
12147	150	8220DB007672
12148	150	8220DB000826
12149	150	8220DB000827
12150	150	8220DB000071
12151	150	8220DB000072
12152	150	8220DB005144
12153	150	8220DB007702
12154	150	8220DB007009
12155	150	8220DB001604
12156	150	8220DB001573
12157	150	8220DB001574
12158	150	8220DB001575
12159	150	8220DB004583
12160	150	8220DB001576
12161	150	8220DB001577
12162	150	8220DB001578
12163	150	8220DB004364
12164	150	8240DB001579
12165	150	8240DB007673
12166	150	8240DB007675
12167	150	8240DB007676
12168	150	8240DB007677
12169	150	8240DB007559
12170	150	8240DB007866
12171	150	8240DB007107
12172	150	8240DB007102
12173	150	8240DB007103
12174	150	8240DB007104
12175	150	8240DB007105
12176	150	8240DB007106
12177	150	8240DB006005
12178	151	8240DB007073
12179	151	8240DB007097
12180	151	8240DB007098
12181	151	8240DB007099
12182	151	8240DB007100
12183	151	8240DB007101
12184	151	8240DB007505
12185	151	8240DB007678
12186	151	8240DB007560
12187	151	8240DB007679
12188	151	8240DB007680
12189	151	8240DB007681
12190	151	8240DB007683
12191	151	8240DB001582
12192	151	8220DB004793
12193	151	8220DB006068
12194	151	8220DB001584
12195	151	8220DB001585
12196	151	8220DB001586
12197	151	8220DB001600
12198	151	8220DB007701
12199	151	8220DB007010
12200	151	8220DB007703
12201	151	8220DB005147
12202	151	8220DB000068
12203	151	8220DB000030
12204	151	8220DB000069
12205	152	8240DB004843
12206	152	8240DB004905
12207	152	8240DB004906
12208	152	8240DB004907
12209	152	8240DB004908
12210	152	8240DB004909
12211	152	8240DB003884
12212	152	8240DB003686
12213	152	8240DB005077
12214	152	8240DB005078
12215	152	8240DB003689
12216	152	8240DB003690
12217	152	8240DB006117
12218	152	8240DB005079
12219	152	8240DB003694
12220	152	8240DB003695
12221	152	8240DB003696
12222	152	8240DB003697
12223	152	8240DB003698
12224	152	8240DB003699
12225	152	8240DB003885
12226	152	8240DB003663
12227	152	8240DB007347
12228	152	8240DB003669
12229	152	8240DB007349
12230	152	8240DB001631
12231	152	8240DB001632
12232	152	8240DB005053
12233	152	8240DB001633
12234	152	8240DB001634
12235	152	8240DB001635
12236	152	8240DB001636
12237	152	8240DB001637
12238	152	8240DB001638
12239	152	8240DB001639
12240	152	8240DB001640
12241	152	8240DB000231
12242	152	8220DB001641
12243	152	8220DB001642
12244	152	8220DB000213
12245	152	8220DB000214
12246	152	8220DB004432
12247	152	8220DB000119
12248	152	8220DB000044
12249	152	8220DB007603
12250	152	8220DB000045
12251	152	8220DB000046
12252	152	8220DB000047
12253	152	8220DB000048
12254	152	8220DB000049
12255	152	8220DB000051
12256	152	8220DB000052
12257	152	8220DB000277
12258	153	8220DB000288
12259	153	8220DB001171
12260	153	8220DB001172
12261	153	8220DB001173
12262	153	8220DB001174
12263	153	8220DB001175
12264	153	8220DB000015
12265	153	8220DB000017
12266	153	8220DB000018
12267	153	8220DB000019
12268	153	8220DB000021
12269	153	8220DB007602
12270	153	8220DB000085
12271	153	8220DB000203
12272	153	8220DB000204
12273	153	8220DB000205
12274	153	8220DB001620
12275	153	8220DB000220
12276	153	8240DB001622
12277	153	8240DB001623
12278	153	8240DB001624
12279	153	8240DB001625
12280	153	8240DB001626
12281	153	8240DB001627
12282	153	8240DB001628
12283	153	8240DB001629
12284	153	8240DB001630
12285	153	8240DB007348
12286	153	8240DB003669
12287	153	8240DB003671
12288	153	8240DB003672
12289	153	8240DB003674
12290	153	8240DB003675
12291	153	8240DB003676
12292	153	8240DB005073
12293	153	8240DB005074
12294	153	8240DB006054
12295	153	8240DB004330
12296	153	8240DB003679
12297	153	8240DB005075
12298	153	8240DB005076
12299	153	8240DB003682
12300	153	8240DB003864
12301	153	8240DB003865
12302	153	8240DB004910
12303	153	8240DB004911
12304	153	8240DB004912
12305	153	8240DB004913
12306	153	8240DB004914
12307	153	8240DB004915
12308	154	8220DB000288
12309	154	8220DB001171
12310	154	8220DB001172
12311	154	8220DB001173
12312	154	8220DB001174
12313	154	8220DB001175
12314	154	8220DB000015
12315	154	8220DB000017
12316	154	8220DB000018
12317	154	8220DB000019
12318	154	8220DB000021
12319	154	8220DB007602
12320	154	8220DB000085
12321	154	8220DB000203
12322	154	8220DB000204
12323	154	8220DB000205
12324	154	8220DB001620
12325	154	8220DB000220
12326	154	8240DB001622
12327	154	8240DB001623
12328	154	8240DB001624
12329	154	8240DB001625
12330	154	8240DB001626
12331	154	8240DB001627
12332	154	8240DB001628
12333	154	8240DB001629
12334	154	8240DB001630
12335	154	8240DB003670
12336	154	8240DB003671
12337	154	8240DB003672
12338	154	8240DB003674
12339	154	8240DB003675
12340	154	8240DB005030
12341	154	8240DB005031
12342	154	8240DB006033
12343	154	8240DB003089
12344	154	8240DB003090
12345	154	8240DB003706
12346	154	8240DB003707
12347	154	8240DB003708
12348	154	8240DB003709
12349	154	8240DB003710
12350	154	8240DB004925
12351	154	8240DB004926
12352	154	8240DB003678
12353	154	8240DB003679
12354	154	8240DB005075
12355	154	8240DB005076
12356	154	8240DB003682
12357	154	8240DB003864
12358	154	8240DB003865
12359	154	8240DB007133
12360	154	8240DB007134
12361	154	8240DB003867
12362	154	8240DB007135
12363	154	8240DB007136
12364	155	8220DB000288
12365	155	8220DB001171
12366	155	8220DB001172
12367	155	8220DB001173
12368	155	8220DB001174
12369	155	8220DB001175
12370	155	8220DB000015
12371	155	8220DB000017
12372	155	8220DB000018
12373	155	8220DB000019
12374	155	8220DB000021
12375	155	8220DB007602
12376	155	8220DB000085
12377	155	8220DB000203
12378	155	8220DB000204
12379	155	8220DB000205
12380	155	8220DB001620
12381	155	8220DB000220
12382	155	8240DB001622
12383	155	8240DB001623
12384	155	8240DB001624
12385	155	8240DB001625
12386	155	8240DB001626
12387	155	8240DB001627
12388	155	8240DB001628
12389	155	8240DB001629
12390	155	8240DB001630
12391	155	8240DB003670
12392	155	8240DB003671
12393	155	8240DB003672
12394	155	8240DB003674
12395	155	8240DB003675
12396	155	8240DB003676
12397	155	8240DB005073
12398	155	8240DB005074
12399	155	8240DB006054
12400	155	8240DB004330
12401	155	8240DB003679
12402	155	8240DB005075
12403	155	8240DB005076
12404	155	8240DB003682
12405	155	8240DB003864
12406	155	8240DB003865
12407	155	8240DB007133
12408	155	8240DB007134
12409	155	8240DB003867
12410	155	8240DB007135
12411	155	8240DB007136
12412	156	8220DB000288
12413	156	8220DB001171
12414	156	8220DB001172
12415	156	8220DB001173
12416	156	8220DB001174
12417	156	8220DB001175
12418	156	8220DB000015
12419	156	8220DB000017
12420	156	8220DB000018
12421	156	8220DB000019
12422	156	8220DB000021
12423	156	8220DB007602
12424	156	8220DB000085
12425	156	8220DB000203
12426	156	8220DB000204
12427	156	8220DB000205
12428	156	8220DB001620
12429	156	8220DB000220
12430	156	8240DB001622
12431	156	8240DB001623
12432	156	8240DB001624
12433	156	8240DB001625
12434	156	8240DB001626
12435	156	8240DB001627
12436	156	8240DB001628
12437	156	8240DB001629
12438	156	8240DB001630
12439	156	8240DB003670
12440	156	8240DB003671
12441	156	8240DB003672
12442	156	8240DB003674
12443	156	8240DB003675
12444	156	8240DB005030
12445	156	8240DB005031
12446	156	8240DB006033
12447	156	8240DB003089
12448	156	8240DB003090
12449	156	8240DB003706
12450	156	8240DB003707
12451	156	8240DB003708
12452	156	8240DB003709
12453	156	8240DB003710
12454	156	8240DB004925
12455	156	8240DB004926
12456	156	8240DB003678
12457	156	8240DB003679
12458	156	8240DB003711
12459	156	8240DB003712
12460	156	8240DB004916
12461	156	8240DB004917
12462	156	8240DB004918
12463	156	8240DB004919
12464	156	8240DB004920
12465	156	8240DB004910
12466	156	8240DB004911
12467	156	8240DB004912
12468	156	8240DB004913
12469	156	8240DB004914
12470	156	8240DB004915
12471	157	8240DB004843
12472	157	8240DB004905
12473	157	8240DB004906
12474	157	8240DB004907
12475	157	8240DB004908
12476	157	8240DB004909
12477	157	8240DB004921
12478	157	8240DB004922
12479	157	8240DB004923
12480	157	8240DB004924
12481	157	8240DB004958
12482	157	8240DB003752
12483	157	8240DB003751
12484	157	8240DB003689
12485	157	8240DB003691
12486	157	8240DB003572
12487	157	8240DB003701
12488	157	8240DB003702
12489	157	8240DB003088
12490	157	8240DB003704
12491	157	8240DB003705
12492	157	8240DB000733
12493	157	8240DB006015
12494	157	8240DB005029
12495	157	8240DB005028
12496	157	8240DB003696
12497	157	8240DB003697
12498	157	8240DB003698
12499	157	8240DB003699
12500	157	8240DB003885
12501	157	8240DB001631
12502	157	8240DB001632
12503	157	8240DB005053
12504	157	8240DB001633
12505	157	8240DB001634
12506	157	8240DB001635
12507	157	8240DB001636
12508	157	8240DB001637
12509	157	8240DB001638
12510	157	8240DB001639
12511	157	8240DB001640
12512	157	8240DB000231
12513	157	8220DB001641
12514	157	8220DB001642
12515	157	8220DB000213
12516	157	8220DB000214
12517	157	8220DB004432
12518	157	8220DB000119
12519	157	8220DB000044
12520	157	8220DB007603
12521	157	8220DB000045
12522	157	8220DB000046
12523	157	8220DB000047
12524	157	8220DB000048
12525	157	8220DB000049
12526	157	8220DB000051
12527	157	8220DB000052
12528	157	8220DB000277
12529	158	8220DB000288
12530	158	8220DB001171
12531	158	8220DB001172
12532	158	8220DB001173
12533	158	8220DB001174
12534	158	8220DB001175
12535	158	8220DB000015
12536	158	8220DB000017
12537	158	8220DB000018
12538	158	8220DB000019
12539	158	8220DB000021
12540	158	8220DB007602
12541	158	8220DB000085
12542	158	8220DB000203
12543	158	8220DB000204
12544	158	8220DB000205
12545	158	8220DB001620
12546	158	8220DB000220
12547	158	8240DB001622
12548	158	8240DB001623
12549	158	8240DB001624
12550	158	8240DB001625
12551	158	8240DB001626
12552	158	8240DB001627
12553	158	8240DB001628
12554	158	8240DB001629
12555	158	8240DB001630
12556	158	8240DB003670
12557	158	8240DB003671
12558	158	8240DB003672
12559	158	8240DB003674
12560	158	8240DB003675
12561	158	8240DB003676
12562	158	8240DB005073
12563	158	8240DB005074
12564	159	8240DB005044
12565	159	8240DB007116
12566	159	8240DB005079
12567	159	8240DB003694
12568	159	8240DB003695
12569	159	8240DB003696
12570	159	8240DB003697
12571	159	8240DB003698
12572	159	8240DB003699
12573	159	8240DB003885
12574	159	8240DB001631
12575	159	8240DB001632
12576	159	8240DB005053
12577	159	8240DB001633
12578	159	8240DB001634
12579	159	8240DB001635
12580	159	8240DB001636
12581	159	8240DB001637
12582	159	8240DB001638
12583	159	8240DB001639
12584	159	8240DB001640
12585	159	8240DB000231
12586	159	8220DB001641
12587	159	8220DB001642
12588	159	8220DB000213
12589	159	8220DB000214
12590	159	8220DB004432
12591	159	8220DB000119
12592	159	8220DB000044
12593	159	8220DB007603
12594	159	8220DB000045
12595	159	8220DB000046
12596	159	8220DB000047
12597	159	8220DB000048
12598	159	8220DB000049
12599	159	8220DB000051
12600	159	8220DB000052
12601	159	8220DB000277
12602	160	8250DB004953
12603	160	8250DB000768
12604	160	8220DB000769
12605	160	8220DB000770
12606	160	8220DB000771
12607	160	8220DB000772
12608	160	8220DB000773
12609	160	8220DB000774
12610	160	8220DB000775
12611	160	8220DB000776
12612	160	8220DB000777
12613	160	8220DB000906
12614	160	8220DB000909
12615	160	8220DB000790
12616	160	8220DB007585
12617	160	8220DB007587
12618	160	8220DB000407
12619	160	8220DB002498
12620	160	8220DB002499
12621	160	8220DB002500
12622	160	8220DB002501
12623	160	8220DB007623
12624	160	8240DB005030
12625	160	8240DB005031
12626	160	8240DB006033
12627	160	8240DB003089
12628	160	8240DB003090
12629	160	8240DB003706
12630	160	8240DB003707
12631	160	8240DB003708
12632	160	8240DB003709
12633	160	8240DB003710
12634	160	8240DB004925
12635	160	8240DB003679
12636	160	8240DB005075
12637	160	8240DB005076
12638	160	8240DB003682
12639	160	8240DB003864
12640	160	8240DB003865
12641	160	8240DB004910
12642	160	8240DB004911
12643	160	8240DB004912
12644	160	8240DB004913
12645	160	8240DB004914
12646	160	8240DB004915
12647	161	8240DB007654
12648	161	8240DB004843
12649	161	8240DB004905
12650	161	8240DB004906
12651	161	8240DB004907
12652	161	8240DB004908
12653	161	8240DB004909
12654	161	8240DB004921
12655	161	8240DB004922
12656	161	8240DB004923
12657	161	8240DB004924
12658	161	8240DB004958
12659	161	8240DB003752
12660	161	8240DB003751
12661	161	8240DB007114
12662	161	8240DB007116
12663	161	8240DB003694
12664	161	8240DB003695
12665	161	8240DB007115
12666	161	8240DB006310
12667	161	8240DB006311
12668	161	8220DB004495
12669	161	8220DB002809
12670	161	8220DB002810
12671	161	8220DB000842
12672	161	8220DB000845
12673	161	8220DB000846
12674	161	8220DB000847
12675	161	8220DB000848
12676	161	8220DB002795
12677	161	8220DB000756
12678	161	8220DB000757
12679	161	8220DB000758
12680	161	8220DB000759
12681	161	8220DB000760
12682	161	8220DB000762
12683	161	8220DB000763
12684	162	8220DB001184
12685	162	8220DB000497
12686	162	8220DB000515
12687	162	8220DB000516
12688	162	8220DB004384
12689	162	8220DB000519
12690	162	8220DB000521
12691	162	8220DB000522
12692	162	8220DB000523
12693	162	8220DB000669
12694	162	8220DB000670
12695	162	8220DB000671
12696	162	8220DB000672
12697	162	8220DB004382
12698	162	8220DB001196
12699	162	8220DB001197
12700	162	8220DB001198
12701	162	8220DB001199
12702	162	8220DB001200
12703	162	8220DB004385
12704	162	8220DB001201
12705	162	8220DB001202
12706	162	8220DB001203
12707	162	8220DB006115
12708	162	8220DB001205
12709	162	8240DB001206
12710	162	8240DB001207
12711	162	8240DB001208
12712	162	8240DB001209
12713	162	8240DB001210
12714	162	8240DB001211
12715	162	8240DB003575
12716	162	8240DB003576
12717	162	8240DB003577
12718	162	8240DB003578
12719	162	8240DB003579
12720	162	8240DB003580
12721	162	8240DB003640
12722	162	8240DB003574
12723	162	8240DB003641
12724	162	8240DB003642
12725	162	8240DB003643
12726	162	8240DB003583
12727	162	8240DB003584
12728	162	8240DB003585
12729	162	8240DB003625
12730	162	8240DB003626
12731	162	8240DB003627
12732	162	8240DB003628
12733	162	8240DB006052
12734	162	8240DB003613
12735	162	8240DB003615
12736	163	8240DB003605
12737	163	8240DB003606
12738	163	8240DB003607
12739	163	8240DB006051
12740	163	8240DB006053
12741	163	8240DB007327
12742	163	8240DB003629
12743	163	8240DB003630
12744	163	8240DB003631
12745	163	8240DB003632
12746	163	8240DB003633
12747	163	8240DB003634
12748	163	8240DB003635
12749	163	8240DB003636
12750	163	8240DB000905
12751	163	8240DB004331
12752	163	8240DB004339
12753	163	8240DB007616
12754	163	8240DB005081
12755	163	8240DB005082
12756	163	8240DB003639
12757	163	8240DB003644
12758	163	8240DB003645
12759	163	8240DB003646
12760	163	8240DB003647
12761	163	8240DB003661
12762	163	8240DB003573
12763	163	8240DB003662
12764	163	8240DB001212
12765	163	8240DB001213
12766	163	8240DB001214
12767	163	8240DB001215
12768	163	8240DB001216
12769	163	8240DB001217
12770	163	8220DB004563
12771	163	8220DB001218
12772	163	8220DB001270
12773	163	8220DB001272
12774	163	8220DB001273
12775	163	8220DB001274
12776	163	8220DB001275
12777	163	8220DB001276
12778	163	8220DB001277
12779	163	8220DB001219
12780	163	8220DB001220
12781	163	8220DB001221
12782	163	8220DB000664
12783	163	8220DB000665
12784	163	8220DB000666
12785	163	8220DB000667
12786	163	8220DB000668
12787	163	8220DB000614
12788	163	8220DB000615
12789	163	8220DB000616
12790	163	8220DB000617
12791	163	8220DB000618
12792	163	8220DB000619
12793	163	8220DB000675
12794	164	8240DB004923
12795	164	8240DB004924
12796	164	8240DB004958
12797	164	8240DB003752
12798	164	8240DB003751
12799	164	8240DB003689
12800	164	8240DB003690
12801	164	8240DB006117
12802	164	8240DB003655
12803	164	8240DB005086
12804	164	8240DB003656
12805	164	8240DB003657
12806	164	8240DB003658
12807	164	8240DB003659
12808	164	8240DB003660
12809	164	8240DB003647
12810	164	8240DB003661
12811	164	8240DB003573
12812	164	8240DB003662
12813	164	8240DB001212
12814	164	8240DB001213
12815	164	8240DB001214
12816	164	8240DB001215
12817	164	8240DB001216
12818	164	8240DB001217
12819	164	8220DB004563
12820	164	8220DB001218
12821	164	8220DB001270
12822	164	8220DB001272
12823	164	8220DB001273
12824	164	8220DB001274
12825	164	8220DB001275
12826	164	8220DB001276
12827	164	8220DB001277
12828	164	8220DB001219
12829	164	8220DB001220
12830	164	8220DB001221
12831	164	8220DB000664
12832	164	8220DB000665
12833	164	8220DB000666
12834	164	8220DB000667
12835	164	8220DB000668
12836	164	8220DB000614
12837	164	8220DB000615
12838	164	8220DB000616
12839	164	8220DB000617
12840	164	8220DB000618
12841	164	8220DB000619
12842	164	8220DB000675
12843	165	8240DB005044
12844	165	8240DB004433
12845	165	8240DB003752
12846	165	8240DB003751
12847	165	8240DB003689
12848	165	8240DB003690
12849	165	8240DB006117
12850	165	8240DB003655
12851	165	8240DB005086
12852	165	8240DB003656
12853	165	8240DB003657
12854	165	8240DB003658
12855	165	8240DB007329
12856	165	8240DB003659
12857	165	8240DB003660
12858	165	8240DB003647
12859	165	8240DB003661
12860	165	8240DB003573
12861	165	8240DB003662
12862	165	8240DB001212
12863	165	8240DB001213
12864	165	8240DB001214
12865	165	8240DB001215
12866	165	8240DB001216
12867	165	8240DB001217
12868	165	8220DB004563
12869	165	8220DB001218
12870	165	8220DB001270
12871	165	8220DB001272
12872	165	8220DB001273
12873	165	8220DB001274
12874	165	8220DB001275
12875	165	8220DB001276
12876	165	8220DB001277
12877	165	8220DB001219
12878	165	8220DB001220
12879	165	8220DB001221
12880	165	8220DB000664
12881	165	8220DB000665
12882	165	8220DB000666
12883	165	8220DB000667
12884	165	8220DB000668
12885	165	8220DB000614
12886	165	8220DB000615
12887	165	8220DB000616
12888	165	8220DB000617
12889	165	8220DB000618
12890	165	8220DB000619
12891	165	8220DB000675
12892	166	8220DB007571
12893	166	8220DB000207
12894	166	8220DB000208
12895	166	8220DB000209
12896	166	8220DB000210
12897	166	8220DB000211
12898	166	8220DB000212
12899	166	8220DB000213
12900	166	8220DB000214
12901	166	8220DB004432
12902	166	8220DB000119
12903	166	8220DB000044
12904	166	8220DB007603
12905	166	8220DB000045
12906	166	8220DB000046
12907	166	8220DB000047
12908	166	8220DB000048
12909	166	8220DB000049
12910	166	8220DB000051
12911	166	8220DB000052
12912	166	8220DB000265
12913	166	8220DB000271
12914	166	8220DB000340
12915	166	8220DB000350
12916	166	8220DB002809
12917	166	8220DB002810
12918	166	8220DB002811
12919	166	8220DB001013
12920	166	8220DB001015
12921	166	8220DB002812
12922	166	8220DB002813
12923	166	8220DB002814
12924	166	8220DB000852
12925	166	8220DB000853
12926	166	8220DB000854
12927	166	8220DB000855
12928	166	8220DB002815
12929	166	8220DB002816
12930	166	8220DB002817
12931	166	8250DB002818
12932	166	8250DB002819
12933	166	8250DB002820
12934	166	8250DB002822
12935	166	8250DB002823
12936	166	8250DB005032
12937	166	8250DB002824
12938	166	8250DB002825
12939	166	8250DB007716
12940	166	8250DB007717
12941	166	8250DB002829
12942	166	8250DB002830
12943	166	8250DB002831
12944	166	8250DB002832
12945	166	8250DB002833
12946	166	8250DB007375
12947	166	8250DB003466
12948	166	8250DB003467
12949	166	8250DB003469
12950	166	8250DB003470
12951	166	8250DB003471
12952	166	8250DB003472
12953	166	8250DB003473
12954	166	8250DB003474
12955	166	8250DB003475
12956	166	8250DB003476
12957	166	8250DB003477
12958	166	8250DB003478
12959	166	8250DB003280
12960	166	8250DB003282
12961	166	8250DB003479
12962	166	8250DB004086
12963	166	8250DB004087
12964	166	8250DB004088
12965	166	8350DB004089
12966	166	8350DB004090
12967	166	8350DB004091
12968	166	8350DB006097
12969	166	8350DB004093
12970	166	8350DB004094
12971	166	8350DB004095
12972	167	8350DB007823
12973	167	8350DB007824
12974	167	8350DB004114
12975	167	8350DB004115
12976	167	8350DB004116
12977	167	8350DB004117
12978	167	8350DB004118
12979	167	8350DB004119
12980	167	8350DB004120
12981	167	8250DB004121
12982	167	8250DB004122
12983	167	8250DB004123
12984	167	8250DB003283
12985	167	8250DB003284
12986	167	8250DB003310
12987	167	8250DB003481
12988	167	8250DB003482
12989	167	8250DB003483
12990	167	8250DB003484
12991	167	8250DB003485
12992	167	8250DB003486
12993	167	8250DB003487
12994	167	8250DB003488
12995	167	8250DB003489
12996	167	8250DB003492
12997	167	8250DB002835
12998	167	8250DB007176
12999	167	8250DB002836
13000	167	8250DB002837
13001	167	8250DB002838
13002	167	8250DB002839
13003	167	8250DB002840
13004	167	8250DB002841
13005	167	8250DB002865
13006	167	8250DB002866
13007	167	8250DB002892
13008	167	8250DB002893
13009	167	8250DB002894
13010	167	8250DB002895
13011	167	8250DB002896
13012	167	8250DB002897
13013	167	8220DB002898
13014	167	8220DB003562
13015	167	8220DB002899
13016	167	8220DB000884
13017	167	8220DB000885
13018	167	8220DB000886
13019	167	8220DB000887
13020	167	8220DB002900
13021	167	8220DB002901
13022	167	8220DB002902
13023	167	8220DB002903
13024	167	8220DB001074
13025	167	8220DB006074
13026	167	8220DB000793
13027	167	8220DB000495
13028	167	8220DB000400
13029	167	8220DB000319
13030	167	8220DB000278
13031	167	8220DB000010
13032	167	8220DB000012
13033	167	8220DB000014
13034	167	8220DB000015
13035	167	8220DB000017
13036	167	8220DB000018
13037	167	8220DB000019
13038	167	8220DB000021
13039	167	8220DB007602
13040	167	8220DB000085
13041	167	8220DB000203
13042	167	8220DB000204
13043	167	8220DB000205
13044	167	8220DB000206
13045	167	8220DB000207
13046	167	8220DB000208
13047	167	8220DB000209
13048	167	8220DB000210
13049	167	8220DB001643
13050	168	8250DB006041
13051	168	8250DB007716
13052	168	8250DB007717
13053	168	8250DB002829
13054	168	8250DB002830
13055	168	8250DB002831
13056	168	8250DB002832
13057	168	8250DB002833
13058	168	8250DB006006
13059	168	8250DB003493
13060	168	8250DB003494
13061	168	8250DB003495
13062	168	8250DB003496
13063	168	8250DB003497
13064	168	8250DB003498
13065	168	8250DB003499
13066	168	8250DB003500
13067	168	8250DB003501
13068	168	8250DB003502
13069	168	8250DB003503
13070	168	8250DB003504
13071	168	8250DB003505
13072	168	8250DB003506
13073	168	8250DB003507
13074	168	8250DB003508
13075	168	8250DB003510
13076	168	8250DB003512
13077	169	8250DB003514
13078	169	8250DB003515
13079	169	8250DB003516
13080	169	8250DB003517
13081	169	8250DB003518
13082	169	8250DB003519
13083	169	8250DB003521
13084	169	8250DB003523
13085	169	8250DB003524
13086	169	8250DB003525
13087	169	8250DB003527
13088	169	8250DB003528
13089	169	8250DB003529
13090	169	8250DB003532
13091	169	8250DB003533
13092	169	8250DB003491
13093	169	8250DB006007
13094	169	8250DB002836
13095	169	8250DB002837
13096	169	8250DB002838
13097	169	8250DB002839
13098	169	8250DB002840
13099	169	8250DB002841
13100	169	8250DB002865
13101	169	8250DB002866
13102	170	8250DB002039
13103	170	8250DB002040
13104	170	8250DB002041
13105	170	8250DB002042
13106	170	8250DB002043
13107	170	8250DB002044
13108	170	8250DB002045
13109	170	8250DB002046
13110	170	8250DB004568
13111	170	8250DB004569
13112	170	8250DB004570
13113	170	8250DB002056
13114	170	8250DB002057
13115	170	8250DB002058
13116	170	8250DB002059
13117	170	8250DB002060
13118	170	8250DB002061
13119	170	8250DB002062
13120	170	8250DB002063
13121	170	8250DB002064
13122	170	8250DB002065
13123	170	8250DB004727
13124	170	8250DB004728
13125	170	8250DB000461
13126	170	8250DB002068
13127	170	8250DB002069
13128	170	8250DB002070
13129	170	8250DB002084
13130	170	8250DB000768
13131	170	8220DB000769
13132	170	8220DB000770
13133	170	8220DB000771
13134	170	8220DB000772
13135	170	8220DB000773
13136	170	8220DB000774
13137	170	8220DB000775
13138	170	8220DB000776
13139	170	8220DB000777
13140	170	8220DB000906
13141	170	8220DB000907
13142	170	8220DB000908
13143	170	8220DB000909
13144	170	8220DB000786
13145	170	8220DB000792
13146	170	8220DB000320
13147	170	8220DB000278
13148	170	8220DB000002
13149	170	8220DB000192
13150	170	8220DB000795
13151	170	8220DB000796
13152	170	8220DB000797
13153	170	8220DB000798
13154	170	8220DB000799
13155	170	8220DB000800
13156	170	8220DB000801
13157	170	8220DB000802
13158	170	8220DB000803
13159	170	8220DB000804
13160	170	8220DB007877
13161	170	8220DB007513
13162	171	8220DB000807
13163	171	8220DB000808
13164	171	8220DB000809
13165	171	8220DB000810
13166	171	8220DB000811
13167	171	8220DB000812
13168	171	8220DB000813
13169	171	8220DB000814
13170	171	8220DB000081
13171	171	8220DB000817
13172	171	8220DB000818
13173	171	8220DB000819
13174	171	8220DB000264
13175	171	8220DB006059
13176	171	8220DB000334
13177	171	8220DB000406
13178	171	8220DB000747
13179	171	8220DB000842
13180	171	8220DB000845
13181	171	8220DB000846
13182	171	8220DB000847
13183	171	8220DB000848
13184	171	8220DB002795
13185	171	8220DB000756
13186	171	8220DB000757
13187	171	8220DB000758
13188	171	8220DB000759
13189	171	8220DB000760
13190	171	8220DB000761
13191	171	8220DB000762
13192	171	8220DB000763
13193	171	8250DB002007
13194	171	8250DB002008
13195	171	8250DB002009
13196	171	8250DB002010
13197	171	8250DB000435
13198	171	8250DB007353
13199	171	8250DB004571
13200	171	8250DB002013
13201	171	8250DB002014
13202	171	8250DB004636
13203	171	8250DB002016
13204	171	8250DB002015
13205	171	8250DB002017
13206	171	8250DB002018
13207	171	8250DB002019
13208	171	8250DB002020
13209	171	8250DB002021
13210	171	8250DB002022
13211	171	8250DB004565
13212	171	8250DB004566
13213	171	8250DB004567
13214	171	8250DB002031
13215	171	8250DB002032
13216	171	8250DB002033
13217	171	8250DB002034
13218	171	8250DB002035
13219	171	8250DB002036
13220	172	8250DB003085
13221	172	8250DB003034
13222	172	8250DB003114
13223	172	8250DB004353
13224	172	8250DB004355
13225	172	8250DB004354
13226	172	8250DB003196
13227	172	8250DB003345
13228	172	8250DB004727
13229	172	8250DB004728
13230	172	8250DB000461
13231	172	8250DB002068
13232	172	8250DB002069
13233	172	8250DB002070
13234	172	8250DB002084
13235	172	8250DB000768
13236	172	8220DB000769
13237	172	8220DB000770
13238	172	8220DB000771
13239	172	8220DB000772
13240	172	8220DB000773
13241	172	8220DB000774
13242	172	8220DB000775
13243	172	8220DB000776
13244	172	8220DB000777
13245	172	8220DB000906
13246	172	8220DB000907
13247	172	8220DB000908
13248	172	8220DB000909
13249	172	8220DB000786
13250	172	8220DB000792
13251	172	8220DB000320
13252	172	8220DB000278
13253	172	8220DB000002
13254	172	8220DB004726
13255	172	8220DB007555
13256	173	8250DB005013
13257	173	8250DB005014
13258	173	8250DB007291
13259	173	8250DB003485
13260	173	8250DB003486
13261	173	8250DB003487
13262	173	8250DB007415
13263	173	8250DB007416
13264	173	8250DB007325
13265	173	8250DB004984
13266	173	8250DB000448
13267	173	8250DB003181
13268	173	8250DB000451
13269	173	8250DB000447
13270	173	8250DB005045
13271	173	8250DB004460
13272	173	8250DB000453
13273	173	8250DB004477
13274	173	8250DB003321
13275	173	8250DB002066
13276	173	8250DB002067
13277	173	8250DB004728
13278	173	8250DB000437
13279	173	8250DB000459
13280	173	8250DB002080
13281	173	8250DB002081
13282	173	8250DB002082
13283	173	8250DB002083
13284	173	8250DB002084
13285	173	8250DB000768
13286	173	8220DB002085
13287	173	8220DB002086
13288	173	8220DB004455
13289	173	8220DB000381
13290	173	8220DB007740
13291	173	8220DB007741
13292	173	8220DB000387
13293	173	8220DB000388
13294	173	8220DB000389
13295	173	8220DB000393
13296	173	8220DB000371
13297	173	8220DB000391
13298	173	8220DB000392
13299	173	8220DB000395
13300	173	8220DB000396
13301	173	8220DB000397
13302	173	8220DB000398
13303	173	8220DB000399
13304	173	8220DB000400
13305	174	8220DB007564
13306	174	8220DB000340
13307	174	8220DB000350
13308	174	8220DB000351
13309	174	8220DB000352
13310	174	8220DB000353
13311	174	8220DB000354
13312	174	8220DB000355
13313	174	8220DB000356
13314	174	8220DB000357
13315	174	8220DB000390
13316	174	8220DB000372
13317	174	8220DB000373
13318	174	8220DB000374
13319	174	8220DB007738
13320	174	8220DB007739
13321	174	8220DB002087
13322	174	8220DB007053
13323	174	8220DB002088
13324	174	8220DB002089
13325	174	8220DB000763
13326	174	8250DB002007
13327	174	8250DB002008
13328	174	8250DB002071
13329	174	8250DB002072
13330	174	8250DB002073
13331	174	8250DB002074
13332	174	8250DB002075
13333	174	8250DB002076
13334	174	8250DB000460
13335	174	8250DB002011
13336	174	8250DB002012
13337	174	8250DB003322
13338	174	8250DB003563
13339	174	8250DB000444
13340	174	8250DB000445
13341	174	8250DB004779
13342	174	8250DB007057
13343	174	8250DB005142
13344	174	8250DB007567
13345	174	8250DB007326
13346	174	8250DB007418
13347	174	8250DB007417
13348	174	8250DB003471
13349	174	8250DB003472
13350	174	8250DB003473
13351	174	8250DB005015
13352	174	8250DB007290
13353	175	8230DB002353
13354	175	8230DB002357
13355	175	8230DB002359
13356	175	8230DB007122
13357	175	8230DB007121
13358	175	8230DB007183
13359	175	8230DB004880
13360	175	8230DB002539
13361	175	8230DB002540
13362	175	8230DB002542
13363	175	8230DB003004
13364	175	8230DB004756
13365	175	8230DB003005
13366	175	8230DB004757
13367	175	8230DB004758
13368	175	8230DB006343
13369	175	8230DB004759
13370	175	8230DB004760
13371	175	8230DB002547
13372	175	8230DB002548
13373	175	8230DB000946
13374	175	8230DB001155
13375	175	8230DB001157
13376	175	8230DB001158
13377	175	8220DB001159
13378	175	8220DB001160
13379	175	8220DB001161
13380	175	8220DB001162
13381	175	8220DB001163
13382	175	8220DB001337
13383	175	8220DB001338
13384	175	8220DB001339
13385	175	8220DB001340
13386	175	8220DB001341
13387	175	8220DB001342
13388	175	8220DB001343
13389	175	8220DB001344
13390	175	8220DB001345
13391	175	8220DB001347
13392	175	8220DB002634
13393	175	8220DB002635
13394	175	8220DB002636
13395	175	8220DB005097
13396	175	8220DB002383
13397	175	8220DB002002
13398	175	8220DB001358
13399	175	8220DB005192
13400	176	8230DB004342
13401	176	8230DB004348
13402	176	8230DB007122
13403	176	8230DB007121
13404	176	8230DB007183
13405	176	8230DB004880
13406	176	8230DB002539
13407	176	8230DB002540
13408	176	8230DB002542
13409	176	8230DB003004
13410	176	8230DB004756
13411	176	8230DB003005
13412	176	8230DB004757
13413	176	8230DB004758
13414	176	8230DB006343
13415	176	8230DB004759
13416	176	8230DB004760
13417	176	8230DB002547
13418	176	8230DB002548
13419	176	8230DB000946
13420	176	8230DB001155
13421	176	8230DB001157
13422	176	8230DB001158
13423	176	8220DB001159
13424	176	8220DB001160
13425	176	8220DB001161
13426	176	8220DB001162
13427	176	8220DB001163
13428	176	8220DB001337
13429	176	8220DB001338
13430	176	8220DB001339
13431	176	8220DB001340
13432	176	8220DB001341
13433	176	8220DB001342
13434	176	8220DB001343
13435	176	8220DB001344
13436	176	8220DB001345
13437	176	8220DB001347
13438	176	8220DB002634
13439	176	8220DB002635
13440	176	8220DB002636
13441	176	8220DB005097
13442	176	8220DB002383
13443	176	8220DB002002
13444	176	8220DB001358
13445	176	8220DB005192
13446	177	8220DB007392
13447	177	8220DB001443
13448	177	8220DB001444
13449	177	8220DB001445
13450	177	8220DB004407
13451	177	8220DB002637
13452	177	8220DB002638
13453	177	8220DB002721
13454	177	8220DB007012
13455	177	8230DB002201
13456	177	8230DB004401
13457	177	8230DB002213
13458	177	8230DB004688
13459	177	8230DB004689
13460	177	8230DB004410
13461	177	8230DB002678
13462	177	8230DB002679
13463	177	8230DB002680
13464	177	8230DB004677
13465	177	8230DB002136
13466	177	8230DB002137
13467	177	8230DB007201
13468	177	8230DB002138
13469	177	8230DB002139
13470	177	8230DB002140
13471	177	8230DB002141
13472	177	8230DB002142
13473	177	8230DB002143
13474	177	8230DB002145
13475	177	8230DB004670
13476	177	8230DB003420
13477	177	8230DB003421
13478	177	8230DB003422
13479	177	8230DB004671
13480	177	8230DB004672
13481	177	8230DB003465
13482	177	8230DB004673
13483	177	8230DB002172
13484	177	8230DB004409
13485	177	8230DB004550
13486	177	8230DB004551
13487	177	8230DB001965
13488	178	8230DB004664
13489	178	8230DB002160
13490	178	8230DB004665
13491	178	8230DB004666
13492	178	8230DB004667
13493	178	8230DB004668
13494	178	8230DB003376
13495	178	8230DB003377
13496	178	8230DB003378
13497	178	8230DB003379
13498	178	8230DB004669
13499	178	8230DB002146
13500	178	8230DB002147
13501	178	8230DB002148
13502	178	8230DB002149
13503	178	8230DB002150
13504	178	8230DB002151
13505	178	8230DB002152
13506	178	8230DB002153
13507	178	8230DB002154
13508	178	8230DB006245
13509	178	8230DB006013
13510	178	8230DB006247
13511	178	8230DB002681
13512	178	8230DB004691
13513	178	8230DB004796
13514	178	8230DB004690
13515	178	8230DB004411
13516	178	8230DB002239
13517	178	8230DB002241
13518	178	8230DB002242
13519	178	8220DB007435
13520	178	8220DB002722
13521	178	8220DB004413
13522	178	8220DB001476
13523	178	8220DB007453
13524	178	8220DB001478
13525	178	8220DB001479
13526	178	8220DB000315
13527	178	8220DB004495
13528	178	8220DB002809
13529	178	8220DB002810
13530	178	8220DB002811
13531	178	8220DB000749
13532	178	8220DB000750
13533	178	8220DB000751
13534	178	8220DB000752
13535	178	8220DB000753
13536	178	8220DB000754
13537	179	8220DB000395
13538	179	8220DB000396
13539	179	8220DB000397
13540	179	8220DB000398
13541	179	8220DB000399
13542	179	8220DB007859
13543	179	8220DB007732
13544	179	8220DB007392
13545	179	8220DB000312
13546	179	8220DB007857
13547	179	8220DB007855
13548	179	8220DB004407
13549	179	8220DB002637
13550	179	8220DB002721
13551	179	8220DB007012
13552	179	8230DB002201
13553	179	8230DB007239
13554	179	8230DB004401
13555	179	8230DB002213
13556	179	8230DB002214
13557	179	8230DB002215
13558	179	8230DB002216
13559	179	8230DB004599
13560	179	8230DB007184
13561	179	8230DB007050
13562	179	8230DB007185
13563	179	8230DB007186
13564	179	8230DB007187
13565	179	8260DB003954
13566	179	8260DB003955
13567	179	8260DB003956
13568	179	8260DB003957
13569	179	8260DB003958
13570	179	8260DB003959
13571	179	8260DB003960
13572	179	8260DB006156
13573	179	8260DB006165
13574	179	8260DB006157
13575	179	8260DB006158
13576	179	8260DB007314
13577	179	8260DB007819
13578	180	8260DB007822
13579	180	8260DB003986
13580	180	8260DB007313
13581	180	8260DB006164
13582	180	8260DB007712
13583	180	8260DB006159
13584	180	8260DB006160
13585	180	8260DB006161
13586	180	8260DB003991
13587	180	8260DB07758
13588	180	8260DB003998
13589	180	8260DB003999
13590	180	8260DB004000
13591	180	8230DB004001
13592	180	8230DB007193
13593	180	8230DB007049
13594	180	8230DB002236
13595	180	8230DB005056
13596	180	8230DB002239
13597	180	8230DB002241
13598	180	8230DB002242
13599	180	8220DB007435
13600	180	8220DB002722
13601	180	8220DB004413
13602	180	8220DB001476
13603	180	8220DB007854
13604	180	8220DB007856
13605	180	8220DB007883
13606	180	8220DB000315
13607	180	8220DB000340
13608	180	8220DB007861
13609	180	8220DB000351
13610	180	8220DB000352
13611	180	8220DB000353
13612	181	8220DB004380
13613	181	8220DB001172
13614	181	8220DB007671
13615	181	8220DB000513
13616	181	8220DB004513
13617	181	8220DB000286
13618	181	8220DB000271
13619	181	8220DB000496
13620	181	8220DB000497
13621	181	8220DB000515
13622	181	8220DB000516
13623	181	8220DB004384
13624	181	8220DB000518
13625	181	8220DB002255
13626	181	8220DB002256
13627	181	8220DB002717
13628	181	8220DB002257
13629	181	8220DB002258
13630	181	8220DB002259
13631	181	8220DB002260
13632	181	8220DB002261
13633	181	8220DB004469
13634	181	8220DB002262
13635	181	8220DB002264
13636	181	8220DB007336
13637	181	8220DB007601
13638	182	8220DB004380
13639	182	8220DB000496
13640	182	8220DB000497
13641	182	8220DB000515
13642	182	8220DB000516
13643	182	8220DB004384
13644	182	8220DB000518
13645	182	8220DB002255
13646	182	8220DB002256
13647	182	8220DB002717
13648	182	8220DB002257
13649	182	8220DB002258
13650	182	8220DB002259
13651	182	8220DB002260
13652	182	8220DB002261
13653	182	8220DB004469
13654	182	8220DB002262
13655	182	8220DB002264
13656	182	8220DB007336
13657	182	8220DB007601
13658	183	8220DB000342
13659	183	8220DB001279
13660	183	8220DB001934
13661	183	8220DB002385
13662	183	8220DB002386
13663	183	8220DB002387
13664	183	8220DB002388
13665	183	8220DB001290
13666	183	8220DB001291
13667	183	8220DB002389
13668	183	8220DB002390
13669	183	8220DB002391
13670	183	8220DB002392
13671	183	8220DB002393
13672	183	8220DB002394
13673	183	8220DB002395
13674	183	8220DB002396
13675	183	8220DB002397
13676	183	8220DB002398
13677	183	8230DB002399
13678	183	8230DB002400
13679	183	8230DB002401
13680	183	8230DB002402
13681	183	8230DB002403
13682	183	8230DB001096
13683	183	8230DB001097
13684	183	8230DB001099
13685	183	8230DB006132
13686	183	8230DB002551
13687	183	8230DB002553
13688	183	8230DB002554
13689	183	8230DB002555
13690	183	8230DB002556
13691	183	8230DB002557
13692	183	8230DB004436
13693	183	8230DB005008
13694	183	8230DB004640
13695	183	8230DB007214
13696	183	8230DB004347
13697	183	8230DB002349
13698	183	8230DB002351
13699	183	8230DB002558
13700	183	8230DB006170
13701	183	8230DB005023
13702	184	8230DB005161
13703	184	8230DB005162
13704	184	8230DB002571
13705	184	8230DB002359
13706	184	8230DB002360
13707	184	8230DB004348
13708	184	8230DB004646
13709	184	8230DB004647
13710	184	8230DB004435
13711	184	8230DB002594
13712	184	8230DB002595
13713	184	8230DB002596
13714	184	8230DB002597
13715	184	8230DB002599
13716	184	8230DB004577
13717	184	8230DB004578
13718	184	8230DB001100
13719	184	8230DB000100
13720	184	8230DB001111
13721	184	8230DB002404
13722	184	8230DB002405
13723	184	8230DB002406
13724	184	8230DB002408
13725	184	8220DB002409
13726	184	8220DB002410
13727	184	8220DB002411
13728	184	8220DB002412
13729	184	8220DB002438
13730	184	8220DB002439
13731	184	8220DB002440
13732	184	8220DB002441
13733	184	8220DB002442
13734	184	8220DB002443
13735	184	8220DB002444
13736	184	8220DB001344
13737	184	8220DB001345
13738	184	8220DB001347
13739	184	8220DB002634
13740	184	8220DB002635
13741	184	8220DB002636
13742	184	8220DB002383
13743	184	8220DB002003
13744	184	8220DB001358
13745	185	8230DB004344
13746	185	8230DB002349
13747	185	8230DB002351
13748	185	8230DB002621
13749	185	8230DB002622
13750	185	8230DB002750
13751	185	8230DB002751
13752	185	8230DB002752
13753	185	8230DB007509
13754	185	8230DB002754
13755	185	8230DB002755
13756	185	8230DB002756
13757	185	8230DB002764
13758	185	8230DB007178
13759	185	8230DB002765
13760	185	8230DB002766
13761	185	8230DB002767
13762	185	8230DB002772
13763	185	8230DB002768
13764	185	8230DB002769
13765	185	8230DB002770
13766	185	8230DB002771
13767	185	8230DB002773
13768	185	8220DB002774
13769	185	8220DB002777
13770	185	8220DB002775
13771	185	8220DB002181
13772	185	8220DB002182
13773	185	8220DB002778
13774	185	8220DB002185
13775	185	8220DB007043
13776	185	8220DB001424
13777	185	8220DB002186
13778	185	8220DB002187
13779	185	8220DB002188
13780	185	8220DB002189
13781	185	8220DB001436
13782	185	8220DB003952
13783	185	8220DB002190
13784	185	8220DB004434
13785	185	8220DB002379
13786	185	8220DB002380
13787	185	8220DB002382
13788	185	8220DB005099
13789	185	8220DB002383
13790	185	8220DB002003
13791	185	8220DB001358
13792	185	8220DB000340
13793	185	8220DB000350
13794	185	8220DB000351
13795	185	8220DB000352
13796	185	8220DB000353
13797	186	8220DB000395
13798	186	8220DB000396
13799	186	8220DB000397
13800	186	8220DB000398
13801	186	8220DB000399
13802	186	8220DB000400
13803	186	8220DB004522
13804	186	8220DB001934
13805	186	8220DB002310
13806	186	8220DB002311
13807	186	8220DB002312
13808	186	8220DB002313
13809	186	8220DB002314
13810	186	8220DB002315
13811	186	8220DB002094
13812	186	8220DB001406
13813	186	8220DB001407
13814	186	8220DB001409
13815	186	8220DB002095
13816	186	8220DB002096
13817	186	8220DB002097
13818	186	8220DB002099
13819	186	8220DB002101
13820	186	8220DB002102
13821	186	8220DB002726
13822	186	8220DB002727
13823	186	8220DB002105
13824	186	8220DB002728
13825	186	8220DB002729
13826	186	8220DB002730
13827	186	8230DB006083
13828	186	8230DB002733
13829	186	8230DB002734
13830	186	8230DB005169
13831	186	8230DB002735
13832	186	8230DB002736
13833	186	8230DB002725
13834	186	8230DB002737
13835	186	8230DB002738
13836	186	8230DB002739
13837	186	8230DB007177
13838	186	8230DB002740
13839	186	8230DB002741
13840	186	8230DB002742
13841	186	8230DB002743
13842	186	8230DB002745
13843	186	8230DB002746
13844	186	8230DB002747
13845	186	8230DB002748
13846	186	8230DB007062
13847	186	8230DB006075
13848	186	8230DB002631
13849	186	8230DB002359
13850	186	8230DB002360
13851	187	8220DB007591
13852	187	8220DB000496
13853	187	8220DB000515
13854	187	8220DB000516
13855	187	8220DB004384
13856	187	8220DB000518
13857	187	8220DB000519
13858	187	8220DB000521
13859	187	8220DB000522
13860	187	8220DB000523
13861	187	8220DB000525
13862	187	8220DB000526
13863	187	8220DB000527
13864	187	8220DB000528
13865	187	8220DB000529
13866	187	8220DB000530
13867	187	8220DB000531
13868	187	8220DB000709
13869	187	8220DB000532
13870	187	8220DB000533
13871	187	8220DB000534
13872	187	8220DB000654
13873	187	8220DB007727
13874	187	8220DB007729
13875	187	8220DB007731
13876	187	8220DB000542
13877	187	8240DB000543
13878	187	8240DB000544
13879	187	8240DB000545
13880	187	8240DB000546
13881	187	8240DB000547
13882	187	8240DB000548
13883	187	8240DB000549
13884	187	8240DB000677
13885	187	8240DB000678
13886	187	8240DB000679
13887	187	8240DB000680
13888	187	8240DB000681
13889	187	8240DB000682
13890	187	8240DB000683
13891	187	8240DB000684
13892	187	8240DB000685
13893	187	8240DB000686
13894	187	8240DB000688
13895	187	8240DB000689
13896	187	8240DB000690
13897	187	8240DB000691
13898	187	8240DB000692
13899	187	8240DB000695
13900	187	8240DB000696
13901	187	8240DB000697
13902	187	8240DB000698
13903	187	8240DB000699
13904	187	8240DB000700
13905	187	8240DB000701
13906	187	8240DB000702
13907	187	8240DB000703
13908	187	8240DB000704
13909	187	8240DB000707
13910	187	8240DB000568
13911	187	8240DB000569
13912	187	8240DB000570
13913	187	8240DB000571
13914	187	8240DB000572
13915	187	8240DB000573
13916	187	8240DB000574
13917	187	8240DB000575
13918	187	8240DB000576
13919	187	8240DB000577
13920	188	8240DB000557
13921	188	8240DB000558
13922	188	8240DB000559
13923	188	8240DB000560
13924	188	8240DB000562
13925	188	8240DB000563
13926	188	8240DB000564
13927	188	8240DB000565
13928	188	8240DB000566
13929	188	8240DB000567
13930	188	8240DB000710
13931	188	8240DB000711
13932	188	8240DB000712
13933	188	8240DB000713
13934	188	8240DB000714
13935	188	8240DB000715
13936	188	8240DB000716
13937	188	8240DB000717
13938	188	8240DB000718
13939	188	8240DB000719
13940	188	8240DB000720
13941	188	8240DB000680
13942	188	8240DB000681
13943	188	8240DB000682
13944	188	8240DB000683
13945	188	8240DB000684
13946	188	8240DB000685
13947	188	8240DB000686
13948	188	8240DB000688
13949	188	8240DB000689
13950	188	8240DB000690
13951	188	8240DB000691
13952	188	8240DB000692
13953	188	8240DB000693
13954	188	8240DB000585
13955	188	8240DB000586
13956	188	8240DB000587
13957	188	8240DB000588
13958	188	8240DB000589
13959	188	8240DB000590
13960	188	8220DB000591
13961	188	8220DB000592
13962	188	8220DB007730
13963	188	8220DB007728
13964	188	8220DB007726
13965	188	8220DB000601
13966	188	8220DB000602
13967	188	8220DB000603
13968	188	8220DB000604
13969	188	8220DB000605
13970	188	8220DB000606
13971	188	8220DB000607
13972	188	8220DB000608
13973	188	8220DB000609
13974	188	8220DB000610
13975	188	8220DB000611
13976	188	8220DB000612
13977	188	8220DB000613
13978	188	8220DB000614
13979	188	8220DB000615
13980	188	8220DB000616
13981	188	8220DB000617
13982	188	8220DB000618
13983	188	8220DB000619
13984	188	8220DB000675
13985	188	8220DB000620
13986	188	8220DB007569
13987	189	8230DB002934
13988	189	8230DB002935
13989	189	8230DB002936
13990	189	8230DB002937
13991	189	8230DB002938
13992	189	8230DB007440
13993	189	8230DB002940
13994	189	8230DB002948
13995	189	8230DB002949
13996	189	8230DB002950
13997	189	8230DB002954
13998	189	8230DB007067
13999	189	8230DB002956
14000	189	8230DB002965
14001	189	8230DB002983
14002	189	8230DB002984
14003	189	8230DB007449
14004	189	8230DB002941
14005	189	8230DB002942
14006	189	8230DB002943
14007	189	8230DB002944
14008	189	8230DB002945
14009	189	8230DB002946
14010	189	8230DB002947
14011	189	8230DB001305
14012	189	8250DB001306
14013	189	8250DB001307
14014	189	8250DB001308
14015	189	8250DB001309
14016	189	8250DB001310
14017	189	8250DB001311
14018	189	8250DB001312
14019	189	8250DB001313
14020	189	8250DB001055
14021	189	8250DB002868
14022	189	8250DB002892
14023	189	8250DB002893
14024	189	8250DB002894
14025	189	8250DB002895
14026	189	8250DB002896
14027	189	8250DB002897
14028	189	8220DB002898
14029	189	8220DB003562
14030	189	8220DB002899
14031	189	8220DB000884
14032	189	8220DB000885
14033	189	8220DB000886
14034	189	8220DB000887
14035	189	8220DB002900
14036	189	8220DB002901
14037	189	8220DB002902
14038	189	8220DB002903
14039	189	8220DB001074
14040	189	8220DB006074
14041	189	8220DB000793
14042	189	8220DB000495
14043	189	8220DB000400
14044	190	8220DB000302
14045	190	8220DB000340
14046	190	8220DB000350
14047	190	8220DB002809
14048	190	8220DB002810
14049	190	8220DB002811
14050	190	8220DB001013
14051	190	8220DB001015
14052	190	8220DB002812
14053	190	8220DB002813
14054	190	8220DB002814
14055	190	8220DB000852
14056	190	8220DB000853
14057	190	8220DB000854
14058	190	8220DB000855
14059	190	8220DB002815
14060	190	8220DB002816
14061	190	8220DB002817
14062	190	8250DB002818
14063	190	8250DB002819
14064	190	8250DB002820
14065	190	8250DB002822
14066	190	8250DB002823
14067	190	8250DB005032
14068	190	8250DB002867
14069	190	8250DB001035
14070	190	8250DB001314
14071	190	8250DB001316
14072	190	8250DB001315
14073	190	8250DB001317
14074	190	8250DB001318
14075	190	8250DB001319
14076	190	8250DB001281
14077	190	8230DB001329
14078	190	8230DB001330
14079	190	8230DB002919
14080	190	8230DB002920
14081	190	8230DB002921
14082	190	8230DB002922
14083	190	8230DB002923
14084	190	8230DB002924
14085	190	8230DB002925
14086	190	8230DB002948
14087	190	8230DB002949
14088	190	8230DB002950
14089	190	8230DB002954
14090	190	8230DB002955
14091	190	8230DB007067
14092	190	8230DB002956
14093	190	8230DB002965
14094	190	8230DB002984
14095	190	8230DB002927
14096	190	8230DB002929
14097	190	8230DB002930
14098	190	8230DB007441
14099	191	8350DB007270
14100	191	8350DB007266
14101	191	8350DB007265
14102	191	8350DB007262
14103	191	8350DB007261
14104	191	8350DB007259
14105	191	8350DB007256
14106	191	8350DB007255
14107	191	8350DB007249
14108	191	8350DB007253
14109	191	8350DB007251
14110	191	8350DB004051
14111	191	8350DB004052
14112	191	8350DB004054
14113	191	8350DB004055
14114	191	8350DB004057
14115	191	8350DB004101
14116	191	8350DB004102
14117	191	8350DB004058
14118	191	8350DB004059
14119	191	8350DB004060
14120	191	8350DB004061
14121	191	8350DB004062
14122	191	8350DB004063
14123	191	8350DB004064
14124	191	8350DB004056
14125	191	8350DB004133
14126	191	8350DB004065
14127	191	8350DB004066
14128	191	8350DB004067
14129	191	8350DB004068
14130	191	8230DB004069
14131	191	8230DB004070
14132	191	8230DB004071
14133	191	8230DB004072
14134	191	8230DB004073
14135	191	8230DB002583
14136	191	8230DB002584
14137	191	8230DB002585
14138	191	8230DB002586
14139	191	8230DB002587
14140	191	8230DB002588
14141	191	8230DB002589
14142	191	8230DB002590
14143	191	8230DB002591
14144	191	8230DB002592
14145	191	8230DB002357
14146	191	8230DB002359
14147	191	8230DB002360
14148	191	8230DB004348
14149	191	8230DB004646
14150	191	8230DB004647
14151	191	8230DB002346
14152	191	8230DB004435
14153	191	8230DB002594
14154	191	8230DB002595
14155	191	8230DB002596
14156	191	8230DB002597
14157	191	8230DB002599
14158	191	8230DB002600
14159	191	8230DB001155
14160	191	8230DB001157
14161	191	8230DB001158
14162	191	8220DB001159
14163	191	8220DB001160
14164	191	8220DB001161
14165	191	8220DB001162
14166	191	8220DB001163
14167	191	8220DB001164
14168	191	8220DB001165
14169	191	8220DB001166
14170	191	8220DB001167
14171	191	8220DB001168
14172	191	8220DB001169
14173	191	8220DB001170
14174	191	8220DB001069
14175	191	8220DB001070
14176	191	8220DB001071
14177	191	8220DB004528
14178	191	8220DB001072
14179	191	8220DB001352
14180	191	8220DB001353
14181	191	8220DB001355
14182	191	8220DB001357
14183	191	8220DB001358
14184	192	8260DB007289
14185	192	8260DB007280
14186	192	8260DB007281
14187	192	8260DB007284
14188	192	8260DB007287
14189	192	8350DB007208
14190	192	8350DB007249
14191	192	8350DB007253
14192	192	8350DB007251
14193	192	8350DB004051
14194	192	8350DB004052
14195	192	8350DB004054
14196	192	8350DB004055
14197	192	8350DB004057
14198	192	8350DB004101
14199	192	8350DB004102
14200	192	8350DB004058
14201	192	8350DB004059
14202	192	8350DB004060
14203	192	8350DB004061
14204	192	8350DB004062
14205	192	8350DB004063
14206	192	8350DB004064
14207	192	8350DB004056
14208	192	8350DB004133
14209	192	8350DB004065
14210	192	8350DB004066
14211	192	8350DB004067
14212	192	8350DB004068
14213	192	8230DB004069
14214	192	8230DB004070
14215	192	8230DB004071
14216	192	8230DB004072
14217	192	8230DB004073
14218	192	8230DB002583
14219	192	8230DB002584
14220	192	8230DB002585
14221	192	8230DB002586
14222	192	8230DB002587
14223	192	8230DB002588
14224	192	8230DB002589
14225	192	8230DB002590
14226	192	8230DB002591
14227	192	8230DB002592
14228	192	8230DB002357
14229	192	8230DB002359
14230	192	8230DB002360
14231	192	8230DB004348
14232	192	8230DB004646
14233	192	8230DB004647
14234	192	8230DB002346
14235	192	8230DB004435
14236	192	8230DB002594
14237	192	8230DB002595
14238	192	8230DB002596
14239	192	8230DB002597
14240	192	8230DB002599
14241	192	8230DB002600
14242	192	8230DB001155
14243	192	8230DB001157
14244	192	8230DB001158
14245	192	8220DB001159
14246	192	8220DB001160
14247	192	8220DB001161
14248	192	8220DB001162
14249	192	8220DB001163
14250	192	8220DB001164
14251	192	8220DB001165
14252	192	8220DB001166
14253	192	8220DB001167
14254	192	8220DB001168
14255	192	8220DB001169
14256	192	8220DB001170
14257	192	8220DB001069
14258	192	8220DB001070
14259	192	8220DB001071
14260	192	8220DB004528
14261	192	8220DB001072
14262	192	8220DB001352
14263	192	8220DB001353
14264	192	8220DB001355
14265	192	8220DB001357
14266	192	8220DB001358
14267	193	8220DB007564
14268	193	8220DB004521
14269	193	8220DB001283
14270	193	8220DB004456
14271	193	8220DB001284
14272	193	8220DB001285
14273	193	8220DB001016
14274	193	8220DB001017
14275	193	8220DB001018
14276	193	8220DB001019
14277	193	8220DB001020
14278	193	8220DB001076
14279	193	8220DB001077
14280	193	8220DB001078
14281	193	8220DB001079
14282	193	8220DB001080
14283	193	8220DB001081
14284	193	8220DB001082
14285	193	8220DB001083
14286	193	8220DB001085
14287	193	8220DB001121
14288	193	8220DB001122
14289	193	8220DB001123
14290	193	8220DB001124
14291	193	8230DB001125
14292	193	8230DB001127
14293	193	8230DB001130
14294	193	8230DB002550
14295	193	8230DB002516
14296	193	8230DB002517
14297	193	8230DB002518
14298	193	8230DB004749
14299	193	8230DB004750
14300	193	8230DB003006
14301	193	8230DB004871
14302	193	8230DB004872
14303	193	8230DB004873
14304	193	8230DB004874
14305	193	8230DB002532
14306	193	8230DB004877
14307	193	8230DB004878
14308	193	8230DB007180
14309	193	8230DB007331
14310	193	8230DB002559
14311	193	8230DB002560
14312	193	8230DB002561
14313	193	8230DB002562
14314	193	8230DB002564
14315	193	8230DB004927
14316	193	8230DB004928
14317	193	8230DB002352
14318	193	8230DB002573
14319	193	8230DB002574
14320	193	8230DB002575
14321	193	8230DB004929
14322	193	8230DB007460
14323	193	8230DB004930
14324	193	8230DB004931
14325	194	8230DB004713
14326	194	8230DB004714
14327	194	8230DB004960
14328	194	8230DB004932
14329	194	8230DB004933
14330	194	8230DB002590
14331	194	8230DB002591
14332	194	8230DB002592
14333	194	8230DB002357
14334	194	8230DB002566
14335	194	8230DB002567
14336	194	8230DB002568
14337	194	8230DB002569
14338	194	8230DB007550
14339	194	8230DB002570
14340	194	8230DB007222
14341	194	8230DB006170
14342	194	8230DB007183
14343	194	8230DB004880
14344	194	8230DB002539
14345	194	8230DB002540
14346	194	8230DB004882
14347	194	8230DB004883
14348	194	8230DB004884
14349	194	8230DB004885
14350	194	8230DB006343
14351	194	8230DB004759
14352	194	8230DB004760
14353	194	8230DB002547
14354	194	8230DB002548
14355	194	8230DB002600
14356	194	8230DB001155
14357	194	8230DB001157
14358	194	8230DB001158
14359	194	8220DB001159
14360	194	8220DB001160
14361	194	8220DB001161
14362	194	8220DB001162
14363	194	8220DB001163
14364	194	8220DB001164
14365	194	8220DB001165
14366	194	8220DB001166
14367	194	8220DB001167
14368	194	8220DB001168
14369	194	8220DB001169
14370	194	8220DB001170
14371	194	8220DB001069
14372	194	8220DB001070
14373	194	8220DB001071
14374	194	8220DB004528
14375	194	8220DB001072
14376	194	8220DB001352
14377	194	8220DB001353
14378	194	8220DB001355
14379	194	8220DB001357
14380	194	8220DB001358
14381	195	8220DB004495
14382	195	8220DB001278
14383	195	8220DB001282
14384	195	8220DB004456
14385	195	8220DB001284
14386	195	8220DB001285
14387	195	8220DB001286
14388	195	8220DB001288
14389	195	8220DB001289
14390	195	8220DB001360
14391	195	8220DB001362
14392	195	8220DB001363
14393	195	8220DB001364
14394	195	8220DB001365
14395	195	8220DB001366
14396	195	8220DB001367
14397	195	8220DB001369
14398	195	8220DB001370
14399	195	8220DB001371
14400	195	8220DB001372
14401	195	8220DB001373
14402	195	8220DB001374
14403	195	8220DB001946
14404	195	8220DB001947
14405	195	8220DB001948
14406	195	8220DB001949
14407	195	8220DB001950
14408	195	8220DB001951
14409	195	8220DB001952
14410	195	8220DB001953
14411	195	8220DB001954
14412	195	8220DB001955
14413	195	8220DB001956
14414	195	8230DB001957
14415	195	8230DB001958
14416	195	8230DB001959
14417	195	8230DB001960
14418	195	8230DB004379
14419	195	8230DB007782
14420	195	8230DB001968
14421	195	8230DB001969
14422	195	8230DB001970
14423	195	8230DB001971
14424	195	8230DB002114
14425	195	8230DB002115
14426	195	8230DB006011
14427	195	8230DB002133
14428	195	8230DB006244
14429	195	8230DB002134
14430	195	8230DB003378
14431	195	8230DB003379
14432	195	8230DB004669
14433	195	8230DB002165
14434	195	8230DB002166
14435	195	8230DB002167
14436	195	8230DB003383
14437	195	8230DB003384
14438	195	8230DB003385
14439	195	8230DB003386
14440	195	8230DB003387
14441	195	8230DB004559
14442	195	8230DB003389
14443	195	8230DB003390
14444	195	8230DB006119
14445	195	8230DB003392
14446	195	8230DB003393
14447	195	8230DB003394
14448	195	8230DB003396
14449	195	8230DB003397
14450	195	8230DB003398
14451	195	8230DB003399
14452	195	8230DB006187
14453	195	8230DB006188
14454	195	8230DB006215
14455	196	8230DB006185
14456	196	8230DB006186
14457	196	8230DB006216
14458	196	8230DB003400
14459	196	8230DB003401
14460	196	8230DB003402
14461	196	8230DB003403
14462	196	8230DB003404
14463	196	8230DB003405
14464	196	8230DB003406
14465	196	8230DB003410
14466	196	8230DB003407
14467	196	8230DB003408
14468	196	8230DB003409
14469	196	8230DB004558
14470	196	8230DB003411
14471	196	8230DB003412
14472	196	8230DB003413
14473	196	8230DB003414
14474	196	8230DB003415
14475	196	8230DB003416
14476	196	8230DB003417
14477	196	8230DB003418
14478	196	8230DB003419
14479	196	8230DB003420
14480	196	8230DB003421
14481	196	8230DB003422
14482	196	8230DB003423
14483	196	8230DB002156
14484	196	8230DB006014
14485	196	8230DB002158
14486	196	8230DB002159
14487	196	8230DB004409
14488	196	8230DB002173
14489	196	8230DB002174
14490	196	8230DB003425
14491	196	8230DB002176
14492	196	8230DB002177
14493	196	8230DB002178
14494	196	8230DB007354
14495	196	8230DB001975
14496	196	8230DB001977
14497	196	8230DB001978
14498	196	8230DB001980
14499	196	8220DB001981
14500	196	8220DB001982
14501	196	8220DB004406
14502	196	8220DB001984
14503	196	8220DB001985
14504	196	8220DB001986
14505	196	8220DB001987
14506	196	8220DB001988
14507	196	8220DB001989
14508	196	8220DB001375
14509	196	8220DB001376
14510	196	8220DB001377
14511	196	8220DB001378
14512	196	8220DB001379
14513	196	8220DB001380
14514	196	8220DB001381
14515	196	8220DB001382
14516	196	8220DB001383
14517	196	8220DB001384
14518	196	8220DB001385
14519	196	8220DB001348
14520	196	8220DB001349
14521	196	8220DB001350
14522	196	8220DB001352
14523	196	8220DB001353
14524	196	8220DB001355
14525	196	8220DB001357
14526	196	8220DB001358
14527	197	8220DB004495
14528	197	8220DB001278
14529	197	8220DB001282
14530	197	8220DB004456
14531	197	8220DB001284
14532	197	8220DB001285
14533	197	8220DB001286
14534	197	8220DB001288
14535	197	8220DB001289
14536	197	8220DB001360
14537	197	8220DB001362
14538	197	8220DB001363
14539	197	8220DB001364
14540	197	8220DB001365
14541	197	8220DB001366
14542	197	8220DB001367
14543	197	8220DB001369
14544	197	8220DB001370
14545	197	8220DB001371
14546	197	8220DB001372
14547	197	8220DB001373
14548	197	8220DB001374
14549	198	8220DB001375
14550	198	8220DB001376
14551	198	8220DB001377
14552	198	8220DB001378
14553	198	8220DB001379
14554	198	8220DB001380
14555	198	8220DB001381
14556	198	8220DB001382
14557	198	8220DB001383
14558	198	8220DB001384
14559	198	8220DB001385
14560	198	8220DB001348
14561	198	8220DB001349
14562	198	8220DB001350
14563	198	8220DB001352
14564	198	8220DB001353
14565	198	8220DB001355
14566	198	8220DB001357
14567	198	8220DB001358
14568	199	8230DB004564
14569	199	8230DB003443
14570	199	8230DB003444
14571	199	8230DB003445
14572	199	8230DB003446
14573	199	8230DB003447
14574	199	8230DB003448
14575	199	8230DB003449
14576	199	8230DB003436
14577	199	8230DB007432
14578	199	8230DB003454
14579	199	8230DB003455
14580	199	8230DB003456
14581	199	8230DB003457
14582	199	8230DB003438
14583	199	8230DB005022
14584	199	8230DB006002
14585	199	8230DB005119
14586	199	8230DB005120
14587	199	8230DB005121
14588	199	8230DB005122
14589	199	8230DB003461
14590	199	8230DB004532
14591	199	8230DB004534
14592	199	8230DB004535
14593	199	8230DB002169
14594	199	8230DB002170
14595	199	8230DB004672
14596	199	8230DB003465
14597	199	8230DB004673
14598	199	8230DB002172
14599	199	8230DB002159
14600	199	8230DB004409
14601	199	8230DB001972
14602	199	8230DB001973
14603	199	8230DB001974
14604	199	8230DB007781
14605	199	8230DB001975
14606	199	8230DB001977
14607	199	8230DB001978
14608	199	8230DB001980
14609	199	8220DB001981
14610	199	8220DB004406
14611	199	8220DB001984
14612	199	8220DB001985
14613	199	8220DB001986
14614	199	8220DB001987
14615	199	8220DB001988
14616	199	8220DB002642
14617	199	8220DB007435
14618	199	8220DB002722
14619	199	8220DB001471
14620	199	8220DB001472
14621	199	8220DB004408
14622	199	8220DB001473
14623	199	8220DB001474
14624	199	8220DB001476
14625	199	8220DB007453
14626	199	8220DB001480
14627	199	8220DB002912
14628	199	8220DB001358
14629	200	8220DB004495
14630	200	8220DB004720
14631	200	8220DB001443
14632	200	8220DB001444
14633	200	8220DB001445
14634	200	8220DB007078
14635	200	8220DB001449
14636	200	8220DB001450
14637	200	8220DB001451
14638	200	8220DB001452
14639	200	8220DB002640
14640	200	8220DB002641
14641	200	8220DB001948
14642	200	8220DB001949
14643	200	8220DB001950
14644	200	8220DB001951
14645	200	8220DB001952
14646	200	8220DB001953
14647	200	8220DB001954
14648	200	8220DB001955
14649	200	8220DB001956
14650	200	8230DB001957
14651	200	8230DB001958
14652	200	8230DB001959
14653	200	8230DB001960
14654	200	8230DB004379
14655	200	8230DB007782
14656	200	8230DB001968
14657	200	8230DB001969
14658	200	8230DB001970
14659	200	8230DB001971
14660	200	8230DB002160
14661	200	8230DB002161
14662	200	8230DB004665
14663	200	8230DB004666
14664	200	8230DB004667
14665	200	8230DB002162
14666	200	8230DB002163
14667	200	8230DB002168
14668	200	8230DB004536
14669	200	8230DB006003
14670	200	8230DB005123
14671	200	8230DB005124
14672	200	8230DB005125
14673	200	8230DB006001
14674	200	8230DB004438
14675	200	8230DB003432
14676	200	8230DB003426
14677	200	8230DB003434
14678	200	8230DB003435
14679	200	8230DB003453
14680	200	8230DB003437
14681	200	8230DB003439
14682	200	8230DB003440
14683	200	8230DB004557
14684	200	8230DB003441
14685	200	8230DB004560
14686	201	8220DB004495
14687	201	8220DB004720
14688	201	8220DB001443
14689	201	8220DB001444
14690	201	8220DB001445
14691	201	8220DB004407
14692	201	8220DB002637
14693	201	8220DB001956
14694	201	8230DB002109
14695	201	8230DB003427
14696	201	8230DB003428
14697	201	8230DB003432
14698	201	8230DB003434
14699	201	8230DB003453
14700	201	8230DB003437
14701	201	8230DB003440
14702	201	8230DB003441
14703	201	8230DB004560
14704	202	8230DB004564
14705	202	8230DB003444
14706	202	8230DB003447
14707	202	8230DB003454
14708	202	8230DB003455
14709	202	8230DB005022
14710	202	8230DB003461
14711	202	8230DB004537
14712	202	8230DB002176
14713	202	8220DB001982
14714	202	8220DB007435
14715	202	8220DB004413
14716	202	8220DB001480
14717	202	8220DB001358
14718	203	8250DB007639
14719	203	8250DB007640
14720	203	8250DB005047
14721	203	8250DB003224
14722	203	8250DB003225
14723	203	8250DB003226
14724	203	8250DB003227
14725	203	8250DB003228
14726	203	8250DB003229
14727	203	8250DB007644
14728	203	8250DB007645
14729	203	8250DB007646
14730	203	8250DB003238
14731	203	8250DB003239
14732	203	8250DB003240
14733	203	8250DB003068
14734	203	8250DB003069
14735	203	8250DB003070
14736	203	8250DB002041
14737	203	8250DB003071
14738	203	8250DB003072
14739	203	8250DB003073
14740	203	8250DB003074
14741	203	8250DB003075
14742	203	8250DB003076
14743	203	8250DB003077
14744	203	8250DB003084
14745	203	8250DB000469
14746	203	8250DB000470
14747	203	8250DB000471
14748	203	8250DB000472
14749	203	8250DB000473
14750	203	8250DB004705
14751	203	8250DB000475
14752	203	8220DB000476
14753	203	8220DB000477
14754	203	8220DB000478
14755	203	8220DB000479
14756	203	8220DB000480
14757	203	8220DB000481
14758	203	8220DB000482
14759	203	8220DB000483
14760	203	8220DB000485
14761	203	8220DB000487
14762	203	8220DB000488
14763	203	8220DB000489
14764	203	8220DB000490
14765	203	8220DB000491
14766	203	8220DB000492
14767	203	8220DB000493
14768	203	8220DB000494
14769	203	8220DB000495
14770	203	8220DB000400
14771	203	8220DB000281
14772	203	8220DB000004
14773	204	8220DB001174
14774	204	8220DB004725
14775	204	8220DB000273
14776	204	8220DB000405
14777	204	8220DB000408
14778	204	8220DB000409
14779	204	8220DB000410
14780	204	8220DB000411
14781	204	8220DB000412
14782	204	8220DB000413
14783	204	8220DB000414
14784	204	8220DB000415
14785	204	8220DB000416
14786	204	8220DB000417
14787	204	8220DB000418
14788	204	8220DB000419
14789	204	8220DB000420
14790	204	8220DB000421
14791	204	8220DB000422
14792	204	8220DB000423
14793	204	8220DB000424
14794	204	8250DB000425
14795	204	8250DB000426
14796	204	8250DB000427
14797	204	8250DB000428
14798	204	8250DB000429
14799	204	8250DB003032
14800	204	8250DB003033
14801	204	8250DB003034
14802	204	8250DB003036
14803	204	8250DB003037
14804	204	8250DB003038
14805	204	8250DB003039
14806	204	8250DB003040
14807	204	8250DB003041
14808	204	8250DB003042
14809	204	8250DB002035
14810	204	8250DB002036
14811	204	8250DB002040
14812	204	8250DB003047
14813	204	8250DB003202
14814	204	8250DB003203
14815	204	8250DB003204
14816	204	8250DB007641
14817	204	8250DB007642
14818	204	8250DB007643
14819	204	8250DB003214
14820	204	8250DB003215
14821	204	8250DB003216
14822	204	8250DB003217
14823	204	8250DB003218
14824	204	8250DB003219
14825	204	8250DB003220
14826	204	8250DB005046
14827	205	8310DB003333
14828	205	8310DB003334
14829	205	8310DB003352
14830	205	8310DB003335
14831	205	8310DB003336
14832	205	8310DB003337
14833	205	8310DB003338
14834	205	8310DB003339
14835	205	8240DB003340
14836	205	8240DB004324
14837	205	8240DB004769
14838	205	8240DB004770
14839	205	8240DB004765
14840	205	8240DB004766
14841	205	8240DB004767
14842	205	8240DB004768
14843	205	8240DB001845
14844	205	8240DB007166
14845	205	8220DB001847
14846	205	8220DB001696
14847	205	8220DB001697
14848	205	8220DB001698
14849	205	8220DB001699
14850	205	8220DB001700
14851	205	8220DB001701
14852	205	8220DB001702
14853	205	8220DB001703
14854	205	8220DB001905
14855	205	8220DB001906
14856	205	8220DB001907
14857	205	8220DB001908
14858	205	8220DB001909
14859	205	8220DB001713
14860	205	8220DB001714
14861	205	8220DB001715
14862	205	8220DB007453
14863	205	8220DB001478
14864	205	8220DB001479
14865	205	8220DB000315
14866	205	8220DB000404
14867	205	8220DB000747
14868	205	8220DB000748
14869	205	8220DB000749
14870	205	8220DB000750
14871	205	8220DB000751
14872	205	8220DB000752
14873	205	8220DB000753
14874	205	8220DB007370
14875	206	8220DB007333
14876	206	8220DB000783
14877	206	8220DB000784
14878	206	8220DB000785
14879	206	8220DB000786
14880	206	8220DB000793
14881	206	8220DB007586
14882	206	8220DB007587
14883	206	8220DB007588
14884	206	8220DB000329
14885	206	8220DB001443
14886	206	8220DB001444
14887	206	8220DB001445
14888	206	8220DB001647
14889	206	8220DB001648
14890	206	8220DB001649
14891	206	8220DB001911
14892	206	8220DB001913
14893	206	8220DB001914
14894	206	8220DB001805
14895	206	8220DB001806
14896	206	8220DB001660
14897	206	8220DB001661
14898	206	8220DB001662
14899	206	8220DB001664
14900	206	8220DB001665
14901	206	8220DB001666
14902	206	8220DB001807
14903	206	8240DB007167
14904	206	8240DB001808
14905	206	8240DB007389
14906	206	8240DB004324
14907	206	8240DB004769
14908	206	8240DB004770
14909	206	8240DB004765
14910	206	8240DB004766
14911	206	8240DB004767
14912	206	8240DB004768
14913	206	8240DB004325
14914	206	8310DB003328
14915	206	8310DB003329
14916	206	8310DB003330
14917	206	8310DB003331
14918	206	8310DB003351
14919	206	8310DB003332
14920	207	8220DB000395
14921	207	8220DB000396
14922	207	8220DB000397
14923	207	8220DB000398
14924	207	8220DB000399
14925	207	8220DB000400
14926	207	8220DB004522
14927	207	8220DB001934
14928	207	8220DB002310
14929	207	8220DB002311
14930	207	8220DB002312
14931	207	8220DB002313
14932	207	8220DB002314
14933	207	8220DB002315
14934	207	8220DB002094
14935	207	8220DB001406
14936	207	8220DB001407
14937	207	8220DB001409
14938	207	8220DB002095
14939	207	8220DB002096
14940	207	8220DB002097
14941	207	8220DB002099
14942	207	8220DB002101
14943	207	8220DB002102
14944	207	8220DB002103
14945	207	8220DB002332
14946	207	8220DB002333
14947	207	8230DB002334
14948	207	8230DB004662
14949	207	8230DB002335
14950	207	8230DB002336
14951	207	8230DB002337
14952	207	8230DB002339
14953	207	8230DB002420
14954	207	8230DB002421
14955	207	8230DB002423
14956	207	8230DB002424
14957	207	8230DB002447
14958	207	8230DB005133
14959	207	8230DB002596
14960	207	8230DB002611
14961	207	8230DB002602
14962	207	8230DB002613
14963	207	8230DB002614
14964	207	8230DB002615
14965	207	8230DB002535
14966	207	8230DB002536
14967	207	8230DB002616
14968	207	8230DB002617
14969	207	8230DB002557
14970	207	8230DB004436
14971	207	8230DB005008
14972	207	8230DB004640
14973	207	8230DB004347
14974	207	8230DB002349
14975	207	8230DB002351
14976	207	8230DB002558
14977	207	8230DB002559
14978	207	8230DB002560
14979	207	8230DB002561
14980	207	8230DB002562
14981	207	8230DB002564
14982	207	8230DB004927
14983	207	8230DB004928
14984	207	8230DB002352
14985	207	8230DB002573
14986	207	8230DB002574
14987	207	8230DB002575
14988	207	8230DB004929
14989	207	8230DB007460
14990	207	8230DB004930
14991	207	8230DB004931
14992	208	8230DB004713
14993	208	8230DB004714
14994	208	8230DB004960
14995	208	8230DB004932
14996	208	8230DB004933
14997	208	8230DB002590
14998	208	8230DB002591
14999	208	8230DB002592
15000	208	8230DB002357
15001	208	8230DB002566
15002	208	8230DB002567
15003	208	8230DB002568
15004	208	8230DB002569
15005	208	8230DB007550
15006	208	8230DB002570
15007	208	8230DB002571
15008	208	8230DB002359
15009	208	8230DB002360
15010	208	8230DB004348
15011	208	8230DB004646
15012	208	8230DB004647
15013	208	8230DB002346
15014	208	8230DB004435
15015	208	8230DB002604
15016	208	8230DB002605
15017	208	8230DB002538
15018	208	8230DB002606
15019	208	8230DB002607
15020	208	8230DB002608
15021	208	8230DB002609
15022	208	8230DB002610
15023	208	8230DB002554
15024	208	8230DB002425
15025	208	8230DB002426
15026	208	8230DB002427
15027	208	8230DB002428
15028	208	8230DB002429
15029	208	8230DB002430
15030	208	8230DB002371
15031	208	8230DB002372
15032	208	8230DB002373
15033	208	8230DB002377
15034	208	8220DB002378
15035	208	8220DB002183
15036	208	8220DB002184
15037	208	8220DB002185
15038	208	8220DB007043
15039	208	8220DB001424
15040	208	8220DB002186
15041	208	8220DB002187
15042	208	8220DB002188
15043	208	8220DB002189
15044	208	8220DB001436
15045	208	8220DB003952
15046	208	8220DB002190
15047	208	8220DB004434
15048	208	8220DB002379
15049	208	8220DB002380
15050	208	8220DB002382
15051	208	8220DB005099
15052	208	8220DB002383
15053	208	8220DB002002
15054	208	8220DB001358
15055	208	8220DB000340
15056	208	8220DB000350
15057	208	8220DB000351
15058	208	8220DB000352
15059	208	8220DB000353
15060	209	8230DB004713
15061	209	8230DB004714
15062	209	8230DB004960
15063	209	8230DB004932
15064	209	8230DB004933
15065	209	8230DB002590
15066	209	8230DB002591
15067	209	8230DB002592
15068	209	8230DB002357
15069	209	8230DB002566
15070	209	8230DB002567
15071	209	8230DB002568
15072	209	8230DB002569
15073	209	8230DB002570
15074	209	8230DB007222
15075	209	8230DB006170
15076	209	8230DB005023
15077	209	8230DB005024
15078	209	8230DB005161
15079	209	8230DB005162
15080	209	8230DB004880
15081	209	8230DB002606
15082	209	8230DB002607
15083	209	8230DB002608
15084	209	8230DB002609
15085	209	8230DB002610
15086	209	8230DB002554
15087	209	8230DB002425
15088	209	8230DB002426
15089	209	8230DB002427
15090	209	8230DB002428
15091	209	8230DB002429
15092	209	8230DB002430
15093	209	8230DB002371
15094	209	8230DB002372
15095	209	8230DB002373
15096	209	8220DB001424
15097	209	8220DB002190
15098	209	8220DB004434
15099	209	8220DB002379
15100	209	8220DB002380
15101	209	8220DB002382
15102	209	8220DB005099
15103	209	8220DB002383
15104	209	8220DB002002
15105	209	8220DB001358
15106	209	8220DB005192
15107	209	8220DB000350
15108	209	8220DB002809
15109	209	8220DB002810
15110	209	8220DB000750
15111	209	8220DB000751
15112	209	8220DB000752
15113	209	8220DB000753
15114	209	8220DB000754
15115	209	8220DB000755
15116	209	8220DB000756
15117	209	8220DB000757
15118	209	8220DB000758
15119	209	8220DB000759
15120	209	8220DB000760
15121	209	8220DB000761
15122	209	8220DB000762
15123	209	8220DB000763
15124	210	8220DB000326
15125	210	8220DB001443
15126	210	8220DB001444
15127	210	8220DB001445
15128	210	8220DB004407
15129	210	8220DB002637
15130	210	8220DB002638
15131	210	8220DB002640
15132	210	8220DB002641
15133	210	8220DB002643
15134	210	8220DB002644
15135	210	8220DB002645
15136	210	8220DB002646
15137	210	8220DB002647
15138	210	8220DB002648
15139	210	8220DB002649
15140	210	8220DB002650
15141	210	8220DB002652
15142	210	8220DB002653
15143	210	8220DB002654
15144	210	8220DB002655
15145	210	8220DB002656
15146	210	8220DB002657
15147	210	8220DB002658
15148	210	8220DB002659
15149	210	8220DB002660
15150	210	8220DB002661
15151	210	8220DB002662
15152	210	8220DB002909
15153	210	8220DB002906
15154	210	8220DB002907
15155	211	8220DB002670
15156	211	8220DB002910
15157	211	8220DB002911
15158	211	8220DB007507
15159	211	8220DB002663
15160	211	8220DB002664
15161	211	8220DB002665
15162	211	8220DB002666
15163	211	8220DB002667
15164	211	8220DB002696
15165	211	8220DB002697
15166	211	8220DB002700
15167	211	8220DB002701
15168	211	8220DB002702
15169	211	8220DB002703
15170	211	8220DB002704
15171	211	8220DB002706
15172	211	8220DB006070
15173	211	8220DB002708
15174	211	8220DB005134
15175	211	8220DB002718
15176	211	8220DB002719
15177	211	8220DB007435
15178	211	8220DB002722
15179	211	8220DB004413
15180	211	8220DB001476
15181	211	8220DB007453
15182	211	8220DB001480
15183	211	8220DB002912
15184	211	8220DB001358
15185	212	8220DB000326
15186	212	8220DB001443
15187	212	8220DB001444
15188	212	8220DB001445
15189	212	8220DB004407
15190	212	8220DB002637
15191	212	8220DB002638
15192	212	8220DB002721
15193	212	8220DB007012
15194	212	8220DB002644
15195	212	8220DB002645
15196	212	8220DB002646
15197	212	8220DB002647
15198	212	8220DB002648
15199	212	8220DB002649
15200	212	8220DB002650
15201	212	8220DB002652
15202	212	8220DB002653
15203	212	8220DB002654
15204	212	8220DB002655
15205	212	8220DB002656
15206	212	8220DB002657
15207	212	8220DB002658
15208	212	8220DB002659
15209	212	8220DB002660
15210	212	8220DB002661
15211	212	8220DB002662
15212	212	8220DB002909
15213	212	8220DB006020
15214	212	8220DB006023
15215	212	8220DB006026
15216	212	8220DB006027
15217	213	8220DB006030
15218	213	8220DB006028
15219	213	8220DB006025
15220	213	8220DB006024
15221	213	8220DB006021
15222	213	8220DB007507
15223	213	8220DB002663
15224	213	8220DB002664
15225	213	8220DB002665
15226	213	8220DB002666
15227	213	8220DB002667
15228	213	8220DB002696
15229	213	8220DB002697
15230	213	8220DB002700
15231	213	8220DB002701
15232	213	8220DB002702
15233	213	8220DB002703
15234	213	8220DB002704
15235	213	8220DB002706
15236	213	8220DB006070
15237	213	8220DB002708
15238	213	8220DB005134
15239	213	8220DB002718
15240	213	8220DB007435
15241	213	8220DB002722
15242	213	8220DB004413
15243	213	8220DB001476
15244	213	8220DB007453
15245	213	8220DB001480
15246	213	8220DB002912
15247	213	8220DB001358
15248	214	8250DB003222
15249	214	8250DB003223
15250	214	8250DB003224
15251	214	8250DB003225
15252	214	8250DB003226
15253	214	8250DB003227
15254	214	8250DB003228
15255	214	8250DB003229
15256	214	8250DB007472
15257	214	8250DB003230
15258	214	8250DB003232
15259	214	8250DB003233
15260	214	8250DB003234
15261	214	8250DB004462
15262	214	8250DB003235
15263	214	8250DB003236
15264	214	8250DB003237
15265	214	8250DB003238
15266	214	8250DB003239
15267	214	8250DB003240
15268	214	8250DB003068
15269	214	8250DB003069
15270	214	8250DB003070
15271	214	8250DB002041
15272	214	8250DB003071
15273	214	8250DB003072
15274	214	8250DB003073
15275	214	8250DB003074
15276	214	8250DB003075
15277	214	8250DB003076
15278	214	8250DB003077
15279	214	8250DB003079
15280	214	8250DB003080
15281	214	8250DB003081
15282	214	8250DB003084
15283	214	8250DB000469
15284	214	8250DB000470
15285	214	8250DB000471
15286	214	8250DB000472
15287	214	8250DB000473
15288	214	8250DB004705
15289	214	8250DB000475
15290	214	8220DB000476
15291	214	8220DB000477
15292	214	8220DB000478
15293	214	8220DB000479
15294	214	8220DB000480
15295	214	8220DB000481
15296	214	8220DB000482
15297	214	8220DB000483
15298	214	8220DB000485
15299	214	8220DB000487
15300	214	8220DB000488
15301	214	8220DB000489
15302	214	8220DB000490
15303	214	8220DB000491
15304	214	8220DB000492
15305	214	8220DB000493
15306	214	8220DB000494
15307	214	8220DB000495
15308	214	8220DB000400
15309	214	8220DB000281
15310	214	8220DB000004
15311	215	8250DB003222
15312	215	8250DB003223
15313	215	8250DB003224
15314	215	8250DB003225
15315	215	8250DB003226
15316	215	8250DB003227
15317	215	8250DB003228
15318	215	8250DB003229
15319	215	8250DB007472
15320	215	8250DB003230
15321	215	8250DB003232
15322	215	8250DB003233
15323	215	8250DB003234
15324	215	8250DB004462
15325	215	8250DB003235
15326	215	8250DB003236
15327	215	8250DB003237
15328	215	8250DB003238
15329	215	8250DB003239
15330	215	8250DB003240
15331	215	8250DB003068
15332	215	8250DB003069
15333	215	8250DB003070
15334	215	8250DB002041
15335	215	8250DB003071
15336	215	8250DB003072
15337	215	8250DB003073
15338	215	8250DB003074
15339	215	8250DB003075
15340	215	8250DB003076
15341	215	8250DB003077
15342	215	8250DB003079
15343	215	8250DB003080
15344	215	8250DB003081
15345	215	8250DB003084
15346	215	8250DB000469
15347	215	8250DB000470
15348	215	8250DB000471
15349	215	8250DB000472
15350	215	8250DB000473
15351	215	8250DB004705
15352	215	8250DB000475
15353	215	8220DB000476
15354	215	8220DB000477
15355	215	8220DB000478
15356	215	8220DB000479
15357	215	8220DB000480
15358	215	8220DB000481
15359	215	8220DB000482
15360	215	8220DB000483
15361	215	8220DB000485
15362	215	8220DB000487
15363	215	8220DB000488
15364	215	8220DB000489
15365	215	8220DB000490
15366	215	8220DB000491
15367	215	8220DB000492
15368	215	8220DB000493
15369	215	8220DB000494
15370	215	8220DB000495
15371	215	8220DB000400
15372	215	8220DB000281
15373	216	8220DB004962
15374	216	8220DB006059
15375	216	8220DB000334
15376	216	8220DB000406
15377	216	8220DB000747
15378	216	8220DB000842
15379	216	8220DB000845
15380	216	8220DB000846
15381	216	8220DB000847
15382	216	8220DB000848
15383	216	8220DB002795
15384	216	8220DB000756
15385	216	8220DB000757
15386	216	8220DB000758
15387	216	8220DB000759
15388	216	8220DB000760
15389	216	8220DB000761
15390	216	8220DB000762
15391	216	8220DB000763
15392	216	8250DB002007
15393	216	8250DB002008
15394	216	8250DB002009
15395	216	8250DB002010
15396	216	8250DB000435
15397	216	8250DB007353
15398	216	8250DB007584
15399	216	8250DB003344
15400	216	8250DB007421
15401	216	8250DB007422
15402	216	8250DB006085
15403	216	8250DB002053
15404	216	8250DB002054
15405	216	8250DB002055
15406	216	8250DB004732
15407	216	8250DB003243
15408	216	8250DB003244
15409	216	8250DB003245
15410	216	8250DB003212
15411	216	8250DB003213
15412	216	8250DB003214
15413	216	8250DB003215
15414	216	8250DB003216
15415	216	8250DB003217
15416	216	8250DB003218
15417	216	8250DB003219
15418	216	8250DB003537
15419	216	8250DB003538
15420	216	8250DB007556
15421	216	8250DB003539
15422	216	8250DB003540
15423	216	8250DB003541
15424	216	8250DB003542
15425	217	8250DB003544
15426	217	8250DB003552
15427	217	8250DB003553
15428	217	8250DB003554
15429	217	8250DB003555
15430	217	8250DB003556
15431	217	8250DB003557
15432	217	8250DB007317
15433	217	8250DB003224
15434	217	8250DB003225
15435	217	8250DB003226
15436	217	8250DB003227
15437	217	8250DB003228
15438	217	8250DB003229
15439	217	8250DB007472
15440	217	8250DB003230
15441	217	8250DB003231
15442	217	8250DB003246
15443	217	8250DB003247
15444	217	8250DB007056
15445	217	8250DB004731
15446	217	8250DB002023
15447	217	8250DB002024
15448	217	8250DB002025
15449	217	8250DB006086
15450	217	8250DB007419
15451	217	8250DB007420
15452	217	8250DB003345
15453	217	8250DB004727
15454	217	8250DB004728
15455	217	8250DB000461
15456	217	8250DB002068
15457	217	8250DB002069
15458	217	8250DB002070
15459	217	8250DB002084
15460	217	8250DB000768
15461	217	8220DB000769
15462	217	8220DB000770
15463	217	8220DB000771
15464	217	8220DB000772
15465	217	8220DB000773
15466	217	8220DB000774
15467	217	8220DB000775
15468	217	8220DB000776
15469	217	8220DB000777
15470	217	8220DB000906
15471	217	8220DB000907
15472	217	8220DB000908
15473	217	8220DB000909
15474	217	8220DB000786
15475	217	8220DB000792
15476	217	8220DB007586
15477	217	8220DB007587
15478	217	8220DB000345
15479	217	8220DB000320
15480	217	8220DB000281
15481	217	8220DB000004
15482	218	8250DB003057
15483	218	8250DB004830
15484	218	8250DB007667
15485	218	8250DB003091
15486	218	8250DB003092
15487	218	8250DB003093
15488	218	8250DB003535
15489	218	8250DB003536
15490	218	8250DB003537
15491	218	8250DB003538
15492	218	8250DB007556
15493	218	8250DB003539
15494	218	8250DB003540
15495	218	8250DB003541
15496	218	8250DB003542
15497	218	8250DB003543
15498	218	8250DB003141
15499	218	8250DB003142
15500	218	8250DB003224
15501	218	8250DB003225
15502	218	8250DB003226
15503	218	8250DB003227
15504	218	8250DB003228
15505	218	8250DB003229
15506	218	8250DB007472
15507	218	8250DB003230
15508	218	8250DB003232
15509	218	8250DB003233
15510	218	8250DB003234
15511	218	8250DB004462
15512	218	8250DB003235
15513	218	8250DB003236
15514	218	8250DB003237
15515	218	8250DB003238
15516	218	8250DB003239
15517	218	8250DB003240
15518	218	8250DB003068
15519	218	8250DB003069
15520	218	8250DB003070
15521	218	8250DB002041
15522	218	8250DB003071
15523	218	8250DB003072
15524	218	8250DB003073
15525	218	8250DB003074
15526	218	8250DB003075
15527	218	8250DB003076
15528	218	8250DB003077
15529	218	8250DB003084
15530	218	8250DB000469
15531	218	8250DB000470
15532	218	8250DB000471
15533	218	8250DB000472
15534	218	8250DB000473
15535	218	8250DB004705
15536	218	8250DB000475
15537	218	8220DB000476
15538	218	8220DB000477
15539	218	8220DB000478
15540	218	8220DB007053
15541	218	8220DB002088
15542	218	8220DB002089
15543	218	8220DB000770
15544	218	8220DB000771
15545	218	8220DB000772
15546	218	8220DB000417
15547	218	8220DB000485
15548	218	8220DB000487
15549	218	8220DB000488
15550	218	8220DB000489
15551	218	8220DB000490
15552	218	8220DB000491
15553	218	8220DB000492
15554	218	8220DB000493
15555	218	8220DB000494
15556	218	8220DB000495
15557	218	8220DB007587
15558	218	8220DB000345
15559	218	8220DB000320
15560	218	8220DB000281
15561	218	8220DB000004
15562	219	8250DB003057
15563	219	8250DB003059
15564	219	8250DB003060
15565	219	8250DB003061
15566	219	8250DB003062
15567	219	8250DB003063
15568	219	8250DB003064
15569	219	8250DB003065
15570	219	8250DB003066
15571	219	8250DB003067
15572	219	8250DB003202
15573	219	8250DB003203
15574	219	8250DB003204
15575	219	8250DB007554
15576	219	8250DB004568
15577	219	8250DB004569
15578	219	8250DB002023
15579	219	8250DB002024
15580	219	8250DB002025
15581	219	8250DB006086
15582	219	8250DB007419
15583	219	8250DB007420
15584	219	8250DB003345
15585	219	8250DB004727
15586	219	8250DB004728
15587	219	8250DB000461
15588	219	8250DB002068
15589	219	8250DB002069
15590	219	8250DB002070
15591	219	8250DB002084
15592	219	8250DB000768
15593	219	8220DB000769
15594	219	8220DB000770
15595	219	8220DB000771
15596	219	8220DB000772
15597	219	8220DB000773
15598	219	8220DB000774
15599	219	8220DB000775
15600	219	8220DB000776
15601	219	8220DB000777
15602	219	8220DB000906
15603	219	8220DB000907
15604	219	8220DB000908
15605	219	8220DB000909
15606	219	8220DB000786
15607	219	8220DB000792
15608	219	8220DB007586
15609	219	8220DB007587
15610	219	8220DB000345
15611	219	8220DB000320
15612	219	8220DB000281
15613	219	8220DB000004
15614	219	8220DB007555
15615	220	8220DB002492
15616	220	8220DB002493
15617	220	8220DB002465
15618	220	8220DB002466
15619	220	8220DB002467
15620	220	8220DB002494
15621	220	8220DB002495
15622	220	8220DB002496
15623	220	8220DB002497
15624	220	8220DB002471
15625	220	8220DB002472
15626	220	8220DB002473
15627	220	8220DB002474
15628	220	8220DB002475
15629	220	8220DB002476
15630	220	8220DB002477
15631	220	8220DB002478
15632	220	8220DB001170
15633	220	8220DB001069
15634	220	8220DB001070
15635	220	8220DB001071
15636	220	8220DB004528
15637	220	8220DB001072
15638	220	8220DB001352
15639	220	8220DB001353
15640	220	8220DB001355
15641	220	8220DB001357
15642	220	8220DB001359
15643	220	8220DB000319
15644	220	8220DB001443
15645	220	8220DB001616
15646	220	8220DB001617
15647	220	8220DB001618
15648	220	8220DB001619
15649	220	8220DB000195
15650	220	8220DB000196
15651	220	8220DB000197
15652	220	8220DB000198
15653	220	8220DB000199
15654	220	8220DB000200
15655	220	8220DB000201
15656	220	8220DB000202
15657	220	8220DB000151
15658	220	8220DB000153
15659	220	8220DB000154
15660	220	8220DB000155
15661	220	8220DB000156
15662	220	8220DB007430
15663	220	8220DB000177
15664	220	8220DB000178
15665	220	8220DB001539
15666	220	8220DB001540
15667	220	8220DB007426
15668	220	8220DB007427
15669	220	8220DB007428
15670	220	8220DB000138
15671	220	8220DB000133
15672	220	8220DB000134
15673	220	8220DB004890
15674	220	8220DB004369
15675	220	8240DB006219
15676	220	8240DB006229
15677	220	8240DB006348
15678	220	8240DB001182
15679	220	8240DB001550
15680	220	8240DB001551
15681	220	8240DB001552
15682	221	8240DB000324
15683	221	8240DB001555
15684	221	8240DB001556
15685	221	8240DB001557
15686	221	8240DB001181
15687	221	8240DB007350
15688	221	8240DB006230
15689	221	8240DB006228
15690	221	8220DB004788
15691	221	8220DB006273
15692	221	8220DB004891
15693	221	8220DB007458
15694	221	8220DB007425
15695	221	8220DB007424
15696	221	8220DB007423
15697	221	8220DB001566
15698	221	8220DB001567
15699	221	8220DB004372
15700	221	8220DB000179
15701	221	8220DB007431
15702	221	8220DB000175
15703	221	8220DB000176
15704	221	8220DB000181
15705	221	8220DB000182
15706	221	8220DB000183
15707	221	8220DB000184
15708	221	8220DB000185
15709	221	8220DB000186
15710	221	8220DB000187
15711	221	8220DB000188
15712	221	8220DB000189
15713	221	8220DB000190
15714	221	8220DB001614
15715	221	8220DB001615
15716	221	8220DB001478
15717	221	8220DB001479
15718	221	8220DB000315
15719	221	8220DB000336
15720	221	8220DB001279
15721	221	8220DB001283
15722	221	8220DB004456
15723	221	8220DB001284
15724	221	8220DB001285
15725	221	8220DB001016
15726	221	8220DB001017
15727	221	8220DB001018
15728	221	8220DB001019
15729	221	8220DB001020
15730	221	8220DB001076
15731	221	8220DB001077
15732	221	8220DB002479
15733	221	8220DB002480
15734	221	8220DB002481
15735	221	8220DB002482
15736	221	8220DB002483
15737	221	8220DB002484
15738	221	8220DB002485
15739	221	8220DB002486
15740	221	8220DB002487
15741	221	8220DB002488
15742	221	8220DB002489
15743	221	8220DB002448
15744	221	8220DB005026
15745	221	8220DB002450
15746	221	8220DB002490
15747	221	8220DB002491
15748	222	8220DB002492
15749	222	8220DB002493
15750	222	8220DB002465
15751	222	8220DB002466
15752	222	8220DB002467
15753	222	8220DB002494
15754	222	8220DB002495
15755	222	8220DB002496
15756	222	8220DB002497
15757	222	8220DB002471
15758	222	8220DB002472
15759	222	8220DB002473
15760	222	8220DB002474
15761	222	8220DB002475
15762	222	8220DB002476
15763	222	8220DB002477
15764	222	8220DB002478
15765	222	8220DB001170
15766	222	8220DB001069
15767	222	8220DB001070
15768	222	8220DB001071
15769	222	8220DB004528
15770	222	8220DB001072
15771	222	8220DB001352
15772	222	8220DB001353
15773	222	8220DB001355
15774	222	8220DB001357
15775	222	8220DB001359
15776	222	8220DB000319
15777	222	8220DB001443
15778	222	8220DB001616
15779	222	8220DB001617
15780	222	8220DB001618
15781	222	8220DB001619
15782	222	8220DB000195
15783	222	8220DB000196
15784	222	8220DB000197
15785	222	8220DB000198
15786	222	8220DB000199
15787	222	8220DB000200
15788	222	8220DB000201
15789	222	8220DB000202
15790	222	8220DB000151
15791	222	8220DB000153
15792	222	8220DB000154
15793	222	8220DB000155
15794	222	8220DB000156
15795	222	8220DB000157
15796	222	8220DB000158
15797	222	8220DB000159
15798	222	8220DB001539
15799	222	8220DB001540
15800	222	8220DB007426
15801	222	8220DB007427
15802	222	8220DB007428
15803	222	8220DB000138
15804	222	8220DB000133
15805	222	8220DB000134
15806	222	8220DB004890
15807	222	8220DB004369
15808	222	8240DB006219
15809	222	8240DB006229
15810	222	8240DB006348
15811	222	8240DB001182
15812	222	8240DB001550
15813	222	8240DB001551
15814	222	8240DB001552
15815	223	8240DB000324
15816	223	8240DB001555
15817	223	8240DB001556
15818	223	8240DB001557
15819	223	8240DB001181
15820	223	8240DB007350
15821	223	8240DB006230
15822	223	8240DB006228
15823	223	8220DB004788
15824	223	8220DB006273
15825	223	8220DB004891
15826	223	8220DB007458
15827	223	8220DB007425
15828	223	8220DB007424
15829	223	8220DB007423
15830	223	8220DB001566
15831	223	8220DB001567
15832	223	8220DB000173
15833	223	8220DB000174
15834	223	8220DB000175
15835	223	8220DB000176
15836	223	8220DB000181
15837	223	8220DB000182
15838	223	8220DB000183
15839	223	8220DB000184
15840	223	8220DB000185
15841	223	8220DB000186
15842	223	8220DB000187
15843	223	8220DB000188
15844	223	8220DB000189
15845	223	8220DB000190
15846	223	8220DB001614
15847	223	8220DB001615
15848	223	8220DB001478
15849	223	8220DB001479
15850	223	8220DB000315
15851	223	8220DB000336
15852	223	8220DB001279
15853	223	8220DB001283
15854	223	8220DB004456
15855	223	8220DB001284
15856	223	8220DB001285
15857	223	8220DB001016
15858	223	8220DB001017
15859	223	8220DB001018
15860	223	8220DB001019
15861	223	8220DB001020
15862	223	8220DB001076
15863	223	8220DB001077
15864	223	8220DB002479
15865	223	8220DB002480
15866	223	8220DB002481
15867	223	8220DB002482
15868	223	8220DB002483
15869	223	8220DB002484
15870	223	8220DB002485
15871	223	8220DB002486
15872	223	8220DB002487
15873	223	8220DB002488
15874	223	8220DB002489
15875	223	8220DB002448
15876	223	8220DB005026
15877	223	8220DB002450
15878	223	8220DB002490
15879	223	8220DB002491
15880	224	8350DB004260
15881	224	8350DB004261
15882	224	8350DB007271
15883	224	8350DB005136
15884	224	8350DB004262
15885	224	8350DB004263
15886	224	8350DB004264
15887	224	8350DB007296
15888	224	8350DB004265
15889	224	8350DB004266
15890	224	8350DB004307
15891	224	8350DB004308
15892	224	8350DB004267
15893	224	8350DB004268
15894	224	8350DB004269
15895	224	8350DB004270
15896	224	8350DB004271
15897	224	8350DB004273
15898	224	8350DB004274
15899	224	8350DB004275
15900	224	8350DB004276
15901	224	8350DB004277
15902	224	8350DB004278
15903	224	8350DB004279
15904	224	8350DB004280
15905	224	8350DB004281
15906	224	8350DB004282
15907	224	8350DB004283
15908	224	8350DB004284
15909	224	8350DB004285
15910	224	8350DB004286
15911	224	8350DB004287
15912	224	8350DB004288
15913	224	8350DB004295
15914	224	8350DB004296
15915	224	8350DB004297
15916	224	8350DB004299
15917	224	8350DB004300
15918	224	8350DB004301
15919	224	8350DB004302
15920	224	8350DB005135
15921	224	8350DB004303
15922	224	8350DB004304
15923	224	8350DB004148
15924	224	8350DB004149
15925	224	8350DB003045
15926	224	8350DB004150
15927	224	8350DB004151
15928	224	8350DB004156
15929	224	8350DB004168
15930	224	8350DB004170
15931	224	8350DB004153
15932	224	8350DB004154
15933	224	8350DB004416
15934	224	8350DB004201
15935	224	8250DB004202
15936	224	8250DB004203
15937	224	8250DB004204
15938	224	8250DB004205
15939	224	8250DB004206
15940	224	8250DB003140
15941	224	8250DB003141
15942	224	8250DB003142
15943	224	8250DB003143
15944	224	8250DB003144
15945	224	8250DB007639
15946	224	8250DB007640
15947	224	8250DB005047
15948	224	8250DB003146
15949	224	8250DB003147
15950	224	8250DB003148
15951	224	8250DB003149
15952	224	8250DB003150
15953	224	8250DB003151
15954	224	8250DB003153
15955	224	8250DB003152
15956	224	8250DB002995
15957	224	8250DB003154
15958	224	8250DB003155
15959	224	8250DB003156
15960	224	8250DB003158
15961	224	8250DB003159
15962	224	8250DB003160
15963	224	8250DB003161
15964	224	8250DB003162
15965	224	8250DB003163
15966	224	8250DB003164
15967	224	8250DB003079
15968	224	8250DB003080
15969	224	8250DB003081
15970	225	8250DB007188
15971	225	8250DB003082
15972	225	8250DB007660
15973	225	8250DB003114
15974	225	8250DB003115
15975	225	8250DB003116
15976	225	8250DB003117
15977	225	8250DB003118
15978	225	8250DB003119
15979	225	8250DB003120
15980	225	8250DB003122
15981	225	8250DB003123
15982	225	8250DB003124
15983	225	8250DB003125
15984	225	8250DB003126
15985	225	8250DB003127
15986	225	8250DB003128
15987	225	8250DB003130
15988	225	8250DB003131
15989	225	8250DB003132
15990	225	8250DB003133
15991	225	8250DB005046
15992	225	8250DB007639
15993	225	8250DB007640
15994	225	8250DB003134
15995	225	8250DB003135
15996	225	8250DB003136
15997	225	8250DB003138
15998	225	8250DB003139
15999	225	8250DB004124
16000	225	8250DB004125
16001	225	8250DB004126
16002	225	8250DB004127
16003	225	8250DB004128
16004	225	8350DB004129
16005	225	8350DB004130
16006	225	8350DB004131
16007	225	8350DB007294
16008	225	8350DB004156
16009	225	8350DB004168
16010	225	8350DB004170
16011	225	8350DB004132
16012	225	8350DB004134
16013	225	8350DB004135
16014	225	8350DB004136
16015	225	8350DB004207
16016	225	8350DB004208
16017	225	8350DB004209
16018	225	8350DB004210
16019	225	8350DB004211
16020	225	8350DB004212
16021	225	8350DB004213
16022	225	8350DB005139
16023	225	8350DB004214
16024	225	8350DB004215
16025	225	8350DB004216
16026	225	8350DB004217
16027	225	8350DB004218
16028	225	8350DB004219
16029	225	8350DB004220
16030	225	8350DB004221
16031	225	8350DB004222
16032	225	8350DB004224
16033	225	8350DB004225
16034	225	8350DB004226
16035	225	8350DB004227
16036	225	8350DB004228
16037	225	8350DB004229
16038	225	8350DB004230
16039	225	8350DB004231
16040	225	8350DB007352
16041	225	8350DB004246
16042	225	8350DB004248
16043	225	8350DB004249
16044	225	8350DB004250
16045	225	8350DB004251
16046	225	8350DB004252
16047	225	8350DB004253
16048	225	8350DB004305
16049	225	8350DB004306
16050	225	8350DB004309
16051	225	8350DB004254
16052	225	8350DB006137
16053	225	8350DB004256
16054	225	8350DB004257
16055	225	8350DB004258
16056	225	8350DB004259
16057	225	8350DB007272
16058	226	8350DB004168
16059	226	8350DB004170
16060	226	8350DB004153
16061	226	8350DB004154
16062	226	8350DB004416
16063	226	8350DB004201
16064	226	8250DB004202
16065	226	8250DB004203
16066	226	8250DB004204
16067	226	8250DB004205
16068	226	8250DB004206
16069	226	8250DB003140
16070	226	8250DB003141
16071	226	8250DB003142
16072	226	8250DB003143
16073	226	8250DB003144
16074	226	8250DB007639
16075	226	8250DB007640
16076	226	8250DB005047
16077	226	8250DB003146
16078	226	8250DB003147
16079	226	8250DB003148
16080	226	8250DB003149
16081	226	8250DB003150
16082	226	8250DB003151
16083	226	8250DB003153
16084	226	8250DB003152
16085	226	8250DB002995
16086	226	8250DB003154
16087	226	8250DB003155
16088	226	8250DB003156
16089	226	8250DB003158
16090	226	8250DB003159
16091	226	8250DB003160
16092	226	8250DB003161
16093	226	8250DB003162
16094	226	8250DB003163
16095	226	8250DB003164
16096	226	8250DB003079
16097	226	8250DB003080
16098	226	8250DB003082
16099	226	8250DB003084
16100	226	8250DB000469
16101	226	8250DB000470
16102	226	8250DB000471
16103	226	8250DB000472
16104	226	8250DB000473
16105	226	8250DB004705
16106	226	8250DB000475
16107	226	8220DB000476
16108	226	8220DB000477
16109	227	8350DB004168
16110	227	8350DB004170
16111	227	8350DB004153
16112	227	8350DB004154
16113	227	8350DB004416
16114	227	8350DB004201
16115	227	8250DB004202
16116	227	8250DB004203
16117	227	8250DB004204
16118	227	8250DB004205
16119	227	8250DB004206
16120	227	8250DB003140
16121	227	8250DB003141
16122	227	8250DB003142
16123	227	8250DB003143
16124	227	8250DB003144
16125	227	8250DB007639
16126	227	8250DB007640
16127	227	8250DB005047
16128	227	8250DB003146
16129	227	8250DB003147
16130	227	8250DB003148
16131	227	8250DB003149
16132	227	8250DB003150
16133	227	8250DB003151
16134	227	8250DB003153
16135	227	8250DB003152
16136	227	8250DB002995
16137	227	8250DB003154
16138	227	8250DB003155
16139	227	8250DB003156
16140	227	8250DB003158
16141	227	8250DB003159
16142	227	8250DB003160
16143	227	8250DB003161
16144	227	8250DB003162
16145	227	8250DB003163
16146	227	8250DB003164
16147	228	8350DB004260
16148	228	8350DB007296
16149	228	8350DB004266
16150	228	8350DB004253
16151	228	8350DB004268
16152	228	8350DB004273
16153	228	8350DB004277
16154	228	8350DB007462
16155	228	8350DB007461
16156	228	8350DB004281
16157	228	8350DB004282
16158	228	8350DB004283
16159	228	8350DB004284
16160	228	8350DB004295
16161	228	8350DB004296
16162	228	8350DB004301
16163	228	8350DB004302
16164	228	8350DB004591
16165	228	8350DB004590
16166	228	8350DB007366
16167	228	8350DB007367
16168	228	8350DB007368
16169	228	8250DB003143
16170	228	8250DB003144
16171	228	8250DB003145
16172	228	8250DB005128
16173	228	8250DB002060
16174	228	8250DB002062
16175	228	8250DB002064
16176	228	8250DB004727
16177	228	8250DB000768
16178	228	8220DB000772
16179	228	8220DB000775
16180	228	8220DB000906
16181	228	8220DB000909
16182	228	8220DB000792
16183	228	8220DB007586
16184	228	8220DB007587
16185	229	8350DB004307
16186	229	8350DB004308
16187	229	8350DB004253
16188	229	8350DB004268
16189	229	8350DB004273
16190	229	8350DB004277
16191	229	8350DB007462
16192	229	8350DB007461
16193	229	8350DB004281
16194	229	8350DB004282
16195	229	8350DB004283
16196	229	8350DB004284
16197	229	8350DB004295
16198	229	8350DB004296
16199	229	8350DB004301
16200	229	8350DB004302
16201	229	8350DB004591
16202	229	8350DB004590
16203	229	8350DB007366
16204	229	8350DB007367
16205	229	8350DB007368
16206	229	8250DB003143
16207	229	8250DB003144
16208	229	8250DB003145
16209	229	8250DB005128
16210	229	8250DB002060
16211	229	8250DB002062
16212	229	8250DB002064
16213	229	8250DB004727
16214	229	8250DB000768
16215	229	8220DB000772
16216	229	8220DB000775
16217	229	8220DB000906
16218	229	8220DB000909
16219	229	8220DB000792
16220	229	8220DB007586
16221	229	8220DB007587
16222	230	8230DB004392
16223	230	8230DB002458
16224	230	8230DB002446
16225	230	8230DB002459
16226	230	8230DB002460
16227	230	8230DB002461
16228	230	8220DB002462
16229	230	8220DB002463
16230	230	8220DB002431
16231	230	8220DB002432
16232	230	8220DB002433
16233	230	8220DB002434
16234	230	8220DB002435
16235	230	8220DB002436
16236	230	8220DB002437
16237	230	8220DB002438
16238	230	8220DB002439
16239	230	8220DB002440
16240	230	8220DB002441
16241	230	8220DB002442
16242	230	8220DB002443
16243	230	8220DB002444
16244	230	8220DB001344
16245	230	8220DB001345
16246	230	8220DB001347
16247	230	8220DB001348
16248	230	8220DB001349
16249	230	8220DB001350
16250	230	8220DB001352
16251	230	8220DB001353
16252	230	8220DB001355
16253	230	8220DB001357
16254	230	8220DB001359
16255	230	8220DB000319
16256	230	8220DB000281
16257	230	8220DB000004
16258	230	8220DB000194
16259	230	8220DB000195
16260	230	8220DB000196
16261	230	8220DB000197
16262	230	8220DB000198
16263	230	8220DB000199
16264	230	8220DB000200
16265	230	8220DB000201
16266	230	8220DB000148
16267	230	8220DB000149
16268	230	8220DB000150
16269	230	8220DB000027
16270	230	8220DB000028
16271	230	8220DB000029
16272	230	8220DB004680
16273	230	8220DB000090
16274	230	8220DB000091
16275	230	8220DB000129
16276	230	8220DB000130
16277	230	8220DB000131
16278	230	8220DB000164
16279	230	8220DB000165
16280	230	8220DB000166
16281	230	8220DB007458
16282	230	8220DB004479
16283	230	8220DB004376
16284	230	8220DB004377
16285	230	8220DB004890
16286	230	8220DB004369
16287	230	8240DB006219
16288	230	8240DB006229
16289	231	8240DB007132
16290	231	8240DB006230
16291	231	8240DB006228
16292	231	8220DB004788
16293	231	8220DB006273
16294	231	8220DB000136
16295	231	8220DB000137
16296	231	8220DB000193
16297	231	8220DB000138
16298	231	8220DB000167
16299	231	8220DB000168
16300	231	8220DB000169
16301	231	8220DB000141
16302	231	8220DB000142
16303	231	8220DB000143
16304	231	8220DB000115
16305	231	8220DB000037
16306	231	8220DB000038
16307	231	8220DB000039
16308	231	8220DB000040
16309	231	8220DB000146
16310	231	8220DB000147
16311	231	8220DB000184
16312	231	8220DB000185
16313	231	8220DB000186
16314	231	8220DB000187
16315	231	8220DB000188
16316	231	8220DB000189
16317	231	8220DB000190
16318	231	8220DB000191
16319	231	8220DB000819
16320	231	8220DB000263
16321	231	8220DB000277
16322	231	8220DB000336
16323	231	8220DB001278
16324	231	8220DB001282
16325	231	8220DB004456
16326	231	8220DB001284
16327	231	8220DB001285
16328	231	8220DB001286
16329	231	8220DB001288
16330	231	8220DB001289
16331	231	8220DB001290
16332	231	8220DB001291
16333	231	8220DB002389
16334	231	8220DB002390
16335	231	8220DB002391
16336	231	8220DB002392
16337	231	8220DB002393
16338	231	8220DB002394
16339	231	8220DB001090
16340	231	8220DB002413
16341	231	8220DB002414
16342	231	8220DB002415
16343	231	8220DB002416
16344	231	8220DB002417
16345	231	8220DB002418
16346	231	8220DB002419
16347	231	8220DB002452
16348	231	8220DB002453
16349	231	8230DB002454
16350	231	8230DB002455
16351	231	8230DB002456
16352	231	8230DB002445
16353	231	8230DB002457
16354	232	8220DB000381
16355	232	8220DB007740
16356	232	8220DB007741
16357	232	8220DB000387
16358	232	8220DB000388
16359	232	8220DB000389
16360	232	8220DB000393
16361	232	8220DB000371
16362	232	8220DB000391
16363	232	8220DB000392
16364	232	8220DB000395
16365	232	8220DB000396
16366	232	8220DB000397
16367	232	8220DB000398
16368	232	8220DB000399
16369	232	8220DB007859
16370	232	8220DB007732
16371	232	8220DB007392
16372	232	8220DB000312
16373	232	8220DB007857
16374	232	8220DB007855
16375	232	8220DB004407
16376	232	8220DB002637
16377	232	8220DB002721
16378	232	8220DB007012
16379	232	8230DB002201
16380	232	8230DB007239
16381	232	8230DB004401
16382	232	8230DB002213
16383	232	8230DB002214
16384	232	8230DB002215
16385	232	8230DB002216
16386	232	8230DB004599
16387	232	8230DB004601
16388	232	8230DB005058
16389	232	8230DB004602
16390	232	8230DB004603
16391	232	8230DB004604
16392	232	8230DB004605
16393	232	8230DB004562
16394	232	8230DB007386
16395	232	8230DB004607
16396	232	8230DB004608
16397	232	8230DB004609
16398	232	8230DB004610
16399	232	8230DB004611
16400	232	8230DB004612
16401	232	8230DB004613
16402	232	8230DB003370
16403	232	8230DB007797
16404	232	8230DB007231
16405	232	8230DB007128
16406	232	8230DB007117
16407	232	8230DB007118
16408	233	8230DB006290
16409	233	8230DB007120
16410	233	8230DB007119
16411	233	8230DB007127
16412	233	8230DB007143
16413	233	8230DB007796
16414	233	8230DB003368
16415	233	8230DB004626
16416	233	8230DB004627
16417	233	8230DB004624
16418	233	8230DB004625
16419	233	8230DB004628
16420	233	8230DB004623
16421	233	8230DB004619
16422	233	8230DB004561
16423	233	8230DB004629
16424	233	8230DB004630
16425	233	8230DB004631
16426	233	8230DB004632
16427	233	8230DB005164
16428	233	8230DB004633
16429	233	8230DB002234
16430	233	8230DB002236
16431	233	8230DB005056
16432	233	8230DB002239
16433	233	8230DB002241
16434	233	8230DB002242
16435	233	8220DB007435
16436	233	8220DB002722
16437	233	8220DB004413
16438	233	8220DB001476
16439	233	8220DB007854
16440	233	8220DB007856
16441	233	8220DB007883
16442	233	8220DB000315
16443	233	8220DB000340
16444	233	8220DB007861
16445	233	8220DB000351
16446	233	8220DB000352
16447	233	8220DB000353
16448	233	8220DB000354
16449	233	8220DB000355
16450	233	8220DB000356
16451	233	8220DB000357
16452	233	8220DB000390
16453	233	8220DB000372
16454	233	8220DB000373
16455	233	8220DB000374
16456	233	8220DB007738
16457	233	8220DB007739
16458	234	8220DB000381
16459	234	8220DB007740
16460	234	8220DB007741
16461	234	8220DB000387
16462	234	8220DB000388
16463	234	8220DB000389
16464	234	8220DB000393
16465	234	8220DB000371
16466	234	8220DB000391
16467	234	8220DB000392
16468	234	8220DB000395
16469	234	8220DB000396
16470	234	8220DB000397
16471	234	8220DB000398
16472	234	8220DB000399
16473	234	8220DB007859
16474	234	8220DB007732
16475	234	8220DB007392
16476	234	8220DB000312
16477	234	8220DB007857
16478	234	8220DB007855
16479	234	8220DB004407
16480	234	8220DB002637
16481	234	8220DB002721
16482	234	8220DB007012
16483	234	8230DB002201
16484	234	8230DB007239
16485	234	8230DB004401
16486	234	8230DB002213
16487	234	8230DB002214
16488	234	8230DB002215
16489	234	8230DB002216
16490	234	8230DB004599
16491	234	8230DB004601
16492	234	8230DB005058
16493	234	8230DB004602
16494	234	8230DB004603
16495	234	8230DB004604
16496	234	8230DB004605
16497	234	8230DB004562
16498	234	8230DB007386
16499	234	8230DB004607
16500	234	8230DB007140
16501	234	8230DB007141
16502	234	8230DB007138
16503	234	8230DB007763
16504	234	8230DB003370
16505	234	8230DB007797
16506	234	8230DB007231
16507	234	8230DB007128
16508	234	8230DB007117
16509	234	8230DB007118
16510	235	8230DB006290
16511	235	8230DB007120
16512	235	8230DB007119
16513	235	8230DB007127
16514	235	8230DB007143
16515	235	8230DB007796
16516	235	8230DB003368
16517	235	8230DB007762
16518	235	8230DB007137
16519	235	8230DB007139
16520	235	8230DB004623
16521	235	8230DB004619
16522	235	8230DB004561
16523	235	8230DB004629
16524	235	8230DB004630
16525	235	8230DB004631
16526	235	8230DB004632
16527	235	8230DB005164
16528	235	8230DB004633
16529	235	8230DB002234
16530	235	8230DB002236
16531	235	8230DB005056
16532	235	8230DB002239
16533	235	8230DB002241
16534	235	8230DB002242
16535	235	8220DB007435
16536	235	8220DB002722
16537	235	8220DB004413
16538	235	8220DB001476
16539	235	8220DB007854
16540	235	8220DB007856
16541	235	8220DB007883
16542	235	8220DB000315
16543	235	8220DB000340
16544	235	8220DB007861
16545	235	8220DB000351
16546	235	8220DB000352
16547	235	8220DB000353
16548	235	8220DB000354
16549	235	8220DB000355
16550	235	8220DB000356
16551	235	8220DB000357
16552	235	8220DB000390
16553	235	8220DB000372
16554	235	8220DB000373
16555	235	8220DB000374
16556	235	8220DB007738
16557	235	8220DB007739
16558	236	8260DB007799
16559	236	8260DB003980
16560	236	8260DB006089
16561	236	8260DB003981
16562	236	8260DB003982
16563	236	8260DB007704
16564	236	8260DB003983
16565	236	8260DB003985
16566	236	8260DB003986
16567	236	8260DB003987
16568	236	8260DB003989
16569	236	8260DB003990
16570	236	8260DB003991
16571	236	8260DB07758
16572	236	8260DB003998
16573	236	8260DB003999
16574	236	8260DB004000
16575	236	8230DB004001
16576	236	8230DB003949
16577	236	8230DB003950
16578	236	8230DB003372
16579	236	8230DB003373
16580	236	8230DB003374
16581	236	8230DB002233
16582	236	8230DB002232
16583	236	8230DB002234
16584	236	8230DB002236
16585	236	8230DB005056
16586	236	8230DB002239
16587	236	8230DB002241
16588	236	8230DB002242
16589	236	8220DB007435
16590	236	8220DB002722
16591	236	8220DB004413
16592	236	8220DB001476
16593	236	8220DB007854
16594	236	8220DB007856
16595	236	8220DB007883
16596	236	8220DB000315
16597	236	8220DB000340
16598	236	8220DB007861
16599	236	8220DB000351
16600	236	8220DB000352
16601	236	8220DB000353
16602	237	8220DB000395
16603	237	8220DB000396
16604	237	8220DB000397
16605	237	8220DB000398
16606	237	8220DB000399
16607	237	8220DB007859
16608	237	8220DB007732
16609	237	8220DB007392
16610	237	8220DB000312
16611	237	8220DB007857
16612	237	8220DB007855
16613	237	8220DB004407
16614	237	8220DB002637
16615	237	8220DB002721
16616	237	8220DB007012
16617	237	8230DB002201
16618	237	8230DB007239
16619	237	8230DB004401
16620	237	8230DB002213
16621	237	8230DB002214
16622	237	8230DB002215
16623	237	8230DB002216
16624	237	8230DB004599
16625	237	8230DB002217
16626	237	8230DB002218
16627	237	8230DB002219
16628	237	8230DB003365
16629	237	8230DB003366
16630	237	8230DB003367
16631	237	8230DB003886
16632	237	8230DB003887
16633	237	8230DB003888
16634	237	8230DB007186
16635	237	8230DB007187
16636	237	8260DB003954
16637	237	8260DB003955
16638	237	8260DB003956
16639	237	8260DB003957
16640	237	8260DB003958
16641	237	8260DB003959
16642	237	8260DB003960
16643	237	8260DB003961
16644	237	8260DB003962
16645	237	8260DB003963
16646	237	8260DB003964
16647	237	8260DB003965
16648	237	8260DB003968
16649	237	8260DB007694
16650	237	8260DB003966
16651	237	8260DB005113
16652	237	8260DB003918
16653	237	8260DB005114
16654	238	8220DB000395
16655	238	8220DB000396
16656	238	8220DB000397
16657	238	8220DB000398
16658	238	8220DB000399
16659	238	8220DB007859
16660	238	8220DB007732
16661	238	8220DB007392
16662	238	8220DB000312
16663	238	8220DB007857
16664	238	8220DB007855
16665	238	8220DB004407
16666	238	8220DB002637
16667	238	8220DB002721
16668	238	8220DB007012
16669	238	8230DB002201
16670	238	8230DB007239
16671	238	8230DB004401
16672	238	8230DB002213
16673	238	8230DB002214
16674	238	8230DB002215
16675	238	8230DB002216
16676	238	8230DB004599
16677	238	8230DB002217
16678	238	8230DB002218
16679	238	8230DB002219
16680	238	8230DB003365
16681	238	8230DB003366
16682	238	8230DB003367
16683	238	8230DB003886
16684	238	8230DB003887
16685	238	8230DB003888
16686	238	8230DB007186
16687	238	8230DB007187
16688	238	8230DB003947
16689	238	8230DB003892
16690	238	8230DB003893
16691	238	8230DB003896
16692	238	8260DB003897
16693	238	8260DB003898
16694	238	8260DB003899
16695	238	8260DB003900
16696	238	8260DB003901
16697	238	8260DB003902
16698	238	8260DB003904
16699	238	8260DB003905
16700	238	8260DB003906
16701	238	8260DB003907
16702	238	8260DB003908
16703	238	8260DB003909
16704	238	8260DB005118
16705	238	8260DB003910
16706	238	8260DB003911
16707	238	8260DB003912
16708	238	8260DB003913
16709	238	8260DB003914
16710	238	8260DB007075
16711	238	8260DB003925
16712	238	8260DB003008
16713	238	8260DB006089
16714	239	8260DB003917
16715	239	8260DB003918
16716	239	8260DB003926
16717	239	8260DB007813
16718	239	8260DB007074
16719	239	8260DB003919
16720	239	8260DB003920
16721	239	8260DB003921
16722	239	8260DB003922
16723	239	8260DB003923
16724	239	8260DB003112
16725	239	8260DB003924
16726	239	8260DB003927
16727	239	8260DB003928
16728	239	8260DB003929
16729	239	8260DB007108
16730	239	8260DB003935
16731	239	8260DB003936
16732	239	8260DB007110
16733	239	8260DB003938
16734	239	8260DB003939
16735	239	8260DB003940
16736	239	8260DB003941
16737	239	8230DB003943
16738	239	8230DB003945
16739	239	8230DB003946
16740	239	8230DB004001
16741	239	8230DB003949
16742	239	8230DB003950
16743	239	8230DB003372
16744	239	8230DB003373
16745	239	8230DB003374
16746	239	8230DB002233
16747	239	8230DB002232
16748	239	8230DB002234
16749	239	8230DB002236
16750	239	8230DB005056
16751	239	8230DB002239
16752	239	8230DB002241
16753	239	8230DB002242
16754	239	8220DB007435
16755	239	8220DB002722
16756	239	8220DB004413
16757	239	8220DB001476
16758	239	8220DB007854
16759	239	8220DB007856
16760	239	8220DB007883
16761	239	8220DB000315
16762	239	8220DB000340
16763	239	8220DB007861
16764	239	8220DB000351
16765	239	8220DB000352
16766	239	8220DB000353
16767	240	8220DB000395
16768	240	8220DB000396
16769	240	8220DB000397
16770	240	8220DB000398
16771	240	8220DB000399
16772	240	8220DB007859
16773	240	8220DB007732
16774	240	8220DB007392
16775	240	8220DB000312
16776	240	8220DB007857
16777	240	8220DB007855
16778	240	8220DB007078
16779	240	8220DB001449
16780	240	8220DB001450
16781	240	8220DB001451
16782	240	8220DB002191
16783	240	8220DB002192
16784	240	8220DB002193
16785	240	8220DB002194
16786	240	8220DB002195
16787	240	8220DB002196
16788	240	8220DB002197
16789	240	8220DB002198
16790	240	8220DB002200
16791	240	8230DB002201
16792	240	8230DB007239
16793	240	8230DB004401
16794	240	8230DB002213
16795	240	8230DB002214
16796	240	8230DB002215
16797	240	8230DB002216
16798	240	8230DB004599
16799	240	8230DB002217
16800	240	8230DB002218
16801	240	8230DB002219
16802	240	8230DB003365
16803	240	8230DB003366
16804	240	8230DB003367
16805	240	8230DB003886
16806	240	8230DB003887
16807	240	8230DB003888
16808	240	8230DB007186
16809	240	8230DB007187
16810	240	8260DB003954
16811	240	8260DB003955
16812	240	8260DB003956
16813	240	8260DB003957
16814	240	8260DB007798
16815	240	8260DB003993
16816	240	8260DB007821
16817	240	8260DB007820
16818	240	8260DB003995
16819	240	8260DB003996
16820	240	8260DB003997
16821	240	8260DB003958
16822	240	8260DB003959
16823	240	8260DB003960
16824	240	8260DB006156
16825	240	8260DB006165
16826	240	8260DB006157
16827	240	8260DB006158
16828	240	8260DB007314
16829	240	8260DB003964
16830	240	8260DB003965
16831	240	8260DB003968
16832	240	8260DB007694
16833	240	8260DB003966
16834	240	8260DB005113
16835	240	8260DB003918
16836	240	8260DB005114
16837	241	8260DB007799
16838	241	8260DB003980
16839	241	8260DB006089
16840	241	8260DB003981
16841	241	8260DB003982
16842	241	8260DB007704
16843	241	8260DB003983
16844	241	8260DB003985
16845	241	8260DB003986
16846	241	8260DB007313
16847	241	8260DB006164
16848	241	8260DB007712
16849	241	8260DB006159
16850	241	8260DB006160
16851	241	8260DB006161
16852	241	8260DB003991
16853	241	8260DB07758
16854	241	8260DB007798
16855	241	8260DB003993
16856	241	8260DB007821
16857	241	8260DB007820
16858	241	8260DB003995
16859	241	8260DB003996
16860	241	8260DB003997
16861	241	8260DB003998
16862	241	8260DB003999
16863	241	8260DB004000
16864	241	8230DB004001
16865	241	8230DB003949
16866	241	8230DB003950
16867	241	8230DB003372
16868	241	8230DB003373
16869	241	8230DB003374
16870	241	8230DB002233
16871	241	8230DB002232
16872	241	8230DB002234
16873	241	8230DB002236
16874	241	8230DB005056
16875	241	8230DB002239
16876	241	8230DB002241
16877	241	8230DB002242
16878	241	8220DB002243
16879	241	8220DB002244
16880	241	8220DB002245
16881	241	8220DB002246
16882	241	8220DB002247
16883	241	8220DB002248
16884	241	8220DB002249
16885	241	8220DB002250
16886	241	8220DB002251
16887	241	8220DB001472
16888	241	8220DB004408
16889	241	8220DB001473
16890	241	8220DB001474
16891	241	8220DB001476
16892	241	8220DB007854
16893	241	8220DB007856
16894	241	8220DB007883
16895	241	8220DB000315
16896	241	8220DB000340
16897	241	8220DB007861
16898	241	8220DB000351
16899	241	8220DB000352
16900	241	8220DB000353
16901	242	8220DB000395
16902	242	8220DB000396
16903	242	8220DB000397
16904	242	8220DB000398
16905	242	8220DB000399
16906	242	8220DB007859
16907	242	8220DB007732
16908	242	8220DB007392
16909	242	8220DB000312
16910	242	8220DB007857
16911	242	8220DB007855
16912	242	8220DB007078
16913	242	8220DB001449
16914	242	8220DB001450
16915	242	8220DB001451
16916	242	8220DB002191
16917	242	8220DB002192
16918	242	8220DB002193
16919	242	8220DB002194
16920	242	8220DB002195
16921	242	8220DB002196
16922	242	8220DB002197
16923	242	8220DB002198
16924	242	8220DB002200
16925	242	8230DB002201
16926	242	8230DB007239
16927	242	8230DB004401
16928	242	8230DB002213
16929	242	8230DB002214
16930	242	8230DB002215
16931	242	8230DB002216
16932	242	8230DB004599
16933	242	8230DB002217
16934	242	8230DB002218
16935	242	8230DB002219
16936	242	8230DB003365
16937	242	8230DB003366
16938	242	8230DB003367
16939	242	8230DB003886
16940	242	8230DB003887
16941	242	8230DB003888
16942	242	8230DB007186
16943	242	8230DB007187
16944	242	8230DB003947
16945	242	8230DB003892
16946	242	8230DB003893
16947	242	8230DB003896
16948	242	8260DB003897
16949	242	8260DB003898
16950	242	8260DB003899
16951	242	8260DB003900
16952	242	8260DB003901
16953	242	8260DB003902
16954	242	8260DB003904
16955	242	8260DB003905
16956	242	8260DB003906
16957	242	8260DB003907
16958	242	8260DB003908
16959	242	8260DB003909
16960	242	8260DB005118
16961	242	8260DB003910
16962	242	8260DB003911
16963	242	8260DB003912
16964	242	8260DB003913
16965	242	8260DB003914
16966	242	8260DB007075
16967	242	8260DB003925
16968	242	8260DB003008
16969	242	8260DB006089
16970	243	8260DB003917
16971	243	8260DB003918
16972	243	8260DB003926
16973	243	8260DB007813
16974	243	8260DB007074
16975	243	8260DB003919
16976	243	8260DB003920
16977	243	8260DB003921
16978	243	8260DB003922
16979	243	8260DB003923
16980	243	8260DB003112
16981	243	8260DB003924
16982	243	8260DB003927
16983	243	8260DB003928
16984	243	8260DB003929
16985	243	8260DB007108
16986	243	8260DB003935
16987	243	8260DB003936
16988	243	8260DB007110
16989	243	8260DB003938
16990	243	8260DB003939
16991	243	8260DB003940
16992	243	8260DB003941
16993	243	8230DB003943
16994	243	8230DB003945
16995	243	8230DB003946
16996	243	8230DB004001
16997	243	8230DB003949
16998	243	8230DB003950
16999	243	8230DB003372
17000	243	8230DB003373
17001	243	8230DB003374
17002	243	8230DB002233
17003	243	8230DB002232
17004	243	8230DB002234
17005	243	8230DB002236
17006	243	8230DB005056
17007	243	8230DB002239
17008	243	8230DB002241
17009	243	8230DB002242
17010	243	8220DB002243
17011	243	8220DB002244
17012	243	8220DB002245
17013	243	8220DB002246
17014	243	8220DB002247
17015	243	8220DB002248
17016	243	8220DB002249
17017	243	8220DB002250
17018	243	8220DB002251
17019	243	8220DB001472
17020	243	8220DB004408
17021	243	8220DB001473
17022	243	8220DB001474
17023	243	8220DB001476
17024	243	8220DB007854
17025	243	8220DB007856
17026	243	8220DB007883
17027	243	8220DB000315
17028	243	8220DB000340
17029	243	8220DB007861
17030	243	8220DB000351
17031	243	8220DB000352
17032	243	8220DB000353
17033	244	8220DB007591
17034	244	8220DB000496
17035	244	8220DB000515
17036	244	8220DB000516
17037	244	8220DB004384
17038	244	8220DB000518
17039	244	8220DB000519
17040	244	8220DB000521
17041	244	8220DB000522
17042	244	8220DB000523
17043	244	8220DB000525
17044	244	8220DB000526
17045	244	8220DB000527
17046	244	8220DB000528
17047	244	8220DB000529
17048	244	8220DB000530
17049	244	8220DB000531
17050	244	8220DB000709
17051	244	8220DB000532
17052	244	8220DB000649
17053	244	8220DB000650
17054	244	8220DB000651
17055	244	8220DB004472
17056	244	8220DB004386
17057	244	8220DB000653
17058	244	8220DB000722
17059	244	8220DB000723
17060	244	8220DB000724
17061	244	8220DB000725
17062	244	8220DB000726
17063	244	8220DB000727
17064	244	8220DB000728
17065	244	8220DB000729
17066	244	8220DB000730
17067	244	8220DB005160
17068	244	8220DB005155
17069	244	8220DB004806
17070	244	8240DB005156
17071	244	8240DB007552
17072	244	8240DB000924
17073	244	8240DB000925
17074	244	8240DB000927
17075	245	8240DB000950
17076	245	8240DB000915
17077	245	8240DB000916
17078	245	8240DB000917
17079	245	8240DB000918
17080	245	8240DB000919
17081	245	8240DB007551
17082	245	8240DB004800
17083	245	8220DB005157
17084	245	8220DB005154
17085	245	8220DB004804
17086	245	8220DB000738
17087	245	8220DB000739
17088	245	8220DB000740
17089	245	8220DB000741
17090	245	8220DB000742
17091	245	8220DB000743
17092	245	8220DB000744
17093	245	8220DB000745
17094	245	8220DB000600
17095	245	8220DB000654
17096	245	8220DB000655
17097	245	8220DB000656
17098	245	8220DB000657
17099	245	8220DB000658
17100	245	8220DB000659
17101	245	8220DB000604
17102	245	8220DB000605
17103	245	8220DB000606
17104	245	8220DB000607
17105	245	8220DB000608
17106	245	8220DB000609
17107	245	8220DB000610
17108	245	8220DB000611
17109	245	8220DB000612
17110	245	8220DB000613
17111	245	8220DB000614
17112	245	8220DB000615
17113	245	8220DB000616
17114	245	8220DB000617
17115	245	8220DB000618
17116	245	8220DB000619
17117	245	8220DB000675
17118	245	8220DB000620
17119	245	8220DB007569
17120	246	8220DB007591
17121	246	8220DB000496
17122	246	8220DB000515
17123	246	8220DB000516
17124	246	8220DB004384
17125	246	8220DB000518
17126	246	8220DB000519
17127	246	8220DB000521
17128	246	8220DB000522
17129	246	8220DB000523
17130	246	8220DB000525
17131	246	8220DB000526
17132	246	8220DB000527
17133	246	8220DB000528
17134	246	8220DB000529
17135	246	8220DB000530
17136	246	8220DB000531
17137	246	8220DB000709
17138	246	8220DB000532
17139	246	8220DB000533
17140	246	8220DB000534
17141	246	8220DB000535
17142	246	8220DB000536
17143	246	8220DB000537
17144	246	8220DB000538
17145	246	8220DB000539
17146	246	8220DB000540
17147	246	8220DB000541
17148	246	8220DB000542
17149	246	8240DB000543
17150	246	8240DB000544
17151	246	8240DB000545
17152	246	8240DB000546
17153	246	8240DB000910
17154	246	8240DB000911
17155	246	8240DB000912
17156	246	8240DB000913
17157	246	8240DB000914
17158	246	8240DB000938
17159	246	8240DB000940
17160	246	8240DB000941
17161	246	8240DB000942
17162	246	8240DB000943
17163	246	8240DB004503
17164	246	8240DB003599
17165	246	8240DB003610
17166	246	8240DB003611
17167	246	8240DB006135
17168	246	8240DB003612
17169	246	8240DB003613
17170	246	8240DB003615
17171	246	8240DB007982
17172	246	8240DB003616
17173	246	8240DB003618
17174	246	8240DB003619
17175	246	8240DB003620
17176	246	8240DB003621
17177	246	8240DB003622
17178	246	8240DB003623
17179	247	8240DB003624
17180	247	8240DB003586
17181	247	8240DB003587
17182	247	8240DB003588
17183	247	8240DB003590
17184	247	8240DB003589
17185	247	8240DB003591
17186	247	8240DB003592
17187	247	8240DB003605
17188	247	8240DB003606
17189	247	8240DB003607
17190	247	8240DB003608
17191	247	8240DB003609
17192	247	8240DB003598
17193	247	8240DB004465
17194	247	8240DB000944
17195	247	8240DB000945
17196	247	8240DB000947
17197	247	8240DB000948
17198	247	8240DB007725
17199	247	8240DB000950
17200	247	8240DB000928
17201	247	8240DB000929
17202	247	8240DB000930
17203	247	8240DB000931
17204	247	8240DB000587
17205	247	8240DB000588
17206	247	8240DB000589
17207	247	8240DB000590
17208	247	8220DB000591
17209	247	8220DB000592
17210	247	8220DB000593
17211	247	8220DB000594
17212	247	8220DB000595
17213	247	8220DB000596
17214	247	8220DB000597
17215	247	8220DB000598
17216	247	8220DB000599
17217	247	8220DB000600
17218	247	8220DB000601
17219	247	8220DB000602
17220	247	8220DB000603
17221	247	8220DB000604
17222	247	8220DB000605
17223	247	8220DB000606
17224	247	8220DB000607
17225	247	8220DB000608
17226	247	8220DB000609
17227	247	8220DB000610
17228	247	8220DB000611
17229	247	8220DB000612
17230	247	8220DB000613
17231	247	8220DB000614
17232	247	8220DB000615
17233	247	8220DB000616
17234	247	8220DB000617
17235	247	8220DB000618
17236	247	8220DB000619
17237	247	8220DB000675
17238	247	8220DB000620
17239	247	8220DB007569
17240	248	8220DB007591
17241	248	8220DB000496
17242	248	8220DB000515
17243	248	8220DB000516
17244	248	8220DB004384
17245	248	8220DB000518
17246	248	8220DB000519
17247	248	8220DB000521
17248	248	8220DB000522
17249	248	8220DB000523
17250	248	8220DB000525
17251	248	8220DB000526
17252	248	8220DB000527
17253	248	8220DB000528
17254	248	8220DB000529
17255	248	8220DB000530
17256	248	8220DB000531
17257	248	8220DB000709
17258	248	8220DB000532
17259	248	8220DB000533
17260	248	8220DB000534
17261	248	8220DB000535
17262	248	8220DB000536
17263	248	8220DB000537
17264	248	8220DB000538
17265	248	8220DB000539
17266	248	8220DB000540
17267	248	8220DB000541
17268	248	8220DB000542
17269	248	8240DB000543
17270	248	8240DB000544
17271	248	8240DB000545
17272	248	8240DB000546
17273	248	8240DB000547
17274	248	8240DB000548
17275	248	8240DB000549
17276	248	8240DB000550
17277	248	8240DB000551
17278	248	8240DB000552
17279	248	8240DB000553
17280	248	8240DB000554
17281	248	8240DB000555
17282	248	8240DB000557
17283	248	8240DB000558
17284	248	8240DB000559
17285	248	8240DB000560
17286	248	8240DB000562
17287	248	8240DB000563
17288	248	8240DB000564
17289	248	8240DB000565
17290	248	8240DB000566
17291	249	8240DB000707
17292	249	8240DB000568
17293	249	8240DB000569
17294	249	8240DB000570
17295	249	8240DB000571
17296	249	8240DB000572
17297	249	8240DB000573
17298	249	8240DB000574
17299	249	8240DB000575
17300	249	8240DB000576
17301	249	8240DB000577
17302	249	8240DB000579
17303	249	8240DB000580
17304	249	8240DB000581
17305	249	8240DB000582
17306	249	8240DB000583
17307	249	8240DB000584
17308	249	8240DB000585
17309	249	8240DB000586
17310	249	8240DB000587
17311	249	8240DB000588
17312	249	8240DB000589
17313	249	8240DB000590
17314	249	8220DB000591
17315	249	8220DB000592
17316	249	8220DB000593
17317	249	8220DB000594
17318	249	8220DB000595
17319	249	8220DB000596
17320	249	8220DB000597
17321	249	8220DB000598
17322	249	8220DB000599
17323	249	8220DB000600
17324	249	8220DB000601
17325	249	8220DB000602
17326	249	8220DB000603
17327	249	8220DB000604
17328	249	8220DB000605
17329	249	8220DB000606
17330	249	8220DB000607
17331	249	8220DB000608
17332	249	8220DB000609
17333	249	8220DB000610
17334	249	8220DB000611
17335	249	8220DB000612
17336	249	8220DB000613
17337	249	8220DB000614
17338	249	8220DB000615
17339	249	8220DB000616
17340	249	8220DB000617
17341	249	8220DB000618
17342	249	8220DB000619
17343	249	8220DB000675
17344	249	8220DB000620
17345	249	8220DB007569
17346	250	8230DB006290
17347	250	8230DB007120
17348	250	8230DB007119
17349	250	8230DB007127
17350	250	8230DB007143
17351	250	8230DB007796
17352	250	8230DB003368
17353	250	8230DB007762
17354	250	8230DB007137
17355	250	8230DB007139
17356	250	8230DB004623
17357	250	8230DB004619
17358	250	8230DB007776
17359	250	8230DB007748
17360	250	8230DB007783
17361	250	8230DB002681
17362	250	8230DB004691
17363	250	8230DB002682
17364	250	8230DB004796
17365	250	8230DB004690
17366	250	8230DB004411
17367	250	8230DB007754
17368	251	8230DB004795
17369	251	8230DB07755
17370	251	8230DB004688
17371	251	8230DB004689
17372	251	8230DB004410
17373	251	8230DB002678
17374	251	8230DB007784
17375	251	8230DB007780
17376	251	8230DB007803
17377	251	8230DB007386
17378	251	8230DB004607
17379	251	8230DB007140
17380	251	8230DB007141
17381	251	8230DB007138
17382	251	8230DB007763
17383	251	8230DB003370
17384	251	8230DB007797
17385	251	8230DB007231
17386	251	8230DB007128
17387	251	8230DB007117
17388	251	8230DB007118
17389	252	8230DB007791
17390	252	8230DB007782
17391	252	8230DB001963
17392	252	8230DB004549
17393	252	8230DB001964
17394	252	8230DB004674
17395	252	8230DB004663
17396	252	8230DB004664
17397	252	8230DB002114
17398	252	8230DB002115
17399	252	8230DB006011
17400	252	8230DB002133
17401	252	8230DB006247
17402	252	8230DB007757
17403	252	8230DB007473
17404	252	8230DB007784
17405	252	8230DB007780
17406	252	8230DB007803
17407	252	8230DB007386
17408	252	8230DB007761
17409	252	8230DB004632
17410	252	8230DB005164
17411	252	8230DB004633
17412	252	8230DB002217
17413	252	8230DB002218
17414	252	8230DB002219
17415	252	8230DB003365
17416	252	8230DB003366
17417	252	8230DB003367
17418	252	8230DB003886
17419	252	8230DB003887
17420	252	8230DB003888
17421	252	8230DB007186
17422	252	8230DB007187
17423	252	8260DB003954
17424	252	8260DB003955
17425	252	8260DB003956
17426	252	8260DB003957
17427	252	8260DB007798
17428	252	8260DB003993
17429	253	8260DB007820
17430	253	8260DB003995
17431	253	8260DB003996
17432	253	8260DB003997
17433	253	8260DB003998
17434	253	8260DB003999
17435	253	8260DB004000
17436	253	8230DB004001
17437	253	8230DB003949
17438	253	8230DB003950
17439	253	8230DB003372
17440	253	8230DB003373
17441	253	8230DB003374
17442	253	8230DB002233
17443	253	8230DB002232
17444	253	8230DB004601
17445	253	8230DB005058
17446	253	8230DB004602
17447	253	8230DB007760
17448	253	8230DB004619
17449	253	8230DB007776
17450	253	8230DB007748
17451	253	8230DB007783
17452	253	8230DB002680
17453	253	8230DB007756
17454	253	8230DB007750
17455	253	8230DB002156
17456	253	8230DB006014
17457	253	8230DB002158
17458	253	8230DB002159
17459	253	8230DB004409
17460	253	8230DB004550
17461	253	8230DB004551
17462	253	8230DB001965
17463	253	8230DB001966
17464	253	8230DB007781
17465	254	8260DB007812
17466	254	8260DB007764
17467	254	8260DB007804
17468	254	8260DB007814
17469	254	8260DB007816
17470	254	8260DB003935
17471	254	8260DB003936
17472	254	8260DB007110
17473	254	8260DB003938
17474	254	8260DB007747
17475	254	8260DB004003
17476	254	8260DB007770
17477	254	8260DB004404
17478	254	8260DB004405
17479	254	8260DB007785
17480	254	8260DB003991
17481	254	8260DB07758
17482	254	8260DB007798
17483	254	8260DB003993
17484	255	8260DB007820
17485	255	8260DB003995
17486	255	8260DB003996
17487	255	8260DB003997
17488	255	8260DB003958
17489	255	8260DB003959
17490	255	8260DB007234
17491	255	8260DB004002
17492	255	8260DB005112
17493	255	8260DB007771
17494	255	8260DB007767
17495	255	8260DB007744
17496	255	8260DB003899
17497	255	8260DB003900
17498	255	8260DB003901
17499	255	8260DB003902
17500	255	8260DB003904
17501	255	8260DB007817
17502	255	8260DB007815
17503	255	8260DB007805
17504	255	8260DB007765
17505	256	8260DB007820
17506	256	8260DB003995
17507	256	8260DB003996
17508	256	8260DB003997
17509	256	8260DB003958
17510	256	8260DB003959
17511	256	8260DB003960
17512	256	8260DB006156
17513	256	8260DB006165
17514	256	8260DB006157
17515	256	8260DB006158
17516	256	8260DB007314
17517	256	8260DB007778
17518	256	8260DB003922
17519	256	8260DB003923
17520	256	8260DB007079
17521	256	8260DB007080
17522	256	8260DB007081
17523	256	8260DB007565
17524	256	8260DB007746
17525	256	8260DB007082
17526	256	8260DB007083
17527	256	8260DB007789
17528	256	8260DB007084
17529	256	8260DB007811
17530	256	8260DB007794
17531	256	8260DB007805
17532	256	8260DB007765
17533	257	8260DB007812
17534	257	8260DB007764
17535	257	8260DB007804
17536	257	8260DB007795
17537	257	8260DB007788
17538	257	8260DB007085
17539	257	8260DB007790
17540	257	8260DB007086
17541	257	8260DB007087
17542	257	8260DB007745
17543	257	8260DB007088
17544	257	8260DB007089
17545	257	8260DB007802
17546	257	8260DB007091
17547	257	8260DB003910
17548	257	8260DB003911
17549	257	8260DB007777
17550	257	8260DB007313
17551	257	8260DB006164
17552	257	8260DB007712
17553	257	8260DB006159
17554	257	8260DB006160
17555	257	8260DB006161
17556	257	8260DB003991
17557	257	8260DB07758
17558	257	8260DB007798
17559	257	8260DB003993
17560	258	8220DB007844
17561	258	8220DB002502
17562	258	8220DB004469
17563	258	8220DB007834
17564	258	8220DB007827
17565	258	8220DB001738
17566	258	8220DB001739
17567	258	8220DB000525
17568	258	8220DB000526
17569	258	8220DB000527
17570	258	8220DB000528
17571	258	8220DB000529
17572	258	8220DB004791
17573	258	8220DB004792
17574	258	8220DB000662
17575	258	8220DB007843
17576	258	8220DB007840
17577	258	8220DB001185
17578	258	8220DB001186
17579	258	8220DB001187
17580	258	8220DB001188
17581	258	8220DB007831
17582	258	8220DB000237
17583	258	8220DB000206
17584	258	8220DB001643
17585	258	8220DB001644
17586	258	8220DB001605
17587	258	8220DB000128
17588	258	8220DB000129
17589	258	8220DB000130
17590	258	8220DB000131
17591	258	8220DB000132
17592	258	8220DB007832
17593	258	8220DB007458
17594	258	8220DB007836
17595	258	8220DB000979
17596	258	8220DB007845
17597	258	8220DB000980
17598	258	8220DB000981
17599	258	8220DB001576
17600	258	8220DB001577
17601	258	8220DB001578
17602	258	8220DB004364
17603	258	8240DB001579
17604	258	8240DB001580
17605	258	8240DB007237
17606	258	8240DB007241
17607	258	8240DB007247
17608	258	8240DB007243
17609	258	8240DB007334
17610	258	8240DB006274
17611	258	8240DB001838
17612	258	8240DB002338
17613	258	8240DB002290
17614	258	8240DB006179
17615	258	8240DB007297
17616	258	8240DB001813
17617	258	8240DB001814
17618	258	8240DB000661
17619	259	8240DB004747
17620	259	8240DB002960
17621	259	8240DB001545
17622	259	8240DB001840
17623	259	8240DB001841
17624	259	8240DB001842
17625	259	8240DB007298
17626	259	8240DB002294
17627	259	8240DB006039
17628	259	8240DB001816
17629	259	8240DB006171
17630	259	8240DB004974
17631	259	8240DB004976
17632	259	8240DB002510
17633	259	8240DB007242
17634	259	8240DB007238
17635	259	8240DB007224
17636	259	8240DB001581
17637	259	8240DB001582
17638	259	8220DB004793
17639	259	8220DB006068
17640	259	8220DB001584
17641	259	8220DB000983
17642	259	8220DB000984
17643	259	8220DB000985
17644	259	8220DB000987
17645	259	8220DB000988
17646	259	8220DB000138
17647	259	8220DB000139
17648	259	8220DB000140
17649	259	8220DB000141
17650	259	8220DB000142
17651	259	8220DB000143
17652	259	8240DB001645
17653	259	8220DB001646
17654	259	8220DB000211
17655	259	8220DB000212
17656	259	8220DB007851
17657	259	8220DB007830
17658	259	8220DB001190
17659	259	8220DB001191
17660	259	8220DB001192
17661	259	8220DB001193
17662	259	8220DB001194
17663	259	8220DB001195
17664	259	8220DB007839
17665	259	8220DB000674
17666	259	8220DB004389
17667	259	8220DB004390
17668	259	8220DB000609
17669	259	8220DB000610
17670	259	8220DB000611
17671	259	8220DB000612
17672	259	8220DB000613
17673	259	8220DB001740
17674	259	8220DB007852
17675	259	8220DB002278
17676	259	8220DB002279
17677	259	8220DB007842
17678	260	8220DB000395
17679	260	8220DB000396
17680	260	8220DB000397
17681	260	8220DB000398
17682	260	8220DB000399
17683	260	8220DB007859
17684	260	8220DB007732
17685	260	8220DB007392
17686	260	8220DB000312
17687	260	8220DB007857
17688	260	8220DB007855
17689	260	8220DB001447
17690	260	8220DB002637
17691	260	8220DB002721
17692	260	8220DB007012
17693	260	8230DB002201
17694	260	8230DB007239
17695	260	8230DB004401
17696	260	8230DB002213
17697	260	8230DB002214
17698	260	8230DB002215
17699	260	8230DB002216
17700	260	8230DB004599
17701	260	8230DB007184
17702	260	8230DB002225
17703	260	8230DB004620
17704	260	8230DB007563
17705	260	8230DB007797
17706	260	8230DB007231
17707	260	8230DB007128
17708	260	8230DB007117
17709	260	8230DB007118
17710	261	8230DB006290
17711	261	8230DB007120
17712	261	8230DB007119
17713	261	8230DB007127
17714	261	8230DB007143
17715	261	8230DB007796
17716	261	8230DB007168
17717	261	8230DB004616
17718	261	8230DB002227
17719	261	8230DB007049
17720	261	8230DB002236
17721	261	8230DB005056
17722	261	8230DB002239
17723	261	8230DB002241
17724	261	8230DB002242
17725	261	8220DB007435
17726	261	8220DB002722
17727	261	8220DB004413
17728	261	8220DB001476
17729	261	8220DB007854
17730	261	8220DB007856
17731	261	8220DB007883
17732	261	8220DB000315
17733	261	8220DB007733
17734	261	8220DB007861
17735	261	8220DB000351
17736	261	8220DB000352
17737	261	8220DB000353
17738	262	8250DB004952
17739	262	8250DB000768
17740	262	8220DB000769
17741	262	8220DB000770
17742	262	8220DB000771
17743	262	8220DB000772
17744	262	8220DB000773
17745	262	8220DB000774
17746	262	8220DB000775
17747	262	8220DB000776
17748	262	8220DB000777
17749	262	8220DB000906
17750	262	8220DB000909
17751	262	8220DB000786
17752	262	8220DB002905
17753	262	8220DB000494
17754	262	8220DB007587
17755	262	8220DB007732
17756	262	8220DB007392
17757	262	8220DB000312
17758	262	8220DB007857
17759	262	8220DB007855
17760	262	8220DB001447
17761	262	8220DB002637
17762	262	8220DB002721
17763	262	8220DB007012
17764	262	8230DB002201
17765	262	8230DB004401
17766	262	8230DB002213
17767	262	8230DB002214
17768	262	8230DB002215
17769	262	8230DB007184
17770	262	8230DB007050
17771	262	8230DB007185
17772	262	8230DB007186
17773	262	8230DB007187
17774	262	8260DB003954
17775	262	8260DB003955
17776	262	8260DB003956
17777	262	8260DB003957
17778	262	8260DB003958
17779	262	8260DB003959
17780	262	8260DB003960
17781	262	8260DB006156
17782	262	8260DB006165
17783	262	8260DB006157
17784	262	8260DB006158
17785	262	8260DB007314
17786	262	8260DB003964
17787	262	8260DB003965
17788	262	8260DB003968
17789	262	8260DB007694
17790	262	8260DB003966
17791	262	8260DB005113
17792	262	8260DB003918
17793	263	8260DB003980
17794	263	8260DB006089
17795	263	8260DB003917
17796	263	8260DB003981
17797	263	8260DB003982
17798	263	8260DB007704
17799	263	8260DB003983
17800	263	8260DB003985
17801	263	8260DB003986
17802	263	8260DB007313
17803	263	8260DB006164
17804	263	8260DB007712
17805	263	8260DB006159
17806	263	8260DB006160
17807	263	8260DB006161
17808	263	8260DB003991
17809	263	8260DB07758
17810	263	8260DB003998
17811	263	8260DB003999
17812	263	8260DB004000
17813	263	8230DB004001
17814	263	8230DB007193
17815	263	8230DB007049
17816	263	8230DB002236
17817	263	8230DB002239
17818	263	8230DB002241
17819	263	8230DB002242
17820	263	8220DB007435
17821	263	8220DB002722
17822	263	8220DB004413
17823	263	8220DB001476
17824	263	8220DB007854
17825	263	8220DB007856
17826	263	8220DB007883
17827	263	8220DB000315
17828	263	8220DB007733
17829	263	8220DB007861
17830	263	8220DB002809
17831	263	8220DB002810
17832	263	8220DB002811
17833	263	8220DB000785
17834	263	8220DB000846
17835	263	8220DB000847
17836	263	8220DB000848
17837	263	8220DB002795
17838	263	8220DB000756
17839	263	8220DB000757
17840	263	8220DB000758
17841	263	8220DB000759
17842	263	8220DB000760
17843	263	8220DB000761
17844	263	8220DB000762
17845	263	8220DB000763
17846	264	8260DB003980
17847	264	8260DB006089
17848	264	8260DB003917
17849	264	8260DB003981
17850	264	8260DB003982
17851	264	8260DB007704
17852	264	8260DB003983
17853	264	8260DB003985
17854	264	8260DB003986
17855	264	8260DB003987
17856	264	8260DB003989
17857	264	8260DB003990
17858	264	8260DB003991
17859	264	8260DB07758
17860	264	8260DB003998
17861	264	8260DB003999
17862	264	8260DB004000
17863	264	8230DB004001
17864	264	8230DB007193
17865	264	8230DB007049
17866	264	8230DB002236
17867	264	8230DB002239
17868	264	8230DB002241
17869	264	8230DB002242
17870	264	8220DB007435
17871	264	8220DB002722
17872	264	8220DB004413
17873	264	8220DB001476
17874	264	8220DB007854
17875	264	8220DB007856
17876	264	8220DB007883
17877	264	8220DB000315
17878	264	8220DB007733
17879	264	8220DB007861
17880	264	8220DB002809
17881	264	8220DB002810
17882	264	8220DB002811
17883	264	8220DB000785
17884	265	8250DB004952
17885	265	8250DB000768
17886	265	8220DB000769
17887	265	8220DB000770
17888	265	8220DB000771
17889	265	8220DB000772
17890	265	8220DB000773
17891	265	8220DB000774
17892	265	8220DB000775
17893	265	8220DB000776
17894	265	8220DB000777
17895	265	8220DB000906
17896	265	8220DB000909
17897	265	8220DB000786
17898	265	8220DB002905
17899	265	8220DB000494
17900	265	8220DB007587
17901	265	8220DB007732
17902	265	8220DB007392
17903	265	8220DB000312
17904	265	8220DB007857
17905	265	8220DB007855
17906	265	8220DB001447
17907	265	8220DB002637
17908	265	8220DB002721
17909	265	8220DB007012
17910	265	8230DB002201
17911	265	8230DB004401
17912	265	8230DB002213
17913	265	8230DB002214
17914	265	8230DB002215
17915	265	8230DB007184
17916	265	8230DB007050
17917	265	8230DB007185
17918	265	8230DB007186
17919	265	8230DB007187
17920	265	8230DB003947
17921	265	8230DB003892
17922	265	8230DB003893
17923	265	8230DB003896
17924	265	8260DB003897
17925	265	8260DB003898
17926	265	8260DB003899
17927	265	8260DB003900
17928	265	8260DB003901
17929	265	8260DB003902
17930	265	8260DB003904
17931	265	8260DB003905
17932	265	8260DB007085
17933	265	8260DB007790
17934	265	8260DB007086
17935	265	8260DB007087
17936	265	8260DB007745
17937	265	8260DB007088
17938	265	8260DB007089
17939	265	8260DB007802
17940	265	8260DB007091
17941	265	8260DB003910
17942	265	8260DB003911
17943	266	8260DB003921
17944	266	8260DB003922
17945	266	8260DB003923
17946	266	8260DB007079
17947	266	8260DB007080
17948	266	8260DB007081
17949	266	8260DB007565
17950	266	8260DB007746
17951	266	8260DB007082
17952	266	8260DB007083
17953	266	8260DB007789
17954	266	8260DB007084
17955	266	8260DB007108
17956	266	8260DB003935
17957	266	8260DB003936
17958	266	8260DB007110
17959	266	8260DB003938
17960	266	8260DB003939
17961	266	8260DB003940
17962	266	8260DB003941
17963	266	8230DB003943
17964	266	8230DB003945
17965	266	8230DB003946
17966	266	8230DB004001
17967	266	8230DB007193
17968	266	8230DB007049
17969	266	8230DB002236
17970	266	8230DB002239
17971	266	8230DB002241
17972	266	8230DB002242
17973	266	8220DB007435
17974	266	8220DB002722
17975	266	8220DB004413
17976	266	8220DB001476
17977	266	8220DB007854
17978	266	8220DB007856
17979	266	8220DB007883
17980	266	8220DB000315
17981	266	8220DB007733
17982	266	8220DB007861
17983	266	8220DB002809
17984	266	8220DB002810
17985	266	8220DB002811
17986	266	8220DB000785
17987	266	8220DB000846
17988	266	8220DB000847
17989	266	8220DB000848
17990	266	8220DB002795
17991	266	8220DB000756
17992	266	8220DB000757
17993	266	8220DB000758
17994	266	8220DB000759
17995	266	8220DB000760
17996	266	8220DB000761
17997	266	8220DB000762
17998	266	8220DB000763
17999	267	8250DB004952
18000	267	8250DB000768
18001	267	8220DB000769
18002	267	8220DB000770
18003	267	8220DB000771
18004	267	8220DB000772
18005	267	8220DB000773
18006	267	8220DB000774
18007	267	8220DB000775
18008	267	8220DB000776
18009	267	8220DB000777
18010	267	8220DB000906
18011	267	8220DB000909
18012	267	8220DB000786
18013	267	8220DB002905
18014	267	8220DB000494
18015	267	8220DB007587
18016	267	8220DB007732
18017	267	8220DB007392
18018	267	8220DB000312
18019	267	8220DB007857
18020	267	8220DB007855
18021	267	8220DB001447
18022	267	8220DB002637
18023	267	8220DB002721
18024	267	8220DB007012
18025	267	8230DB002201
18026	267	8230DB004401
18027	267	8230DB002213
18028	267	8230DB002214
18029	267	8230DB002215
18030	267	8230DB007184
18031	267	8230DB007050
18032	267	8230DB007185
18033	267	8230DB007186
18034	267	8230DB007187
18035	267	8230DB003947
18036	267	8230DB003892
18037	267	8230DB003893
18038	267	8230DB003896
18039	267	8260DB003897
18040	267	8260DB003898
18041	267	8260DB003899
18042	267	8260DB003900
18043	267	8260DB003901
18044	267	8260DB003902
18045	267	8260DB003904
18046	267	8260DB003905
18047	267	8260DB003906
18048	267	8260DB003907
18049	267	8260DB003908
18050	267	8260DB003909
18051	267	8260DB005118
18052	267	8260DB003910
18053	267	8260DB003911
18054	268	8260DB003921
18055	268	8260DB003922
18056	268	8260DB003923
18057	268	8260DB003112
18058	268	8260DB003924
18059	268	8260DB003927
18060	268	8260DB003928
18061	268	8260DB003929
18062	268	8260DB007108
18063	268	8260DB003935
18064	268	8260DB003936
18065	268	8260DB007110
18066	268	8260DB003938
18067	268	8260DB003939
18068	268	8260DB003940
18069	268	8260DB003941
18070	268	8230DB003943
18071	268	8230DB003945
18072	268	8230DB003946
18073	268	8230DB004001
18074	268	8230DB007193
18075	268	8230DB007049
18076	268	8230DB002236
18077	268	8230DB002239
18078	268	8230DB002241
18079	268	8230DB002242
18080	268	8220DB007435
18081	268	8220DB002722
18082	268	8220DB004413
18083	268	8220DB001476
18084	268	8220DB007854
18085	268	8220DB007856
18086	268	8220DB007883
18087	268	8220DB000315
18088	268	8220DB007733
18089	268	8220DB007861
18090	268	8220DB002809
18091	268	8220DB002810
18092	268	8220DB002811
18093	268	8220DB000785
18094	268	8220DB000846
18095	268	8220DB000847
18096	268	8220DB000848
18097	268	8220DB002795
18098	268	8220DB000756
18099	268	8220DB000757
18100	268	8220DB000758
18101	268	8220DB000759
18102	268	8220DB000760
18103	268	8220DB000761
18104	268	8220DB000762
18105	268	8220DB000763
18106	269	8230DB003890
18107	269	8230DB003891
18108	269	8230DB007187
18109	269	8230DB004001
18110	269	8230DB003949
18111	269	8230DB003950
18112	269	8230DB003372
18113	269	8230DB003373
18114	269	8230DB003374
18115	269	8230DB002233
18116	269	8230DB002232
18117	269	8230DB002234
18118	269	8230DB002236
18119	269	8230DB002239
18120	269	8230DB002241
18121	269	8230DB002242
18122	269	8220DB007435
18123	269	8220DB002722
18124	269	8220DB004413
18125	269	8220DB001476
18126	269	8220DB007854
18127	269	8220DB007856
18128	269	8220DB007883
18129	269	8220DB000315
18130	269	8220DB007733
18131	269	8220DB007861
18132	269	8220DB002809
18133	269	8220DB002810
18134	269	8220DB002811
18135	269	8220DB000785
18136	269	8220DB000846
18137	269	8220DB000847
18138	269	8220DB000848
18139	269	8220DB002795
18140	269	8220DB000756
18141	269	8220DB000757
18142	269	8220DB000758
18143	269	8220DB000759
18144	269	8220DB000760
18145	269	8220DB000761
18146	269	8220DB000762
18147	269	8220DB000763
18148	270	8250DB004952
18149	270	8250DB000768
18150	270	8220DB000769
18151	270	8220DB000770
18152	270	8220DB000771
18153	270	8220DB000772
18154	270	8220DB000773
18155	270	8220DB000774
18156	270	8220DB000775
18157	270	8220DB000776
18158	270	8220DB000777
18159	270	8220DB000906
18160	270	8220DB000909
18161	270	8220DB000786
18162	270	8220DB002905
18163	270	8220DB000494
18164	270	8220DB007587
18165	270	8220DB007732
18166	270	8220DB007392
18167	270	8220DB000312
18168	270	8220DB007857
18169	270	8220DB007855
18170	270	8220DB001447
18171	270	8220DB002637
18172	270	8220DB002721
18173	270	8220DB007012
18174	270	8230DB002201
18175	270	8230DB004401
18176	270	8230DB002213
18177	270	8230DB002214
18178	270	8230DB002215
18179	270	8230DB002216
18180	270	8230DB002217
18181	270	8230DB002218
18182	270	8230DB002219
18183	270	8230DB003365
18184	270	8230DB003366
18185	270	8230DB003367
18186	270	8230DB003886
18187	270	8230DB003887
18188	270	8230DB007810
18189	271	8220DB006074
18190	271	8220DB002905
18191	271	8220DB000494
18192	271	8220DB007859
18193	271	8220DB007732
18194	271	8220DB007392
18195	271	8220DB000312
18196	271	8220DB007857
18197	271	8220DB007855
18198	271	8220DB001447
18199	271	8220DB002637
18200	271	8220DB002721
18201	271	8220DB007012
18202	271	8230DB002201
18203	271	8230DB004401
18204	271	8230DB002213
18205	271	8230DB002214
18206	271	8230DB002215
18207	271	8230DB002216
18208	271	8230DB004599
18209	271	8230DB002217
18210	271	8230DB002218
18211	271	8230DB002219
18212	271	8230DB003365
18213	271	8230DB003366
18214	271	8230DB003367
18215	271	8230DB003886
18216	271	8230DB003887
18217	271	8230DB007186
18218	271	8230DB007187
18219	271	8260DB003954
18220	271	8260DB003955
18221	271	8260DB003956
18222	271	8260DB003957
18223	271	8260DB007798
18224	271	8260DB003993
18225	272	8260DB007820
18226	272	8260DB003995
18227	272	8260DB003996
18228	272	8260DB003997
18229	272	8260DB003998
18230	272	8260DB003999
18231	272	8260DB004000
18232	272	8230DB004001
18233	272	8230DB003949
18234	272	8230DB003950
18235	272	8230DB003372
18236	272	8230DB003373
18237	272	8230DB003374
18238	272	8230DB002233
18239	272	8230DB002232
18240	272	8230DB002234
18241	272	8230DB002236
18242	272	8230DB002239
18243	272	8230DB002241
18244	272	8230DB002242
18245	272	8220DB007435
18246	272	8220DB002722
18247	272	8220DB004413
18248	272	8220DB001476
18249	272	8220DB007854
18250	272	8220DB007856
18251	272	8220DB007883
18252	272	8220DB000315
18253	272	8220DB007733
18254	272	8220DB007861
18255	272	8220DB002809
18256	272	8220DB002810
18257	272	8220DB002811
18258	272	8220DB000785
18259	272	8220DB000786
18260	273	8220DB006074
18261	273	8220DB002905
18262	273	8220DB000494
18263	273	8220DB007587
18264	273	8220DB007732
18265	273	8220DB007392
18266	273	8220DB000312
18267	273	8220DB007857
18268	273	8220DB007855
18269	273	8220DB001447
18270	273	8220DB002637
18271	273	8220DB002721
18272	273	8220DB007012
18273	273	8230DB002201
18274	273	8230DB004401
18275	273	8230DB002213
18276	273	8230DB002214
18277	273	8230DB002215
18278	273	8230DB002216
18279	273	8230DB004599
18280	273	8230DB002217
18281	273	8230DB002218
18282	273	8230DB002219
18283	273	8230DB003365
18284	273	8230DB003366
18285	273	8230DB003367
18286	273	8230DB003886
18287	273	8230DB003887
18288	273	8230DB007186
18289	273	8230DB007187
18290	273	8260DB003954
18291	273	8260DB003955
18292	273	8260DB003956
18293	273	8260DB003957
18294	273	8260DB003958
18295	273	8260DB003959
18296	273	8260DB007234
18297	273	8260DB004002
18298	273	8260DB005112
18299	273	8260DB007771
18300	274	8260DB004003
18301	274	8260DB007770
18302	274	8260DB004404
18303	274	8260DB004405
18304	274	8260DB007785
18305	274	8260DB003991
18306	274	8260DB07758
18307	274	8260DB003998
18308	274	8260DB003999
18309	274	8260DB004000
18310	274	8230DB004001
18311	274	8230DB003949
18312	274	8230DB003950
18313	274	8230DB003372
18314	274	8230DB003373
18315	274	8230DB003374
18316	274	8230DB002233
18317	274	8230DB002232
18318	274	8230DB002234
18319	274	8230DB002236
18320	274	8230DB002239
18321	274	8230DB002241
18322	274	8230DB002242
18323	274	8220DB007435
18324	274	8220DB002722
18325	274	8220DB004413
18326	274	8220DB001476
18327	274	8220DB007854
18328	274	8220DB007856
18329	274	8220DB007883
18330	274	8220DB000315
18331	274	8220DB007733
18332	274	8220DB007861
18333	274	8220DB002809
18334	274	8220DB002810
18335	274	8220DB002811
18336	274	8220DB000785
18337	274	8220DB000786
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

SELECT pg_catalog.setval('public.route_connections_id_seq', 18337, true);


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


-- Completed on 2022-07-14 14:23:25

--
-- PostgreSQL database dump complete
--

