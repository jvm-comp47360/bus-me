--
-- PostgreSQL database dump
--

-- Dumped from database version 14.3
-- Dumped by pg_dump version 14.3

-- Started on 2022-07-09 11:54:32

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

CREATE SCHEMA public;


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
1	1
2	11
3	116
4	118
5	120
6	122
7	123
8	13
9	130
10	14
11	140
12	142
13	145
14	15
15	150
16	151
17	16
18	26
19	27
20	33
21	37
22	38
23	39
24	4
25	40
26	41
27	42
28	43
29	44
30	47
31	49
32	53
33	61
34	65
35	68
36	69
37	7
38	70
39	79
40	83
41	84
42	9
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
8220DB001005	Limewood	1005	53.3909514066	-6.1819170834
8220DB001013	Earlsfort Terrace	1013	53.3354815055	-6.2575568807
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
8220DB001396	Crumlin Pool	1396	53.3249002682	-6.3149601372
8220DB001397	Kildare Road	1397	53.3250914014	-6.3138567001
8220DB001398	Windmill Road	1398	53.3253013794	-6.3102754507
8220DB001399	Monasterboice Road	1399	53.3251428006	-6.3054327031
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
8220DB002328	St Agnes Road	2328	53.3197047893	-6.3155701341
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
8220DB002450	Scoil Una Naofa	2450	53.3202311000	-6.3076687892
8220DB002452	St Peter's Road	2452	53.3161898762	-6.3321586972
8220DB002453	Limekiln Grove	2453	53.3148278808	-6.3305308234
8220DB002462	Greenhills CU	2462	53.3138231907	-6.3300297323
8220DB002463	St Peter's Road	2463	53.3153044515	-6.3311876243
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
8220DB002795	Leeson Village	2795	53.3285299793	-6.2462646210
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
8220DB003355	Slane Road	3355	53.3254823571	-6.2977178017
8220DB003356	Bangor Road	3356	53.3248516316	-6.3007603935
8220DB003562	Glenmalure Square	3562	53.3145538608	-6.2462973818
8220DB003952	Rutland Avenue	3952	53.3316839465	-6.2945579920
8220DB004320	Heuston Station	4320	53.3466406640	-6.2920835141
8220DB004322	Ashington Park	4322	53.3734731712	-6.3112546685
8220DB004363	Berryfield Road	4363	53.3817122371	-6.3034425060
8220DB004364	Cappagh Hospital	4364	53.3929113883	-6.3225291854
8220DB004369	Oakwood Road	4369	53.3972652002	-6.2923574914
8220DB004371	Drumcliffe Drive	4371	53.3659285746	-6.2926794648
8220DB004372	Fitzmaurice Road	4372	53.3820484820	-6.2761000709
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
8220DB004515	St James's Dental	4515	53.3407051644	-6.2937324314
8220DB004516	St James's Hospital	4516	53.3399500754	-6.2968712355
8220DB004518	Fairview Strand	4518	53.3625824999	-6.2411399295
8220DB004521	College Green	4521	53.3443010559	-6.2601710511
8220DB004522	College Green	4522	53.3442624890	-6.2606081799
8220DB004523	Kinvara Avenue	4523	53.3691463222	-6.3173618552
8220DB004524	Ashington Avenue	4524	53.3716760973	-6.3157442282
8220DB004525	Ashington Park	4525	53.3734481351	-6.3113909237
8220DB004526	Ashington Avenue	4526	53.3721188871	-6.3152758886
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
8220DB004782	Gracefield Road	4782	53.3825097657	-6.2025711995
8220DB004788	Oakwood Road	4788	53.3969347694	-6.2925060623
8220DB004791	Collins Avenue East	4791	53.3716117546	-6.2076590853
8220DB004792	Clanawley Road	4792	53.3727989042	-6.2095029406
8220DB004793	Avila Park	4793	53.3922672634	-6.3208253753
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
8220DB005025	The Coombe	5025	53.3397630157	-6.2775810597
8220DB005026	Armagh Road	5026	53.3204303650	-6.3052441688
8220DB005060	Dundaniel Road	5060	53.3971670149	-6.2240292406
8220DB005061	Kilbarron Drive	5061	53.3956965209	-6.2248724259
8220DB005097	Kevin Street	5097	53.3381733033	-6.2726894935
8220DB005099	Newmarket Street	5099	53.3389824386	-6.2758104368
8220DB005134	Lally Road	5134	53.3416887629	-6.3302175007
8220DB005140	Mayor Street Lower	5140	53.3511243927	-6.2455324214
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
8220DB007601	Bond Drive	7601	53.3518748034	-6.2101247735
8220DB007602	DCU St Patrick’s	7602	53.3715535145	-6.2534396446
8220DB007603	St Patrick's College	7603	53.3715767255	-6.2531832039
8220DB007615	Granby Place	7615	53.3525081388	-6.2639378290
8220DB007622	Bachelors Walk	7622	53.3470699189	-6.2614401576
8220DB007623	Br an Phoirt Thoir	7623	53.3469141111	-6.2294534272
8220DB007661	Barry Avenue	7661	53.3954073830	-6.3108674535
8220DB007665	Poolbeg Street	7665	53.3468221439	-6.2567789715
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
8220DB007830	Whitehall Colmcille	7830	53.3807506526	-6.2377003743
8220DB007831	Whitehall Colmcille	7831	53.3811699363	-6.2399228696
8220DB007832	Grove Park Road	7832	53.3904147642	-6.2866025364
8220DB007834	East Wall Road	7834	53.3564128940	-6.2317639075
8220DB007836	Glasanaon Road	7836	53.3896974545	-6.2942541871
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
8230DB001135	Marian Road	1135	53.2934427094	-6.2972970119
8230DB001137	Marian Crescent	1137	53.2943662491	-6.2971402630
8230DB001140	Woodbrook Park	1140	53.2932846125	-6.3095593294
8230DB001141	Knocklyon Road	1141	53.2899168921	-6.3110273098
8230DB001142	Knockcullen Rise	1142	53.2876048362	-6.3108785259
8230DB001143	Knockaire	1143	53.2834158745	-6.3133834138
8230DB001144	Dargle Wood	1144	53.2823252783	-6.3150760796
8230DB001145	Scholarstown Road	1145	53.2818119177	-6.3181857024
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
8230DB002114	Ninth Lock Road	2114	53.3242145515	-6.3956015947
8230DB002115	Oakfield	2115	53.3256298971	-6.3952482398
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
8230DB002213	Liffey Valley SC	2213	53.3557776542	-6.3920726228
8230DB002214	Clayton Hotel	2214	53.3560900353	-6.3999329759
8230DB002215	St Loman's Hospital	2215	53.3582062276	-6.4089731657
8230DB002216	Ballyowen Lane	2216	53.3588652801	-6.4159498244
8230DB002217	Esker Lane	2217	53.3595962005	-6.4270406930
8230DB002218	Roselawn	2218	53.3596765184	-6.4324615100
8230DB002219	St Andrews NS	2219	53.3600556757	-6.4366995068
8230DB002225	St Patricks Church	2225	53.3495522066	-6.4500467633
8230DB002227	St Patricks Church	2227	53.3495639204	-6.4502566282
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
8230DB002346	Belgard Square North	2346	53.2900797371	-6.3679011038
8230DB002349	Alderwood	2349	53.2850288716	-6.3784723835
8230DB002351	Blessington Road	2351	53.2832055706	-6.3845254486
8230DB002352	Jobstown House	2352	53.2775372314	-6.3974104819
8230DB002353	Fortunestown Road	2353	53.2791505295	-6.4017589723
8230DB002355	Fortunestown Road	2355	53.2792709316	-6.4020244100
8230DB002357	Jobstown House	2357	53.2779689604	-6.3967645098
8230DB002359	Maplewood Avenue	2359	53.2835900309	-6.3843759663
8230DB002360	Alderwood	2360	53.2846948207	-6.3796848798
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
8230DB002522	Firhouse Centre	2522	53.2814222294	-6.3423462463
8230DB002523	Firhouse College	2523	53.2771069429	-6.3487513797
8230DB002524	Ballycullen Drive	2524	53.2783737436	-6.3467680663
8230DB002532	Old Bawn Centre	2532	53.2756035853	-6.3544324419
8230DB002535	Seskin View Road	2535	53.2810133262	-6.3589186028
8230DB002536	Old Bawn Court	2536	53.2829548506	-6.3595790812
8230DB002538	The Crescent	2538	53.2815345660	-6.3589136266
8230DB002539	Kiltipper Road	2539	53.2765355041	-6.3561810789
8230DB002540	Old Bawn Centre	2540	53.2755315986	-6.3537754304
8230DB002542	Firhouse College	2542	53.2767930272	-6.3500980700
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
8230DB002925	Ballyboden Crescent	2925	53.2833438237	-6.2963037885
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
8230DB004340	The Square	4340	53.2860074546	-6.3737707768
8230DB004342	The Square Tallaght	4342	53.2861056440	-6.3730621139
8230DB004344	The Square	4344	53.2857103567	-6.3724172006
8230DB004347	Tallaght Luas	4347	53.2862220524	-6.3750075131
8230DB004348	Tallaght Luas	4348	53.2866720396	-6.3750504312
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
8230DB006132	Rossmore Drive	6132	53.2956361539	-6.3233283618
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
8230DB007750	Dunawley	7750	53.3257788718	-6.4050157556
8230DB007754	Clayton Hotel	7754	53.3537969976	-6.4011906127
8230DB007756	Clondalkin Fonthill	7756	53.3332606202	-6.4066435206
8230DB007757	Clondalkin Fonthill	7757	53.3335523001	-6.4069479669
8230DB007760	Glen Vale	7760	53.3447268312	-6.4261012369
8230DB007761	Glen Vale	7761	53.3442584251	-6.4267042269
8230DB007762	Haydens Lane	7762	53.3429982734	-6.4464548010
8230DB007763	Haydens Lane	7763	53.3434521377	-6.4461078918
8230DB007776	Buirg an Rí	7776	53.3391606055	-6.4190980196
8230DB007780	Méile an Rí	7780	53.3398289056	-6.4152739076
8230DB007781	Monastery Gate	7781	53.3183570405	-6.3758732058
8230DB007782	Monastery Gate	7782	53.3181136661	-6.3751619766
8230DB007783	Foxdene Avenue	7783	53.3412856296	-6.4112701872
8230DB007784	Foxdene Avenue	7784	53.3411856120	-6.4111837985
8230DB007791	Red Cow Luas	7791	53.3171369630	-6.3701108681
8230DB007796	Somerton	7796	53.3429665550	-6.4523131265
8230DB007797	Somerton	7797	53.3428919595	-6.4521055712
8230DB007801	The Paddocks Drive	7801	53.3490241137	-6.4648160575
8230DB007803	Tor an Rí	7803	53.3390508450	-6.4182761405
8230DB007810	Woodview Heights	7810	53.3517430715	-6.4630810099
8230DB07755	Clayton Hotel	7755	53.3535458644	-6.4012300570
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
8240DB000957	Howth Junction	957	53.3903211487	-6.1578116715
8240DB000992	Coolock Lane	992	53.3981583600	-6.2412068084
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
8240DB001826	Lady's Well Road	1826	53.4059077232	-6.3950858266
8240DB001827	Parslickstown Ave	1827	53.4070419408	-6.3985627381
8240DB001828	Lady's Well Road	1828	53.4070254952	-6.3980068366
8240DB001829	Parslickstown Ave	1829	53.4061988263	-6.3953456019
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
8240DB004825	Bramley Walk	4825	53.3754905162	-6.3902479088
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
8250DB000469	Rock Road	469	53.3028457292	-6.1840721326
8250DB000470	Blackrock Clinic	470	53.3056258500	-6.1889811038
8250DB000471	Blackrock College	471	53.3068708073	-6.1910592991
8250DB000472	Booterstown Station	472	53.3078820347	-6.1949182673
8250DB000473	Grotto Avenue	473	53.3092405754	-6.1973821393
8250DB000475	Bellevue Avenue	475	53.3127061625	-6.2018886746
8250DB000767	UCD	767	53.3052972526	-6.2166805312
8250DB000768	UCD Belfield	768	53.3094181940	-6.2187748298
8250DB000859	Whitethorn Road	859	53.3118411378	-6.2384844193
8250DB000860	Wynnsward Drive	860	53.3081868512	-6.2369241240
8250DB000861	Roebuck Road	861	53.3051704314	-6.2359530102
8250DB000862	Islamic Centre	862	53.3036079757	-6.2342318243
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
8250DB002031	Mounttown Road Lower	2031	53.2861123044	-6.1457093364
8250DB002032	York Road	2032	53.2895238359	-6.1448715610
8250DB002033	Knapton Court	2033	53.2914782410	-6.1433917736
8250DB002034	Vesey Place	2034	53.2927363387	-6.1427971554
8250DB002035	Crofton Road	2035	53.2957723494	-6.1426654217
8250DB002036	Crofton  Avenue	2036	53.2957927316	-6.1382087898
8250DB002039	Dun Laoghaire Stn	2039	53.2948871708	-6.1349026869
8250DB002040	Dun Laoghaire SC	2040	53.2927911878	-6.1353690493
8250DB002041	St Michael's Hosp	2041	53.2935976050	-6.1392343769
8250DB002042	Smith's Villas	2042	53.2936511303	-6.1426674542
8250DB002043	Vesey Place	2043	53.2924735174	-6.1426585447
8250DB002044	Knapton Court	2044	53.2908723468	-6.1437330675
8250DB002045	Tivoli Terrace Sth	2045	53.2890770531	-6.1450409226
8250DB002046	Mounttown Rd Lower	2046	53.2858693159	-6.1456898615
8250DB002051	Lanesville	2051	53.2864489905	-6.1598990081
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
8250DB002866	Dundrum Luas	2866	53.2915803668	-6.2457085584
8250DB002867	Notre Dame School	2867	53.2939975276	-6.2499449707
8250DB002868	The Oaks	2868	53.2938762632	-6.2484197664
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
8250DB003041	Monkstown Crescent	3041	53.2940285175	-6.1495969512
8250DB003042	De Vesci Terrace	3042	53.2950549316	-6.1462370835
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
8250DB003084	Frascati SC	3084	53.3013812515	-6.1811634120
8250DB003085	Blackrock Station	3085	53.3024801381	-6.1783708320
8250DB003091	Avondale Road	3091	53.2736454077	-6.1238768547
8250DB003092	Arnold Grove	3092	53.2720738490	-6.1268245773
8250DB003093	Arnold Park	3093	53.2703459406	-6.1301237596
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
8250DB003181	Carmanhall Road	3181	53.2767339178	-6.2077779044
8250DB003184	Moreen Avenue	3184	53.2761924014	-6.2238457146
8250DB003196	Newtown Park	3196	53.2873803132	-6.1772284026
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
8250DB003243	Somerton	3243	53.2741733398	-6.1484454513
8250DB003244	Garden Centre	3244	53.2725500613	-6.1457866415
8250DB003245	Johnstown Road	3245	53.2706836138	-6.1425238282
8250DB003246	Johnstown Road	3246	53.2710762761	-6.1434963971
8250DB003247	Garden Centre	3247	53.2726452445	-6.1461273925
8250DB003258	Westminister Grove	3258	53.2725411593	-6.1719821118
8250DB003259	Westminister Grove	3259	53.2728336740	-6.1717147246
8250DB003280	Wayside Cottages	3280	53.2377713032	-6.1953831059
8250DB003282	Kiltiernan Village	3282	53.2357465354	-6.1934458029
8250DB003283	Kiltiernan Village	3283	53.2357973490	-6.1938331791
8250DB003284	Golden Ball	3284	53.2392794200	-6.1964433478
8250DB003310	Kilternan NS	3310	53.2425438154	-6.1989282203
8250DB003317	Brewery Road	3317	53.2738941745	-6.2006542817
8250DB003318	Ellesmere	3318	53.2800782809	-6.1970951589
8250DB003320	Farmleigh Avenue	3320	53.2818816986	-6.1950995541
8250DB003321	Stillorgan SC	3321	53.2884693637	-6.2004017791
8250DB003322	Stillorgan SC	3322	53.2880841456	-6.2016779432
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
8250DB003552	Rathsallagh	3552	53.2372028920	-6.1230890853
8250DB003553	Hazelwood	3553	53.2390265276	-6.1230242644
8250DB003554	Shanganagh Bridge	3554	53.2428981515	-6.1217310088
8250DB003555	Aran Avenue	3555	53.2449122993	-6.1217776483
8250DB003556	The Elms	3556	53.2481179653	-6.1232856680
8250DB003557	Sheelin Estate	3557	53.2493962746	-6.1234095485
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
8250DB004333	Marley Court	4333	53.2862368957	-6.2662959935
8250DB004334	Dargle View	4334	53.2838186204	-6.2650290818
8250DB004336	Marley Court	4336	53.2861764128	-6.2664634298
8250DB004349	Blackthorn Drive	4349	53.2758454958	-6.2277138979
8250DB004350	Moreen Avenue	4350	53.2761884315	-6.2229761431
8250DB004353	National School	4353	53.2924078077	-6.1703837815
8250DB004354	Marian Park	4354	53.2874759948	-6.1758443738
8250DB004355	Newtownpark Church	4355	53.2911889275	-6.1717859503
8250DB004397	The Rise	4397	53.2755141994	-6.2515399460
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
8250DB004636	Galloping Green	4636	53.2806915208	-6.1901106895
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
8250DB004779	St Raphaela's Road	4779	53.2831787950	-6.2089929754
8250DB004830	Barnhill Road	4830	53.2772540929	-6.1144662077
8250DB004847	Blackthorn Drive	4847	53.2798151061	-6.2130477969
8250DB004848	Maple Avenue	4848	53.2778139099	-6.2180649871
8250DB004952	UCD	4952	53.3048966218	-6.2169373171
8250DB004953	UCD	4953	53.3049610697	-6.2170396703
8250DB004981	Pearse Villas	4981	53.2726650494	-6.1375947168
8250DB004982	Cois Coille	4982	53.2465325040	-6.1287797420
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
8250DB005127	Cabinteely Bypass	5127	53.2620155970	-6.1504098828
8250DB005128	Clonkeen Road	5128	53.2655267045	-6.1577392758
8250DB005142	Sandyford Luas	5142	53.2776744716	-6.2051742301
8250DB005143	Blackthorn Green	5143	53.2756669551	-6.2277962614
8250DB005171	Kingston	5171	53.2717359438	-6.2482605651
8250DB006006	Kilcross Road	6006	53.2698660358	-6.2287708929
8250DB006007	Kilcross Road	6007	53.2697615821	-6.2290001090
8250DB006041	Dundrum Luas	6041	53.2926644772	-6.2460841640
8250DB006085	Grange Grove	6085	53.2864920896	-6.1661968205
8250DB006086	Grange Grove	6086	53.2862444805	-6.1652924798
8250DB006334	Frascati SC	6334	53.3010989674	-6.1803351700
8250DB007056	Somerton	7056	53.2735313073	-6.1476185049
8250DB007057	Stillorgan Luas	7057	53.2801060993	-6.2102762349
8250DB007176	Greenlands	7176	53.2735190400	-6.2290247050
8250DB007188	Temple Road	7188	53.2994765772	-6.1747477516
8250DB007226	Richmond Grove	7226	53.2885567498	-6.1537934416
8250DB007290	Belarmine Drive	7290	53.2602856261	-6.2209973693
8250DB007291	Enniskerry Road	7291	53.2556313414	-6.2193020167
8250DB007317	The Nurseries	7317	53.2521797542	-6.1249363057
8250DB007325	Clayton Hotel	7325	53.2719332975	-6.2065243298
8250DB007326	Clayton Hotel	7326	53.2714287558	-6.2076400010
8250DB007330	Bluepool Pitches	7330	53.2885166422	-6.1535251724
8250DB007353	Priory Grove	7353	53.2934957289	-6.2017206326
8250DB007361	Old Bray Road	7361	53.2705832892	-6.1662331384
8250DB007362	Clonkeen Road	7362	53.2659394317	-6.1576915466
8250DB007375	M50 Bridge	7375	53.2725671693	-6.2284792832
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
8250DB007639	Brides Glen Luas	7639	53.2413989701	-6.1430732291
8250DB007640	Cherrywood Bus Pk	7640	53.2433483505	-6.1406962433
8250DB007641	Glenageary Park	7641	53.2786716253	-6.1354439647
8250DB007642	Park Close	7642	53.2743144350	-6.1344340341
8250DB007643	Sallyglen Road	7643	53.2673257568	-6.1347083606
8250DB007644	Sallyglen Road	7644	53.2676424810	-6.1348444985
8250DB007645	Park Close	7645	53.2751003475	-6.1346847151
8250DB007646	Glenageary Avenue	7646	53.2790894969	-6.1357257055
8250DB007660	Frascati Road	7660	53.2991460631	-6.1748818768
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
8260DB003904	Donacomper House	3904	53.3399279639	-6.5282602347
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
8260DB007814	Simmonstown Park	7814	53.3349172520	-6.5315409479
8260DB007815	Simmonstown Park	7815	53.3350290552	-6.5311316902
8260DB007816	Shinkeen Road	7816	53.3365293810	-6.5310801322
8260DB007817	Shinkeen Road	7817	53.3366806303	-6.5309548061
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
8350DB002962	Killarney Lane	2962	53.1962101854	-6.1216176913
8350DB002963	Herbert Road	2963	53.1945356120	-6.1271539239
8350DB002964	Herbert Park	2964	53.1915540223	-6.1290349308
8350DB002993	Herbert Road	2993	53.1944495510	-6.1273971496
8350DB002994	Killarney Lane	2994	53.1966403731	-6.1221077887
8350DB002997	Florence Road	2997	53.2031235168	-6.1097583563
8350DB003045	Church Road	3045	53.1974308269	-6.1090060052
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
8350DB004148	Wolfe Tone Square	4148	53.1917841549	-6.1049293033
8350DB004149	Putland Road	4149	53.1935632830	-6.1065869799
8350DB004150	Vevay Road	4150	53.2001166337	-6.1105942403
8350DB004151	Bray Main Street	4151	53.2018686483	-6.1105471042
8350DB004153	Cornerstone Church	4153	53.2048906455	-6.1095308648
8350DB004154	St Cronan's Road	4154	53.2066340781	-6.1123435917
8350DB004156	Quinsborough Road	4156	53.2049673830	-6.1036140063
8350DB004168	Bray Station	4168	53.2044316558	-6.1010177985
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
8350DB004533	Kilmacanogue	4533	53.1695051593	-6.1364864123
8350DB004588	Cois Sleibhe	4588	53.1833990224	-6.1220280398
8350DB004589	Bray Business Park	4589	53.1842399038	-6.1160806801
8350DB004590	Hollybrook Park	4590	53.1843623051	-6.1090573674
8350DB004591	Southern Cross	4591	53.1853249084	-6.1045856702
8350DB004844	Glencormack Road	4844	53.1743757146	-6.1392822793
8350DB004956	Sea Road	4956	53.0711237336	-6.0638025809
8350DB005091	Ballywaltrim Heights	5091	53.1879238916	-6.1273972138
8350DB005092	Springfield Cemetery	5092	53.1858287287	-6.1290597457
8350DB005110	Arduan	5110	53.2202730815	-6.4697991216
8350DB005111	Troopersfield	5111	53.1672517576	-6.5362399752
8350DB005135	Kilruddery Cottages	5135	53.1767923001	-6.0954167776
8350DB005136	Gorse Hill	5136	53.0778880042	-6.0674098314
8350DB005139	Windgate Cottages	5139	53.1617095882	-6.0847781424
8350DB006000	Kilmacanogue	6000	53.1704672157	-6.1365045520
8350DB006097	Ashridge Green	6097	53.2003151141	-6.1763897827
8350DB006137	Kilcoole Golf Club	6137	53.0992432845	-6.0672888988
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
8350DB007294	Cornerstone Church	7294	53.2047244539	-6.1092537368
8350DB007296	Kilcoole Golf Club	7296	53.0988441758	-6.0676204070
8350DB007352	Three Trouts Bridge	7352	53.1275037803	-6.0733881776
8350DB007363	Southern Cross Rd	7363	53.1817206467	-6.1319019348
8350DB007364	Belmont	7364	53.1845917660	-6.1082242657
8350DB007365	Riddlesford	7365	53.1853159262	-6.1045860663
8350DB007366	Bray Business Park	7366	53.1839148878	-6.1182646312
8350DB007367	Shoreline Sports	7367	53.1828656852	-6.1235476541
8350DB007368	Giltspur	7368	53.1814106830	-6.1281897274
8350DB007461	Charlesland	7461	53.1289319703	-6.0628033721
8350DB007462	Charlesland	7462	53.1288008733	-6.0624804920
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
2	22	8220DB000002
3	5	8220DB000003
4	6	8220DB000003
5	37	8220DB000004
6	42	8220DB000004
7	24	8220DB000006
8	8	8220DB000007
9	11	8220DB000007
10	25	8220DB000007
11	17	8220DB000008
12	1	8220DB000010
13	2	8220DB000010
14	29	8220DB000010
15	8	8220DB000011
16	25	8220DB000011
17	1	8220DB000012
18	2	8220DB000012
19	6	8220DB000012
20	17	8220DB000012
21	29	8220DB000012
22	1	8220DB000014
23	2	8220DB000014
24	6	8220DB000014
25	8	8220DB000014
26	17	8220DB000014
27	25	8220DB000014
28	29	8220DB000014
29	1	8220DB000015
30	2	8220DB000015
31	8	8220DB000015
32	17	8220DB000015
33	20	8220DB000015
34	25	8220DB000015
35	26	8220DB000015
36	29	8220DB000015
37	6	8220DB000016
38	1	8220DB000017
39	2	8220DB000017
40	8	8220DB000017
41	17	8220DB000017
42	20	8220DB000017
43	26	8220DB000017
44	29	8220DB000017
45	1	8220DB000018
46	2	8220DB000018
47	8	8220DB000018
48	17	8220DB000018
49	20	8220DB000018
50	26	8220DB000018
51	29	8220DB000018
52	1	8220DB000019
53	2	8220DB000019
54	8	8220DB000019
55	17	8220DB000019
56	20	8220DB000019
57	26	8220DB000019
58	29	8220DB000019
59	1	8220DB000021
60	2	8220DB000021
61	8	8220DB000021
62	17	8220DB000021
63	20	8220DB000021
64	26	8220DB000021
65	29	8220DB000021
66	2	8220DB000022
67	2	8220DB000023
68	2	8220DB000024
69	2	8220DB000025
70	2	8220DB000027
71	8	8220DB000027
72	24	8220DB000027
73	42	8220DB000027
74	2	8220DB000028
75	8	8220DB000028
76	24	8220DB000028
77	42	8220DB000028
78	2	8220DB000029
79	8	8220DB000029
80	24	8220DB000029
81	42	8220DB000029
82	5	8220DB000030
83	2	8220DB000031
84	2	8220DB000032
85	2	8220DB000033
86	2	8220DB000035
87	2	8220DB000036
88	2	8220DB000037
89	8	8220DB000037
90	24	8220DB000037
91	42	8220DB000037
92	2	8220DB000038
93	8	8220DB000038
94	24	8220DB000038
95	42	8220DB000038
96	2	8220DB000039
97	8	8220DB000039
98	24	8220DB000039
99	42	8220DB000039
100	2	8220DB000040
101	24	8220DB000040
102	42	8220DB000040
103	2	8220DB000041
104	2	8220DB000042
105	2	8220DB000043
106	1	8220DB000044
107	2	8220DB000044
108	8	8220DB000044
109	17	8220DB000044
110	20	8220DB000044
111	26	8220DB000044
112	29	8220DB000044
113	1	8220DB000045
114	2	8220DB000045
115	8	8220DB000045
116	17	8220DB000045
117	20	8220DB000045
118	26	8220DB000045
119	29	8220DB000045
120	1	8220DB000046
121	2	8220DB000046
122	8	8220DB000046
123	17	8220DB000046
124	20	8220DB000046
125	26	8220DB000046
126	29	8220DB000046
127	1	8220DB000047
128	2	8220DB000047
129	8	8220DB000047
130	17	8220DB000047
131	20	8220DB000047
132	26	8220DB000047
133	29	8220DB000047
134	1	8220DB000048
135	2	8220DB000048
136	8	8220DB000048
137	17	8220DB000048
138	20	8220DB000048
139	26	8220DB000048
140	29	8220DB000048
141	1	8220DB000049
142	2	8220DB000049
143	8	8220DB000049
144	17	8220DB000049
145	20	8220DB000049
146	25	8220DB000049
147	26	8220DB000049
148	29	8220DB000049
149	1	8220DB000051
150	2	8220DB000051
151	6	8220DB000051
152	8	8220DB000051
153	17	8220DB000051
154	20	8220DB000051
155	25	8220DB000051
156	26	8220DB000051
157	29	8220DB000051
158	1	8220DB000052
159	2	8220DB000052
160	6	8220DB000052
161	8	8220DB000052
162	17	8220DB000052
163	20	8220DB000052
164	25	8220DB000052
165	26	8220DB000052
166	29	8220DB000052
167	6	8220DB000053
168	6	8220DB000054
169	6	8220DB000055
170	5	8220DB000056
171	6	8220DB000056
172	22	8220DB000057
173	5	8220DB000058
174	6	8220DB000058
175	22	8220DB000058
176	6	8220DB000059
177	22	8220DB000059
178	6	8220DB000060
179	22	8220DB000060
180	6	8220DB000063
181	6	8220DB000064
182	6	8220DB000065
183	6	8220DB000066
184	5	8220DB000068
185	5	8220DB000069
186	5	8220DB000071
187	5	8220DB000072
188	6	8220DB000073
189	6	8220DB000074
190	5	8220DB000075
191	6	8220DB000077
192	22	8220DB000077
193	6	8220DB000078
194	22	8220DB000078
195	5	8220DB000079
196	6	8220DB000079
197	22	8220DB000079
198	5	8220DB000080
199	6	8220DB000080
200	22	8220DB000080
201	5	8220DB000082
202	6	8220DB000082
203	22	8220DB000082
204	6	8220DB000083
205	6	8220DB000084
206	1	8220DB000085
207	8	8220DB000085
208	17	8220DB000085
209	20	8220DB000085
210	26	8220DB000085
211	29	8220DB000085
212	8	8220DB000086
213	8	8220DB000087
214	8	8220DB000088
215	8	8220DB000090
216	24	8220DB000090
217	42	8220DB000090
218	8	8220DB000091
219	24	8220DB000091
220	42	8220DB000091
221	8	8220DB000092
222	24	8220DB000092
223	8	8220DB000093
224	24	8220DB000093
225	8	8220DB000094
226	24	8220DB000094
227	8	8220DB000102
228	8	8220DB000104
229	8	8220DB000105
230	8	8220DB000107
231	8	8220DB000110
232	8	8220DB000112
233	24	8220DB000112
234	8	8220DB000113
235	24	8220DB000113
236	8	8220DB000114
237	24	8220DB000114
238	8	8220DB000115
239	24	8220DB000115
240	42	8220DB000115
241	8	8220DB000117
242	8	8220DB000118
243	1	8220DB000119
244	8	8220DB000119
245	17	8220DB000119
246	20	8220DB000119
247	26	8220DB000119
248	29	8220DB000119
249	24	8220DB000126
250	24	8220DB000127
251	42	8220DB000129
252	42	8220DB000130
253	42	8220DB000131
254	40	8220DB000133
255	40	8220DB000134
256	42	8220DB000136
257	42	8220DB000137
258	40	8220DB000138
259	42	8220DB000138
260	42	8220DB000141
261	42	8220DB000142
262	42	8220DB000143
263	24	8220DB000146
264	42	8220DB000146
265	24	8220DB000147
266	42	8220DB000147
267	24	8220DB000148
268	42	8220DB000148
269	24	8220DB000149
270	42	8220DB000149
271	24	8220DB000150
272	42	8220DB000150
273	40	8220DB000151
274	40	8220DB000153
275	40	8220DB000154
276	40	8220DB000155
277	40	8220DB000156
278	42	8220DB000164
279	42	8220DB000165
280	42	8220DB000166
281	42	8220DB000167
282	42	8220DB000168
283	42	8220DB000169
284	40	8220DB000175
285	40	8220DB000176
286	40	8220DB000177
287	40	8220DB000178
288	40	8220DB000179
289	40	8220DB000181
290	40	8220DB000182
291	40	8220DB000183
292	24	8220DB000184
293	40	8220DB000184
294	42	8220DB000184
295	24	8220DB000185
296	40	8220DB000185
297	42	8220DB000185
298	11	8220DB000186
299	24	8220DB000186
300	25	8220DB000186
301	40	8220DB000186
302	42	8220DB000186
303	11	8220DB000187
304	24	8220DB000187
305	25	8220DB000187
306	40	8220DB000187
307	42	8220DB000187
308	11	8220DB000188
309	24	8220DB000188
310	25	8220DB000188
311	40	8220DB000188
312	42	8220DB000188
313	11	8220DB000189
314	24	8220DB000189
315	25	8220DB000189
316	40	8220DB000189
317	42	8220DB000189
318	11	8220DB000190
319	24	8220DB000190
320	25	8220DB000190
321	40	8220DB000190
322	42	8220DB000190
323	11	8220DB000191
324	24	8220DB000191
325	42	8220DB000191
326	5	8220DB000192
327	22	8220DB000192
328	25	8220DB000192
329	42	8220DB000193
330	11	8220DB000194
331	24	8220DB000194
332	42	8220DB000194
333	11	8220DB000195
334	24	8220DB000195
335	40	8220DB000195
336	42	8220DB000195
337	11	8220DB000196
338	24	8220DB000196
339	40	8220DB000196
340	42	8220DB000196
341	11	8220DB000197
342	24	8220DB000197
343	40	8220DB000197
344	42	8220DB000197
345	11	8220DB000198
346	24	8220DB000198
347	40	8220DB000198
348	42	8220DB000198
349	11	8220DB000199
350	24	8220DB000199
351	40	8220DB000199
352	42	8220DB000199
353	24	8220DB000200
354	40	8220DB000200
355	42	8220DB000200
356	24	8220DB000201
357	40	8220DB000201
358	42	8220DB000201
359	40	8220DB000202
360	1	8220DB000203
361	17	8220DB000203
362	20	8220DB000203
363	26	8220DB000203
364	29	8220DB000203
365	1	8220DB000204
366	17	8220DB000204
367	20	8220DB000204
368	26	8220DB000204
369	29	8220DB000204
370	1	8220DB000205
371	17	8220DB000205
372	20	8220DB000205
373	26	8220DB000205
374	29	8220DB000205
375	29	8220DB000206
376	29	8220DB000207
377	29	8220DB000208
378	29	8220DB000209
379	29	8220DB000210
380	29	8220DB000211
381	29	8220DB000212
382	1	8220DB000213
383	17	8220DB000213
384	20	8220DB000213
385	26	8220DB000213
386	29	8220DB000213
387	1	8220DB000214
388	17	8220DB000214
389	20	8220DB000214
390	26	8220DB000214
391	29	8220DB000214
392	17	8220DB000215
393	10	8220DB000216
394	17	8220DB000216
395	10	8220DB000217
396	17	8220DB000217
397	17	8220DB000218
398	1	8220DB000220
399	17	8220DB000220
400	20	8220DB000220
401	26	8220DB000220
402	1	8220DB000228
403	17	8220DB000233
404	10	8220DB000234
405	17	8220DB000234
406	10	8220DB000235
407	17	8220DB000235
408	10	8220DB000236
409	17	8220DB000236
410	17	8220DB000237
411	10	8220DB000242
412	10	8220DB000243
413	10	8220DB000244
414	10	8220DB000245
415	10	8220DB000246
416	10	8220DB000248
417	10	8220DB000249
418	10	8220DB000250
419	10	8220DB000251
420	10	8220DB000252
421	10	8220DB000254
422	10	8220DB000255
423	2	8220DB000261
424	3	8220DB000261
425	8	8220DB000261
426	25	8220DB000261
427	17	8220DB000262
428	5	8220DB000263
429	6	8220DB000263
430	42	8220DB000263
431	11	8220DB000264
432	1	8220DB000265
433	22	8220DB000265
434	29	8220DB000265
435	8	8220DB000270
436	17	8220DB000270
437	25	8220DB000270
438	1	8220DB000271
439	2	8220DB000271
440	6	8220DB000271
441	29	8220DB000271
442	32	8220DB000271
443	7	8220DB000272
444	24	8220DB000273
445	37	8220DB000273
446	7	8220DB000274
447	11	8220DB000274
448	22	8220DB000274
449	5	8220DB000276
450	20	8220DB000277
451	26	8220DB000277
452	42	8220DB000277
453	1	8220DB000278
454	2	8220DB000278
455	17	8220DB000278
456	29	8220DB000278
457	5	8220DB000279
458	6	8220DB000279
459	25	8220DB000279
460	3	8220DB000281
461	8	8220DB000281
462	24	8220DB000281
463	37	8220DB000281
464	42	8220DB000281
465	5	8220DB000284
466	32	8220DB000286
467	26	8220DB000288
468	9	8220DB000289
469	20	8220DB000292
470	10	8220DB000297
471	16	8220DB000297
472	19	8220DB000298
473	14	8220DB000299
474	10	8220DB000301
475	12	8220DB000301
476	14	8220DB000301
477	16	8220DB000302
478	19	8220DB000302
479	33	8220DB000302
480	4	8220DB000303
481	33	8220DB000303
482	15	8220DB000307
483	15	8220DB000308
484	15	8220DB000309
485	18	8220DB000312
486	21	8220DB000313
487	38	8220DB000313
488	18	8220DB000315
489	21	8220DB000315
490	23	8220DB000315
491	38	8220DB000315
492	40	8220DB000315
493	18	8220DB000317
494	1	8220DB000319
495	8	8220DB000319
496	11	8220DB000319
497	25	8220DB000319
498	29	8220DB000319
499	40	8220DB000319
500	42	8220DB000319
501	2	8220DB000320
502	17	8220DB000320
503	8	8220DB000322
504	24	8220DB000322
505	13	8220DB000325
506	39	8220DB000326
507	23	8220DB000328
508	21	8220DB000329
509	38	8220DB000329
510	11	8220DB000334
511	13	8220DB000334
512	7	8220DB000335
513	8	8220DB000335
514	23	8220DB000335
515	25	8220DB000335
516	10	8220DB000336
517	17	8220DB000336
518	40	8220DB000336
519	42	8220DB000336
520	1	8220DB000340
521	29	8220DB000340
522	30	8220DB000340
523	33	8220DB000340
524	31	8220DB000342
525	18	8220DB000346
526	29	8220DB000350
527	30	8220DB000350
528	33	8220DB000350
529	30	8220DB000351
530	30	8220DB000352
531	30	8220DB000353
532	30	8220DB000354
533	30	8220DB000355
534	30	8220DB000356
535	30	8220DB000357
536	30	8220DB000371
537	30	8220DB000372
538	30	8220DB000373
539	30	8220DB000374
540	30	8220DB000381
541	30	8220DB000387
542	30	8220DB000388
543	30	8220DB000389
544	30	8220DB000390
545	30	8220DB000391
546	30	8220DB000392
547	30	8220DB000393
548	19	8220DB000395
549	30	8220DB000395
550	19	8220DB000396
551	30	8220DB000396
552	19	8220DB000397
553	30	8220DB000397
554	19	8220DB000398
555	30	8220DB000398
556	19	8220DB000399
557	30	8220DB000399
558	1	8220DB000400
559	5	8220DB000400
560	18	8220DB000400
561	19	8220DB000400
562	24	8220DB000400
563	29	8220DB000400
564	30	8220DB000400
565	33	8220DB000400
566	37	8220DB000400
567	2	8220DB000404
568	21	8220DB000404
569	22	8220DB000404
570	23	8220DB000404
571	38	8220DB000404
572	24	8220DB000405
573	37	8220DB000405
574	13	8220DB000406
575	18	8220DB000406
576	12	8220DB000407
577	16	8220DB000407
578	5	8220DB000408
579	24	8220DB000408
580	37	8220DB000408
581	5	8220DB000409
582	24	8220DB000409
583	37	8220DB000409
584	5	8220DB000410
585	24	8220DB000410
586	37	8220DB000410
587	5	8220DB000411
588	24	8220DB000411
589	37	8220DB000411
590	5	8220DB000412
591	24	8220DB000412
592	37	8220DB000412
593	5	8220DB000413
594	24	8220DB000413
595	37	8220DB000413
596	5	8220DB000414
597	24	8220DB000414
598	37	8220DB000414
599	5	8220DB000415
600	24	8220DB000415
601	37	8220DB000415
602	24	8220DB000416
603	37	8220DB000416
604	24	8220DB000417
605	37	8220DB000417
606	24	8220DB000418
607	37	8220DB000418
608	24	8220DB000419
609	37	8220DB000419
610	24	8220DB000420
611	37	8220DB000420
612	24	8220DB000421
613	37	8220DB000421
614	24	8220DB000422
615	37	8220DB000422
616	24	8220DB000423
617	37	8220DB000423
618	24	8220DB000424
619	37	8220DB000424
620	24	8220DB000476
621	37	8220DB000476
622	24	8220DB000477
623	37	8220DB000477
624	24	8220DB000478
625	37	8220DB000478
626	24	8220DB000479
627	37	8220DB000479
628	24	8220DB000480
629	37	8220DB000480
630	24	8220DB000481
631	37	8220DB000481
632	24	8220DB000482
633	37	8220DB000482
634	24	8220DB000483
635	37	8220DB000483
636	5	8220DB000485
637	24	8220DB000485
638	37	8220DB000485
639	5	8220DB000487
640	24	8220DB000487
641	37	8220DB000487
642	5	8220DB000488
643	24	8220DB000488
644	37	8220DB000488
645	5	8220DB000489
646	24	8220DB000489
647	37	8220DB000489
648	5	8220DB000490
649	24	8220DB000490
650	37	8220DB000490
651	5	8220DB000491
652	24	8220DB000491
653	37	8220DB000491
654	5	8220DB000492
655	24	8220DB000492
656	37	8220DB000492
657	5	8220DB000493
658	18	8220DB000493
659	24	8220DB000493
660	37	8220DB000493
661	5	8220DB000494
662	18	8220DB000494
663	24	8220DB000494
664	37	8220DB000494
665	5	8220DB000495
666	18	8220DB000495
667	24	8220DB000495
668	29	8220DB000495
669	33	8220DB000495
670	37	8220DB000495
671	9	8220DB000496
672	10	8220DB000496
673	19	8220DB000496
674	32	8220DB000496
675	10	8220DB000497
676	14	8220DB000497
677	19	8220DB000497
678	27	8220DB000497
679	28	8220DB000497
680	32	8220DB000497
681	7	8220DB000499
682	7	8220DB000500
683	7	8220DB000501
684	7	8220DB000509
685	7	8220DB000510
686	7	8220DB000511
687	7	8220DB000513
688	32	8220DB000513
689	9	8220DB000515
690	10	8220DB000515
691	14	8220DB000515
692	19	8220DB000515
693	27	8220DB000515
694	28	8220DB000515
695	32	8220DB000515
696	9	8220DB000516
697	10	8220DB000516
698	14	8220DB000516
699	19	8220DB000516
700	27	8220DB000516
701	28	8220DB000516
702	32	8220DB000516
703	32	8220DB000518
704	9	8220DB000519
705	10	8220DB000519
706	14	8220DB000519
707	19	8220DB000519
708	27	8220DB000519
709	28	8220DB000519
710	9	8220DB000521
711	10	8220DB000521
712	14	8220DB000521
713	19	8220DB000521
714	27	8220DB000521
715	28	8220DB000521
716	9	8220DB000522
717	10	8220DB000522
718	14	8220DB000522
719	19	8220DB000522
720	27	8220DB000522
721	28	8220DB000522
722	9	8220DB000523
723	10	8220DB000523
724	14	8220DB000523
725	19	8220DB000523
726	27	8220DB000523
727	28	8220DB000523
728	9	8220DB000614
729	10	8220DB000614
730	14	8220DB000614
731	19	8220DB000614
732	27	8220DB000614
733	28	8220DB000614
734	9	8220DB000615
735	10	8220DB000615
736	14	8220DB000615
737	19	8220DB000615
738	27	8220DB000615
739	28	8220DB000615
740	9	8220DB000616
741	10	8220DB000616
742	14	8220DB000616
743	19	8220DB000616
744	27	8220DB000616
745	28	8220DB000616
746	32	8220DB000616
747	9	8220DB000617
748	10	8220DB000617
749	14	8220DB000617
750	19	8220DB000617
751	27	8220DB000617
752	28	8220DB000617
753	32	8220DB000617
754	9	8220DB000618
755	10	8220DB000618
756	14	8220DB000618
757	19	8220DB000618
758	27	8220DB000618
759	28	8220DB000618
760	32	8220DB000618
761	9	8220DB000619
762	10	8220DB000619
763	14	8220DB000619
764	19	8220DB000619
765	27	8220DB000619
766	28	8220DB000619
767	32	8220DB000619
768	9	8220DB000620
769	9	8220DB000621
770	10	8220DB000664
771	14	8220DB000664
772	19	8220DB000664
773	27	8220DB000664
774	28	8220DB000664
775	10	8220DB000665
776	14	8220DB000665
777	19	8220DB000665
778	27	8220DB000665
779	28	8220DB000665
780	10	8220DB000666
781	14	8220DB000666
782	19	8220DB000666
783	27	8220DB000666
784	28	8220DB000666
785	10	8220DB000667
786	14	8220DB000667
787	19	8220DB000667
788	27	8220DB000667
789	28	8220DB000667
790	10	8220DB000668
791	14	8220DB000668
792	19	8220DB000668
793	27	8220DB000668
794	28	8220DB000668
795	10	8220DB000669
796	14	8220DB000669
797	19	8220DB000669
798	27	8220DB000669
799	28	8220DB000669
800	10	8220DB000670
801	14	8220DB000670
802	19	8220DB000670
803	27	8220DB000670
804	28	8220DB000670
805	10	8220DB000671
806	14	8220DB000671
807	19	8220DB000671
808	27	8220DB000671
809	28	8220DB000671
810	10	8220DB000672
811	14	8220DB000672
812	19	8220DB000672
813	27	8220DB000672
814	28	8220DB000672
815	9	8220DB000675
816	10	8220DB000675
817	14	8220DB000675
818	19	8220DB000675
819	27	8220DB000675
820	28	8220DB000675
821	32	8220DB000675
822	2	8220DB000747
823	13	8220DB000747
824	21	8220DB000747
825	22	8220DB000747
826	23	8220DB000747
827	38	8220DB000747
828	22	8220DB000748
829	23	8220DB000748
830	38	8220DB000748
831	22	8220DB000749
832	23	8220DB000749
833	38	8220DB000749
834	22	8220DB000750
835	23	8220DB000750
836	38	8220DB000750
837	22	8220DB000751
838	23	8220DB000751
839	38	8220DB000751
840	22	8220DB000752
841	23	8220DB000752
842	38	8220DB000752
843	22	8220DB000753
844	23	8220DB000753
845	38	8220DB000753
846	3	8220DB000756
847	13	8220DB000756
848	3	8220DB000757
849	13	8220DB000757
850	3	8220DB000758
851	13	8220DB000758
852	3	8220DB000759
853	13	8220DB000759
854	3	8220DB000760
855	13	8220DB000760
856	3	8220DB000761
857	13	8220DB000761
858	3	8220DB000762
859	13	8220DB000762
860	3	8220DB000763
861	13	8220DB000763
862	30	8220DB000763
863	3	8220DB000769
864	4	8220DB000769
865	13	8220DB000769
866	3	8220DB000770
867	4	8220DB000770
868	13	8220DB000770
869	3	8220DB000771
870	4	8220DB000771
871	13	8220DB000771
872	3	8220DB000772
873	4	8220DB000772
874	13	8220DB000772
875	3	8220DB000773
876	4	8220DB000773
877	13	8220DB000773
878	3	8220DB000774
879	4	8220DB000774
880	13	8220DB000774
881	3	8220DB000775
882	4	8220DB000775
883	13	8220DB000775
884	3	8220DB000776
885	4	8220DB000776
886	13	8220DB000776
887	3	8220DB000777
888	4	8220DB000777
889	13	8220DB000777
890	21	8220DB000783
891	22	8220DB000783
892	23	8220DB000783
893	38	8220DB000783
894	21	8220DB000784
895	22	8220DB000784
896	23	8220DB000784
897	38	8220DB000784
898	21	8220DB000785
899	22	8220DB000785
900	23	8220DB000785
901	38	8220DB000785
902	2	8220DB000786
903	3	8220DB000786
904	4	8220DB000786
905	13	8220DB000786
906	21	8220DB000786
907	22	8220DB000786
908	23	8220DB000786
909	38	8220DB000786
910	3	8220DB000792
911	4	8220DB000792
912	13	8220DB000792
913	2	8220DB000793
914	21	8220DB000793
915	22	8220DB000793
916	23	8220DB000793
917	29	8220DB000793
918	33	8220DB000793
919	38	8220DB000793
920	5	8220DB000795
921	22	8220DB000795
922	5	8220DB000796
923	22	8220DB000796
924	21	8220DB000802
925	5	8220DB000817
926	22	8220DB000817
927	5	8220DB000818
928	22	8220DB000818
929	5	8220DB000819
930	11	8220DB000819
931	22	8220DB000819
932	24	8220DB000819
933	25	8220DB000819
934	42	8220DB000819
935	6	8220DB000820
936	6	8220DB000821
937	5	8220DB000822
938	5	8220DB000823
939	5	8220DB000824
940	5	8220DB000825
941	5	8220DB000826
942	5	8220DB000827
943	5	8220DB000828
944	5	8220DB000829
945	5	8220DB000830
946	5	8220DB000831
947	6	8220DB000832
948	6	8220DB000833
949	25	8220DB000834
950	25	8220DB000835
951	25	8220DB000836
952	25	8220DB000837
953	25	8220DB000838
954	25	8220DB000839
955	25	8220DB000840
956	25	8220DB000841
957	2	8220DB000842
958	13	8220DB000842
959	21	8220DB000843
960	2	8220DB000845
961	13	8220DB000845
962	21	8220DB000845
963	2	8220DB000846
964	13	8220DB000846
965	21	8220DB000846
966	2	8220DB000847
967	13	8220DB000847
968	2	8220DB000848
969	3	8220DB000848
970	13	8220DB000848
971	2	8220DB000849
972	2	8220DB000850
973	2	8220DB000851
974	2	8220DB000852
975	29	8220DB000852
976	33	8220DB000852
977	2	8220DB000853
978	29	8220DB000853
979	33	8220DB000853
980	2	8220DB000854
981	29	8220DB000854
982	33	8220DB000854
983	2	8220DB000855
984	29	8220DB000855
985	33	8220DB000855
986	2	8220DB000856
987	2	8220DB000857
988	2	8220DB000858
989	2	8220DB000881
990	2	8220DB000882
991	2	8220DB000883
992	2	8220DB000884
993	29	8220DB000884
994	33	8220DB000884
995	2	8220DB000885
996	29	8220DB000885
997	33	8220DB000885
998	2	8220DB000886
999	29	8220DB000886
1000	33	8220DB000886
1001	2	8220DB000887
1002	29	8220DB000887
1003	33	8220DB000887
1004	8	8220DB00089
1005	11	8220DB000893
1006	11	8220DB000894
1007	11	8220DB000895
1008	12	8220DB000895
1009	11	8220DB000896
1010	11	8220DB000897
1011	2	8220DB000903
1012	2	8220DB000904
1013	2	8220DB000906
1014	3	8220DB000906
1015	4	8220DB000906
1016	13	8220DB000906
1017	2	8220DB000907
1018	3	8220DB000907
1019	4	8220DB000907
1020	13	8220DB000907
1021	2	8220DB000908
1022	3	8220DB000908
1023	4	8220DB000908
1024	13	8220DB000908
1025	2	8220DB000909
1026	3	8220DB000909
1027	4	8220DB000909
1028	13	8220DB000909
1029	25	8220DB000987
1030	12	8220DB001013
1031	29	8220DB001013
1032	33	8220DB001013
1033	12	8220DB001015
1034	29	8220DB001015
1035	33	8220DB001015
1036	10	8220DB001016
1037	11	8220DB001016
1038	12	8220DB001016
1039	14	8220DB001016
1040	34	8220DB001016
1041	40	8220DB001016
1042	10	8220DB001017
1043	11	8220DB001017
1044	12	8220DB001017
1045	14	8220DB001017
1046	34	8220DB001017
1047	40	8220DB001017
1048	10	8220DB001018
1049	11	8220DB001018
1050	12	8220DB001018
1051	14	8220DB001018
1052	34	8220DB001018
1053	40	8220DB001018
1054	10	8220DB001019
1055	11	8220DB001019
1056	12	8220DB001019
1057	14	8220DB001019
1058	34	8220DB001019
1059	40	8220DB001019
1060	10	8220DB001020
1061	11	8220DB001020
1062	12	8220DB001020
1063	14	8220DB001020
1064	34	8220DB001020
1065	40	8220DB001020
1066	11	8220DB001021
1067	12	8220DB001021
1068	11	8220DB001022
1069	12	8220DB001022
1070	11	8220DB001023
1071	12	8220DB001023
1072	11	8220DB001024
1073	12	8220DB001024
1074	12	8220DB001025
1075	12	8220DB001026
1076	12	8220DB001027
1077	12	8220DB001028
1078	12	8220DB001062
1079	12	8220DB001063
1080	12	8220DB001064
1081	12	8220DB001065
1082	12	8220DB001066
1083	11	8220DB001067
1084	12	8220DB001067
1085	11	8220DB001068
1086	12	8220DB001068
1087	10	8220DB001069
1088	11	8220DB001069
1089	12	8220DB001069
1090	14	8220DB001069
1091	34	8220DB001069
1092	40	8220DB001069
1093	10	8220DB001070
1094	11	8220DB001070
1095	12	8220DB001070
1096	14	8220DB001070
1097	34	8220DB001070
1098	40	8220DB001070
1099	10	8220DB001071
1100	11	8220DB001071
1101	12	8220DB001071
1102	14	8220DB001071
1103	34	8220DB001071
1104	40	8220DB001071
1105	10	8220DB001072
1106	11	8220DB001072
1107	12	8220DB001072
1108	14	8220DB001072
1109	34	8220DB001072
1110	40	8220DB001072
1111	29	8220DB001074
1112	33	8220DB001074
1113	10	8220DB001076
1114	11	8220DB001076
1115	12	8220DB001076
1116	14	8220DB001076
1117	34	8220DB001076
1118	40	8220DB001076
1119	10	8220DB001077
1120	14	8220DB001077
1121	34	8220DB001077
1122	40	8220DB001077
1123	10	8220DB001078
1124	14	8220DB001078
1125	34	8220DB001078
1126	10	8220DB001079
1127	14	8220DB001079
1128	34	8220DB001079
1129	10	8220DB001080
1130	14	8220DB001080
1131	34	8220DB001080
1132	10	8220DB001081
1133	14	8220DB001081
1134	34	8220DB001081
1135	14	8220DB001082
1136	34	8220DB001082
1137	14	8220DB001083
1138	34	8220DB001083
1139	14	8220DB001085
1140	34	8220DB001085
1141	42	8220DB001090
1142	14	8220DB001121
1143	31	8220DB001121
1144	34	8220DB001121
1145	14	8220DB001122
1146	31	8220DB001122
1147	34	8220DB001122
1148	14	8220DB001123
1149	31	8220DB001123
1150	34	8220DB001123
1151	14	8220DB001124
1152	31	8220DB001124
1153	34	8220DB001124
1154	14	8220DB001159
1155	31	8220DB001159
1156	34	8220DB001159
1157	14	8220DB001160
1158	31	8220DB001160
1159	34	8220DB001160
1160	14	8220DB001161
1161	31	8220DB001161
1162	34	8220DB001161
1163	14	8220DB001162
1164	31	8220DB001162
1165	34	8220DB001162
1166	14	8220DB001163
1167	31	8220DB001163
1168	34	8220DB001163
1169	14	8220DB001164
1170	34	8220DB001164
1171	14	8220DB001165
1172	34	8220DB001165
1173	10	8220DB001166
1174	14	8220DB001166
1175	34	8220DB001166
1176	10	8220DB001167
1177	14	8220DB001167
1178	34	8220DB001167
1179	10	8220DB001168
1180	14	8220DB001168
1181	34	8220DB001168
1182	10	8220DB001169
1183	14	8220DB001169
1184	34	8220DB001169
1185	10	8220DB001170
1186	14	8220DB001170
1187	34	8220DB001170
1188	40	8220DB001170
1189	20	8220DB001171
1190	26	8220DB001171
1191	20	8220DB001172
1192	26	8220DB001172
1193	32	8220DB001172
1194	20	8220DB001173
1195	26	8220DB001173
1196	20	8220DB001174
1197	26	8220DB001174
1198	37	8220DB001174
1199	20	8220DB001175
1200	26	8220DB001175
1201	27	8220DB001184
1202	28	8220DB001184
1203	10	8220DB001185
1204	10	8220DB001186
1205	10	8220DB001187
1206	10	8220DB001188
1207	10	8220DB001190
1208	10	8220DB001191
1209	10	8220DB001192
1210	10	8220DB001193
1211	10	8220DB001194
1212	10	8220DB001195
1213	14	8220DB001196
1214	19	8220DB001196
1215	27	8220DB001196
1216	28	8220DB001196
1217	14	8220DB001197
1218	19	8220DB001197
1219	27	8220DB001197
1220	28	8220DB001197
1221	14	8220DB001198
1222	19	8220DB001198
1223	27	8220DB001198
1224	28	8220DB001198
1225	14	8220DB001199
1226	19	8220DB001199
1227	27	8220DB001199
1228	28	8220DB001199
1229	14	8220DB001200
1230	19	8220DB001200
1231	27	8220DB001200
1232	28	8220DB001200
1233	14	8220DB001201
1234	19	8220DB001201
1235	27	8220DB001201
1236	28	8220DB001201
1237	14	8220DB001202
1238	27	8220DB001202
1239	28	8220DB001202
1240	14	8220DB001203
1241	27	8220DB001203
1242	28	8220DB001203
1243	27	8220DB001205
1244	28	8220DB001205
1245	14	8220DB001218
1246	19	8220DB001218
1247	27	8220DB001218
1248	28	8220DB001218
1249	14	8220DB001219
1250	19	8220DB001219
1251	27	8220DB001219
1252	28	8220DB001219
1253	14	8220DB001220
1254	19	8220DB001220
1255	27	8220DB001220
1256	28	8220DB001220
1257	14	8220DB001221
1258	19	8220DB001221
1259	27	8220DB001221
1260	28	8220DB001221
1261	19	8220DB001243
1262	19	8220DB001245
1263	19	8220DB001247
1264	19	8220DB001248
1265	19	8220DB001249
1266	19	8220DB001250
1267	19	8220DB001254
1268	19	8220DB001255
1269	19	8220DB001256
1270	19	8220DB001258
1271	19	8220DB001259
1272	19	8220DB001260
1273	19	8220DB001262
1274	19	8220DB001265
1275	19	8220DB001266
1276	19	8220DB001267
1277	19	8220DB001268
1278	19	8220DB001269
1279	14	8220DB001270
1280	27	8220DB001270
1281	28	8220DB001270
1282	14	8220DB001272
1283	27	8220DB001272
1284	28	8220DB001272
1285	14	8220DB001273
1286	19	8220DB001273
1287	27	8220DB001273
1288	28	8220DB001273
1289	14	8220DB001274
1290	19	8220DB001274
1291	27	8220DB001274
1292	28	8220DB001274
1293	14	8220DB001275
1294	19	8220DB001275
1295	27	8220DB001275
1296	28	8220DB001275
1297	14	8220DB001276
1298	19	8220DB001276
1299	27	8220DB001276
1300	28	8220DB001276
1301	14	8220DB001277
1302	19	8220DB001277
1303	27	8220DB001277
1304	28	8220DB001277
1305	6	8220DB001278
1306	7	8220DB001278
1307	35	8220DB001278
1308	42	8220DB001278
1309	15	8220DB001279
1310	17	8220DB001279
1311	40	8220DB001279
1312	11	8220DB001280
1313	25	8220DB001280
1314	6	8220DB001282
1315	17	8220DB001282
1316	35	8220DB001282
1317	42	8220DB001282
1318	10	8220DB001283
1319	11	8220DB001283
1320	14	8220DB001283
1321	34	8220DB001283
1322	40	8220DB001283
1323	6	8220DB001284
1324	17	8220DB001284
1325	34	8220DB001284
1326	35	8220DB001284
1327	40	8220DB001284
1328	42	8220DB001284
1329	6	8220DB001285
1330	10	8220DB001285
1331	11	8220DB001285
1332	14	8220DB001285
1333	17	8220DB001285
1334	34	8220DB001285
1335	35	8220DB001285
1336	40	8220DB001285
1337	42	8220DB001285
1338	6	8220DB001286
1339	35	8220DB001286
1340	42	8220DB001286
1341	17	8220DB001287
1342	6	8220DB001288
1343	17	8220DB001288
1344	35	8220DB001288
1345	42	8220DB001288
1346	6	8220DB001289
1347	17	8220DB001289
1348	35	8220DB001289
1349	42	8220DB001289
1350	17	8220DB001290
1351	31	8220DB001290
1352	42	8220DB001290
1353	17	8220DB001291
1354	31	8220DB001291
1355	42	8220DB001291
1356	17	8220DB001292
1357	31	8220DB001292
1358	17	8220DB001293
1359	31	8220DB001293
1360	17	8220DB001294
1361	31	8220DB001294
1362	17	8220DB001295
1363	31	8220DB001295
1364	17	8220DB001296
1365	31	8220DB001296
1366	17	8220DB001297
1367	31	8220DB001297
1368	17	8220DB001298
1369	31	8220DB001298
1370	17	8220DB001299
1371	17	8220DB001300
1372	17	8220DB001335
1373	17	8220DB001336
1374	17	8220DB001337
1375	31	8220DB001337
1376	17	8220DB001338
1377	31	8220DB001338
1378	17	8220DB001339
1379	31	8220DB001339
1380	17	8220DB001340
1381	31	8220DB001340
1382	17	8220DB001341
1383	31	8220DB001341
1384	17	8220DB001342
1385	31	8220DB001342
1386	17	8220DB001343
1387	31	8220DB001343
1388	17	8220DB001344
1389	31	8220DB001344
1390	42	8220DB001344
1391	17	8220DB001345
1392	31	8220DB001345
1393	42	8220DB001345
1394	17	8220DB001347
1395	31	8220DB001347
1396	42	8220DB001347
1397	6	8220DB001348
1398	17	8220DB001348
1399	35	8220DB001348
1400	42	8220DB001348
1401	6	8220DB001349
1402	17	8220DB001349
1403	35	8220DB001349
1404	42	8220DB001349
1405	6	8220DB001350
1406	17	8220DB001350
1407	35	8220DB001350
1408	42	8220DB001350
1409	6	8220DB001352
1410	17	8220DB001352
1411	34	8220DB001352
1412	35	8220DB001352
1413	40	8220DB001352
1414	42	8220DB001352
1415	6	8220DB001353
1416	10	8220DB001353
1417	11	8220DB001353
1418	12	8220DB001353
1419	14	8220DB001353
1420	17	8220DB001353
1421	34	8220DB001353
1422	35	8220DB001353
1423	40	8220DB001353
1424	42	8220DB001353
1425	10	8220DB001354
1426	11	8220DB001354
1427	12	8220DB001354
1428	14	8220DB001354
1429	6	8220DB001355
1430	17	8220DB001355
1431	34	8220DB001355
1432	35	8220DB001355
1433	40	8220DB001355
1434	42	8220DB001355
1435	6	8220DB001357
1436	17	8220DB001357
1437	34	8220DB001357
1438	35	8220DB001357
1439	40	8220DB001357
1440	42	8220DB001357
1441	15	8220DB001358
1442	19	8220DB001358
1443	25	8220DB001358
1444	31	8220DB001358
1445	34	8220DB001358
1446	35	8220DB001358
1447	36	8220DB001358
1448	39	8220DB001358
1449	6	8220DB001359
1450	7	8220DB001359
1451	8	8220DB001359
1452	17	8220DB001359
1453	40	8220DB001359
1454	42	8220DB001359
1455	6	8220DB001360
1456	35	8220DB001360
1457	6	8220DB001362
1458	35	8220DB001362
1459	6	8220DB001363
1460	35	8220DB001363
1461	6	8220DB001364
1462	35	8220DB001364
1463	6	8220DB001365
1464	35	8220DB001365
1465	6	8220DB001366
1466	35	8220DB001366
1467	6	8220DB001367
1468	35	8220DB001367
1469	7	8220DB001369
1470	35	8220DB001369
1471	7	8220DB001370
1472	35	8220DB001370
1473	7	8220DB001371
1474	35	8220DB001371
1475	35	8220DB001372
1476	35	8220DB001373
1477	35	8220DB001374
1478	35	8220DB001375
1479	35	8220DB001376
1480	7	8220DB001377
1481	35	8220DB001377
1482	7	8220DB001378
1483	35	8220DB001378
1484	35	8220DB001379
1485	6	8220DB001380
1486	35	8220DB001380
1487	6	8220DB001381
1488	35	8220DB001381
1489	6	8220DB001382
1490	35	8220DB001382
1491	6	8220DB001383
1492	35	8220DB001383
1493	6	8220DB001384
1494	35	8220DB001384
1495	6	8220DB001385
1496	35	8220DB001385
1497	15	8220DB001386
1498	15	8220DB001387
1499	15	8220DB001388
1500	15	8220DB001389
1501	15	8220DB001396
1502	15	8220DB001397
1503	15	8220DB001398
1504	15	8220DB001399
1505	15	8220DB001401
1506	15	8220DB001402
1507	15	8220DB001403
1508	15	8220DB001404
1509	15	8220DB001405
1510	16	8220DB001406
1511	19	8220DB001406
1512	16	8220DB001407
1513	19	8220DB001407
1514	16	8220DB001409
1515	19	8220DB001409
1516	6	8220DB001410
1517	6	8220DB001411
1518	6	8220DB001412
1519	6	8220DB001413
1520	6	8220DB001414
1521	6	8220DB001415
1522	6	8220DB001417
1523	6	8220DB001418
1524	6	8220DB001419
1525	7	8220DB001419
1526	6	8220DB001423
1527	7	8220DB001423
1528	6	8220DB001424
1529	7	8220DB001424
1530	16	8220DB001424
1531	19	8220DB001424
1532	6	8220DB001425
1533	7	8220DB001425
1534	6	8220DB001426
1535	7	8220DB001426
1536	6	8220DB001427
1537	6	8220DB001428
1538	6	8220DB001429
1539	6	8220DB001430
1540	6	8220DB001432
1541	6	8220DB001433
1542	6	8220DB001434
1543	6	8220DB001435
1544	16	8220DB001436
1545	19	8220DB001436
1546	15	8220DB001438
1547	15	8220DB001439
1548	15	8220DB001440
1549	15	8220DB001441
1550	15	8220DB001442
1551	13	8220DB001443
1552	21	8220DB001443
1553	23	8220DB001443
1554	36	8220DB001443
1555	38	8220DB001443
1556	39	8220DB001443
1557	40	8220DB001443
1558	13	8220DB001444
1559	18	8220DB001444
1560	21	8220DB001444
1561	23	8220DB001444
1562	36	8220DB001444
1563	38	8220DB001444
1564	39	8220DB001444
1565	13	8220DB001445
1566	18	8220DB001445
1567	21	8220DB001445
1568	23	8220DB001445
1569	36	8220DB001445
1570	38	8220DB001445
1571	39	8220DB001445
1572	18	8220DB001449
1573	36	8220DB001449
1574	18	8220DB001450
1575	36	8220DB001450
1576	18	8220DB001451
1577	36	8220DB001451
1578	36	8220DB001452
1579	7	8220DB001453
1580	7	8220DB001454
1581	7	8220DB001455
1582	7	8220DB001456
1583	7	8220DB001457
1584	7	8220DB001458
1585	7	8220DB001459
1586	7	8220DB001460
1587	7	8220DB001462
1588	7	8220DB001463
1589	7	8220DB001464
1590	7	8220DB001465
1591	7	8220DB001466
1592	7	8220DB001467
1593	7	8220DB001468
1594	7	8220DB001469
1595	36	8220DB001471
1596	18	8220DB001472
1597	35	8220DB001472
1598	36	8220DB001472
1599	18	8220DB001473
1600	35	8220DB001473
1601	36	8220DB001473
1602	18	8220DB001474
1603	36	8220DB001474
1604	13	8220DB001476
1605	18	8220DB001476
1606	36	8220DB001476
1607	39	8220DB001476
1608	13	8220DB001478
1609	18	8220DB001478
1610	21	8220DB001478
1611	23	8220DB001478
1612	38	8220DB001478
1613	40	8220DB001478
1614	13	8220DB001479
1615	16	8220DB001479
1616	18	8220DB001479
1617	21	8220DB001479
1618	23	8220DB001479
1619	38	8220DB001479
1620	40	8220DB001479
1621	36	8220DB001480
1622	39	8220DB001480
1623	7	8220DB001481
1624	7	8220DB001482
1625	7	8220DB001484
1626	7	8220DB001485
1627	7	8220DB001486
1628	7	8220DB001487
1629	7	8220DB001488
1630	7	8220DB001489
1631	7	8220DB001490
1632	7	8220DB001491
1633	7	8220DB001492
1634	7	8220DB001493
1635	7	8220DB001494
1636	7	8220DB001495
1637	7	8220DB001496
1638	7	8220DB001499
1639	16	8220DB001500
1640	19	8220DB001500
1641	7	8220DB001505
1642	11	8220DB001506
1643	25	8220DB001506
1644	11	8220DB001507
1645	25	8220DB001507
1646	11	8220DB001508
1647	25	8220DB001508
1648	11	8220DB001509
1649	25	8220DB001509
1650	11	8220DB001510
1651	25	8220DB001510
1652	11	8220DB001511
1653	25	8220DB001511
1654	11	8220DB001512
1655	7	8220DB001515
1656	25	8220DB001518
1657	25	8220DB001519
1658	25	8220DB001520
1659	25	8220DB001521
1660	25	8220DB001523
1661	25	8220DB001524
1662	25	8220DB001525
1663	25	8220DB001526
1664	21	8220DB001528
1665	11	8220DB001531
1666	25	8220DB001531
1667	11	8220DB001532
1668	25	8220DB001532
1669	11	8220DB001533
1670	25	8220DB001533
1671	11	8220DB001534
1672	25	8220DB001534
1673	11	8220DB001535
1674	25	8220DB001535
1675	11	8220DB001536
1676	25	8220DB001536
1677	11	8220DB001537
1678	25	8220DB001537
1679	11	8220DB001538
1680	40	8220DB001539
1681	40	8220DB001540
1682	25	8220DB001547
1683	25	8220DB001548
1684	25	8220DB001549
1685	11	8220DB001558
1686	25	8220DB001558
1687	25	8220DB001559
1688	11	8220DB001560
1689	40	8220DB001566
1690	40	8220DB001567
1691	25	8220DB001573
1692	25	8220DB001574
1693	25	8220DB001575
1694	25	8220DB001585
1695	25	8220DB001586
1696	25	8220DB001587
1697	25	8220DB001591
1698	25	8220DB001592
1699	25	8220DB001593
1700	25	8220DB001594
1701	25	8220DB001596
1702	25	8220DB001597
1703	25	8220DB001598
1704	25	8220DB001599
1705	25	8220DB001606
1706	25	8220DB001607
1707	25	8220DB001608
1708	25	8220DB001609
1709	25	8220DB001610
1710	40	8220DB001614
1711	40	8220DB001615
1712	40	8220DB001616
1713	40	8220DB001617
1714	40	8220DB001618
1715	40	8220DB001619
1716	1	8220DB001620
1717	20	8220DB001620
1718	26	8220DB001620
1719	1	8220DB001641
1720	20	8220DB001641
1721	26	8220DB001641
1722	1	8220DB001642
1723	20	8220DB001642
1724	26	8220DB001642
1725	29	8220DB001643
1726	21	8220DB001647
1727	23	8220DB001647
1728	38	8220DB001647
1729	21	8220DB001648
1730	23	8220DB001648
1731	38	8220DB001648
1732	21	8220DB001649
1733	23	8220DB001649
1734	38	8220DB001649
1735	21	8220DB001654
1736	21	8220DB001655
1737	21	8220DB001656
1738	21	8220DB001657
1739	21	8220DB001658
1740	21	8220DB001659
1741	6	8220DB001660
1742	21	8220DB001660
1743	22	8220DB001660
1744	23	8220DB001660
1745	38	8220DB001660
1746	6	8220DB001661
1747	21	8220DB001661
1748	22	8220DB001661
1749	23	8220DB001661
1750	38	8220DB001661
1751	21	8220DB001662
1752	22	8220DB001662
1753	23	8220DB001662
1754	38	8220DB001662
1755	21	8220DB001664
1756	22	8220DB001664
1757	23	8220DB001664
1758	38	8220DB001664
1759	21	8220DB001665
1760	22	8220DB001665
1761	23	8220DB001665
1762	38	8220DB001665
1763	21	8220DB001666
1764	22	8220DB001666
1765	23	8220DB001666
1766	38	8220DB001666
1767	21	8220DB001667
1768	21	8220DB001668
1769	21	8220DB001694
1770	21	8220DB001695
1771	21	8220DB001696
1772	22	8220DB001696
1773	23	8220DB001696
1774	38	8220DB001696
1775	21	8220DB001697
1776	22	8220DB001697
1777	23	8220DB001697
1778	38	8220DB001697
1779	21	8220DB001698
1780	22	8220DB001698
1781	23	8220DB001698
1782	38	8220DB001698
1783	21	8220DB001699
1784	22	8220DB001699
1785	23	8220DB001699
1786	38	8220DB001699
1787	6	8220DB001700
1788	21	8220DB001700
1789	22	8220DB001700
1790	23	8220DB001700
1791	38	8220DB001700
1792	6	8220DB001701
1793	21	8220DB001701
1794	22	8220DB001701
1795	23	8220DB001701
1796	38	8220DB001701
1797	6	8220DB001702
1798	21	8220DB001702
1799	22	8220DB001702
1800	23	8220DB001702
1801	38	8220DB001702
1802	21	8220DB001703
1803	22	8220DB001703
1804	23	8220DB001703
1805	38	8220DB001703
1806	21	8220DB001704
1807	21	8220DB001705
1808	21	8220DB001706
1809	21	8220DB001707
1810	21	8220DB001708
1811	21	8220DB001709
1812	21	8220DB001710
1813	21	8220DB001711
1814	21	8220DB001712
1815	21	8220DB001713
1816	23	8220DB001713
1817	38	8220DB001713
1818	21	8220DB001714
1819	23	8220DB001714
1820	38	8220DB001714
1821	21	8220DB001715
1822	23	8220DB001715
1823	38	8220DB001715
1824	9	8220DB001724
1825	9	8220DB001725
1826	9	8220DB001726
1827	9	8220DB001727
1828	9	8220DB001728
1829	9	8220DB001729
1830	9	8220DB001730
1831	9	8220DB001731
1832	9	8220DB001732
1833	9	8220DB001733
1834	9	8220DB001734
1835	9	8220DB001735
1836	9	8220DB001736
1837	9	8220DB001737
1838	9	8220DB001738
1839	9	8220DB001739
1840	9	8220DB001740
1841	9	8220DB001741
1842	9	8220DB001742
1843	9	8220DB001743
1844	9	8220DB001744
1845	9	8220DB001745
1846	9	8220DB001746
1847	9	8220DB001747
1848	9	8220DB001748
1849	9	8220DB001749
1850	9	8220DB001750
1851	9	8220DB001751
1852	9	8220DB001752
1853	9	8220DB001753
1854	9	8220DB001754
1855	9	8220DB001755
1856	9	8220DB001756
1857	9	8220DB001757
1858	9	8220DB001758
1859	9	8220DB001759
1860	9	8220DB001760
1861	9	8220DB001761
1862	9	8220DB001762
1863	9	8220DB001763
1864	9	8220DB001764
1865	9	8220DB001765
1866	9	8220DB001767
1867	9	8220DB001769
1868	9	8220DB001770
1869	9	8220DB001771
1870	9	8220DB001772
1871	9	8220DB001773
1872	9	8220DB001774
1873	9	8220DB001775
1874	9	8220DB001776
1875	9	8220DB001777
1876	9	8220DB001778
1877	9	8220DB001794
1878	22	8220DB001795
1879	22	8220DB001802
1880	22	8220DB001803
1881	22	8220DB001804
1882	23	8220DB001805
1883	38	8220DB001805
1884	22	8220DB001806
1885	23	8220DB001806
1886	38	8220DB001806
1887	22	8220DB001807
1888	23	8220DB001807
1889	38	8220DB001807
1890	22	8220DB001847
1891	23	8220DB001847
1892	38	8220DB001847
1893	22	8220DB001905
1894	23	8220DB001905
1895	38	8220DB001905
1896	23	8220DB001906
1897	38	8220DB001906
1898	23	8220DB001907
1899	38	8220DB001907
1900	23	8220DB001908
1901	38	8220DB001908
1902	23	8220DB001909
1903	38	8220DB001909
1904	21	8220DB001911
1905	23	8220DB001911
1906	38	8220DB001911
1907	23	8220DB001913
1908	38	8220DB001913
1909	23	8220DB001914
1910	38	8220DB001914
1911	7	8220DB001934
1912	15	8220DB001934
1913	16	8220DB001934
1914	19	8220DB001934
1915	31	8220DB001934
1916	7	8220DB001935
1917	8	8220DB001935
1918	25	8220DB001935
1919	7	8220DB001937
1920	8	8220DB001937
1921	25	8220DB001937
1922	7	8220DB001938
1923	8	8220DB001938
1924	25	8220DB001938
1925	7	8220DB001939
1926	8	8220DB001939
1927	25	8220DB001939
1928	7	8220DB001940
1929	8	8220DB001940
1930	25	8220DB001940
1931	7	8220DB001941
1932	8	8220DB001941
1933	25	8220DB001941
1934	8	8220DB001942
1935	25	8220DB001942
1936	8	8220DB001943
1937	25	8220DB001943
1938	8	8220DB001944
1939	25	8220DB001944
1940	8	8220DB001945
1941	25	8220DB001945
1942	8	8220DB001946
1943	25	8220DB001946
1944	35	8220DB001946
1945	8	8220DB001947
1946	25	8220DB001947
1947	35	8220DB001947
1948	8	8220DB001948
1949	35	8220DB001948
1950	36	8220DB001948
1951	8	8220DB001949
1952	35	8220DB001949
1953	36	8220DB001949
1954	8	8220DB001950
1955	35	8220DB001950
1956	36	8220DB001950
1957	8	8220DB001951
1958	35	8220DB001951
1959	36	8220DB001951
1960	8	8220DB001952
1961	35	8220DB001952
1962	36	8220DB001952
1963	8	8220DB001953
1964	35	8220DB001953
1965	36	8220DB001953
1966	8	8220DB001954
1967	35	8220DB001954
1968	36	8220DB001954
1969	8	8220DB001955
1970	35	8220DB001955
1971	36	8220DB001955
1972	8	8220DB001956
1973	35	8220DB001956
1974	36	8220DB001956
1975	8	8220DB001981
1976	35	8220DB001981
1977	36	8220DB001981
1978	8	8220DB001982
1979	35	8220DB001982
1980	8	8220DB001984
1981	35	8220DB001984
1982	36	8220DB001984
1983	8	8220DB001985
1984	35	8220DB001985
1985	36	8220DB001985
1986	8	8220DB001986
1987	35	8220DB001986
1988	36	8220DB001986
1989	8	8220DB001987
1990	35	8220DB001987
1991	36	8220DB001987
1992	8	8220DB001988
1993	35	8220DB001988
1994	36	8220DB001988
1995	8	8220DB001989
1996	25	8220DB001989
1997	35	8220DB001989
1998	8	8220DB001990
1999	25	8220DB001990
2000	8	8220DB001992
2001	25	8220DB001992
2002	8	8220DB001993
2003	25	8220DB001993
2004	8	8220DB001994
2005	25	8220DB001994
2006	7	8220DB001995
2007	8	8220DB001995
2008	25	8220DB001995
2009	7	8220DB001996
2010	8	8220DB001996
2011	25	8220DB001996
2012	7	8220DB001997
2013	8	8220DB001997
2014	25	8220DB001997
2015	7	8220DB001998
2016	8	8220DB001998
2017	25	8220DB001998
2018	7	8220DB001999
2019	8	8220DB001999
2020	25	8220DB001999
2021	7	8220DB002001
2022	8	8220DB002001
2023	25	8220DB002001
2024	7	8220DB002002
2025	8	8220DB002002
2026	19	8220DB002002
2027	25	8220DB002002
2028	31	8220DB002002
2029	15	8220DB002003
2030	30	8220DB002085
2031	30	8220DB002086
2032	30	8220DB002087
2033	30	8220DB002088
2034	30	8220DB002089
2035	16	8220DB002094
2036	19	8220DB002094
2037	16	8220DB002095
2038	19	8220DB002095
2039	16	8220DB002096
2040	19	8220DB002096
2041	16	8220DB002097
2042	19	8220DB002097
2043	16	8220DB002099
2044	19	8220DB002099
2045	16	8220DB002101
2046	19	8220DB002101
2047	7	8220DB002102
2048	16	8220DB002102
2049	19	8220DB002102
2050	7	8220DB002103
2051	19	8220DB002103
2052	16	8220DB002105
2053	16	8220DB002181
2054	16	8220DB002182
2055	7	8220DB002183
2056	19	8220DB002183
2057	7	8220DB002184
2058	19	8220DB002184
2059	7	8220DB002185
2060	16	8220DB002185
2061	19	8220DB002185
2062	16	8220DB002186
2063	19	8220DB002186
2064	16	8220DB002187
2065	19	8220DB002187
2066	16	8220DB002188
2067	19	8220DB002188
2068	16	8220DB002189
2069	19	8220DB002189
2070	16	8220DB002190
2071	19	8220DB002190
2072	18	8220DB002191
2073	18	8220DB002192
2074	18	8220DB002193
2075	18	8220DB002194
2076	18	8220DB002195
2077	18	8220DB002196
2078	18	8220DB002197
2079	18	8220DB002198
2080	18	8220DB002200
2081	18	8220DB002243
2082	18	8220DB002244
2083	18	8220DB002245
2084	18	8220DB002246
2085	18	8220DB002247
2086	18	8220DB002248
2087	18	8220DB002249
2088	18	8220DB002250
2089	18	8220DB002251
2090	32	8220DB002255
2091	32	8220DB002256
2092	32	8220DB002257
2093	32	8220DB002258
2094	32	8220DB002259
2095	32	8220DB002260
2096	32	8220DB002261
2097	32	8220DB002262
2098	32	8220DB002264
2099	32	8220DB002270
2100	32	8220DB002274
2101	16	8220DB002278
2102	32	8220DB002278
2103	16	8220DB002279
2104	32	8220DB002279
2105	32	8220DB002280
2106	32	8220DB002281
2107	32	8220DB002282
2108	32	8220DB002283
2109	15	8220DB002310
2110	16	8220DB002310
2111	19	8220DB002310
2112	15	8220DB002311
2113	16	8220DB002311
2114	19	8220DB002311
2115	16	8220DB002312
2116	19	8220DB002312
2117	16	8220DB002313
2118	19	8220DB002313
2119	16	8220DB002314
2120	19	8220DB002314
2121	16	8220DB002315
2122	19	8220DB002315
2123	15	8220DB002317
2124	15	8220DB002318
2125	15	8220DB002319
2126	15	8220DB002327
2127	19	8220DB002327
2128	15	8220DB002328
2129	19	8220DB002328
2130	15	8220DB002329
2131	19	8220DB002329
2132	15	8220DB002330
2133	19	8220DB002330
2134	15	8220DB002331
2135	19	8220DB002331
2136	19	8220DB002332
2137	19	8220DB002333
2138	19	8220DB002378
2139	16	8220DB002379
2140	19	8220DB002379
2141	16	8220DB002380
2142	19	8220DB002380
2143	16	8220DB002382
2144	19	8220DB002382
2145	15	8220DB002383
2146	16	8220DB002383
2147	19	8220DB002383
2148	31	8220DB002383
2149	31	8220DB002385
2150	31	8220DB002386
2151	31	8220DB002387
2152	31	8220DB002388
2153	42	8220DB002389
2154	42	8220DB002390
2155	42	8220DB002391
2156	42	8220DB002392
2157	42	8220DB002393
2158	42	8220DB002394
2159	42	8220DB002413
2160	42	8220DB002414
2161	42	8220DB002415
2162	42	8220DB002416
2163	42	8220DB002417
2164	42	8220DB002418
2165	42	8220DB002419
2166	19	8220DB002431
2167	42	8220DB002431
2168	19	8220DB002432
2169	42	8220DB002432
2170	19	8220DB002433
2171	42	8220DB002433
2172	42	8220DB002434
2173	42	8220DB002435
2174	42	8220DB002436
2175	42	8220DB002437
2176	42	8220DB002438
2177	42	8220DB002439
2178	42	8220DB002440
2179	42	8220DB002441
2180	42	8220DB002442
2181	42	8220DB002443
2182	42	8220DB002444
2183	40	8220DB002448
2184	40	8220DB002450
2185	42	8220DB002452
2186	42	8220DB002453
2187	42	8220DB002462
2188	42	8220DB002463
2189	40	8220DB002465
2190	40	8220DB002466
2191	40	8220DB002467
2192	40	8220DB002471
2193	40	8220DB002472
2194	40	8220DB002473
2195	40	8220DB002474
2196	40	8220DB002475
2197	40	8220DB002476
2198	40	8220DB002477
2199	40	8220DB002478
2200	40	8220DB002479
2201	40	8220DB002480
2202	40	8220DB002481
2203	40	8220DB002482
2204	40	8220DB002483
2205	40	8220DB002484
2206	40	8220DB002485
2207	40	8220DB002486
2208	40	8220DB002487
2209	40	8220DB002488
2210	40	8220DB002489
2211	40	8220DB002490
2212	40	8220DB002491
2213	40	8220DB002492
2214	40	8220DB002493
2215	40	8220DB002494
2216	40	8220DB002495
2217	40	8220DB002496
2218	40	8220DB002497
2219	12	8220DB002498
2220	16	8220DB002498
2221	12	8220DB002499
2222	16	8220DB002499
2223	12	8220DB002500
2224	16	8220DB002500
2225	12	8220DB002501
2226	16	8220DB002501
2227	16	8220DB002508
2228	32	8220DB002508
2229	31	8220DB002634
2230	31	8220DB002635
2231	31	8220DB002636
2232	39	8220DB002637
2233	39	8220DB002638
2234	36	8220DB002640
2235	39	8220DB002640
2236	36	8220DB002641
2237	39	8220DB002641
2238	25	8220DB002642
2239	36	8220DB002642
2240	25	8220DB002643
2241	39	8220DB002643
2242	25	8220DB002644
2243	39	8220DB002644
2244	39	8220DB002645
2245	39	8220DB002646
2246	39	8220DB002647
2247	39	8220DB002648
2248	39	8220DB002649
2249	39	8220DB002650
2250	39	8220DB002652
2251	39	8220DB002653
2252	39	8220DB002654
2253	25	8220DB002655
2254	39	8220DB002655
2255	25	8220DB002656
2256	39	8220DB002656
2257	39	8220DB002657
2258	39	8220DB002658
2259	39	8220DB002659
2260	39	8220DB002660
2261	39	8220DB002661
2262	39	8220DB002662
2263	39	8220DB002663
2264	39	8220DB002664
2265	39	8220DB002665
2266	39	8220DB002666
2267	39	8220DB002667
2268	25	8220DB002668
2269	39	8220DB002670
2270	25	8220DB002672
2271	25	8220DB002688
2272	25	8220DB002689
2273	25	8220DB002696
2274	39	8220DB002696
2275	25	8220DB002697
2276	39	8220DB002697
2277	39	8220DB002700
2278	39	8220DB002701
2279	39	8220DB002702
2280	39	8220DB002703
2281	39	8220DB002704
2282	39	8220DB002706
2283	39	8220DB002708
2284	25	8220DB002709
2285	25	8220DB002710
2286	25	8220DB002711
2287	25	8220DB002712
2288	25	8220DB002713
2289	25	8220DB002714
2290	25	8220DB002715
2291	25	8220DB002716
2292	32	8220DB002717
2293	25	8220DB002718
2294	39	8220DB002718
2295	25	8220DB002719
2296	39	8220DB002719
2297	32	8220DB002720
2298	36	8220DB002722
2299	39	8220DB002722
2300	16	8220DB002726
2301	16	8220DB002727
2302	16	8220DB002778
2303	3	8220DB002795
2304	13	8220DB002795
2305	5	8220DB002809
2306	12	8220DB002809
2307	29	8220DB002809
2308	33	8220DB002809
2309	12	8220DB002810
2310	18	8220DB002810
2311	29	8220DB002810
2312	33	8220DB002810
2313	29	8220DB002811
2314	33	8220DB002811
2315	29	8220DB002812
2316	33	8220DB002812
2317	29	8220DB002813
2318	33	8220DB002813
2319	29	8220DB002814
2320	33	8220DB002814
2321	29	8220DB002815
2322	33	8220DB002815
2323	29	8220DB002816
2324	33	8220DB002816
2325	29	8220DB002817
2326	33	8220DB002817
2327	29	8220DB002898
2328	33	8220DB002898
2329	29	8220DB002899
2330	33	8220DB002899
2331	29	8220DB002900
2332	33	8220DB002900
2333	29	8220DB002901
2334	33	8220DB002901
2335	29	8220DB002902
2336	33	8220DB002902
2337	29	8220DB002903
2338	33	8220DB002903
2339	39	8220DB002906
2340	39	8220DB002907
2341	39	8220DB002908
2342	39	8220DB002909
2343	39	8220DB002910
2344	39	8220DB002911
2345	36	8220DB002912
2346	39	8220DB002912
2347	10	8220DB002914
2348	25	8220DB002957
2349	25	8220DB002958
2350	10	8220DB002989
2351	10	8220DB002990
2352	10	8220DB002999
2353	10	8220DB003000
2354	10	8220DB003001
2355	10	8220DB003002
2356	15	8220DB003355
2357	15	8220DB003356
2358	29	8220DB003562
2359	33	8220DB003562
2360	16	8220DB003952
2361	19	8220DB003952
2362	13	8220DB004320
2363	6	8220DB004322
2364	25	8220DB004363
2365	40	8220DB004369
2366	42	8220DB004369
2367	6	8220DB004371
2368	40	8220DB004372
2369	42	8220DB004376
2370	42	8220DB004377
2371	32	8220DB004380
2372	10	8220DB004382
2373	14	8220DB004382
2374	19	8220DB004382
2375	27	8220DB004382
2376	28	8220DB004382
2377	19	8220DB004383
2378	9	8220DB004384
2379	10	8220DB004384
2380	14	8220DB004384
2381	19	8220DB004384
2382	27	8220DB004384
2383	28	8220DB004384
2384	32	8220DB004384
2385	14	8220DB004385
2386	19	8220DB004385
2387	27	8220DB004385
2388	28	8220DB004385
2389	19	8220DB004388
2390	7	8220DB004399
2391	7	8220DB004400
2392	8	8220DB004406
2393	35	8220DB004406
2394	36	8220DB004406
2395	13	8220DB004407
2396	39	8220DB004407
2397	18	8220DB004408
2398	35	8220DB004408
2399	36	8220DB004408
2400	39	8220DB004413
2401	10	8220DB004415
2402	14	8220DB004415
2403	1	8220DB004432
2404	17	8220DB004432
2405	20	8220DB004432
2406	26	8220DB004432
2407	29	8220DB004432
2408	16	8220DB004434
2409	19	8220DB004434
2410	30	8220DB004455
2411	6	8220DB004456
2412	17	8220DB004456
2413	34	8220DB004456
2414	35	8220DB004456
2415	40	8220DB004456
2416	42	8220DB004456
2417	21	8220DB004458
2418	32	8220DB004468
2419	32	8220DB004469
2420	42	8220DB004479
2421	5	8220DB004481
2422	5	8220DB004485
2423	15	8220DB004494
2424	5	8220DB004495
2425	12	8220DB004495
2426	14	8220DB004495
2427	15	8220DB004495
2428	16	8220DB004495
2429	19	8220DB004495
2430	35	8220DB004495
2431	36	8220DB004495
2432	6	8220DB004498
2433	5	8220DB004499
2434	5	8220DB004500
2435	5	8220DB004501
2436	5	8220DB004502
2437	5	8220DB004504
2438	7	8220DB004509
2439	7	8220DB004513
2440	32	8220DB004513
2441	7	8220DB004514
2442	7	8220DB004515
2443	7	8220DB004516
2444	7	8220DB004518
2445	8	8220DB004521
2446	25	8220DB004521
2447	31	8220DB004521
2448	34	8220DB004521
2449	16	8220DB004522
2450	19	8220DB004522
2451	6	8220DB004523
2452	6	8220DB004524
2453	6	8220DB004525
2454	6	8220DB004526
2455	10	8220DB004528
2456	11	8220DB004528
2457	12	8220DB004528
2458	14	8220DB004528
2459	34	8220DB004528
2460	40	8220DB004528
2461	5	8220DB004538
2462	25	8220DB004539
2463	11	8220DB004542
2464	25	8220DB004542
2465	11	8220DB004543
2466	25	8220DB004546
2467	14	8220DB004563
2468	19	8220DB004563
2469	27	8220DB004563
2470	28	8220DB004563
2471	25	8220DB004583
2472	14	8220DB004593
2473	19	8220DB004593
2474	14	8220DB004594
2475	14	8220DB004595
2476	19	8220DB004595
2477	14	8220DB004596
2478	19	8220DB004596
2479	2	8220DB004680
2480	8	8220DB004680
2481	24	8220DB004680
2482	42	8220DB004680
2483	8	8220DB004683
2484	19	8220DB004692
2485	19	8220DB004693
2486	19	8220DB004694
2487	19	8220DB004695
2488	19	8220DB004696
2489	19	8220DB004697
2490	19	8220DB004698
2491	19	8220DB004699
2492	19	8220DB004700
2493	36	8220DB004720
2494	5	8220DB004725
2495	24	8220DB004725
2496	37	8220DB004725
2497	40	8220DB004788
2498	42	8220DB004788
2499	15	8220DB004854
2500	15	8220DB004855
2501	15	8220DB004856
2502	15	8220DB004857
2503	40	8220DB004890
2504	42	8220DB004890
2505	40	8220DB004891
2506	5	8220DB004934
2507	5	8220DB004935
2508	5	8220DB004936
2509	25	8220DB004937
2510	25	8220DB004938
2511	37	8220DB004962
2512	11	8220DB004985
2513	15	8220DB005025
2514	40	8220DB005026
2515	31	8220DB005097
2516	16	8220DB005099
2517	19	8220DB005099
2518	39	8220DB005134
2519	16	8220DB005140
2520	5	8220DB005144
2521	5	8220DB005145
2522	5	8220DB005147
2523	15	8220DB005148
2524	6	8220DB005149
2525	7	8220DB005149
2526	31	8220DB005192
2527	5	8220DB006004
2528	8	8220DB006016
2529	8	8220DB006017
2530	11	8220DB006042
2531	12	8220DB006042
2532	7	8220DB006056
2533	7	8220DB006057
2534	11	8220DB006059
2535	22	8220DB006059
2536	39	8220DB006070
2537	5	8220DB006071
2538	29	8220DB006074
2539	33	8220DB006074
2540	14	8220DB006079
2541	25	8220DB006080
2542	6	8220DB006094
2543	7	8220DB006094
2544	14	8220DB006115
2545	19	8220DB006115
2546	27	8220DB006115
2547	28	8220DB006115
2548	2	8220DB006122
2549	8	8220DB006125
2550	19	8220DB006130
2551	16	8220DB006140
2552	16	8220DB006142
2553	8	8220DB006182
2554	24	8220DB006182
2555	8	8220DB006238
2556	8	8220DB006239
2557	8	8220DB006241
2558	16	8220DB006251
2559	12	8220DB006252
2560	8	8220DB006253
2561	40	8220DB006273
2562	42	8220DB006273
2563	11	8220DB006276
2564	14	8220DB006315
2565	14	8220DB006316
2566	14	8220DB006317
2567	14	8220DB006318
2568	14	8220DB006319
2569	14	8220DB006320
2570	11	8220DB006361
2571	11	8220DB006362
2572	11	8220DB006363
2573	11	8220DB006367
2574	5	8220DB007027
2575	5	8220DB007028
2576	16	8220DB007043
2577	19	8220DB007043
2578	30	8220DB007053
2579	18	8220DB007078
2580	36	8220DB007078
2581	8	8220DB007092
2582	24	8220DB007113
2583	11	8220DB007149
2584	7	8220DB007153
2585	7	8220DB007154
2586	8	8220DB007191
2587	8	8220DB007192
2588	2	8220DB007220
2589	14	8220DB007236
2590	14	8220DB007245
2591	14	8220DB007246
2592	11	8220DB007276
2593	11	8220DB007277
2594	17	8220DB007293
2595	7	8220DB007320
2596	22	8220DB007333
2597	23	8220DB007333
2598	38	8220DB007333
2599	32	8220DB007336
2600	22	8220DB007339
2601	23	8220DB007339
2602	38	8220DB007339
2603	21	8220DB007340
2604	22	8220DB007370
2605	38	8220DB007370
2606	18	8220DB007387
2607	18	8220DB007391
2608	5	8220DB007396
2609	12	8220DB007397
2610	12	8220DB007398
2611	12	8220DB007399
2612	15	8220DB007412
2613	15	8220DB007413
2614	15	8220DB007414
2615	40	8220DB007423
2616	40	8220DB007424
2617	40	8220DB007425
2618	40	8220DB007426
2619	40	8220DB007427
2620	40	8220DB007428
2621	40	8220DB007430
2622	40	8220DB007431
2623	36	8220DB007435
2624	39	8220DB007435
2625	6	8220DB007438
2626	6	8220DB007439
2627	13	8220DB007453
2628	18	8220DB007453
2629	21	8220DB007453
2630	23	8220DB007453
2631	36	8220DB007453
2632	38	8220DB007453
2633	39	8220DB007453
2634	6	8220DB007454
2635	6	8220DB007455
2636	40	8220DB007458
2637	42	8220DB007458
2638	9	8220DB007469
2639	25	8220DB007471
2640	39	8220DB007507
2641	16	8220DB007514
2642	14	8220DB007516
2643	30	8220DB007564
2644	34	8220DB007564
2645	29	8220DB007571
2646	10	8220DB007577
2647	11	8220DB007577
2648	12	8220DB007577
2649	14	8220DB007577
2650	10	8220DB007578
2651	11	8220DB007578
2652	12	8220DB007578
2653	14	8220DB007578
2654	10	8220DB007579
2655	11	8220DB007579
2656	14	8220DB007579
2657	10	8220DB007581
2658	11	8220DB007581
2659	14	8220DB007581
2660	10	8220DB007582
2661	11	8220DB007582
2662	12	8220DB007582
2663	14	8220DB007582
2664	3	8220DB007586
2665	4	8220DB007586
2666	13	8220DB007586
2667	21	8220DB007586
2668	23	8220DB007586
2669	38	8220DB007586
2670	3	8220DB007587
2671	4	8220DB007587
2672	13	8220DB007587
2673	21	8220DB007587
2674	23	8220DB007587
2675	38	8220DB007587
2676	3	8220DB007588
2677	13	8220DB007588
2678	21	8220DB007588
2679	23	8220DB007588
2680	38	8220DB007588
2681	32	8220DB007601
2682	1	8220DB007602
2683	2	8220DB007602
2684	8	8220DB007602
2685	17	8220DB007602
2686	20	8220DB007602
2687	26	8220DB007602
2688	29	8220DB007602
2689	1	8220DB007603
2690	2	8220DB007603
2691	8	8220DB007603
2692	17	8220DB007603
2693	20	8220DB007603
2694	26	8220DB007603
2695	29	8220DB007603
2696	2	8220DB007615
2697	17	8220DB007615
2698	13	8220DB007622
2699	16	8220DB007622
2700	12	8220DB007623
2701	16	8220DB007623
2702	25	8220DB007661
2703	35	8220DB007665
2704	36	8220DB007665
2705	32	8220DB007671
2706	30	8220DB007738
2707	30	8220DB007739
2708	30	8220DB007740
2709	30	8220DB007741
2710	1	8220DB007865
2711	15	8230DB000100
2712	14	8230DB000946
2713	31	8230DB000946
2714	15	8230DB001095
2715	15	8230DB001096
2716	15	8230DB001097
2717	15	8230DB001099
2718	15	8230DB001100
2719	15	8230DB001111
2720	14	8230DB001125
2721	31	8230DB001125
2722	34	8230DB001125
2723	14	8230DB001127
2724	31	8230DB001127
2725	34	8230DB001127
2726	14	8230DB001130
2727	31	8230DB001130
2728	34	8230DB001130
2729	14	8230DB001140
2730	31	8230DB001140
2731	14	8230DB001141
2732	14	8230DB001142
2733	14	8230DB001143
2734	14	8230DB001144
2735	14	8230DB001145
2736	14	8230DB001150
2737	14	8230DB001151
2738	14	8230DB001152
2739	14	8230DB001153
2740	14	8230DB001154
2741	14	8230DB001155
2742	31	8230DB001155
2743	34	8230DB001155
2744	14	8230DB001157
2745	31	8230DB001157
2746	34	8230DB001157
2747	14	8230DB001158
2748	31	8230DB001158
2749	34	8230DB001158
2750	17	8230DB001301
2751	17	8230DB001302
2752	17	8230DB001303
2753	17	8230DB001304
2754	17	8230DB001305
2755	33	8230DB001305
2756	17	8230DB001320
2757	17	8230DB001321
2758	17	8230DB001322
2759	17	8230DB001323
2760	17	8230DB001324
2761	17	8230DB001325
2762	17	8230DB001326
2763	17	8230DB001327
2764	17	8230DB001328
2765	17	8230DB001329
2766	33	8230DB001329
2767	17	8230DB001330
2768	33	8230DB001330
2769	17	8230DB001331
2770	17	8230DB001332
2771	17	8230DB001333
2772	17	8230DB001334
2773	8	8230DB001957
2774	35	8230DB001957
2775	36	8230DB001957
2776	8	8230DB001958
2777	35	8230DB001958
2778	36	8230DB001958
2779	8	8230DB001959
2780	35	8230DB001959
2781	36	8230DB001959
2782	8	8230DB001960
2783	35	8230DB001960
2784	36	8230DB001960
2785	8	8230DB001963
2786	8	8230DB001964
2787	8	8230DB001965
2788	8	8230DB001966
2789	35	8230DB001968
2790	36	8230DB001968
2791	35	8230DB001969
2792	36	8230DB001969
2793	35	8230DB001970
2794	36	8230DB001970
2795	35	8230DB001971
2796	36	8230DB001971
2797	35	8230DB001972
2798	36	8230DB001972
2799	35	8230DB001973
2800	36	8230DB001973
2801	35	8230DB001974
2802	36	8230DB001974
2803	8	8230DB001975
2804	35	8230DB001975
2805	36	8230DB001975
2806	8	8230DB001977
2807	35	8230DB001977
2808	36	8230DB001977
2809	8	8230DB001978
2810	35	8230DB001978
2811	36	8230DB001978
2812	8	8230DB001980
2813	35	8230DB001980
2814	36	8230DB001980
2815	35	8230DB002114
2816	35	8230DB002115
2817	25	8230DB002118
2818	25	8230DB002119
2819	25	8230DB002120
2820	25	8230DB002121
2821	25	8230DB002123
2822	25	8230DB002124
2823	25	8230DB002125
2824	25	8230DB002126
2825	25	8230DB002127
2826	25	8230DB002128
2827	25	8230DB002129
2828	16	8230DB002133
2829	35	8230DB002133
2830	16	8230DB002134
2831	35	8230DB002134
2832	16	8230DB002135
2833	8	8230DB002136
2834	8	8230DB002137
2835	8	8230DB002138
2836	8	8230DB002139
2837	8	8230DB002140
2838	8	8230DB002141
2839	8	8230DB002142
2840	8	8230DB002143
2841	8	8230DB002145
2842	8	8230DB002146
2843	8	8230DB002147
2844	8	8230DB002148
2845	8	8230DB002149
2846	8	8230DB002150
2847	8	8230DB002151
2848	8	8230DB002152
2849	8	8230DB002153
2850	8	8230DB002154
2851	16	8230DB002156
2852	35	8230DB002156
2853	35	8230DB002158
2854	8	8230DB002159
2855	35	8230DB002159
2856	36	8230DB002159
2857	8	8230DB002160
2858	36	8230DB002160
2859	8	8230DB002161
2860	36	8230DB002161
2861	36	8230DB002162
2862	36	8230DB002163
2863	16	8230DB002164
2864	8	8230DB002165
2865	16	8230DB002165
2866	35	8230DB002165
2867	8	8230DB002166
2868	16	8230DB002166
2869	35	8230DB002166
2870	8	8230DB002167
2871	35	8230DB002167
2872	36	8230DB002168
2873	36	8230DB002169
2874	36	8230DB002170
2875	8	8230DB002172
2876	36	8230DB002172
2877	35	8230DB002173
2878	35	8230DB002174
2879	35	8230DB002176
2880	35	8230DB002177
2881	35	8230DB002178
2882	18	8230DB002201
2883	18	8230DB002202
2884	18	8230DB002203
2885	18	8230DB002204
2886	25	8230DB002205
2887	25	8230DB002206
2888	18	8230DB002207
2889	18	8230DB002208
2890	18	8230DB002210
2891	18	8230DB002211
2892	18	8230DB002241
2893	18	8230DB002242
2894	15	8230DB002320
2895	15	8230DB002321
2896	15	8230DB002322
2897	15	8230DB002323
2898	15	8230DB002324
2899	15	8230DB002325
2900	15	8230DB002326
2901	19	8230DB002334
2902	19	8230DB002335
2903	19	8230DB002336
2904	19	8230DB002337
2905	19	8230DB002339
2906	19	8230DB002340
2907	19	8230DB002346
2908	34	8230DB002346
2909	19	8230DB002349
2910	34	8230DB002349
2911	19	8230DB002351
2912	34	8230DB002351
2913	34	8230DB002352
2914	19	8230DB002353
2915	31	8230DB002353
2916	19	8230DB002355
2917	31	8230DB002357
2918	34	8230DB002357
2919	19	8230DB002359
2920	31	8230DB002359
2921	34	8230DB002359
2922	19	8230DB002360
2923	34	8230DB002360
2924	19	8230DB002369
2925	19	8230DB002370
2926	19	8230DB002371
2927	19	8230DB002372
2928	19	8230DB002373
2929	8	8230DB002374
2930	19	8230DB002377
2931	42	8230DB002445
2932	42	8230DB002446
2933	42	8230DB002454
2934	42	8230DB002455
2935	42	8230DB002456
2936	42	8230DB002457
2937	42	8230DB002458
2938	42	8230DB002459
2939	42	8230DB002460
2940	42	8230DB002461
2941	31	8230DB002515
2942	31	8230DB002516
2943	31	8230DB002517
2944	31	8230DB002518
2945	31	8230DB002522
2946	31	8230DB002523
2947	31	8230DB002524
2948	31	8230DB002532
2949	31	8230DB002539
2950	31	8230DB002540
2951	31	8230DB002542
2952	31	8230DB002547
2953	31	8230DB002548
2954	34	8230DB002550
2955	34	8230DB002551
2956	34	8230DB002553
2957	34	8230DB002554
2958	34	8230DB002555
2959	34	8230DB002556
2960	19	8230DB002557
2961	34	8230DB002557
2962	34	8230DB002573
2963	34	8230DB002574
2964	34	8230DB002577
2965	34	8230DB002578
2966	34	8230DB002579
2967	34	8230DB002583
2968	34	8230DB002584
2969	34	8230DB002585
2970	34	8230DB002586
2971	34	8230DB002587
2972	34	8230DB002588
2973	34	8230DB002589
2974	34	8230DB002590
2975	34	8230DB002591
2976	34	8230DB002592
2977	34	8230DB002594
2978	34	8230DB002595
2979	34	8230DB002596
2980	34	8230DB002597
2981	34	8230DB002599
2982	34	8230DB002600
2983	19	8230DB002601
2984	19	8230DB002603
2985	19	8230DB002621
2986	19	8230DB002622
2987	19	8230DB002623
2988	19	8230DB002624
2989	19	8230DB002626
2990	19	8230DB002628
2991	19	8230DB002629
2992	19	8230DB002631
2993	19	8230DB002632
2994	19	8230DB002633
2995	19	8230DB002669
2996	25	8230DB002673
2997	25	8230DB002674
2998	25	8230DB002675
2999	25	8230DB002676
3000	25	8230DB002678
3001	25	8230DB002679
3002	25	8230DB002680
3003	25	8230DB002681
3004	25	8230DB002682
3005	25	8230DB002685
3006	18	8230DB002686
3007	25	8230DB002686
3008	25	8230DB002687
3009	33	8230DB002919
3010	33	8230DB002920
3011	33	8230DB002921
3012	33	8230DB002922
3013	33	8230DB002923
3014	33	8230DB002924
3015	33	8230DB002925
3016	33	8230DB002927
3017	33	8230DB002929
3018	33	8230DB002930
3019	33	8230DB002933
3020	33	8230DB002934
3021	33	8230DB002935
3022	33	8230DB002936
3023	33	8230DB002937
3024	33	8230DB002938
3025	33	8230DB002940
3026	33	8230DB002941
3027	33	8230DB002942
3028	33	8230DB002943
3029	33	8230DB002944
3030	33	8230DB002945
3031	33	8230DB002946
3032	33	8230DB002947
3033	33	8230DB002948
3034	33	8230DB002949
3035	33	8230DB002950
3036	3	8230DB002954
3037	33	8230DB002954
3038	3	8230DB002955
3039	33	8230DB002955
3040	3	8230DB002956
3041	33	8230DB002956
3042	3	8230DB002965
3043	33	8230DB002965
3044	17	8230DB002966
3045	3	8230DB002967
3046	17	8230DB002967
3047	3	8230DB002968
3048	17	8230DB002968
3049	3	8230DB002980
3050	17	8230DB002980
3051	3	8230DB002981
3052	17	8230DB002981
3053	33	8230DB002983
3054	33	8230DB002984
3055	17	8230DB002991
3056	17	8230DB002992
3057	31	8230DB003003
3058	31	8230DB003004
3059	31	8230DB003005
3060	14	8230DB003007
3061	35	8230DB003378
3062	35	8230DB003379
3063	8	8230DB003383
3064	35	8230DB003383
3065	8	8230DB003384
3066	35	8230DB003384
3067	35	8230DB003385
3068	35	8230DB003386
3069	35	8230DB003387
3070	35	8230DB003389
3071	35	8230DB003390
3072	35	8230DB003392
3073	35	8230DB003393
3074	35	8230DB003394
3075	35	8230DB003396
3076	35	8230DB003397
3077	35	8230DB003398
3078	35	8230DB003399
3079	35	8230DB003400
3080	35	8230DB003401
3081	35	8230DB003402
3082	35	8230DB003403
3083	35	8230DB003404
3084	35	8230DB003405
3085	35	8230DB003406
3086	35	8230DB003407
3087	35	8230DB003408
3088	35	8230DB003409
3089	35	8230DB003410
3090	35	8230DB003411
3091	35	8230DB003412
3092	35	8230DB003413
3093	8	8230DB003414
3094	35	8230DB003414
3095	8	8230DB003415
3096	35	8230DB003415
3097	8	8230DB003416
3098	35	8230DB003416
3099	8	8230DB003417
3100	35	8230DB003417
3101	8	8230DB003418
3102	16	8230DB003418
3103	35	8230DB003418
3104	8	8230DB003419
3105	16	8230DB003419
3106	35	8230DB003419
3107	35	8230DB003420
3108	35	8230DB003421
3109	35	8230DB003422
3110	35	8230DB003423
3111	35	8230DB003425
3112	36	8230DB003426
3113	36	8230DB003432
3114	36	8230DB003434
3115	36	8230DB003435
3116	36	8230DB003436
3117	36	8230DB003437
3118	36	8230DB003438
3119	36	8230DB003439
3120	36	8230DB003440
3121	36	8230DB003441
3122	36	8230DB003443
3123	36	8230DB003444
3124	36	8230DB003445
3125	36	8230DB003446
3126	36	8230DB003447
3127	36	8230DB003448
3128	36	8230DB003449
3129	36	8230DB003453
3130	36	8230DB003454
3131	36	8230DB003455
3132	36	8230DB003456
3133	36	8230DB003457
3134	36	8230DB003461
3135	8	8230DB003465
3136	36	8230DB003465
3137	34	8230DB004004
3138	34	8230DB004005
3139	34	8230DB004006
3140	34	8230DB004007
3141	34	8230DB004008
3142	34	8230DB004009
3143	34	8230DB004010
3144	34	8230DB004069
3145	34	8230DB004070
3146	34	8230DB004071
3147	34	8230DB004072
3148	34	8230DB004073
3149	31	8230DB004342
3150	19	8230DB004347
3151	31	8230DB004347
3152	34	8230DB004347
3153	19	8230DB004348
3154	31	8230DB004348
3155	34	8230DB004348
3156	8	8230DB004379
3157	35	8230DB004379
3158	36	8230DB004379
3159	42	8230DB004392
3160	18	8230DB004401
3161	8	8230DB004409
3162	35	8230DB004409
3163	36	8230DB004409
3164	25	8230DB004410
3165	25	8230DB004411
3166	19	8230DB004435
3167	34	8230DB004435
3168	19	8230DB004436
3169	34	8230DB004436
3170	36	8230DB004438
3171	19	8230DB004440
3172	19	8230DB004441
3173	34	8230DB004445
3174	19	8230DB004446
3175	36	8230DB004532
3176	36	8230DB004534
3177	36	8230DB004535
3178	36	8230DB004536
3179	8	8230DB004545
3180	16	8230DB004545
3181	8	8230DB004549
3182	8	8230DB004550
3183	8	8230DB004551
3184	8	8230DB004552
3185	16	8230DB004552
3186	8	8230DB004554
3187	16	8230DB004554
3188	8	8230DB004555
3189	16	8230DB004555
3190	36	8230DB004557
3191	35	8230DB004558
3192	35	8230DB004559
3193	36	8230DB004560
3194	36	8230DB004564
3195	8	8230DB004576
3196	16	8230DB004576
3197	15	8230DB004577
3198	15	8230DB004578
3199	16	8230DB004606
3200	8	8230DB004617
3201	16	8230DB004617
3202	16	8230DB004619
3203	19	8230DB004640
3204	34	8230DB004640
3205	19	8230DB004641
3206	19	8230DB004642
3207	19	8230DB004643
3208	19	8230DB004644
3209	19	8230DB004645
3210	19	8230DB004646
3211	34	8230DB004646
3212	19	8230DB004647
3213	34	8230DB004647
3214	19	8230DB004662
3215	8	8230DB004663
3216	8	8230DB004664
3217	8	8230DB004665
3218	36	8230DB004665
3219	8	8230DB004666
3220	36	8230DB004666
3221	8	8230DB004667
3222	36	8230DB004667
3223	8	8230DB004668
3224	35	8230DB004669
3225	8	8230DB004670
3226	8	8230DB004671
3227	8	8230DB004672
3228	36	8230DB004672
3229	8	8230DB004673
3230	36	8230DB004673
3231	8	8230DB004674
3232	8	8230DB004677
3233	25	8230DB004688
3234	25	8230DB004689
3235	25	8230DB004690
3236	25	8230DB004691
3237	18	8230DB004715
3238	25	8230DB004715
3239	31	8230DB004749
3240	31	8230DB004750
3241	31	8230DB004751
3242	31	8230DB004754
3243	31	8230DB004755
3244	31	8230DB004756
3245	31	8230DB004757
3246	31	8230DB004758
3247	31	8230DB004759
3248	31	8230DB004760
3249	16	8230DB004762
3250	16	8230DB004763
3251	18	8230DB004795
3252	25	8230DB004795
3253	25	8230DB004796
3254	25	8230DB004797
3255	18	8230DB004798
3256	25	8230DB004798
3257	25	8230DB004799
3258	15	8230DB004861
3259	15	8230DB004862
3260	15	8230DB004863
3261	15	8230DB004864
3262	15	8230DB004865
3263	14	8230DB004869
3264	14	8230DB004870
3265	31	8230DB004877
3266	31	8230DB004878
3267	31	8230DB004880
3268	14	8230DB004886
3269	14	8230DB004887
3270	18	8230DB004888
3271	19	8230DB005008
3272	34	8230DB005008
3273	36	8230DB005022
3274	36	8230DB005119
3275	36	8230DB005120
3276	36	8230DB005121
3277	36	8230DB005122
3278	36	8230DB005123
3279	36	8230DB005124
3280	36	8230DB005125
3281	36	8230DB005126
3282	15	8230DB005150
3283	36	8230DB006001
3284	36	8230DB006002
3285	36	8230DB006003
3286	16	8230DB006011
3287	35	8230DB006011
3288	16	8230DB006014
3289	35	8230DB006014
3290	19	8230DB006075
3291	19	8230DB006095
3292	35	8230DB006119
3293	34	8230DB006124
3294	15	8230DB006132
3295	16	8230DB006141
3296	16	8230DB006143
3297	16	8230DB006144
3298	16	8230DB006145
3299	16	8230DB006146
3300	16	8230DB006147
3301	16	8230DB006149
3302	16	8230DB006150
3303	16	8230DB006152
3304	16	8230DB006153
3305	16	8230DB006154
3306	16	8230DB006155
3307	15	8230DB006163
3308	35	8230DB006184
3309	35	8230DB006185
3310	35	8230DB006186
3311	35	8230DB006187
3312	35	8230DB006188
3313	35	8230DB006215
3314	35	8230DB006216
3315	16	8230DB006242
3316	16	8230DB006243
3317	16	8230DB006244
3318	35	8230DB006244
3319	8	8230DB006245
3320	16	8230DB006245
3321	14	8230DB006282
3322	14	8230DB006283
3323	14	8230DB006326
3324	14	8230DB006335
3325	31	8230DB006343
3326	16	8230DB007015
3327	16	8230DB007016
3328	19	8230DB007062
3329	3	8230DB007067
3330	33	8230DB007067
3331	17	8230DB007068
3332	31	8230DB007121
3333	31	8230DB007122
3334	31	8230DB007123
3335	16	8230DB007142
3336	31	8230DB007180
3337	31	8230DB007181
3338	31	8230DB007183
3339	8	8230DB007201
3340	8	8230DB007229
3341	8	8230DB007230
3342	18	8230DB007239
3343	35	8230DB007354
3344	34	8230DB007395
3345	36	8230DB007432
3346	33	8230DB007440
3347	33	8230DB007441
3348	33	8230DB007449
3349	25	8230DB007473
3350	18	8230DB007510
3351	25	8230DB007510
3352	8	8230DB007714
3353	8	8230DB007781
3354	35	8230DB007781
3355	36	8230DB007781
3356	8	8230DB007782
3357	35	8230DB007782
3358	36	8230DB007782
3359	17	8240DB000219
3360	1	8240DB000221
3361	1	8240DB000222
3362	1	8240DB000223
3363	1	8240DB000224
3364	1	8240DB000225
3365	1	8240DB000226
3366	1	8240DB000227
3367	1	8240DB000229
3368	1	8240DB000230
3369	1	8240DB000231
3370	17	8240DB000231
3371	20	8240DB000231
3372	26	8240DB000231
3373	17	8240DB000232
3374	8	8240DB000323
3375	24	8240DB000323
3376	8	8240DB000324
3377	24	8240DB000324
3378	40	8240DB000324
3379	8	8240DB000327
3380	24	8240DB000327
3381	8	8240DB000332
3382	24	8240DB000332
3383	40	8240DB000332
3384	12	8240DB000905
3385	27	8240DB000905
3386	12	8240DB001073
3387	40	8240DB001181
3388	40	8240DB001182
3389	27	8240DB001206
3390	28	8240DB001206
3391	27	8240DB001207
3392	28	8240DB001207
3393	27	8240DB001208
3394	28	8240DB001208
3395	27	8240DB001209
3396	28	8240DB001209
3397	27	8240DB001210
3398	28	8240DB001210
3399	27	8240DB001211
3400	28	8240DB001211
3401	27	8240DB001212
3402	28	8240DB001212
3403	27	8240DB001213
3404	28	8240DB001213
3405	27	8240DB001214
3406	28	8240DB001214
3407	27	8240DB001215
3408	28	8240DB001215
3409	27	8240DB001216
3410	28	8240DB001216
3411	27	8240DB001217
3412	28	8240DB001217
3413	21	8240DB001517
3414	40	8240DB001550
3415	40	8240DB001551
3416	40	8240DB001552
3417	40	8240DB001555
3418	40	8240DB001556
3419	40	8240DB001557
3420	17	8240DB001622
3421	20	8240DB001622
3422	26	8240DB001622
3423	17	8240DB001623
3424	20	8240DB001623
3425	26	8240DB001623
3426	17	8240DB001624
3427	20	8240DB001624
3428	26	8240DB001624
3429	17	8240DB001625
3430	20	8240DB001625
3431	26	8240DB001625
3432	17	8240DB001626
3433	20	8240DB001626
3434	26	8240DB001626
3435	17	8240DB001627
3436	20	8240DB001627
3437	26	8240DB001627
3438	17	8240DB001628
3439	20	8240DB001628
3440	26	8240DB001628
3441	17	8240DB001629
3442	20	8240DB001629
3443	26	8240DB001629
3444	17	8240DB001630
3445	20	8240DB001630
3446	26	8240DB001630
3447	17	8240DB001631
3448	20	8240DB001631
3449	26	8240DB001631
3450	17	8240DB001632
3451	20	8240DB001632
3452	26	8240DB001632
3453	17	8240DB001633
3454	20	8240DB001633
3455	26	8240DB001633
3456	17	8240DB001634
3457	20	8240DB001634
3458	26	8240DB001634
3459	17	8240DB001635
3460	20	8240DB001635
3461	26	8240DB001635
3462	17	8240DB001636
3463	20	8240DB001636
3464	26	8240DB001636
3465	17	8240DB001637
3466	20	8240DB001637
3467	26	8240DB001637
3468	17	8240DB001638
3469	20	8240DB001638
3470	26	8240DB001638
3471	17	8240DB001639
3472	20	8240DB001639
3473	26	8240DB001639
3474	17	8240DB001640
3475	20	8240DB001640
3476	26	8240DB001640
3477	21	8240DB001669
3478	21	8240DB001670
3479	21	8240DB001671
3480	21	8240DB001672
3481	22	8240DB001672
3482	21	8240DB001673
3483	22	8240DB001673
3484	21	8240DB001674
3485	22	8240DB001674
3486	21	8240DB001675
3487	22	8240DB001675
3488	21	8240DB001676
3489	21	8240DB001678
3490	21	8240DB001679
3491	21	8240DB001680
3492	21	8240DB001681
3493	21	8240DB001682
3494	21	8240DB001683
3495	21	8240DB001684
3496	21	8240DB001685
3497	21	8240DB001686
3498	21	8240DB001687
3499	22	8240DB001687
3500	21	8240DB001688
3501	22	8240DB001688
3502	21	8240DB001689
3503	22	8240DB001689
3504	21	8240DB001690
3505	21	8240DB001691
3506	21	8240DB001692
3507	21	8240DB001693
3508	22	8240DB001719
3509	22	8240DB001808
3510	23	8240DB001808
3511	38	8240DB001808
3512	22	8240DB001813
3513	23	8240DB001813
3514	22	8240DB001814
3515	23	8240DB001814
3516	22	8240DB001816
3517	22	8240DB001817
3518	22	8240DB001818
3519	22	8240DB001819
3520	22	8240DB001820
3521	22	8240DB001822
3522	22	8240DB001827
3523	22	8240DB001828
3524	22	8240DB001829
3525	22	8240DB001833
3526	22	8240DB001834
3527	22	8240DB001835
3528	22	8240DB001836
3529	22	8240DB001837
3530	22	8240DB001838
3531	22	8240DB001840
3532	23	8240DB001840
3533	22	8240DB001841
3534	23	8240DB001841
3535	23	8240DB001842
3536	23	8240DB001844
3537	22	8240DB001845
3538	23	8240DB001845
3539	38	8240DB001845
3540	22	8240DB001849
3541	23	8240DB001850
3542	22	8240DB001851
3543	23	8240DB001852
3544	23	8240DB001853
3545	23	8240DB001854
3546	23	8240DB001858
3547	23	8240DB001859
3548	23	8240DB001860
3549	23	8240DB001861
3550	23	8240DB001862
3551	23	8240DB001863
3552	23	8240DB001864
3553	23	8240DB001865
3554	23	8240DB001866
3555	23	8240DB001867
3556	23	8240DB001869
3557	23	8240DB001870
3558	23	8240DB001871
3559	23	8240DB001872
3560	23	8240DB001873
3561	23	8240DB001874
3562	23	8240DB001875
3563	23	8240DB001876
3564	23	8240DB001877
3565	23	8240DB001878
3566	23	8240DB001879
3567	21	8240DB001882
3568	23	8240DB001882
3569	23	8240DB001883
3570	23	8240DB001884
3571	23	8240DB001887
3572	23	8240DB001888
3573	23	8240DB001889
3574	23	8240DB001890
3575	23	8240DB001891
3576	23	8240DB001893
3577	23	8240DB001894
3578	23	8240DB001895
3579	23	8240DB001896
3580	23	8240DB001897
3581	23	8240DB001898
3582	23	8240DB001899
3583	23	8240DB001902
3584	23	8240DB001903
3585	23	8240DB001904
3586	23	8240DB001912
3587	23	8240DB002171
3588	22	8240DB002289
3589	22	8240DB002338
3590	22	8240DB002468
3591	21	8240DB002959
3592	22	8240DB002961
3593	38	8240DB003340
3594	20	8240DB003565
3595	20	8240DB003566
3596	20	8240DB003567
3597	20	8240DB003569
3598	20	8240DB003571
3599	27	8240DB003573
3600	28	8240DB003573
3601	27	8240DB003574
3602	27	8240DB003575
3603	28	8240DB003575
3604	27	8240DB003576
3605	28	8240DB003576
3606	27	8240DB003577
3607	27	8240DB003578
3608	27	8240DB003579
3609	27	8240DB003580
3610	12	8240DB003583
3611	27	8240DB003583
3612	12	8240DB003584
3613	27	8240DB003584
3614	12	8240DB003585
3615	27	8240DB003585
3616	12	8240DB003605
3617	27	8240DB003605
3618	12	8240DB003606
3619	27	8240DB003606
3620	12	8240DB003607
3621	27	8240DB003607
3622	12	8240DB003613
3623	27	8240DB003613
3624	12	8240DB003615
3625	27	8240DB003615
3626	12	8240DB003616
3627	27	8240DB003616
3628	12	8240DB003625
3629	27	8240DB003625
3630	12	8240DB003626
3631	27	8240DB003626
3632	12	8240DB003627
3633	27	8240DB003627
3634	12	8240DB003628
3635	27	8240DB003628
3636	12	8240DB003629
3637	27	8240DB003629
3638	12	8240DB003630
3639	27	8240DB003630
3640	12	8240DB003631
3641	27	8240DB003631
3642	12	8240DB003632
3643	27	8240DB003632
3644	12	8240DB003633
3645	27	8240DB003633
3646	12	8240DB003634
3647	27	8240DB003634
3648	12	8240DB003635
3649	27	8240DB003635
3650	12	8240DB003636
3651	27	8240DB003636
3652	27	8240DB003639
3653	27	8240DB003640
3654	12	8240DB003641
3655	27	8240DB003641
3656	12	8240DB003642
3657	27	8240DB003642
3658	12	8240DB003643
3659	27	8240DB003643
3660	27	8240DB003644
3661	27	8240DB003645
3662	27	8240DB003646
3663	27	8240DB003647
3664	28	8240DB003647
3665	28	8240DB003648
3666	28	8240DB003649
3667	28	8240DB003650
3668	28	8240DB003651
3669	28	8240DB003652
3670	12	8240DB003653
3671	28	8240DB003653
3672	28	8240DB003654
3673	28	8240DB003655
3674	12	8240DB003656
3675	28	8240DB003656
3676	28	8240DB003657
3677	28	8240DB003658
3678	28	8240DB003659
3679	28	8240DB003660
3680	27	8240DB003661
3681	28	8240DB003661
3682	27	8240DB003662
3683	28	8240DB003662
3684	26	8240DB003663
3685	20	8240DB003664
3686	17	8240DB003669
3687	26	8240DB003669
3688	20	8240DB003670
3689	20	8240DB003671
3690	26	8240DB003671
3691	20	8240DB003672
3692	26	8240DB003672
3693	20	8240DB003674
3694	26	8240DB003674
3695	20	8240DB003675
3696	26	8240DB003675
3697	20	8240DB003676
3698	26	8240DB003676
3699	20	8240DB003677
3700	20	8240DB003678
3701	20	8240DB003679
3702	26	8240DB003679
3703	28	8240DB003679
3704	26	8240DB003682
3705	26	8240DB003686
3706	20	8240DB003689
3707	26	8240DB003689
3708	28	8240DB003689
3709	26	8240DB003690
3710	28	8240DB003690
3711	20	8240DB003691
3712	20	8240DB003692
3713	20	8240DB003694
3714	26	8240DB003694
3715	20	8240DB003695
3716	26	8240DB003695
3717	20	8240DB003696
3718	26	8240DB003696
3719	20	8240DB003697
3720	26	8240DB003697
3721	20	8240DB003698
3722	26	8240DB003698
3723	20	8240DB003699
3724	26	8240DB003699
3725	20	8240DB003711
3726	28	8240DB003711
3727	20	8240DB003712
3728	28	8240DB003712
3729	20	8240DB003713
3730	20	8240DB003714
3731	20	8240DB003715
3732	20	8240DB003748
3733	20	8240DB003749
3734	20	8240DB003750
3735	20	8240DB003751
3736	28	8240DB003751
3737	20	8240DB003752
3738	28	8240DB003752
3739	20	8240DB003755
3740	20	8240DB003756
3741	20	8240DB003757
3742	20	8240DB003758
3743	20	8240DB003759
3744	20	8240DB003760
3745	20	8240DB003761
3746	20	8240DB003762
3747	20	8240DB003763
3748	20	8240DB003764
3749	20	8240DB003765
3750	20	8240DB003766
3751	20	8240DB003767
3752	20	8240DB003768
3753	20	8240DB003769
3754	20	8240DB003771
3755	20	8240DB003772
3756	20	8240DB003773
3757	20	8240DB003774
3758	20	8240DB003775
3759	20	8240DB003777
3760	20	8240DB003778
3761	20	8240DB003781
3762	20	8240DB003782
3763	20	8240DB003783
3764	20	8240DB003784
3765	20	8240DB003785
3766	20	8240DB003786
3767	20	8240DB003787
3768	20	8240DB003788
3769	20	8240DB003789
3770	20	8240DB003790
3771	20	8240DB003791
3772	20	8240DB003792
3773	20	8240DB003793
3774	20	8240DB003794
3775	20	8240DB003795
3776	20	8240DB003797
3777	20	8240DB003798
3778	20	8240DB003799
3779	20	8240DB003801
3780	20	8240DB003802
3781	20	8240DB003805
3782	20	8240DB003806
3783	20	8240DB003807
3784	20	8240DB003808
3785	20	8240DB003809
3786	20	8240DB003811
3787	20	8240DB003812
3788	20	8240DB003813
3789	20	8240DB003814
3790	20	8240DB003815
3791	20	8240DB003816
3792	20	8240DB003818
3793	20	8240DB003819
3794	20	8240DB003820
3795	20	8240DB003822
3796	20	8240DB003823
3797	20	8240DB003824
3798	20	8240DB003825
3799	20	8240DB003826
3800	20	8240DB003827
3801	20	8240DB003828
3802	20	8240DB003829
3803	20	8240DB003831
3804	20	8240DB003832
3805	20	8240DB003833
3806	20	8240DB003834
3807	20	8240DB003835
3808	20	8240DB003836
3809	20	8240DB003837
3810	20	8240DB003838
3811	20	8240DB003840
3812	20	8240DB003842
3813	20	8240DB003843
3814	20	8240DB003844
3815	20	8240DB003845
3816	20	8240DB003846
3817	20	8240DB003848
3818	20	8240DB003849
3819	20	8240DB003850
3820	20	8240DB003851
3821	20	8240DB003852
3822	20	8240DB003853
3823	20	8240DB003854
3824	20	8240DB003855
3825	20	8240DB003856
3826	20	8240DB003857
3827	20	8240DB003858
3828	20	8240DB003859
3829	20	8240DB003860
3830	20	8240DB003861
3831	20	8240DB003862
3832	20	8240DB003863
3833	26	8240DB003864
3834	26	8240DB003865
3835	26	8240DB003884
3836	20	8240DB003885
3837	26	8240DB003885
3838	22	8240DB004314
3839	38	8240DB004324
3840	38	8240DB004325
3841	26	8240DB004330
3842	28	8240DB004330
3843	12	8240DB004331
3844	27	8240DB004331
3845	12	8240DB004339
3846	27	8240DB004339
3847	21	8240DB004362
3848	23	8240DB004362
3849	28	8240DB004433
3850	23	8240DB004464
3851	23	8240DB004489
3852	23	8240DB004492
3853	21	8240DB004493
3854	23	8240DB004493
3855	21	8240DB004520
3856	21	8240DB004573
3857	21	8240DB004574
3858	21	8240DB004575
3859	22	8240DB004742
3860	22	8240DB004743
3861	22	8240DB004744
3862	22	8240DB004745
3863	22	8240DB004746
3864	21	8240DB004747
3865	23	8240DB004747
3866	38	8240DB004765
3867	38	8240DB004766
3868	38	8240DB004767
3869	38	8240DB004768
3870	38	8240DB004769
3871	38	8240DB004770
3872	21	8240DB004825
3873	26	8240DB004843
3874	21	8240DB004893
3875	21	8240DB004894
3876	21	8240DB004895
3877	21	8240DB004897
3878	21	8240DB004898
3879	22	8240DB004899
3880	22	8240DB004900
3881	22	8240DB004901
3882	22	8240DB004902
3883	21	8240DB004903
3884	23	8240DB004903
3885	26	8240DB004905
3886	26	8240DB004906
3887	26	8240DB004907
3888	26	8240DB004908
3889	26	8240DB004909
3890	26	8240DB004910
3891	26	8240DB004911
3892	26	8240DB004912
3893	26	8240DB004913
3894	26	8240DB004914
3895	26	8240DB004915
3896	28	8240DB004923
3897	28	8240DB004924
3898	26	8240DB004957
3899	28	8240DB004958
3900	22	8240DB004974
3901	22	8240DB004976
3902	22	8240DB004980
3903	22	8240DB004989
3904	22	8240DB004990
3905	22	8240DB004991
3906	22	8240DB004992
3907	22	8240DB004994
3908	22	8240DB004995
3909	22	8240DB004996
3910	22	8240DB004997
3911	22	8240DB004998
3912	22	8240DB004999
3913	28	8240DB005044
3914	17	8240DB005053
3915	20	8240DB005053
3916	26	8240DB005053
3917	26	8240DB005073
3918	26	8240DB005074
3919	26	8240DB005075
3920	26	8240DB005076
3921	26	8240DB005077
3922	26	8240DB005078
3923	26	8240DB005079
3924	27	8240DB005081
3925	27	8240DB005082
3926	28	8240DB005084
3927	28	8240DB005086
3928	20	8240DB005175
3929	12	8240DB006010
3930	20	8240DB006048
3931	20	8240DB006050
3932	12	8240DB006051
3933	27	8240DB006051
3934	12	8240DB006052
3935	27	8240DB006052
3936	12	8240DB006053
3937	27	8240DB006053
3938	26	8240DB006054
3939	28	8240DB006054
3940	12	8240DB006055
3941	20	8240DB006076
3942	20	8240DB006077
3943	23	8240DB006088
3944	26	8240DB006117
3945	28	8240DB006117
3946	22	8240DB006171
3947	21	8240DB006172
3948	23	8240DB006172
3949	11	8240DB006219
3950	40	8240DB006219
3951	42	8240DB006219
3952	11	8240DB006228
3953	40	8240DB006228
3954	42	8240DB006228
3955	11	8240DB006229
3956	40	8240DB006229
3957	42	8240DB006229
3958	11	8240DB006230
3959	40	8240DB006230
3960	42	8240DB006230
3961	8	8240DB006234
3962	8	8240DB006235
3963	12	8240DB006310
3964	12	8240DB006311
3965	12	8240DB006312
3966	25	8240DB006348
3967	40	8240DB006348
3968	28	8240DB006359
3969	11	8240DB006364
3970	11	8240DB006365
3971	11	8240DB006366
3972	23	8240DB007011
3973	23	8240DB007017
3974	23	8240DB007018
3975	23	8240DB007020
3976	23	8240DB007021
3977	23	8240DB007025
3978	23	8240DB007029
3979	23	8240DB007030
3980	21	8240DB007031
3981	23	8240DB007038
3982	23	8240DB007047
3983	23	8240DB007048
3984	11	8240DB007111
3985	22	8240DB007124
3986	22	8240DB007125
3987	22	8240DB007126
3988	40	8240DB007131
3989	42	8240DB007131
3990	25	8240DB007132
3991	40	8240DB007132
3992	42	8240DB007132
3993	23	8240DB007156
3994	23	8240DB007158
3995	23	8240DB007159
3996	23	8240DB007160
3997	23	8240DB007161
3998	23	8240DB007162
3999	23	8240DB007163
4000	22	8240DB007166
4001	23	8240DB007166
4002	38	8240DB007166
4003	22	8240DB007167
4004	23	8240DB007167
4005	38	8240DB007167
4006	20	8240DB007172
4007	20	8240DB007173
4008	20	8240DB007174
4009	20	8240DB007175
4010	28	8240DB007189
4011	12	8240DB007194
4012	12	8240DB007195
4013	12	8240DB007196
4014	12	8240DB007197
4015	21	8240DB007217
4016	21	8240DB007218
4017	21	8240DB007219
4018	21	8240DB007227
4019	21	8240DB007233
4020	23	8240DB007240
4021	20	8240DB007292
4022	22	8240DB007319
4023	12	8240DB007327
4024	27	8240DB007327
4025	28	8240DB007328
4026	28	8240DB007329
4027	22	8240DB007334
4028	22	8240DB007342
4029	22	8240DB007343
4030	22	8240DB007344
4031	17	8240DB007347
4032	26	8240DB007347
4033	26	8240DB007348
4034	17	8240DB007349
4035	26	8240DB007349
4036	40	8240DB007350
4037	23	8240DB007374
4038	21	8240DB007379
4039	23	8240DB007379
4040	21	8240DB007380
4041	22	8240DB007381
4042	22	8240DB007382
4043	23	8240DB007388
4044	38	8240DB007389
4045	27	8240DB007616
4046	20	8240DB007690
4047	12	8240DB007692
4048	23	8240DB007699
4049	23	8240DB007700
4050	24	8250DB000425
4051	37	8250DB000425
4052	24	8250DB000426
4053	37	8250DB000426
4054	24	8250DB000427
4055	37	8250DB000427
4056	24	8250DB000428
4057	37	8250DB000428
4058	24	8250DB000429
4059	37	8250DB000429
4060	3	8250DB000435
4061	13	8250DB000435
4062	30	8250DB000435
4063	30	8250DB000437
4064	2	8250DB000441
4065	2	8250DB000442
4066	2	8250DB000443
4067	2	8250DB000444
4068	3	8250DB000444
4069	30	8250DB000444
4070	2	8250DB000445
4071	3	8250DB000445
4072	30	8250DB000445
4073	2	8250DB000447
4074	3	8250DB000447
4075	30	8250DB000447
4076	30	8250DB000448
4077	2	8250DB000449
4078	3	8250DB000449
4079	2	8250DB000450
4080	3	8250DB000450
4081	2	8250DB000451
4082	3	8250DB000451
4083	30	8250DB000451
4084	2	8250DB000453
4085	3	8250DB000453
4086	30	8250DB000453
4087	2	8250DB000454
4088	30	8250DB000459
4089	30	8250DB000460
4090	3	8250DB000461
4091	4	8250DB000461
4092	13	8250DB000461
4093	30	8250DB000461
4094	24	8250DB000469
4095	37	8250DB000469
4096	24	8250DB000470
4097	37	8250DB000470
4098	24	8250DB000471
4099	37	8250DB000471
4100	24	8250DB000472
4101	37	8250DB000472
4102	24	8250DB000473
4103	37	8250DB000473
4104	24	8250DB000475
4105	37	8250DB000475
4106	13	8250DB000767
4107	3	8250DB000768
4108	4	8250DB000768
4109	13	8250DB000768
4110	30	8250DB000768
4111	2	8250DB000859
4112	2	8250DB000860
4113	2	8250DB000861
4114	2	8250DB000862
4115	2	8250DB000875
4116	2	8250DB000876
4117	12	8250DB000876
4118	12	8250DB000877
4119	2	8250DB000878
4120	2	8250DB000879
4121	2	8250DB000880
4122	33	8250DB001035
4123	10	8250DB001036
4124	10	8250DB001037
4125	10	8250DB001038
4126	10	8250DB001042
4127	10	8250DB001043
4128	10	8250DB001044
4129	10	8250DB001045
4130	10	8250DB001046
4131	10	8250DB001047
4132	10	8250DB001048
4133	10	8250DB001049
4134	10	8250DB001051
4135	10	8250DB001052
4136	10	8250DB001053
4137	10	8250DB001054
4138	33	8250DB001055
4139	33	8250DB001281
4140	33	8250DB001306
4141	33	8250DB001307
4142	33	8250DB001308
4143	33	8250DB001309
4144	33	8250DB001310
4145	33	8250DB001311
4146	33	8250DB001312
4147	33	8250DB001313
4148	33	8250DB001314
4149	33	8250DB001315
4150	33	8250DB001316
4151	33	8250DB001317
4152	33	8250DB001318
4153	33	8250DB001319
4154	3	8250DB002007
4155	13	8250DB002007
4156	30	8250DB002007
4157	3	8250DB002008
4158	13	8250DB002008
4159	30	8250DB002008
4160	3	8250DB002009
4161	13	8250DB002009
4162	30	8250DB002009
4163	3	8250DB002010
4164	13	8250DB002010
4165	30	8250DB002010
4166	3	8250DB002011
4167	30	8250DB002011
4168	3	8250DB002012
4169	30	8250DB002012
4170	13	8250DB002013
4171	13	8250DB002014
4172	13	8250DB002015
4173	13	8250DB002016
4174	13	8250DB002017
4175	24	8250DB002026
4176	37	8250DB002035
4177	37	8250DB002036
4178	37	8250DB002040
4179	37	8250DB002041
4180	24	8250DB002051
4181	13	8250DB002060
4182	13	8250DB002061
4183	13	8250DB002062
4184	13	8250DB002063
4185	4	8250DB002064
4186	13	8250DB002064
4187	4	8250DB002065
4188	13	8250DB002065
4189	30	8250DB002066
4190	30	8250DB002067
4191	3	8250DB002068
4192	4	8250DB002068
4193	13	8250DB002068
4194	30	8250DB002068
4195	3	8250DB002069
4196	4	8250DB002069
4197	13	8250DB002069
4198	30	8250DB002069
4199	3	8250DB002070
4200	4	8250DB002070
4201	13	8250DB002070
4202	30	8250DB002070
4203	30	8250DB002071
4204	30	8250DB002072
4205	30	8250DB002073
4206	30	8250DB002074
4207	30	8250DB002075
4208	30	8250DB002076
4209	30	8250DB002080
4210	30	8250DB002081
4211	30	8250DB002082
4212	30	8250DB002083
4213	3	8250DB002084
4214	4	8250DB002084
4215	13	8250DB002084
4216	30	8250DB002084
4217	12	8250DB002818
4218	29	8250DB002818
4219	33	8250DB002818
4220	12	8250DB002819
4221	29	8250DB002819
4222	33	8250DB002819
4223	29	8250DB002820
4224	33	8250DB002820
4225	29	8250DB002822
4226	33	8250DB002822
4227	29	8250DB002823
4228	33	8250DB002823
4229	29	8250DB002824
4230	10	8250DB002825
4231	29	8250DB002825
4232	3	8250DB002829
4233	29	8250DB002829
4234	3	8250DB002830
4235	29	8250DB002830
4236	3	8250DB002831
4237	29	8250DB002831
4238	3	8250DB002832
4239	29	8250DB002832
4240	29	8250DB002833
4241	29	8250DB002835
4242	29	8250DB002836
4243	3	8250DB002837
4244	29	8250DB002837
4245	3	8250DB002838
4246	29	8250DB002838
4247	3	8250DB002839
4248	29	8250DB002839
4249	3	8250DB002840
4250	29	8250DB002840
4251	29	8250DB002841
4252	10	8250DB002842
4253	10	8250DB002843
4254	10	8250DB002844
4255	3	8250DB002845
4256	10	8250DB002845
4257	3	8250DB002846
4258	10	8250DB002846
4259	3	8250DB002847
4260	10	8250DB002847
4261	3	8250DB002848
4262	10	8250DB002848
4263	3	8250DB002849
4264	10	8250DB002849
4265	3	8250DB002850
4266	10	8250DB002850
4267	3	8250DB002851
4268	10	8250DB002851
4269	3	8250DB002852
4270	10	8250DB002852
4271	3	8250DB002853
4272	10	8250DB002853
4273	3	8250DB002854
4274	10	8250DB002854
4275	3	8250DB002855
4276	10	8250DB002855
4277	3	8250DB002856
4278	10	8250DB002856
4279	3	8250DB002857
4280	10	8250DB002857
4281	3	8250DB002858
4282	10	8250DB002858
4283	3	8250DB002859
4284	10	8250DB002859
4285	3	8250DB002860
4286	10	8250DB002860
4287	3	8250DB002861
4288	10	8250DB002861
4289	10	8250DB002862
4290	10	8250DB002863
4291	10	8250DB002864
4292	10	8250DB002865
4293	29	8250DB002865
4294	10	8250DB002866
4295	29	8250DB002866
4296	33	8250DB002867
4297	33	8250DB002868
4298	29	8250DB002892
4299	33	8250DB002892
4300	29	8250DB002893
4301	33	8250DB002893
4302	29	8250DB002894
4303	33	8250DB002894
4304	29	8250DB002895
4305	33	8250DB002895
4306	12	8250DB002896
4307	29	8250DB002896
4308	33	8250DB002896
4309	12	8250DB002897
4310	29	8250DB002897
4311	33	8250DB002897
4312	3	8250DB002969
4313	17	8250DB002969
4314	3	8250DB002970
4315	17	8250DB002970
4316	17	8250DB002971
4317	17	8250DB002975
4318	17	8250DB002976
4319	17	8250DB002977
4320	3	8250DB002978
4321	17	8250DB002978
4322	3	8250DB002979
4323	17	8250DB002979
4324	41	8250DB002995
4325	13	8250DB002996
4326	10	8250DB002998
4327	12	8250DB003011
4328	12	8250DB003012
4329	2	8250DB003014
4330	2	8250DB003015
4331	2	8250DB003016
4332	2	8250DB003017
4333	2	8250DB003018
4334	2	8250DB003019
4335	2	8250DB003020
4336	2	8250DB003021
4337	2	8250DB003022
4338	2	8250DB003023
4339	2	8250DB003024
4340	2	8250DB003025
4341	2	8250DB003026
4342	2	8250DB003027
4343	2	8250DB003028
4344	2	8250DB003029
4345	2	8250DB003030
4346	2	8250DB003031
4347	37	8250DB003032
4348	37	8250DB003033
4349	37	8250DB003034
4350	37	8250DB003036
4351	37	8250DB003037
4352	37	8250DB003038
4353	37	8250DB003039
4354	37	8250DB003040
4355	37	8250DB003041
4356	37	8250DB003042
4357	37	8250DB003047
4358	37	8250DB003068
4359	37	8250DB003069
4360	37	8250DB003070
4361	37	8250DB003071
4362	37	8250DB003072
4363	37	8250DB003073
4364	37	8250DB003074
4365	37	8250DB003075
4366	37	8250DB003076
4367	37	8250DB003077
4368	41	8250DB003079
4369	41	8250DB003080
4370	41	8250DB003081
4371	41	8250DB003082
4372	24	8250DB003084
4373	37	8250DB003084
4374	24	8250DB003114
4375	41	8250DB003114
4376	24	8250DB003115
4377	41	8250DB003115
4378	24	8250DB003116
4379	41	8250DB003116
4380	41	8250DB003117
4381	41	8250DB003118
4382	41	8250DB003119
4383	41	8250DB003120
4384	41	8250DB003122
4385	41	8250DB003123
4386	41	8250DB003124
4387	41	8250DB003125
4388	41	8250DB003126
4389	41	8250DB003127
4390	41	8250DB003128
4391	13	8250DB003129
4392	13	8250DB003130
4393	41	8250DB003130
4394	13	8250DB003131
4395	41	8250DB003131
4396	13	8250DB003132
4397	41	8250DB003132
4398	13	8250DB003133
4399	41	8250DB003133
4400	13	8250DB003134
4401	41	8250DB003134
4402	13	8250DB003135
4403	41	8250DB003135
4404	13	8250DB003136
4405	41	8250DB003136
4406	13	8250DB003138
4407	41	8250DB003138
4408	13	8250DB003139
4409	41	8250DB003139
4410	13	8250DB003140
4411	41	8250DB003140
4412	13	8250DB003141
4413	41	8250DB003141
4414	13	8250DB003142
4415	41	8250DB003142
4416	13	8250DB003143
4417	41	8250DB003143
4418	13	8250DB003144
4419	41	8250DB003144
4420	13	8250DB003145
4421	13	8250DB003146
4422	41	8250DB003146
4423	13	8250DB003147
4424	41	8250DB003147
4425	13	8250DB003148
4426	41	8250DB003148
4427	41	8250DB003149
4428	41	8250DB003150
4429	41	8250DB003151
4430	41	8250DB003152
4431	41	8250DB003153
4432	41	8250DB003154
4433	41	8250DB003155
4434	41	8250DB003156
4435	41	8250DB003158
4436	41	8250DB003159
4437	41	8250DB003160
4438	24	8250DB003161
4439	41	8250DB003161
4440	24	8250DB003162
4441	41	8250DB003162
4442	24	8250DB003163
4443	41	8250DB003163
4444	24	8250DB003164
4445	41	8250DB003164
4446	2	8250DB003181
4447	3	8250DB003181
4448	30	8250DB003181
4449	3	8250DB003184
4450	37	8250DB003202
4451	37	8250DB003203
4452	37	8250DB003204
4453	37	8250DB003214
4454	37	8250DB003215
4455	37	8250DB003216
4456	37	8250DB003217
4457	37	8250DB003218
4458	37	8250DB003219
4459	37	8250DB003220
4460	37	8250DB003224
4461	37	8250DB003225
4462	37	8250DB003226
4463	37	8250DB003227
4464	37	8250DB003228
4465	37	8250DB003229
4466	37	8250DB003238
4467	37	8250DB003239
4468	37	8250DB003240
4469	13	8250DB003258
4470	13	8250DB003259
4471	29	8250DB003280
4472	29	8250DB003282
4473	4	8250DB003283
4474	29	8250DB003283
4475	4	8250DB003284
4476	29	8250DB003284
4477	4	8250DB003310
4478	29	8250DB003310
4479	4	8250DB003317
4480	4	8250DB003318
4481	4	8250DB003320
4482	3	8250DB003321
4483	30	8250DB003321
4484	3	8250DB003322
4485	30	8250DB003322
4486	29	8250DB003466
4487	29	8250DB003467
4488	29	8250DB003469
4489	29	8250DB003470
4490	29	8250DB003471
4491	30	8250DB003471
4492	29	8250DB003472
4493	30	8250DB003472
4494	29	8250DB003473
4495	30	8250DB003473
4496	29	8250DB003474
4497	29	8250DB003475
4498	29	8250DB003476
4499	29	8250DB003477
4500	29	8250DB003478
4501	29	8250DB003479
4502	4	8250DB003481
4503	29	8250DB003481
4504	4	8250DB003482
4505	29	8250DB003482
4506	4	8250DB003483
4507	29	8250DB003483
4508	4	8250DB003484
4509	29	8250DB003484
4510	4	8250DB003485
4511	29	8250DB003485
4512	30	8250DB003485
4513	4	8250DB003486
4514	29	8250DB003486
4515	30	8250DB003486
4516	4	8250DB003487
4517	29	8250DB003487
4518	30	8250DB003487
4519	29	8250DB003488
4520	29	8250DB003489
4521	29	8250DB003492
4522	3	8250DB003563
4523	30	8250DB003563
4524	29	8250DB004086
4525	29	8250DB004087
4526	29	8250DB004088
4527	29	8250DB004121
4528	29	8250DB004122
4529	29	8250DB004123
4530	13	8250DB004124
4531	41	8250DB004124
4532	13	8250DB004125
4533	41	8250DB004125
4534	13	8250DB004126
4535	41	8250DB004126
4536	13	8250DB004127
4537	41	8250DB004127
4538	13	8250DB004128
4539	41	8250DB004128
4540	13	8250DB004202
4541	41	8250DB004202
4542	13	8250DB004203
4543	41	8250DB004203
4544	13	8250DB004204
4545	41	8250DB004204
4546	13	8250DB004205
4547	41	8250DB004205
4548	13	8250DB004206
4549	41	8250DB004206
4550	10	8250DB004333
4551	10	8250DB004334
4552	10	8250DB004336
4553	3	8250DB004349
4554	3	8250DB004350
4555	3	8250DB004397
4556	10	8250DB004397
4557	2	8250DB004460
4558	3	8250DB004460
4559	30	8250DB004460
4560	2	8250DB004475
4561	3	8250DB004477
4562	30	8250DB004477
4563	10	8250DB004486
4564	13	8250DB004571
4565	13	8250DB004636
4566	24	8250DB004705
4567	37	8250DB004705
4568	10	8250DB004707
4569	10	8250DB004708
4570	10	8250DB004709
4571	10	8250DB004710
4572	10	8250DB004712
4573	3	8250DB004727
4574	4	8250DB004727
4575	13	8250DB004727
4576	3	8250DB004728
4577	4	8250DB004728
4578	13	8250DB004728
4579	30	8250DB004728
4580	2	8250DB004779
4581	3	8250DB004779
4582	30	8250DB004779
4583	2	8250DB004847
4584	3	8250DB004847
4585	2	8250DB004848
4586	3	8250DB004848
4587	30	8250DB004984
4588	3	8250DB004987
4589	3	8250DB004988
4590	30	8250DB005013
4591	30	8250DB005014
4592	30	8250DB005015
4593	30	8250DB005016
4594	29	8250DB005032
4595	33	8250DB005032
4596	2	8250DB005045
4597	3	8250DB005045
4598	30	8250DB005045
4599	37	8250DB005046
4600	41	8250DB005046
4601	37	8250DB005047
4602	41	8250DB005047
4603	17	8250DB005051
4604	17	8250DB005052
4605	13	8250DB005090
4606	13	8250DB005127
4607	13	8250DB005128
4608	30	8250DB005142
4609	3	8250DB005143
4610	17	8250DB005171
4611	24	8250DB006085
4612	24	8250DB006086
4613	24	8250DB006334
4614	2	8250DB007057
4615	3	8250DB007057
4616	30	8250DB007057
4617	29	8250DB007176
4618	41	8250DB007188
4619	24	8250DB007226
4620	30	8250DB007290
4621	30	8250DB007291
4622	4	8250DB007325
4623	30	8250DB007325
4624	30	8250DB007326
4625	24	8250DB007330
4626	13	8250DB007353
4627	13	8250DB007361
4628	13	8250DB007362
4629	29	8250DB007375
4630	4	8250DB007415
4631	30	8250DB007415
4632	4	8250DB007416
4633	30	8250DB007416
4634	30	8250DB007417
4635	30	8250DB007418
4636	30	8250DB007567
4637	37	8250DB007639
4638	41	8250DB007639
4639	37	8250DB007640
4640	41	8250DB007640
4641	37	8250DB007641
4642	37	8250DB007642
4643	37	8250DB007643
4644	37	8250DB007644
4645	37	8250DB007645
4646	37	8250DB007646
4647	24	8250DB007660
4648	41	8250DB007660
4649	29	8250DB007716
4650	29	8250DB007717
4651	10	8250DB007718
4652	10	8250DB007719
4653	10	8250DB007720
4654	34	8260DB007278
4655	34	8260DB007280
4656	34	8260DB007281
4657	34	8260DB007282
4658	34	8260DB007283
4659	34	8260DB007284
4660	34	8260DB007286
4661	34	8260DB007287
4662	34	8260DB007288
4663	34	8260DB007289
4664	38	8310DB003328
4665	38	8310DB003329
4666	38	8310DB003330
4667	38	8310DB003331
4668	38	8310DB003332
4669	38	8310DB003333
4670	38	8310DB003334
4671	38	8310DB003335
4672	38	8310DB003336
4673	38	8310DB003337
4674	38	8310DB003338
4675	38	8310DB003339
4676	38	8310DB003351
4677	38	8310DB003352
4678	13	8350DB002962
4679	13	8350DB002963
4680	13	8350DB002964
4681	13	8350DB002993
4682	13	8350DB002994
4683	13	8350DB002997
4684	41	8350DB003045
4685	34	8350DB004011
4686	34	8350DB004012
4687	34	8350DB004013
4688	34	8350DB004014
4689	34	8350DB004015
4690	34	8350DB004017
4691	34	8350DB004018
4692	34	8350DB004019
4693	34	8350DB004020
4694	34	8350DB004021
4695	34	8350DB004022
4696	34	8350DB004023
4697	34	8350DB004024
4698	34	8350DB004027
4699	34	8350DB004051
4700	34	8350DB004052
4701	34	8350DB004054
4702	34	8350DB004055
4703	34	8350DB004056
4704	34	8350DB004057
4705	34	8350DB004058
4706	34	8350DB004059
4707	34	8350DB004060
4708	34	8350DB004061
4709	34	8350DB004062
4710	34	8350DB004063
4711	34	8350DB004064
4712	34	8350DB004065
4713	34	8350DB004066
4714	34	8350DB004067
4715	34	8350DB004068
4716	29	8350DB004089
4717	29	8350DB004090
4718	29	8350DB004091
4719	29	8350DB004093
4720	29	8350DB004094
4721	29	8350DB004095
4722	34	8350DB004098
4723	34	8350DB004100
4724	34	8350DB004101
4725	34	8350DB004102
4726	29	8350DB004114
4727	29	8350DB004115
4728	29	8350DB004116
4729	29	8350DB004117
4730	29	8350DB004118
4731	29	8350DB004119
4732	29	8350DB004120
4733	13	8350DB004129
4734	41	8350DB004129
4735	13	8350DB004130
4736	41	8350DB004130
4737	13	8350DB004131
4738	41	8350DB004131
4739	13	8350DB004132
4740	41	8350DB004132
4741	34	8350DB004133
4742	41	8350DB004134
4743	41	8350DB004135
4744	41	8350DB004136
4745	41	8350DB004148
4746	41	8350DB004149
4747	41	8350DB004150
4748	13	8350DB004151
4749	41	8350DB004151
4750	13	8350DB004153
4751	41	8350DB004153
4752	13	8350DB004154
4753	41	8350DB004154
4754	41	8350DB004156
4755	41	8350DB004168
4756	41	8350DB004170
4757	13	8350DB004171
4758	13	8350DB004172
4759	13	8350DB004173
4760	13	8350DB004175
4761	13	8350DB004177
4762	13	8350DB004178
4763	13	8350DB004179
4764	13	8350DB004180
4765	13	8350DB004181
4766	13	8350DB004182
4767	13	8350DB004201
4768	41	8350DB004201
4769	41	8350DB004207
4770	41	8350DB004208
4771	41	8350DB004209
4772	41	8350DB004210
4773	41	8350DB004211
4774	41	8350DB004212
4775	41	8350DB004213
4776	41	8350DB004214
4777	41	8350DB004215
4778	41	8350DB004216
4779	41	8350DB004217
4780	41	8350DB004218
4781	41	8350DB004219
4782	41	8350DB004220
4783	41	8350DB004221
4784	41	8350DB004222
4785	41	8350DB004224
4786	41	8350DB004225
4787	41	8350DB004226
4788	41	8350DB004227
4789	41	8350DB004228
4790	41	8350DB004229
4791	41	8350DB004230
4792	41	8350DB004231
4793	41	8350DB004246
4794	41	8350DB004248
4795	41	8350DB004249
4796	41	8350DB004250
4797	41	8350DB004251
4798	41	8350DB004252
4799	41	8350DB004253
4800	41	8350DB004254
4801	41	8350DB004256
4802	41	8350DB004257
4803	41	8350DB004258
4804	41	8350DB004259
4805	41	8350DB004260
4806	41	8350DB004261
4807	41	8350DB004262
4808	41	8350DB004263
4809	41	8350DB004264
4810	41	8350DB004265
4811	41	8350DB004266
4812	41	8350DB004267
4813	41	8350DB004268
4814	41	8350DB004269
4815	41	8350DB004270
4816	41	8350DB004271
4817	41	8350DB004273
4818	41	8350DB004274
4819	41	8350DB004275
4820	41	8350DB004276
4821	41	8350DB004277
4822	41	8350DB004278
4823	41	8350DB004279
4824	41	8350DB004280
4825	41	8350DB004281
4826	41	8350DB004282
4827	41	8350DB004283
4828	41	8350DB004284
4829	41	8350DB004285
4830	41	8350DB004286
4831	41	8350DB004287
4832	41	8350DB004288
4833	41	8350DB004295
4834	41	8350DB004296
4835	41	8350DB004297
4836	41	8350DB004299
4837	41	8350DB004300
4838	41	8350DB004301
4839	41	8350DB004302
4840	41	8350DB004303
4841	41	8350DB004304
4842	41	8350DB004305
4843	41	8350DB004306
4844	41	8350DB004307
4845	41	8350DB004308
4846	41	8350DB004309
4847	13	8350DB004416
4848	41	8350DB004416
4849	13	8350DB004533
4850	13	8350DB004844
4851	41	8350DB004956
4852	13	8350DB005091
4853	13	8350DB005092
4854	34	8350DB005110
4855	34	8350DB005111
4856	41	8350DB005135
4857	41	8350DB005136
4858	41	8350DB005139
4859	13	8350DB006000
4860	29	8350DB006097
4861	41	8350DB006137
4862	34	8350DB007207
4863	34	8350DB007208
4864	34	8350DB007248
4865	34	8350DB007249
4866	34	8350DB007250
4867	34	8350DB007251
4868	34	8350DB007252
4869	34	8350DB007253
4870	34	8350DB007254
4871	34	8350DB007255
4872	34	8350DB007256
4873	34	8350DB007257
4874	34	8350DB007258
4875	34	8350DB007259
4876	34	8350DB007260
4877	34	8350DB007261
4878	34	8350DB007262
4879	34	8350DB007263
4880	34	8350DB007264
4881	34	8350DB007265
4882	34	8350DB007266
4883	34	8350DB007268
4884	34	8350DB007270
4885	41	8350DB007271
4886	41	8350DB007272
4887	13	8350DB007294
4888	41	8350DB007294
4889	41	8350DB007296
4890	41	8350DB007352
4891	13	8350DB007574
4892	29	8350DB007823
4893	29	8350DB007824
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

SELECT pg_catalog.setval('public.route_connections_id_seq', 4893, true);


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


-- Completed on 2022-07-09 11:54:32

--
-- PostgreSQL database dump complete
--

