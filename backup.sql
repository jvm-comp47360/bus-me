--
-- PostgreSQL database dump
--

-- Dumped from database version 14.3
-- Dumped by pg_dump version 14.3

-- Started on 2022-07-28 09:44:15

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
31796	0	8240DB007210
31797	0	8240DB003676
31798	0	8240DB005073
31799	0	8240DB005074
31800	0	8240DB006054
31801	0	8240DB004330
31802	0	8240DB003679
31803	0	8240DB005075
31804	0	8240DB005076
31805	0	8240DB003682
31806	0	8240DB003864
31807	0	8240DB003865
31808	0	8240DB007133
31809	0	8240DB010377
31810	0	8240DB007134
31811	0	8240DB003867
31812	0	8240DB007135
31813	0	8240DB007136
31814	0	8240DB010378
31815	1	8240DB007348
31816	1	8240DB003669
31817	1	8240DB003671
31818	1	8240DB003672
31819	1	8240DB003078
31820	1	8240DB003087
31821	1	8240DB006033
31822	1	8240DB003089
31823	1	8240DB003090
31824	1	8240DB003706
31825	1	8240DB003707
31826	1	8240DB003708
31827	1	8240DB003709
31828	1	8240DB003710
31829	1	8240DB004925
31830	1	8240DB004926
31831	1	8240DB003678
31832	1	8240DB006117
31833	1	8240DB001041
31834	1	8240DB001050
31835	1	8240DB003656
31836	1	8240DB003653
31837	1	8240DB006055
31838	1	8240DB001073
31839	1	8240DB003641
31840	1	8240DB003642
31841	1	8240DB003643
31842	1	8240DB003583
31843	1	8240DB003584
31844	1	8240DB003585
31845	1	8240DB003586
31846	1	8240DB003587
31847	1	8240DB003588
31848	1	8240DB003590
31849	1	8240DB003589
31850	1	8240DB003591
31851	1	8240DB003592
31852	1	8240DB003593
31853	1	8240DB003594
31854	1	8240DB003595
31855	1	8240DB003596
31856	1	8240DB003597
31857	1	8240DB003598
31858	1	8240DB004465
31859	1	8240DB000944
31860	1	8240DB000945
31861	1	8240DB000947
31862	1	8240DB000948
31863	1	8240DB007725
31864	1	8240DB000950
31865	1	8240DB000928
31866	1	8240DB000951
31867	1	8240DB000952
31868	1	8240DB000953
31869	2	8240DB004381
31870	2	8240DB000935
31871	2	8240DB000936
31872	2	8240DB000913
31873	2	8240DB000914
31874	2	8240DB000938
31875	2	8240DB000940
31876	2	8240DB000941
31877	2	8240DB000942
31878	2	8240DB000943
31879	2	8240DB004503
31880	2	8240DB003599
31881	2	8240DB003600
31882	2	8240DB003601
31883	2	8240DB003602
31884	2	8240DB003604
31885	2	8240DB003616
31886	2	8240DB003618
31887	2	8240DB003619
31888	2	8240DB003620
31889	2	8240DB003621
31890	2	8240DB003622
31891	2	8240DB003623
31892	2	8240DB004387
31893	2	8240DB003634
31894	2	8240DB003635
31895	2	8240DB003636
31896	2	8240DB000905
31897	2	8240DB004331
31898	2	8240DB004339
31899	2	8240DB007692
31900	2	8240DB006010
31901	2	8240DB003656
31902	2	8240DB003653
31903	2	8240DB001039
31904	2	8240DB001040
31905	2	8240DB006054
31906	2	8240DB004330
31907	2	8240DB003691
31908	2	8240DB003572
31909	2	8240DB003701
31910	2	8240DB003702
31911	2	8240DB003088
31912	2	8240DB003704
31913	2	8240DB003705
31914	2	8240DB000733
31915	2	8240DB006015
31916	2	8240DB000788
31917	2	8240DB000815
31918	2	8240DB003663
31919	3	8220DB004794
31920	3	8220DB001741
31921	3	8220DB001742
31922	3	8220DB001743
31923	3	8220DB001650
31924	3	8220DB001652
31925	3	8220DB005141
31926	3	8220DB001773
31927	3	8220DB001774
31928	3	8220DB001651
31929	3	8220DB004784
31930	3	8220DB000608
31931	3	8220DB004791
31932	3	8220DB004792
31933	3	8220DB000662
31934	3	8220DB000663
31935	3	8220DB001196
31936	3	8220DB001197
31937	3	8220DB004473
31938	3	8220DB000250
31939	3	8220DB000251
31940	3	8220DB004597
31941	3	8220DB000255
31942	3	8220DB000218
31943	3	8240DB000219
31944	3	8220DB000220
31945	3	8240DB000221
31946	3	8240DB000222
31947	3	8240DB000223
31948	3	8240DB000224
31949	3	8240DB000225
31950	3	8240DB000226
31951	3	8220DB000114
31952	3	8240DB001645
31953	3	8220DB001646
31954	4	8220DB007571
31955	4	8220DB001644
31956	4	8220DB001605
31957	4	8220DB000228
31958	4	8240DB000229
31959	4	8240DB000227
31960	4	8240DB000230
31961	4	8240DB000231
31962	4	8240DB000232
31963	4	8220DB000233
31964	4	8220DB000242
31965	4	8220DB000243
31966	4	8220DB000253
31967	4	8220DB000244
31968	4	8220DB000245
31969	4	8220DB004474
31970	4	8220DB004790
31971	4	8220DB001220
31972	4	8220DB001221
31973	4	8220DB000674
31974	4	8220DB004389
31975	4	8220DB004390
31976	4	8220DB000530
31977	4	8220DB004785
31978	4	8220DB007607
31979	4	8220DB001764
31980	4	8220DB001765
31981	4	8220DB001766
31982	4	8220DB001767
31983	4	8220DB007129
31984	4	8220DB001734
31985	4	8220DB001735
31986	4	8220DB001736
31987	4	8220DB001737
31988	4	8220DB001738
31989	5	8250DB003058
31990	5	8250DB003059
31991	5	8250DB003060
31992	5	8250DB003061
31993	5	8250DB003062
31994	5	8250DB003063
31995	5	8250DB003064
31996	5	8250DB003065
31997	5	8250DB003066
31998	5	8250DB003067
31999	5	8250DB003068
32000	5	8250DB003069
32001	5	8250DB003070
32002	5	8250DB004983
32003	5	8250DB002042
32004	5	8250DB002043
32005	5	8250DB002044
32006	5	8250DB002045
32007	5	8250DB002046
32008	5	8250DB007553
32009	5	8250DB006082
32010	5	8250DB003205
32011	5	8250DB003206
32012	5	8250DB003207
32013	5	8250DB003208
32014	5	8250DB003209
32015	5	8250DB003210
32016	5	8250DB004981
32017	5	8250DB003211
32018	5	8250DB003212
32019	5	8250DB003213
32020	5	8250DB003214
32021	5	8250DB003215
32022	5	8250DB003216
32023	5	8250DB003217
32024	5	8250DB003218
32025	5	8250DB003219
32026	5	8250DB003220
32027	5	8250DB003221
32028	5	8250DB003222
32029	5	8250DB003223
32030	5	8250DB003134
32031	5	8250DB003143
32032	5	8250DB003144
32033	5	8250DB005046
32034	6	8250DB007639
32035	6	8250DB007640
32036	6	8250DB005047
32037	6	8250DB003134
32038	6	8250DB003143
32039	6	8250DB003144
32040	6	8250DB003221
32041	6	8250DB003222
32042	6	8250DB003223
32043	6	8250DB003224
32044	6	8250DB003225
32045	6	8250DB003226
32046	6	8250DB003227
32047	6	8250DB003228
32048	6	8250DB003229
32049	6	8250DB007472
32050	6	8250DB003230
32051	6	8250DB003232
32052	6	8250DB003233
32053	6	8250DB003234
32054	6	8250DB004462
32055	6	8250DB003235
32056	6	8250DB003236
32057	6	8250DB003237
32058	6	8250DB006103
32059	6	8250DB007554
32060	6	8250DB002031
32061	6	8250DB002032
32062	6	8250DB002033
32063	6	8250DB002034
32064	6	8250DB002035
32065	6	8250DB002036
32066	6	8250DB002039
32067	6	8250DB002037
32068	6	8250DB003046
32069	6	8250DB003047
32070	6	8250DB003048
32071	6	8250DB003049
32072	6	8250DB003050
32073	6	8250DB003051
32074	6	8250DB003052
32075	6	8250DB003053
32076	6	8250DB003054
32077	6	8250DB003055
32078	6	8250DB003056
32079	7	8250DB006200
32080	7	8250DB006201
32081	7	8250DB006196
32082	7	8250DB003532
32083	7	8250DB003533
32084	7	8250DB003491
32085	7	8250DB006007
32086	7	8250DB004349
32087	7	8250DB003184
32088	7	8250DB000449
32089	7	8250DB000450
32090	7	8250DB003181
32091	7	8250DB005142
32092	7	8250DB003187
32093	7	8250DB003188
32094	7	8250DB003189
32095	7	8250DB003190
32096	7	8250DB003191
32097	7	8250DB003192
32098	7	8250DB003193
32099	7	8250DB003194
32100	7	8250DB003195
32101	7	8250DB003196
32102	7	8250DB003198
32103	7	8250DB003199
32104	7	8250DB003200
32105	7	8250DB003201
32106	8	8250DB003085
32107	8	8250DB003082
32108	8	8250DB003165
32109	8	8250DB003166
32110	8	8250DB003167
32111	8	8250DB003168
32112	8	8250DB003169
32113	8	8250DB003171
32114	8	8250DB003173
32115	8	8250DB003174
32116	8	8250DB003175
32117	8	8250DB003176
32118	8	8250DB003177
32119	8	8250DB003178
32120	8	8250DB003179
32121	8	8250DB004984
32122	8	8250DB000448
32123	8	8250DB004457
32124	8	8250DB003182
32125	8	8250DB003183
32126	8	8250DB004350
32127	8	8250DB005143
32128	8	8250DB002833
32129	8	8250DB006006
32130	8	8250DB003493
32131	8	8250DB003494
32132	8	8250DB006197
32133	8	8250DB006198
32134	9	8230DB002934
32135	9	8230DB002935
32136	9	8230DB002936
32137	9	8230DB002937
32138	9	8230DB002938
32139	9	8230DB007440
32140	9	8230DB002940
32141	9	8230DB002948
32142	9	8230DB002949
32143	9	8230DB002950
32144	9	8230DB002954
32145	9	8230DB007067
32146	9	8230DB002956
32147	9	8230DB002965
32148	9	8230DB007448
32149	9	8230DB002967
32150	9	8230DB002968
32151	9	8250DB002969
32152	9	8250DB002970
32153	9	8250DB004988
32154	9	8250DB004707
32155	9	8250DB004708
32156	9	8250DB004336
32157	9	8250DB004337
32158	9	8250DB001310
32159	9	8250DB001311
32160	9	8250DB001312
32161	9	8250DB001313
32162	9	8250DB001055
32163	9	8250DB002868
32164	10	8250DB002825
32165	10	8250DB002867
32166	10	8250DB001035
32167	10	8250DB001314
32168	10	8250DB001316
32169	10	8250DB001315
32170	10	8250DB004332
32171	10	8250DB004333
32172	10	8250DB004334
32173	10	8250DB004712
32174	10	8250DB004582
32175	10	8250DB004987
32176	10	8250DB002979
32177	10	8230DB002980
32178	10	8230DB002981
32179	10	8230DB007447
32180	10	8230DB002954
32181	10	8230DB007067
32182	10	8230DB002956
32183	10	8230DB002965
32184	10	8230DB002983
32185	10	8230DB002984
32186	10	8230DB007449
32187	10	8230DB002927
32188	10	8230DB002929
32189	10	8230DB002930
32190	10	8230DB007441
32191	11	8220DB001380
32192	11	8220DB001381
32193	11	8220DB001406
32194	11	8220DB001407
32195	11	8220DB001409
32196	11	8220DB003353
32197	11	8220DB003354
32198	11	8220DB003355
32199	11	8220DB003356
32200	11	8220DB001400
32201	11	8220DB001391
32202	11	8220DB003357
32203	11	8220DB003358
32204	11	8220DB002449
32205	11	8220DB002450
32206	11	8220DB002451
32207	11	8220DB002434
32208	11	8220DB002435
32209	11	8220DB002436
32210	11	8220DB002437
32211	11	8220DB001117
32212	11	8220DB001118
32213	11	8220DB001119
32214	11	8220DB001120
32215	11	8220DB001299
32216	11	8220DB001300
32217	11	8230DB001301
32218	11	8230DB001302
32219	11	8230DB001303
32220	11	8230DB001304
32221	11	8230DB001305
32222	11	8250DB001306
32223	11	8250DB001307
32224	11	8250DB001308
32225	11	8250DB001309
32226	11	8250DB001310
32227	11	8250DB001311
32228	11	8250DB001312
32229	11	8250DB001313
32230	11	8250DB001055
32231	11	8250DB002868
32232	11	8250DB002892
32233	11	8250DB002893
32234	11	8250DB002894
32235	11	8250DB002895
32236	11	8250DB003012
32237	11	8250DB000861
32238	11	8250DB000862
32239	11	8250DB000863
32240	11	8250DB000864
32241	11	8250DB000865
32242	11	8250DB000866
32243	11	8250DB002052
32244	11	8250DB002082
32245	11	8250DB002083
32246	11	8250DB002084
32247	11	8250DB000765
32248	11	8250DB002007
32249	11	8250DB002008
32250	11	8250DB002009
32251	11	8250DB002010
32252	11	8250DB000462
32253	11	8250DB000464
32254	11	8250DB000465
32255	11	8250DB000466
32256	11	8250DB000467
32257	11	8250DB000468
32258	11	8250DB003032
32259	11	8250DB003033
32260	12	8250DB003085
32261	12	8250DB003082
32262	12	8250DB003083
32263	12	8250DB000430
32264	12	8250DB000431
32265	12	8250DB000432
32266	12	8250DB000433
32267	12	8250DB000434
32268	12	8250DB002068
32269	12	8250DB002069
32270	12	8250DB002070
32271	12	8250DB002084
32272	12	8250DB000765
32273	12	8250DB002007
32274	12	8250DB002008
32275	12	8250DB002071
32276	12	8250DB002072
32277	12	8250DB000867
32278	12	8250DB000869
32279	12	8250DB000870
32280	12	8250DB000873
32281	12	8250DB000874
32282	12	8250DB000875
32283	12	8250DB000876
32284	12	8250DB003011
32285	12	8250DB002820
32286	12	8250DB002822
32287	12	8250DB002823
32288	12	8250DB005032
32289	12	8250DB002867
32290	12	8250DB001035
32291	12	8250DB001314
32292	12	8250DB001316
32293	12	8250DB001315
32294	12	8250DB001317
32295	12	8250DB001318
32296	12	8250DB001319
32297	12	8250DB001281
32298	12	8230DB001329
32299	12	8230DB001330
32300	12	8230DB001331
32301	12	8230DB001332
32302	12	8230DB001333
32303	12	8230DB001334
32304	12	8220DB001335
32305	12	8220DB001336
32306	12	8220DB001086
32307	12	8220DB001087
32308	12	8220DB001088
32309	12	8220DB001089
32310	12	8220DB001090
32311	12	8220DB002413
32312	12	8220DB002414
32313	12	8220DB002415
32314	12	8220DB002327
32315	12	8220DB002464
32316	12	8220DB002465
32317	12	8220DB002466
32318	12	8220DB003360
32319	12	8220DB001392
32320	12	8220DB001394
32321	12	8220DB001395
32322	12	8220DB003361
32323	12	8220DB003362
32324	12	8220DB001436
32325	12	8220DB003952
32326	12	8220DB002190
32327	12	8220DB001366
32328	13	8250DB002825
32329	13	8250DB002867
32330	13	8250DB001035
32331	13	8250DB001314
32332	13	8250DB001316
32333	13	8250DB001315
32334	13	8250DB001317
32335	13	8250DB001318
32336	13	8250DB001319
32337	13	8250DB001281
32338	13	8230DB001329
32339	13	8230DB001330
32340	13	8230DB001331
32341	13	8230DB001332
32342	13	8230DB001333
32343	13	8230DB001334
32344	13	8220DB001335
32345	13	8220DB001336
32346	13	8220DB001086
32347	13	8220DB001087
32348	13	8220DB001088
32349	13	8220DB001089
32350	13	8220DB001090
32351	13	8220DB002413
32352	13	8220DB002414
32353	13	8220DB002415
32354	13	8220DB002327
32355	13	8220DB002464
32356	13	8220DB002465
32357	13	8220DB002466
32358	13	8220DB003360
32359	13	8220DB001392
32360	13	8220DB001394
32361	13	8220DB001395
32362	13	8220DB003361
32363	13	8220DB003362
32364	13	8220DB001436
32365	13	8220DB003952
32366	13	8220DB002190
32367	13	8220DB001366
32368	14	8220DB001380
32369	14	8220DB001381
32370	14	8220DB001406
32371	14	8220DB001407
32372	14	8220DB001409
32373	14	8220DB003353
32374	14	8220DB003354
32375	14	8220DB003355
32376	14	8220DB003356
32377	14	8220DB001400
32378	14	8220DB001391
32379	14	8220DB003357
32380	14	8220DB003358
32381	14	8220DB002449
32382	14	8220DB002450
32383	14	8220DB002451
32384	14	8220DB002434
32385	14	8220DB002435
32386	14	8220DB002436
32387	14	8220DB002437
32388	14	8220DB001117
32389	14	8220DB001118
32390	14	8220DB001119
32391	14	8220DB001120
32392	14	8220DB001299
32393	14	8220DB001300
32394	14	8230DB001301
32395	14	8230DB001302
32396	14	8230DB001303
32397	14	8230DB001304
32398	14	8230DB001305
32399	14	8250DB001306
32400	14	8250DB001307
32401	14	8250DB001308
32402	14	8250DB001309
32403	14	8250DB001310
32404	14	8250DB001311
32405	14	8250DB001312
32406	14	8250DB001313
32407	14	8250DB001055
32408	14	8250DB002868
32409	15	8230DB006001
32410	15	8230DB004438
32411	15	8230DB004713
32412	15	8230DB004714
32413	15	8230DB004960
32414	15	8230DB002669
32415	15	8230DB010334
32416	15	8230DB006075
32417	15	8230DB002631
32418	15	8230DB002359
32419	15	8230DB002360
32420	15	8230DB004348
32421	15	8230DB004646
32422	15	8230DB004647
32423	15	8230DB002346
32424	15	8230DB004435
32425	15	8230DB002604
32426	15	8230DB002605
32427	15	8230DB002538
32428	15	8230DB002539
32429	15	8230DB002540
32430	15	8230DB004882
32431	15	8230DB004883
32432	15	8230DB004884
32433	15	8230DB004885
32434	15	8230DB004886
32435	15	8230DB004887
32436	15	8230DB007443
32437	15	8230DB007444
32438	15	8230DB002948
32439	15	8230DB002949
32440	15	8230DB002950
32441	15	8230DB007448
32442	15	8230DB002967
32443	15	8230DB002968
32444	15	8250DB002969
32445	15	8250DB002970
32446	15	8250DB002971
32447	15	8250DB002858
32448	15	8250DB002859
32449	15	8250DB002860
32450	15	8250DB002861
32451	15	8250DB002841
32452	15	8250DB002865
32453	15	8250DB002866
32454	15	8250DB007719
32455	15	8250DB002052
32456	15	8250DB002082
32457	15	8250DB002083
32458	15	8250DB002084
32459	16	8250DB000765
32460	16	8250DB002007
32461	16	8250DB002008
32462	16	8250DB002071
32463	16	8250DB002072
32464	16	8250DB000867
32465	16	8250DB002825
32466	16	8250DB007716
32467	16	8250DB007717
32468	16	8250DB002845
32469	16	8250DB002846
32470	16	8250DB002847
32471	16	8250DB004397
32472	16	8250DB002978
32473	16	8250DB002979
32474	16	8230DB002980
32475	16	8230DB002981
32476	16	8230DB007447
32477	16	8230DB002983
32478	16	8230DB002984
32479	16	8230DB007449
32480	16	8230DB007442
32481	16	8230DB007446
32482	16	8230DB001149
32483	16	8230DB004869
32484	16	8230DB004870
32485	16	8230DB004871
32486	16	8230DB004872
32487	16	8230DB004873
32488	16	8230DB004874
32489	16	8230DB002532
32490	16	8230DB002533
32491	16	8230DB002534
32492	16	8230DB002535
32493	16	8230DB002536
32494	16	8230DB002616
32495	16	8230DB002617
32496	16	8230DB002557
32497	16	8230DB004436
32498	16	8230DB002363
32499	16	8230DB005008
32500	16	8230DB004640
32501	16	8230DB004347
32502	16	8230DB002349
32503	16	8230DB002351
32504	16	8230DB002621
32505	16	8230DB004644
32506	16	8230DB004645
32507	16	8230DB004930
32508	16	8230DB004931
32509	16	8230DB007459
32510	16	8230DB005022
32511	17	8230DB004359
32512	17	8230DB004360
32513	17	8230DB004361
32514	17	8230DB002202
32515	17	8230DB002203
32516	17	8230DB002204
32517	17	8230DB004888
32518	17	8230DB004799
32519	17	8230DB002205
32520	17	8230DB002687
32521	17	8220DB002688
32522	17	8220DB002689
32523	17	8220DB002696
32524	17	8220DB002697
32525	17	8220DB002700
32526	17	8220DB002701
32527	17	8220DB002702
32528	17	8220DB002784
32529	17	8220DB002785
32530	17	8220DB002786
32531	17	8220DB002787
32532	17	8220DB002181
32533	17	8220DB002182
32534	17	8220DB002778
32535	17	8220DB002185
32536	17	8220DB001421
32537	17	8220DB002317
32538	17	8220DB002318
32539	17	8220DB002319
32540	17	8220DB002464
32541	17	8220DB002465
32542	17	8220DB002466
32543	17	8220DB002467
32544	17	8220DB002494
32545	17	8220DB002495
32546	17	8220DB002496
32547	17	8220DB002497
32548	17	8220DB002471
32549	17	8220DB002472
32550	17	8220DB002473
32551	17	8220DB002474
32552	17	8220DB002475
32553	17	8220DB002476
32554	17	8220DB002477
32555	17	8220DB002478
32556	17	8220DB004527
32557	17	8220DB002788
32558	17	8220DB002789
32559	17	8220DB002790
32560	17	8220DB000903
32561	17	8220DB000904
32562	17	8220DB000779
32563	17	8220DB000780
32564	17	8220DB000781
32565	17	8220DB002796
32566	17	8220DB002797
32567	17	8220DB000414
32568	17	8220DB000415
32569	17	8220DB000416
32570	17	8220DB000417
32571	17	8220DB002800
32572	17	8220DB002801
32573	17	8220DB007599
32574	18	8220DB000385
32575	18	8220DB002806
32576	18	8220DB002807
32577	18	8220DB002808
32578	18	8220DB000486
32579	18	8220DB000487
32580	18	8220DB002798
32581	18	8220DB002799
32582	18	8220DB000753
32583	18	8220DB000754
32584	18	8220DB000755
32585	18	8220DB000849
32586	18	8220DB000850
32587	18	8220DB000851
32588	18	8220DB002791
32589	18	8220DB007668
32590	18	8220DB002793
32591	18	8220DB002794
32592	18	8220DB001077
32593	18	8220DB002479
32594	18	8220DB002480
32595	18	8220DB002481
32596	18	8220DB002482
32597	18	8220DB002483
32598	18	8220DB002484
32599	18	8220DB002485
32600	18	8220DB002486
32601	18	8220DB002487
32602	18	8220DB002488
32603	18	8220DB002489
32604	18	8220DB002448
32605	18	8220DB005026
32606	18	8220DB002450
32607	18	8220DB002328
32608	18	8220DB002329
32609	18	8220DB002330
32610	18	8220DB002331
32611	18	8220DB002101
32612	18	8220DB002102
32613	18	8220DB002726
32614	18	8220DB002727
32615	18	8220DB002105
32616	18	8220DB002780
32617	18	8220DB002781
32618	18	8220DB002782
32619	18	8220DB002783
32620	18	8220DB002652
32621	18	8220DB002653
32622	18	8220DB002654
32623	18	8220DB002655
32624	18	8220DB002656
32625	18	8220DB002668
32626	18	8220DB002672
32627	18	8230DB002673
32628	18	8230DB002206
32629	18	8230DB002207
32630	18	8230DB002208
32631	18	8230DB002210
32632	18	8230DB002211
32633	18	8230DB002212
32634	18	8230DB007165
32635	19	8350DB004168
32636	19	8350DB004170
32637	19	8350DB004132
32638	19	8350DB004134
32639	19	8350DB004135
32640	19	8350DB004136
32641	19	8350DB004207
32642	19	8350DB004208
32643	19	8350DB004209
32644	19	8350DB004210
32645	19	8350DB004211
32646	19	8350DB004212
32647	19	8350DB004213
32648	19	8350DB005139
32649	19	8350DB004214
32650	19	8350DB004215
32651	19	8350DB004216
32652	19	8350DB004289
32653	19	8350DB004290
32654	19	8350DB004291
32655	19	8350DB004222
32656	19	8350DB004224
32657	19	8350DB004225
32658	19	8350DB004226
32659	19	8350DB007462
32660	19	8350DB007461
32661	19	8350DB004227
32662	19	8350DB004228
32663	19	8350DB004229
32664	19	8350DB004230
32665	19	8350DB004232
32666	19	8350DB007351
32667	19	8350DB004234
32668	19	8350DB004235
32669	19	8350DB006019
32670	19	8350DB004236
32671	19	8350DB004650
32672	19	8350DB004651
32673	19	8350DB004652
32674	19	8350DB004653
32675	19	8350DB004654
32676	19	8350DB004655
32677	19	8350DB006138
32678	20	8350DB004657
32679	20	8350DB007279
32680	20	8350DB004658
32681	20	8350DB004659
32682	20	8350DB004660
32683	20	8350DB004661
32684	20	8350DB004238
32685	20	8350DB004239
32686	20	8350DB004237
32687	20	8350DB003442
32688	20	8350DB004240
32689	20	8350DB004241
32690	20	8350DB004242
32691	20	8350DB004243
32692	20	8350DB004244
32693	20	8350DB004277
32694	20	8350DB004278
32695	20	8350DB004279
32696	20	8350DB004280
32697	20	8350DB007462
32698	20	8350DB007461
32699	20	8350DB004281
32700	20	8350DB004282
32701	20	8350DB004283
32702	20	8350DB004284
32703	20	8350DB004292
32704	20	8350DB004293
32705	20	8350DB004294
32706	20	8350DB004295
32707	20	8350DB004296
32708	20	8350DB004297
32709	20	8350DB004299
32710	20	8350DB004300
32711	20	8350DB004301
32712	20	8350DB004302
32713	20	8350DB005135
32714	20	8350DB004303
32715	20	8350DB004304
32716	20	8350DB004148
32717	20	8350DB004149
32718	20	8350DB003045
32719	20	8350DB004150
32720	20	8350DB004151
32721	20	8350DB004156
32722	21	8350DB004109
32723	21	8350DB004110
32724	21	8350DB004111
32725	21	8350DB004112
32726	21	8350DB004113
32727	21	8350DB004095
32728	21	8350DB004192
32729	21	8350DB004194
32730	21	8350DB004196
32731	21	8350DB004422
32732	21	8350DB007369
32733	21	8350DB007294
32734	21	8350DB004132
32735	21	8350DB004134
32736	21	8350DB004135
32737	21	8350DB004136
32738	21	8350DB004207
32739	21	8350DB004137
32740	21	8350DB004138
32741	21	8350DB004139
32742	21	8350DB004140
32743	21	8350DB007522
32744	21	8350DB004175
32745	21	8350DB005091
32746	21	8350DB005092
32747	22	8350DB004167
32748	22	8350DB004170
32749	22	8350DB004153
32750	22	8350DB004154
32751	22	8350DB004416
32752	22	8350DB004417
32753	22	8350DB004419
32754	22	8350DB004420
32755	22	8350DB004421
32756	22	8350DB002113
32757	22	8350DB004183
32758	22	8350DB004184
32759	22	8350DB004185
32760	22	8350DB004584
32761	22	8350DB004186
32762	22	8350DB004187
32763	22	8350DB004189
32764	22	8350DB004190
32765	22	8350DB004103
32766	22	8350DB004104
32767	22	8350DB004105
32768	22	8350DB004106
32769	22	8350DB006139
32770	23	8220DB007571
32771	23	8220DB001644
32772	23	8220DB001605
32773	23	8220DB000092
32774	23	8220DB000093
32775	23	8240DB000124
32776	23	8240DB004686
32777	23	8240DB004687
32778	23	8220DB000102
32779	23	8220DB006239
32780	23	8220DB000104
32781	23	8220DB006241
32782	23	8220DB000105
32783	23	8220DB004365
32784	23	8220DB004367
32785	23	8220DB004788
32786	23	8220DB006273
32787	23	8220DB000136
32788	23	8220DB000137
32789	23	8220DB000193
32790	23	8220DB000979
32791	23	8220DB001529
32792	23	8220DB001530
32793	23	8220DB001531
32794	23	8220DB001532
32795	23	8220DB001592
32796	23	8220DB001593
32797	23	8220DB001594
32798	23	8220DB001596
32799	23	8220DB004363
32800	23	8220DB001598
32801	23	8220DB001597
32802	23	8220DB001599
32803	23	8220DB001600
32804	23	8220DB001601
32805	23	8220DB001602
32806	23	8220DB001603
32807	23	8220DB001604
32808	23	8220DB001573
32809	23	8220DB001574
32810	23	8220DB001575
32811	23	8220DB004583
32812	23	8220DB001576
32813	23	8220DB001577
32814	23	8220DB001578
32815	23	8220DB004364
32816	23	8240DB001580
32817	23	8240DB007237
32818	23	8240DB007241
32819	23	8240DB007247
32820	23	8240DB007243
32821	23	8240DB007126
32822	23	8240DB007124
32823	23	8240DB007343
32824	23	8240DB007318
32825	23	8240DB004980
32826	23	8240DB002289
32827	23	8240DB001835
32828	23	8240DB001836
32829	23	8240DB001837
32830	23	8240DB002338
32831	23	8240DB002290
32832	23	8240DB006179
32833	23	8240DB007297
32834	23	8240DB001813
32835	23	8240DB001814
32836	23	8240DB001852
32837	23	8240DB001853
32838	23	8240DB001854
32839	23	8240DB001844
32840	23	8240DB006172
32841	23	8240DB001856
32842	23	8240DB001857
32843	23	8240DB001858
32844	23	8240DB001859
32845	23	8240DB001860
32846	23	8240DB004492
32847	23	8240DB001861
32848	23	8240DB001862
32849	23	8240DB001863
32850	23	8240DB001864
32851	23	8240DB001865
32852	23	8240DB001866
32853	23	8240DB001850
32854	23	8240DB001867
32855	23	8240DB004489
32856	23	8240DB004323
32857	23	8240DB001824
32858	23	8240DB001825
32859	23	8240DB001826
32860	24	8240DB001828
32861	24	8240DB001829
32862	24	8240DB001830
32863	24	8240DB001831
32864	24	8240DB004464
32865	24	8240DB001869
32866	24	8240DB001870
32867	24	8240DB001871
32868	24	8240DB001872
32869	24	8240DB001873
32870	24	8240DB001874
32871	24	8240DB001875
32872	24	8240DB001876
32873	24	8240DB001877
32874	24	8240DB001878
32875	24	8240DB001879
32876	24	8240DB001880
32877	24	8240DB001881
32878	24	8240DB007379
32879	24	8240DB004903
32880	24	8240DB001883
32881	24	8240DB001884
32882	24	8240DB001902
32883	24	8240DB001903
32884	24	8240DB001904
32885	24	8240DB001840
32886	24	8240DB001841
32887	24	8240DB001842
32888	24	8240DB007298
32889	24	8240DB002294
32890	24	8240DB006039
32891	24	8240DB001816
32892	24	8240DB001817
32893	24	8240DB001818
32894	24	8240DB001819
32895	24	8240DB001820
32896	24	8240DB002468
32897	24	8240DB007319
32898	24	8240DB007342
32899	24	8240DB007125
32900	24	8240DB007344
32901	24	8240DB002510
32902	24	8240DB007242
32903	24	8240DB007238
32904	24	8240DB007224
32905	24	8240DB001581
32906	24	8220DB004793
32907	24	8220DB006068
32908	24	8220DB001584
32909	24	8220DB001585
32910	24	8220DB001586
32911	24	8220DB001600
32912	24	8220DB001601
32913	24	8220DB001602
32914	24	8220DB001603
32915	24	8220DB001604
32916	24	8220DB001587
32917	24	8220DB004539
32918	24	8220DB001606
32919	24	8220DB001607
32920	24	8220DB001608
32921	24	8220DB001609
32922	24	8220DB001610
32923	24	8220DB007471
32924	24	8220DB001512
32925	24	8220DB001538
32926	24	8220DB001513
32927	24	8220DB004592
32928	24	8220DB004375
32929	24	8220DB004366
32930	24	8220DB004479
32931	24	8220DB004376
32932	24	8220DB004377
32933	24	8220DB004890
32934	24	8220DB004369
32935	24	8220DB004368
32936	24	8220DB004781
32937	24	8220DB000107
32938	24	8220DB007092
32939	24	8220DB000110
32940	24	8240DB000124
32941	24	8240DB004686
32942	24	8240DB004687
32943	24	8220DB000112
32944	24	8220DB000113
32945	24	8220DB000114
32946	24	8240DB001645
32947	24	8220DB001646
32948	25	8240DB004747
32949	25	8240DB002960
32950	25	8240DB001545
32951	25	8240DB001816
32952	25	8240DB006171
32953	25	8240DB004974
32954	25	8240DB004976
32955	25	8240DB007126
32956	25	8240DB007124
32957	25	8240DB007343
32958	25	8240DB007575
32959	25	8240DB004978
32960	25	8240DB004979
32961	25	8240DB004986
32962	25	8240DB007107
32963	25	8240DB007102
32964	25	8240DB007103
32965	25	8240DB007104
32966	25	8240DB007105
32967	25	8240DB007106
32968	25	8240DB006005
32969	25	8240DB001546
32970	25	8240DB007381
32971	25	8240DB004742
32972	25	8240DB004743
32973	25	8240DB004744
32974	26	8240DB004745
32975	26	8240DB004989
32976	26	8240DB004990
32977	26	8240DB004991
32978	26	8240DB004992
32979	26	8240DB004986
32980	26	8240DB007107
32981	26	8240DB007102
32982	26	8240DB007103
32983	26	8240DB007104
32984	26	8240DB007105
32985	26	8240DB007106
32986	26	8240DB006005
32987	26	8240DB001546
32988	26	8240DB005071
32989	26	8240DB005072
32990	26	8240DB004321
32991	26	8240DB007570
32992	26	8240DB007342
32993	26	8240DB007125
32994	26	8240DB007344
32995	26	8240DB007334
32996	26	8240DB006274
32997	26	8240DB001838
32998	26	8240DB002338
32999	26	8240DB000661
33000	27	8240DB001828
33001	27	8240DB001829
33002	27	8240DB001830
33003	27	8240DB001831
33004	27	8240DB004747
33005	27	8240DB002960
33006	27	8240DB001545
33007	27	8240DB001816
33008	27	8240DB001817
33009	27	8240DB001818
33010	27	8240DB001819
33011	27	8240DB001820
33012	27	8240DB002468
33013	27	8240DB004978
33014	27	8240DB004979
33015	27	8240DB004986
33016	27	8240DB007107
33017	27	8240DB007102
33018	27	8240DB007103
33019	27	8240DB007104
33020	27	8240DB007105
33021	27	8240DB007106
33022	27	8240DB006005
33023	27	8240DB001546
33024	28	8240DB007073
33025	28	8240DB007097
33026	28	8240DB007098
33027	28	8240DB007099
33028	28	8240DB007100
33029	28	8240DB007101
33030	28	8240DB007505
33031	28	8240DB005071
33032	28	8240DB005072
33033	28	8240DB004980
33034	28	8240DB002289
33035	28	8240DB001835
33036	28	8240DB001836
33037	28	8240DB001837
33038	28	8240DB002338
33039	28	8240DB000661
33040	28	8240DB007026
33041	28	8240DB004323
33042	28	8240DB001824
33043	28	8240DB001825
33044	28	8240DB001826
33045	29	8240DB007026
33046	29	8240DB004323
33047	29	8240DB004324
33048	29	8240DB004769
33049	29	8240DB004770
33050	29	8240DB004765
33051	29	8240DB004766
33052	29	8240DB004767
33053	29	8240DB004768
33054	29	8240DB004325
33055	29	8310DB003328
33056	29	8310DB003329
33057	29	8310DB003330
33058	29	8310DB003331
33059	29	8310DB003351
33060	29	8310DB003332
33061	30	8310DB003333
33062	30	8310DB003334
33063	30	8310DB003352
33064	30	8310DB003335
33065	30	8310DB003336
33066	30	8310DB003337
33067	30	8310DB003338
33068	30	8310DB003339
33069	30	8240DB003340
33070	30	8240DB004324
33071	30	8240DB004769
33072	30	8240DB004770
33073	30	8240DB004765
33074	30	8240DB004766
33075	30	8240DB004767
33076	30	8240DB004768
33077	31	8240DB003677
33078	31	8240DB003678
33079	31	8240DB003679
33080	31	8240DB003711
33081	31	8240DB003712
33082	31	8240DB003713
33083	31	8240DB003714
33084	31	8240DB003715
33085	31	8240DB005175
33086	31	8240DB003755
33087	31	8240DB003756
33088	31	8240DB003757
33089	31	8240DB003758
33090	31	8240DB003759
33091	31	8240DB003760
33092	31	8240DB003761
33093	31	8240DB003762
33094	31	8240DB003763
33095	31	8240DB003764
33096	31	8240DB003765
33097	31	8240DB003766
33098	31	8240DB003767
33099	31	8240DB003768
33100	31	8240DB003770
33101	31	8240DB003769
33102	31	8240DB003771
33103	31	8240DB003772
33104	31	8240DB003773
33105	31	8240DB005176
33106	31	8240DB003774
33107	31	8240DB007172
33108	31	8240DB003775
33109	31	8240DB003777
33110	31	8240DB003778
33111	31	8240DB003781
33112	31	8240DB003782
33113	31	8240DB003783
33114	31	8240DB003784
33115	31	8240DB003785
33116	31	8240DB003786
33117	31	8240DB003787
33118	31	8240DB003788
33119	31	8240DB003789
33120	31	8240DB003790
33121	31	8240DB003791
33122	31	8240DB003792
33123	31	8240DB003793
33124	31	8240DB003794
33125	31	8240DB003795
33126	31	8240DB003797
33127	31	8240DB003798
33128	31	8240DB003799
33129	31	8240DB006076
33130	31	8240DB006077
33131	31	8240DB003569
33132	31	8240DB003571
33133	31	8240DB003801
33134	31	8240DB003802
33135	31	8240DB003805
33136	31	8240DB007175
33137	31	8240DB003806
33138	31	8240DB003807
33139	31	8240DB003808
33140	31	8240DB003809
33141	32	8240DB007348
33142	32	8240DB003671
33143	32	8240DB003672
33144	32	8240DB003674
33145	32	8240DB003675
33146	32	8240DB003676
33147	32	8240DB003677
33148	32	8240DB003678
33149	32	8240DB003679
33150	32	8240DB003711
33151	32	8240DB003712
33152	32	8240DB003713
33153	32	8240DB003714
33154	32	8240DB003715
33155	32	8240DB005175
33156	32	8240DB003755
33157	32	8240DB003756
33158	32	8240DB003757
33159	32	8240DB003758
33160	32	8240DB003759
33161	32	8240DB003760
33162	32	8240DB003761
33163	32	8240DB003762
33164	32	8240DB003763
33165	32	8240DB003764
33166	32	8240DB003765
33167	32	8240DB003766
33168	32	8240DB003767
33169	32	8240DB003768
33170	32	8240DB003770
33171	32	8240DB003769
33172	32	8240DB003771
33173	32	8240DB003772
33174	32	8240DB003773
33175	32	8240DB005176
33176	32	8240DB003774
33177	32	8240DB007172
33178	32	8240DB003775
33179	32	8240DB003777
33180	32	8240DB003778
33181	32	8240DB003781
33182	32	8240DB003782
33183	32	8240DB003783
33184	32	8240DB003784
33185	32	8240DB003785
33186	32	8240DB003786
33187	32	8240DB003787
33188	32	8240DB003788
33189	32	8240DB003789
33190	32	8240DB003790
33191	32	8240DB003791
33192	32	8240DB003792
33193	32	8240DB003793
33194	32	8240DB003794
33195	32	8240DB003795
33196	32	8240DB003797
33197	32	8240DB003798
33198	32	8240DB003799
33199	32	8240DB006076
33200	32	8240DB006077
33201	32	8240DB003569
33202	32	8240DB003571
33203	32	8240DB003801
33204	33	8240DB003732
33205	33	8240DB003733
33206	33	8240DB003734
33207	33	8240DB003735
33208	33	8240DB007204
33209	33	8240DB003736
33210	33	8240DB003739
33211	33	8240DB003738
33212	33	8240DB007170
33213	33	8240DB003740
33214	33	8240DB003741
33215	33	8240DB005165
33216	33	8240DB007169
33217	33	8240DB003743
33218	33	8240DB003780
33219	33	8240DB007723
33220	33	8240DB003745
33221	33	8240DB003746
33222	33	8240DB007040
33223	33	8240DB003749
33224	33	8240DB003750
33225	33	8240DB003752
33226	33	8240DB003751
33227	33	8240DB003689
33228	33	8240DB003690
33229	34	8240DB003732
33230	34	8240DB003733
33231	34	8240DB003734
33232	34	8240DB003735
33233	34	8240DB007204
33234	34	8240DB003736
33235	34	8240DB003738
33236	34	8240DB007170
33237	34	8240DB003740
33238	34	8240DB003741
33239	34	8240DB005165
33240	34	8240DB007169
33241	34	8240DB003743
33242	34	8240DB003780
33243	34	8240DB007723
33244	34	8240DB003745
33245	34	8240DB003746
33246	34	8240DB007040
33247	34	8240DB003749
33248	34	8240DB003750
33249	34	8240DB003752
33250	34	8240DB003751
33251	34	8240DB003689
33252	34	8240DB003690
33253	35	8240DB003723
33254	35	8240DB003724
33255	35	8240DB003725
33256	35	8240DB003726
33257	35	8240DB007039
33258	35	8240DB007204
33259	35	8240DB003728
33260	35	8240DB003729
33261	35	8240DB003730
33262	35	8240DB003732
33263	35	8240DB003733
33264	35	8240DB003734
33265	35	8240DB003735
33266	35	8240DB003738
33267	35	8240DB007170
33268	35	8240DB003740
33269	35	8240DB003741
33270	35	8240DB005165
33271	35	8240DB007169
33272	35	8240DB003743
33273	35	8240DB003780
33274	35	8240DB007721
33275	35	8240DB003755
33276	35	8240DB003756
33277	35	8240DB003757
33278	35	8240DB003758
33279	35	8240DB003759
33280	35	8240DB003760
33281	35	8240DB003761
33282	35	8240DB003762
33283	35	8240DB003763
33284	36	8240DB007722
33285	36	8240DB007691
33286	36	8240DB003721
33287	36	8240DB003722
33288	36	8240DB005069
33289	36	8240DB003723
33290	36	8240DB003724
33291	36	8240DB003725
33292	36	8240DB003726
33293	36	8240DB003728
33294	36	8240DB003729
33295	36	8240DB003730
33296	36	8240DB003732
33297	36	8240DB003733
33298	36	8240DB003734
33299	36	8240DB003735
33300	36	8240DB007204
33301	36	8240DB003736
33302	36	8240DB003738
33303	36	8240DB007170
33304	36	8240DB003740
33305	37	8350DB004533
33306	37	8350DB004844
33307	37	8350DB004177
33308	37	8350DB004178
33309	37	8350DB004142
33310	37	8350DB004143
33311	37	8350DB004144
33312	37	8350DB004145
33313	37	8350DB004146
33314	37	8350DB004304
33315	37	8350DB004148
33316	37	8350DB004149
33317	37	8350DB003045
33318	37	8350DB004150
33319	37	8350DB004151
33320	37	8350DB002997
33321	37	8350DB004156
33322	37	8350DB004169
33323	37	8350DB004170
33324	37	8350DB004153
33325	37	8350DB004154
33326	37	8350DB004416
33327	37	8350DB004201
33328	37	8250DB004202
33329	37	8250DB004203
33330	37	8250DB005090
33331	37	8250DB004204
33332	37	8250DB004205
33333	37	8250DB004206
33334	37	8250DB003140
33335	37	8250DB003545
33336	37	8250DB003552
33337	37	8250DB003553
33338	37	8250DB003554
33339	37	8250DB003555
33340	37	8250DB003556
33341	37	8250DB003557
33342	37	8250DB003560
33343	37	8250DB007323
33344	37	8250DB003561
33345	37	8250DB003225
33346	37	8250DB003226
33347	37	8250DB003227
33348	37	8250DB003228
33349	37	8250DB003229
33350	37	8250DB007472
33351	37	8250DB003230
33352	37	8250DB003231
33353	37	8250DB003246
33354	37	8250DB003247
33355	37	8250DB007056
33356	37	8250DB003248
33357	37	8250DB003343
33358	37	8250DB003236
33359	37	8250DB003237
33360	37	8250DB003238
33361	37	8250DB003239
33362	37	8250DB003240
33363	37	8250DB003068
33364	37	8250DB003069
33365	37	8250DB003070
33366	38	8350DB004533
33367	38	8350DB004844
33368	38	8350DB004177
33369	38	8350DB004178
33370	38	8350DB004142
33371	38	8350DB004143
33372	38	8350DB004144
33373	38	8350DB005088
33374	38	8350DB005089
33375	38	8350DB004176
33376	38	8350DB004149
33377	38	8350DB003045
33378	38	8350DB004150
33379	38	8350DB004151
33380	38	8350DB002997
33381	38	8350DB004156
33382	38	8350DB004169
33383	38	8350DB004170
33384	38	8350DB004153
33385	38	8350DB004154
33386	38	8350DB004416
33387	38	8350DB004201
33388	38	8250DB004202
33389	38	8250DB004203
33390	38	8250DB005090
33391	38	8250DB004204
33392	38	8250DB004205
33393	38	8250DB004206
33394	38	8250DB003140
33395	38	8250DB003545
33396	38	8250DB003552
33397	38	8250DB003553
33398	38	8250DB003554
33399	38	8250DB003555
33400	38	8250DB003556
33401	38	8250DB003557
33402	38	8250DB003560
33403	38	8250DB007323
33404	38	8250DB003561
33405	38	8250DB003225
33406	38	8250DB003226
33407	38	8250DB003227
33408	38	8250DB003228
33409	38	8250DB003229
33410	38	8250DB007472
33411	38	8250DB003230
33412	38	8250DB003231
33413	38	8250DB003246
33414	38	8250DB003247
33415	38	8250DB007056
33416	38	8250DB003248
33417	38	8250DB003343
33418	38	8250DB003236
33419	38	8250DB003237
33420	38	8250DB003238
33421	38	8250DB003239
33422	38	8250DB003240
33423	38	8250DB003068
33424	38	8250DB003069
33425	38	8250DB003070
33426	39	8350DB004533
33427	39	8350DB004844
33428	39	8350DB004177
33429	39	8350DB004178
33430	39	8350DB004142
33431	39	8350DB004143
33432	39	8350DB004144
33433	39	8350DB005088
33434	39	8350DB005089
33435	39	8350DB004176
33436	39	8350DB004149
33437	39	8350DB003045
33438	39	8350DB004150
33439	39	8350DB004151
33440	39	8350DB002997
33441	39	8350DB004156
33442	39	8350DB004169
33443	39	8350DB004170
33444	39	8350DB004153
33445	39	8350DB004154
33446	39	8350DB004416
33447	39	8350DB004201
33448	39	8250DB004202
33449	39	8250DB004203
33450	39	8250DB005090
33451	39	8250DB004204
33452	39	8250DB004205
33453	39	8250DB004206
33454	39	8250DB003140
33455	39	8250DB003545
33456	39	8250DB003546
33457	39	8250DB003551
33458	39	8250DB003547
33459	39	8250DB003548
33460	39	8250DB003552
33461	39	8250DB003553
33462	39	8250DB003554
33463	39	8250DB003555
33464	39	8250DB003556
33465	39	8250DB003557
33466	39	8250DB003560
33467	39	8250DB007323
33468	39	8250DB003561
33469	39	8250DB003225
33470	39	8250DB003226
33471	39	8250DB003227
33472	39	8250DB003228
33473	39	8250DB003229
33474	39	8250DB007472
33475	39	8250DB003230
33476	39	8250DB003231
33477	39	8250DB003246
33478	39	8250DB003247
33479	39	8250DB007056
33480	39	8250DB003248
33481	39	8250DB003343
33482	39	8250DB003236
33483	39	8250DB003237
33484	39	8250DB003238
33485	39	8250DB003239
33486	39	8250DB003240
33487	39	8250DB003068
33488	39	8250DB003069
33489	39	8250DB003070
33490	40	8250DB002037
33491	40	8250DB002040
33492	40	8250DB003047
33493	40	8250DB003202
33494	40	8250DB003203
33495	40	8250DB003204
33496	40	8250DB003205
33497	40	8250DB003206
33498	40	8250DB003241
33499	40	8250DB003242
33500	40	8250DB003243
33501	40	8250DB003244
33502	40	8250DB003245
33503	40	8250DB003212
33504	40	8250DB003213
33505	40	8250DB003214
33506	40	8250DB003215
33507	40	8250DB003216
33508	40	8250DB003217
33509	40	8250DB003218
33510	40	8250DB003534
33511	40	8250DB003535
33512	40	8250DB003536
33513	40	8250DB003537
33514	40	8250DB003538
33515	40	8250DB007556
33516	40	8250DB003539
33517	40	8250DB003540
33518	40	8250DB003541
33519	40	8250DB003546
33520	40	8250DB003551
33521	40	8250DB003547
33522	40	8250DB003548
33523	40	8250DB003542
33524	40	8250DB003543
33525	40	8250DB003139
33526	40	8250DB004124
33527	40	8250DB004125
33528	40	8250DB004126
33529	40	8250DB004127
33530	40	8250DB004128
33531	40	8350DB004129
33532	40	8350DB004130
33533	40	8350DB004131
33534	40	8350DB007294
33535	40	8350DB004156
33536	40	8350DB004169
33537	40	8350DB004170
33538	40	8350DB004132
33539	40	8350DB004134
33540	40	8350DB004135
33541	40	8350DB004136
33542	40	8350DB004147
33543	40	8350DB005167
33544	40	8350DB004139
33545	40	8350DB004140
33546	40	8350DB007522
33547	40	8350DB004175
33548	40	8350DB005091
33549	40	8350DB005092
33550	41	8220DB000956
33551	41	8240DB000957
33552	41	8220DB000958
33553	41	8220DB000959
33554	41	8220DB000960
33555	41	8220DB000961
33556	41	8220DB000962
33557	41	8220DB000963
33558	41	8220DB000964
33559	41	8220DB000965
33560	41	8220DB000966
33561	41	8220DB000967
33562	41	8220DB000968
33563	41	8220DB001252
33564	41	8220DB001228
33565	41	8220DB001244
33566	41	8220DB004597
33567	41	8220DB001246
33568	41	8220DB001229
33569	41	8220DB005174
33570	41	8220DB006078
33571	41	8220DB007112
33572	41	8220DB000972
33573	41	8240DB000973
33574	41	8240DB000974
33575	41	8240DB000975
33576	41	8240DB005055
33577	41	8240DB000976
33578	41	8220DB000127
33579	41	8220DB000102
33580	41	8220DB006239
33581	41	8220DB000104
33582	41	8220DB006241
33583	41	8220DB000105
33584	41	8220DB004365
33585	41	8220DB004367
33586	41	8240DB006219
33587	41	8240DB006229
33588	41	8240DB006364
33589	41	8220DB001558
33590	41	8220DB002957
33591	41	8220DB002958
33592	41	8220DB004938
33593	41	8220DB007845
33594	42	8220DB007838
33595	42	8220DB000987
33596	42	8220DB004937
33597	42	8220DB001547
33598	42	8220DB001548
33599	42	8220DB001280
33600	42	8240DB006366
33601	42	8240DB006230
33602	42	8240DB006228
33603	42	8220DB004368
33604	42	8220DB004781
33605	42	8220DB000107
33606	42	8220DB006125
33607	42	8220DB007092
33608	42	8220DB000110
33609	42	8220DB007828
33610	42	8220DB000126
33611	42	8240DB000989
33612	42	8240DB006009
33613	42	8240DB000990
33614	42	8240DB000992
33615	42	8220DB007044
33616	42	8220DB000993
33617	42	8220DB005060
33618	42	8220DB005061
33619	42	8220DB001235
33620	42	8220DB001251
33621	42	8220DB000253
33622	42	8220DB007130
33623	42	8220DB001237
33624	42	8220DB001253
33625	42	8220DB000997
33626	42	8220DB000998
33627	42	8220DB000999
33628	42	8220DB001000
33629	42	8220DB001001
33630	42	8220DB001002
33631	42	8220DB001003
33632	42	8220DB001004
33633	42	8220DB001005
33634	42	8220DB001006
33635	42	8220DB001007
33636	42	8220DB001008
33637	42	8220DB001009
33638	42	8240DB001010
33639	43	8250DB002037
33640	43	8250DB003046
33641	43	8250DB003047
33642	43	8250DB003048
33643	43	8250DB003049
33644	43	8250DB003050
33645	43	8250DB003051
33646	43	8250DB003052
33647	43	8250DB003053
33648	43	8250DB003054
33649	43	8250DB003055
33650	43	8250DB003056
33651	43	8250DB003057
33652	43	8250DB004830
33653	43	8250DB003091
33654	43	8250DB003092
33655	43	8250DB003093
33656	43	8250DB003094
33657	43	8250DB003095
33658	43	8250DB003096
33659	43	8250DB003097
33660	43	8250DB003098
33661	44	8250DB003099
33662	44	8250DB003100
33663	44	8250DB003101
33664	44	8250DB003102
33665	44	8250DB003103
33666	44	8250DB005105
33667	44	8250DB003105
33668	44	8250DB003106
33669	44	8250DB003107
33670	44	8250DB003108
33671	44	8250DB007666
33672	44	8250DB003111
33673	44	8250DB003058
33674	44	8250DB003059
33675	44	8250DB003060
33676	44	8250DB003061
33677	44	8250DB003062
33678	44	8250DB003063
33679	44	8250DB003064
33680	44	8250DB003065
33681	44	8250DB003066
33682	44	8250DB003067
33683	44	8250DB003068
33684	44	8250DB003069
33685	44	8250DB003070
33686	45	8250DB002039
33687	45	8250DB002040
33688	45	8250DB002041
33689	45	8250DB002042
33690	45	8250DB002043
33691	45	8250DB002044
33692	45	8250DB002045
33693	45	8250DB002046
33694	45	8250DB002047
33695	45	8250DB002048
33696	45	8250DB002049
33697	45	8250DB002050
33698	45	8250DB002051
33699	45	8250DB002053
33700	45	8250DB002054
33701	45	8250DB002055
33702	45	8250DB007636
33703	45	8250DB007651
33704	45	8250DB007635
33705	45	8250DB003254
33706	45	8250DB005127
33707	45	8250DB005128
33708	45	8250DB003126
33709	45	8250DB003255
33710	45	8250DB003309
33711	45	8250DB003306
33712	45	8250DB004772
33713	45	8250DB003276
33714	45	8250DB007372
33715	45	8250DB005106
33716	45	8250DB004396
33717	45	8250DB004773
33718	45	8250DB004393
33719	45	8250DB004395
33720	45	8250DB004313
33721	45	8250DB007360
33722	45	8250DB003277
33723	45	8250DB003278
33724	45	8250DB003279
33725	45	8250DB003478
33726	45	8250DB003280
33727	46	8250DB002039
33728	46	8250DB002040
33729	46	8250DB002041
33730	46	8250DB002042
33731	46	8250DB002043
33732	46	8250DB002044
33733	46	8250DB002045
33734	46	8250DB002046
33735	46	8250DB002047
33736	46	8250DB002048
33737	46	8250DB002049
33738	46	8250DB002050
33739	46	8250DB002051
33740	46	8250DB002053
33741	46	8250DB002054
33742	46	8250DB002055
33743	46	8250DB007636
33744	46	8250DB007651
33745	46	8250DB007635
33746	46	8250DB003254
33747	46	8250DB005127
33748	46	8250DB005128
33749	46	8250DB003126
33750	46	8250DB003255
33751	46	8250DB003309
33752	46	8250DB003306
33753	46	8250DB004772
33754	46	8250DB003276
33755	46	8250DB007372
33756	46	8250DB005106
33757	46	8250DB004396
33758	46	8250DB004773
33759	46	8250DB004393
33760	46	8250DB004395
33761	46	8250DB004313
33762	46	8250DB003277
33763	46	8250DB003278
33764	46	8250DB003279
33765	46	8250DB003478
33766	46	8250DB003280
33767	47	8250DB002039
33768	47	8250DB002040
33769	47	8250DB002041
33770	47	8250DB002042
33771	47	8250DB002043
33772	47	8250DB002044
33773	47	8250DB002045
33774	47	8250DB002046
33775	47	8250DB004568
33776	47	8250DB004569
33777	47	8250DB004570
33778	47	8250DB002056
33779	47	8250DB002057
33780	47	8250DB002058
33781	47	8250DB002059
33782	47	8250DB002060
33783	47	8250DB002061
33784	47	8250DB002062
33785	47	8250DB002063
33786	47	8250DB002064
33787	47	8250DB002065
33788	47	8250DB004637
33789	47	8250DB003322
33790	47	8250DB003563
33791	47	8250DB000444
33792	47	8250DB000445
33793	47	8250DB007393
33794	47	8250DB002880
33795	47	8250DB002882
33796	47	8250DB002883
33797	47	8250DB002885
33798	47	8250DB002886
33799	47	8250DB002887
33800	47	8250DB007718
33801	47	8250DB002842
33802	47	8250DB002843
33803	47	8250DB002844
33804	47	8250DB002845
33805	47	8250DB002846
33806	47	8250DB002847
33807	47	8250DB004397
33808	47	8250DB002848
33809	47	8250DB002849
33810	47	8250DB002850
33811	47	8250DB002851
33812	47	8250DB002852
33813	47	8250DB004707
33814	47	8250DB004708
33815	47	8250DB004336
33816	47	8250DB004337
33817	47	8250DB001317
33818	47	8250DB001318
33819	47	8250DB001319
33820	47	8250DB001281
33821	47	8230DB001329
33822	47	8230DB001330
33823	47	8230DB005129
33824	47	8230DB005130
33825	47	8230DB001138
33826	47	8230DB001139
33827	47	8230DB001140
33828	47	8230DB002515
33829	47	8230DB002516
33830	47	8230DB002517
33831	47	8230DB002518
33832	47	8230DB002520
33833	47	8230DB002521
33834	47	8230DB002522
33835	47	8230DB002524
33836	47	8230DB002523
33837	47	8230DB002532
33838	47	8230DB002533
33839	47	8230DB002534
33840	47	8230DB002535
33841	47	8230DB002536
33842	47	8230DB002616
33843	47	8230DB002617
33844	47	8230DB002557
33845	47	8230DB004436
33846	47	8230DB005008
33847	47	8230DB004640
33848	47	8230DB004347
33849	48	8230DB004342
33850	48	8230DB004348
33851	48	8230DB004646
33852	48	8230DB004647
33853	48	8230DB004435
33854	48	8230DB002604
33855	48	8230DB002605
33856	48	8230DB002538
33857	48	8230DB002539
33858	48	8230DB002540
33859	48	8230DB002542
33860	48	8230DB006128
33861	48	8230DB002544
33862	48	8230DB002545
33863	48	8230DB002547
33864	48	8230DB002548
33865	48	8230DB000946
33866	48	8230DB001131
33867	48	8230DB001132
33868	48	8230DB001133
33869	48	8230DB001134
33870	48	8230DB005131
33871	48	8230DB005132
33872	48	8230DB001305
33873	48	8250DB001306
33874	48	8250DB001307
33875	48	8250DB001308
33876	48	8250DB001309
33877	48	8250DB004332
33878	48	8250DB004333
33879	48	8250DB004334
33880	48	8250DB004712
33881	48	8250DB002853
33882	48	8250DB002854
33883	48	8250DB002855
33884	48	8250DB002856
33885	48	8250DB002857
33886	48	8250DB002858
33887	48	8250DB002859
33888	48	8250DB002860
33889	48	8250DB002861
33890	48	8250DB002862
33891	48	8250DB002863
33892	48	8250DB002864
33893	48	8250DB004486
33894	48	8250DB002865
33895	48	8250DB002866
33896	48	8250DB007719
33897	48	8250DB007720
33898	48	8250DB002872
33899	48	8250DB002873
33900	48	8250DB002874
33901	48	8250DB002877
33902	48	8250DB007394
33903	48	8250DB002878
33904	48	8250DB002879
33905	48	8250DB004460
33906	48	8250DB000453
33907	48	8250DB004477
33908	48	8250DB003321
33909	48	8250DB004571
33910	48	8250DB002013
33911	48	8250DB002014
33912	48	8250DB004636
33913	48	8250DB002016
33914	48	8250DB002015
33915	48	8250DB002017
33916	48	8250DB002018
33917	48	8250DB002019
33918	48	8250DB002020
33919	48	8250DB002021
33920	48	8250DB002022
33921	48	8250DB004565
33922	48	8250DB004566
33923	48	8250DB004567
33924	48	8250DB002031
33925	48	8250DB002032
33926	48	8250DB002033
33927	48	8250DB002034
33928	48	8250DB002035
33929	48	8250DB002036
33930	49	8250DB002039
33931	49	8250DB002040
33932	49	8250DB002041
33933	49	8250DB002042
33934	49	8250DB002043
33935	49	8250DB002044
33936	49	8250DB002045
33937	49	8250DB002046
33938	49	8250DB004568
33939	49	8250DB004569
33940	49	8250DB004570
33941	49	8250DB002056
33942	49	8250DB002057
33943	49	8250DB002058
33944	49	8250DB002059
33945	49	8250DB002060
33946	49	8250DB002061
33947	49	8250DB002062
33948	49	8250DB002063
33949	49	8250DB002064
33950	49	8250DB002065
33951	49	8250DB004637
33952	49	8250DB003322
33953	49	8250DB003563
33954	49	8250DB000444
33955	49	8250DB000445
33956	49	8250DB004779
33957	49	8250DB007057
33958	49	8250DB004847
33959	49	8250DB004848
33960	49	8250DB000449
33961	49	8250DB000450
33962	49	8250DB003181
33963	49	8250DB000447
33964	49	8250DB005045
33965	49	8250DB007393
33966	49	8250DB002880
33967	49	8250DB002882
33968	49	8250DB002883
33969	49	8250DB002885
33970	49	8250DB002886
33971	49	8250DB002887
33972	49	8250DB007718
33973	49	8250DB002842
33974	49	8250DB002843
33975	49	8250DB002844
33976	49	8250DB002845
33977	49	8250DB002846
33978	49	8250DB002847
33979	49	8250DB004397
33980	49	8250DB002848
33981	49	8250DB002849
33982	49	8250DB002850
33983	49	8250DB002851
33984	49	8250DB002852
33985	49	8250DB004707
33986	49	8250DB004708
33987	49	8250DB004336
33988	49	8250DB004337
33989	49	8250DB001317
33990	49	8250DB001318
33991	49	8250DB001319
33992	49	8250DB001281
33993	49	8230DB001329
33994	49	8230DB001330
33995	49	8230DB005129
33996	49	8230DB005130
33997	49	8230DB001138
33998	49	8230DB001139
33999	49	8230DB001140
34000	49	8230DB002515
34001	49	8230DB002516
34002	49	8230DB002517
34003	49	8230DB002518
34004	49	8230DB002520
34005	49	8230DB002521
34006	49	8230DB002522
34007	49	8230DB002524
34008	49	8230DB002523
34009	49	8230DB002532
34010	49	8230DB002533
34011	49	8230DB002534
34012	49	8230DB002535
34013	49	8230DB002536
34014	49	8230DB002616
34015	49	8230DB002617
34016	49	8230DB002557
34017	49	8230DB004436
34018	49	8230DB005008
34019	49	8230DB004640
34020	49	8230DB004347
34021	50	8230DB004342
34022	50	8230DB004348
34023	50	8230DB004646
34024	50	8230DB004647
34025	50	8230DB004435
34026	50	8230DB002604
34027	50	8230DB002605
34028	50	8230DB002538
34029	50	8230DB002539
34030	50	8230DB002540
34031	50	8230DB002542
34032	50	8230DB006128
34033	50	8230DB002544
34034	50	8230DB002545
34035	50	8230DB002547
34036	50	8230DB002548
34037	50	8230DB000946
34038	50	8230DB001131
34039	50	8230DB001132
34040	50	8230DB001133
34041	50	8230DB001134
34042	50	8230DB005131
34043	50	8230DB005132
34044	50	8230DB001305
34045	50	8250DB001306
34046	50	8250DB001307
34047	50	8250DB001308
34048	50	8250DB001309
34049	50	8250DB004332
34050	50	8250DB004333
34051	50	8250DB004334
34052	50	8250DB004712
34053	50	8250DB002853
34054	50	8250DB002854
34055	50	8250DB002855
34056	50	8250DB002856
34057	50	8250DB002857
34058	50	8250DB002858
34059	50	8250DB002859
34060	50	8250DB002860
34061	50	8250DB002861
34062	50	8250DB002862
34063	50	8250DB002863
34064	50	8250DB002864
34065	50	8250DB004486
34066	50	8250DB002865
34067	50	8250DB002866
34068	50	8250DB007719
34069	50	8250DB007720
34070	50	8250DB002872
34071	50	8250DB002873
34072	50	8250DB002874
34073	50	8250DB002877
34074	50	8250DB007394
34075	50	8250DB002878
34076	50	8250DB002879
34077	50	8250DB004779
34078	50	8250DB007057
34079	50	8250DB004847
34080	50	8250DB004848
34081	50	8250DB000449
34082	50	8250DB000450
34083	50	8250DB003181
34084	50	8250DB000447
34085	50	8250DB005045
34086	50	8250DB004460
34087	50	8250DB000453
34088	50	8250DB004477
34089	50	8250DB003321
34090	50	8250DB004571
34091	50	8250DB002013
34092	50	8250DB002014
34093	50	8250DB004636
34094	50	8250DB002016
34095	50	8250DB002015
34096	50	8250DB002017
34097	50	8250DB002018
34098	50	8250DB002019
34099	50	8250DB002020
34100	50	8250DB002021
34101	50	8250DB002022
34102	50	8250DB004565
34103	50	8250DB004566
34104	50	8250DB004567
34105	50	8250DB002031
34106	50	8250DB002032
34107	50	8250DB002033
34108	50	8250DB002034
34109	50	8250DB002035
34110	50	8250DB002036
34111	51	8230DB004341
34112	51	8230DB004348
34113	51	8230DB004646
34114	51	8230DB004647
34115	51	8230DB002363
34116	51	8230DB002364
34117	51	8230DB002618
34118	51	8230DB005011
34119	51	8230DB002762
34120	51	8230DB002110
34121	51	8230DB002111
34122	51	8230DB002112
34123	51	8230DB002114
34124	51	8230DB002115
34125	51	8230DB002116
34126	51	8230DB002117
34127	51	8230DB002118
34128	51	8230DB002119
34129	51	8230DB002120
34130	51	8230DB002121
34131	51	8230DB002123
34132	51	8230DB002685
34133	51	8230DB004795
34134	51	8230DB002686
34135	51	8230DB007510
34136	51	8230DB004799
34137	51	8230DB002205
34138	51	8230DB002687
34139	51	8220DB002688
34140	51	8220DB002689
34141	51	8220DB002696
34142	51	8220DB002697
34143	51	8220DB004414
34144	51	8220DB005009
34145	52	8220DB002243
34146	52	8220DB002200
34147	52	8220DB005006
34148	52	8220DB005007
34149	52	8220DB002655
34150	52	8220DB002656
34151	52	8220DB002668
34152	52	8220DB002672
34153	52	8230DB002673
34154	52	8230DB002206
34155	52	8230DB004798
34156	52	8230DB004795
34157	52	8230DB002675
34158	52	8230DB002124
34159	52	8230DB002125
34160	52	8230DB002126
34161	52	8230DB002127
34162	52	8230DB002128
34163	52	8230DB002129
34164	52	8230DB002130
34165	52	8230DB002158
34166	52	8230DB002159
34167	52	8230DB004409
34168	52	8230DB002173
34169	52	8230DB002174
34170	52	8230DB003425
34171	52	8230DB002763
34172	52	8230DB002619
34173	52	8230DB002620
34174	52	8230DB002345
34175	52	8230DB005008
34176	52	8230DB004640
34177	52	8230DB004347
34178	53	8240DB004747
34179	53	8240DB002960
34180	53	8240DB001840
34181	53	8240DB001841
34182	53	8240DB001842
34183	53	8240DB007374
34184	53	8230DB002241
34185	53	8230DB002242
34186	53	8220DB002243
34187	53	8220DB002200
34188	53	8220DB005006
34189	53	8220DB005007
34190	53	8220DB002655
34191	53	8220DB002656
34192	53	8220DB002668
34193	53	8220DB002672
34194	53	8230DB002673
34195	53	8230DB002206
34196	53	8230DB004798
34197	53	8230DB004795
34198	53	8230DB002675
34199	53	8230DB002124
34200	53	8230DB002125
34201	53	8230DB002126
34202	53	8230DB002127
34203	53	8230DB002128
34204	53	8230DB002129
34205	53	8230DB002130
34206	53	8230DB002158
34207	53	8230DB002159
34208	53	8230DB004409
34209	53	8230DB002173
34210	53	8230DB002174
34211	53	8230DB003425
34212	53	8230DB002763
34213	53	8230DB002619
34214	53	8230DB002620
34215	53	8230DB002345
34216	53	8230DB005008
34217	53	8230DB004640
34218	53	8230DB004347
34219	54	8230DB004341
34220	54	8230DB004348
34221	54	8230DB004646
34222	54	8230DB004647
34223	54	8230DB002363
34224	54	8230DB002364
34225	54	8230DB002618
34226	54	8230DB005011
34227	54	8230DB002762
34228	54	8230DB002110
34229	54	8230DB002111
34230	54	8230DB002112
34231	54	8230DB002114
34232	54	8230DB002115
34233	54	8230DB002116
34234	54	8230DB002117
34235	54	8230DB002118
34236	54	8230DB002119
34237	54	8230DB002120
34238	54	8230DB002121
34239	54	8230DB002123
34240	54	8230DB002685
34241	54	8230DB004795
34242	54	8230DB002686
34243	54	8230DB007510
34244	54	8230DB004799
34245	54	8230DB002205
34246	54	8230DB002687
34247	54	8220DB002688
34248	54	8220DB002689
34249	54	8220DB002696
34250	54	8220DB002697
34251	54	8220DB004414
34252	54	8220DB005009
34253	54	8230DB002201
34254	54	8230DB004401
34255	54	8240DB001813
34256	54	8240DB001814
34257	55	8230DB006290
34258	55	8230DB007800
34259	55	8230DB003890
34260	55	8230DB003891
34261	55	8230DB003949
34262	55	8230DB003950
34263	55	8230DB007774
34264	55	8230DB002225
34265	55	8230DB004620
34266	55	8230DB007563
34267	55	8230DB003368
34268	55	8230DB004626
34269	55	8230DB004627
34270	55	8230DB004327
34271	55	8230DB007752
34272	55	8230DB007808
34273	55	8230DB007806
34274	55	8230DB007768
34275	55	8230DB007772
34276	55	8230DB007792
34277	55	8230DB007754
34278	56	8230DB004715
34279	56	8230DB07755
34280	56	8230DB007793
34281	56	8230DB007773
34282	56	8230DB007769
34283	56	8230DB007807
34284	56	8230DB007809
34285	56	8230DB005138
34286	56	8230DB007751
34287	56	8230DB004611
34288	56	8230DB004612
34289	56	8230DB004613
34290	56	8230DB003370
34291	56	8230DB007168
34292	56	8230DB004616
34293	56	8230DB002227
34294	56	8230DB007775
34295	56	8230DB003886
34296	56	8230DB003887
34297	56	8230DB003888
34298	56	8230DB007810
34299	56	8230DB007749
34300	56	8230DB007801
34301	57	8230DB006290
34302	57	8230DB007800
34303	57	8230DB003890
34304	57	8230DB003891
34305	57	8230DB003949
34306	57	8230DB003950
34307	57	8230DB007774
34308	57	8230DB002229
34309	57	8230DB006133
34310	57	8230DB002228
34311	57	8240DB006127
34312	57	8240DB004826
34313	57	8240DB001912
34314	57	8240DB001895
34315	57	8240DB001896
34316	57	8240DB001897
34317	57	8240DB007227
34318	57	8240DB006073
34319	57	8240DB004493
34320	57	8240DB004362
34321	58	8240DB007026
34322	58	8240DB001882
34323	58	8240DB007379
34324	58	8240DB004903
34325	58	8240DB007219
34326	58	8240DB001887
34327	58	8240DB001888
34328	58	8240DB001889
34329	58	8240DB001890
34330	58	8240DB004820
34331	58	8240DB006126
34332	58	8230DB002226
34333	58	8230DB006134
34334	58	8230DB002223
34335	58	8230DB002224
34336	58	8230DB003886
34337	58	8230DB003887
34338	58	8230DB003888
34339	58	8230DB007810
34340	58	8230DB007749
34341	58	8230DB007801
34342	59	8250DB002039
34343	59	8250DB002040
34344	59	8250DB002041
34345	59	8250DB002042
34346	59	8250DB002043
34347	59	8250DB002044
34348	59	8250DB002045
34349	59	8250DB002046
34350	59	8250DB002047
34351	59	8250DB002048
34352	59	8250DB002049
34353	59	8250DB002050
34354	59	8250DB002051
34355	59	8250DB002053
34356	59	8250DB002054
34357	59	8250DB002055
34358	59	8250DB007636
34359	59	8250DB007651
34360	59	8250DB007635
34361	59	8250DB003254
34362	59	8250DB005127
34363	59	8250DB005128
34364	59	8250DB003126
34365	59	8250DB003255
34366	59	8250DB003256
34367	59	8250DB003265
34368	59	8250DB003266
34369	59	8250DB003346
34370	59	8250DB003267
34371	59	8250DB003268
34372	59	8250DB003269
34373	59	8250DB003270
34374	59	8250DB003271
34375	59	8250DB003272
34376	59	8250DB003273
34377	59	8250DB003274
34378	59	8250DB003275
34379	59	8250DB003276
34380	59	8250DB007372
34381	59	8250DB005106
34382	59	8250DB004396
34383	59	8250DB004773
34384	59	8250DB004393
34385	59	8250DB004395
34386	59	8250DB004313
34387	59	8250DB003277
34388	59	8250DB003278
34389	59	8250DB003279
34390	59	8250DB003478
34391	59	8250DB003280
34392	60	8250DB003283
34393	60	8250DB003284
34394	60	8250DB003285
34395	60	8250DB007324
34396	60	8250DB005106
34397	60	8250DB004396
34398	60	8250DB004773
34399	60	8250DB004393
34400	60	8250DB004395
34401	60	8250DB004313
34402	60	8250DB007373
34403	60	8250DB003289
34404	60	8250DB003290
34405	60	8250DB005168
34406	60	8250DB003291
34407	60	8250DB003292
34408	60	8250DB003293
34409	60	8250DB003294
34410	60	8250DB003295
34411	60	8250DB003296
34412	60	8250DB003297
34413	60	8250DB003298
34414	60	8250DB003260
34415	60	8250DB003261
34416	60	8250DB003262
34417	60	8250DB003153
34418	60	8250DB007362
34419	60	8250DB003129
34420	60	8250DB007634
34421	60	8250DB003249
34422	60	8250DB007637
34423	60	8250DB002023
34424	60	8250DB002024
34425	60	8250DB002025
34426	60	8250DB002026
34427	60	8250DB002027
34428	60	8250DB002028
34429	60	8250DB002029
34430	60	8250DB002030
34431	60	8250DB002031
34432	60	8250DB002032
34433	60	8250DB002033
34434	60	8250DB002034
34435	60	8250DB002035
34436	60	8250DB002036
34437	61	8260DB005117
34438	62	8220DB001644
34439	62	8220DB001945
34440	62	8220DB001948
34441	62	8220DB001956
34442	62	8230DB001960
34443	62	8230DB003427
34444	63	8250DB000767
34445	63	8220DB000746
34446	63	8220DB001013
34447	63	8220DB001286
34448	63	8220DB002101
34449	63	8230DB001960
34450	63	8230DB003427
34451	64	8220DB000746
34452	64	8220DB001013
34453	64	8220DB001286
34454	64	8220DB002101
34455	64	8230DB001960
34456	64	8230DB003427
34457	65	8240DB000226
34458	65	8220DB000228
34459	65	8240DB000229
34460	65	8240DB000227
34461	65	8240DB000230
34462	65	8240DB000231
34463	65	8220DB001641
34464	65	8220DB001642
34465	65	8220DB000213
34466	65	8220DB000214
34467	65	8220DB004432
34468	65	8220DB000119
34469	65	8220DB000044
34470	65	8220DB007603
34471	65	8220DB000045
34472	65	8220DB000046
34473	65	8220DB000047
34474	65	8220DB000048
34475	65	8220DB000049
34476	65	8220DB000051
34477	65	8220DB000052
34478	65	8220DB000265
34479	65	8220DB000271
34480	65	8220DB000340
34481	66	8220DB000400
34482	66	8220DB000319
34483	66	8220DB000278
34484	66	8220DB000010
34485	66	8220DB000012
34486	66	8220DB000014
34487	66	8220DB000015
34488	66	8220DB000017
34489	66	8220DB000018
34490	66	8220DB000019
34491	66	8220DB000021
34492	66	8220DB007602
34493	66	8220DB000085
34494	66	8220DB000203
34495	66	8220DB000204
34496	66	8220DB000205
34497	66	8220DB001620
34498	66	8220DB000220
34499	66	8240DB000221
34500	66	8240DB000222
34501	66	8240DB000223
34502	66	8240DB000224
34503	66	8240DB000225
34504	67	8250DB000449
34505	67	8250DB000450
34506	67	8250DB003181
34507	67	8250DB000451
34508	67	8250DB000447
34509	67	8250DB005045
34510	67	8250DB004460
34511	67	8250DB000453
34512	67	8250DB000454
34513	67	8250DB004475
34514	67	8250DB003023
34515	67	8250DB003024
34516	67	8250DB003025
34517	67	8250DB003026
34518	67	8250DB003027
34519	67	8250DB003028
34520	67	8250DB003029
34521	67	8250DB003030
34522	67	8250DB003031
34523	67	8250DB000875
34524	67	8250DB000876
34525	67	8250DB000878
34526	67	8250DB000879
34527	67	8250DB000880
34528	67	8220DB000881
34529	67	8220DB000882
34530	67	8220DB000883
34531	67	8220DB000884
34532	67	8220DB000885
34533	67	8220DB000886
34534	67	8220DB000887
34535	67	8220DB000903
34536	67	8220DB000904
34537	67	8220DB000906
34538	67	8220DB000907
34539	67	8220DB000908
34540	67	8220DB000909
34541	67	8220DB000786
34542	67	8220DB000793
34543	67	8220DB000320
34544	67	8220DB000278
34545	67	8220DB000010
34546	67	8220DB000012
34547	67	8220DB000014
34548	67	8220DB000015
34549	67	8220DB000017
34550	67	8220DB000018
34551	67	8220DB000019
34552	67	8220DB000021
34553	67	8220DB007602
34554	67	8220DB000022
34555	67	8220DB000023
34556	67	8220DB000024
34557	67	8220DB000025
34558	67	8220DB000027
34559	67	8220DB000028
34560	67	8220DB000029
34561	67	8220DB004680
34562	67	8220DB000031
34563	67	8220DB000032
34564	67	8220DB000033
34565	67	8220DB007220
34566	68	8220DB006122
34567	68	8220DB000035
34568	68	8220DB000036
34569	68	8220DB000037
34570	68	8220DB000038
34571	68	8220DB000039
34572	68	8220DB000040
34573	68	8220DB000041
34574	68	8220DB000042
34575	68	8220DB000043
34576	68	8220DB000044
34577	68	8220DB007603
34578	68	8220DB000045
34579	68	8220DB000046
34580	68	8220DB000047
34581	68	8220DB000048
34582	68	8220DB000049
34583	68	8220DB000051
34584	68	8220DB000052
34585	68	8220DB000261
34586	68	8220DB000271
34587	68	8220DB000404
34588	68	8220DB000747
34589	68	8220DB000842
34590	68	8220DB000845
34591	68	8220DB000846
34592	68	8220DB000847
34593	68	8220DB000848
34594	68	8220DB000849
34595	68	8220DB000850
34596	68	8220DB000851
34597	68	8220DB000852
34598	68	8220DB000853
34599	68	8220DB000854
34600	68	8220DB000855
34601	68	8220DB000856
34602	68	8220DB000857
34603	68	8220DB000858
34604	68	8250DB000859
34605	68	8250DB000860
34606	68	8250DB000861
34607	68	8250DB000862
34608	68	8250DB003014
34609	68	8250DB003015
34610	68	8250DB003016
34611	68	8250DB003017
34612	68	8250DB003018
34613	68	8250DB003019
34614	68	8250DB003020
34615	68	8250DB003021
34616	68	8250DB003022
34617	68	8250DB000441
34618	68	8250DB000442
34619	68	8250DB000443
34620	68	8250DB000444
34621	68	8250DB000445
34622	68	8250DB004779
34623	68	8250DB007057
34624	68	8250DB004847
34625	69	8220DB000848
34626	69	8220DB002795
34627	69	8220DB000756
34628	69	8220DB000757
34629	69	8220DB000758
34630	69	8220DB000759
34631	69	8220DB000760
34632	69	8220DB000761
34633	69	8220DB000762
34634	69	8220DB000763
34635	69	8250DB002007
34636	69	8250DB002008
34637	69	8250DB002009
34638	69	8250DB002010
34639	69	8250DB000435
34640	69	8250DB002011
34641	69	8250DB002012
34642	69	8250DB003322
34643	69	8250DB003563
34644	69	8250DB000444
34645	69	8250DB000445
34646	69	8250DB004779
34647	69	8250DB007057
34648	69	8250DB004847
34649	69	8250DB004848
34650	69	8250DB004350
34651	69	8250DB005143
34652	69	8250DB002837
34653	69	8250DB002838
34654	69	8250DB002839
34655	69	8250DB002840
34656	69	8250DB002845
34657	69	8250DB002846
34658	69	8250DB002847
34659	69	8250DB004397
34660	69	8250DB002848
34661	69	8250DB002849
34662	69	8250DB002850
34663	69	8250DB002851
34664	69	8250DB002852
34665	69	8250DB004987
34666	69	8250DB002978
34667	69	8250DB002979
34668	69	8230DB002980
34669	69	8230DB002981
34670	69	8230DB002954
34671	70	8230DB002955
34672	70	8230DB007067
34673	70	8230DB002956
34674	70	8230DB002965
34675	70	8230DB002967
34676	70	8230DB002968
34677	70	8250DB002969
34678	70	8250DB002970
34679	70	8250DB004988
34680	70	8250DB002853
34681	70	8250DB002854
34682	70	8250DB002855
34683	70	8250DB002856
34684	70	8250DB002857
34685	70	8250DB002858
34686	70	8250DB002859
34687	70	8250DB002860
34688	70	8250DB002861
34689	70	8250DB002829
34690	70	8250DB002830
34691	70	8250DB002831
34692	70	8250DB002832
34693	70	8250DB004349
34694	70	8250DB003184
34695	70	8250DB000449
34696	70	8250DB000450
34697	70	8250DB003181
34698	70	8250DB000451
34699	70	8250DB000447
34700	70	8250DB005045
34701	70	8250DB004460
34702	70	8250DB000453
34703	70	8250DB004477
34704	70	8250DB003321
34705	70	8250DB004727
34706	70	8250DB004728
34707	70	8250DB000461
34708	70	8250DB002068
34709	70	8250DB002069
34710	70	8250DB002070
34711	70	8250DB002084
34712	70	8250DB000768
34713	70	8220DB000769
34714	70	8220DB000770
34715	70	8220DB000771
34716	70	8220DB000772
34717	70	8220DB000773
34718	70	8220DB000774
34719	70	8220DB000775
34720	70	8220DB000776
34721	70	8220DB000777
34722	70	8220DB000906
34723	70	8220DB000907
34724	70	8220DB000908
34725	70	8220DB000909
34726	70	8220DB000786
34727	70	8220DB000792
34728	70	8220DB007586
34729	70	8220DB007587
34730	70	8220DB007588
34731	70	8220DB000281
34732	71	8250DB003283
34733	71	8250DB003284
34734	71	8250DB003310
34735	71	8250DB003481
34736	71	8250DB003482
34737	71	8250DB003483
34738	71	8250DB003484
34739	71	8250DB003485
34740	71	8250DB003486
34741	71	8250DB003487
34742	71	8250DB007415
34743	71	8250DB007416
34744	71	8250DB007325
34745	71	8250DB003317
34746	71	8250DB003318
34747	71	8250DB003320
34748	71	8250DB002064
34749	71	8250DB002065
34750	71	8250DB004727
34751	71	8250DB004728
34752	71	8250DB000461
34753	71	8250DB002068
34754	71	8250DB002069
34755	71	8250DB002070
34756	71	8250DB002084
34757	71	8250DB000768
34758	71	8220DB000769
34759	71	8220DB000770
34760	71	8220DB000771
34761	71	8220DB000772
34762	71	8220DB000773
34763	71	8220DB000774
34764	71	8220DB000775
34765	71	8220DB000776
34766	71	8220DB000777
34767	71	8220DB000906
34768	71	8220DB000907
34769	71	8220DB000908
34770	71	8220DB000909
34771	71	8220DB000786
34772	71	8220DB000792
34773	71	8220DB007586
34774	71	8220DB007587
34775	72	8220DB000485
34776	72	8220DB000487
34777	72	8220DB000488
34778	72	8220DB000489
34779	72	8220DB000490
34780	72	8220DB000491
34781	72	8220DB000492
34782	72	8220DB000493
34783	72	8220DB000494
34784	72	8220DB000495
34785	72	8220DB000400
34786	72	8220DB000279
34787	72	8220DB000003
34788	72	8220DB000192
34789	72	8220DB000795
34790	72	8220DB000796
34791	72	8220DB000056
34792	72	8220DB000058
34793	72	8220DB004499
34794	72	8220DB004934
34795	72	8220DB004500
34796	72	8220DB004481
34797	72	8220DB004485
34798	72	8220DB000822
34799	72	8220DB000823
34800	72	8220DB000824
34801	72	8220DB000825
34802	72	8220DB000826
34803	72	8220DB000827
34804	72	8220DB000071
34805	72	8220DB000072
34806	72	8220DB005144
34807	72	8220DB007027
34808	72	8220DB004538
34809	72	8220DB007396
34810	72	8220DB005145
34811	73	8220DB000284
34812	73	8220DB004504
34813	73	8220DB007028
34814	73	8220DB005147
34815	73	8220DB000068
34816	73	8220DB000030
34817	73	8220DB000069
34818	73	8220DB000828
34819	73	8220DB000829
34820	73	8220DB000830
34821	73	8220DB000831
34822	73	8220DB000075
34823	73	8220DB004501
34824	73	8220DB004935
34825	73	8220DB004502
34826	73	8220DB004936
34827	73	8220DB000079
34828	73	8220DB000080
34829	73	8220DB000082
34830	73	8220DB000817
34831	73	8220DB000818
34832	73	8220DB000819
34833	73	8220DB000263
34834	73	8220DB004725
34835	73	8220DB004495
34836	73	8220DB002809
34837	73	8220DB000408
34838	73	8220DB000409
34839	73	8220DB000410
34840	73	8220DB000411
34841	73	8220DB000412
34842	73	8220DB000413
34843	73	8220DB000414
34844	74	8220DB001423
34845	74	8220DB001424
34846	74	8220DB001425
34847	74	8220DB001426
34848	74	8220DB001427
34849	74	8220DB001428
34850	74	8220DB001429
34851	74	8220DB001430
34852	74	8220DB001432
34853	74	8220DB001433
34854	74	8220DB001434
34855	74	8220DB001435
34856	74	8220DB007439
34857	74	8220DB007454
34858	74	8220DB001380
34859	74	8220DB001381
34860	74	8220DB001382
34861	74	8220DB001383
34862	74	8220DB001384
34863	74	8220DB001385
34864	74	8220DB001348
34865	74	8220DB001349
34866	74	8220DB001350
34867	74	8220DB001352
34868	74	8220DB001353
34869	74	8220DB001355
34870	74	8220DB001357
34871	74	8220DB001359
34872	74	8220DB000279
34873	74	8220DB000003
34874	74	8220DB000012
34875	74	8220DB000014
34876	74	8220DB000053
34877	74	8220DB000054
34878	74	8220DB000055
34879	74	8220DB000056
34880	74	8220DB000058
34881	74	8220DB000059
34882	74	8220DB000060
34883	74	8220DB000820
34884	74	8220DB000821
34885	74	8220DB000063
34886	74	8220DB000064
34887	74	8220DB000065
34888	74	8220DB000066
34889	74	8220DB004498
34890	74	8220DB001660
34891	74	8220DB001661
34892	74	8220DB004523
34893	74	8220DB004524
34894	75	8220DB004525
34895	75	8220DB004526
34896	75	8220DB001700
34897	75	8220DB001701
34898	75	8220DB001702
34899	75	8220DB000016
34900	75	8220DB000073
34901	75	8220DB000074
34902	75	8220DB004371
34903	75	8220DB000832
34904	75	8220DB000833
34905	75	8220DB000077
34906	75	8220DB000078
34907	75	8220DB000079
34908	75	8220DB000080
34909	75	8220DB000082
34910	75	8220DB000083
34911	75	8220DB000084
34912	75	8220DB000051
34913	75	8220DB000052
34914	75	8220DB000263
34915	75	8220DB000271
34916	75	8220DB001278
34917	75	8220DB001282
34918	75	8220DB004456
34919	75	8220DB001284
34920	75	8220DB001285
34921	75	8220DB001286
34922	75	8220DB001288
34923	75	8220DB001289
34924	75	8220DB001360
34925	75	8220DB001362
34926	75	8220DB001363
34927	75	8220DB001364
34928	75	8220DB001365
34929	75	8220DB001366
34930	75	8220DB001367
34931	75	8220DB007455
34932	75	8220DB007438
34933	75	8220DB001410
34934	75	8220DB001411
34935	75	8220DB001412
34936	75	8220DB001413
34937	75	8220DB001414
34938	75	8220DB001415
34939	75	8220DB001417
34940	75	8220DB001418
34941	75	8220DB005149
34942	75	8220DB001419
34943	76	8220DB001491
34944	76	8220DB001492
34945	76	8220DB001493
34946	76	8220DB001482
34947	76	8220DB001494
34948	76	8220DB001495
34949	76	8220DB001496
34950	76	8220DB001515
34951	76	8220DB001499
34952	76	8220DB001485
34953	76	8220DB004518
34954	76	8220DB000509
34955	76	8220DB000510
34956	76	8220DB000511
34957	76	8220DB000513
34958	76	8220DB004513
34959	76	8220DB000272
34960	76	8220DB000335
34961	76	8220DB001278
34962	76	8220DB001934
34963	76	8220DB001935
34964	76	8220DB001937
34965	76	8220DB001938
34966	76	8220DB001939
34967	76	8220DB001940
34968	76	8220DB001941
34969	76	8220DB004516
34970	76	8220DB001369
34971	76	8220DB001370
34972	76	8220DB001371
34973	76	8220DB001454
34974	76	8220DB001455
34975	76	8220DB001453
34976	76	8220DB001456
34977	76	8220DB001457
34978	76	8220DB001458
34979	76	8220DB001459
34980	76	8220DB001460
34981	76	8220DB001462
34982	76	8220DB005149
34983	76	8220DB001419
34984	76	8220DB006094
34985	76	8220DB002102
34986	76	8220DB002103
34987	76	8220DB007154
34988	76	8220DB007153
34989	77	8220DB006057
34990	77	8220DB002183
34991	77	8220DB002184
34992	77	8220DB002185
34993	77	8220DB001423
34994	77	8220DB001424
34995	77	8220DB001425
34996	77	8220DB001426
34997	77	8220DB001463
34998	77	8220DB004399
34999	77	8220DB004400
35000	77	8220DB001464
35001	77	8220DB001469
35002	77	8220DB001465
35003	77	8220DB001466
35004	77	8220DB001467
35005	77	8220DB001468
35006	77	8220DB001377
35007	77	8220DB001378
35008	77	8220DB004514
35009	77	8220DB004515
35010	77	8220DB001995
35011	77	8220DB001996
35012	77	8220DB001997
35013	77	8220DB001998
35014	77	8220DB001999
35015	77	8220DB002001
35016	77	8220DB002002
35017	77	8220DB001359
35018	77	8220DB000274
35019	77	8220DB001505
35020	77	8220DB004509
35021	77	8220DB000499
35022	77	8220DB000500
35023	77	8220DB000501
35024	77	8220DB001484
35025	77	8220DB001481
35026	77	8220DB007320
35027	77	8220DB001486
35028	77	8220DB001487
35029	77	8220DB001488
35030	77	8220DB001489
35031	78	8230DB007229
35032	78	8230DB004617
35033	78	8230DB004555
35034	78	8230DB007714
35035	78	8230DB003415
35036	78	8230DB003416
35037	78	8230DB003417
35038	78	8230DB003418
35039	78	8230DB003419
35040	78	8230DB002374
35041	78	8230DB002146
35042	78	8230DB002147
35043	78	8230DB002148
35044	78	8230DB002149
35045	78	8230DB002150
35046	78	8230DB002151
35047	78	8230DB002152
35048	78	8230DB002153
35049	78	8230DB002154
35050	78	8230DB006245
35051	78	8230DB004671
35052	78	8230DB004672
35053	78	8230DB003465
35054	78	8230DB004673
35055	78	8230DB002172
35056	78	8230DB002159
35057	78	8230DB004409
35058	78	8230DB004550
35059	78	8230DB004551
35060	78	8230DB001965
35061	78	8230DB001966
35062	78	8230DB007781
35063	78	8230DB001975
35064	78	8230DB001977
35065	78	8230DB001978
35066	78	8230DB001980
35067	78	8220DB001981
35068	78	8220DB001982
35069	78	8220DB004406
35070	78	8220DB001984
35071	78	8220DB001985
35072	78	8220DB001986
35073	78	8220DB001987
35074	78	8220DB001988
35075	78	8220DB001989
35076	78	8220DB001990
35077	78	8220DB001992
35078	78	8220DB001993
35079	78	8220DB001994
35080	78	8220DB001995
35081	78	8220DB001996
35082	78	8220DB001997
35083	78	8220DB001998
35084	78	8220DB001999
35085	78	8220DB002001
35086	78	8220DB002002
35087	78	8220DB001359
35088	78	8220DB000319
35089	78	8220DB000281
35090	78	8220DB000007
35091	78	8220DB000011
35092	78	8220DB000014
35093	78	8220DB000015
35094	78	8220DB000017
35095	78	8220DB000018
35096	78	8220DB000019
35097	78	8220DB000021
35098	78	8220DB007602
35099	78	8220DB000085
35100	78	8220DB000086
35101	78	8220DB000087
35102	78	8220DB000088
35103	78	8220DB00089
35104	78	8220DB000027
35105	78	8220DB000028
35106	78	8220DB000029
35107	78	8220DB004680
35108	78	8220DB000090
35109	78	8220DB000091
35110	78	8220DB000092
35111	78	8220DB000093
35112	78	8220DB000094
35113	78	8220DB000102
35114	78	8220DB006239
35115	78	8220DB000104
35116	78	8220DB006241
35117	78	8220DB000105
35118	78	8220DB006253
35119	78	8220DB007191
35120	78	8220DB006238
35121	78	8220DB006182
35122	78	8220DB000322
35123	78	8240DB000323
35124	79	8230DB007229
35125	79	8230DB004617
35126	79	8230DB004555
35127	79	8230DB007714
35128	79	8230DB003414
35129	79	8230DB003415
35130	79	8230DB003416
35131	79	8230DB003417
35132	79	8230DB003418
35133	79	8230DB003419
35134	79	8230DB002374
35135	79	8230DB002146
35136	79	8230DB002147
35137	79	8230DB002148
35138	79	8230DB002149
35139	79	8230DB002150
35140	79	8230DB002151
35141	79	8230DB002152
35142	79	8230DB002153
35143	79	8230DB002154
35144	79	8230DB006245
35145	79	8230DB004671
35146	79	8230DB004672
35147	79	8230DB003465
35148	79	8230DB004673
35149	79	8230DB002172
35150	79	8230DB002159
35151	79	8230DB004409
35152	79	8230DB004550
35153	79	8230DB004551
35154	79	8230DB001965
35155	79	8230DB001966
35156	79	8230DB007781
35157	79	8230DB001975
35158	79	8230DB001977
35159	79	8230DB001978
35160	79	8230DB001980
35161	79	8220DB001981
35162	79	8220DB001982
35163	79	8220DB004406
35164	79	8220DB001984
35165	79	8220DB001985
35166	79	8220DB001986
35167	79	8220DB001987
35168	79	8220DB001988
35169	79	8220DB001989
35170	79	8220DB001990
35171	79	8220DB001992
35172	79	8220DB001993
35173	79	8220DB001994
35174	79	8220DB001995
35175	79	8220DB001996
35176	79	8220DB001997
35177	79	8220DB001998
35178	79	8220DB001999
35179	79	8220DB002001
35180	79	8220DB002002
35181	79	8220DB001359
35182	79	8220DB000319
35183	79	8220DB000281
35184	79	8220DB000007
35185	79	8220DB000011
35186	79	8220DB000014
35187	79	8220DB000015
35188	79	8220DB000017
35189	79	8220DB000018
35190	79	8220DB000019
35191	79	8220DB000021
35192	79	8220DB000085
35193	79	8220DB000086
35194	79	8220DB000087
35195	79	8220DB000088
35196	79	8220DB00089
35197	79	8220DB000027
35198	79	8220DB000028
35199	79	8220DB000029
35200	79	8220DB004680
35201	79	8220DB000090
35202	79	8220DB000091
35203	79	8220DB000092
35204	79	8220DB000093
35205	79	8220DB000094
35206	79	8220DB000102
35207	79	8220DB006239
35208	79	8220DB000104
35209	79	8220DB006241
35210	79	8220DB000105
35211	79	8220DB006253
35212	79	8220DB007191
35213	79	8220DB006238
35214	79	8220DB006182
35215	79	8220DB000322
35216	79	8240DB000323
35217	80	8220DB000621
35218	80	8220DB000289
35219	80	8220DB000496
35220	80	8220DB000515
35221	80	8220DB000516
35222	80	8220DB004384
35223	80	8220DB000519
35224	80	8220DB000521
35225	80	8220DB000522
35226	80	8220DB000523
35227	80	8220DB001740
35228	80	8220DB001741
35229	80	8220DB001742
35230	80	8220DB001743
35231	80	8220DB001744
35232	80	8220DB001745
35233	80	8220DB001746
35234	80	8220DB001747
35235	80	8220DB001748
35236	80	8220DB001749
35237	80	8220DB001751
35238	80	8220DB001752
35239	80	8220DB001753
35240	80	8220DB001754
35241	80	8220DB001759
35242	80	8220DB001758
35243	80	8220DB001750
35244	80	8220DB001769
35245	80	8220DB001770
35246	80	8220DB001771
35247	80	8220DB001760
35248	80	8220DB001761
35249	80	8220DB001762
35250	80	8220DB001763
35251	80	8220DB001764
35252	80	8220DB001765
35253	81	8220DB001772
35254	81	8220DB001773
35255	81	8220DB001774
35256	81	8220DB001775
35257	81	8220DB001776
35258	81	8220DB001777
35259	81	8220DB001778
35260	81	8220DB001755
35261	81	8220DB001756
35262	81	8220DB001757
35263	81	8220DB001794
35264	81	8220DB007469
35265	81	8220DB001724
35266	81	8220DB001725
35267	81	8220DB001726
35268	81	8220DB001727
35269	81	8220DB001728
35270	81	8220DB001729
35271	81	8220DB001730
35272	81	8220DB001731
35273	81	8220DB001732
35274	81	8220DB001733
35275	81	8220DB001734
35276	81	8220DB001735
35277	81	8220DB001736
35278	81	8220DB001737
35279	81	8220DB001738
35280	81	8220DB001739
35281	81	8220DB000614
35282	81	8220DB000615
35283	81	8220DB000616
35284	81	8220DB000617
35285	81	8220DB000618
35286	81	8220DB000619
35287	81	8220DB000675
35288	81	8220DB000620
35289	82	8220DB000248
35290	82	8220DB000249
35291	82	8220DB000250
35292	82	8220DB000251
35293	82	8220DB000252
35294	82	8220DB000255
35295	82	8220DB000234
35296	82	8220DB000235
35297	82	8220DB000236
35298	82	8220DB001190
35299	82	8220DB001191
35300	82	8220DB001192
35301	82	8220DB001193
35302	82	8220DB001194
35303	82	8220DB001195
35304	82	8220DB000664
35305	82	8220DB000665
35306	82	8220DB000666
35307	82	8220DB000667
35308	82	8220DB000668
35309	82	8220DB000614
35310	82	8220DB000615
35311	82	8220DB000616
35312	82	8220DB000617
35313	82	8220DB000618
35314	82	8220DB000619
35315	82	8220DB000675
35316	82	8220DB004415
35317	82	8220DB000301
35318	82	8220DB000336
35319	82	8220DB007581
35320	82	8220DB001283
35321	82	8220DB007579
35322	82	8220DB001285
35323	82	8220DB001016
35324	82	8220DB001017
35325	82	8220DB001018
35326	82	8220DB001019
35327	82	8220DB001020
35328	82	8220DB001076
35329	82	8220DB001077
35330	82	8220DB001078
35331	82	8220DB001079
35332	82	8220DB001080
35333	82	8220DB001081
35334	82	8220DB002914
35335	82	8220DB002989
35336	82	8220DB002990
35337	82	8250DB001042
35338	82	8250DB001043
35339	82	8250DB001044
35340	82	8250DB001045
35341	82	8250DB004710
35342	82	8250DB001046
35343	82	8250DB001047
35344	82	8250DB001048
35345	82	8250DB001049
35346	82	8250DB004333
35347	82	8250DB004334
35348	82	8250DB004712
35349	82	8250DB002853
35350	82	8250DB002854
35351	82	8250DB002855
35352	82	8250DB002856
35353	82	8250DB002857
35354	82	8250DB002858
35355	82	8250DB002859
35356	82	8250DB002860
35357	82	8250DB002861
35358	82	8250DB002862
35359	82	8250DB002863
35360	82	8250DB002864
35361	82	8250DB004486
35362	82	8250DB002865
35363	82	8250DB002866
35364	83	8250DB002825
35365	83	8250DB007719
35366	83	8250DB007720
35367	83	8250DB007718
35368	83	8250DB002842
35369	83	8250DB002843
35370	83	8250DB002844
35371	83	8250DB002845
35372	83	8250DB002846
35373	83	8250DB002847
35374	83	8250DB004397
35375	83	8250DB002848
35376	83	8250DB002849
35377	83	8250DB002850
35378	83	8250DB002851
35379	83	8250DB002852
35380	83	8250DB004707
35381	83	8250DB004708
35382	83	8250DB004336
35383	83	8250DB001051
35384	83	8250DB001052
35385	83	8250DB001053
35386	83	8250DB001054
35387	83	8250DB001036
35388	83	8250DB004709
35389	83	8250DB001037
35390	83	8250DB001038
35391	83	8250DB002998
35392	83	8220DB002999
35393	83	8220DB003000
35394	83	8220DB003001
35395	83	8220DB003002
35396	83	8220DB001166
35397	83	8220DB001167
35398	83	8220DB001168
35399	83	8220DB001169
35400	83	8220DB001170
35401	83	8220DB001069
35402	83	8220DB001070
35403	83	8220DB001071
35404	83	8220DB004528
35405	83	8220DB001072
35406	83	8220DB007577
35407	83	8220DB001353
35408	83	8220DB001354
35409	83	8220DB007578
35410	83	8220DB007582
35411	83	8220DB000297
35412	83	8220DB000496
35413	83	8220DB000497
35414	83	8220DB000515
35415	83	8220DB000516
35416	83	8220DB004384
35417	83	8220DB000519
35418	83	8220DB000521
35419	83	8220DB000522
35420	83	8220DB000523
35421	83	8220DB000669
35422	83	8220DB000670
35423	83	8220DB000671
35424	83	8220DB000672
35425	83	8220DB004382
35426	83	8220DB001185
35427	83	8220DB001186
35428	83	8220DB001187
35429	83	8220DB001188
35430	83	8220DB000216
35431	83	8220DB000217
35432	83	8220DB000242
35433	83	8220DB000243
35434	83	8220DB000244
35435	83	8220DB000245
35436	83	8220DB000246
35437	84	8220DB000896
35438	84	8220DB000897
35439	84	8220DB000893
35440	84	8220DB000894
35441	84	8220DB001067
35442	84	8220DB001068
35443	84	8220DB001069
35444	84	8220DB001070
35445	84	8220DB001071
35446	84	8220DB004528
35447	84	8220DB001072
35448	84	8220DB007577
35449	84	8220DB001353
35450	84	8220DB001354
35451	84	8220DB007578
35452	84	8220DB007582
35453	84	8220DB000319
35454	84	8220DB000274
35455	84	8220DB000007
35456	84	8220DB000194
35457	84	8220DB000195
35458	84	8220DB000196
35459	84	8220DB000197
35460	84	8220DB000198
35461	84	8220DB000199
35462	84	8220DB001506
35463	84	8220DB001507
35464	84	8220DB001508
35465	84	8220DB001509
35466	84	8220DB001510
35467	84	8220DB001511
35468	84	8220DB001512
35469	84	8220DB001538
35470	84	8220DB004543
35471	84	8220DB001560
35472	84	8220DB001280
35473	84	8240DB006366
35474	84	8240DB006230
35475	84	8240DB006228
35476	84	8240DB007111
35477	84	8240DB006365
35478	84	8220DB006276
35479	84	8220DB006362
35480	84	8220DB007276
35481	85	8220DB007149
35482	85	8220DB007277
35483	85	8220DB006363
35484	85	8220DB006361
35485	85	8220DB006367
35486	85	8220DB004985
35487	85	8240DB006219
35488	85	8240DB006229
35489	85	8240DB006364
35490	85	8220DB001558
35491	85	8220DB004542
35492	85	8220DB001531
35493	85	8220DB001532
35494	85	8220DB001533
35495	85	8220DB001534
35496	85	8220DB001535
35497	85	8220DB001536
35498	85	8220DB001537
35499	85	8220DB000186
35500	85	8220DB000187
35501	85	8220DB000188
35502	85	8220DB000189
35503	85	8220DB000190
35504	85	8220DB000191
35505	85	8220DB000819
35506	85	8220DB000264
35507	85	8220DB006059
35508	85	8220DB000334
35509	85	8220DB007581
35510	85	8220DB001283
35511	85	8220DB007579
35512	85	8220DB001285
35513	85	8220DB001016
35514	85	8220DB001017
35515	85	8220DB001018
35516	85	8220DB001019
35517	85	8220DB001020
35518	85	8220DB001076
35519	85	8220DB001021
35520	85	8220DB006042
35521	85	8220DB001022
35522	85	8220DB001023
35523	85	8220DB001024
35524	86	8240DB003605
35525	86	8240DB003606
35526	86	8240DB003607
35527	86	8240DB006051
35528	86	8240DB006053
35529	86	8240DB007327
35530	86	8240DB003629
35531	86	8240DB003630
35532	86	8240DB003631
35533	86	8240DB003632
35534	86	8240DB003633
35535	86	8240DB003634
35536	86	8240DB003635
35537	86	8240DB003636
35538	86	8240DB000905
35539	86	8240DB004331
35540	86	8240DB004339
35541	86	8240DB007692
35542	86	8240DB006010
35543	86	8240DB003656
35544	86	8240DB007194
35545	86	8240DB007196
35546	86	8240DB006310
35547	86	8240DB006311
35548	86	8220DB007399
35549	86	8220DB007398
35550	86	8220DB007397
35551	86	8220DB006252
35552	86	8220DB000301
35553	86	8220DB004495
35554	86	8220DB002809
35555	86	8220DB002810
35556	86	8220DB001013
35557	86	8220DB001015
35558	86	8220DB001016
35559	86	8220DB001017
35560	86	8220DB001018
35561	86	8220DB001019
35562	86	8220DB001020
35563	86	8220DB001076
35564	86	8220DB001021
35565	86	8220DB006042
35566	86	8220DB001022
35567	86	8220DB001023
35568	86	8220DB001024
35569	86	8220DB000895
35570	86	8220DB001025
35571	86	8220DB001026
35572	86	8220DB001027
35573	86	8220DB001028
35574	86	8250DB002818
35575	86	8250DB002819
35576	86	8250DB003012
35577	87	8250DB000877
35578	87	8250DB000876
35579	87	8250DB003011
35580	87	8250DB002896
35581	87	8250DB002897
35582	87	8220DB001062
35583	87	8220DB001063
35584	87	8220DB001064
35585	87	8220DB001065
35586	87	8220DB001066
35587	87	8220DB001067
35588	87	8220DB001068
35589	87	8220DB001069
35590	87	8220DB001070
35591	87	8220DB001071
35592	87	8220DB004528
35593	87	8220DB001072
35594	87	8220DB007577
35595	87	8220DB001353
35596	87	8220DB001354
35597	87	8220DB007578
35598	87	8220DB007582
35599	87	8220DB000407
35600	87	8220DB002498
35601	87	8220DB002499
35602	87	8220DB002500
35603	87	8220DB002501
35604	87	8220DB007623
35605	87	8240DB006312
35606	87	8240DB007197
35607	87	8240DB007195
35608	87	8240DB003653
35609	87	8240DB006055
35610	87	8240DB001073
35611	87	8240DB003641
35612	87	8240DB003642
35613	87	8240DB003643
35614	87	8240DB003583
35615	87	8240DB003584
35616	87	8240DB003585
35617	87	8240DB003625
35618	87	8240DB003626
35619	87	8240DB003627
35620	87	8240DB003628
35621	87	8240DB006052
35622	87	8240DB003613
35623	87	8240DB003615
35624	88	8350DB004533
35625	88	8350DB004844
35626	88	8350DB004177
35627	88	8350DB004178
35628	88	8350DB004179
35629	88	8350DB002993
35630	88	8350DB002994
35631	88	8350DB004180
35632	88	8350DB004181
35633	88	8350DB004182
35634	88	8350DB004151
35635	88	8350DB002997
35636	88	8350DB004153
35637	88	8350DB004154
35638	88	8350DB004416
35639	88	8350DB004201
35640	88	8250DB004202
35641	88	8250DB004203
35642	88	8250DB005090
35643	88	8250DB004204
35644	88	8250DB004205
35645	88	8250DB004206
35646	88	8250DB003140
35647	88	8250DB003141
35648	88	8250DB003142
35649	88	8250DB003143
35650	88	8250DB003144
35651	88	8250DB003145
35652	88	8250DB003146
35653	88	8250DB003147
35654	88	8250DB003148
35655	88	8250DB005127
35656	88	8250DB005128
35657	88	8250DB002996
35658	88	8250DB003258
35659	88	8250DB002060
35660	88	8250DB002061
35661	88	8250DB002062
35662	88	8250DB002063
35663	88	8250DB002064
35664	88	8250DB002065
35665	88	8250DB004727
35666	88	8250DB004728
35667	88	8250DB000461
35668	88	8250DB002068
35669	88	8250DB002069
35670	88	8250DB002070
35671	88	8250DB002084
35672	88	8250DB000768
35673	88	8220DB000769
35674	88	8220DB000770
35675	88	8220DB000771
35676	88	8220DB000772
35677	88	8220DB000773
35678	88	8220DB000774
35679	88	8220DB000775
35680	88	8220DB000776
35681	88	8220DB000777
35682	88	8220DB000906
35683	88	8220DB000907
35684	88	8220DB000908
35685	88	8220DB000909
35686	88	8220DB000786
35687	88	8220DB000792
35688	88	8220DB007586
35689	88	8220DB007587
35690	88	8220DB007588
35691	88	8220DB000325
35692	88	8220DB001443
35693	88	8220DB001444
35694	88	8220DB001445
35695	88	8220DB004407
35696	89	8350DB007574
35697	89	8350DB004177
35698	89	8350DB004178
35699	89	8350DB004179
35700	89	8350DB002993
35701	89	8350DB002994
35702	89	8350DB004180
35703	89	8350DB004181
35704	89	8350DB004182
35705	89	8350DB004151
35706	89	8350DB002997
35707	89	8350DB004153
35708	89	8350DB004154
35709	89	8350DB004416
35710	89	8350DB004201
35711	89	8250DB004202
35712	89	8250DB004203
35713	89	8250DB005090
35714	89	8250DB004204
35715	89	8250DB004205
35716	89	8250DB004206
35717	89	8250DB003140
35718	89	8250DB003141
35719	89	8250DB003142
35720	89	8250DB003143
35721	89	8250DB003144
35722	89	8250DB003145
35723	89	8250DB003146
35724	89	8250DB003147
35725	89	8250DB003148
35726	89	8250DB005127
35727	89	8250DB005128
35728	89	8250DB002996
35729	89	8250DB003258
35730	89	8250DB002060
35731	89	8250DB002061
35732	89	8250DB002062
35733	89	8250DB002063
35734	89	8250DB002064
35735	89	8250DB002065
35736	89	8250DB004727
35737	89	8250DB004728
35738	89	8250DB000461
35739	89	8250DB002068
35740	89	8250DB002069
35741	89	8250DB002070
35742	89	8250DB002084
35743	89	8250DB000768
35744	89	8220DB000769
35745	89	8220DB000770
35746	89	8220DB000771
35747	89	8220DB000772
35748	89	8220DB000773
35749	89	8220DB000774
35750	89	8220DB000775
35751	89	8220DB000776
35752	89	8220DB000777
35753	89	8220DB000906
35754	89	8220DB000907
35755	89	8220DB000908
35756	89	8220DB000909
35757	89	8220DB000786
35758	89	8220DB000792
35759	89	8220DB007586
35760	89	8220DB007587
35761	89	8220DB007588
35762	89	8220DB000325
35763	89	8220DB001443
35764	89	8220DB001444
35765	89	8220DB001445
35766	89	8220DB004407
35767	90	8220DB006318
35768	90	8220DB006319
35769	90	8220DB007246
35770	90	8220DB006320
35771	90	8220DB004594
35772	90	8220DB004595
35773	90	8220DB004596
35774	90	8220DB004563
35775	90	8220DB001218
35776	90	8220DB001270
35777	90	8220DB001272
35778	90	8220DB001273
35779	90	8220DB001274
35780	90	8220DB001275
35781	90	8220DB001276
35782	90	8220DB001277
35783	90	8220DB001219
35784	90	8220DB001220
35785	90	8220DB001221
35786	90	8220DB000664
35787	90	8220DB000665
35788	90	8220DB000666
35789	90	8220DB000667
35790	90	8220DB000668
35791	90	8220DB000614
35792	90	8220DB000615
35793	90	8220DB000616
35794	90	8220DB000617
35795	90	8220DB000618
35796	90	8220DB000619
35797	90	8220DB000675
35798	90	8220DB004415
35799	90	8220DB000301
35800	90	8220DB004495
35801	90	8220DB007581
35802	90	8220DB001283
35803	90	8220DB007579
35804	90	8220DB001285
35805	90	8220DB001016
35806	90	8220DB001017
35807	90	8220DB001018
35808	90	8220DB001019
35809	90	8220DB001020
35810	90	8220DB001076
35811	90	8220DB001077
35812	90	8220DB001078
35813	90	8220DB001079
35814	90	8220DB001080
35815	90	8220DB001081
35816	90	8220DB001082
35817	90	8220DB001083
35818	90	8220DB001085
35819	90	8220DB001121
35820	90	8220DB001122
35821	90	8220DB001123
35822	90	8220DB001124
35823	90	8230DB001125
35824	90	8230DB001127
35825	90	8230DB001130
35826	90	8230DB001140
35827	90	8230DB001141
35828	90	8230DB001142
35829	90	8230DB001143
35830	90	8230DB001144
35831	90	8230DB001145
35832	90	8230DB004869
35833	90	8230DB004870
35834	90	8230DB003007
35835	90	8230DB006283
35836	91	8230DB006282
35837	91	8230DB006335
35838	91	8230DB006326
35839	91	8230DB004886
35840	91	8230DB004887
35841	91	8230DB001150
35842	91	8230DB001151
35843	91	8230DB001152
35844	91	8230DB001153
35845	91	8230DB001154
35846	91	8230DB000946
35847	91	8230DB001155
35848	91	8230DB001157
35849	91	8230DB001158
35850	91	8220DB001159
35851	91	8220DB001160
35852	91	8220DB001161
35853	91	8220DB001162
35854	91	8220DB001163
35855	91	8220DB001164
35856	91	8220DB001165
35857	91	8220DB001166
35858	91	8220DB001167
35859	91	8220DB001168
35860	91	8220DB001169
35861	91	8220DB001170
35862	91	8220DB001069
35863	91	8220DB001070
35864	91	8220DB001071
35865	91	8220DB004528
35866	91	8220DB001072
35867	91	8220DB007577
35868	91	8220DB001353
35869	91	8220DB001354
35870	91	8220DB007578
35871	91	8220DB007582
35872	91	8220DB000299
35873	91	8220DB000497
35874	91	8220DB000515
35875	91	8220DB000516
35876	91	8220DB004384
35877	91	8220DB000519
35878	91	8220DB000521
35879	91	8220DB000522
35880	91	8220DB000523
35881	91	8220DB000669
35882	91	8220DB000670
35883	91	8220DB000671
35884	91	8220DB000672
35885	91	8220DB004382
35886	91	8220DB001196
35887	91	8220DB001197
35888	91	8220DB001198
35889	91	8220DB001199
35890	91	8220DB001200
35891	91	8220DB004385
35892	91	8220DB001201
35893	91	8220DB001202
35894	91	8220DB001203
35895	91	8220DB006115
35896	91	8220DB004593
35897	91	8220DB007516
35898	91	8220DB006079
35899	91	8220DB006315
35900	91	8220DB006316
35901	91	8220DB007236
35902	91	8220DB007245
35903	92	8230DB004863
35904	92	8230DB004864
35905	92	8230DB004865
35906	92	8230DB004577
35907	92	8230DB004578
35908	92	8230DB001100
35909	92	8230DB000100
35910	92	8230DB001111
35911	92	8230DB002323
35912	92	8230DB002324
35913	92	8230DB002325
35914	92	8230DB002326
35915	92	8230DB005150
35916	92	8220DB002327
35917	92	8220DB002328
35918	92	8220DB002329
35919	92	8220DB002330
35920	92	8220DB002331
35921	92	8220DB001397
35922	92	8220DB001398
35923	92	8220DB001399
35924	92	8220DB005148
35925	92	8220DB001401
35926	92	8220DB001402
35927	92	8220DB001403
35928	92	8220DB001404
35929	92	8220DB001405
35930	92	8220DB004856
35931	92	8220DB004857
35932	92	8220DB000307
35933	92	8220DB000308
35934	92	8220DB000309
35935	92	8220DB007412
35936	92	8220DB007413
35937	92	8220DB002383
35938	92	8220DB002003
35939	92	8220DB001358
35940	93	8230DB004863
35941	93	8230DB004864
35942	93	8230DB004865
35943	93	8230DB004577
35944	93	8230DB004578
35945	93	8230DB001100
35946	93	8230DB000100
35947	93	8230DB001111
35948	93	8230DB002323
35949	93	8230DB002324
35950	93	8230DB002325
35951	93	8230DB002326
35952	93	8230DB005150
35953	93	8220DB002327
35954	93	8220DB002328
35955	93	8220DB002329
35956	93	8220DB002330
35957	93	8220DB002331
35958	93	8220DB001397
35959	93	8220DB001398
35960	93	8220DB001399
35961	93	8220DB005148
35962	93	8220DB001401
35963	93	8220DB001402
35964	93	8220DB001403
35965	93	8220DB001404
35966	93	8220DB001405
35967	93	8220DB004856
35968	93	8220DB004857
35969	93	8220DB000307
35970	93	8220DB000308
35971	93	8220DB000309
35972	93	8220DB002383
35973	93	8220DB002003
35974	93	8220DB001358
35975	94	8230DB004606
35976	94	8230DB007142
35977	94	8230DB007015
35978	94	8230DB004617
35979	94	8230DB004555
35980	94	8230DB004552
35981	94	8230DB004554
35982	94	8230DB003418
35983	94	8230DB003419
35984	94	8230DB004762
35985	94	8230DB004763
35986	94	8230DB006245
35987	94	8230DB002156
35988	94	8230DB006014
35989	94	8230DB006242
35990	94	8230DB006152
35991	94	8230DB006153
35992	94	8230DB006243
35993	94	8230DB006154
35994	94	8230DB006155
35995	94	8230DB006141
35996	94	8220DB006142
35997	94	8220DB002181
35998	94	8220DB002182
35999	94	8220DB002778
36000	94	8220DB002185
36001	94	8220DB007043
36002	94	8220DB001424
36003	94	8220DB002186
36004	94	8220DB002187
36005	94	8220DB002188
36006	94	8220DB002189
36007	94	8220DB001436
36008	94	8220DB003952
36009	94	8220DB002190
36010	94	8220DB004434
36011	94	8220DB002379
36012	94	8220DB002380
36013	94	8220DB002382
36014	94	8220DB005099
36015	94	8220DB002383
36016	94	8220DB001479
36017	94	8220DB007622
36018	94	8220DB000297
36019	94	8220DB000407
36020	94	8220DB002498
36021	94	8220DB002499
36022	94	8220DB002500
36023	94	8220DB002501
36024	94	8220DB007623
36025	94	8220DB002508
36026	95	8230DB004606
36027	95	8230DB007142
36028	95	8230DB007015
36029	95	8230DB004617
36030	95	8230DB004555
36031	95	8230DB004576
36032	95	8230DB003418
36033	95	8230DB003419
36034	95	8230DB004762
36035	95	8230DB004763
36036	95	8230DB006245
36037	95	8230DB002156
36038	95	8230DB006014
36039	95	8230DB006242
36040	95	8230DB006152
36041	95	8230DB006153
36042	95	8230DB006243
36043	95	8230DB006154
36044	95	8230DB006155
36045	95	8230DB006141
36046	95	8220DB006142
36047	95	8220DB002181
36048	95	8220DB002182
36049	95	8220DB002778
36050	95	8220DB002185
36051	95	8220DB007043
36052	95	8220DB001424
36053	95	8220DB002186
36054	95	8220DB002187
36055	95	8220DB002188
36056	95	8220DB002189
36057	95	8220DB001436
36058	95	8220DB003952
36059	95	8220DB002190
36060	95	8220DB004434
36061	95	8220DB002379
36062	95	8220DB002380
36063	95	8220DB002382
36064	95	8220DB005099
36065	95	8220DB002383
36066	95	8220DB001479
36067	95	8220DB007622
36068	95	8220DB000297
36069	95	8220DB000407
36070	95	8220DB002498
36071	95	8220DB002499
36072	95	8220DB002500
36073	95	8220DB002501
36074	95	8220DB007623
36075	95	8220DB002508
36076	96	8350DB004168
36077	96	8350DB004170
36078	96	8350DB004153
36079	96	8350DB004154
36080	96	8350DB004416
36081	96	8350DB004201
36082	96	8250DB004202
36083	96	8250DB004203
36084	96	8250DB005090
36085	96	8250DB004204
36086	96	8250DB004205
36087	96	8250DB004206
36088	96	8250DB003140
36089	96	8250DB003141
36090	96	8250DB003142
36091	96	8250DB003143
36092	96	8250DB003144
36093	96	8250DB003145
36094	96	8250DB003146
36095	96	8250DB003147
36096	96	8250DB003148
36097	96	8250DB005127
36098	96	8250DB005128
36099	96	8250DB002996
36100	96	8250DB003258
36101	96	8250DB002060
36102	96	8250DB002061
36103	96	8250DB002062
36104	96	8250DB002063
36105	96	8250DB002064
36106	96	8250DB002065
36107	96	8250DB004727
36108	96	8250DB004728
36109	96	8250DB000461
36110	96	8250DB002068
36111	96	8250DB002069
36112	96	8250DB002070
36113	96	8250DB002084
36114	96	8250DB000768
36115	96	8220DB000769
36116	96	8220DB000770
36117	96	8220DB000771
36118	96	8220DB000772
36119	96	8220DB000773
36120	96	8220DB000774
36121	96	8220DB000775
36122	96	8220DB000776
36123	96	8220DB000777
36124	96	8220DB000906
36125	96	8220DB000907
36126	96	8220DB000908
36127	96	8220DB000909
36128	96	8220DB000786
36129	96	8220DB000792
36130	96	8220DB000319
36131	96	8220DB000281
36132	96	8220DB000006
36133	96	8220DB000194
36134	96	8220DB000195
36135	96	8220DB000196
36136	96	8220DB000197
36137	96	8220DB000198
36138	96	8220DB000199
36139	96	8220DB000200
36140	96	8220DB000201
36141	96	8220DB000148
36142	96	8220DB000149
36143	96	8220DB000150
36144	96	8220DB000027
36145	96	8220DB000028
36146	96	8220DB000029
36147	96	8220DB004680
36148	96	8220DB000090
36149	96	8220DB000091
36150	96	8220DB000092
36151	96	8220DB000093
36152	96	8220DB000094
36153	96	8220DB000126
36154	96	8220DB006182
36155	96	8220DB000322
36156	97	8220DB007698
36157	97	8220DB007113
36158	97	8220DB000127
36159	97	8220DB000112
36160	97	8220DB000113
36161	97	8220DB000114
36162	97	8220DB000115
36163	97	8220DB000037
36164	97	8220DB000038
36165	97	8220DB000039
36166	97	8220DB000040
36167	97	8220DB000146
36168	97	8220DB000147
36169	97	8220DB000184
36170	97	8220DB000185
36171	97	8220DB000186
36172	97	8220DB000187
36173	97	8220DB000188
36174	97	8220DB000189
36175	97	8220DB000190
36176	97	8220DB000191
36177	97	8220DB000819
36178	97	8220DB000264
36179	97	8220DB006059
36180	97	8220DB000334
36181	97	8220DB000406
36182	97	8220DB000747
36183	97	8220DB000842
36184	97	8220DB000845
36185	97	8220DB000846
36186	97	8220DB000847
36187	97	8220DB000848
36188	97	8220DB002795
36189	97	8220DB000756
36190	97	8220DB000757
36191	97	8220DB000758
36192	97	8220DB000759
36193	97	8220DB000760
36194	97	8220DB000761
36195	97	8220DB000762
36196	97	8220DB000763
36197	97	8250DB002007
36198	97	8250DB002008
36199	97	8250DB002009
36200	97	8250DB002010
36201	97	8250DB000435
36202	97	8250DB007353
36203	97	8250DB004571
36204	97	8250DB002013
36205	97	8250DB002014
36206	97	8250DB004636
36207	97	8250DB002016
36208	97	8250DB002015
36209	97	8250DB002017
36210	97	8250DB003259
36211	97	8250DB007361
36212	97	8250DB007362
36213	97	8250DB003129
36214	97	8250DB003130
36215	97	8250DB003131
36216	97	8250DB003132
36217	97	8250DB003133
36218	97	8250DB003134
36219	97	8250DB003135
36220	97	8250DB003136
36221	97	8250DB003138
36222	97	8250DB003139
36223	97	8250DB004124
36224	97	8250DB004125
36225	97	8250DB004126
36226	97	8250DB004127
36227	97	8250DB004128
36228	97	8350DB004129
36229	97	8350DB004130
36230	97	8350DB004131
36231	97	8350DB007294
36232	97	8350DB004156
36233	98	8220DB007391
36234	98	8220DB000493
36235	98	8220DB000494
36236	98	8220DB000495
36237	98	8220DB000400
36238	98	8220DB007581
36239	98	8220DB001283
36240	98	8220DB007579
36241	98	8220DB001285
36242	98	8220DB001016
36243	98	8220DB001017
36244	98	8220DB001018
36245	98	8220DB001019
36246	98	8220DB001020
36247	98	8220DB001076
36248	98	8220DB001077
36249	98	8220DB001078
36250	98	8220DB001079
36251	98	8220DB001080
36252	98	8220DB001081
36253	98	8220DB001082
36254	98	8220DB001083
36255	98	8220DB001085
36256	98	8220DB001086
36257	98	8220DB001087
36258	98	8220DB001088
36259	98	8220DB001089
36260	98	8220DB001090
36261	98	8220DB001091
36262	98	8230DB001092
36263	98	8230DB001093
36264	98	8230DB001094
36265	98	8230DB001095
36266	98	8230DB001096
36267	98	8230DB001101
36268	98	8230DB001102
36269	98	8230DB001103
36270	99	8230DB001105
36271	99	8230DB001107
36272	99	8230DB001108
36273	99	8230DB001109
36274	99	8230DB001110
36275	99	8230DB001111
36276	99	8230DB001112
36277	99	8230DB001113
36278	99	8230DB001114
36279	99	8230DB001115
36280	99	8220DB002437
36281	99	8220DB001117
36282	99	8220DB001118
36283	99	8220DB001119
36284	99	8220DB001120
36285	99	8220DB001164
36286	99	8220DB001165
36287	99	8220DB001166
36288	99	8220DB001167
36289	99	8220DB001168
36290	99	8220DB001169
36291	99	8220DB001170
36292	99	8220DB001069
36293	99	8220DB001070
36294	99	8220DB001071
36295	99	8220DB004528
36296	99	8220DB001072
36297	99	8220DB007577
36298	99	8220DB001353
36299	99	8220DB001354
36300	99	8220DB007578
36301	99	8220DB007582
36302	99	8220DB000340
36303	99	8220DB000350
36304	99	8220DB002809
36305	99	8220DB002810
36306	100	8220DB007391
36307	100	8220DB000493
36308	100	8220DB000494
36309	100	8220DB000495
36310	100	8220DB000400
36311	100	8220DB007581
36312	100	8220DB001283
36313	100	8220DB007579
36314	100	8220DB001285
36315	100	8220DB001016
36316	100	8220DB001017
36317	100	8220DB001018
36318	100	8220DB001019
36319	100	8220DB001020
36320	100	8220DB001076
36321	100	8220DB001077
36322	100	8220DB001078
36323	100	8220DB001079
36324	100	8220DB001080
36325	100	8220DB001081
36326	100	8220DB002914
36327	100	8220DB002915
36328	100	8220DB002916
36329	100	8220DB002917
36330	100	8220DB002918
36331	100	8220DB001300
36332	100	8230DB001301
36333	100	8230DB001302
36334	100	8230DB001303
36335	100	8230DB005129
36336	100	8230DB005130
36337	100	8230DB001135
36338	100	8230DB007064
36339	100	8230DB007066
36340	100	8230DB002924
36341	100	8230DB002925
36342	100	8230DB007442
36343	100	8230DB007446
36344	100	8230DB007070
36345	100	8230DB007445
36346	100	8230DB006339
36347	100	8230DB006324
36348	100	8230DB006325
36349	100	8230DB006341
36350	100	8230DB006277
36351	100	8230DB006278
36352	100	8230DB006279
36353	101	8230DB006285
36354	101	8230DB006286
36355	101	8230DB006287
36356	101	8230DB006288
36357	101	8230DB006342
36358	101	8230DB006298
36359	101	8230DB006336
36360	101	8230DB007069
36361	101	8230DB007443
36362	101	8230DB007444
36363	101	8230DB002941
36364	101	8230DB002942
36365	101	8230DB007065
36366	101	8230DB007063
36367	101	8230DB001137
36368	101	8230DB005131
36369	101	8230DB005132
36370	101	8230DB001331
36371	101	8230DB001332
36372	101	8230DB001333
36373	101	8230DB001334
36374	101	8220DB002985
36375	101	8220DB002986
36376	101	8220DB002988
36377	101	8220DB003001
36378	101	8220DB003002
36379	101	8220DB001166
36380	101	8220DB001167
36381	101	8220DB001168
36382	101	8220DB001169
36383	101	8220DB001170
36384	101	8220DB001069
36385	101	8220DB001070
36386	101	8220DB001071
36387	101	8220DB004528
36388	101	8220DB001072
36389	101	8220DB007577
36390	101	8220DB001353
36391	101	8220DB001354
36392	101	8220DB007578
36393	101	8220DB007582
36394	101	8220DB000340
36395	101	8220DB000350
36396	101	8220DB002809
36397	101	8220DB002810
36398	102	8220DB007391
36399	102	8220DB000493
36400	102	8220DB000494
36401	102	8220DB000495
36402	102	8220DB000400
36403	102	8220DB007581
36404	102	8220DB001283
36405	102	8220DB007579
36406	102	8220DB001285
36407	102	8220DB001016
36408	102	8220DB001017
36409	102	8220DB001018
36410	102	8220DB001019
36411	102	8220DB001020
36412	102	8220DB001076
36413	102	8220DB001077
36414	102	8220DB001078
36415	102	8220DB001079
36416	102	8220DB001080
36417	102	8220DB001081
36418	102	8220DB002914
36419	102	8220DB002915
36420	102	8220DB002916
36421	102	8220DB002917
36422	102	8220DB002918
36423	102	8220DB001300
36424	102	8230DB001301
36425	102	8230DB001302
36426	102	8230DB001303
36427	102	8230DB005129
36428	102	8230DB005130
36429	102	8230DB001135
36430	102	8230DB007064
36431	102	8230DB007066
36432	102	8230DB002924
36433	102	8230DB002925
36434	102	8230DB002948
36435	102	8230DB002949
36436	102	8230DB002950
36437	102	8230DB002954
36438	103	8230DB007067
36439	103	8230DB002956
36440	103	8230DB002965
36441	103	8230DB002983
36442	103	8230DB002984
36443	103	8230DB002941
36444	103	8230DB002942
36445	103	8230DB007065
36446	103	8230DB007063
36447	103	8230DB001137
36448	103	8230DB005131
36449	103	8230DB005132
36450	103	8230DB001331
36451	103	8230DB001332
36452	103	8230DB001333
36453	103	8230DB001334
36454	103	8220DB002985
36455	103	8220DB002986
36456	103	8220DB002988
36457	103	8220DB003001
36458	103	8220DB003002
36459	103	8220DB001166
36460	103	8220DB001167
36461	103	8220DB001168
36462	103	8220DB001169
36463	103	8220DB001170
36464	103	8220DB001069
36465	103	8220DB001070
36466	103	8220DB001071
36467	103	8220DB004528
36468	103	8220DB001072
36469	103	8220DB007577
36470	103	8220DB001353
36471	103	8220DB001354
36472	103	8220DB007578
36473	103	8220DB007582
36474	103	8220DB000340
36475	103	8220DB000350
36476	103	8220DB002809
36477	103	8220DB002810
36478	104	8240DB007347
36479	104	8240DB003669
36480	104	8240DB007349
36481	104	8240DB001631
36482	104	8240DB001632
36483	104	8240DB005053
36484	104	8240DB001633
36485	104	8240DB001634
36486	104	8240DB001635
36487	104	8240DB001636
36488	104	8240DB001637
36489	104	8240DB001638
36490	104	8240DB001639
36491	104	8240DB001640
36492	104	8240DB000231
36493	104	8240DB000232
36494	104	8220DB000233
36495	104	8220DB000234
36496	104	8220DB000235
36497	104	8220DB000236
36498	104	8220DB000237
36499	104	8220DB000213
36500	104	8220DB000214
36501	104	8220DB004432
36502	104	8220DB000119
36503	104	8220DB000044
36504	104	8220DB007603
36505	104	8220DB000045
36506	104	8220DB000046
36507	104	8220DB000047
36508	104	8220DB000048
36509	104	8220DB000049
36510	104	8220DB000051
36511	104	8220DB000052
36512	104	8220DB000262
36513	104	8220DB000270
36514	104	8220DB000336
36515	104	8220DB001279
36516	104	8220DB001282
36517	104	8220DB004456
36518	104	8220DB001284
36519	104	8220DB001285
36520	104	8220DB001287
36521	104	8220DB001288
36522	104	8220DB001289
36523	104	8220DB001290
36524	104	8220DB001291
36525	104	8220DB001292
36526	104	8220DB001293
36527	104	8220DB001294
36528	104	8220DB001295
36529	104	8220DB001296
36530	104	8220DB001297
36531	104	8220DB001298
36532	104	8220DB001299
36533	104	8220DB001300
36534	104	8230DB001301
36535	104	8230DB001302
36536	104	8230DB001303
36537	104	8230DB001304
36538	104	8230DB001305
36539	104	8230DB001320
36540	104	8230DB001321
36541	104	8230DB001322
36542	104	8230DB001323
36543	104	8230DB001324
36544	104	8230DB007068
36545	104	8230DB002966
36546	104	8230DB002967
36547	104	8230DB002968
36548	104	8250DB002969
36549	104	8250DB002970
36550	104	8250DB002971
36551	104	8250DB005051
36552	104	8250DB005052
36553	105	8250DB005171
36554	105	8250DB002976
36555	105	8250DB002977
36556	105	8250DB002978
36557	105	8250DB002979
36558	105	8230DB002980
36559	105	8230DB002981
36560	105	8230DB002991
36561	105	8230DB002992
36562	105	8230DB001325
36563	105	8230DB001326
36564	105	8230DB001327
36565	105	8230DB001328
36566	105	8230DB001329
36567	105	8230DB001330
36568	105	8230DB001331
36569	105	8230DB001332
36570	105	8230DB001333
36571	105	8230DB001334
36572	105	8220DB007293
36573	105	8220DB001335
36574	105	8220DB001336
36575	105	8220DB001337
36576	105	8220DB001338
36577	105	8220DB001339
36578	105	8220DB001340
36579	105	8220DB001341
36580	105	8220DB001342
36581	105	8220DB001343
36582	105	8220DB001344
36583	105	8220DB001345
36584	105	8220DB001347
36585	105	8220DB001348
36586	105	8220DB001349
36587	105	8220DB001350
36588	105	8220DB001352
36589	105	8220DB001353
36590	105	8220DB001355
36591	105	8220DB001357
36592	105	8220DB001359
36593	105	8220DB000320
36594	105	8220DB000278
36595	105	8220DB000008
36596	105	8220DB000012
36597	105	8220DB000014
36598	105	8220DB000015
36599	105	8220DB000017
36600	105	8220DB000018
36601	105	8220DB000019
36602	105	8220DB000021
36603	105	8220DB007602
36604	105	8220DB000085
36605	105	8220DB000203
36606	105	8220DB000204
36607	105	8220DB000205
36608	105	8220DB000215
36609	105	8220DB000216
36610	105	8220DB000217
36611	105	8220DB000218
36612	105	8240DB000219
36613	105	8220DB000220
36614	105	8240DB001622
36615	105	8240DB001623
36616	105	8240DB001624
36617	105	8240DB001625
36618	105	8240DB001626
36619	105	8240DB001627
36620	105	8240DB001628
36621	105	8240DB001629
36622	105	8240DB001630
36623	106	8240DB007347
36624	106	8240DB003669
36625	106	8240DB007349
36626	106	8240DB001631
36627	106	8240DB001632
36628	106	8240DB005053
36629	106	8240DB001633
36630	106	8240DB001634
36631	106	8240DB001635
36632	106	8240DB001636
36633	106	8240DB001637
36634	106	8240DB001638
36635	106	8240DB001639
36636	106	8240DB001640
36637	106	8240DB000231
36638	106	8220DB001641
36639	106	8220DB001642
36640	106	8220DB000213
36641	106	8220DB000214
36642	106	8220DB004432
36643	106	8220DB000119
36644	106	8220DB000044
36645	106	8220DB007603
36646	106	8220DB000045
36647	106	8220DB000046
36648	106	8220DB000047
36649	106	8220DB000048
36650	106	8220DB000049
36651	106	8220DB000051
36652	106	8220DB000052
36653	106	8220DB000262
36654	106	8220DB000270
36655	106	8220DB000336
36656	106	8220DB001279
36657	106	8220DB001282
36658	106	8220DB004456
36659	106	8220DB001284
36660	106	8220DB001285
36661	106	8220DB001287
36662	106	8220DB001288
36663	106	8220DB001289
36664	106	8220DB001290
36665	106	8220DB001291
36666	106	8220DB001292
36667	106	8220DB001293
36668	106	8220DB001294
36669	106	8220DB001295
36670	106	8220DB001296
36671	106	8220DB001297
36672	106	8220DB001298
36673	106	8220DB001299
36674	106	8220DB001300
36675	106	8230DB001301
36676	106	8230DB001302
36677	106	8230DB001303
36678	106	8230DB001304
36679	106	8230DB001305
36680	106	8230DB001320
36681	106	8230DB001321
36682	106	8230DB001322
36683	106	8230DB001323
36684	106	8230DB001324
36685	106	8230DB007068
36686	106	8230DB002966
36687	106	8230DB002967
36688	106	8230DB002968
36689	106	8250DB002969
36690	106	8250DB002970
36691	106	8250DB002971
36692	106	8250DB005051
36693	106	8250DB005052
36694	107	8220DB007391
36695	107	8220DB000493
36696	107	8220DB000494
36697	107	8220DB000495
36698	107	8220DB000400
36699	107	8220DB000346
36700	107	8220DB000317
36701	107	8220DB000312
36702	107	8220DB001444
36703	107	8220DB001445
36704	107	8220DB007078
36705	107	8220DB001449
36706	107	8220DB001450
36707	107	8220DB001451
36708	107	8220DB002191
36709	107	8220DB002192
36710	107	8220DB002193
36711	107	8220DB002194
36712	107	8220DB002195
36713	107	8220DB002196
36714	107	8220DB002197
36715	107	8220DB002198
36716	107	8220DB002200
36717	107	8230DB002201
36718	107	8230DB007239
36719	107	8230DB004401
36720	107	8230DB002202
36721	107	8230DB002203
36722	107	8230DB002204
36723	107	8230DB004888
36724	107	8230DB004798
36725	108	8230DB004795
36726	108	8230DB002686
36727	108	8230DB007510
36728	108	8230DB002207
36729	108	8230DB002208
36730	108	8230DB002210
36731	108	8230DB002211
36732	108	8230DB002241
36733	108	8230DB002242
36734	108	8220DB002243
36735	108	8220DB002244
36736	108	8220DB002245
36737	108	8220DB002246
36738	108	8220DB002247
36739	108	8220DB002248
36740	108	8220DB002249
36741	108	8220DB002250
36742	108	8220DB002251
36743	108	8220DB001472
36744	108	8220DB004408
36745	108	8220DB001473
36746	108	8220DB001474
36747	108	8220DB001476
36748	108	8220DB007453
36749	108	8220DB001478
36750	108	8220DB001479
36751	108	8220DB000315
36752	108	8220DB000406
36753	108	8220DB002810
36754	109	8220DB004595
36755	109	8220DB004596
36756	109	8220DB004563
36757	109	8220DB001218
36758	109	8220DB001258
36759	109	8220DB001259
36760	109	8220DB001260
36761	109	8220DB006130
36762	109	8220DB001262
36763	109	8220DB004692
36764	109	8220DB001245
36765	109	8220DB004693
36766	109	8220DB001254
36767	109	8220DB001255
36768	109	8220DB001256
36769	109	8220DB004694
36770	109	8220DB001249
36771	109	8220DB001247
36772	109	8220DB001248
36773	109	8220DB001273
36774	109	8220DB001274
36775	109	8220DB001275
36776	109	8220DB001276
36777	109	8220DB001277
36778	109	8220DB001219
36779	109	8220DB001220
36780	109	8220DB001221
36781	109	8220DB000664
36782	109	8220DB000665
36783	109	8220DB000666
36784	109	8220DB000667
36785	109	8220DB000668
36786	109	8220DB000614
36787	109	8220DB000615
36788	109	8220DB000616
36789	109	8220DB000617
36790	109	8220DB000618
36791	109	8220DB000619
36792	109	8220DB000675
36793	109	8220DB001500
36794	109	8220DB000302
36795	109	8220DB004495
36796	109	8220DB004522
36797	109	8220DB001934
36798	109	8220DB002310
36799	109	8220DB002311
36800	109	8220DB002312
36801	109	8220DB002313
36802	109	8220DB002314
36803	109	8220DB002315
36804	109	8220DB002094
36805	109	8220DB001406
36806	109	8220DB001407
36807	109	8220DB001409
36808	109	8220DB002095
36809	109	8220DB002096
36810	109	8220DB002097
36811	109	8220DB002099
36812	109	8220DB002101
36813	109	8220DB002102
36814	109	8220DB002103
36815	109	8220DB002332
36816	109	8220DB002333
36817	109	8230DB002334
36818	109	8230DB004662
36819	109	8230DB002335
36820	109	8230DB002336
36821	109	8230DB002337
36822	109	8230DB002339
36823	109	8230DB002340
36824	109	8230DB002601
36825	109	8230DB004446
36826	109	8230DB002603
36827	109	8230DB002557
36828	109	8230DB004436
36829	109	8230DB005008
36830	109	8230DB004640
36831	109	8230DB004347
36832	109	8230DB002349
36833	109	8230DB002351
36834	109	8230DB002621
36835	109	8230DB002622
36836	109	8230DB002623
36837	109	8230DB002624
36838	109	8230DB004441
36839	109	8230DB002626
36840	109	8230DB002669
36841	109	8230DB004641
36842	109	8230DB004642
36843	110	8230DB002353
36844	110	8230DB004643
36845	110	8230DB004644
36846	110	8230DB004645
36847	110	8230DB004440
36848	110	8230DB002628
36849	110	8230DB002629
36850	110	8230DB006095
36851	110	8230DB007062
36852	110	8230DB006075
36853	110	8230DB002631
36854	110	8230DB002359
36855	110	8230DB002360
36856	110	8230DB004348
36857	110	8230DB004646
36858	110	8230DB004647
36859	110	8230DB002346
36860	110	8230DB004435
36861	110	8230DB002632
36862	110	8230DB002633
36863	110	8230DB002369
36864	110	8230DB002370
36865	110	8230DB002371
36866	110	8230DB002372
36867	110	8230DB002373
36868	110	8230DB002377
36869	110	8220DB002378
36870	110	8220DB002183
36871	110	8220DB002184
36872	110	8220DB002185
36873	110	8220DB007043
36874	110	8220DB001424
36875	110	8220DB002186
36876	110	8220DB002187
36877	110	8220DB002188
36878	110	8220DB002189
36879	110	8220DB001436
36880	110	8220DB003952
36881	110	8220DB002190
36882	110	8220DB004434
36883	110	8220DB002379
36884	110	8220DB002380
36885	110	8220DB002382
36886	110	8220DB005099
36887	110	8220DB002383
36888	110	8220DB002002
36889	110	8220DB001358
36890	110	8220DB000298
36891	110	8220DB000496
36892	110	8220DB000497
36893	110	8220DB000515
36894	110	8220DB000516
36895	110	8220DB004384
36896	110	8220DB000519
36897	110	8220DB000521
36898	110	8220DB000522
36899	110	8220DB000523
36900	110	8220DB000669
36901	110	8220DB000670
36902	110	8220DB000671
36903	110	8220DB000672
36904	110	8220DB004382
36905	110	8220DB001196
36906	110	8220DB001197
36907	110	8220DB001198
36908	110	8220DB001199
36909	110	8220DB001200
36910	110	8220DB004385
36911	110	8220DB001201
36912	110	8220DB004695
36913	110	8220DB001243
36914	110	8220DB004696
36915	110	8220DB004697
36916	110	8220DB001250
36917	110	8220DB004698
36918	110	8220DB004383
36919	110	8220DB004699
36920	110	8220DB004388
36921	110	8220DB004700
36922	110	8220DB001266
36923	110	8220DB001267
36924	110	8220DB001268
36925	110	8220DB001269
36926	110	8220DB001265
36927	110	8220DB006115
36928	110	8220DB004593
36929	111	8220DB000956
36930	111	8240DB000957
36931	111	8220DB000958
36932	111	8220DB000959
36933	111	8220DB000960
36934	111	8220DB000961
36935	111	8220DB000962
36936	111	8220DB000635
36937	111	8220DB000636
36938	111	8220DB000637
36939	111	8220DB000638
36940	111	8220DB000639
36941	111	8220DB000640
36942	111	8220DB000641
36943	111	8220DB000642
36944	111	8220DB000643
36945	111	8220DB000644
36946	111	8220DB000645
36947	111	8220DB001796
36948	111	8220DB001797
36949	111	8220DB001798
36950	111	8220DB001799
36951	111	8220DB001800
36952	111	8220DB001801
36953	111	8220DB001277
36954	111	8220DB001219
36955	111	8220DB001220
36956	111	8220DB001221
36957	111	8220DB000664
36958	111	8220DB000665
36959	111	8220DB000666
36960	111	8220DB000667
36961	111	8220DB000668
36962	111	8220DB000614
36963	111	8220DB000615
36964	111	8220DB000616
36965	111	8220DB000617
36966	111	8220DB000618
36967	111	8220DB000619
36968	111	8220DB000675
36969	112	8220DB001791
36970	112	8220DB001792
36971	112	8220DB001793
36972	112	8220DB000962
36973	112	8220DB000635
36974	112	8220DB000636
36975	112	8220DB000637
36976	112	8220DB000638
36977	112	8220DB000639
36978	112	8220DB000640
36979	112	8220DB000641
36980	112	8220DB000642
36981	112	8220DB000643
36982	112	8220DB000644
36983	112	8220DB000645
36984	112	8220DB001796
36985	112	8220DB001797
36986	112	8220DB001798
36987	112	8220DB001799
36988	112	8220DB001800
36989	112	8220DB001801
36990	112	8220DB001277
36991	112	8220DB001219
36992	112	8220DB001220
36993	112	8220DB001221
36994	112	8220DB000664
36995	112	8220DB000665
36996	112	8220DB000666
36997	112	8220DB000667
36998	112	8220DB000668
36999	112	8220DB000614
37000	112	8220DB000615
37001	112	8220DB000616
37002	112	8220DB000617
37003	112	8220DB000618
37004	112	8220DB000619
37005	112	8220DB000675
37006	112	8220DB000620
37007	112	8220DB007569
37008	113	8240DB000324
37009	113	8240DB001634
37010	113	8240DB001635
37011	113	8240DB001636
37012	113	8240DB001637
37013	113	8240DB001638
37014	113	8240DB000992
37015	113	8220DB007044
37016	113	8220DB000993
37017	113	8220DB005060
37018	113	8220DB005061
37019	113	8220DB001231
37020	113	8220DB001232
37021	113	8220DB001233
37022	113	8220DB001234
37023	113	8220DB007358
37024	113	8220DB001235
37025	113	8220DB001251
37026	113	8220DB000253
37027	113	8220DB007130
37028	113	8220DB001237
37029	113	8220DB001238
37030	113	8220DB001239
37031	113	8220DB000247
37032	113	8220DB001240
37033	113	8220DB001241
37034	113	8220DB001242
37035	113	8220DB001277
37036	113	8220DB001219
37037	113	8220DB001220
37038	113	8220DB001221
37039	113	8220DB000664
37040	113	8220DB000665
37041	113	8220DB000666
37042	113	8220DB000667
37043	113	8220DB000668
37044	113	8220DB000614
37045	113	8220DB000615
37046	113	8220DB000616
37047	113	8220DB000617
37048	113	8220DB000618
37049	113	8220DB000619
37050	113	8220DB000675
37051	113	8220DB007569
37052	114	8240DB000324
37053	114	8240DB001634
37054	114	8240DB001635
37055	114	8240DB001636
37056	114	8240DB001637
37057	114	8240DB001638
37058	114	8240DB000992
37059	114	8220DB007044
37060	114	8220DB000993
37061	114	8220DB005060
37062	114	8220DB005061
37063	114	8220DB001231
37064	114	8220DB001232
37065	114	8220DB001233
37066	114	8220DB001234
37067	114	8220DB007358
37068	114	8220DB001235
37069	114	8220DB001251
37070	114	8220DB007130
37071	114	8220DB001237
37072	114	8220DB001238
37073	114	8220DB001239
37074	114	8220DB000247
37075	114	8220DB001240
37076	114	8220DB001241
37077	114	8220DB001242
37078	114	8220DB001277
37079	114	8220DB001219
37080	114	8220DB001220
37081	114	8220DB001221
37082	114	8220DB000664
37083	114	8220DB000665
37084	114	8220DB000666
37085	114	8220DB000667
37086	114	8220DB000668
37087	114	8220DB000614
37088	114	8220DB000615
37089	114	8220DB000616
37090	114	8220DB000617
37091	114	8220DB000618
37092	114	8220DB000619
37093	114	8220DB000675
37094	114	8220DB007569
37095	115	8220DB004595
37096	115	8220DB004596
37097	115	8220DB004563
37098	115	8220DB001218
37099	115	8220DB001258
37100	115	8220DB001259
37101	115	8220DB001260
37102	115	8220DB006130
37103	115	8220DB001262
37104	115	8220DB004692
37105	115	8220DB001245
37106	115	8220DB004693
37107	115	8220DB001254
37108	115	8220DB001255
37109	115	8220DB001256
37110	115	8220DB004694
37111	115	8220DB001249
37112	115	8220DB001247
37113	115	8220DB001248
37114	115	8220DB001273
37115	115	8220DB001274
37116	115	8220DB001275
37117	115	8220DB001276
37118	115	8220DB001277
37119	115	8220DB001219
37120	115	8220DB001220
37121	115	8220DB001221
37122	115	8220DB000664
37123	115	8220DB000614
37124	115	8220DB004415
37125	115	8220DB000302
37126	115	8220DB004495
37127	115	8220DB002809
37128	115	8220DB000408
37129	115	8220DB000409
37130	115	8220DB000411
37131	115	8220DB000414
37132	115	8220DB000416
37133	115	8220DB000417
37134	115	8220DB000418
37135	115	8220DB000419
37136	115	8220DB000420
37137	115	8220DB002088
37138	115	8220DB002089
37139	115	8220DB000763
37140	116	8250DB004952
37141	116	8250DB000768
37142	116	8220DB002085
37143	116	8220DB002086
37144	116	8220DB000479
37145	116	8220DB000480
37146	116	8220DB000481
37147	116	8220DB000482
37148	116	8220DB000483
37149	116	8220DB000485
37150	116	8220DB000488
37151	116	8220DB000491
37152	116	8220DB000493
37153	116	8220DB000494
37154	116	8220DB000495
37155	116	8220DB000496
37156	116	8220DB000523
37157	116	8220DB004382
37158	116	8220DB001196
37159	116	8220DB001197
37160	116	8220DB001198
37161	116	8220DB001199
37162	116	8220DB001200
37163	116	8220DB004385
37164	116	8220DB001201
37165	116	8220DB004695
37166	116	8220DB001243
37167	116	8220DB004696
37168	116	8220DB004697
37169	116	8220DB001250
37170	116	8220DB004698
37171	116	8220DB004383
37172	116	8220DB004699
37173	116	8220DB004388
37174	116	8220DB004700
37175	116	8220DB001266
37176	116	8220DB001267
37177	116	8220DB001268
37178	116	8220DB001269
37179	116	8220DB001265
37180	116	8220DB006115
37181	116	8220DB004593
37182	117	8240DB003640
37183	117	8240DB003574
37184	117	8240DB003641
37185	117	8240DB003642
37186	117	8240DB003643
37187	117	8240DB003583
37188	117	8240DB003584
37189	117	8240DB003585
37190	117	8240DB003587
37191	117	8240DB003588
37192	117	8240DB003589
37193	117	8240DB003593
37194	117	8240DB003594
37195	117	8240DB003595
37196	117	8240DB003596
37197	117	8240DB003597
37198	117	8240DB003598
37199	117	8240DB004465
37200	117	8240DB000944
37201	117	8240DB000945
37202	117	8240DB000947
37203	117	8240DB000948
37204	117	8240DB007725
37205	117	8240DB000928
37206	117	8240DB000588
37207	117	8240DB000590
37208	117	8220DB001729
37209	117	8220DB001731
37210	117	8220DB001738
37211	117	8220DB000614
37212	117	8220DB000675
37213	117	8220DB000621
37214	117	8220DB004495
37215	117	8220DB002809
37216	117	8220DB002810
37217	117	8220DB000842
37218	117	8220DB000846
37219	117	8220DB000848
37220	117	8220DB000759
37221	117	8220DB000760
37222	117	8220DB000761
37223	117	8220DB000762
37224	117	8220DB000763
37225	118	8250DB004952
37226	118	8250DB000768
37227	118	8220DB000770
37228	118	8220DB000773
37229	118	8220DB000774
37230	118	8220DB000906
37231	118	8220DB000909
37232	118	8220DB000790
37233	118	8220DB007585
37234	118	8220DB007587
37235	118	8220DB000496
37236	118	8220DB000522
37237	118	8220DB001741
37238	118	8220DB001747
37239	118	8220DB001749
37240	118	8240DB000544
37241	118	8240DB000546
37242	118	8240DB000914
37243	118	8240DB000938
37244	118	8240DB000940
37245	118	8240DB000941
37246	118	8240DB000942
37247	118	8240DB000943
37248	118	8240DB003599
37249	118	8240DB003600
37250	118	8240DB003601
37251	118	8240DB003602
37252	118	8240DB003604
37253	118	8240DB003616
37254	118	8240DB003618
37255	118	8240DB003619
37256	118	8240DB003620
37257	118	8240DB003621
37258	118	8240DB003622
37259	118	8240DB003623
37260	118	8240DB004387
37261	118	8240DB003634
37262	118	8240DB003635
37263	118	8240DB003636
37264	118	8240DB000905
37265	118	8240DB004331
37266	118	8240DB004339
37267	118	8240DB007616
37268	118	8240DB005081
37269	119	8240DB006048
37270	119	8240DB007173
37271	119	8240DB003811
37272	119	8240DB003812
37273	119	8240DB003664
37274	119	8240DB003813
37275	119	8240DB003814
37276	119	8240DB003815
37277	119	8240DB003816
37278	119	8240DB003566
37279	119	8240DB003567
37280	119	8240DB007292
37281	119	8240DB003818
37282	119	8240DB003819
37283	119	8240DB003820
37284	119	8240DB003822
37285	119	8240DB003823
37286	119	8240DB003824
37287	119	8240DB003565
37288	119	8240DB003825
37289	119	8240DB003826
37290	119	8240DB003827
37291	119	8240DB003828
37292	119	8240DB003829
37293	119	8240DB003831
37294	119	8240DB003832
37295	119	8240DB003833
37296	119	8240DB003834
37297	119	8240DB003835
37298	119	8240DB003836
37299	119	8240DB003837
37300	119	8240DB003838
37301	119	8240DB003840
37302	119	8240DB003842
37303	119	8240DB003843
37304	119	8240DB003844
37305	119	8240DB003845
37306	119	8240DB003846
37307	119	8240DB003848
37308	119	8240DB003849
37309	119	8240DB003850
37310	119	8240DB003851
37311	119	8240DB003852
37312	119	8240DB003853
37313	119	8240DB003854
37314	119	8240DB003855
37315	119	8240DB003856
37316	119	8240DB003857
37317	119	8240DB003858
37318	119	8240DB003859
37319	119	8240DB003860
37320	119	8240DB003861
37321	119	8240DB003862
37322	119	8240DB003863
37323	119	8240DB003748
37324	119	8240DB006050
37325	119	8240DB003749
37326	119	8240DB003750
37327	119	8240DB003752
37328	119	8240DB003751
37329	119	8240DB003689
37330	119	8240DB003691
37331	119	8240DB003692
37332	119	8240DB003694
37333	119	8240DB003695
37334	119	8240DB003696
37335	119	8240DB003697
37336	119	8240DB003698
37337	119	8240DB003699
37338	119	8240DB003885
37339	119	8240DB001631
37340	119	8240DB001632
37341	119	8240DB005053
37342	119	8240DB001633
37343	119	8240DB001634
37344	119	8240DB001635
37345	119	8240DB001636
37346	119	8240DB001637
37347	119	8240DB001638
37348	119	8240DB001639
37349	119	8240DB001640
37350	119	8240DB000231
37351	119	8220DB001641
37352	119	8220DB001642
37353	119	8220DB000213
37354	119	8220DB000214
37355	119	8220DB004432
37356	119	8220DB000119
37357	119	8220DB000044
37358	119	8220DB007603
37359	119	8220DB000045
37360	119	8220DB000046
37361	119	8220DB000047
37362	119	8220DB000048
37363	119	8220DB000049
37364	119	8220DB000051
37365	119	8220DB000052
37366	119	8220DB000277
37367	120	8220DB000292
37368	120	8220DB001171
37369	120	8220DB001172
37370	120	8220DB001173
37371	120	8220DB001174
37372	120	8220DB001175
37373	120	8220DB000015
37374	120	8220DB000017
37375	120	8220DB000018
37376	120	8220DB000019
37377	120	8220DB000021
37378	120	8220DB007602
37379	120	8220DB000085
37380	120	8220DB000203
37381	120	8220DB000204
37382	120	8220DB000205
37383	120	8220DB001620
37384	120	8220DB000220
37385	120	8240DB001622
37386	120	8240DB001623
37387	120	8240DB001624
37388	120	8240DB001625
37389	120	8240DB001626
37390	120	8240DB001627
37391	120	8240DB001628
37392	120	8240DB001629
37393	120	8240DB001630
37394	120	8240DB003670
37395	120	8240DB003671
37396	120	8240DB003672
37397	120	8240DB003674
37398	120	8240DB003675
37399	120	8240DB003676
37400	120	8240DB003677
37401	120	8240DB003678
37402	120	8240DB003679
37403	120	8240DB003711
37404	120	8240DB003712
37405	120	8240DB003713
37406	120	8240DB003714
37407	120	8240DB003715
37408	120	8240DB005175
37409	120	8240DB003755
37410	120	8240DB003756
37411	120	8240DB003757
37412	120	8240DB003758
37413	120	8240DB003759
37414	120	8240DB003760
37415	120	8240DB003761
37416	120	8240DB003762
37417	120	8240DB003763
37418	120	8240DB003764
37419	120	8240DB003765
37420	120	8240DB003766
37421	120	8240DB003767
37422	120	8240DB003768
37423	120	8240DB003769
37424	120	8240DB003771
37425	120	8240DB003772
37426	120	8240DB003773
37427	120	8240DB003774
37428	120	8240DB007172
37429	120	8240DB003775
37430	120	8240DB003777
37431	120	8240DB003778
37432	120	8240DB007690
37433	120	8240DB003781
37434	120	8240DB003782
37435	120	8240DB003783
37436	120	8240DB003784
37437	120	8240DB003785
37438	120	8240DB003786
37439	120	8240DB003787
37440	120	8240DB003788
37441	120	8240DB003789
37442	120	8240DB003790
37443	120	8240DB003791
37444	120	8240DB003792
37445	120	8240DB003793
37446	120	8240DB003794
37447	120	8240DB003795
37448	120	8240DB003797
37449	120	8240DB003798
37450	120	8240DB003799
37451	120	8240DB006076
37452	120	8240DB006077
37453	120	8240DB003569
37454	120	8240DB003571
37455	120	8240DB003801
37456	120	8240DB003802
37457	120	8240DB003805
37458	120	8240DB007175
37459	120	8240DB003806
37460	120	8240DB003807
37461	120	8240DB003808
37462	120	8240DB003809
37463	121	8220DB000407
37464	121	8220DB002498
37465	121	8220DB002499
37466	121	8220DB002500
37467	121	8220DB002501
37468	121	8220DB007623
37469	121	8240DB007041
37470	121	8240DB003719
37471	121	8240DB003718
37472	121	8240DB007724
37473	121	8240DB003720
37474	121	8240DB007691
37475	121	8240DB003721
37476	121	8240DB003722
37477	121	8240DB005069
37478	121	8240DB003723
37479	121	8240DB003724
37480	121	8240DB003725
37481	121	8240DB003726
37482	121	8240DB007039
37483	121	8240DB007204
37484	121	8240DB003728
37485	121	8240DB003729
37486	121	8240DB003730
37487	122	8240DB003732
37488	122	8240DB003733
37489	122	8240DB003734
37490	122	8240DB003735
37491	122	8240DB007039
37492	122	8240DB007204
37493	122	8240DB003736
37494	122	8240DB003738
37495	122	8240DB007170
37496	122	8240DB003740
37497	122	8240DB003741
37498	122	8240DB005165
37499	122	8240DB003743
37500	122	8240DB003780
37501	122	8240DB003744
37502	122	8240DB007723
37503	122	8240DB003745
37504	122	8240DB003746
37505	122	8240DB007040
37506	122	8220DB006252
37507	122	8220DB000302
37508	122	8220DB000333
37509	122	8220DB000747
37510	123	8220DB000292
37511	123	8220DB001171
37512	123	8220DB001172
37513	123	8220DB001173
37514	123	8220DB001174
37515	123	8220DB001175
37516	123	8220DB000015
37517	123	8220DB000017
37518	123	8220DB000018
37519	123	8220DB000019
37520	123	8220DB000021
37521	123	8220DB007602
37522	123	8220DB000085
37523	123	8220DB000203
37524	123	8220DB000204
37525	123	8220DB000205
37526	123	8220DB001620
37527	123	8220DB000220
37528	123	8240DB001622
37529	123	8240DB001623
37530	123	8240DB001624
37531	123	8240DB001625
37532	123	8240DB001626
37533	123	8240DB001627
37534	123	8240DB001628
37535	123	8240DB001629
37536	123	8240DB001630
37537	123	8240DB003670
37538	123	8240DB003671
37539	123	8240DB003672
37540	123	8240DB003674
37541	123	8240DB003675
37542	123	8240DB003676
37543	123	8240DB003677
37544	123	8240DB003678
37545	123	8240DB003679
37546	123	8240DB003711
37547	123	8240DB003712
37548	123	8240DB003713
37549	123	8240DB003714
37550	123	8240DB003719
37551	123	8240DB003718
37552	123	8240DB007724
37553	123	8240DB003720
37554	123	8240DB007691
37555	123	8240DB003721
37556	123	8240DB003722
37557	123	8240DB005069
37558	123	8240DB003723
37559	123	8240DB003724
37560	123	8240DB003725
37561	123	8240DB003738
37562	123	8240DB007170
37563	123	8240DB003740
37564	123	8240DB003741
37565	123	8240DB005165
37566	123	8240DB007169
37567	123	8240DB003743
37568	123	8240DB003780
37569	123	8240DB003744
37570	123	8240DB007721
37571	123	8240DB003755
37572	123	8240DB003756
37573	123	8240DB003757
37574	123	8240DB003758
37575	123	8240DB003759
37576	123	8240DB003760
37577	123	8240DB003761
37578	123	8240DB003762
37579	123	8240DB003763
37580	123	8240DB003764
37581	123	8240DB003765
37582	123	8240DB003766
37583	123	8240DB003767
37584	123	8240DB003768
37585	123	8240DB003769
37586	123	8240DB003771
37587	123	8240DB003772
37588	123	8240DB003773
37589	123	8240DB005176
37590	123	8240DB003774
37591	123	8240DB007172
37592	123	8240DB003775
37593	123	8240DB003777
37594	123	8240DB003778
37595	123	8240DB007690
37596	123	8240DB003781
37597	123	8240DB003782
37598	123	8240DB003783
37599	123	8240DB003784
37600	123	8240DB003785
37601	123	8240DB003786
37602	123	8240DB003787
37603	123	8240DB003788
37604	123	8240DB003789
37605	123	8240DB003790
37606	123	8240DB003791
37607	123	8240DB003792
37608	123	8240DB003793
37609	123	8240DB003794
37610	123	8240DB003795
37611	123	8240DB003797
37612	123	8240DB003798
37613	123	8240DB006076
37614	123	8240DB006077
37615	123	8240DB003569
37616	123	8240DB003571
37617	123	8240DB003801
37618	124	8220DB000407
37619	124	8220DB002498
37620	124	8220DB002499
37621	124	8220DB002500
37622	124	8220DB002501
37623	124	8220DB007623
37624	124	8240DB003715
37625	124	8240DB005175
37626	124	8240DB003755
37627	124	8240DB003756
37628	124	8240DB003757
37629	124	8240DB003758
37630	124	8240DB003759
37631	124	8240DB003760
37632	124	8240DB003761
37633	124	8240DB003762
37634	124	8240DB003763
37635	124	8240DB003764
37636	124	8240DB003765
37637	124	8240DB003766
37638	124	8240DB003767
37639	124	8240DB003768
37640	124	8240DB003769
37641	124	8240DB003771
37642	124	8240DB003772
37643	124	8240DB003773
37644	124	8240DB005176
37645	124	8240DB003774
37646	124	8240DB007172
37647	124	8240DB003775
37648	124	8240DB003777
37649	124	8240DB003778
37650	124	8240DB007690
37651	124	8240DB003781
37652	124	8240DB003782
37653	124	8240DB003783
37654	124	8240DB003784
37655	124	8240DB003785
37656	124	8240DB003786
37657	124	8240DB003787
37658	124	8240DB003788
37659	124	8240DB003789
37660	124	8240DB003790
37661	124	8240DB003791
37662	124	8240DB003792
37663	124	8240DB003793
37664	124	8240DB003794
37665	124	8240DB003795
37666	124	8240DB003797
37667	124	8240DB003798
37668	124	8240DB003799
37669	124	8240DB006076
37670	124	8240DB006077
37671	124	8240DB003569
37672	124	8240DB003571
37673	124	8240DB003801
37674	124	8240DB003802
37675	124	8240DB003805
37676	124	8240DB007175
37677	124	8240DB003806
37678	124	8240DB003807
37679	124	8240DB003808
37680	124	8240DB003809
37681	125	8240DB003815
37682	125	8240DB003816
37683	125	8240DB003566
37684	125	8240DB003567
37685	125	8240DB007292
37686	125	8240DB003818
37687	125	8240DB003819
37688	125	8240DB003820
37689	125	8240DB003822
37690	125	8240DB003823
37691	125	8240DB003824
37692	125	8240DB003565
37693	125	8240DB003825
37694	125	8240DB003826
37695	125	8240DB003827
37696	125	8240DB003828
37697	125	8240DB003829
37698	125	8240DB003831
37699	125	8240DB003832
37700	125	8240DB003833
37701	125	8240DB003834
37702	125	8240DB003835
37703	125	8240DB003836
37704	125	8240DB003837
37705	125	8240DB003838
37706	125	8240DB003840
37707	125	8240DB003842
37708	125	8240DB003843
37709	125	8240DB003844
37710	125	8240DB003845
37711	125	8240DB003846
37712	125	8240DB003848
37713	125	8240DB003849
37714	125	8240DB003850
37715	125	8240DB003851
37716	125	8240DB003852
37717	125	8240DB003853
37718	125	8240DB003854
37719	125	8240DB003855
37720	125	8240DB003856
37721	125	8240DB003857
37722	125	8240DB003858
37723	125	8240DB003859
37724	125	8240DB003860
37725	125	8240DB003861
37726	125	8240DB003862
37727	125	8240DB003863
37728	125	8240DB003748
37729	125	8240DB006050
37730	125	8220DB007398
37731	125	8220DB006252
37732	125	8220DB000302
37733	125	8220DB004495
37734	125	8220DB002809
37735	126	8240DB004747
37736	126	8240DB001882
37737	126	8240DB007379
37738	126	8240DB004903
37739	126	8240DB007219
37740	126	8240DB007218
37741	126	8240DB007031
37742	126	8240DB004897
37743	126	8240DB004898
37744	126	8240DB004574
37745	126	8240DB004575
37746	126	8240DB001680
37747	126	8240DB001681
37748	126	8240DB001682
37749	126	8240DB001683
37750	126	8240DB001684
37751	126	8240DB001685
37752	126	8240DB001686
37753	126	8240DB001687
37754	126	8240DB001688
37755	126	8240DB001689
37756	126	8240DB001690
37757	126	8240DB001691
37758	126	8240DB001692
37759	126	8240DB001693
37760	126	8220DB001694
37761	126	8220DB001695
37762	126	8220DB001696
37763	126	8220DB001697
37764	126	8220DB001698
37765	126	8220DB001699
37766	126	8220DB001700
37767	126	8220DB001701
37768	126	8220DB001702
37769	126	8220DB001703
37770	126	8220DB001704
37771	126	8220DB001705
37772	126	8220DB001706
37773	126	8220DB001707
37774	126	8220DB001708
37775	126	8220DB001709
37776	126	8220DB001528
37777	126	8220DB001710
37778	126	8220DB001711
37779	126	8220DB001712
37780	126	8220DB001713
37781	126	8220DB001714
37782	126	8220DB001715
37783	126	8220DB007453
37784	126	8220DB001478
37785	126	8220DB001479
37786	126	8220DB000315
37787	126	8220DB000404
37788	126	8220DB000747
37789	126	8220DB000843
37790	126	8220DB000845
37791	126	8220DB000846
37792	127	8220DB007340
37793	127	8220DB000783
37794	127	8220DB000784
37795	127	8220DB000785
37796	127	8220DB000786
37797	127	8220DB000793
37798	127	8220DB007586
37799	127	8220DB007587
37800	127	8220DB007588
37801	127	8220DB000329
37802	127	8220DB001443
37803	127	8220DB001444
37804	127	8220DB001445
37805	127	8220DB001647
37806	127	8220DB001648
37807	127	8220DB001649
37808	127	8220DB001911
37809	127	8220DB000802
37810	127	8220DB001654
37811	127	8220DB001655
37812	127	8220DB001656
37813	127	8220DB001657
37814	127	8220DB004458
37815	127	8220DB001658
37816	127	8220DB001659
37817	127	8220DB001660
37818	127	8220DB001661
37819	127	8220DB001662
37820	127	8220DB001664
37821	127	8220DB001665
37822	127	8220DB001666
37823	127	8220DB001667
37824	127	8220DB001668
37825	127	8240DB001669
37826	127	8240DB001670
37827	127	8240DB001671
37828	127	8240DB001672
37829	127	8240DB001673
37830	127	8240DB001674
37831	127	8240DB001675
37832	127	8240DB007380
37833	127	8240DB001676
37834	127	8240DB001517
37835	127	8240DB001678
37836	127	8240DB001679
37837	127	8240DB004520
37838	127	8240DB004825
37839	127	8240DB007233
37840	127	8240DB004573
37841	127	8240DB004893
37842	127	8240DB004894
37843	127	8240DB004895
37844	127	8240DB007217
37845	127	8240DB007227
37846	127	8240DB006172
37847	127	8240DB004493
37848	127	8240DB004362
37849	128	8240DB004745
37850	128	8240DB004989
37851	128	8240DB004990
37852	128	8240DB004991
37853	128	8240DB004992
37854	128	8240DB001719
37855	128	8240DB001828
37856	128	8240DB001829
37857	128	8240DB004997
37858	128	8240DB004998
37859	128	8240DB004999
37860	128	8240DB001833
37861	128	8240DB001834
37862	128	8240DB001820
37863	128	8240DB002468
37864	128	8240DB007319
37865	128	8240DB007342
37866	128	8240DB007125
37867	128	8240DB007344
37868	128	8240DB007334
37869	128	8240DB001838
37870	128	8240DB002338
37871	128	8240DB001840
37872	128	8240DB001841
37873	128	8240DB004314
37874	128	8240DB001687
37875	128	8240DB001688
37876	128	8240DB001689
37877	128	8240DB004899
37878	128	8240DB004900
37879	128	8240DB004746
37880	128	8240DB001845
37881	128	8240DB007166
37882	128	8220DB001847
37883	128	8220DB001696
37884	128	8220DB001697
37885	128	8220DB001698
37886	128	8220DB001699
37887	128	8220DB001700
37888	128	8220DB001701
37889	128	8220DB001702
37890	128	8220DB001703
37891	128	8220DB001905
37892	128	8220DB001804
37893	128	8220DB001803
37894	128	8220DB000077
37895	128	8220DB000078
37896	128	8220DB000079
37897	128	8220DB000080
37898	128	8220DB000082
37899	128	8220DB000817
37900	128	8220DB000818
37901	128	8220DB000819
37902	128	8220DB000265
37903	128	8220DB006059
37904	128	8220DB000404
37905	128	8220DB000747
37906	128	8220DB000748
37907	128	8220DB000749
37908	128	8220DB000750
37909	128	8220DB000751
37910	128	8220DB000752
37911	128	8220DB000753
37912	128	8220DB007370
37913	129	8240DB004745
37914	129	8240DB004989
37915	129	8240DB004990
37916	129	8240DB004991
37917	129	8240DB004992
37918	129	8240DB001719
37919	129	8240DB001828
37920	129	8240DB001829
37921	129	8240DB004997
37922	129	8240DB004998
37923	129	8240DB004999
37924	129	8240DB001833
37925	129	8240DB001834
37926	129	8240DB001835
37927	129	8240DB001836
37928	129	8240DB001837
37929	129	8240DB002338
37930	129	8240DB001840
37931	129	8240DB001841
37932	129	8240DB004314
37933	129	8240DB001687
37934	129	8240DB001688
37935	129	8240DB001689
37936	129	8240DB004899
37937	129	8240DB004900
37938	129	8240DB004746
37939	129	8240DB001845
37940	129	8240DB007166
37941	129	8220DB001847
37942	129	8220DB001696
37943	129	8220DB001697
37944	129	8220DB001698
37945	129	8220DB001699
37946	129	8220DB001700
37947	129	8220DB001701
37948	129	8220DB001702
37949	129	8220DB001703
37950	129	8220DB001905
37951	129	8220DB001804
37952	129	8220DB001803
37953	129	8220DB000077
37954	129	8220DB000078
37955	129	8220DB000079
37956	129	8220DB000080
37957	129	8220DB000082
37958	129	8220DB000817
37959	129	8220DB000818
37960	129	8220DB000819
37961	129	8220DB000265
37962	129	8220DB006059
37963	129	8220DB000404
37964	129	8220DB000747
37965	129	8220DB000748
37966	129	8220DB000749
37967	129	8220DB000750
37968	129	8220DB000751
37969	129	8220DB000752
37970	129	8220DB000753
37971	129	8220DB007370
37972	130	8240DB004745
37973	130	8240DB004989
37974	130	8240DB004990
37975	130	8240DB004991
37976	130	8240DB004992
37977	130	8240DB001719
37978	130	8240DB001828
37979	130	8240DB001829
37980	130	8240DB004997
37981	130	8240DB004998
37982	130	8240DB004999
37983	130	8240DB001833
37984	130	8240DB001834
37985	130	8240DB001820
37986	130	8240DB002468
37987	130	8240DB007319
37988	130	8240DB007342
37989	130	8240DB007125
37990	130	8240DB007344
37991	130	8240DB007334
37992	130	8240DB001838
37993	130	8240DB002338
37994	130	8240DB001840
37995	130	8240DB001841
37996	130	8240DB001842
37997	130	8240DB007374
37998	130	8240DB001845
37999	130	8240DB007166
38000	130	8220DB001847
38001	130	8220DB001696
38002	130	8220DB001697
38003	130	8220DB001698
38004	130	8220DB001699
38005	130	8220DB001700
38006	130	8220DB001701
38007	130	8220DB001702
38008	130	8220DB001703
38009	130	8220DB001905
38010	130	8220DB001804
38011	130	8220DB001803
38012	130	8220DB000077
38013	130	8220DB000078
38014	130	8220DB000079
38015	130	8220DB000080
38016	130	8220DB000082
38017	130	8220DB000817
38018	130	8220DB000818
38019	130	8220DB000819
38020	130	8220DB000265
38021	130	8220DB006059
38022	130	8220DB000404
38023	130	8220DB000747
38024	130	8220DB000748
38025	130	8220DB000749
38026	130	8220DB000750
38027	130	8220DB000751
38028	130	8220DB000752
38029	130	8220DB000753
38030	130	8220DB007370
38031	131	8240DB004745
38032	131	8240DB004989
38033	131	8240DB004990
38034	131	8240DB004991
38035	131	8240DB004992
38036	131	8240DB001719
38037	131	8240DB001828
38038	131	8240DB001829
38039	131	8240DB004997
38040	131	8240DB004998
38041	131	8240DB004999
38042	131	8240DB001833
38043	131	8240DB001834
38044	131	8240DB001835
38045	131	8240DB001836
38046	131	8240DB001837
38047	131	8240DB002338
38048	131	8240DB001840
38049	131	8240DB001841
38050	131	8240DB001842
38051	131	8240DB007374
38052	131	8240DB001845
38053	131	8240DB007166
38054	131	8220DB001847
38055	131	8220DB001696
38056	131	8220DB001697
38057	131	8220DB001698
38058	131	8220DB001699
38059	131	8220DB001700
38060	131	8220DB001701
38061	131	8220DB001702
38062	131	8220DB001703
38063	131	8220DB001905
38064	131	8220DB001804
38065	131	8220DB001803
38066	131	8220DB000077
38067	131	8220DB000078
38068	131	8220DB000079
38069	131	8220DB000080
38070	131	8220DB000082
38071	131	8220DB000817
38072	131	8220DB000818
38073	131	8220DB000819
38074	131	8220DB000265
38075	131	8220DB006059
38076	131	8220DB000404
38077	131	8220DB000747
38078	131	8220DB000748
38079	131	8220DB000749
38080	131	8220DB000750
38081	131	8220DB000751
38082	131	8220DB000752
38083	131	8220DB000753
38084	131	8220DB007370
38085	132	8240DB004745
38086	132	8240DB004989
38087	132	8240DB004990
38088	132	8240DB004991
38089	132	8240DB004992
38090	132	8240DB001719
38091	132	8240DB001828
38092	132	8240DB001829
38093	132	8240DB004997
38094	132	8240DB004998
38095	132	8240DB004999
38096	132	8240DB001833
38097	132	8240DB001834
38098	132	8240DB001835
38099	132	8240DB001836
38100	132	8240DB001837
38101	132	8240DB002338
38102	132	8240DB001845
38103	132	8240DB007166
38104	132	8220DB001847
38105	132	8220DB001696
38106	132	8220DB001697
38107	132	8220DB001698
38108	132	8220DB001699
38109	132	8220DB001700
38110	132	8220DB001701
38111	132	8220DB001702
38112	132	8220DB001703
38113	132	8220DB001905
38114	132	8220DB001804
38115	132	8220DB001803
38116	132	8220DB000077
38117	132	8220DB000078
38118	132	8220DB000079
38119	132	8220DB000080
38120	132	8220DB000082
38121	132	8220DB000817
38122	132	8220DB000818
38123	132	8220DB000819
38124	132	8220DB000265
38125	132	8220DB006059
38126	132	8220DB000404
38127	132	8220DB000747
38128	132	8220DB000748
38129	132	8220DB000749
38130	132	8220DB000750
38131	132	8220DB000751
38132	132	8220DB000752
38133	132	8220DB000753
38134	132	8220DB007370
38135	133	8220DB007333
38136	133	8220DB000783
38137	133	8220DB000784
38138	133	8220DB000785
38139	133	8220DB000786
38140	133	8220DB000793
38141	133	8220DB000274
38142	133	8220DB000002
38143	133	8220DB000192
38144	133	8220DB000795
38145	133	8220DB000796
38146	133	8220DB000057
38147	133	8220DB000058
38148	133	8220DB000059
38149	133	8220DB000060
38150	133	8220DB001802
38151	133	8220DB001795
38152	133	8220DB001806
38153	133	8220DB001660
38154	133	8220DB001661
38155	133	8220DB001662
38156	133	8220DB001664
38157	133	8220DB001665
38158	133	8220DB001666
38159	133	8220DB001807
38160	133	8240DB007167
38161	133	8240DB001808
38162	133	8240DB001816
38163	133	8240DB006171
38164	133	8240DB004974
38165	133	8240DB004976
38166	133	8240DB007126
38167	133	8240DB007124
38168	133	8240DB007343
38169	133	8240DB007318
38170	133	8240DB004980
38171	133	8240DB002289
38172	133	8240DB001822
38173	133	8240DB004994
38174	133	8240DB004995
38175	133	8240DB004996
38176	133	8240DB001826
38177	133	8240DB001827
38178	133	8240DB007382
38179	133	8240DB007381
38180	133	8240DB004742
38181	133	8240DB004743
38182	134	8240DB004745
38183	134	8240DB004989
38184	134	8240DB001845
38185	134	8240DB007166
38186	134	8220DB001847
38187	134	8220DB001696
38188	134	8220DB001697
38189	134	8220DB001698
38190	134	8220DB001699
38191	134	8220DB001700
38192	134	8220DB001701
38193	134	8220DB001702
38194	134	8220DB001703
38195	134	8220DB001905
38196	134	8220DB001804
38197	134	8220DB001803
38198	134	8220DB000077
38199	134	8220DB000078
38200	134	8220DB000079
38201	134	8220DB000080
38202	134	8220DB000082
38203	134	8220DB000817
38204	134	8220DB000818
38205	134	8220DB000819
38206	134	8220DB000265
38207	134	8220DB006059
38208	134	8220DB000404
38209	134	8220DB000747
38210	134	8220DB000748
38211	134	8220DB000749
38212	134	8220DB000750
38213	134	8220DB000751
38214	134	8220DB000752
38215	134	8220DB000753
38216	134	8220DB007370
38217	135	8220DB007333
38218	135	8220DB000783
38219	135	8220DB000784
38220	135	8220DB000785
38221	135	8220DB000786
38222	135	8220DB000793
38223	135	8220DB000274
38224	135	8220DB000002
38225	135	8220DB000192
38226	135	8220DB000795
38227	135	8220DB000796
38228	135	8220DB000057
38229	135	8220DB000058
38230	135	8220DB000059
38231	135	8220DB000060
38232	135	8220DB001802
38233	135	8220DB001795
38234	135	8220DB001806
38235	135	8220DB001660
38236	135	8220DB001661
38237	135	8220DB001662
38238	135	8220DB001664
38239	135	8220DB001665
38240	135	8220DB001666
38241	135	8220DB001807
38242	135	8240DB007167
38243	135	8240DB001808
38244	135	8240DB004744
38245	136	8220DB007333
38246	136	8220DB000783
38247	136	8220DB000784
38248	136	8220DB000785
38249	136	8220DB000786
38250	136	8220DB000793
38251	136	8220DB007586
38252	136	8220DB007587
38253	136	8220DB007588
38254	136	8220DB000328
38255	136	8220DB001443
38256	136	8220DB001444
38257	136	8220DB001445
38258	136	8220DB001647
38259	136	8220DB001648
38260	136	8220DB001649
38261	136	8220DB001911
38262	136	8220DB001913
38263	136	8220DB001914
38264	136	8220DB001805
38265	136	8220DB001806
38266	136	8220DB001660
38267	136	8220DB001661
38268	136	8220DB001662
38269	136	8220DB001664
38270	136	8220DB001665
38271	136	8220DB001666
38272	136	8220DB001807
38273	136	8240DB007167
38274	136	8240DB001808
38275	136	8240DB001813
38276	136	8240DB001814
38277	136	8240DB001852
38278	136	8240DB001853
38279	136	8240DB001854
38280	136	8240DB001844
38281	136	8240DB006172
38282	136	8240DB004493
38283	136	8240DB004362
38284	136	8240DB007025
38285	136	8240DB004464
38286	136	8240DB001869
38287	136	8240DB001870
38288	136	8240DB001871
38289	136	8240DB001872
38290	136	8240DB001873
38291	136	8240DB001874
38292	136	8240DB001875
38293	136	8240DB001876
38294	136	8240DB001877
38295	136	8240DB001878
38296	136	8240DB001879
38297	136	8240DB001899
38298	136	8240DB001887
38299	136	8240DB001888
38300	136	8240DB001889
38301	136	8240DB001890
38302	136	8240DB007240
38303	136	8240DB001891
38304	136	8240DB007156
38305	136	8240DB007020
38306	136	8240DB007029
38307	136	8240DB007038
38308	136	8240DB007011
38309	136	8240DB002171
38310	136	8240DB007160
38311	136	8240DB007700
38312	136	8240DB007047
38313	136	8240DB007161
38314	137	8240DB007158
38315	137	8240DB007048
38316	137	8240DB007699
38317	137	8240DB007159
38318	137	8240DB007388
38319	137	8240DB007017
38320	137	8240DB007018
38321	137	8240DB007030
38322	137	8240DB007021
38323	137	8240DB007163
38324	137	8240DB001893
38325	137	8240DB001894
38326	137	8240DB001912
38327	137	8240DB001895
38328	137	8240DB001896
38329	137	8240DB001897
38330	137	8240DB006088
38331	137	8240DB001898
38332	137	8240DB001858
38333	137	8240DB001859
38334	137	8240DB001860
38335	137	8240DB004492
38336	137	8240DB001861
38337	137	8240DB001862
38338	137	8240DB001863
38339	137	8240DB001864
38340	137	8240DB001865
38341	137	8240DB001866
38342	137	8240DB001850
38343	137	8240DB001867
38344	137	8240DB004489
38345	137	8240DB004747
38346	137	8240DB001882
38347	137	8240DB007379
38348	137	8240DB004903
38349	137	8240DB001883
38350	137	8240DB001884
38351	137	8240DB001902
38352	137	8240DB001903
38353	137	8240DB001904
38354	137	8240DB001840
38355	137	8240DB001841
38356	137	8240DB001842
38357	137	8240DB007374
38358	137	8240DB001845
38359	137	8240DB007166
38360	137	8220DB001847
38361	137	8220DB001696
38362	137	8220DB001697
38363	137	8220DB001698
38364	137	8220DB001699
38365	137	8220DB001700
38366	137	8220DB001701
38367	137	8220DB001702
38368	137	8220DB001703
38369	137	8220DB001905
38370	137	8220DB001906
38371	137	8220DB001907
38372	137	8220DB001908
38373	137	8220DB001909
38374	137	8220DB001713
38375	137	8220DB001714
38376	137	8220DB001715
38377	137	8220DB007453
38378	137	8220DB001478
38379	137	8220DB001479
38380	137	8220DB000315
38381	137	8220DB000335
38382	137	8220DB000404
38383	137	8220DB000747
38384	137	8220DB000748
38385	137	8220DB000749
38386	137	8220DB000750
38387	137	8220DB000751
38388	137	8220DB000752
38389	137	8220DB000753
38390	138	8250DB000767
38391	138	8250DB000768
38392	138	8220DB000769
38393	138	8220DB000770
38394	138	8220DB000771
38395	138	8220DB000772
38396	138	8220DB000773
38397	138	8220DB000774
38398	138	8220DB000775
38399	138	8220DB000776
38400	138	8220DB000777
38401	138	8220DB000779
38402	138	8220DB000780
38403	138	8220DB000781
38404	138	8220DB000782
38405	138	8220DB000783
38406	138	8220DB000784
38407	138	8220DB000785
38408	138	8220DB000786
38409	138	8220DB000793
38410	138	8220DB007586
38411	138	8220DB007587
38412	138	8220DB007588
38413	138	8220DB000328
38414	138	8220DB001443
38415	138	8220DB001444
38416	138	8220DB001445
38417	138	8220DB001647
38418	138	8220DB001648
38419	138	8220DB001649
38420	138	8220DB001911
38421	138	8220DB001913
38422	138	8220DB001914
38423	138	8220DB001805
38424	138	8220DB001806
38425	138	8220DB001660
38426	138	8220DB001661
38427	138	8220DB001662
38428	138	8220DB001664
38429	138	8220DB001665
38430	138	8220DB001666
38431	138	8220DB001807
38432	138	8240DB007167
38433	138	8240DB001808
38434	138	8240DB007389
38435	138	8240DB007025
38436	138	8240DB004464
38437	138	8240DB001869
38438	138	8240DB001870
38439	138	8240DB001871
38440	138	8240DB001872
38441	138	8240DB001873
38442	138	8240DB001874
38443	138	8240DB001875
38444	138	8240DB001876
38445	138	8240DB001877
38446	138	8240DB001878
38447	138	8240DB001879
38448	138	8240DB001899
38449	138	8240DB006107
38450	138	8240DB006108
38451	138	8240DB006109
38452	138	8240DB006110
38453	138	8240DB007020
38454	138	8240DB007029
38455	138	8240DB007038
38456	138	8240DB007011
38457	138	8240DB002171
38458	138	8240DB007160
38459	138	8240DB007700
38460	138	8240DB007047
38461	138	8240DB007161
38462	139	8240DB007158
38463	139	8240DB007048
38464	139	8240DB007699
38465	139	8240DB007159
38466	139	8240DB007388
38467	139	8240DB007017
38468	139	8240DB007018
38469	139	8240DB007030
38470	139	8240DB007021
38471	139	8240DB006111
38472	139	8240DB006112
38473	139	8240DB006113
38474	139	8240DB001898
38475	139	8240DB001858
38476	139	8240DB001859
38477	139	8240DB001860
38478	139	8240DB004492
38479	139	8240DB001861
38480	139	8240DB001862
38481	139	8240DB001863
38482	139	8240DB001864
38483	139	8240DB001865
38484	139	8240DB001866
38485	139	8240DB001850
38486	139	8240DB001867
38487	139	8240DB004489
38488	139	8240DB004747
38489	139	8240DB001845
38490	139	8240DB007166
38491	139	8220DB001847
38492	139	8220DB001696
38493	139	8220DB001697
38494	139	8220DB001698
38495	139	8220DB001699
38496	139	8220DB001700
38497	139	8220DB001701
38498	139	8220DB001702
38499	139	8220DB001703
38500	139	8220DB001905
38501	139	8220DB001906
38502	139	8220DB001907
38503	139	8220DB001908
38504	139	8220DB001909
38505	139	8220DB001713
38506	139	8220DB001714
38507	139	8220DB001715
38508	139	8220DB007453
38509	139	8220DB001478
38510	139	8220DB001479
38511	139	8220DB000315
38512	139	8220DB000335
38513	139	8220DB000404
38514	139	8220DB000747
38515	139	8220DB000748
38516	139	8220DB000749
38517	139	8220DB000750
38518	139	8220DB000751
38519	139	8220DB000752
38520	139	8220DB000753
38521	139	8220DB000754
38522	139	8220DB000755
38523	139	8220DB000756
38524	139	8220DB000757
38525	139	8220DB000758
38526	139	8220DB000759
38527	139	8220DB000760
38528	139	8220DB000761
38529	139	8220DB000762
38530	139	8220DB000763
38531	140	8220DB007333
38532	140	8220DB000783
38533	140	8220DB000785
38534	140	8220DB000786
38535	140	8220DB000793
38536	140	8220DB007586
38537	140	8220DB007587
38538	140	8220DB000328
38539	140	8220DB001443
38540	140	8220DB001647
38541	140	8220DB001649
38542	140	8220DB001911
38543	140	8220DB001805
38544	140	8220DB001662
38545	140	8220DB001666
38546	140	8240DB001808
38547	140	8240DB007475
38548	140	8240DB006107
38549	140	8240DB006109
38550	140	8240DB006110
38551	140	8240DB007029
38552	140	8240DB007038
38553	140	8240DB007011
38554	140	8240DB007160
38555	140	8240DB007700
38556	140	8240DB007047
38557	140	8240DB007161
38558	141	8240DB007158
38559	141	8240DB007048
38560	141	8240DB007699
38561	141	8240DB007159
38562	141	8240DB007017
38563	141	8240DB007018
38564	141	8240DB007030
38565	141	8240DB006111
38566	141	8240DB006112
38567	141	8240DB006113
38568	141	8240DB004323
38569	141	8240DB001845
38570	141	8220DB001696
38571	141	8220DB001700
38572	141	8220DB001906
38573	141	8220DB001909
38574	141	8220DB001713
38575	141	8220DB001715
38576	141	8220DB001478
38577	141	8220DB000315
38578	141	8220DB004495
38579	141	8220DB002809
38580	141	8220DB002810
38581	141	8220DB000749
38582	141	8220DB000751
38583	141	8220DB000752
38584	142	8250DB007330
38585	142	8250DB002051
38586	142	8250DB006086
38587	142	8250DB003161
38588	142	8250DB003162
38589	142	8250DB003163
38590	142	8250DB003164
38591	142	8250DB003084
38592	142	8250DB000469
38593	142	8250DB000470
38594	142	8250DB000471
38595	142	8250DB000472
38596	142	8250DB000473
38597	142	8250DB004705
38598	142	8250DB000475
38599	142	8220DB000476
38600	142	8220DB000477
38601	142	8220DB000478
38602	142	8220DB000479
38603	142	8220DB000480
38604	142	8220DB000481
38605	142	8220DB000482
38606	142	8220DB000483
38607	142	8220DB000485
38608	142	8220DB000487
38609	142	8220DB000488
38610	142	8220DB000489
38611	142	8220DB000490
38612	142	8220DB000491
38613	142	8220DB000492
38614	142	8220DB000493
38615	142	8220DB000494
38616	142	8220DB000495
38617	142	8220DB000400
38618	142	8220DB000281
38619	142	8220DB000006
38620	142	8220DB000194
38621	142	8220DB000195
38622	142	8220DB000196
38623	142	8220DB000197
38624	142	8220DB000198
38625	142	8220DB000199
38626	142	8220DB000200
38627	142	8220DB000201
38628	142	8220DB000148
38629	142	8220DB000149
38630	142	8220DB000150
38631	142	8220DB000027
38632	142	8220DB000028
38633	142	8220DB000029
38634	142	8220DB004680
38635	142	8220DB000090
38636	142	8220DB000091
38637	142	8220DB000092
38638	142	8220DB000093
38639	142	8220DB000094
38640	142	8220DB000126
38641	142	8220DB006182
38642	142	8220DB000322
38643	142	8240DB000323
38644	143	8240DB000324
38645	143	8240DB000327
38646	143	8220DB007113
38647	143	8220DB000127
38648	143	8220DB000112
38649	143	8220DB000113
38650	143	8220DB000114
38651	143	8220DB000115
38652	143	8220DB000037
38653	143	8220DB000038
38654	143	8220DB000039
38655	143	8220DB000040
38656	143	8220DB000146
38657	143	8220DB000147
38658	143	8220DB000184
38659	143	8220DB000185
38660	143	8220DB000186
38661	143	8220DB000187
38662	143	8220DB000188
38663	143	8220DB000189
38664	143	8220DB000190
38665	143	8220DB000191
38666	143	8220DB000819
38667	143	8220DB004725
38668	143	8220DB000273
38669	143	8220DB000405
38670	143	8220DB000408
38671	143	8220DB000409
38672	143	8220DB000410
38673	143	8220DB000411
38674	143	8220DB000412
38675	143	8220DB000413
38676	143	8220DB000414
38677	143	8220DB000415
38678	143	8220DB000416
38679	143	8220DB000417
38680	143	8220DB000418
38681	143	8220DB000419
38682	143	8220DB000420
38683	143	8220DB000421
38684	143	8220DB000422
38685	143	8220DB000423
38686	143	8220DB000424
38687	143	8250DB000425
38688	143	8250DB000426
38689	143	8250DB000427
38690	143	8250DB000428
38691	143	8250DB000429
38692	143	8250DB006334
38693	143	8250DB007660
38694	143	8250DB003114
38695	143	8250DB003115
38696	143	8250DB003116
38697	143	8250DB006085
38698	143	8250DB002026
38699	144	8230DB004795
38700	144	8230DB004688
38701	144	8230DB004689
38702	144	8230DB004410
38703	144	8230DB002678
38704	144	8230DB002679
38705	144	8230DB002680
38706	144	8230DB002676
38707	144	8230DB002118
38708	144	8230DB002119
38709	144	8230DB002120
38710	144	8230DB002121
38711	144	8230DB002123
38712	144	8230DB002685
38713	144	8230DB002686
38714	144	8230DB007510
38715	144	8230DB004799
38716	144	8230DB002205
38717	144	8230DB002687
38718	144	8220DB002688
38719	144	8220DB002689
38720	144	8220DB002696
38721	144	8220DB002697
38722	144	8220DB002713
38723	144	8220DB002714
38724	144	8220DB002715
38725	144	8220DB002716
38726	144	8220DB002718
38727	144	8220DB002719
38728	144	8220DB001989
38729	144	8220DB001990
38730	144	8220DB001992
38731	144	8220DB001993
38732	144	8220DB001994
38733	144	8220DB001995
38734	144	8220DB001996
38735	144	8220DB001997
38736	144	8220DB001998
38737	144	8220DB001999
38738	144	8220DB002001
38739	144	8220DB002002
38740	144	8220DB001358
38741	144	8220DB000319
38742	144	8220DB000279
38743	144	8220DB000007
38744	144	8220DB000011
38745	144	8220DB000014
38746	144	8220DB000015
38747	144	8220DB000834
38748	144	8220DB000835
38749	144	8220DB000836
38750	144	8220DB000837
38751	144	8220DB001506
38752	144	8220DB001507
38753	144	8220DB001508
38754	144	8220DB001509
38755	144	8220DB001510
38756	144	8220DB001511
38757	144	8220DB001592
38758	144	8220DB001593
38759	144	8220DB001594
38760	144	8220DB001596
38761	144	8220DB004363
38762	144	8220DB001598
38763	144	8220DB001597
38764	144	8220DB001599
38765	144	8220DB001573
38766	144	8220DB001574
38767	144	8220DB001575
38768	144	8220DB004583
38769	144	8220DB001518
38770	144	8220DB001519
38771	144	8220DB001520
38772	144	8220DB007661
38773	144	8220DB001521
38774	144	8220DB004546
38775	144	8220DB001559
38776	144	8220DB000987
38777	144	8220DB004937
38778	144	8220DB001547
38779	144	8220DB001548
38780	144	8220DB001280
38781	145	8240DB007132
38782	145	8220DB001558
38783	145	8220DB002957
38784	145	8220DB002958
38785	145	8220DB004938
38786	145	8220DB007845
38787	145	8220DB001549
38788	145	8220DB001523
38789	145	8220DB001524
38790	145	8220DB001525
38791	145	8220DB001526
38792	145	8220DB006080
38793	145	8220DB001585
38794	145	8220DB001586
38795	145	8220DB001587
38796	145	8220DB004539
38797	145	8220DB001606
38798	145	8220DB001607
38799	145	8220DB001608
38800	145	8220DB001609
38801	145	8220DB001610
38802	145	8220DB007471
38803	145	8220DB001533
38804	145	8220DB001534
38805	145	8220DB001535
38806	145	8220DB001536
38807	145	8220DB001537
38808	145	8220DB000186
38809	145	8220DB000838
38810	145	8220DB000839
38811	145	8220DB000840
38812	145	8220DB000841
38813	145	8220DB000049
38814	145	8220DB000051
38815	145	8220DB000052
38816	145	8220DB000261
38817	145	8220DB000270
38818	145	8220DB000335
38819	145	8220DB004521
38820	145	8220DB001935
38821	145	8220DB001937
38822	145	8220DB001938
38823	145	8220DB001939
38824	145	8220DB001940
38825	145	8220DB001941
38826	145	8220DB001942
38827	145	8220DB001943
38828	145	8220DB001944
38829	145	8220DB001945
38830	145	8220DB001946
38831	145	8220DB001947
38832	145	8220DB002642
38833	145	8220DB002643
38834	145	8220DB002644
38835	145	8220DB002709
38836	145	8220DB002710
38837	145	8220DB002711
38838	145	8220DB002712
38839	145	8220DB002655
38840	145	8220DB002656
38841	145	8220DB002668
38842	145	8220DB002672
38843	145	8230DB002673
38844	145	8230DB002206
38845	145	8230DB004798
38846	145	8230DB002674
38847	145	8230DB002675
38848	145	8230DB002124
38849	145	8230DB002125
38850	145	8230DB002126
38851	145	8230DB002127
38852	145	8230DB002128
38853	145	8230DB002129
38854	145	8230DB004797
38855	145	8230DB007473
38856	145	8230DB002681
38857	145	8230DB004691
38858	145	8230DB002682
38859	145	8230DB004796
38860	145	8230DB004690
38861	145	8230DB004411
38862	146	8240DB004316
38863	146	8240DB004317
38864	146	8240DB007013
38865	146	8240DB006162
38866	146	8240DB007022
38867	146	8240DB001554
38868	146	8240DB001555
38869	146	8240DB001556
38870	146	8240DB001557
38871	146	8240DB001181
38872	146	8240DB007350
38873	146	8220DB001558
38874	146	8220DB001549
38875	146	8220DB001523
38876	146	8220DB001524
38877	146	8220DB001525
38878	146	8220DB001526
38879	146	8220DB006080
38880	146	8220DB000983
38881	146	8220DB000984
38882	146	8220DB000985
38883	146	8220DB001529
38884	146	8220DB004542
38885	146	8220DB001531
38886	146	8220DB001532
38887	146	8220DB001533
38888	146	8220DB001534
38889	146	8220DB001535
38890	146	8220DB001536
38891	146	8220DB001537
38892	146	8220DB000186
38893	146	8220DB000838
38894	146	8220DB000839
38895	146	8220DB000840
38896	146	8220DB000841
38897	146	8220DB000049
38898	146	8220DB000051
38899	146	8220DB000052
38900	146	8220DB004725
38901	147	8220DB006004
38902	147	8220DB000007
38903	147	8220DB000011
38904	147	8220DB000014
38905	147	8220DB000015
38906	147	8220DB000834
38907	147	8220DB000835
38908	147	8220DB000836
38909	147	8220DB000837
38910	147	8220DB001506
38911	147	8220DB001507
38912	147	8220DB001508
38913	147	8220DB001509
38914	147	8220DB001510
38915	147	8220DB001511
38916	147	8220DB001512
38917	147	8220DB001538
38918	147	8220DB004548
38919	147	8220DB000980
38920	147	8220DB000981
38921	147	8220DB001518
38922	147	8220DB001519
38923	147	8220DB001520
38924	147	8220DB007661
38925	147	8220DB001521
38926	147	8220DB004546
38927	147	8220DB001559
38928	147	8220DB001560
38929	147	8220DB001280
38930	147	8240DB006348
38931	147	8240DB001182
38932	147	8240DB001550
38933	147	8240DB001551
38934	147	8240DB001552
38935	147	8240DB001553
38936	147	8240DB007023
38937	147	8240DB007014
38938	147	8240DB004315
38939	148	8220DB006004
38940	148	8220DB000007
38941	148	8220DB000011
38942	148	8220DB000014
38943	148	8220DB000015
38944	148	8220DB000834
38945	148	8220DB000835
38946	148	8220DB000836
38947	148	8220DB000837
38948	148	8220DB001506
38949	148	8220DB001507
38950	148	8220DB001508
38951	148	8220DB001509
38952	148	8220DB001510
38953	148	8220DB001511
38954	148	8220DB001512
38955	148	8220DB001538
38956	148	8220DB004548
38957	148	8220DB001514
38958	148	8220DB000980
38959	148	8220DB000981
38960	148	8220DB001576
38961	148	8220DB001577
38962	148	8220DB001578
38963	148	8220DB004364
38964	148	8240DB001579
38965	148	8240DB001580
38966	148	8240DB007237
38967	148	8240DB007241
38968	148	8240DB007247
38969	148	8240DB007243
38970	148	8240DB007126
38971	148	8240DB007124
38972	148	8240DB007343
38973	148	8240DB007318
38974	148	8240DB004978
38975	148	8240DB004979
38976	148	8240DB004986
38977	148	8240DB007107
38978	148	8240DB007102
38979	148	8240DB007103
38980	148	8240DB007104
38981	148	8240DB007105
38982	148	8240DB007106
38983	148	8240DB006005
38984	148	8240DB001546
38985	149	8220DB006004
38986	149	8220DB000007
38987	149	8220DB000011
38988	149	8220DB000014
38989	149	8220DB000015
38990	149	8220DB000834
38991	149	8220DB000835
38992	149	8220DB000836
38993	149	8220DB000837
38994	149	8220DB001506
38995	149	8220DB001507
38996	149	8220DB001508
38997	149	8220DB001509
38998	149	8220DB001510
38999	149	8220DB001511
39000	149	8220DB001512
39001	149	8220DB001538
39002	149	8220DB004548
39003	149	8220DB001514
39004	149	8220DB000980
39005	149	8220DB000981
39006	149	8220DB001576
39007	149	8220DB001577
39008	149	8220DB001578
39009	149	8220DB004364
39010	149	8240DB001579
39011	149	8240DB001580
39012	149	8240DB007237
39013	149	8240DB007241
39014	149	8240DB007247
39015	149	8240DB007243
39016	149	8240DB007126
39017	149	8240DB007124
39018	149	8240DB007343
39019	149	8240DB004978
39020	149	8240DB004979
39021	149	8240DB004986
39022	149	8240DB007107
39023	149	8240DB007102
39024	149	8240DB007103
39025	149	8240DB007104
39026	149	8240DB007105
39027	149	8240DB007106
39028	149	8240DB006005
39029	149	8240DB001546
39030	150	8220DB007672
39031	150	8220DB000826
39032	150	8220DB000827
39033	150	8220DB000071
39034	150	8220DB000072
39035	150	8220DB005144
39036	150	8220DB007702
39037	150	8220DB007009
39038	150	8220DB001604
39039	150	8220DB001573
39040	150	8220DB001574
39041	150	8220DB001575
39042	150	8220DB004583
39043	150	8220DB001576
39044	150	8220DB001577
39045	150	8220DB001578
39046	150	8220DB004364
39047	150	8240DB001579
39048	150	8240DB007673
39049	150	8240DB007675
39050	150	8240DB007676
39051	150	8240DB007677
39052	150	8240DB007559
39053	150	8240DB007866
39054	150	8240DB007107
39055	150	8240DB007102
39056	150	8240DB007103
39057	150	8240DB007104
39058	150	8240DB007105
39059	150	8240DB007106
39060	150	8240DB006005
39061	151	8240DB007073
39062	151	8240DB007097
39063	151	8240DB007098
39064	151	8240DB007099
39065	151	8240DB007100
39066	151	8240DB007101
39067	151	8240DB007505
39068	151	8240DB007678
39069	151	8240DB007560
39070	151	8240DB007679
39071	151	8240DB007680
39072	151	8240DB007681
39073	151	8240DB007683
39074	151	8240DB001582
39075	151	8220DB004793
39076	151	8220DB006068
39077	151	8220DB001584
39078	151	8220DB001585
39079	151	8220DB001586
39080	151	8220DB001600
39081	151	8220DB007701
39082	151	8220DB007010
39083	151	8220DB007703
39084	151	8220DB005147
39085	151	8220DB000068
39086	151	8220DB000030
39087	151	8220DB000069
39088	152	8240DB004843
39089	152	8240DB004905
39090	152	8240DB004906
39091	152	8240DB004907
39092	152	8240DB004908
39093	152	8240DB004909
39094	152	8240DB003884
39095	152	8240DB003686
39096	152	8240DB005077
39097	152	8240DB005078
39098	152	8240DB003689
39099	152	8240DB003690
39100	152	8240DB006117
39101	152	8240DB005079
39102	152	8240DB003694
39103	152	8240DB003695
39104	152	8240DB003696
39105	152	8240DB003697
39106	152	8240DB003698
39107	152	8240DB003699
39108	152	8240DB003885
39109	152	8240DB003663
39110	152	8240DB007347
39111	152	8240DB003669
39112	152	8240DB007349
39113	152	8240DB001631
39114	152	8240DB001632
39115	152	8240DB005053
39116	152	8240DB001633
39117	152	8240DB001634
39118	152	8240DB001635
39119	152	8240DB001636
39120	152	8240DB001637
39121	152	8240DB001638
39122	152	8240DB001639
39123	152	8240DB001640
39124	152	8240DB000231
39125	152	8220DB001641
39126	152	8220DB001642
39127	152	8220DB000213
39128	152	8220DB000214
39129	152	8220DB004432
39130	152	8220DB000119
39131	152	8220DB000044
39132	152	8220DB007603
39133	152	8220DB000045
39134	152	8220DB000046
39135	152	8220DB000047
39136	152	8220DB000048
39137	152	8220DB000049
39138	152	8220DB000051
39139	152	8220DB000052
39140	152	8220DB000277
39141	153	8220DB000288
39142	153	8220DB001171
39143	153	8220DB001172
39144	153	8220DB001173
39145	153	8220DB001174
39146	153	8220DB001175
39147	153	8220DB000015
39148	153	8220DB000017
39149	153	8220DB000018
39150	153	8220DB000019
39151	153	8220DB000021
39152	153	8220DB007602
39153	153	8220DB000085
39154	153	8220DB000203
39155	153	8220DB000204
39156	153	8220DB000205
39157	153	8220DB001620
39158	153	8220DB000220
39159	153	8240DB001622
39160	153	8240DB001623
39161	153	8240DB001624
39162	153	8240DB001625
39163	153	8240DB001626
39164	153	8240DB001627
39165	153	8240DB001628
39166	153	8240DB001629
39167	153	8240DB001630
39168	153	8240DB007348
39169	153	8240DB003669
39170	153	8240DB003671
39171	153	8240DB003672
39172	153	8240DB003674
39173	153	8240DB003675
39174	153	8240DB003676
39175	153	8240DB005073
39176	153	8240DB005074
39177	153	8240DB006054
39178	153	8240DB004330
39179	153	8240DB003679
39180	153	8240DB005075
39181	153	8240DB005076
39182	153	8240DB003682
39183	153	8240DB003864
39184	153	8240DB003865
39185	153	8240DB004910
39186	153	8240DB004911
39187	153	8240DB004912
39188	153	8240DB004913
39189	153	8240DB004914
39190	153	8240DB004915
39191	154	8220DB000288
39192	154	8220DB001171
39193	154	8220DB001172
39194	154	8220DB001173
39195	154	8220DB001174
39196	154	8220DB001175
39197	154	8220DB000015
39198	154	8220DB000017
39199	154	8220DB000018
39200	154	8220DB000019
39201	154	8220DB000021
39202	154	8220DB007602
39203	154	8220DB000085
39204	154	8220DB000203
39205	154	8220DB000204
39206	154	8220DB000205
39207	154	8220DB001620
39208	154	8220DB000220
39209	154	8240DB001622
39210	154	8240DB001623
39211	154	8240DB001624
39212	154	8240DB001625
39213	154	8240DB001626
39214	154	8240DB001627
39215	154	8240DB001628
39216	154	8240DB001629
39217	154	8240DB001630
39218	154	8240DB003670
39219	154	8240DB003671
39220	154	8240DB003672
39221	154	8240DB003674
39222	154	8240DB003675
39223	154	8240DB005030
39224	154	8240DB005031
39225	154	8240DB006033
39226	154	8240DB003089
39227	154	8240DB003090
39228	154	8240DB003706
39229	154	8240DB003707
39230	154	8240DB003708
39231	154	8240DB003709
39232	154	8240DB003710
39233	154	8240DB004925
39234	154	8240DB004926
39235	154	8240DB003678
39236	154	8240DB003679
39237	154	8240DB005075
39238	154	8240DB005076
39239	154	8240DB003682
39240	154	8240DB003864
39241	154	8240DB003865
39242	154	8240DB007133
39243	154	8240DB007134
39244	154	8240DB003867
39245	154	8240DB007135
39246	154	8240DB007136
39247	155	8220DB000288
39248	155	8220DB001171
39249	155	8220DB001172
39250	155	8220DB001173
39251	155	8220DB001174
39252	155	8220DB001175
39253	155	8220DB000015
39254	155	8220DB000017
39255	155	8220DB000018
39256	155	8220DB000019
39257	155	8220DB000021
39258	155	8220DB007602
39259	155	8220DB000085
39260	155	8220DB000203
39261	155	8220DB000204
39262	155	8220DB000205
39263	155	8220DB001620
39264	155	8220DB000220
39265	155	8240DB001622
39266	155	8240DB001623
39267	155	8240DB001624
39268	155	8240DB001625
39269	155	8240DB001626
39270	155	8240DB001627
39271	155	8240DB001628
39272	155	8240DB001629
39273	155	8240DB001630
39274	155	8240DB003670
39275	155	8240DB003671
39276	155	8240DB003672
39277	155	8240DB003674
39278	155	8240DB003675
39279	155	8240DB003676
39280	155	8240DB005073
39281	155	8240DB005074
39282	155	8240DB006054
39283	155	8240DB004330
39284	155	8240DB003679
39285	155	8240DB005075
39286	155	8240DB005076
39287	155	8240DB003682
39288	155	8240DB003864
39289	155	8240DB003865
39290	155	8240DB007133
39291	155	8240DB007134
39292	155	8240DB003867
39293	155	8240DB007135
39294	155	8240DB007136
39295	156	8220DB000288
39296	156	8220DB001171
39297	156	8220DB001172
39298	156	8220DB001173
39299	156	8220DB001174
39300	156	8220DB001175
39301	156	8220DB000015
39302	156	8220DB000017
39303	156	8220DB000018
39304	156	8220DB000019
39305	156	8220DB000021
39306	156	8220DB007602
39307	156	8220DB000085
39308	156	8220DB000203
39309	156	8220DB000204
39310	156	8220DB000205
39311	156	8220DB001620
39312	156	8220DB000220
39313	156	8240DB001622
39314	156	8240DB001623
39315	156	8240DB001624
39316	156	8240DB001625
39317	156	8240DB001626
39318	156	8240DB001627
39319	156	8240DB001628
39320	156	8240DB001629
39321	156	8240DB001630
39322	156	8240DB003670
39323	156	8240DB003671
39324	156	8240DB003672
39325	156	8240DB003674
39326	156	8240DB003675
39327	156	8240DB005030
39328	156	8240DB005031
39329	156	8240DB006033
39330	156	8240DB003089
39331	156	8240DB003090
39332	156	8240DB003706
39333	156	8240DB003707
39334	156	8240DB003708
39335	156	8240DB003709
39336	156	8240DB003710
39337	156	8240DB004925
39338	156	8240DB004926
39339	156	8240DB003678
39340	156	8240DB003679
39341	156	8240DB003711
39342	156	8240DB003712
39343	156	8240DB004916
39344	156	8240DB004917
39345	156	8240DB004918
39346	156	8240DB004919
39347	156	8240DB004920
39348	156	8240DB004910
39349	156	8240DB004911
39350	156	8240DB004912
39351	156	8240DB004913
39352	156	8240DB004914
39353	156	8240DB004915
39354	157	8240DB004843
39355	157	8240DB004905
39356	157	8240DB004906
39357	157	8240DB004907
39358	157	8240DB004908
39359	157	8240DB004909
39360	157	8240DB004921
39361	157	8240DB004922
39362	157	8240DB004923
39363	157	8240DB004924
39364	157	8240DB004958
39365	157	8240DB003752
39366	157	8240DB003751
39367	157	8240DB003689
39368	157	8240DB003691
39369	157	8240DB003572
39370	157	8240DB003701
39371	157	8240DB003702
39372	157	8240DB003088
39373	157	8240DB003704
39374	157	8240DB003705
39375	157	8240DB000733
39376	157	8240DB006015
39377	157	8240DB005029
39378	157	8240DB005028
39379	157	8240DB003696
39380	157	8240DB003697
39381	157	8240DB003698
39382	157	8240DB003699
39383	157	8240DB003885
39384	157	8240DB001631
39385	157	8240DB001632
39386	157	8240DB005053
39387	157	8240DB001633
39388	157	8240DB001634
39389	157	8240DB001635
39390	157	8240DB001636
39391	157	8240DB001637
39392	157	8240DB001638
39393	157	8240DB001639
39394	157	8240DB001640
39395	157	8240DB000231
39396	157	8220DB001641
39397	157	8220DB001642
39398	157	8220DB000213
39399	157	8220DB000214
39400	157	8220DB004432
39401	157	8220DB000119
39402	157	8220DB000044
39403	157	8220DB007603
39404	157	8220DB000045
39405	157	8220DB000046
39406	157	8220DB000047
39407	157	8220DB000048
39408	157	8220DB000049
39409	157	8220DB000051
39410	157	8220DB000052
39411	157	8220DB000277
39412	158	8220DB000288
39413	158	8220DB001171
39414	158	8220DB001172
39415	158	8220DB001173
39416	158	8220DB001174
39417	158	8220DB001175
39418	158	8220DB000015
39419	158	8220DB000017
39420	158	8220DB000018
39421	158	8220DB000019
39422	158	8220DB000021
39423	158	8220DB007602
39424	158	8220DB000085
39425	158	8220DB000203
39426	158	8220DB000204
39427	158	8220DB000205
39428	158	8220DB001620
39429	158	8220DB000220
39430	158	8240DB001622
39431	158	8240DB001623
39432	158	8240DB001624
39433	158	8240DB001625
39434	158	8240DB001626
39435	158	8240DB001627
39436	158	8240DB001628
39437	158	8240DB001629
39438	158	8240DB001630
39439	158	8240DB003670
39440	158	8240DB003671
39441	158	8240DB003672
39442	158	8240DB003674
39443	158	8240DB003675
39444	158	8240DB003676
39445	158	8240DB005073
39446	158	8240DB005074
39447	159	8240DB005044
39448	159	8240DB007116
39449	159	8240DB005079
39450	159	8240DB003694
39451	159	8240DB003695
39452	159	8240DB003696
39453	159	8240DB003697
39454	159	8240DB003698
39455	159	8240DB003699
39456	159	8240DB003885
39457	159	8240DB001631
39458	159	8240DB001632
39459	159	8240DB005053
39460	159	8240DB001633
39461	159	8240DB001634
39462	159	8240DB001635
39463	159	8240DB001636
39464	159	8240DB001637
39465	159	8240DB001638
39466	159	8240DB001639
39467	159	8240DB001640
39468	159	8240DB000231
39469	159	8220DB001641
39470	159	8220DB001642
39471	159	8220DB000213
39472	159	8220DB000214
39473	159	8220DB004432
39474	159	8220DB000119
39475	159	8220DB000044
39476	159	8220DB007603
39477	159	8220DB000045
39478	159	8220DB000046
39479	159	8220DB000047
39480	159	8220DB000048
39481	159	8220DB000049
39482	159	8220DB000051
39483	159	8220DB000052
39484	159	8220DB000277
39485	160	8250DB004953
39486	160	8250DB000768
39487	160	8220DB000769
39488	160	8220DB000770
39489	160	8220DB000771
39490	160	8220DB000772
39491	160	8220DB000773
39492	160	8220DB000774
39493	160	8220DB000775
39494	160	8220DB000776
39495	160	8220DB000777
39496	160	8220DB000906
39497	160	8220DB000909
39498	160	8220DB000790
39499	160	8220DB007585
39500	160	8220DB007587
39501	160	8220DB000407
39502	160	8220DB002498
39503	160	8220DB002499
39504	160	8220DB002500
39505	160	8220DB002501
39506	160	8220DB007623
39507	160	8240DB005030
39508	160	8240DB005031
39509	160	8240DB006033
39510	160	8240DB003089
39511	160	8240DB003090
39512	160	8240DB003706
39513	160	8240DB003707
39514	160	8240DB003708
39515	160	8240DB003709
39516	160	8240DB003710
39517	160	8240DB004925
39518	160	8240DB003679
39519	160	8240DB005075
39520	160	8240DB005076
39521	160	8240DB003682
39522	160	8240DB003864
39523	160	8240DB003865
39524	160	8240DB004910
39525	160	8240DB004911
39526	160	8240DB004912
39527	160	8240DB004913
39528	160	8240DB004914
39529	160	8240DB004915
39530	161	8240DB007654
39531	161	8240DB004843
39532	161	8240DB004905
39533	161	8240DB004906
39534	161	8240DB004907
39535	161	8240DB004908
39536	161	8240DB004909
39537	161	8240DB004921
39538	161	8240DB004922
39539	161	8240DB004923
39540	161	8240DB004924
39541	161	8240DB004958
39542	161	8240DB003752
39543	161	8240DB003751
39544	161	8240DB007114
39545	161	8240DB007116
39546	161	8240DB003694
39547	161	8240DB003695
39548	161	8240DB007115
39549	161	8240DB006310
39550	161	8240DB006311
39551	161	8220DB004495
39552	161	8220DB002809
39553	161	8220DB002810
39554	161	8220DB000842
39555	161	8220DB000845
39556	161	8220DB000846
39557	161	8220DB000847
39558	161	8220DB000848
39559	161	8220DB002795
39560	161	8220DB000756
39561	161	8220DB000757
39562	161	8220DB000758
39563	161	8220DB000759
39564	161	8220DB000760
39565	161	8220DB000762
39566	161	8220DB000763
39567	162	8220DB001184
39568	162	8220DB000497
39569	162	8220DB000515
39570	162	8220DB000516
39571	162	8220DB004384
39572	162	8220DB000519
39573	162	8220DB000521
39574	162	8220DB000522
39575	162	8220DB000523
39576	162	8220DB000669
39577	162	8220DB000670
39578	162	8220DB000671
39579	162	8220DB000672
39580	162	8220DB004382
39581	162	8220DB001196
39582	162	8220DB001197
39583	162	8220DB001198
39584	162	8220DB001199
39585	162	8220DB001200
39586	162	8220DB004385
39587	162	8220DB001201
39588	162	8220DB001202
39589	162	8220DB001203
39590	162	8220DB006115
39591	162	8220DB001205
39592	162	8240DB001206
39593	162	8240DB001207
39594	162	8240DB001208
39595	162	8240DB001209
39596	162	8240DB001210
39597	162	8240DB001211
39598	162	8240DB003575
39599	162	8240DB003576
39600	162	8240DB003577
39601	162	8240DB003578
39602	162	8240DB003579
39603	162	8240DB003580
39604	162	8240DB003640
39605	162	8240DB003574
39606	162	8240DB003641
39607	162	8240DB003642
39608	162	8240DB003643
39609	162	8240DB003583
39610	162	8240DB003584
39611	162	8240DB003585
39612	162	8240DB003625
39613	162	8240DB003626
39614	162	8240DB003627
39615	162	8240DB003628
39616	162	8240DB006052
39617	162	8240DB003613
39618	162	8240DB003615
39619	163	8240DB003605
39620	163	8240DB003606
39621	163	8240DB003607
39622	163	8240DB006051
39623	163	8240DB006053
39624	163	8240DB007327
39625	163	8240DB003629
39626	163	8240DB003630
39627	163	8240DB003631
39628	163	8240DB003632
39629	163	8240DB003633
39630	163	8240DB003634
39631	163	8240DB003635
39632	163	8240DB003636
39633	163	8240DB000905
39634	163	8240DB004331
39635	163	8240DB004339
39636	163	8240DB007616
39637	163	8240DB005081
39638	163	8240DB005082
39639	163	8240DB003639
39640	163	8240DB003644
39641	163	8240DB003645
39642	163	8240DB003646
39643	163	8240DB003647
39644	163	8240DB003661
39645	163	8240DB003573
39646	163	8240DB003662
39647	163	8240DB001212
39648	163	8240DB001213
39649	163	8240DB001214
39650	163	8240DB001215
39651	163	8240DB001216
39652	163	8240DB001217
39653	163	8220DB004563
39654	163	8220DB001218
39655	163	8220DB001270
39656	163	8220DB001272
39657	163	8220DB001273
39658	163	8220DB001274
39659	163	8220DB001275
39660	163	8220DB001276
39661	163	8220DB001277
39662	163	8220DB001219
39663	163	8220DB001220
39664	163	8220DB001221
39665	163	8220DB000664
39666	163	8220DB000665
39667	163	8220DB000666
39668	163	8220DB000667
39669	163	8220DB000668
39670	163	8220DB000614
39671	163	8220DB000615
39672	163	8220DB000616
39673	163	8220DB000617
39674	163	8220DB000618
39675	163	8220DB000619
39676	163	8220DB000675
39677	164	8240DB004923
39678	164	8240DB004924
39679	164	8240DB004958
39680	164	8240DB003752
39681	164	8240DB003751
39682	164	8240DB003689
39683	164	8240DB003690
39684	164	8240DB006117
39685	164	8240DB003655
39686	164	8240DB005086
39687	164	8240DB003656
39688	164	8240DB003657
39689	164	8240DB003658
39690	164	8240DB003659
39691	164	8240DB003660
39692	164	8240DB003647
39693	164	8240DB003661
39694	164	8240DB003573
39695	164	8240DB003662
39696	164	8240DB001212
39697	164	8240DB001213
39698	164	8240DB001214
39699	164	8240DB001215
39700	164	8240DB001216
39701	164	8240DB001217
39702	164	8220DB004563
39703	164	8220DB001218
39704	164	8220DB001270
39705	164	8220DB001272
39706	164	8220DB001273
39707	164	8220DB001274
39708	164	8220DB001275
39709	164	8220DB001276
39710	164	8220DB001277
39711	164	8220DB001219
39712	164	8220DB001220
39713	164	8220DB001221
39714	164	8220DB000664
39715	164	8220DB000665
39716	164	8220DB000666
39717	164	8220DB000667
39718	164	8220DB000668
39719	164	8220DB000614
39720	164	8220DB000615
39721	164	8220DB000616
39722	164	8220DB000617
39723	164	8220DB000618
39724	164	8220DB000619
39725	164	8220DB000675
39726	165	8240DB005044
39727	165	8240DB004433
39728	165	8240DB003752
39729	165	8240DB003751
39730	165	8240DB003689
39731	165	8240DB003690
39732	165	8240DB006117
39733	165	8240DB003655
39734	165	8240DB005086
39735	165	8240DB003656
39736	165	8240DB003657
39737	165	8240DB003658
39738	165	8240DB007329
39739	165	8240DB003659
39740	165	8240DB003660
39741	165	8240DB003647
39742	165	8240DB003661
39743	165	8240DB003573
39744	165	8240DB003662
39745	165	8240DB001212
39746	165	8240DB001213
39747	165	8240DB001214
39748	165	8240DB001215
39749	165	8240DB001216
39750	165	8240DB001217
39751	165	8220DB004563
39752	165	8220DB001218
39753	165	8220DB001270
39754	165	8220DB001272
39755	165	8220DB001273
39756	165	8220DB001274
39757	165	8220DB001275
39758	165	8220DB001276
39759	165	8220DB001277
39760	165	8220DB001219
39761	165	8220DB001220
39762	165	8220DB001221
39763	165	8220DB000664
39764	165	8220DB000665
39765	165	8220DB000666
39766	165	8220DB000667
39767	165	8220DB000668
39768	165	8220DB000614
39769	165	8220DB000615
39770	165	8220DB000616
39771	165	8220DB000617
39772	165	8220DB000618
39773	165	8220DB000619
39774	165	8220DB000675
39775	166	8220DB007571
39776	166	8220DB000207
39777	166	8220DB000208
39778	166	8220DB000209
39779	166	8220DB000210
39780	166	8220DB000211
39781	166	8220DB000212
39782	166	8220DB000213
39783	166	8220DB000214
39784	166	8220DB004432
39785	166	8220DB000119
39786	166	8220DB000044
39787	166	8220DB007603
39788	166	8220DB000045
39789	166	8220DB000046
39790	166	8220DB000047
39791	166	8220DB000048
39792	166	8220DB000049
39793	166	8220DB000051
39794	166	8220DB000052
39795	166	8220DB000265
39796	166	8220DB000271
39797	166	8220DB000340
39798	166	8220DB000350
39799	166	8220DB002809
39800	166	8220DB002810
39801	166	8220DB002811
39802	166	8220DB001013
39803	166	8220DB001015
39804	166	8220DB002812
39805	166	8220DB002813
39806	166	8220DB002814
39807	166	8220DB000852
39808	166	8220DB000853
39809	166	8220DB000854
39810	166	8220DB000855
39811	166	8220DB002815
39812	166	8220DB002816
39813	166	8220DB002817
39814	166	8250DB002818
39815	166	8250DB002819
39816	166	8250DB002820
39817	166	8250DB002822
39818	166	8250DB002823
39819	166	8250DB005032
39820	166	8250DB002824
39821	166	8250DB002825
39822	166	8250DB007716
39823	166	8250DB007717
39824	166	8250DB002829
39825	166	8250DB002830
39826	166	8250DB002831
39827	166	8250DB002832
39828	166	8250DB002833
39829	166	8250DB007375
39830	166	8250DB003466
39831	166	8250DB003467
39832	166	8250DB003469
39833	166	8250DB003470
39834	166	8250DB003471
39835	166	8250DB003472
39836	166	8250DB003473
39837	166	8250DB003474
39838	166	8250DB003475
39839	166	8250DB003476
39840	166	8250DB003477
39841	166	8250DB003478
39842	166	8250DB003280
39843	166	8250DB003282
39844	166	8250DB003479
39845	166	8250DB004086
39846	166	8250DB004087
39847	166	8250DB004088
39848	166	8350DB004089
39849	166	8350DB004090
39850	166	8350DB004091
39851	166	8350DB006097
39852	166	8350DB004093
39853	166	8350DB004094
39854	166	8350DB004095
39855	167	8350DB007823
39856	167	8350DB007824
39857	167	8350DB004114
39858	167	8350DB004115
39859	167	8350DB004116
39860	167	8350DB004117
39861	167	8350DB004118
39862	167	8350DB004119
39863	167	8350DB004120
39864	167	8250DB004121
39865	167	8250DB004122
39866	167	8250DB004123
39867	167	8250DB003283
39868	167	8250DB003284
39869	167	8250DB003310
39870	167	8250DB003481
39871	167	8250DB003482
39872	167	8250DB003483
39873	167	8250DB003484
39874	167	8250DB003485
39875	167	8250DB003486
39876	167	8250DB003487
39877	167	8250DB003488
39878	167	8250DB003489
39879	167	8250DB003492
39880	167	8250DB002835
39881	167	8250DB007176
39882	167	8250DB002836
39883	167	8250DB002837
39884	167	8250DB002838
39885	167	8250DB002839
39886	167	8250DB002840
39887	167	8250DB002841
39888	167	8250DB002865
39889	167	8250DB002866
39890	167	8250DB002892
39891	167	8250DB002893
39892	167	8250DB002894
39893	167	8250DB002895
39894	167	8250DB002896
39895	167	8250DB002897
39896	167	8220DB002898
39897	167	8220DB003562
39898	167	8220DB002899
39899	167	8220DB000884
39900	167	8220DB000885
39901	167	8220DB000886
39902	167	8220DB000887
39903	167	8220DB002900
39904	167	8220DB002901
39905	167	8220DB002902
39906	167	8220DB002903
39907	167	8220DB001074
39908	167	8220DB006074
39909	167	8220DB000793
39910	167	8220DB000495
39911	167	8220DB000400
39912	167	8220DB000319
39913	167	8220DB000278
39914	167	8220DB000010
39915	167	8220DB000012
39916	167	8220DB000014
39917	167	8220DB000015
39918	167	8220DB000017
39919	167	8220DB000018
39920	167	8220DB000019
39921	167	8220DB000021
39922	167	8220DB007602
39923	167	8220DB000085
39924	167	8220DB000203
39925	167	8220DB000204
39926	167	8220DB000205
39927	167	8220DB000206
39928	167	8220DB000207
39929	167	8220DB000208
39930	167	8220DB000209
39931	167	8220DB000210
39932	167	8220DB001643
39933	168	8250DB006041
39934	168	8250DB007716
39935	168	8250DB007717
39936	168	8250DB002829
39937	168	8250DB002830
39938	168	8250DB002831
39939	168	8250DB002832
39940	168	8250DB002833
39941	168	8250DB006006
39942	168	8250DB003493
39943	168	8250DB003494
39944	168	8250DB003495
39945	168	8250DB003496
39946	168	8250DB003497
39947	168	8250DB003498
39948	168	8250DB003499
39949	168	8250DB003500
39950	168	8250DB003501
39951	168	8250DB003502
39952	168	8250DB003503
39953	168	8250DB003504
39954	168	8250DB003505
39955	168	8250DB003506
39956	168	8250DB003507
39957	168	8250DB003508
39958	168	8250DB003510
39959	168	8250DB003512
39960	169	8250DB003514
39961	169	8250DB003515
39962	169	8250DB003516
39963	169	8250DB003517
39964	169	8250DB003518
39965	169	8250DB003519
39966	169	8250DB003521
39967	169	8250DB003523
39968	169	8250DB003524
39969	169	8250DB003525
39970	169	8250DB003527
39971	169	8250DB003528
39972	169	8250DB003529
39973	169	8250DB003532
39974	169	8250DB003533
39975	169	8250DB003491
39976	169	8250DB006007
39977	169	8250DB002836
39978	169	8250DB002837
39979	169	8250DB002838
39980	169	8250DB002839
39981	169	8250DB002840
39982	169	8250DB002841
39983	169	8250DB002865
39984	169	8250DB002866
39985	170	8250DB002039
39986	170	8250DB002040
39987	170	8250DB002041
39988	170	8250DB002042
39989	170	8250DB002043
39990	170	8250DB002044
39991	170	8250DB002045
39992	170	8250DB002046
39993	170	8250DB004568
39994	170	8250DB004569
39995	170	8250DB004570
39996	170	8250DB002056
39997	170	8250DB002057
39998	170	8250DB002058
39999	170	8250DB002059
40000	170	8250DB002060
40001	170	8250DB002061
40002	170	8250DB002062
40003	170	8250DB002063
40004	170	8250DB002064
40005	170	8250DB002065
40006	170	8250DB004727
40007	170	8250DB004728
40008	170	8250DB000461
40009	170	8250DB002068
40010	170	8250DB002069
40011	170	8250DB002070
40012	170	8250DB002084
40013	170	8250DB000768
40014	170	8220DB000769
40015	170	8220DB000770
40016	170	8220DB000771
40017	170	8220DB000772
40018	170	8220DB000773
40019	170	8220DB000774
40020	170	8220DB000775
40021	170	8220DB000776
40022	170	8220DB000777
40023	170	8220DB000906
40024	170	8220DB000907
40025	170	8220DB000908
40026	170	8220DB000909
40027	170	8220DB000786
40028	170	8220DB000792
40029	170	8220DB000320
40030	170	8220DB000278
40031	170	8220DB000002
40032	170	8220DB000192
40033	170	8220DB000795
40034	170	8220DB000796
40035	170	8220DB000797
40036	170	8220DB000798
40037	170	8220DB000799
40038	170	8220DB000800
40039	170	8220DB000801
40040	170	8220DB000802
40041	170	8220DB000803
40042	170	8220DB000804
40043	170	8220DB007877
40044	170	8220DB007513
40045	171	8220DB000807
40046	171	8220DB000808
40047	171	8220DB000809
40048	171	8220DB000810
40049	171	8220DB000811
40050	171	8220DB000812
40051	171	8220DB000813
40052	171	8220DB000814
40053	171	8220DB000081
40054	171	8220DB000817
40055	171	8220DB000818
40056	171	8220DB000819
40057	171	8220DB000264
40058	171	8220DB006059
40059	171	8220DB000334
40060	171	8220DB000406
40061	171	8220DB000747
40062	171	8220DB000842
40063	171	8220DB000845
40064	171	8220DB000846
40065	171	8220DB000847
40066	171	8220DB000848
40067	171	8220DB002795
40068	171	8220DB000756
40069	171	8220DB000757
40070	171	8220DB000758
40071	171	8220DB000759
40072	171	8220DB000760
40073	171	8220DB000761
40074	171	8220DB000762
40075	171	8220DB000763
40076	171	8250DB002007
40077	171	8250DB002008
40078	171	8250DB002009
40079	171	8250DB002010
40080	171	8250DB000435
40081	171	8250DB007353
40082	171	8250DB004571
40083	171	8250DB002013
40084	171	8250DB002014
40085	171	8250DB004636
40086	171	8250DB002016
40087	171	8250DB002015
40088	171	8250DB002017
40089	171	8250DB002018
40090	171	8250DB002019
40091	171	8250DB002020
40092	171	8250DB002021
40093	171	8250DB002022
40094	171	8250DB004565
40095	171	8250DB004566
40096	171	8250DB004567
40097	171	8250DB002031
40098	171	8250DB002032
40099	171	8250DB002033
40100	171	8250DB002034
40101	171	8250DB002035
40102	171	8250DB002036
40103	172	8250DB003085
40104	172	8250DB003034
40105	172	8250DB003114
40106	172	8250DB004353
40107	172	8250DB004355
40108	172	8250DB004354
40109	172	8250DB003196
40110	172	8250DB003345
40111	172	8250DB004727
40112	172	8250DB004728
40113	172	8250DB000461
40114	172	8250DB002068
40115	172	8250DB002069
40116	172	8250DB002070
40117	172	8250DB002084
40118	172	8250DB000768
40119	172	8220DB000769
40120	172	8220DB000770
40121	172	8220DB000771
40122	172	8220DB000772
40123	172	8220DB000773
40124	172	8220DB000774
40125	172	8220DB000775
40126	172	8220DB000776
40127	172	8220DB000777
40128	172	8220DB000906
40129	172	8220DB000907
40130	172	8220DB000908
40131	172	8220DB000909
40132	172	8220DB000786
40133	172	8220DB000792
40134	172	8220DB000320
40135	172	8220DB000278
40136	172	8220DB000002
40137	172	8220DB004726
40138	172	8220DB007555
40139	173	8250DB005013
40140	173	8250DB005014
40141	173	8250DB007291
40142	173	8250DB003485
40143	173	8250DB003486
40144	173	8250DB003487
40145	173	8250DB007415
40146	173	8250DB007416
40147	173	8250DB007325
40148	173	8250DB004984
40149	173	8250DB000448
40150	173	8250DB003181
40151	173	8250DB000451
40152	173	8250DB000447
40153	173	8250DB005045
40154	173	8250DB004460
40155	173	8250DB000453
40156	173	8250DB004477
40157	173	8250DB003321
40158	173	8250DB002066
40159	173	8250DB002067
40160	173	8250DB004728
40161	173	8250DB000437
40162	173	8250DB000459
40163	173	8250DB002080
40164	173	8250DB002081
40165	173	8250DB002082
40166	173	8250DB002083
40167	173	8250DB002084
40168	173	8250DB000768
40169	173	8220DB002085
40170	173	8220DB002086
40171	173	8220DB004455
40172	173	8220DB000381
40173	173	8220DB007740
40174	173	8220DB007741
40175	173	8220DB000387
40176	173	8220DB000388
40177	173	8220DB000389
40178	173	8220DB000393
40179	173	8220DB000371
40180	173	8220DB000391
40181	173	8220DB000392
40182	173	8220DB000395
40183	173	8220DB000396
40184	173	8220DB000397
40185	173	8220DB000398
40186	173	8220DB000399
40187	173	8220DB000400
40188	174	8220DB007564
40189	174	8220DB000340
40190	174	8220DB000350
40191	174	8220DB000351
40192	174	8220DB000352
40193	174	8220DB000353
40194	174	8220DB000354
40195	174	8220DB000355
40196	174	8220DB000356
40197	174	8220DB000357
40198	174	8220DB000390
40199	174	8220DB000372
40200	174	8220DB000373
40201	174	8220DB000374
40202	174	8220DB007738
40203	174	8220DB007739
40204	174	8220DB002087
40205	174	8220DB007053
40206	174	8220DB002088
40207	174	8220DB002089
40208	174	8220DB000763
40209	174	8250DB002007
40210	174	8250DB002008
40211	174	8250DB002071
40212	174	8250DB002072
40213	174	8250DB002073
40214	174	8250DB002074
40215	174	8250DB002075
40216	174	8250DB002076
40217	174	8250DB000460
40218	174	8250DB002011
40219	174	8250DB002012
40220	174	8250DB003322
40221	174	8250DB003563
40222	174	8250DB000444
40223	174	8250DB000445
40224	174	8250DB004779
40225	174	8250DB007057
40226	174	8250DB005142
40227	174	8250DB007567
40228	174	8250DB007326
40229	174	8250DB007418
40230	174	8250DB007417
40231	174	8250DB003471
40232	174	8250DB003472
40233	174	8250DB003473
40234	174	8250DB005015
40235	174	8250DB007290
40236	175	8230DB002353
40237	175	8230DB002357
40238	175	8230DB002359
40239	175	8230DB007122
40240	175	8230DB007121
40241	175	8230DB007183
40242	175	8230DB004880
40243	175	8230DB002539
40244	175	8230DB002540
40245	175	8230DB002542
40246	175	8230DB003004
40247	175	8230DB004756
40248	175	8230DB003005
40249	175	8230DB004757
40250	175	8230DB004758
40251	175	8230DB006343
40252	175	8230DB004759
40253	175	8230DB004760
40254	175	8230DB002547
40255	175	8230DB002548
40256	175	8230DB000946
40257	175	8230DB001155
40258	175	8230DB001157
40259	175	8230DB001158
40260	175	8220DB001159
40261	175	8220DB001160
40262	175	8220DB001161
40263	175	8220DB001162
40264	175	8220DB001163
40265	175	8220DB001337
40266	175	8220DB001338
40267	175	8220DB001339
40268	175	8220DB001340
40269	175	8220DB001341
40270	175	8220DB001342
40271	175	8220DB001343
40272	175	8220DB001344
40273	175	8220DB001345
40274	175	8220DB001347
40275	175	8220DB002634
40276	175	8220DB002635
40277	175	8220DB002636
40278	175	8220DB005097
40279	175	8220DB002383
40280	175	8220DB002002
40281	175	8220DB001358
40282	175	8220DB005192
40283	176	8230DB004342
40284	176	8230DB004348
40285	176	8230DB007122
40286	176	8230DB007121
40287	176	8230DB007183
40288	176	8230DB004880
40289	176	8230DB002539
40290	176	8230DB002540
40291	176	8230DB002542
40292	176	8230DB003004
40293	176	8230DB004756
40294	176	8230DB003005
40295	176	8230DB004757
40296	176	8230DB004758
40297	176	8230DB006343
40298	176	8230DB004759
40299	176	8230DB004760
40300	176	8230DB002547
40301	176	8230DB002548
40302	176	8230DB000946
40303	176	8230DB001155
40304	176	8230DB001157
40305	176	8230DB001158
40306	176	8220DB001159
40307	176	8220DB001160
40308	176	8220DB001161
40309	176	8220DB001162
40310	176	8220DB001163
40311	176	8220DB001337
40312	176	8220DB001338
40313	176	8220DB001339
40314	176	8220DB001340
40315	176	8220DB001341
40316	176	8220DB001342
40317	176	8220DB001343
40318	176	8220DB001344
40319	176	8220DB001345
40320	176	8220DB001347
40321	176	8220DB002634
40322	176	8220DB002635
40323	176	8220DB002636
40324	176	8220DB005097
40325	176	8220DB002383
40326	176	8220DB002002
40327	176	8220DB001358
40328	176	8220DB005192
40329	177	8220DB007392
40330	177	8220DB001443
40331	177	8220DB001444
40332	177	8220DB001445
40333	177	8220DB004407
40334	177	8220DB002637
40335	177	8220DB002638
40336	177	8220DB002721
40337	177	8220DB007012
40338	177	8230DB002201
40339	177	8230DB004401
40340	177	8230DB002213
40341	177	8230DB004688
40342	177	8230DB004689
40343	177	8230DB004410
40344	177	8230DB002678
40345	177	8230DB002679
40346	177	8230DB002680
40347	177	8230DB004677
40348	177	8230DB002136
40349	177	8230DB002137
40350	177	8230DB007201
40351	177	8230DB002138
40352	177	8230DB002139
40353	177	8230DB002140
40354	177	8230DB002141
40355	177	8230DB002142
40356	177	8230DB002143
40357	177	8230DB002145
40358	177	8230DB004670
40359	177	8230DB003420
40360	177	8230DB003421
40361	177	8230DB003422
40362	177	8230DB004671
40363	177	8230DB004672
40364	177	8230DB003465
40365	177	8230DB004673
40366	177	8230DB002172
40367	177	8230DB004409
40368	177	8230DB004550
40369	177	8230DB004551
40370	177	8230DB001965
40371	178	8230DB004664
40372	178	8230DB002160
40373	178	8230DB004665
40374	178	8230DB004666
40375	178	8230DB004667
40376	178	8230DB004668
40377	178	8230DB003376
40378	178	8230DB003377
40379	178	8230DB003378
40380	178	8230DB003379
40381	178	8230DB004669
40382	178	8230DB002146
40383	178	8230DB002147
40384	178	8230DB002148
40385	178	8230DB002149
40386	178	8230DB002150
40387	178	8230DB002151
40388	178	8230DB002152
40389	178	8230DB002153
40390	178	8230DB002154
40391	178	8230DB006245
40392	178	8230DB006013
40393	178	8230DB006247
40394	178	8230DB002681
40395	178	8230DB004691
40396	178	8230DB004796
40397	178	8230DB004690
40398	178	8230DB004411
40399	178	8230DB002239
40400	178	8230DB002241
40401	178	8230DB002242
40402	178	8220DB007435
40403	178	8220DB002722
40404	178	8220DB004413
40405	178	8220DB001476
40406	178	8220DB007453
40407	178	8220DB001478
40408	178	8220DB001479
40409	178	8220DB000315
40410	178	8220DB004495
40411	178	8220DB002809
40412	178	8220DB002810
40413	178	8220DB002811
40414	178	8220DB000749
40415	178	8220DB000750
40416	178	8220DB000751
40417	178	8220DB000752
40418	178	8220DB000753
40419	178	8220DB000754
40420	179	8220DB000395
40421	179	8220DB000396
40422	179	8220DB000397
40423	179	8220DB000398
40424	179	8220DB000399
40425	179	8220DB007859
40426	179	8220DB007732
40427	179	8220DB007392
40428	179	8220DB000312
40429	179	8220DB007857
40430	179	8220DB007855
40431	179	8220DB004407
40432	179	8220DB002637
40433	179	8220DB002721
40434	179	8220DB007012
40435	179	8230DB002201
40436	179	8230DB007239
40437	179	8230DB004401
40438	179	8230DB002213
40439	179	8230DB002214
40440	179	8230DB002215
40441	179	8230DB002216
40442	179	8230DB004599
40443	179	8230DB007184
40444	179	8230DB007050
40445	179	8230DB007185
40446	179	8230DB007186
40447	179	8230DB007187
40448	179	8260DB003954
40449	179	8260DB003955
40450	179	8260DB003956
40451	179	8260DB003957
40452	179	8260DB003958
40453	179	8260DB003959
40454	179	8260DB003960
40455	179	8260DB006156
40456	179	8260DB006165
40457	179	8260DB006157
40458	179	8260DB006158
40459	179	8260DB007314
40460	179	8260DB007819
40461	180	8260DB007822
40462	180	8260DB003986
40463	180	8260DB007313
40464	180	8260DB006164
40465	180	8260DB007712
40466	180	8260DB006159
40467	180	8260DB006160
40468	180	8260DB006161
40469	180	8260DB003991
40470	180	8260DB07758
40471	180	8260DB003998
40472	180	8260DB003999
40473	180	8260DB004000
40474	180	8230DB004001
40475	180	8230DB007193
40476	180	8230DB007049
40477	180	8230DB002236
40478	180	8230DB005056
40479	180	8230DB002239
40480	180	8230DB002241
40481	180	8230DB002242
40482	180	8220DB007435
40483	180	8220DB002722
40484	180	8220DB004413
40485	180	8220DB001476
40486	180	8220DB007854
40487	180	8220DB007856
40488	180	8220DB007883
40489	180	8220DB000315
40490	180	8220DB000340
40491	180	8220DB007861
40492	180	8220DB000351
40493	180	8220DB000352
40494	180	8220DB000353
40495	181	8220DB004380
40496	181	8220DB001172
40497	181	8220DB007671
40498	181	8220DB000513
40499	181	8220DB004513
40500	181	8220DB000286
40501	181	8220DB000271
40502	181	8220DB000496
40503	181	8220DB000497
40504	181	8220DB000515
40505	181	8220DB000516
40506	181	8220DB004384
40507	181	8220DB000518
40508	181	8220DB002255
40509	181	8220DB002256
40510	181	8220DB002717
40511	181	8220DB002257
40512	181	8220DB002258
40513	181	8220DB002259
40514	181	8220DB002260
40515	181	8220DB002261
40516	181	8220DB004469
40517	181	8220DB002262
40518	181	8220DB002264
40519	181	8220DB007336
40520	181	8220DB007601
40521	182	8220DB004380
40522	182	8220DB000496
40523	182	8220DB000497
40524	182	8220DB000515
40525	182	8220DB000516
40526	182	8220DB004384
40527	182	8220DB000518
40528	182	8220DB002255
40529	182	8220DB002256
40530	182	8220DB002717
40531	182	8220DB002257
40532	182	8220DB002258
40533	182	8220DB002259
40534	182	8220DB002260
40535	182	8220DB002261
40536	182	8220DB004469
40537	182	8220DB002262
40538	182	8220DB002264
40539	182	8220DB007336
40540	182	8220DB007601
40541	183	8220DB000342
40542	183	8220DB001279
40543	183	8220DB001934
40544	183	8220DB002385
40545	183	8220DB002386
40546	183	8220DB002387
40547	183	8220DB002388
40548	183	8220DB001290
40549	183	8220DB001291
40550	183	8220DB002389
40551	183	8220DB002390
40552	183	8220DB002391
40553	183	8220DB002392
40554	183	8220DB002393
40555	183	8220DB002394
40556	183	8220DB002395
40557	183	8220DB002396
40558	183	8220DB002397
40559	183	8220DB002398
40560	183	8230DB002399
40561	183	8230DB002400
40562	183	8230DB002401
40563	183	8230DB002402
40564	183	8230DB002403
40565	183	8230DB001096
40566	183	8230DB001097
40567	183	8230DB001099
40568	183	8230DB006132
40569	183	8230DB002551
40570	183	8230DB002553
40571	183	8230DB002554
40572	183	8230DB002555
40573	183	8230DB002556
40574	183	8230DB002557
40575	183	8230DB004436
40576	183	8230DB005008
40577	183	8230DB004640
40578	183	8230DB007214
40579	183	8230DB004347
40580	183	8230DB002349
40581	183	8230DB002351
40582	183	8230DB002558
40583	183	8230DB006170
40584	183	8230DB005023
40585	184	8230DB005161
40586	184	8230DB005162
40587	184	8230DB002571
40588	184	8230DB002359
40589	184	8230DB002360
40590	184	8230DB004348
40591	184	8230DB004646
40592	184	8230DB004647
40593	184	8230DB004435
40594	184	8230DB002594
40595	184	8230DB002595
40596	184	8230DB002596
40597	184	8230DB002597
40598	184	8230DB002599
40599	184	8230DB004577
40600	184	8230DB004578
40601	184	8230DB001100
40602	184	8230DB000100
40603	184	8230DB001111
40604	184	8230DB002404
40605	184	8230DB002405
40606	184	8230DB002406
40607	184	8230DB002408
40608	184	8220DB002409
40609	184	8220DB002410
40610	184	8220DB002411
40611	184	8220DB002412
40612	184	8220DB002438
40613	184	8220DB002439
40614	184	8220DB002440
40615	184	8220DB002441
40616	184	8220DB002442
40617	184	8220DB002443
40618	184	8220DB002444
40619	184	8220DB001344
40620	184	8220DB001345
40621	184	8220DB001347
40622	184	8220DB002634
40623	184	8220DB002635
40624	184	8220DB002636
40625	184	8220DB002383
40626	184	8220DB002003
40627	184	8220DB001358
40628	185	8230DB004344
40629	185	8230DB002349
40630	185	8230DB002351
40631	185	8230DB002621
40632	185	8230DB002622
40633	185	8230DB002750
40634	185	8230DB002751
40635	185	8230DB002752
40636	185	8230DB007509
40637	185	8230DB002754
40638	185	8230DB002755
40639	185	8230DB002756
40640	185	8230DB002764
40641	185	8230DB007178
40642	185	8230DB002765
40643	185	8230DB002766
40644	185	8230DB002767
40645	185	8230DB002772
40646	185	8230DB002768
40647	185	8230DB002769
40648	185	8230DB002770
40649	185	8230DB002771
40650	185	8230DB002773
40651	185	8220DB002774
40652	185	8220DB002777
40653	185	8220DB002775
40654	185	8220DB002181
40655	185	8220DB002182
40656	185	8220DB002778
40657	185	8220DB002185
40658	185	8220DB007043
40659	185	8220DB001424
40660	185	8220DB002186
40661	185	8220DB002187
40662	185	8220DB002188
40663	185	8220DB002189
40664	185	8220DB001436
40665	185	8220DB003952
40666	185	8220DB002190
40667	185	8220DB004434
40668	185	8220DB002379
40669	185	8220DB002380
40670	185	8220DB002382
40671	185	8220DB005099
40672	185	8220DB002383
40673	185	8220DB002003
40674	185	8220DB001358
40675	185	8220DB000340
40676	185	8220DB000350
40677	185	8220DB000351
40678	185	8220DB000352
40679	185	8220DB000353
40680	186	8220DB000395
40681	186	8220DB000396
40682	186	8220DB000397
40683	186	8220DB000398
40684	186	8220DB000399
40685	186	8220DB000400
40686	186	8220DB004522
40687	186	8220DB001934
40688	186	8220DB002310
40689	186	8220DB002311
40690	186	8220DB002312
40691	186	8220DB002313
40692	186	8220DB002314
40693	186	8220DB002315
40694	186	8220DB002094
40695	186	8220DB001406
40696	186	8220DB001407
40697	186	8220DB001409
40698	186	8220DB002095
40699	186	8220DB002096
40700	186	8220DB002097
40701	186	8220DB002099
40702	186	8220DB002101
40703	186	8220DB002102
40704	186	8220DB002726
40705	186	8220DB002727
40706	186	8220DB002105
40707	186	8220DB002728
40708	186	8220DB002729
40709	186	8220DB002730
40710	186	8230DB006083
40711	186	8230DB002733
40712	186	8230DB002734
40713	186	8230DB005169
40714	186	8230DB002735
40715	186	8230DB002736
40716	186	8230DB002725
40717	186	8230DB002737
40718	186	8230DB002738
40719	186	8230DB002739
40720	186	8230DB007177
40721	186	8230DB002740
40722	186	8230DB002741
40723	186	8230DB002742
40724	186	8230DB002743
40725	186	8230DB002745
40726	186	8230DB002746
40727	186	8230DB002747
40728	186	8230DB002748
40729	186	8230DB007062
40730	186	8230DB006075
40731	186	8230DB002631
40732	186	8230DB002359
40733	186	8230DB002360
40734	187	8220DB007591
40735	187	8220DB000496
40736	187	8220DB000515
40737	187	8220DB000516
40738	187	8220DB004384
40739	187	8220DB000518
40740	187	8220DB000519
40741	187	8220DB000521
40742	187	8220DB000522
40743	187	8220DB000523
40744	187	8220DB000525
40745	187	8220DB000526
40746	187	8220DB000527
40747	187	8220DB000528
40748	187	8220DB000529
40749	187	8220DB000530
40750	187	8220DB000531
40751	187	8220DB000709
40752	187	8220DB000532
40753	187	8220DB000533
40754	187	8220DB000534
40755	187	8220DB000654
40756	187	8220DB007727
40757	187	8220DB007729
40758	187	8220DB007731
40759	187	8220DB000542
40760	187	8240DB000543
40761	187	8240DB000544
40762	187	8240DB000545
40763	187	8240DB000546
40764	187	8240DB000547
40765	187	8240DB000548
40766	187	8240DB000549
40767	187	8240DB000677
40768	187	8240DB000678
40769	187	8240DB000679
40770	187	8240DB000680
40771	187	8240DB000681
40772	187	8240DB000682
40773	187	8240DB000683
40774	187	8240DB000684
40775	187	8240DB000685
40776	187	8240DB000686
40777	187	8240DB000688
40778	187	8240DB000689
40779	187	8240DB000690
40780	187	8240DB000691
40781	187	8240DB000692
40782	187	8240DB000695
40783	187	8240DB000696
40784	187	8240DB000697
40785	187	8240DB000698
40786	187	8240DB000699
40787	187	8240DB000700
40788	187	8240DB000701
40789	187	8240DB000702
40790	187	8240DB000703
40791	187	8240DB000704
40792	187	8240DB000707
40793	187	8240DB000568
40794	187	8240DB000569
40795	187	8240DB000570
40796	187	8240DB000571
40797	187	8240DB000572
40798	187	8240DB000573
40799	187	8240DB000574
40800	187	8240DB000575
40801	187	8240DB000576
40802	187	8240DB000577
40803	188	8240DB000557
40804	188	8240DB000558
40805	188	8240DB000559
40806	188	8240DB000560
40807	188	8240DB000562
40808	188	8240DB000563
40809	188	8240DB000564
40810	188	8240DB000565
40811	188	8240DB000566
40812	188	8240DB000567
40813	188	8240DB000710
40814	188	8240DB000711
40815	188	8240DB000712
40816	188	8240DB000713
40817	188	8240DB000714
40818	188	8240DB000715
40819	188	8240DB000716
40820	188	8240DB000717
40821	188	8240DB000718
40822	188	8240DB000719
40823	188	8240DB000720
40824	188	8240DB000680
40825	188	8240DB000681
40826	188	8240DB000682
40827	188	8240DB000683
40828	188	8240DB000684
40829	188	8240DB000685
40830	188	8240DB000686
40831	188	8240DB000688
40832	188	8240DB000689
40833	188	8240DB000690
40834	188	8240DB000691
40835	188	8240DB000692
40836	188	8240DB000693
40837	188	8240DB000585
40838	188	8240DB000586
40839	188	8240DB000587
40840	188	8240DB000588
40841	188	8240DB000589
40842	188	8240DB000590
40843	188	8220DB000591
40844	188	8220DB000592
40845	188	8220DB007730
40846	188	8220DB007728
40847	188	8220DB007726
40848	188	8220DB000601
40849	188	8220DB000602
40850	188	8220DB000603
40851	188	8220DB000604
40852	188	8220DB000605
40853	188	8220DB000606
40854	188	8220DB000607
40855	188	8220DB000608
40856	188	8220DB000609
40857	188	8220DB000610
40858	188	8220DB000611
40859	188	8220DB000612
40860	188	8220DB000613
40861	188	8220DB000614
40862	188	8220DB000615
40863	188	8220DB000616
40864	188	8220DB000617
40865	188	8220DB000618
40866	188	8220DB000619
40867	188	8220DB000675
40868	188	8220DB000620
40869	188	8220DB007569
40870	189	8230DB002934
40871	189	8230DB002935
40872	189	8230DB002936
40873	189	8230DB002937
40874	189	8230DB002938
40875	189	8230DB007440
40876	189	8230DB002940
40877	189	8230DB002948
40878	189	8230DB002949
40879	189	8230DB002950
40880	189	8230DB002954
40881	189	8230DB007067
40882	189	8230DB002956
40883	189	8230DB002965
40884	189	8230DB002983
40885	189	8230DB002984
40886	189	8230DB007449
40887	189	8230DB002941
40888	189	8230DB002942
40889	189	8230DB002943
40890	189	8230DB002944
40891	189	8230DB002945
40892	189	8230DB002946
40893	189	8230DB002947
40894	189	8230DB001305
40895	189	8250DB001306
40896	189	8250DB001307
40897	189	8250DB001308
40898	189	8250DB001309
40899	189	8250DB001310
40900	189	8250DB001311
40901	189	8250DB001312
40902	189	8250DB001313
40903	189	8250DB001055
40904	189	8250DB002868
40905	189	8250DB002892
40906	189	8250DB002893
40907	189	8250DB002894
40908	189	8250DB002895
40909	189	8250DB002896
40910	189	8250DB002897
40911	189	8220DB002898
40912	189	8220DB003562
40913	189	8220DB002899
40914	189	8220DB000884
40915	189	8220DB000885
40916	189	8220DB000886
40917	189	8220DB000887
40918	189	8220DB002900
40919	189	8220DB002901
40920	189	8220DB002902
40921	189	8220DB002903
40922	189	8220DB001074
40923	189	8220DB006074
40924	189	8220DB000793
40925	189	8220DB000495
40926	189	8220DB000400
40927	190	8220DB000302
40928	190	8220DB000340
40929	190	8220DB000350
40930	190	8220DB002809
40931	190	8220DB002810
40932	190	8220DB002811
40933	190	8220DB001013
40934	190	8220DB001015
40935	190	8220DB002812
40936	190	8220DB002813
40937	190	8220DB002814
40938	190	8220DB000852
40939	190	8220DB000853
40940	190	8220DB000854
40941	190	8220DB000855
40942	190	8220DB002815
40943	190	8220DB002816
40944	190	8220DB002817
40945	190	8250DB002818
40946	190	8250DB002819
40947	190	8250DB002820
40948	190	8250DB002822
40949	190	8250DB002823
40950	190	8250DB005032
40951	190	8250DB002867
40952	190	8250DB001035
40953	190	8250DB001314
40954	190	8250DB001316
40955	190	8250DB001315
40956	190	8250DB001317
40957	190	8250DB001318
40958	190	8250DB001319
40959	190	8250DB001281
40960	190	8230DB001329
40961	190	8230DB001330
40962	190	8230DB002919
40963	190	8230DB002920
40964	190	8230DB002921
40965	190	8230DB002922
40966	190	8230DB002923
40967	190	8230DB002924
40968	190	8230DB002925
40969	190	8230DB002948
40970	190	8230DB002949
40971	190	8230DB002950
40972	190	8230DB002954
40973	190	8230DB002955
40974	190	8230DB007067
40975	190	8230DB002956
40976	190	8230DB002965
40977	190	8230DB002984
40978	190	8230DB002927
40979	190	8230DB002929
40980	190	8230DB002930
40981	190	8230DB007441
40982	191	8350DB007270
40983	191	8350DB007266
40984	191	8350DB007265
40985	191	8350DB007262
40986	191	8350DB007261
40987	191	8350DB007259
40988	191	8350DB007256
40989	191	8350DB007255
40990	191	8350DB007249
40991	191	8350DB007253
40992	191	8350DB007251
40993	191	8350DB004051
40994	191	8350DB004052
40995	191	8350DB004054
40996	191	8350DB004055
40997	191	8350DB004057
40998	191	8350DB004101
40999	191	8350DB004102
41000	191	8350DB004058
41001	191	8350DB004059
41002	191	8350DB004060
41003	191	8350DB004061
41004	191	8350DB004062
41005	191	8350DB004063
41006	191	8350DB004064
41007	191	8350DB004056
41008	191	8350DB004133
41009	191	8350DB004065
41010	191	8350DB004066
41011	191	8350DB004067
41012	191	8350DB004068
41013	191	8230DB004069
41014	191	8230DB004070
41015	191	8230DB004071
41016	191	8230DB004072
41017	191	8230DB004073
41018	191	8230DB002583
41019	191	8230DB002584
41020	191	8230DB002585
41021	191	8230DB002586
41022	191	8230DB002587
41023	191	8230DB002588
41024	191	8230DB002589
41025	191	8230DB002590
41026	191	8230DB002591
41027	191	8230DB002592
41028	191	8230DB002357
41029	191	8230DB002359
41030	191	8230DB002360
41031	191	8230DB004348
41032	191	8230DB004646
41033	191	8230DB004647
41034	191	8230DB002346
41035	191	8230DB004435
41036	191	8230DB002594
41037	191	8230DB002595
41038	191	8230DB002596
41039	191	8230DB002597
41040	191	8230DB002599
41041	191	8230DB002600
41042	191	8230DB001155
41043	191	8230DB001157
41044	191	8230DB001158
41045	191	8220DB001159
41046	191	8220DB001160
41047	191	8220DB001161
41048	191	8220DB001162
41049	191	8220DB001163
41050	191	8220DB001164
41051	191	8220DB001165
41052	191	8220DB001166
41053	191	8220DB001167
41054	191	8220DB001168
41055	191	8220DB001169
41056	191	8220DB001170
41057	191	8220DB001069
41058	191	8220DB001070
41059	191	8220DB001071
41060	191	8220DB004528
41061	191	8220DB001072
41062	191	8220DB001352
41063	191	8220DB001353
41064	191	8220DB001355
41065	191	8220DB001357
41066	191	8220DB001358
41067	192	8260DB007289
41068	192	8260DB007280
41069	192	8260DB007281
41070	192	8260DB007284
41071	192	8260DB007287
41072	192	8350DB007208
41073	192	8350DB007249
41074	192	8350DB007253
41075	192	8350DB007251
41076	192	8350DB004051
41077	192	8350DB004052
41078	192	8350DB004054
41079	192	8350DB004055
41080	192	8350DB004057
41081	192	8350DB004101
41082	192	8350DB004102
41083	192	8350DB004058
41084	192	8350DB004059
41085	192	8350DB004060
41086	192	8350DB004061
41087	192	8350DB004062
41088	192	8350DB004063
41089	192	8350DB004064
41090	192	8350DB004056
41091	192	8350DB004133
41092	192	8350DB004065
41093	192	8350DB004066
41094	192	8350DB004067
41095	192	8350DB004068
41096	192	8230DB004069
41097	192	8230DB004070
41098	192	8230DB004071
41099	192	8230DB004072
41100	192	8230DB004073
41101	192	8230DB002583
41102	192	8230DB002584
41103	192	8230DB002585
41104	192	8230DB002586
41105	192	8230DB002587
41106	192	8230DB002588
41107	192	8230DB002589
41108	192	8230DB002590
41109	192	8230DB002591
41110	192	8230DB002592
41111	192	8230DB002357
41112	192	8230DB002359
41113	192	8230DB002360
41114	192	8230DB004348
41115	192	8230DB004646
41116	192	8230DB004647
41117	192	8230DB002346
41118	192	8230DB004435
41119	192	8230DB002594
41120	192	8230DB002595
41121	192	8230DB002596
41122	192	8230DB002597
41123	192	8230DB002599
41124	192	8230DB002600
41125	192	8230DB001155
41126	192	8230DB001157
41127	192	8230DB001158
41128	192	8220DB001159
41129	192	8220DB001160
41130	192	8220DB001161
41131	192	8220DB001162
41132	192	8220DB001163
41133	192	8220DB001164
41134	192	8220DB001165
41135	192	8220DB001166
41136	192	8220DB001167
41137	192	8220DB001168
41138	192	8220DB001169
41139	192	8220DB001170
41140	192	8220DB001069
41141	192	8220DB001070
41142	192	8220DB001071
41143	192	8220DB004528
41144	192	8220DB001072
41145	192	8220DB001352
41146	192	8220DB001353
41147	192	8220DB001355
41148	192	8220DB001357
41149	192	8220DB001358
41150	193	8220DB007564
41151	193	8220DB004521
41152	193	8220DB001283
41153	193	8220DB004456
41154	193	8220DB001284
41155	193	8220DB001285
41156	193	8220DB001016
41157	193	8220DB001017
41158	193	8220DB001018
41159	193	8220DB001019
41160	193	8220DB001020
41161	193	8220DB001076
41162	193	8220DB001077
41163	193	8220DB001078
41164	193	8220DB001079
41165	193	8220DB001080
41166	193	8220DB001081
41167	193	8220DB001082
41168	193	8220DB001083
41169	193	8220DB001085
41170	193	8220DB001121
41171	193	8220DB001122
41172	193	8220DB001123
41173	193	8220DB001124
41174	193	8230DB001125
41175	193	8230DB001127
41176	193	8230DB001130
41177	193	8230DB002550
41178	193	8230DB002516
41179	193	8230DB002517
41180	193	8230DB002518
41181	193	8230DB004749
41182	193	8230DB004750
41183	193	8230DB003006
41184	193	8230DB004871
41185	193	8230DB004872
41186	193	8230DB004873
41187	193	8230DB004874
41188	193	8230DB002532
41189	193	8230DB004877
41190	193	8230DB004878
41191	193	8230DB007180
41192	193	8230DB007331
41193	193	8230DB002559
41194	193	8230DB002560
41195	193	8230DB002561
41196	193	8230DB002562
41197	193	8230DB002564
41198	193	8230DB004927
41199	193	8230DB004928
41200	193	8230DB002352
41201	193	8230DB002573
41202	193	8230DB002574
41203	193	8230DB002575
41204	193	8230DB004929
41205	193	8230DB007460
41206	193	8230DB004930
41207	193	8230DB004931
41208	194	8230DB004713
41209	194	8230DB004714
41210	194	8230DB004960
41211	194	8230DB004932
41212	194	8230DB004933
41213	194	8230DB002590
41214	194	8230DB002591
41215	194	8230DB002592
41216	194	8230DB002357
41217	194	8230DB002566
41218	194	8230DB002567
41219	194	8230DB002568
41220	194	8230DB002569
41221	194	8230DB007550
41222	194	8230DB002570
41223	194	8230DB007222
41224	194	8230DB006170
41225	194	8230DB007183
41226	194	8230DB004880
41227	194	8230DB002539
41228	194	8230DB002540
41229	194	8230DB004882
41230	194	8230DB004883
41231	194	8230DB004884
41232	194	8230DB004885
41233	194	8230DB006343
41234	194	8230DB004759
41235	194	8230DB004760
41236	194	8230DB002547
41237	194	8230DB002548
41238	194	8230DB002600
41239	194	8230DB001155
41240	194	8230DB001157
41241	194	8230DB001158
41242	194	8220DB001159
41243	194	8220DB001160
41244	194	8220DB001161
41245	194	8220DB001162
41246	194	8220DB001163
41247	194	8220DB001164
41248	194	8220DB001165
41249	194	8220DB001166
41250	194	8220DB001167
41251	194	8220DB001168
41252	194	8220DB001169
41253	194	8220DB001170
41254	194	8220DB001069
41255	194	8220DB001070
41256	194	8220DB001071
41257	194	8220DB004528
41258	194	8220DB001072
41259	194	8220DB001352
41260	194	8220DB001353
41261	194	8220DB001355
41262	194	8220DB001357
41263	194	8220DB001358
41264	195	8220DB004495
41265	195	8220DB001278
41266	195	8220DB001282
41267	195	8220DB004456
41268	195	8220DB001284
41269	195	8220DB001285
41270	195	8220DB001286
41271	195	8220DB001288
41272	195	8220DB001289
41273	195	8220DB001360
41274	195	8220DB001362
41275	195	8220DB001363
41276	195	8220DB001364
41277	195	8220DB001365
41278	195	8220DB001366
41279	195	8220DB001367
41280	195	8220DB001369
41281	195	8220DB001370
41282	195	8220DB001371
41283	195	8220DB001372
41284	195	8220DB001373
41285	195	8220DB001374
41286	195	8220DB001946
41287	195	8220DB001947
41288	195	8220DB001948
41289	195	8220DB001949
41290	195	8220DB001950
41291	195	8220DB001951
41292	195	8220DB001952
41293	195	8220DB001953
41294	195	8220DB001954
41295	195	8220DB001955
41296	195	8220DB001956
41297	195	8230DB001957
41298	195	8230DB001958
41299	195	8230DB001959
41300	195	8230DB001960
41301	195	8230DB004379
41302	195	8230DB007782
41303	195	8230DB001968
41304	195	8230DB001969
41305	195	8230DB001970
41306	195	8230DB001971
41307	195	8230DB002114
41308	195	8230DB002115
41309	195	8230DB006011
41310	195	8230DB002133
41311	195	8230DB006244
41312	195	8230DB002134
41313	195	8230DB003378
41314	195	8230DB003379
41315	195	8230DB004669
41316	195	8230DB002165
41317	195	8230DB002166
41318	195	8230DB002167
41319	195	8230DB003383
41320	195	8230DB003384
41321	195	8230DB003385
41322	195	8230DB003386
41323	195	8230DB003387
41324	195	8230DB004559
41325	195	8230DB003389
41326	195	8230DB003390
41327	195	8230DB006119
41328	195	8230DB003392
41329	195	8230DB003393
41330	195	8230DB003394
41331	195	8230DB003396
41332	195	8230DB003397
41333	195	8230DB003398
41334	195	8230DB003399
41335	195	8230DB006187
41336	195	8230DB006188
41337	195	8230DB006215
41338	196	8230DB006185
41339	196	8230DB006186
41340	196	8230DB006216
41341	196	8230DB003400
41342	196	8230DB003401
41343	196	8230DB003402
41344	196	8230DB003403
41345	196	8230DB003404
41346	196	8230DB003405
41347	196	8230DB003406
41348	196	8230DB003410
41349	196	8230DB003407
41350	196	8230DB003408
41351	196	8230DB003409
41352	196	8230DB004558
41353	196	8230DB003411
41354	196	8230DB003412
41355	196	8230DB003413
41356	196	8230DB003414
41357	196	8230DB003415
41358	196	8230DB003416
41359	196	8230DB003417
41360	196	8230DB003418
41361	196	8230DB003419
41362	196	8230DB003420
41363	196	8230DB003421
41364	196	8230DB003422
41365	196	8230DB003423
41366	196	8230DB002156
41367	196	8230DB006014
41368	196	8230DB002158
41369	196	8230DB002159
41370	196	8230DB004409
41371	196	8230DB002173
41372	196	8230DB002174
41373	196	8230DB003425
41374	196	8230DB002176
41375	196	8230DB002177
41376	196	8230DB002178
41377	196	8230DB007354
41378	196	8230DB001975
41379	196	8230DB001977
41380	196	8230DB001978
41381	196	8230DB001980
41382	196	8220DB001981
41383	196	8220DB001982
41384	196	8220DB004406
41385	196	8220DB001984
41386	196	8220DB001985
41387	196	8220DB001986
41388	196	8220DB001987
41389	196	8220DB001988
41390	196	8220DB001989
41391	196	8220DB001375
41392	196	8220DB001376
41393	196	8220DB001377
41394	196	8220DB001378
41395	196	8220DB001379
41396	196	8220DB001380
41397	196	8220DB001381
41398	196	8220DB001382
41399	196	8220DB001383
41400	196	8220DB001384
41401	196	8220DB001385
41402	196	8220DB001348
41403	196	8220DB001349
41404	196	8220DB001350
41405	196	8220DB001352
41406	196	8220DB001353
41407	196	8220DB001355
41408	196	8220DB001357
41409	196	8220DB001358
41410	197	8220DB004495
41411	197	8220DB001278
41412	197	8220DB001282
41413	197	8220DB004456
41414	197	8220DB001284
41415	197	8220DB001285
41416	197	8220DB001286
41417	197	8220DB001288
41418	197	8220DB001289
41419	197	8220DB001360
41420	197	8220DB001362
41421	197	8220DB001363
41422	197	8220DB001364
41423	197	8220DB001365
41424	197	8220DB001366
41425	197	8220DB001367
41426	197	8220DB001369
41427	197	8220DB001370
41428	197	8220DB001371
41429	197	8220DB001372
41430	197	8220DB001373
41431	197	8220DB001374
41432	198	8220DB001375
41433	198	8220DB001376
41434	198	8220DB001377
41435	198	8220DB001378
41436	198	8220DB001379
41437	198	8220DB001380
41438	198	8220DB001381
41439	198	8220DB001382
41440	198	8220DB001383
41441	198	8220DB001384
41442	198	8220DB001385
41443	198	8220DB001348
41444	198	8220DB001349
41445	198	8220DB001350
41446	198	8220DB001352
41447	198	8220DB001353
41448	198	8220DB001355
41449	198	8220DB001357
41450	198	8220DB001358
41451	199	8230DB004564
41452	199	8230DB003443
41453	199	8230DB003444
41454	199	8230DB003445
41455	199	8230DB003446
41456	199	8230DB003447
41457	199	8230DB003448
41458	199	8230DB003449
41459	199	8230DB003436
41460	199	8230DB007432
41461	199	8230DB003454
41462	199	8230DB003455
41463	199	8230DB003456
41464	199	8230DB003457
41465	199	8230DB003438
41466	199	8230DB005022
41467	199	8230DB006002
41468	199	8230DB005119
41469	199	8230DB005120
41470	199	8230DB005121
41471	199	8230DB005122
41472	199	8230DB003461
41473	199	8230DB004532
41474	199	8230DB004534
41475	199	8230DB004535
41476	199	8230DB002169
41477	199	8230DB002170
41478	199	8230DB004672
41479	199	8230DB003465
41480	199	8230DB004673
41481	199	8230DB002172
41482	199	8230DB002159
41483	199	8230DB004409
41484	199	8230DB001972
41485	199	8230DB001973
41486	199	8230DB001974
41487	199	8230DB007781
41488	199	8230DB001975
41489	199	8230DB001977
41490	199	8230DB001978
41491	199	8230DB001980
41492	199	8220DB001981
41493	199	8220DB004406
41494	199	8220DB001984
41495	199	8220DB001985
41496	199	8220DB001986
41497	199	8220DB001987
41498	199	8220DB001988
41499	199	8220DB002642
41500	199	8220DB007435
41501	199	8220DB002722
41502	199	8220DB001471
41503	199	8220DB001472
41504	199	8220DB004408
41505	199	8220DB001473
41506	199	8220DB001474
41507	199	8220DB001476
41508	199	8220DB007453
41509	199	8220DB001480
41510	199	8220DB002912
41511	199	8220DB001358
41512	200	8220DB004495
41513	200	8220DB004720
41514	200	8220DB001443
41515	200	8220DB001444
41516	200	8220DB001445
41517	200	8220DB007078
41518	200	8220DB001449
41519	200	8220DB001450
41520	200	8220DB001451
41521	200	8220DB001452
41522	200	8220DB002640
41523	200	8220DB002641
41524	200	8220DB001948
41525	200	8220DB001949
41526	200	8220DB001950
41527	200	8220DB001951
41528	200	8220DB001952
41529	200	8220DB001953
41530	200	8220DB001954
41531	200	8220DB001955
41532	200	8220DB001956
41533	200	8230DB001957
41534	200	8230DB001958
41535	200	8230DB001959
41536	200	8230DB001960
41537	200	8230DB004379
41538	200	8230DB007782
41539	200	8230DB001968
41540	200	8230DB001969
41541	200	8230DB001970
41542	200	8230DB001971
41543	200	8230DB002160
41544	200	8230DB002161
41545	200	8230DB004665
41546	200	8230DB004666
41547	200	8230DB004667
41548	200	8230DB002162
41549	200	8230DB002163
41550	200	8230DB002168
41551	200	8230DB004536
41552	200	8230DB006003
41553	200	8230DB005123
41554	200	8230DB005124
41555	200	8230DB005125
41556	200	8230DB006001
41557	200	8230DB004438
41558	200	8230DB003432
41559	200	8230DB003426
41560	200	8230DB003434
41561	200	8230DB003435
41562	200	8230DB003453
41563	200	8230DB003437
41564	200	8230DB003439
41565	200	8230DB003440
41566	200	8230DB004557
41567	200	8230DB003441
41568	200	8230DB004560
41569	201	8220DB004495
41570	201	8220DB004720
41571	201	8220DB001443
41572	201	8220DB001444
41573	201	8220DB001445
41574	201	8220DB004407
41575	201	8220DB002637
41576	201	8220DB001956
41577	201	8230DB002109
41578	201	8230DB003427
41579	201	8230DB003428
41580	201	8230DB003432
41581	201	8230DB003434
41582	201	8230DB003453
41583	201	8230DB003437
41584	201	8230DB003440
41585	201	8230DB003441
41586	201	8230DB004560
41587	202	8230DB004564
41588	202	8230DB003444
41589	202	8230DB003447
41590	202	8230DB003454
41591	202	8230DB003455
41592	202	8230DB005022
41593	202	8230DB003461
41594	202	8230DB004537
41595	202	8230DB002176
41596	202	8220DB001982
41597	202	8220DB007435
41598	202	8220DB004413
41599	202	8220DB001480
41600	202	8220DB001358
41601	203	8250DB007639
41602	203	8250DB007640
41603	203	8250DB005047
41604	203	8250DB003224
41605	203	8250DB003225
41606	203	8250DB003226
41607	203	8250DB003227
41608	203	8250DB003228
41609	203	8250DB003229
41610	203	8250DB007644
41611	203	8250DB007645
41612	203	8250DB007646
41613	203	8250DB003238
41614	203	8250DB003239
41615	203	8250DB003240
41616	203	8250DB003068
41617	203	8250DB003069
41618	203	8250DB003070
41619	203	8250DB002041
41620	203	8250DB003071
41621	203	8250DB003072
41622	203	8250DB003073
41623	203	8250DB003074
41624	203	8250DB003075
41625	203	8250DB003076
41626	203	8250DB003077
41627	203	8250DB003084
41628	203	8250DB000469
41629	203	8250DB000470
41630	203	8250DB000471
41631	203	8250DB000472
41632	203	8250DB000473
41633	203	8250DB004705
41634	203	8250DB000475
41635	203	8220DB000476
41636	203	8220DB000477
41637	203	8220DB000478
41638	203	8220DB000479
41639	203	8220DB000480
41640	203	8220DB000481
41641	203	8220DB000482
41642	203	8220DB000483
41643	203	8220DB000485
41644	203	8220DB000487
41645	203	8220DB000488
41646	203	8220DB000489
41647	203	8220DB000490
41648	203	8220DB000491
41649	203	8220DB000492
41650	203	8220DB000493
41651	203	8220DB000494
41652	203	8220DB000495
41653	203	8220DB000400
41654	203	8220DB000281
41655	203	8220DB000004
41656	204	8220DB001174
41657	204	8220DB004725
41658	204	8220DB000273
41659	204	8220DB000405
41660	204	8220DB000408
41661	204	8220DB000409
41662	204	8220DB000410
41663	204	8220DB000411
41664	204	8220DB000412
41665	204	8220DB000413
41666	204	8220DB000414
41667	204	8220DB000415
41668	204	8220DB000416
41669	204	8220DB000417
41670	204	8220DB000418
41671	204	8220DB000419
41672	204	8220DB000420
41673	204	8220DB000421
41674	204	8220DB000422
41675	204	8220DB000423
41676	204	8220DB000424
41677	204	8250DB000425
41678	204	8250DB000426
41679	204	8250DB000427
41680	204	8250DB000428
41681	204	8250DB000429
41682	204	8250DB003032
41683	204	8250DB003033
41684	204	8250DB003034
41685	204	8250DB003036
41686	204	8250DB003037
41687	204	8250DB003038
41688	204	8250DB003039
41689	204	8250DB003040
41690	204	8250DB003041
41691	204	8250DB003042
41692	204	8250DB002035
41693	204	8250DB002036
41694	204	8250DB002040
41695	204	8250DB003047
41696	204	8250DB003202
41697	204	8250DB003203
41698	204	8250DB003204
41699	204	8250DB007641
41700	204	8250DB007642
41701	204	8250DB007643
41702	204	8250DB003214
41703	204	8250DB003215
41704	204	8250DB003216
41705	204	8250DB003217
41706	204	8250DB003218
41707	204	8250DB003219
41708	204	8250DB003220
41709	204	8250DB005046
41710	205	8310DB003333
41711	205	8310DB003334
41712	205	8310DB003352
41713	205	8310DB003335
41714	205	8310DB003336
41715	205	8310DB003337
41716	205	8310DB003338
41717	205	8310DB003339
41718	205	8240DB003340
41719	205	8240DB004324
41720	205	8240DB004769
41721	205	8240DB004770
41722	205	8240DB004765
41723	205	8240DB004766
41724	205	8240DB004767
41725	205	8240DB004768
41726	205	8240DB001845
41727	205	8240DB007166
41728	205	8220DB001847
41729	205	8220DB001696
41730	205	8220DB001697
41731	205	8220DB001698
41732	205	8220DB001699
41733	205	8220DB001700
41734	205	8220DB001701
41735	205	8220DB001702
41736	205	8220DB001703
41737	205	8220DB001905
41738	205	8220DB001906
41739	205	8220DB001907
41740	205	8220DB001908
41741	205	8220DB001909
41742	205	8220DB001713
41743	205	8220DB001714
41744	205	8220DB001715
41745	205	8220DB007453
41746	205	8220DB001478
41747	205	8220DB001479
41748	205	8220DB000315
41749	205	8220DB000404
41750	205	8220DB000747
41751	205	8220DB000748
41752	205	8220DB000749
41753	205	8220DB000750
41754	205	8220DB000751
41755	205	8220DB000752
41756	205	8220DB000753
41757	205	8220DB007370
41758	206	8220DB007333
41759	206	8220DB000783
41760	206	8220DB000784
41761	206	8220DB000785
41762	206	8220DB000786
41763	206	8220DB000793
41764	206	8220DB007586
41765	206	8220DB007587
41766	206	8220DB007588
41767	206	8220DB000329
41768	206	8220DB001443
41769	206	8220DB001444
41770	206	8220DB001445
41771	206	8220DB001647
41772	206	8220DB001648
41773	206	8220DB001649
41774	206	8220DB001911
41775	206	8220DB001913
41776	206	8220DB001914
41777	206	8220DB001805
41778	206	8220DB001806
41779	206	8220DB001660
41780	206	8220DB001661
41781	206	8220DB001662
41782	206	8220DB001664
41783	206	8220DB001665
41784	206	8220DB001666
41785	206	8220DB001807
41786	206	8240DB007167
41787	206	8240DB001808
41788	206	8240DB007389
41789	206	8240DB004324
41790	206	8240DB004769
41791	206	8240DB004770
41792	206	8240DB004765
41793	206	8240DB004766
41794	206	8240DB004767
41795	206	8240DB004768
41796	206	8240DB004325
41797	206	8310DB003328
41798	206	8310DB003329
41799	206	8310DB003330
41800	206	8310DB003331
41801	206	8310DB003351
41802	206	8310DB003332
41803	207	8220DB000395
41804	207	8220DB000396
41805	207	8220DB000397
41806	207	8220DB000398
41807	207	8220DB000399
41808	207	8220DB000400
41809	207	8220DB004522
41810	207	8220DB001934
41811	207	8220DB002310
41812	207	8220DB002311
41813	207	8220DB002312
41814	207	8220DB002313
41815	207	8220DB002314
41816	207	8220DB002315
41817	207	8220DB002094
41818	207	8220DB001406
41819	207	8220DB001407
41820	207	8220DB001409
41821	207	8220DB002095
41822	207	8220DB002096
41823	207	8220DB002097
41824	207	8220DB002099
41825	207	8220DB002101
41826	207	8220DB002102
41827	207	8220DB002103
41828	207	8220DB002332
41829	207	8220DB002333
41830	207	8230DB002334
41831	207	8230DB004662
41832	207	8230DB002335
41833	207	8230DB002336
41834	207	8230DB002337
41835	207	8230DB002339
41836	207	8230DB002420
41837	207	8230DB002421
41838	207	8230DB002423
41839	207	8230DB002424
41840	207	8230DB002447
41841	207	8230DB005133
41842	207	8230DB002596
41843	207	8230DB002611
41844	207	8230DB002602
41845	207	8230DB002613
41846	207	8230DB002614
41847	207	8230DB002615
41848	207	8230DB002535
41849	207	8230DB002536
41850	207	8230DB002616
41851	207	8230DB002617
41852	207	8230DB002557
41853	207	8230DB004436
41854	207	8230DB005008
41855	207	8230DB004640
41856	207	8230DB004347
41857	207	8230DB002349
41858	207	8230DB002351
41859	207	8230DB002558
41860	207	8230DB002559
41861	207	8230DB002560
41862	207	8230DB002561
41863	207	8230DB002562
41864	207	8230DB002564
41865	207	8230DB004927
41866	207	8230DB004928
41867	207	8230DB002352
41868	207	8230DB002573
41869	207	8230DB002574
41870	207	8230DB002575
41871	207	8230DB004929
41872	207	8230DB007460
41873	207	8230DB004930
41874	207	8230DB004931
41875	208	8230DB004713
41876	208	8230DB004714
41877	208	8230DB004960
41878	208	8230DB004932
41879	208	8230DB004933
41880	208	8230DB002590
41881	208	8230DB002591
41882	208	8230DB002592
41883	208	8230DB002357
41884	208	8230DB002566
41885	208	8230DB002567
41886	208	8230DB002568
41887	208	8230DB002569
41888	208	8230DB007550
41889	208	8230DB002570
41890	208	8230DB002571
41891	208	8230DB002359
41892	208	8230DB002360
41893	208	8230DB004348
41894	208	8230DB004646
41895	208	8230DB004647
41896	208	8230DB002346
41897	208	8230DB004435
41898	208	8230DB002604
41899	208	8230DB002605
41900	208	8230DB002538
41901	208	8230DB002606
41902	208	8230DB002607
41903	208	8230DB002608
41904	208	8230DB002609
41905	208	8230DB002610
41906	208	8230DB002554
41907	208	8230DB002425
41908	208	8230DB002426
41909	208	8230DB002427
41910	208	8230DB002428
41911	208	8230DB002429
41912	208	8230DB002430
41913	208	8230DB002371
41914	208	8230DB002372
41915	208	8230DB002373
41916	208	8230DB002377
41917	208	8220DB002378
41918	208	8220DB002183
41919	208	8220DB002184
41920	208	8220DB002185
41921	208	8220DB007043
41922	208	8220DB001424
41923	208	8220DB002186
41924	208	8220DB002187
41925	208	8220DB002188
41926	208	8220DB002189
41927	208	8220DB001436
41928	208	8220DB003952
41929	208	8220DB002190
41930	208	8220DB004434
41931	208	8220DB002379
41932	208	8220DB002380
41933	208	8220DB002382
41934	208	8220DB005099
41935	208	8220DB002383
41936	208	8220DB002002
41937	208	8220DB001358
41938	208	8220DB000340
41939	208	8220DB000350
41940	208	8220DB000351
41941	208	8220DB000352
41942	208	8220DB000353
41943	209	8230DB004713
41944	209	8230DB004714
41945	209	8230DB004960
41946	209	8230DB004932
41947	209	8230DB004933
41948	209	8230DB002590
41949	209	8230DB002591
41950	209	8230DB002592
41951	209	8230DB002357
41952	209	8230DB002566
41953	209	8230DB002567
41954	209	8230DB002568
41955	209	8230DB002569
41956	209	8230DB002570
41957	209	8230DB007222
41958	209	8230DB006170
41959	209	8230DB005023
41960	209	8230DB005024
41961	209	8230DB005161
41962	209	8230DB005162
41963	209	8230DB004880
41964	209	8230DB002606
41965	209	8230DB002607
41966	209	8230DB002608
41967	209	8230DB002609
41968	209	8230DB002610
41969	209	8230DB002554
41970	209	8230DB002425
41971	209	8230DB002426
41972	209	8230DB002427
41973	209	8230DB002428
41974	209	8230DB002429
41975	209	8230DB002430
41976	209	8230DB002371
41977	209	8230DB002372
41978	209	8230DB002373
41979	209	8220DB001424
41980	209	8220DB002190
41981	209	8220DB004434
41982	209	8220DB002379
41983	209	8220DB002380
41984	209	8220DB002382
41985	209	8220DB005099
41986	209	8220DB002383
41987	209	8220DB002002
41988	209	8220DB001358
41989	209	8220DB005192
41990	209	8220DB000350
41991	209	8220DB002809
41992	209	8220DB002810
41993	209	8220DB000750
41994	209	8220DB000751
41995	209	8220DB000752
41996	209	8220DB000753
41997	209	8220DB000754
41998	209	8220DB000755
41999	209	8220DB000756
42000	209	8220DB000757
42001	209	8220DB000758
42002	209	8220DB000759
42003	209	8220DB000760
42004	209	8220DB000761
42005	209	8220DB000762
42006	209	8220DB000763
42007	210	8220DB000326
42008	210	8220DB001443
42009	210	8220DB001444
42010	210	8220DB001445
42011	210	8220DB004407
42012	210	8220DB002637
42013	210	8220DB002638
42014	210	8220DB002640
42015	210	8220DB002641
42016	210	8220DB002643
42017	210	8220DB002644
42018	210	8220DB002645
42019	210	8220DB002646
42020	210	8220DB002647
42021	210	8220DB002648
42022	210	8220DB002649
42023	210	8220DB002650
42024	210	8220DB002652
42025	210	8220DB002653
42026	210	8220DB002654
42027	210	8220DB002655
42028	210	8220DB002656
42029	210	8220DB002657
42030	210	8220DB002658
42031	210	8220DB002659
42032	210	8220DB002660
42033	210	8220DB002661
42034	210	8220DB002662
42035	210	8220DB002909
42036	210	8220DB002906
42037	210	8220DB002907
42038	211	8220DB002670
42039	211	8220DB002910
42040	211	8220DB002911
42041	211	8220DB007507
42042	211	8220DB002663
42043	211	8220DB002664
42044	211	8220DB002665
42045	211	8220DB002666
42046	211	8220DB002667
42047	211	8220DB002696
42048	211	8220DB002697
42049	211	8220DB002700
42050	211	8220DB002701
42051	211	8220DB002702
42052	211	8220DB002703
42053	211	8220DB002704
42054	211	8220DB002706
42055	211	8220DB006070
42056	211	8220DB002708
42057	211	8220DB005134
42058	211	8220DB002718
42059	211	8220DB002719
42060	211	8220DB007435
42061	211	8220DB002722
42062	211	8220DB004413
42063	211	8220DB001476
42064	211	8220DB007453
42065	211	8220DB001480
42066	211	8220DB002912
42067	211	8220DB001358
42068	212	8220DB000326
42069	212	8220DB001443
42070	212	8220DB001444
42071	212	8220DB001445
42072	212	8220DB004407
42073	212	8220DB002637
42074	212	8220DB002638
42075	212	8220DB002721
42076	212	8220DB007012
42077	212	8220DB002644
42078	212	8220DB002645
42079	212	8220DB002646
42080	212	8220DB002647
42081	212	8220DB002648
42082	212	8220DB002649
42083	212	8220DB002650
42084	212	8220DB002652
42085	212	8220DB002653
42086	212	8220DB002654
42087	212	8220DB002655
42088	212	8220DB002656
42089	212	8220DB002657
42090	212	8220DB002658
42091	212	8220DB002659
42092	212	8220DB002660
42093	212	8220DB002661
42094	212	8220DB002662
42095	212	8220DB002909
42096	212	8220DB006020
42097	212	8220DB006023
42098	212	8220DB006026
42099	212	8220DB006027
42100	213	8220DB006030
42101	213	8220DB006028
42102	213	8220DB006025
42103	213	8220DB006024
42104	213	8220DB006021
42105	213	8220DB007507
42106	213	8220DB002663
42107	213	8220DB002664
42108	213	8220DB002665
42109	213	8220DB002666
42110	213	8220DB002667
42111	213	8220DB002696
42112	213	8220DB002697
42113	213	8220DB002700
42114	213	8220DB002701
42115	213	8220DB002702
42116	213	8220DB002703
42117	213	8220DB002704
42118	213	8220DB002706
42119	213	8220DB006070
42120	213	8220DB002708
42121	213	8220DB005134
42122	213	8220DB002718
42123	213	8220DB007435
42124	213	8220DB002722
42125	213	8220DB004413
42126	213	8220DB001476
42127	213	8220DB007453
42128	213	8220DB001480
42129	213	8220DB002912
42130	213	8220DB001358
42131	214	8250DB003222
42132	214	8250DB003223
42133	214	8250DB003224
42134	214	8250DB003225
42135	214	8250DB003226
42136	214	8250DB003227
42137	214	8250DB003228
42138	214	8250DB003229
42139	214	8250DB007472
42140	214	8250DB003230
42141	214	8250DB003232
42142	214	8250DB003233
42143	214	8250DB003234
42144	214	8250DB004462
42145	214	8250DB003235
42146	214	8250DB003236
42147	214	8250DB003237
42148	214	8250DB003238
42149	214	8250DB003239
42150	214	8250DB003240
42151	214	8250DB003068
42152	214	8250DB003069
42153	214	8250DB003070
42154	214	8250DB002041
42155	214	8250DB003071
42156	214	8250DB003072
42157	214	8250DB003073
42158	214	8250DB003074
42159	214	8250DB003075
42160	214	8250DB003076
42161	214	8250DB003077
42162	214	8250DB003079
42163	214	8250DB003080
42164	214	8250DB003081
42165	214	8250DB003084
42166	214	8250DB000469
42167	214	8250DB000470
42168	214	8250DB000471
42169	214	8250DB000472
42170	214	8250DB000473
42171	214	8250DB004705
42172	214	8250DB000475
42173	214	8220DB000476
42174	214	8220DB000477
42175	214	8220DB000478
42176	214	8220DB000479
42177	214	8220DB000480
42178	214	8220DB000481
42179	214	8220DB000482
42180	214	8220DB000483
42181	214	8220DB000485
42182	214	8220DB000487
42183	214	8220DB000488
42184	214	8220DB000489
42185	214	8220DB000490
42186	214	8220DB000491
42187	214	8220DB000492
42188	214	8220DB000493
42189	214	8220DB000494
42190	214	8220DB000495
42191	214	8220DB000400
42192	214	8220DB000281
42193	214	8220DB000004
42194	215	8250DB003222
42195	215	8250DB003223
42196	215	8250DB003224
42197	215	8250DB003225
42198	215	8250DB003226
42199	215	8250DB003227
42200	215	8250DB003228
42201	215	8250DB003229
42202	215	8250DB007472
42203	215	8250DB003230
42204	215	8250DB003232
42205	215	8250DB003233
42206	215	8250DB003234
42207	215	8250DB004462
42208	215	8250DB003235
42209	215	8250DB003236
42210	215	8250DB003237
42211	215	8250DB003238
42212	215	8250DB003239
42213	215	8250DB003240
42214	215	8250DB003068
42215	215	8250DB003069
42216	215	8250DB003070
42217	215	8250DB002041
42218	215	8250DB003071
42219	215	8250DB003072
42220	215	8250DB003073
42221	215	8250DB003074
42222	215	8250DB003075
42223	215	8250DB003076
42224	215	8250DB003077
42225	215	8250DB003079
42226	215	8250DB003080
42227	215	8250DB003081
42228	215	8250DB003084
42229	215	8250DB000469
42230	215	8250DB000470
42231	215	8250DB000471
42232	215	8250DB000472
42233	215	8250DB000473
42234	215	8250DB004705
42235	215	8250DB000475
42236	215	8220DB000476
42237	215	8220DB000477
42238	215	8220DB000478
42239	215	8220DB000479
42240	215	8220DB000480
42241	215	8220DB000481
42242	215	8220DB000482
42243	215	8220DB000483
42244	215	8220DB000485
42245	215	8220DB000487
42246	215	8220DB000488
42247	215	8220DB000489
42248	215	8220DB000490
42249	215	8220DB000491
42250	215	8220DB000492
42251	215	8220DB000493
42252	215	8220DB000494
42253	215	8220DB000495
42254	215	8220DB000400
42255	215	8220DB000281
42256	216	8220DB004962
42257	216	8220DB006059
42258	216	8220DB000334
42259	216	8220DB000406
42260	216	8220DB000747
42261	216	8220DB000842
42262	216	8220DB000845
42263	216	8220DB000846
42264	216	8220DB000847
42265	216	8220DB000848
42266	216	8220DB002795
42267	216	8220DB000756
42268	216	8220DB000757
42269	216	8220DB000758
42270	216	8220DB000759
42271	216	8220DB000760
42272	216	8220DB000761
42273	216	8220DB000762
42274	216	8220DB000763
42275	216	8250DB002007
42276	216	8250DB002008
42277	216	8250DB002009
42278	216	8250DB002010
42279	216	8250DB000435
42280	216	8250DB007353
42281	216	8250DB007584
42282	216	8250DB003344
42283	216	8250DB007421
42284	216	8250DB007422
42285	216	8250DB006085
42286	216	8250DB002053
42287	216	8250DB002054
42288	216	8250DB002055
42289	216	8250DB004732
42290	216	8250DB003243
42291	216	8250DB003244
42292	216	8250DB003245
42293	216	8250DB003212
42294	216	8250DB003213
42295	216	8250DB003214
42296	216	8250DB003215
42297	216	8250DB003216
42298	216	8250DB003217
42299	216	8250DB003218
42300	216	8250DB003219
42301	216	8250DB003537
42302	216	8250DB003538
42303	216	8250DB007556
42304	216	8250DB003539
42305	216	8250DB003540
42306	216	8250DB003541
42307	216	8250DB003542
42308	217	8250DB003544
42309	217	8250DB003552
42310	217	8250DB003553
42311	217	8250DB003554
42312	217	8250DB003555
42313	217	8250DB003556
42314	217	8250DB003557
42315	217	8250DB007317
42316	217	8250DB003224
42317	217	8250DB003225
42318	217	8250DB003226
42319	217	8250DB003227
42320	217	8250DB003228
42321	217	8250DB003229
42322	217	8250DB007472
42323	217	8250DB003230
42324	217	8250DB003231
42325	217	8250DB003246
42326	217	8250DB003247
42327	217	8250DB007056
42328	217	8250DB004731
42329	217	8250DB002023
42330	217	8250DB002024
42331	217	8250DB002025
42332	217	8250DB006086
42333	217	8250DB007419
42334	217	8250DB007420
42335	217	8250DB003345
42336	217	8250DB004727
42337	217	8250DB004728
42338	217	8250DB000461
42339	217	8250DB002068
42340	217	8250DB002069
42341	217	8250DB002070
42342	217	8250DB002084
42343	217	8250DB000768
42344	217	8220DB000769
42345	217	8220DB000770
42346	217	8220DB000771
42347	217	8220DB000772
42348	217	8220DB000773
42349	217	8220DB000774
42350	217	8220DB000775
42351	217	8220DB000776
42352	217	8220DB000777
42353	217	8220DB000906
42354	217	8220DB000907
42355	217	8220DB000908
42356	217	8220DB000909
42357	217	8220DB000786
42358	217	8220DB000792
42359	217	8220DB007586
42360	217	8220DB007587
42361	217	8220DB000345
42362	217	8220DB000320
42363	217	8220DB000281
42364	217	8220DB000004
42365	218	8250DB003057
42366	218	8250DB004830
42367	218	8250DB007667
42368	218	8250DB003091
42369	218	8250DB003092
42370	218	8250DB003093
42371	218	8250DB003535
42372	218	8250DB003536
42373	218	8250DB003537
42374	218	8250DB003538
42375	218	8250DB007556
42376	218	8250DB003539
42377	218	8250DB003540
42378	218	8250DB003541
42379	218	8250DB003542
42380	218	8250DB003543
42381	218	8250DB003141
42382	218	8250DB003142
42383	218	8250DB003224
42384	218	8250DB003225
42385	218	8250DB003226
42386	218	8250DB003227
42387	218	8250DB003228
42388	218	8250DB003229
42389	218	8250DB007472
42390	218	8250DB003230
42391	218	8250DB003232
42392	218	8250DB003233
42393	218	8250DB003234
42394	218	8250DB004462
42395	218	8250DB003235
42396	218	8250DB003236
42397	218	8250DB003237
42398	218	8250DB003238
42399	218	8250DB003239
42400	218	8250DB003240
42401	218	8250DB003068
42402	218	8250DB003069
42403	218	8250DB003070
42404	218	8250DB002041
42405	218	8250DB003071
42406	218	8250DB003072
42407	218	8250DB003073
42408	218	8250DB003074
42409	218	8250DB003075
42410	218	8250DB003076
42411	218	8250DB003077
42412	218	8250DB003084
42413	218	8250DB000469
42414	218	8250DB000470
42415	218	8250DB000471
42416	218	8250DB000472
42417	218	8250DB000473
42418	218	8250DB004705
42419	218	8250DB000475
42420	218	8220DB000476
42421	218	8220DB000477
42422	218	8220DB000478
42423	218	8220DB007053
42424	218	8220DB002088
42425	218	8220DB002089
42426	218	8220DB000770
42427	218	8220DB000771
42428	218	8220DB000772
42429	218	8220DB000417
42430	218	8220DB000485
42431	218	8220DB000487
42432	218	8220DB000488
42433	218	8220DB000489
42434	218	8220DB000490
42435	218	8220DB000491
42436	218	8220DB000492
42437	218	8220DB000493
42438	218	8220DB000494
42439	218	8220DB000495
42440	218	8220DB007587
42441	218	8220DB000345
42442	218	8220DB000320
42443	218	8220DB000281
42444	218	8220DB000004
42445	219	8250DB003057
42446	219	8250DB003059
42447	219	8250DB003060
42448	219	8250DB003061
42449	219	8250DB003062
42450	219	8250DB003063
42451	219	8250DB003064
42452	219	8250DB003065
42453	219	8250DB003066
42454	219	8250DB003067
42455	219	8250DB003202
42456	219	8250DB003203
42457	219	8250DB003204
42458	219	8250DB007554
42459	219	8250DB004568
42460	219	8250DB004569
42461	219	8250DB002023
42462	219	8250DB002024
42463	219	8250DB002025
42464	219	8250DB006086
42465	219	8250DB007419
42466	219	8250DB007420
42467	219	8250DB003345
42468	219	8250DB004727
42469	219	8250DB004728
42470	219	8250DB000461
42471	219	8250DB002068
42472	219	8250DB002069
42473	219	8250DB002070
42474	219	8250DB002084
42475	219	8250DB000768
42476	219	8220DB000769
42477	219	8220DB000770
42478	219	8220DB000771
42479	219	8220DB000772
42480	219	8220DB000773
42481	219	8220DB000774
42482	219	8220DB000775
42483	219	8220DB000776
42484	219	8220DB000777
42485	219	8220DB000906
42486	219	8220DB000907
42487	219	8220DB000908
42488	219	8220DB000909
42489	219	8220DB000786
42490	219	8220DB000792
42491	219	8220DB007586
42492	219	8220DB007587
42493	219	8220DB000345
42494	219	8220DB000320
42495	219	8220DB000281
42496	219	8220DB000004
42497	219	8220DB007555
42498	220	8220DB002492
42499	220	8220DB002493
42500	220	8220DB002465
42501	220	8220DB002466
42502	220	8220DB002467
42503	220	8220DB002494
42504	220	8220DB002495
42505	220	8220DB002496
42506	220	8220DB002497
42507	220	8220DB002471
42508	220	8220DB002472
42509	220	8220DB002473
42510	220	8220DB002474
42511	220	8220DB002475
42512	220	8220DB002476
42513	220	8220DB002477
42514	220	8220DB002478
42515	220	8220DB001170
42516	220	8220DB001069
42517	220	8220DB001070
42518	220	8220DB001071
42519	220	8220DB004528
42520	220	8220DB001072
42521	220	8220DB001352
42522	220	8220DB001353
42523	220	8220DB001355
42524	220	8220DB001357
42525	220	8220DB001359
42526	220	8220DB000319
42527	220	8220DB001443
42528	220	8220DB001616
42529	220	8220DB001617
42530	220	8220DB001618
42531	220	8220DB001619
42532	220	8220DB000195
42533	220	8220DB000196
42534	220	8220DB000197
42535	220	8220DB000198
42536	220	8220DB000199
42537	220	8220DB000200
42538	220	8220DB000201
42539	220	8220DB000202
42540	220	8220DB000151
42541	220	8220DB000153
42542	220	8220DB000154
42543	220	8220DB000155
42544	220	8220DB000156
42545	220	8220DB007430
42546	220	8220DB000177
42547	220	8220DB000178
42548	220	8220DB001539
42549	220	8220DB001540
42550	220	8220DB007426
42551	220	8220DB007427
42552	220	8220DB007428
42553	220	8220DB000138
42554	220	8220DB000133
42555	220	8220DB000134
42556	220	8220DB004890
42557	220	8220DB004369
42558	220	8240DB006219
42559	220	8240DB006229
42560	220	8240DB006348
42561	220	8240DB001182
42562	220	8240DB001550
42563	220	8240DB001551
42564	220	8240DB001552
42565	221	8240DB000324
42566	221	8240DB001555
42567	221	8240DB001556
42568	221	8240DB001557
42569	221	8240DB001181
42570	221	8240DB007350
42571	221	8240DB006230
42572	221	8240DB006228
42573	221	8220DB004788
42574	221	8220DB006273
42575	221	8220DB004891
42576	221	8220DB007458
42577	221	8220DB007425
42578	221	8220DB007424
42579	221	8220DB007423
42580	221	8220DB001566
42581	221	8220DB001567
42582	221	8220DB004372
42583	221	8220DB000179
42584	221	8220DB007431
42585	221	8220DB000175
42586	221	8220DB000176
42587	221	8220DB000181
42588	221	8220DB000182
42589	221	8220DB000183
42590	221	8220DB000184
42591	221	8220DB000185
42592	221	8220DB000186
42593	221	8220DB000187
42594	221	8220DB000188
42595	221	8220DB000189
42596	221	8220DB000190
42597	221	8220DB001614
42598	221	8220DB001615
42599	221	8220DB001478
42600	221	8220DB001479
42601	221	8220DB000315
42602	221	8220DB000336
42603	221	8220DB001279
42604	221	8220DB001283
42605	221	8220DB004456
42606	221	8220DB001284
42607	221	8220DB001285
42608	221	8220DB001016
42609	221	8220DB001017
42610	221	8220DB001018
42611	221	8220DB001019
42612	221	8220DB001020
42613	221	8220DB001076
42614	221	8220DB001077
42615	221	8220DB002479
42616	221	8220DB002480
42617	221	8220DB002481
42618	221	8220DB002482
42619	221	8220DB002483
42620	221	8220DB002484
42621	221	8220DB002485
42622	221	8220DB002486
42623	221	8220DB002487
42624	221	8220DB002488
42625	221	8220DB002489
42626	221	8220DB002448
42627	221	8220DB005026
42628	221	8220DB002450
42629	221	8220DB002490
42630	221	8220DB002491
42631	222	8220DB002492
42632	222	8220DB002493
42633	222	8220DB002465
42634	222	8220DB002466
42635	222	8220DB002467
42636	222	8220DB002494
42637	222	8220DB002495
42638	222	8220DB002496
42639	222	8220DB002497
42640	222	8220DB002471
42641	222	8220DB002472
42642	222	8220DB002473
42643	222	8220DB002474
42644	222	8220DB002475
42645	222	8220DB002476
42646	222	8220DB002477
42647	222	8220DB002478
42648	222	8220DB001170
42649	222	8220DB001069
42650	222	8220DB001070
42651	222	8220DB001071
42652	222	8220DB004528
42653	222	8220DB001072
42654	222	8220DB001352
42655	222	8220DB001353
42656	222	8220DB001355
42657	222	8220DB001357
42658	222	8220DB001359
42659	222	8220DB000319
42660	222	8220DB001443
42661	222	8220DB001616
42662	222	8220DB001617
42663	222	8220DB001618
42664	222	8220DB001619
42665	222	8220DB000195
42666	222	8220DB000196
42667	222	8220DB000197
42668	222	8220DB000198
42669	222	8220DB000199
42670	222	8220DB000200
42671	222	8220DB000201
42672	222	8220DB000202
42673	222	8220DB000151
42674	222	8220DB000153
42675	222	8220DB000154
42676	222	8220DB000155
42677	222	8220DB000156
42678	222	8220DB000157
42679	222	8220DB000158
42680	222	8220DB000159
42681	222	8220DB001539
42682	222	8220DB001540
42683	222	8220DB007426
42684	222	8220DB007427
42685	222	8220DB007428
42686	222	8220DB000138
42687	222	8220DB000133
42688	222	8220DB000134
42689	222	8220DB004890
42690	222	8220DB004369
42691	222	8240DB006219
42692	222	8240DB006229
42693	222	8240DB006348
42694	222	8240DB001182
42695	222	8240DB001550
42696	222	8240DB001551
42697	222	8240DB001552
42698	223	8240DB000324
42699	223	8240DB001555
42700	223	8240DB001556
42701	223	8240DB001557
42702	223	8240DB001181
42703	223	8240DB007350
42704	223	8240DB006230
42705	223	8240DB006228
42706	223	8220DB004788
42707	223	8220DB006273
42708	223	8220DB004891
42709	223	8220DB007458
42710	223	8220DB007425
42711	223	8220DB007424
42712	223	8220DB007423
42713	223	8220DB001566
42714	223	8220DB001567
42715	223	8220DB000173
42716	223	8220DB000174
42717	223	8220DB000175
42718	223	8220DB000176
42719	223	8220DB000181
42720	223	8220DB000182
42721	223	8220DB000183
42722	223	8220DB000184
42723	223	8220DB000185
42724	223	8220DB000186
42725	223	8220DB000187
42726	223	8220DB000188
42727	223	8220DB000189
42728	223	8220DB000190
42729	223	8220DB001614
42730	223	8220DB001615
42731	223	8220DB001478
42732	223	8220DB001479
42733	223	8220DB000315
42734	223	8220DB000336
42735	223	8220DB001279
42736	223	8220DB001283
42737	223	8220DB004456
42738	223	8220DB001284
42739	223	8220DB001285
42740	223	8220DB001016
42741	223	8220DB001017
42742	223	8220DB001018
42743	223	8220DB001019
42744	223	8220DB001020
42745	223	8220DB001076
42746	223	8220DB001077
42747	223	8220DB002479
42748	223	8220DB002480
42749	223	8220DB002481
42750	223	8220DB002482
42751	223	8220DB002483
42752	223	8220DB002484
42753	223	8220DB002485
42754	223	8220DB002486
42755	223	8220DB002487
42756	223	8220DB002488
42757	223	8220DB002489
42758	223	8220DB002448
42759	223	8220DB005026
42760	223	8220DB002450
42761	223	8220DB002490
42762	223	8220DB002491
42763	224	8350DB004260
42764	224	8350DB004261
42765	224	8350DB007271
42766	224	8350DB005136
42767	224	8350DB004262
42768	224	8350DB004263
42769	224	8350DB004264
42770	224	8350DB007296
42771	224	8350DB004265
42772	224	8350DB004266
42773	224	8350DB004307
42774	224	8350DB004308
42775	224	8350DB004267
42776	224	8350DB004268
42777	224	8350DB004269
42778	224	8350DB004270
42779	224	8350DB004271
42780	224	8350DB004273
42781	224	8350DB004274
42782	224	8350DB004275
42783	224	8350DB004276
42784	224	8350DB004277
42785	224	8350DB004278
42786	224	8350DB004279
42787	224	8350DB004280
42788	224	8350DB004281
42789	224	8350DB004282
42790	224	8350DB004283
42791	224	8350DB004284
42792	224	8350DB004285
42793	224	8350DB004286
42794	224	8350DB004287
42795	224	8350DB004288
42796	224	8350DB004295
42797	224	8350DB004296
42798	224	8350DB004297
42799	224	8350DB004299
42800	224	8350DB004300
42801	224	8350DB004301
42802	224	8350DB004302
42803	224	8350DB005135
42804	224	8350DB004303
42805	224	8350DB004304
42806	224	8350DB004148
42807	224	8350DB004149
42808	224	8350DB003045
42809	224	8350DB004150
42810	224	8350DB004151
42811	224	8350DB004156
42812	224	8350DB004168
42813	224	8350DB004170
42814	224	8350DB004153
42815	224	8350DB004154
42816	224	8350DB004416
42817	224	8350DB004201
42818	224	8250DB004202
42819	224	8250DB004203
42820	224	8250DB004204
42821	224	8250DB004205
42822	224	8250DB004206
42823	224	8250DB003140
42824	224	8250DB003141
42825	224	8250DB003142
42826	224	8250DB003143
42827	224	8250DB003144
42828	224	8250DB007639
42829	224	8250DB007640
42830	224	8250DB005047
42831	224	8250DB003146
42832	224	8250DB003147
42833	224	8250DB003148
42834	224	8250DB003149
42835	224	8250DB003150
42836	224	8250DB003151
42837	224	8250DB003153
42838	224	8250DB003152
42839	224	8250DB002995
42840	224	8250DB003154
42841	224	8250DB003155
42842	224	8250DB003156
42843	224	8250DB003158
42844	224	8250DB003159
42845	224	8250DB003160
42846	224	8250DB003161
42847	224	8250DB003162
42848	224	8250DB003163
42849	224	8250DB003164
42850	224	8250DB003079
42851	224	8250DB003080
42852	224	8250DB003081
42853	225	8250DB007188
42854	225	8250DB003082
42855	225	8250DB007660
42856	225	8250DB003114
42857	225	8250DB003115
42858	225	8250DB003116
42859	225	8250DB003117
42860	225	8250DB003118
42861	225	8250DB003119
42862	225	8250DB003120
42863	225	8250DB003122
42864	225	8250DB003123
42865	225	8250DB003124
42866	225	8250DB003125
42867	225	8250DB003126
42868	225	8250DB003127
42869	225	8250DB003128
42870	225	8250DB003130
42871	225	8250DB003131
42872	225	8250DB003132
42873	225	8250DB003133
42874	225	8250DB005046
42875	225	8250DB007639
42876	225	8250DB007640
42877	225	8250DB003134
42878	225	8250DB003135
42879	225	8250DB003136
42880	225	8250DB003138
42881	225	8250DB003139
42882	225	8250DB004124
42883	225	8250DB004125
42884	225	8250DB004126
42885	225	8250DB004127
42886	225	8250DB004128
42887	225	8350DB004129
42888	225	8350DB004130
42889	225	8350DB004131
42890	225	8350DB007294
42891	225	8350DB004156
42892	225	8350DB004168
42893	225	8350DB004170
42894	225	8350DB004132
42895	225	8350DB004134
42896	225	8350DB004135
42897	225	8350DB004136
42898	225	8350DB004207
42899	225	8350DB004208
42900	225	8350DB004209
42901	225	8350DB004210
42902	225	8350DB004211
42903	225	8350DB004212
42904	225	8350DB004213
42905	225	8350DB005139
42906	225	8350DB004214
42907	225	8350DB004215
42908	225	8350DB004216
42909	225	8350DB004217
42910	225	8350DB004218
42911	225	8350DB004219
42912	225	8350DB004220
42913	225	8350DB004221
42914	225	8350DB004222
42915	225	8350DB004224
42916	225	8350DB004225
42917	225	8350DB004226
42918	225	8350DB004227
42919	225	8350DB004228
42920	225	8350DB004229
42921	225	8350DB004230
42922	225	8350DB004231
42923	225	8350DB007352
42924	225	8350DB004246
42925	225	8350DB004248
42926	225	8350DB004249
42927	225	8350DB004250
42928	225	8350DB004251
42929	225	8350DB004252
42930	225	8350DB004253
42931	225	8350DB004305
42932	225	8350DB004306
42933	225	8350DB004309
42934	225	8350DB004254
42935	225	8350DB006137
42936	225	8350DB004256
42937	225	8350DB004257
42938	225	8350DB004258
42939	225	8350DB004259
42940	225	8350DB007272
42941	226	8350DB004168
42942	226	8350DB004170
42943	226	8350DB004153
42944	226	8350DB004154
42945	226	8350DB004416
42946	226	8350DB004201
42947	226	8250DB004202
42948	226	8250DB004203
42949	226	8250DB004204
42950	226	8250DB004205
42951	226	8250DB004206
42952	226	8250DB003140
42953	226	8250DB003141
42954	226	8250DB003142
42955	226	8250DB003143
42956	226	8250DB003144
42957	226	8250DB007639
42958	226	8250DB007640
42959	226	8250DB005047
42960	226	8250DB003146
42961	226	8250DB003147
42962	226	8250DB003148
42963	226	8250DB003149
42964	226	8250DB003150
42965	226	8250DB003151
42966	226	8250DB003153
42967	226	8250DB003152
42968	226	8250DB002995
42969	226	8250DB003154
42970	226	8250DB003155
42971	226	8250DB003156
42972	226	8250DB003158
42973	226	8250DB003159
42974	226	8250DB003160
42975	226	8250DB003161
42976	226	8250DB003162
42977	226	8250DB003163
42978	226	8250DB003164
42979	226	8250DB003079
42980	226	8250DB003080
42981	226	8250DB003082
42982	226	8250DB003084
42983	226	8250DB000469
42984	226	8250DB000470
42985	226	8250DB000471
42986	226	8250DB000472
42987	226	8250DB000473
42988	226	8250DB004705
42989	226	8250DB000475
42990	226	8220DB000476
42991	226	8220DB000477
42992	227	8350DB004168
42993	227	8350DB004170
42994	227	8350DB004153
42995	227	8350DB004154
42996	227	8350DB004416
42997	227	8350DB004201
42998	227	8250DB004202
42999	227	8250DB004203
43000	227	8250DB004204
43001	227	8250DB004205
43002	227	8250DB004206
43003	227	8250DB003140
43004	227	8250DB003141
43005	227	8250DB003142
43006	227	8250DB003143
43007	227	8250DB003144
43008	227	8250DB007639
43009	227	8250DB007640
43010	227	8250DB005047
43011	227	8250DB003146
43012	227	8250DB003147
43013	227	8250DB003148
43014	227	8250DB003149
43015	227	8250DB003150
43016	227	8250DB003151
43017	227	8250DB003153
43018	227	8250DB003152
43019	227	8250DB002995
43020	227	8250DB003154
43021	227	8250DB003155
43022	227	8250DB003156
43023	227	8250DB003158
43024	227	8250DB003159
43025	227	8250DB003160
43026	227	8250DB003161
43027	227	8250DB003162
43028	227	8250DB003163
43029	227	8250DB003164
43030	228	8350DB004260
43031	228	8350DB007296
43032	228	8350DB004266
43033	228	8350DB004253
43034	228	8350DB004268
43035	228	8350DB004273
43036	228	8350DB004277
43037	228	8350DB007462
43038	228	8350DB007461
43039	228	8350DB004281
43040	228	8350DB004282
43041	228	8350DB004283
43042	228	8350DB004284
43043	228	8350DB004295
43044	228	8350DB004296
43045	228	8350DB004301
43046	228	8350DB004302
43047	228	8350DB004591
43048	228	8350DB004590
43049	228	8350DB007366
43050	228	8350DB007367
43051	228	8350DB007368
43052	228	8250DB003143
43053	228	8250DB003144
43054	228	8250DB003145
43055	228	8250DB005128
43056	228	8250DB002060
43057	228	8250DB002062
43058	228	8250DB002064
43059	228	8250DB004727
43060	228	8250DB000768
43061	228	8220DB000772
43062	228	8220DB000775
43063	228	8220DB000906
43064	228	8220DB000909
43065	228	8220DB000792
43066	228	8220DB007586
43067	228	8220DB007587
43068	229	8350DB004307
43069	229	8350DB004308
43070	229	8350DB004253
43071	229	8350DB004268
43072	229	8350DB004273
43073	229	8350DB004277
43074	229	8350DB007462
43075	229	8350DB007461
43076	229	8350DB004281
43077	229	8350DB004282
43078	229	8350DB004283
43079	229	8350DB004284
43080	229	8350DB004295
43081	229	8350DB004296
43082	229	8350DB004301
43083	229	8350DB004302
43084	229	8350DB004591
43085	229	8350DB004590
43086	229	8350DB007366
43087	229	8350DB007367
43088	229	8350DB007368
43089	229	8250DB003143
43090	229	8250DB003144
43091	229	8250DB003145
43092	229	8250DB005128
43093	229	8250DB002060
43094	229	8250DB002062
43095	229	8250DB002064
43096	229	8250DB004727
43097	229	8250DB000768
43098	229	8220DB000772
43099	229	8220DB000775
43100	229	8220DB000906
43101	229	8220DB000909
43102	229	8220DB000792
43103	229	8220DB007586
43104	229	8220DB007587
43105	230	8230DB004392
43106	230	8230DB002458
43107	230	8230DB002446
43108	230	8230DB002459
43109	230	8230DB002460
43110	230	8230DB002461
43111	230	8220DB002462
43112	230	8220DB002463
43113	230	8220DB002431
43114	230	8220DB002432
43115	230	8220DB002433
43116	230	8220DB002434
43117	230	8220DB002435
43118	230	8220DB002436
43119	230	8220DB002437
43120	230	8220DB002438
43121	230	8220DB002439
43122	230	8220DB002440
43123	230	8220DB002441
43124	230	8220DB002442
43125	230	8220DB002443
43126	230	8220DB002444
43127	230	8220DB001344
43128	230	8220DB001345
43129	230	8220DB001347
43130	230	8220DB001348
43131	230	8220DB001349
43132	230	8220DB001350
43133	230	8220DB001352
43134	230	8220DB001353
43135	230	8220DB001355
43136	230	8220DB001357
43137	230	8220DB001359
43138	230	8220DB000319
43139	230	8220DB000281
43140	230	8220DB000004
43141	230	8220DB000194
43142	230	8220DB000195
43143	230	8220DB000196
43144	230	8220DB000197
43145	230	8220DB000198
43146	230	8220DB000199
43147	230	8220DB000200
43148	230	8220DB000201
43149	230	8220DB000148
43150	230	8220DB000149
43151	230	8220DB000150
43152	230	8220DB000027
43153	230	8220DB000028
43154	230	8220DB000029
43155	230	8220DB004680
43156	230	8220DB000090
43157	230	8220DB000091
43158	230	8220DB000129
43159	230	8220DB000130
43160	230	8220DB000131
43161	230	8220DB000164
43162	230	8220DB000165
43163	230	8220DB000166
43164	230	8220DB007458
43165	230	8220DB004479
43166	230	8220DB004376
43167	230	8220DB004377
43168	230	8220DB004890
43169	230	8220DB004369
43170	230	8240DB006219
43171	230	8240DB006229
43172	231	8240DB007132
43173	231	8240DB006230
43174	231	8240DB006228
43175	231	8220DB004788
43176	231	8220DB006273
43177	231	8220DB000136
43178	231	8220DB000137
43179	231	8220DB000193
43180	231	8220DB000138
43181	231	8220DB000167
43182	231	8220DB000168
43183	231	8220DB000169
43184	231	8220DB000141
43185	231	8220DB000142
43186	231	8220DB000143
43187	231	8220DB000115
43188	231	8220DB000037
43189	231	8220DB000038
43190	231	8220DB000039
43191	231	8220DB000040
43192	231	8220DB000146
43193	231	8220DB000147
43194	231	8220DB000184
43195	231	8220DB000185
43196	231	8220DB000186
43197	231	8220DB000187
43198	231	8220DB000188
43199	231	8220DB000189
43200	231	8220DB000190
43201	231	8220DB000191
43202	231	8220DB000819
43203	231	8220DB000263
43204	231	8220DB000277
43205	231	8220DB000336
43206	231	8220DB001278
43207	231	8220DB001282
43208	231	8220DB004456
43209	231	8220DB001284
43210	231	8220DB001285
43211	231	8220DB001286
43212	231	8220DB001288
43213	231	8220DB001289
43214	231	8220DB001290
43215	231	8220DB001291
43216	231	8220DB002389
43217	231	8220DB002390
43218	231	8220DB002391
43219	231	8220DB002392
43220	231	8220DB002393
43221	231	8220DB002394
43222	231	8220DB001090
43223	231	8220DB002413
43224	231	8220DB002414
43225	231	8220DB002415
43226	231	8220DB002416
43227	231	8220DB002417
43228	231	8220DB002418
43229	231	8220DB002419
43230	231	8220DB002452
43231	231	8220DB002453
43232	231	8230DB002454
43233	231	8230DB002455
43234	231	8230DB002456
43235	231	8230DB002445
43236	231	8230DB002457
43237	232	8220DB000381
43238	232	8220DB007740
43239	232	8220DB007741
43240	232	8220DB000387
43241	232	8220DB000388
43242	232	8220DB000389
43243	232	8220DB000393
43244	232	8220DB000371
43245	232	8220DB000391
43246	232	8220DB000392
43247	232	8220DB000395
43248	232	8220DB000396
43249	232	8220DB000397
43250	232	8220DB000398
43251	232	8220DB000399
43252	232	8220DB007859
43253	232	8220DB007732
43254	232	8220DB007392
43255	232	8220DB000312
43256	232	8220DB007857
43257	232	8220DB007855
43258	232	8220DB004407
43259	232	8220DB002637
43260	232	8220DB002721
43261	232	8220DB007012
43262	232	8230DB002201
43263	232	8230DB007239
43264	232	8230DB004401
43265	232	8230DB002213
43266	232	8230DB002214
43267	232	8230DB002215
43268	232	8230DB002216
43269	232	8230DB004599
43270	232	8230DB004601
43271	232	8230DB005058
43272	232	8230DB004602
43273	232	8230DB004603
43274	232	8230DB004604
43275	232	8230DB004605
43276	232	8230DB004562
43277	232	8230DB007386
43278	232	8230DB004607
43279	232	8230DB004608
43280	232	8230DB004609
43281	232	8230DB004610
43282	232	8230DB004611
43283	232	8230DB004612
43284	232	8230DB004613
43285	232	8230DB003370
43286	232	8230DB007797
43287	232	8230DB007231
43288	232	8230DB007128
43289	232	8230DB007117
43290	232	8230DB007118
43291	233	8230DB006290
43292	233	8230DB007120
43293	233	8230DB007119
43294	233	8230DB007127
43295	233	8230DB007143
43296	233	8230DB007796
43297	233	8230DB003368
43298	233	8230DB004626
43299	233	8230DB004627
43300	233	8230DB004624
43301	233	8230DB004625
43302	233	8230DB004628
43303	233	8230DB004623
43304	233	8230DB004619
43305	233	8230DB004561
43306	233	8230DB004629
43307	233	8230DB004630
43308	233	8230DB004631
43309	233	8230DB004632
43310	233	8230DB005164
43311	233	8230DB004633
43312	233	8230DB002234
43313	233	8230DB002236
43314	233	8230DB005056
43315	233	8230DB002239
43316	233	8230DB002241
43317	233	8230DB002242
43318	233	8220DB007435
43319	233	8220DB002722
43320	233	8220DB004413
43321	233	8220DB001476
43322	233	8220DB007854
43323	233	8220DB007856
43324	233	8220DB007883
43325	233	8220DB000315
43326	233	8220DB000340
43327	233	8220DB007861
43328	233	8220DB000351
43329	233	8220DB000352
43330	233	8220DB000353
43331	233	8220DB000354
43332	233	8220DB000355
43333	233	8220DB000356
43334	233	8220DB000357
43335	233	8220DB000390
43336	233	8220DB000372
43337	233	8220DB000373
43338	233	8220DB000374
43339	233	8220DB007738
43340	233	8220DB007739
43341	234	8220DB000381
43342	234	8220DB007740
43343	234	8220DB007741
43344	234	8220DB000387
43345	234	8220DB000388
43346	234	8220DB000389
43347	234	8220DB000393
43348	234	8220DB000371
43349	234	8220DB000391
43350	234	8220DB000392
43351	234	8220DB000395
43352	234	8220DB000396
43353	234	8220DB000397
43354	234	8220DB000398
43355	234	8220DB000399
43356	234	8220DB007859
43357	234	8220DB007732
43358	234	8220DB007392
43359	234	8220DB000312
43360	234	8220DB007857
43361	234	8220DB007855
43362	234	8220DB004407
43363	234	8220DB002637
43364	234	8220DB002721
43365	234	8220DB007012
43366	234	8230DB002201
43367	234	8230DB007239
43368	234	8230DB004401
43369	234	8230DB002213
43370	234	8230DB002214
43371	234	8230DB002215
43372	234	8230DB002216
43373	234	8230DB004599
43374	234	8230DB004601
43375	234	8230DB005058
43376	234	8230DB004602
43377	234	8230DB004603
43378	234	8230DB004604
43379	234	8230DB004605
43380	234	8230DB004562
43381	234	8230DB007386
43382	234	8230DB004607
43383	234	8230DB007140
43384	234	8230DB007141
43385	234	8230DB007138
43386	234	8230DB007763
43387	234	8230DB003370
43388	234	8230DB007797
43389	234	8230DB007231
43390	234	8230DB007128
43391	234	8230DB007117
43392	234	8230DB007118
43393	235	8230DB006290
43394	235	8230DB007120
43395	235	8230DB007119
43396	235	8230DB007127
43397	235	8230DB007143
43398	235	8230DB007796
43399	235	8230DB003368
43400	235	8230DB007762
43401	235	8230DB007137
43402	235	8230DB007139
43403	235	8230DB004623
43404	235	8230DB004619
43405	235	8230DB004561
43406	235	8230DB004629
43407	235	8230DB004630
43408	235	8230DB004631
43409	235	8230DB004632
43410	235	8230DB005164
43411	235	8230DB004633
43412	235	8230DB002234
43413	235	8230DB002236
43414	235	8230DB005056
43415	235	8230DB002239
43416	235	8230DB002241
43417	235	8230DB002242
43418	235	8220DB007435
43419	235	8220DB002722
43420	235	8220DB004413
43421	235	8220DB001476
43422	235	8220DB007854
43423	235	8220DB007856
43424	235	8220DB007883
43425	235	8220DB000315
43426	235	8220DB000340
43427	235	8220DB007861
43428	235	8220DB000351
43429	235	8220DB000352
43430	235	8220DB000353
43431	235	8220DB000354
43432	235	8220DB000355
43433	235	8220DB000356
43434	235	8220DB000357
43435	235	8220DB000390
43436	235	8220DB000372
43437	235	8220DB000373
43438	235	8220DB000374
43439	235	8220DB007738
43440	235	8220DB007739
43441	236	8260DB007799
43442	236	8260DB003980
43443	236	8260DB006089
43444	236	8260DB003981
43445	236	8260DB003982
43446	236	8260DB007704
43447	236	8260DB003983
43448	236	8260DB003985
43449	236	8260DB003986
43450	236	8260DB003987
43451	236	8260DB003989
43452	236	8260DB003990
43453	236	8260DB003991
43454	236	8260DB07758
43455	236	8260DB003998
43456	236	8260DB003999
43457	236	8260DB004000
43458	236	8230DB004001
43459	236	8230DB003949
43460	236	8230DB003950
43461	236	8230DB003372
43462	236	8230DB003373
43463	236	8230DB003374
43464	236	8230DB002233
43465	236	8230DB002232
43466	236	8230DB002234
43467	236	8230DB002236
43468	236	8230DB005056
43469	236	8230DB002239
43470	236	8230DB002241
43471	236	8230DB002242
43472	236	8220DB007435
43473	236	8220DB002722
43474	236	8220DB004413
43475	236	8220DB001476
43476	236	8220DB007854
43477	236	8220DB007856
43478	236	8220DB007883
43479	236	8220DB000315
43480	236	8220DB000340
43481	236	8220DB007861
43482	236	8220DB000351
43483	236	8220DB000352
43484	236	8220DB000353
43485	237	8220DB000395
43486	237	8220DB000396
43487	237	8220DB000397
43488	237	8220DB000398
43489	237	8220DB000399
43490	237	8220DB007859
43491	237	8220DB007732
43492	237	8220DB007392
43493	237	8220DB000312
43494	237	8220DB007857
43495	237	8220DB007855
43496	237	8220DB004407
43497	237	8220DB002637
43498	237	8220DB002721
43499	237	8220DB007012
43500	237	8230DB002201
43501	237	8230DB007239
43502	237	8230DB004401
43503	237	8230DB002213
43504	237	8230DB002214
43505	237	8230DB002215
43506	237	8230DB002216
43507	237	8230DB004599
43508	237	8230DB002217
43509	237	8230DB002218
43510	237	8230DB002219
43511	237	8230DB003365
43512	237	8230DB003366
43513	237	8230DB003367
43514	237	8230DB003886
43515	237	8230DB003887
43516	237	8230DB003888
43517	237	8230DB007186
43518	237	8230DB007187
43519	237	8260DB003954
43520	237	8260DB003955
43521	237	8260DB003956
43522	237	8260DB003957
43523	237	8260DB003958
43524	237	8260DB003959
43525	237	8260DB003960
43526	237	8260DB003961
43527	237	8260DB003962
43528	237	8260DB003963
43529	237	8260DB003964
43530	237	8260DB003965
43531	237	8260DB003968
43532	237	8260DB007694
43533	237	8260DB003966
43534	237	8260DB005113
43535	237	8260DB003918
43536	237	8260DB005114
43537	238	8220DB000395
43538	238	8220DB000396
43539	238	8220DB000397
43540	238	8220DB000398
43541	238	8220DB000399
43542	238	8220DB007859
43543	238	8220DB007732
43544	238	8220DB007392
43545	238	8220DB000312
43546	238	8220DB007857
43547	238	8220DB007855
43548	238	8220DB004407
43549	238	8220DB002637
43550	238	8220DB002721
43551	238	8220DB007012
43552	238	8230DB002201
43553	238	8230DB007239
43554	238	8230DB004401
43555	238	8230DB002213
43556	238	8230DB002214
43557	238	8230DB002215
43558	238	8230DB002216
43559	238	8230DB004599
43560	238	8230DB002217
43561	238	8230DB002218
43562	238	8230DB002219
43563	238	8230DB003365
43564	238	8230DB003366
43565	238	8230DB003367
43566	238	8230DB003886
43567	238	8230DB003887
43568	238	8230DB003888
43569	238	8230DB007186
43570	238	8230DB007187
43571	238	8230DB003947
43572	238	8230DB003892
43573	238	8230DB003893
43574	238	8230DB003896
43575	238	8260DB003897
43576	238	8260DB003898
43577	238	8260DB003899
43578	238	8260DB003900
43579	238	8260DB003901
43580	238	8260DB003902
43581	238	8260DB003904
43582	238	8260DB003905
43583	238	8260DB003906
43584	238	8260DB003907
43585	238	8260DB003908
43586	238	8260DB003909
43587	238	8260DB005118
43588	238	8260DB003910
43589	238	8260DB003911
43590	238	8260DB003912
43591	238	8260DB003913
43592	238	8260DB003914
43593	238	8260DB007075
43594	238	8260DB003925
43595	238	8260DB003008
43596	238	8260DB006089
43597	239	8260DB003917
43598	239	8260DB003918
43599	239	8260DB003926
43600	239	8260DB007813
43601	239	8260DB007074
43602	239	8260DB003919
43603	239	8260DB003920
43604	239	8260DB003921
43605	239	8260DB003922
43606	239	8260DB003923
43607	239	8260DB003112
43608	239	8260DB003924
43609	239	8260DB003927
43610	239	8260DB003928
43611	239	8260DB003929
43612	239	8260DB007108
43613	239	8260DB003935
43614	239	8260DB003936
43615	239	8260DB007110
43616	239	8260DB003938
43617	239	8260DB003939
43618	239	8260DB003940
43619	239	8260DB003941
43620	239	8230DB003943
43621	239	8230DB003945
43622	239	8230DB003946
43623	239	8230DB004001
43624	239	8230DB003949
43625	239	8230DB003950
43626	239	8230DB003372
43627	239	8230DB003373
43628	239	8230DB003374
43629	239	8230DB002233
43630	239	8230DB002232
43631	239	8230DB002234
43632	239	8230DB002236
43633	239	8230DB005056
43634	239	8230DB002239
43635	239	8230DB002241
43636	239	8230DB002242
43637	239	8220DB007435
43638	239	8220DB002722
43639	239	8220DB004413
43640	239	8220DB001476
43641	239	8220DB007854
43642	239	8220DB007856
43643	239	8220DB007883
43644	239	8220DB000315
43645	239	8220DB000340
43646	239	8220DB007861
43647	239	8220DB000351
43648	239	8220DB000352
43649	239	8220DB000353
43650	240	8220DB000395
43651	240	8220DB000396
43652	240	8220DB000397
43653	240	8220DB000398
43654	240	8220DB000399
43655	240	8220DB007859
43656	240	8220DB007732
43657	240	8220DB007392
43658	240	8220DB000312
43659	240	8220DB007857
43660	240	8220DB007855
43661	240	8220DB007078
43662	240	8220DB001449
43663	240	8220DB001450
43664	240	8220DB001451
43665	240	8220DB002191
43666	240	8220DB002192
43667	240	8220DB002193
43668	240	8220DB002194
43669	240	8220DB002195
43670	240	8220DB002196
43671	240	8220DB002197
43672	240	8220DB002198
43673	240	8220DB002200
43674	240	8230DB002201
43675	240	8230DB007239
43676	240	8230DB004401
43677	240	8230DB002213
43678	240	8230DB002214
43679	240	8230DB002215
43680	240	8230DB002216
43681	240	8230DB004599
43682	240	8230DB002217
43683	240	8230DB002218
43684	240	8230DB002219
43685	240	8230DB003365
43686	240	8230DB003366
43687	240	8230DB003367
43688	240	8230DB003886
43689	240	8230DB003887
43690	240	8230DB003888
43691	240	8230DB007186
43692	240	8230DB007187
43693	240	8260DB003954
43694	240	8260DB003955
43695	240	8260DB003956
43696	240	8260DB003957
43697	240	8260DB007798
43698	240	8260DB003993
43699	240	8260DB007821
43700	240	8260DB007820
43701	240	8260DB003995
43702	240	8260DB003996
43703	240	8260DB003997
43704	240	8260DB003958
43705	240	8260DB003959
43706	240	8260DB003960
43707	240	8260DB006156
43708	240	8260DB006165
43709	240	8260DB006157
43710	240	8260DB006158
43711	240	8260DB007314
43712	240	8260DB003964
43713	240	8260DB003965
43714	240	8260DB003968
43715	240	8260DB007694
43716	240	8260DB003966
43717	240	8260DB005113
43718	240	8260DB003918
43719	240	8260DB005114
43720	241	8260DB007799
43721	241	8260DB003980
43722	241	8260DB006089
43723	241	8260DB003981
43724	241	8260DB003982
43725	241	8260DB007704
43726	241	8260DB003983
43727	241	8260DB003985
43728	241	8260DB003986
43729	241	8260DB007313
43730	241	8260DB006164
43731	241	8260DB007712
43732	241	8260DB006159
43733	241	8260DB006160
43734	241	8260DB006161
43735	241	8260DB003991
43736	241	8260DB07758
43737	241	8260DB007798
43738	241	8260DB003993
43739	241	8260DB007821
43740	241	8260DB007820
43741	241	8260DB003995
43742	241	8260DB003996
43743	241	8260DB003997
43744	241	8260DB003998
43745	241	8260DB003999
43746	241	8260DB004000
43747	241	8230DB004001
43748	241	8230DB003949
43749	241	8230DB003950
43750	241	8230DB003372
43751	241	8230DB003373
43752	241	8230DB003374
43753	241	8230DB002233
43754	241	8230DB002232
43755	241	8230DB002234
43756	241	8230DB002236
43757	241	8230DB005056
43758	241	8230DB002239
43759	241	8230DB002241
43760	241	8230DB002242
43761	241	8220DB002243
43762	241	8220DB002244
43763	241	8220DB002245
43764	241	8220DB002246
43765	241	8220DB002247
43766	241	8220DB002248
43767	241	8220DB002249
43768	241	8220DB002250
43769	241	8220DB002251
43770	241	8220DB001472
43771	241	8220DB004408
43772	241	8220DB001473
43773	241	8220DB001474
43774	241	8220DB001476
43775	241	8220DB007854
43776	241	8220DB007856
43777	241	8220DB007883
43778	241	8220DB000315
43779	241	8220DB000340
43780	241	8220DB007861
43781	241	8220DB000351
43782	241	8220DB000352
43783	241	8220DB000353
43784	242	8220DB000395
43785	242	8220DB000396
43786	242	8220DB000397
43787	242	8220DB000398
43788	242	8220DB000399
43789	242	8220DB007859
43790	242	8220DB007732
43791	242	8220DB007392
43792	242	8220DB000312
43793	242	8220DB007857
43794	242	8220DB007855
43795	242	8220DB007078
43796	242	8220DB001449
43797	242	8220DB001450
43798	242	8220DB001451
43799	242	8220DB002191
43800	242	8220DB002192
43801	242	8220DB002193
43802	242	8220DB002194
43803	242	8220DB002195
43804	242	8220DB002196
43805	242	8220DB002197
43806	242	8220DB002198
43807	242	8220DB002200
43808	242	8230DB002201
43809	242	8230DB007239
43810	242	8230DB004401
43811	242	8230DB002213
43812	242	8230DB002214
43813	242	8230DB002215
43814	242	8230DB002216
43815	242	8230DB004599
43816	242	8230DB002217
43817	242	8230DB002218
43818	242	8230DB002219
43819	242	8230DB003365
43820	242	8230DB003366
43821	242	8230DB003367
43822	242	8230DB003886
43823	242	8230DB003887
43824	242	8230DB003888
43825	242	8230DB007186
43826	242	8230DB007187
43827	242	8230DB003947
43828	242	8230DB003892
43829	242	8230DB003893
43830	242	8230DB003896
43831	242	8260DB003897
43832	242	8260DB003898
43833	242	8260DB003899
43834	242	8260DB003900
43835	242	8260DB003901
43836	242	8260DB003902
43837	242	8260DB003904
43838	242	8260DB003905
43839	242	8260DB003906
43840	242	8260DB003907
43841	242	8260DB003908
43842	242	8260DB003909
43843	242	8260DB005118
43844	242	8260DB003910
43845	242	8260DB003911
43846	242	8260DB003912
43847	242	8260DB003913
43848	242	8260DB003914
43849	242	8260DB007075
43850	242	8260DB003925
43851	242	8260DB003008
43852	242	8260DB006089
43853	243	8260DB003917
43854	243	8260DB003918
43855	243	8260DB003926
43856	243	8260DB007813
43857	243	8260DB007074
43858	243	8260DB003919
43859	243	8260DB003920
43860	243	8260DB003921
43861	243	8260DB003922
43862	243	8260DB003923
43863	243	8260DB003112
43864	243	8260DB003924
43865	243	8260DB003927
43866	243	8260DB003928
43867	243	8260DB003929
43868	243	8260DB007108
43869	243	8260DB003935
43870	243	8260DB003936
43871	243	8260DB007110
43872	243	8260DB003938
43873	243	8260DB003939
43874	243	8260DB003940
43875	243	8260DB003941
43876	243	8230DB003943
43877	243	8230DB003945
43878	243	8230DB003946
43879	243	8230DB004001
43880	243	8230DB003949
43881	243	8230DB003950
43882	243	8230DB003372
43883	243	8230DB003373
43884	243	8230DB003374
43885	243	8230DB002233
43886	243	8230DB002232
43887	243	8230DB002234
43888	243	8230DB002236
43889	243	8230DB005056
43890	243	8230DB002239
43891	243	8230DB002241
43892	243	8230DB002242
43893	243	8220DB002243
43894	243	8220DB002244
43895	243	8220DB002245
43896	243	8220DB002246
43897	243	8220DB002247
43898	243	8220DB002248
43899	243	8220DB002249
43900	243	8220DB002250
43901	243	8220DB002251
43902	243	8220DB001472
43903	243	8220DB004408
43904	243	8220DB001473
43905	243	8220DB001474
43906	243	8220DB001476
43907	243	8220DB007854
43908	243	8220DB007856
43909	243	8220DB007883
43910	243	8220DB000315
43911	243	8220DB000340
43912	243	8220DB007861
43913	243	8220DB000351
43914	243	8220DB000352
43915	243	8220DB000353
43916	244	8220DB007591
43917	244	8220DB000496
43918	244	8220DB000515
43919	244	8220DB000516
43920	244	8220DB004384
43921	244	8220DB000518
43922	244	8220DB000519
43923	244	8220DB000521
43924	244	8220DB000522
43925	244	8220DB000523
43926	244	8220DB000525
43927	244	8220DB000526
43928	244	8220DB000527
43929	244	8220DB000528
43930	244	8220DB000529
43931	244	8220DB000530
43932	244	8220DB000531
43933	244	8220DB000709
43934	244	8220DB000532
43935	244	8220DB000649
43936	244	8220DB000650
43937	244	8220DB000651
43938	244	8220DB004472
43939	244	8220DB004386
43940	244	8220DB000653
43941	244	8220DB000722
43942	244	8220DB000723
43943	244	8220DB000724
43944	244	8220DB000725
43945	244	8220DB000726
43946	244	8220DB000727
43947	244	8220DB000728
43948	244	8220DB000729
43949	244	8220DB000730
43950	244	8220DB005160
43951	244	8220DB005155
43952	244	8220DB004806
43953	244	8240DB005156
43954	244	8240DB007552
43955	244	8240DB000924
43956	244	8240DB000925
43957	244	8240DB000927
43958	245	8240DB000950
43959	245	8240DB000915
43960	245	8240DB000916
43961	245	8240DB000917
43962	245	8240DB000918
43963	245	8240DB000919
43964	245	8240DB007551
43965	245	8240DB004800
43966	245	8220DB005157
43967	245	8220DB005154
43968	245	8220DB004804
43969	245	8220DB000738
43970	245	8220DB000739
43971	245	8220DB000740
43972	245	8220DB000741
43973	245	8220DB000742
43974	245	8220DB000743
43975	245	8220DB000744
43976	245	8220DB000745
43977	245	8220DB000600
43978	245	8220DB000654
43979	245	8220DB000655
43980	245	8220DB000656
43981	245	8220DB000657
43982	245	8220DB000658
43983	245	8220DB000659
43984	245	8220DB000604
43985	245	8220DB000605
43986	245	8220DB000606
43987	245	8220DB000607
43988	245	8220DB000608
43989	245	8220DB000609
43990	245	8220DB000610
43991	245	8220DB000611
43992	245	8220DB000612
43993	245	8220DB000613
43994	245	8220DB000614
43995	245	8220DB000615
43996	245	8220DB000616
43997	245	8220DB000617
43998	245	8220DB000618
43999	245	8220DB000619
44000	245	8220DB000675
44001	245	8220DB000620
44002	245	8220DB007569
44003	246	8220DB007591
44004	246	8220DB000496
44005	246	8220DB000515
44006	246	8220DB000516
44007	246	8220DB004384
44008	246	8220DB000518
44009	246	8220DB000519
44010	246	8220DB000521
44011	246	8220DB000522
44012	246	8220DB000523
44013	246	8220DB000525
44014	246	8220DB000526
44015	246	8220DB000527
44016	246	8220DB000528
44017	246	8220DB000529
44018	246	8220DB000530
44019	246	8220DB000531
44020	246	8220DB000709
44021	246	8220DB000532
44022	246	8220DB000533
44023	246	8220DB000534
44024	246	8220DB000535
44025	246	8220DB000536
44026	246	8220DB000537
44027	246	8220DB000538
44028	246	8220DB000539
44029	246	8220DB000540
44030	246	8220DB000541
44031	246	8220DB000542
44032	246	8240DB000543
44033	246	8240DB000544
44034	246	8240DB000545
44035	246	8240DB000546
44036	246	8240DB000910
44037	246	8240DB000911
44038	246	8240DB000912
44039	246	8240DB000913
44040	246	8240DB000914
44041	246	8240DB000938
44042	246	8240DB000940
44043	246	8240DB000941
44044	246	8240DB000942
44045	246	8240DB000943
44046	246	8240DB004503
44047	246	8240DB003599
44048	246	8240DB003610
44049	246	8240DB003611
44050	246	8240DB006135
44051	246	8240DB003612
44052	246	8240DB003613
44053	246	8240DB003615
44054	246	8240DB007982
44055	246	8240DB003616
44056	246	8240DB003618
44057	246	8240DB003619
44058	246	8240DB003620
44059	246	8240DB003621
44060	246	8240DB003622
44061	246	8240DB003623
44062	247	8240DB003624
44063	247	8240DB003586
44064	247	8240DB003587
44065	247	8240DB003588
44066	247	8240DB003590
44067	247	8240DB003589
44068	247	8240DB003591
44069	247	8240DB003592
44070	247	8240DB003605
44071	247	8240DB003606
44072	247	8240DB003607
44073	247	8240DB003608
44074	247	8240DB003609
44075	247	8240DB003598
44076	247	8240DB004465
44077	247	8240DB000944
44078	247	8240DB000945
44079	247	8240DB000947
44080	247	8240DB000948
44081	247	8240DB007725
44082	247	8240DB000950
44083	247	8240DB000928
44084	247	8240DB000929
44085	247	8240DB000930
44086	247	8240DB000931
44087	247	8240DB000587
44088	247	8240DB000588
44089	247	8240DB000589
44090	247	8240DB000590
44091	247	8220DB000591
44092	247	8220DB000592
44093	247	8220DB000593
44094	247	8220DB000594
44095	247	8220DB000595
44096	247	8220DB000596
44097	247	8220DB000597
44098	247	8220DB000598
44099	247	8220DB000599
44100	247	8220DB000600
44101	247	8220DB000601
44102	247	8220DB000602
44103	247	8220DB000603
44104	247	8220DB000604
44105	247	8220DB000605
44106	247	8220DB000606
44107	247	8220DB000607
44108	247	8220DB000608
44109	247	8220DB000609
44110	247	8220DB000610
44111	247	8220DB000611
44112	247	8220DB000612
44113	247	8220DB000613
44114	247	8220DB000614
44115	247	8220DB000615
44116	247	8220DB000616
44117	247	8220DB000617
44118	247	8220DB000618
44119	247	8220DB000619
44120	247	8220DB000675
44121	247	8220DB000620
44122	247	8220DB007569
44123	248	8220DB007591
44124	248	8220DB000496
44125	248	8220DB000515
44126	248	8220DB000516
44127	248	8220DB004384
44128	248	8220DB000518
44129	248	8220DB000519
44130	248	8220DB000521
44131	248	8220DB000522
44132	248	8220DB000523
44133	248	8220DB000525
44134	248	8220DB000526
44135	248	8220DB000527
44136	248	8220DB000528
44137	248	8220DB000529
44138	248	8220DB000530
44139	248	8220DB000531
44140	248	8220DB000709
44141	248	8220DB000532
44142	248	8220DB000533
44143	248	8220DB000534
44144	248	8220DB000535
44145	248	8220DB000536
44146	248	8220DB000537
44147	248	8220DB000538
44148	248	8220DB000539
44149	248	8220DB000540
44150	248	8220DB000541
44151	248	8220DB000542
44152	248	8240DB000543
44153	248	8240DB000544
44154	248	8240DB000545
44155	248	8240DB000546
44156	248	8240DB000547
44157	248	8240DB000548
44158	248	8240DB000549
44159	248	8240DB000550
44160	248	8240DB000551
44161	248	8240DB000552
44162	248	8240DB000553
44163	248	8240DB000554
44164	248	8240DB000555
44165	248	8240DB000557
44166	248	8240DB000558
44167	248	8240DB000559
44168	248	8240DB000560
44169	248	8240DB000562
44170	248	8240DB000563
44171	248	8240DB000564
44172	248	8240DB000565
44173	248	8240DB000566
44174	249	8240DB000707
44175	249	8240DB000568
44176	249	8240DB000569
44177	249	8240DB000570
44178	249	8240DB000571
44179	249	8240DB000572
44180	249	8240DB000573
44181	249	8240DB000574
44182	249	8240DB000575
44183	249	8240DB000576
44184	249	8240DB000577
44185	249	8240DB000579
44186	249	8240DB000580
44187	249	8240DB000581
44188	249	8240DB000582
44189	249	8240DB000583
44190	249	8240DB000584
44191	249	8240DB000585
44192	249	8240DB000586
44193	249	8240DB000587
44194	249	8240DB000588
44195	249	8240DB000589
44196	249	8240DB000590
44197	249	8220DB000591
44198	249	8220DB000592
44199	249	8220DB000593
44200	249	8220DB000594
44201	249	8220DB000595
44202	249	8220DB000596
44203	249	8220DB000597
44204	249	8220DB000598
44205	249	8220DB000599
44206	249	8220DB000600
44207	249	8220DB000601
44208	249	8220DB000602
44209	249	8220DB000603
44210	249	8220DB000604
44211	249	8220DB000605
44212	249	8220DB000606
44213	249	8220DB000607
44214	249	8220DB000608
44215	249	8220DB000609
44216	249	8220DB000610
44217	249	8220DB000611
44218	249	8220DB000612
44219	249	8220DB000613
44220	249	8220DB000614
44221	249	8220DB000615
44222	249	8220DB000616
44223	249	8220DB000617
44224	249	8220DB000618
44225	249	8220DB000619
44226	249	8220DB000675
44227	249	8220DB000620
44228	249	8220DB007569
44229	250	8230DB006290
44230	250	8230DB007120
44231	250	8230DB007119
44232	250	8230DB007127
44233	250	8230DB007143
44234	250	8230DB007796
44235	250	8230DB003368
44236	250	8230DB007762
44237	250	8230DB007137
44238	250	8230DB007139
44239	250	8230DB004623
44240	250	8230DB004619
44241	250	8230DB007776
44242	250	8230DB007748
44243	250	8230DB007783
44244	250	8230DB002681
44245	250	8230DB004691
44246	250	8230DB002682
44247	250	8230DB004796
44248	250	8230DB004690
44249	250	8230DB004411
44250	250	8230DB007754
44251	251	8230DB004795
44252	251	8230DB07755
44253	251	8230DB004688
44254	251	8230DB004689
44255	251	8230DB004410
44256	251	8230DB002678
44257	251	8230DB007784
44258	251	8230DB007780
44259	251	8230DB007803
44260	251	8230DB007386
44261	251	8230DB004607
44262	251	8230DB007140
44263	251	8230DB007141
44264	251	8230DB007138
44265	251	8230DB007763
44266	251	8230DB003370
44267	251	8230DB007797
44268	251	8230DB007231
44269	251	8230DB007128
44270	251	8230DB007117
44271	251	8230DB007118
44272	252	8230DB007791
44273	252	8230DB007782
44274	252	8230DB001963
44275	252	8230DB004549
44276	252	8230DB001964
44277	252	8230DB004674
44278	252	8230DB004663
44279	252	8230DB004664
44280	252	8230DB002114
44281	252	8230DB002115
44282	252	8230DB006011
44283	252	8230DB002133
44284	252	8230DB006247
44285	252	8230DB007757
44286	252	8230DB007473
44287	252	8230DB007784
44288	252	8230DB007780
44289	252	8230DB007803
44290	252	8230DB007386
44291	252	8230DB007761
44292	252	8230DB004632
44293	252	8230DB005164
44294	252	8230DB004633
44295	252	8230DB002217
44296	252	8230DB002218
44297	252	8230DB002219
44298	252	8230DB003365
44299	252	8230DB003366
44300	252	8230DB003367
44301	252	8230DB003886
44302	252	8230DB003887
44303	252	8230DB003888
44304	252	8230DB007186
44305	252	8230DB007187
44306	252	8260DB003954
44307	252	8260DB003955
44308	252	8260DB003956
44309	252	8260DB003957
44310	252	8260DB007798
44311	252	8260DB003993
44312	253	8260DB007820
44313	253	8260DB003995
44314	253	8260DB003996
44315	253	8260DB003997
44316	253	8260DB003998
44317	253	8260DB003999
44318	253	8260DB004000
44319	253	8230DB004001
44320	253	8230DB003949
44321	253	8230DB003950
44322	253	8230DB003372
44323	253	8230DB003373
44324	253	8230DB003374
44325	253	8230DB002233
44326	253	8230DB002232
44327	253	8230DB004601
44328	253	8230DB005058
44329	253	8230DB004602
44330	253	8230DB007760
44331	253	8230DB004619
44332	253	8230DB007776
44333	253	8230DB007748
44334	253	8230DB007783
44335	253	8230DB002680
44336	253	8230DB007756
44337	253	8230DB007750
44338	253	8230DB002156
44339	253	8230DB006014
44340	253	8230DB002158
44341	253	8230DB002159
44342	253	8230DB004409
44343	253	8230DB004550
44344	253	8230DB004551
44345	253	8230DB001965
44346	253	8230DB001966
44347	253	8230DB007781
44348	254	8260DB007812
44349	254	8260DB007764
44350	254	8260DB007804
44351	254	8260DB007814
44352	254	8260DB007816
44353	254	8260DB003935
44354	254	8260DB003936
44355	254	8260DB007110
44356	254	8260DB003938
44357	254	8260DB007747
44358	254	8260DB004003
44359	254	8260DB007770
44360	254	8260DB004404
44361	254	8260DB004405
44362	254	8260DB007785
44363	254	8260DB003991
44364	254	8260DB07758
44365	254	8260DB007798
44366	254	8260DB003993
44367	255	8260DB007820
44368	255	8260DB003995
44369	255	8260DB003996
44370	255	8260DB003997
44371	255	8260DB003958
44372	255	8260DB003959
44373	255	8260DB007234
44374	255	8260DB004002
44375	255	8260DB005112
44376	255	8260DB007771
44377	255	8260DB007767
44378	255	8260DB007744
44379	255	8260DB003899
44380	255	8260DB003900
44381	255	8260DB003901
44382	255	8260DB003902
44383	255	8260DB003904
44384	255	8260DB007817
44385	255	8260DB007815
44386	255	8260DB007805
44387	255	8260DB007765
44388	256	8260DB007820
44389	256	8260DB003995
44390	256	8260DB003996
44391	256	8260DB003997
44392	256	8260DB003958
44393	256	8260DB003959
44394	256	8260DB003960
44395	256	8260DB006156
44396	256	8260DB006165
44397	256	8260DB006157
44398	256	8260DB006158
44399	256	8260DB007314
44400	256	8260DB007778
44401	256	8260DB003922
44402	256	8260DB003923
44403	256	8260DB007079
44404	256	8260DB007080
44405	256	8260DB007081
44406	256	8260DB007565
44407	256	8260DB007746
44408	256	8260DB007082
44409	256	8260DB007083
44410	256	8260DB007789
44411	256	8260DB007084
44412	256	8260DB007811
44413	256	8260DB007794
44414	256	8260DB007805
44415	256	8260DB007765
44416	257	8260DB007812
44417	257	8260DB007764
44418	257	8260DB007804
44419	257	8260DB007795
44420	257	8260DB007788
44421	257	8260DB007085
44422	257	8260DB007790
44423	257	8260DB007086
44424	257	8260DB007087
44425	257	8260DB007745
44426	257	8260DB007088
44427	257	8260DB007089
44428	257	8260DB007802
44429	257	8260DB007091
44430	257	8260DB003910
44431	257	8260DB003911
44432	257	8260DB007777
44433	257	8260DB007313
44434	257	8260DB006164
44435	257	8260DB007712
44436	257	8260DB006159
44437	257	8260DB006160
44438	257	8260DB006161
44439	257	8260DB003991
44440	257	8260DB07758
44441	257	8260DB007798
44442	257	8260DB003993
44443	258	8220DB007844
44444	258	8220DB002502
44445	258	8220DB004469
44446	258	8220DB007834
44447	258	8220DB007827
44448	258	8220DB001738
44449	258	8220DB001739
44450	258	8220DB000525
44451	258	8220DB000526
44452	258	8220DB000527
44453	258	8220DB000528
44454	258	8220DB000529
44455	258	8220DB004791
44456	258	8220DB004792
44457	258	8220DB000662
44458	258	8220DB007843
44459	258	8220DB007840
44460	258	8220DB001185
44461	258	8220DB001186
44462	258	8220DB001187
44463	258	8220DB001188
44464	258	8220DB007831
44465	258	8220DB000237
44466	258	8220DB000206
44467	258	8220DB001643
44468	258	8220DB001644
44469	258	8220DB001605
44470	258	8220DB000128
44471	258	8220DB000129
44472	258	8220DB000130
44473	258	8220DB000131
44474	258	8220DB000132
44475	258	8220DB007832
44476	258	8220DB007458
44477	258	8220DB007836
44478	258	8220DB000979
44479	258	8220DB007845
44480	258	8220DB000980
44481	258	8220DB000981
44482	258	8220DB001576
44483	258	8220DB001577
44484	258	8220DB001578
44485	258	8220DB004364
44486	258	8240DB001579
44487	258	8240DB001580
44488	258	8240DB007237
44489	258	8240DB007241
44490	258	8240DB007247
44491	258	8240DB007243
44492	258	8240DB007334
44493	258	8240DB006274
44494	258	8240DB001838
44495	258	8240DB002338
44496	258	8240DB002290
44497	258	8240DB006179
44498	258	8240DB007297
44499	258	8240DB001813
44500	258	8240DB001814
44501	258	8240DB000661
44502	259	8240DB004747
44503	259	8240DB002960
44504	259	8240DB001545
44505	259	8240DB001840
44506	259	8240DB001841
44507	259	8240DB001842
44508	259	8240DB007298
44509	259	8240DB002294
44510	259	8240DB006039
44511	259	8240DB001816
44512	259	8240DB006171
44513	259	8240DB004974
44514	259	8240DB004976
44515	259	8240DB002510
44516	259	8240DB007242
44517	259	8240DB007238
44518	259	8240DB007224
44519	259	8240DB001581
44520	259	8240DB001582
44521	259	8220DB004793
44522	259	8220DB006068
44523	259	8220DB001584
44524	259	8220DB000983
44525	259	8220DB000984
44526	259	8220DB000985
44527	259	8220DB000987
44528	259	8220DB000988
44529	259	8220DB000138
44530	259	8220DB000139
44531	259	8220DB000140
44532	259	8220DB000141
44533	259	8220DB000142
44534	259	8220DB000143
44535	259	8240DB001645
44536	259	8220DB001646
44537	259	8220DB000211
44538	259	8220DB000212
44539	259	8220DB007851
44540	259	8220DB007830
44541	259	8220DB001190
44542	259	8220DB001191
44543	259	8220DB001192
44544	259	8220DB001193
44545	259	8220DB001194
44546	259	8220DB001195
44547	259	8220DB007839
44548	259	8220DB000674
44549	259	8220DB004389
44550	259	8220DB004390
44551	259	8220DB000609
44552	259	8220DB000610
44553	259	8220DB000611
44554	259	8220DB000612
44555	259	8220DB000613
44556	259	8220DB001740
44557	259	8220DB007852
44558	259	8220DB002278
44559	259	8220DB002279
44560	259	8220DB007842
44561	260	8220DB000395
44562	260	8220DB000396
44563	260	8220DB000397
44564	260	8220DB000398
44565	260	8220DB000399
44566	260	8220DB007859
44567	260	8220DB007732
44568	260	8220DB007392
44569	260	8220DB000312
44570	260	8220DB007857
44571	260	8220DB007855
44572	260	8220DB001447
44573	260	8220DB002637
44574	260	8220DB002721
44575	260	8220DB007012
44576	260	8230DB002201
44577	260	8230DB007239
44578	260	8230DB004401
44579	260	8230DB002213
44580	260	8230DB002214
44581	260	8230DB002215
44582	260	8230DB002216
44583	260	8230DB004599
44584	260	8230DB007184
44585	260	8230DB002225
44586	260	8230DB004620
44587	260	8230DB007563
44588	260	8230DB007797
44589	260	8230DB007231
44590	260	8230DB007128
44591	260	8230DB007117
44592	260	8230DB007118
44593	261	8230DB006290
44594	261	8230DB007120
44595	261	8230DB007119
44596	261	8230DB007127
44597	261	8230DB007143
44598	261	8230DB007796
44599	261	8230DB007168
44600	261	8230DB004616
44601	261	8230DB002227
44602	261	8230DB007049
44603	261	8230DB002236
44604	261	8230DB005056
44605	261	8230DB002239
44606	261	8230DB002241
44607	261	8230DB002242
44608	261	8220DB007435
44609	261	8220DB002722
44610	261	8220DB004413
44611	261	8220DB001476
44612	261	8220DB007854
44613	261	8220DB007856
44614	261	8220DB007883
44615	261	8220DB000315
44616	261	8220DB007733
44617	261	8220DB007861
44618	261	8220DB000351
44619	261	8220DB000352
44620	261	8220DB000353
44621	262	8250DB004952
44622	262	8250DB000768
44623	262	8220DB000769
44624	262	8220DB000770
44625	262	8220DB000771
44626	262	8220DB000772
44627	262	8220DB000773
44628	262	8220DB000774
44629	262	8220DB000775
44630	262	8220DB000776
44631	262	8220DB000777
44632	262	8220DB000906
44633	262	8220DB000909
44634	262	8220DB000786
44635	262	8220DB002905
44636	262	8220DB000494
44637	262	8220DB007587
44638	262	8220DB007732
44639	262	8220DB007392
44640	262	8220DB000312
44641	262	8220DB007857
44642	262	8220DB007855
44643	262	8220DB001447
44644	262	8220DB002637
44645	262	8220DB002721
44646	262	8220DB007012
44647	262	8230DB002201
44648	262	8230DB004401
44649	262	8230DB002213
44650	262	8230DB002214
44651	262	8230DB002215
44652	262	8230DB007184
44653	262	8230DB007050
44654	262	8230DB007185
44655	262	8230DB007186
44656	262	8230DB007187
44657	262	8260DB003954
44658	262	8260DB003955
44659	262	8260DB003956
44660	262	8260DB003957
44661	262	8260DB003958
44662	262	8260DB003959
44663	262	8260DB003960
44664	262	8260DB006156
44665	262	8260DB006165
44666	262	8260DB006157
44667	262	8260DB006158
44668	262	8260DB007314
44669	262	8260DB003964
44670	262	8260DB003965
44671	262	8260DB003968
44672	262	8260DB007694
44673	262	8260DB003966
44674	262	8260DB005113
44675	262	8260DB003918
44676	263	8260DB003980
44677	263	8260DB006089
44678	263	8260DB003917
44679	263	8260DB003981
44680	263	8260DB003982
44681	263	8260DB007704
44682	263	8260DB003983
44683	263	8260DB003985
44684	263	8260DB003986
44685	263	8260DB007313
44686	263	8260DB006164
44687	263	8260DB007712
44688	263	8260DB006159
44689	263	8260DB006160
44690	263	8260DB006161
44691	263	8260DB003991
44692	263	8260DB07758
44693	263	8260DB003998
44694	263	8260DB003999
44695	263	8260DB004000
44696	263	8230DB004001
44697	263	8230DB007193
44698	263	8230DB007049
44699	263	8230DB002236
44700	263	8230DB002239
44701	263	8230DB002241
44702	263	8230DB002242
44703	263	8220DB007435
44704	263	8220DB002722
44705	263	8220DB004413
44706	263	8220DB001476
44707	263	8220DB007854
44708	263	8220DB007856
44709	263	8220DB007883
44710	263	8220DB000315
44711	263	8220DB007733
44712	263	8220DB007861
44713	263	8220DB002809
44714	263	8220DB002810
44715	263	8220DB002811
44716	263	8220DB000785
44717	263	8220DB000846
44718	263	8220DB000847
44719	263	8220DB000848
44720	263	8220DB002795
44721	263	8220DB000756
44722	263	8220DB000757
44723	263	8220DB000758
44724	263	8220DB000759
44725	263	8220DB000760
44726	263	8220DB000761
44727	263	8220DB000762
44728	263	8220DB000763
44729	264	8260DB003980
44730	264	8260DB006089
44731	264	8260DB003917
44732	264	8260DB003981
44733	264	8260DB003982
44734	264	8260DB007704
44735	264	8260DB003983
44736	264	8260DB003985
44737	264	8260DB003986
44738	264	8260DB003987
44739	264	8260DB003989
44740	264	8260DB003990
44741	264	8260DB003991
44742	264	8260DB07758
44743	264	8260DB003998
44744	264	8260DB003999
44745	264	8260DB004000
44746	264	8230DB004001
44747	264	8230DB007193
44748	264	8230DB007049
44749	264	8230DB002236
44750	264	8230DB002239
44751	264	8230DB002241
44752	264	8230DB002242
44753	264	8220DB007435
44754	264	8220DB002722
44755	264	8220DB004413
44756	264	8220DB001476
44757	264	8220DB007854
44758	264	8220DB007856
44759	264	8220DB007883
44760	264	8220DB000315
44761	264	8220DB007733
44762	264	8220DB007861
44763	264	8220DB002809
44764	264	8220DB002810
44765	264	8220DB002811
44766	264	8220DB000785
44767	265	8250DB004952
44768	265	8250DB000768
44769	265	8220DB000769
44770	265	8220DB000770
44771	265	8220DB000771
44772	265	8220DB000772
44773	265	8220DB000773
44774	265	8220DB000774
44775	265	8220DB000775
44776	265	8220DB000776
44777	265	8220DB000777
44778	265	8220DB000906
44779	265	8220DB000909
44780	265	8220DB000786
44781	265	8220DB002905
44782	265	8220DB000494
44783	265	8220DB007587
44784	265	8220DB007732
44785	265	8220DB007392
44786	265	8220DB000312
44787	265	8220DB007857
44788	265	8220DB007855
44789	265	8220DB001447
44790	265	8220DB002637
44791	265	8220DB002721
44792	265	8220DB007012
44793	265	8230DB002201
44794	265	8230DB004401
44795	265	8230DB002213
44796	265	8230DB002214
44797	265	8230DB002215
44798	265	8230DB007184
44799	265	8230DB007050
44800	265	8230DB007185
44801	265	8230DB007186
44802	265	8230DB007187
44803	265	8230DB003947
44804	265	8230DB003892
44805	265	8230DB003893
44806	265	8230DB003896
44807	265	8260DB003897
44808	265	8260DB003898
44809	265	8260DB003899
44810	265	8260DB003900
44811	265	8260DB003901
44812	265	8260DB003902
44813	265	8260DB003904
44814	265	8260DB003905
44815	265	8260DB007085
44816	265	8260DB007790
44817	265	8260DB007086
44818	265	8260DB007087
44819	265	8260DB007745
44820	265	8260DB007088
44821	265	8260DB007089
44822	265	8260DB007802
44823	265	8260DB007091
44824	265	8260DB003910
44825	265	8260DB003911
44826	266	8260DB003921
44827	266	8260DB003922
44828	266	8260DB003923
44829	266	8260DB007079
44830	266	8260DB007080
44831	266	8260DB007081
44832	266	8260DB007565
44833	266	8260DB007746
44834	266	8260DB007082
44835	266	8260DB007083
44836	266	8260DB007789
44837	266	8260DB007084
44838	266	8260DB007108
44839	266	8260DB003935
44840	266	8260DB003936
44841	266	8260DB007110
44842	266	8260DB003938
44843	266	8260DB003939
44844	266	8260DB003940
44845	266	8260DB003941
44846	266	8230DB003943
44847	266	8230DB003945
44848	266	8230DB003946
44849	266	8230DB004001
44850	266	8230DB007193
44851	266	8230DB007049
44852	266	8230DB002236
44853	266	8230DB002239
44854	266	8230DB002241
44855	266	8230DB002242
44856	266	8220DB007435
44857	266	8220DB002722
44858	266	8220DB004413
44859	266	8220DB001476
44860	266	8220DB007854
44861	266	8220DB007856
44862	266	8220DB007883
44863	266	8220DB000315
44864	266	8220DB007733
44865	266	8220DB007861
44866	266	8220DB002809
44867	266	8220DB002810
44868	266	8220DB002811
44869	266	8220DB000785
44870	266	8220DB000846
44871	266	8220DB000847
44872	266	8220DB000848
44873	266	8220DB002795
44874	266	8220DB000756
44875	266	8220DB000757
44876	266	8220DB000758
44877	266	8220DB000759
44878	266	8220DB000760
44879	266	8220DB000761
44880	266	8220DB000762
44881	266	8220DB000763
44882	267	8250DB004952
44883	267	8250DB000768
44884	267	8220DB000769
44885	267	8220DB000770
44886	267	8220DB000771
44887	267	8220DB000772
44888	267	8220DB000773
44889	267	8220DB000774
44890	267	8220DB000775
44891	267	8220DB000776
44892	267	8220DB000777
44893	267	8220DB000906
44894	267	8220DB000909
44895	267	8220DB000786
44896	267	8220DB002905
44897	267	8220DB000494
44898	267	8220DB007587
44899	267	8220DB007732
44900	267	8220DB007392
44901	267	8220DB000312
44902	267	8220DB007857
44903	267	8220DB007855
44904	267	8220DB001447
44905	267	8220DB002637
44906	267	8220DB002721
44907	267	8220DB007012
44908	267	8230DB002201
44909	267	8230DB004401
44910	267	8230DB002213
44911	267	8230DB002214
44912	267	8230DB002215
44913	267	8230DB007184
44914	267	8230DB007050
44915	267	8230DB007185
44916	267	8230DB007186
44917	267	8230DB007187
44918	267	8230DB003947
44919	267	8230DB003892
44920	267	8230DB003893
44921	267	8230DB003896
44922	267	8260DB003897
44923	267	8260DB003898
44924	267	8260DB003899
44925	267	8260DB003900
44926	267	8260DB003901
44927	267	8260DB003902
44928	267	8260DB003904
44929	267	8260DB003905
44930	267	8260DB003906
44931	267	8260DB003907
44932	267	8260DB003908
44933	267	8260DB003909
44934	267	8260DB005118
44935	267	8260DB003910
44936	267	8260DB003911
44937	268	8260DB003921
44938	268	8260DB003922
44939	268	8260DB003923
44940	268	8260DB003112
44941	268	8260DB003924
44942	268	8260DB003927
44943	268	8260DB003928
44944	268	8260DB003929
44945	268	8260DB007108
44946	268	8260DB003935
44947	268	8260DB003936
44948	268	8260DB007110
44949	268	8260DB003938
44950	268	8260DB003939
44951	268	8260DB003940
44952	268	8260DB003941
44953	268	8230DB003943
44954	268	8230DB003945
44955	268	8230DB003946
44956	268	8230DB004001
44957	268	8230DB007193
44958	268	8230DB007049
44959	268	8230DB002236
44960	268	8230DB002239
44961	268	8230DB002241
44962	268	8230DB002242
44963	268	8220DB007435
44964	268	8220DB002722
44965	268	8220DB004413
44966	268	8220DB001476
44967	268	8220DB007854
44968	268	8220DB007856
44969	268	8220DB007883
44970	268	8220DB000315
44971	268	8220DB007733
44972	268	8220DB007861
44973	268	8220DB002809
44974	268	8220DB002810
44975	268	8220DB002811
44976	268	8220DB000785
44977	268	8220DB000846
44978	268	8220DB000847
44979	268	8220DB000848
44980	268	8220DB002795
44981	268	8220DB000756
44982	268	8220DB000757
44983	268	8220DB000758
44984	268	8220DB000759
44985	268	8220DB000760
44986	268	8220DB000761
44987	268	8220DB000762
44988	268	8220DB000763
44989	269	8230DB003890
44990	269	8230DB003891
44991	269	8230DB007187
44992	269	8230DB004001
44993	269	8230DB003949
44994	269	8230DB003950
44995	269	8230DB003372
44996	269	8230DB003373
44997	269	8230DB003374
44998	269	8230DB002233
44999	269	8230DB002232
45000	269	8230DB002234
45001	269	8230DB002236
45002	269	8230DB002239
45003	269	8230DB002241
45004	269	8230DB002242
45005	269	8220DB007435
45006	269	8220DB002722
45007	269	8220DB004413
45008	269	8220DB001476
45009	269	8220DB007854
45010	269	8220DB007856
45011	269	8220DB007883
45012	269	8220DB000315
45013	269	8220DB007733
45014	269	8220DB007861
45015	269	8220DB002809
45016	269	8220DB002810
45017	269	8220DB002811
45018	269	8220DB000785
45019	269	8220DB000846
45020	269	8220DB000847
45021	269	8220DB000848
45022	269	8220DB002795
45023	269	8220DB000756
45024	269	8220DB000757
45025	269	8220DB000758
45026	269	8220DB000759
45027	269	8220DB000760
45028	269	8220DB000761
45029	269	8220DB000762
45030	269	8220DB000763
45031	270	8250DB004952
45032	270	8250DB000768
45033	270	8220DB000769
45034	270	8220DB000770
45035	270	8220DB000771
45036	270	8220DB000772
45037	270	8220DB000773
45038	270	8220DB000774
45039	270	8220DB000775
45040	270	8220DB000776
45041	270	8220DB000777
45042	270	8220DB000906
45043	270	8220DB000909
45044	270	8220DB000786
45045	270	8220DB002905
45046	270	8220DB000494
45047	270	8220DB007587
45048	270	8220DB007732
45049	270	8220DB007392
45050	270	8220DB000312
45051	270	8220DB007857
45052	270	8220DB007855
45053	270	8220DB001447
45054	270	8220DB002637
45055	270	8220DB002721
45056	270	8220DB007012
45057	270	8230DB002201
45058	270	8230DB004401
45059	270	8230DB002213
45060	270	8230DB002214
45061	270	8230DB002215
45062	270	8230DB002216
45063	270	8230DB002217
45064	270	8230DB002218
45065	270	8230DB002219
45066	270	8230DB003365
45067	270	8230DB003366
45068	270	8230DB003367
45069	270	8230DB003886
45070	270	8230DB003887
45071	270	8230DB007810
45072	271	8220DB006074
45073	271	8220DB002905
45074	271	8220DB000494
45075	271	8220DB007859
45076	271	8220DB007732
45077	271	8220DB007392
45078	271	8220DB000312
45079	271	8220DB007857
45080	271	8220DB007855
45081	271	8220DB001447
45082	271	8220DB002637
45083	271	8220DB002721
45084	271	8220DB007012
45085	271	8230DB002201
45086	271	8230DB004401
45087	271	8230DB002213
45088	271	8230DB002214
45089	271	8230DB002215
45090	271	8230DB002216
45091	271	8230DB004599
45092	271	8230DB002217
45093	271	8230DB002218
45094	271	8230DB002219
45095	271	8230DB003365
45096	271	8230DB003366
45097	271	8230DB003367
45098	271	8230DB003886
45099	271	8230DB003887
45100	271	8230DB007186
45101	271	8230DB007187
45102	271	8260DB003954
45103	271	8260DB003955
45104	271	8260DB003956
45105	271	8260DB003957
45106	271	8260DB007798
45107	271	8260DB003993
45108	272	8260DB007820
45109	272	8260DB003995
45110	272	8260DB003996
45111	272	8260DB003997
45112	272	8260DB003998
45113	272	8260DB003999
45114	272	8260DB004000
45115	272	8230DB004001
45116	272	8230DB003949
45117	272	8230DB003950
45118	272	8230DB003372
45119	272	8230DB003373
45120	272	8230DB003374
45121	272	8230DB002233
45122	272	8230DB002232
45123	272	8230DB002234
45124	272	8230DB002236
45125	272	8230DB002239
45126	272	8230DB002241
45127	272	8230DB002242
45128	272	8220DB007435
45129	272	8220DB002722
45130	272	8220DB004413
45131	272	8220DB001476
45132	272	8220DB007854
45133	272	8220DB007856
45134	272	8220DB007883
45135	272	8220DB000315
45136	272	8220DB007733
45137	272	8220DB007861
45138	272	8220DB002809
45139	272	8220DB002810
45140	272	8220DB002811
45141	272	8220DB000785
45142	272	8220DB000786
45143	273	8220DB006074
45144	273	8220DB002905
45145	273	8220DB000494
45146	273	8220DB007587
45147	273	8220DB007732
45148	273	8220DB007392
45149	273	8220DB000312
45150	273	8220DB007857
45151	273	8220DB007855
45152	273	8220DB001447
45153	273	8220DB002637
45154	273	8220DB002721
45155	273	8220DB007012
45156	273	8230DB002201
45157	273	8230DB004401
45158	273	8230DB002213
45159	273	8230DB002214
45160	273	8230DB002215
45161	273	8230DB002216
45162	273	8230DB004599
45163	273	8230DB002217
45164	273	8230DB002218
45165	273	8230DB002219
45166	273	8230DB003365
45167	273	8230DB003366
45168	273	8230DB003367
45169	273	8230DB003886
45170	273	8230DB003887
45171	273	8230DB007186
45172	273	8230DB007187
45173	273	8260DB003954
45174	273	8260DB003955
45175	273	8260DB003956
45176	273	8260DB003957
45177	273	8260DB003958
45178	273	8260DB003959
45179	273	8260DB007234
45180	273	8260DB004002
45181	273	8260DB005112
45182	273	8260DB007771
45183	274	8260DB004003
45184	274	8260DB007770
45185	274	8260DB004404
45186	274	8260DB004405
45187	274	8260DB007785
45188	274	8260DB003991
45189	274	8260DB07758
45190	274	8260DB003998
45191	274	8260DB003999
45192	274	8260DB004000
45193	274	8230DB004001
45194	274	8230DB003949
45195	274	8230DB003950
45196	274	8230DB003372
45197	274	8230DB003373
45198	274	8230DB003374
45199	274	8230DB002233
45200	274	8230DB002232
45201	274	8230DB002234
45202	274	8230DB002236
45203	274	8230DB002239
45204	274	8230DB002241
45205	274	8230DB002242
45206	274	8220DB007435
45207	274	8220DB002722
45208	274	8220DB004413
45209	274	8220DB001476
45210	274	8220DB007854
45211	274	8220DB007856
45212	274	8220DB007883
45213	274	8220DB000315
45214	274	8220DB007733
45215	274	8220DB007861
45216	274	8220DB002809
45217	274	8220DB002810
45218	274	8220DB002811
45219	274	8220DB000785
45220	274	8220DB000786
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

SELECT pg_catalog.setval('public.route_connections_id_seq', 45220, true);


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


-- Completed on 2022-07-28 09:44:15

--
-- PostgreSQL database dump complete
--

