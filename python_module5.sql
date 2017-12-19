--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.10
-- Dumped by pg_dump version 9.5.10

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE auth_user OWNER TO postgres;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE auth_user_groups OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_groups_id_seq OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_id_seq OWNER TO postgres;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_user_user_permissions OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE django_admin_log (
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


ALTER TABLE django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE django_session OWNER TO postgres;

--
-- Name: ecommerce_category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE ecommerce_category (
    id integer NOT NULL,
    category_name character varying(64) NOT NULL,
    slug character varying(64) NOT NULL
);


ALTER TABLE ecommerce_category OWNER TO postgres;

--
-- Name: ecommerce_category_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE ecommerce_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ecommerce_category_id_seq OWNER TO postgres;

--
-- Name: ecommerce_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE ecommerce_category_id_seq OWNED BY ecommerce_category.id;


--
-- Name: ecommerce_product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE ecommerce_product (
    id integer NOT NULL,
    name character varying(128) NOT NULL,
    description text,
    price double precision,
    vat_rate integer NOT NULL,
    stock integer,
    image character varying(100)
);


ALTER TABLE ecommerce_product OWNER TO postgres;

--
-- Name: ecommerce_product_categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE ecommerce_product_categories (
    id integer NOT NULL,
    product_id integer NOT NULL,
    category_id integer NOT NULL
);


ALTER TABLE ecommerce_product_categories OWNER TO postgres;

--
-- Name: ecommerce_product_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE ecommerce_product_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ecommerce_product_categories_id_seq OWNER TO postgres;

--
-- Name: ecommerce_product_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE ecommerce_product_categories_id_seq OWNED BY ecommerce_product_categories.id;


--
-- Name: ecommerce_product_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE ecommerce_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ecommerce_product_id_seq OWNER TO postgres;

--
-- Name: ecommerce_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE ecommerce_product_id_seq OWNED BY ecommerce_product.id;


--
-- Name: exercises_message; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE exercises_message (
    date_sent timestamp with time zone NOT NULL,
    id integer NOT NULL,
    subject character varying(256),
    content text,
    to_id integer NOT NULL,
    from_student_id integer NOT NULL
);


ALTER TABLE exercises_message OWNER TO postgres;

--
-- Name: exercises_message_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE exercises_message_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE exercises_message_id_seq OWNER TO postgres;

--
-- Name: exercises_message_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE exercises_message_id_seq OWNED BY exercises_message.id;


--
-- Name: exercises_schoolsubject; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE exercises_schoolsubject (
    id integer NOT NULL,
    name character varying(64) NOT NULL,
    teacher_name character varying(64) NOT NULL
);


ALTER TABLE exercises_schoolsubject OWNER TO postgres;

--
-- Name: exercises_schoolsubject_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE exercises_schoolsubject_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE exercises_schoolsubject_id_seq OWNER TO postgres;

--
-- Name: exercises_schoolsubject_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE exercises_schoolsubject_id_seq OWNED BY exercises_schoolsubject.id;


--
-- Name: exercises_student; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE exercises_student (
    id integer NOT NULL,
    first_name character varying(64) NOT NULL,
    last_name character varying(64) NOT NULL,
    school_class integer NOT NULL
);


ALTER TABLE exercises_student OWNER TO postgres;

--
-- Name: exercises_student_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE exercises_student_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE exercises_student_id_seq OWNER TO postgres;

--
-- Name: exercises_student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE exercises_student_id_seq OWNED BY exercises_student.id;


--
-- Name: exercises_studentgrades; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE exercises_studentgrades (
    id integer NOT NULL,
    grade double precision NOT NULL,
    school_subject_id integer NOT NULL,
    student_id integer NOT NULL
);


ALTER TABLE exercises_studentgrades OWNER TO postgres;

--
-- Name: exercises_studentgrades_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE exercises_studentgrades_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE exercises_studentgrades_id_seq OWNER TO postgres;

--
-- Name: exercises_studentgrades_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE exercises_studentgrades_id_seq OWNED BY exercises_studentgrades.id;


--
-- Name: homework_category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE homework_category (
    id integer NOT NULL,
    category_name character varying(64) NOT NULL,
    slug character varying(64) NOT NULL
);


ALTER TABLE homework_category OWNER TO postgres;

--
-- Name: homework_category_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE homework_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE homework_category_id_seq OWNER TO postgres;

--
-- Name: homework_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE homework_category_id_seq OWNED BY homework_category.id;


--
-- Name: homework_product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE homework_product (
    id integer NOT NULL,
    name character varying(128) NOT NULL,
    description text,
    price double precision,
    vat_rate integer NOT NULL,
    stock integer,
    image character varying(100)
);


ALTER TABLE homework_product OWNER TO postgres;

--
-- Name: homework_product_categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE homework_product_categories (
    id integer NOT NULL,
    product_id integer NOT NULL,
    category_id integer NOT NULL
);


ALTER TABLE homework_product_categories OWNER TO postgres;

--
-- Name: homework_product_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE homework_product_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE homework_product_categories_id_seq OWNER TO postgres;

--
-- Name: homework_product_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE homework_product_categories_id_seq OWNED BY homework_product_categories.id;


--
-- Name: homework_product_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE homework_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE homework_product_id_seq OWNER TO postgres;

--
-- Name: homework_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE homework_product_id_seq OWNED BY homework_product.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ecommerce_category ALTER COLUMN id SET DEFAULT nextval('ecommerce_category_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ecommerce_product ALTER COLUMN id SET DEFAULT nextval('ecommerce_product_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ecommerce_product_categories ALTER COLUMN id SET DEFAULT nextval('ecommerce_product_categories_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY exercises_message ALTER COLUMN id SET DEFAULT nextval('exercises_message_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY exercises_schoolsubject ALTER COLUMN id SET DEFAULT nextval('exercises_schoolsubject_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY exercises_student ALTER COLUMN id SET DEFAULT nextval('exercises_student_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY exercises_studentgrades ALTER COLUMN id SET DEFAULT nextval('exercises_studentgrades_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY homework_category ALTER COLUMN id SET DEFAULT nextval('homework_category_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY homework_product ALTER COLUMN id SET DEFAULT nextval('homework_product_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY homework_product_categories ALTER COLUMN id SET DEFAULT nextval('homework_product_categories_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can add permission	2	add_permission
5	Can change permission	2	change_permission
6	Can delete permission	2	delete_permission
7	Can add group	3	add_group
8	Can change group	3	change_group
9	Can delete group	3	delete_group
10	Can add user	4	add_user
11	Can change user	4	change_user
12	Can delete user	4	delete_user
13	Can add content type	5	add_contenttype
14	Can change content type	5	change_contenttype
15	Can delete content type	5	delete_contenttype
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can add school subject	7	add_schoolsubject
20	Can change school subject	7	change_schoolsubject
21	Can delete school subject	7	delete_schoolsubject
22	Can add student grades	8	add_studentgrades
23	Can change student grades	8	change_studentgrades
24	Can delete student grades	8	delete_studentgrades
25	Can add student	9	add_student
26	Can change student	9	change_student
27	Can delete student	9	delete_student
28	Can add category	10	add_category
29	Can change category	10	change_category
30	Can delete category	10	delete_category
31	Can add product	11	add_product
32	Can change product	11	change_product
33	Can delete product	11	delete_product
34	Can add message	12	add_message
35	Can change message	12	change_message
36	Can delete message	12	delete_message
37	Can add product	13	add_product
38	Can change product	13	change_product
39	Can delete product	13	delete_product
40	Can add category	14	add_category
41	Can change category	14	change_category
42	Can delete category	14	delete_category
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_permission_id_seq', 42, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$36000$spzI2SLA6fWt$he09B3aG93PI6w1IqKwBIQwE+8DmEwr6RfF7cDs3ixQ=	2017-12-15 14:02:21.297018+01	t	mbidelski			mbidelski@gmail.com	t	t	2017-12-13 12:39:52.168709+01
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_id_seq', 1, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 1, false);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	exercises	schoolsubject
8	exercises	studentgrades
9	exercises	student
10	homework	category
11	homework	product
12	exercises	message
13	ecommerce	product
14	ecommerce	category
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_content_type_id_seq', 14, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2017-12-11 11:09:42.805454+01
2	auth	0001_initial	2017-12-11 11:09:43.974644+01
3	admin	0001_initial	2017-12-11 11:09:44.218995+01
4	admin	0002_logentry_remove_auto_add	2017-12-11 11:09:44.262977+01
5	contenttypes	0002_remove_content_type_name	2017-12-11 11:09:44.352049+01
6	auth	0002_alter_permission_name_max_length	2017-12-11 11:09:44.3965+01
7	auth	0003_alter_user_email_max_length	2017-12-11 11:09:44.440952+01
8	auth	0004_alter_user_username_opts	2017-12-11 11:09:44.513637+01
9	auth	0005_alter_user_last_login_null	2017-12-11 11:09:44.563495+01
10	auth	0006_require_contenttypes_0002	2017-12-11 11:09:44.574687+01
11	auth	0007_alter_validators_add_error_messages	2017-12-11 11:09:44.647461+01
12	auth	0008_alter_user_username_max_length	2017-12-11 11:09:44.752351+01
13	exercises	0001_initial	2017-12-11 11:09:45.075326+01
14	sessions	0001_initial	2017-12-11 11:09:45.386794+01
15	homework	0001_initial	2017-12-12 22:11:44.837286+01
16	homework	0002_auto_20171212_2114	2017-12-12 22:14:57.937431+01
17	exercises	0002_message	2017-12-13 10:48:37.572539+01
18	exercises	0003_auto_20171213_0957	2017-12-13 10:58:08.142576+01
19	exercises	0004_auto_20171213_1005	2017-12-13 11:05:14.420191+01
20	homework	0003_auto_20171214_1106	2017-12-14 12:06:50.67502+01
21	homework	0004_auto_20171214_1421	2017-12-14 15:21:34.692538+01
22	homework	0005_product_image	2017-12-15 16:36:30.454411+01
23	ecommerce	0001_initial	2017-12-19 10:38:27.778733+01
24	ecommerce	0002_auto_20171212_2114	2017-12-19 10:38:27.823135+01
25	ecommerce	0003_auto_20171214_1106	2017-12-19 10:38:27.848733+01
26	ecommerce	0004_auto_20171214_1421	2017-12-19 10:38:27.967876+01
27	ecommerce	0005_product_image	2017-12-19 10:38:28.001092+01
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_migrations_id_seq', 27, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
qqdx02htn5xmvwxk454m5qd3lb398vr9	NDgwODYzNzQwZTRmMjYwYThhNzI0ZTA0YjZmYzRjNWQ2ODA4MWFiZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyODk0MWYwY2EwN2M0ZjMyN2UyMGU4NTE0MjRiNWE4NTg2YzA3OWMyIn0=	2017-12-27 14:50:08.164711+01
ksn6jpk3qj2bl2ukg2rwxudqys2cax9c	Mzc1M2MyMTBmNWMxYmUwMDYxMjVlYTRjMGU4ZDJiMTFiOGNlNGQ1Mjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiNzAwNzg2YzZjNzA5YzY4NjZiMTg0MDM4YmM1OTk0MmM3NWY3ZDkyNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-12-29 14:02:21.381577+01
\.


--
-- Data for Name: ecommerce_category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY ecommerce_category (id, category_name, slug) FROM stdin;
\.


--
-- Name: ecommerce_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('ecommerce_category_id_seq', 1, false);


--
-- Data for Name: ecommerce_product; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY ecommerce_product (id, name, description, price, vat_rate, stock, image) FROM stdin;
\.


--
-- Data for Name: ecommerce_product_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY ecommerce_product_categories (id, product_id, category_id) FROM stdin;
\.


--
-- Name: ecommerce_product_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('ecommerce_product_categories_id_seq', 1, false);


--
-- Name: ecommerce_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('ecommerce_product_id_seq', 1, false);


--
-- Data for Name: exercises_message; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY exercises_message (date_sent, id, subject, content, to_id, from_student_id) FROM stdin;
2017-12-13 11:09:44.430006+01	1	Dupa	Ty chuju	5	2
\.


--
-- Name: exercises_message_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('exercises_message_id_seq', 1, true);


--
-- Data for Name: exercises_schoolsubject; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY exercises_schoolsubject (id, name, teacher_name) FROM stdin;
1	Język polski	Filip Żółtek
2	Matematyka	Nela Grunt
3	Język angielski	Aleksander Płocharczyk
4	Fizyka	Albert Bugno
5	Wychowanie fizyczne	Iwo Sugier
6	Technika	Nikodem Szlufik
7	Biologia	Rafał Chłąd
8	Chemia	Igor Garbaciak
9	Geografia	Olaf Maruszczyk
\.


--
-- Name: exercises_schoolsubject_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('exercises_schoolsubject_id_seq', 9, true);


--
-- Data for Name: exercises_student; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY exercises_student (id, first_name, last_name, school_class) FROM stdin;
1	Patryk	Dubis	1
2	Dawid	Smela	1
3	Maks	Czopik	1
4	Anastazja	Witkowicz	1
5	Arkadiusz	Zagozda	1
6	Tomasz	Puła	1
7	Oskar	Ciołczyk	1
8	Sebastian	Łachut	1
9	Bartek	Smolka	1
10	Blanka	Matejczyk	1
11	Bruno	Rozmiarek	1
12	Bianka	Maras	1
13	Agnieszka	Bicz	1
14	Antoni	Wacław	1
15	Inga	Kursa	1
16	Ada	Pakos	1
17	Anita	Oszust	1
18	Antoni	Chodak	1
19	Iwo	Hamrol	1
20	Cezary	Gubernat	1
21	Stanisław	Bany	2
22	Wiktor	Staniczek	2
23	Damian	Łuszczyk	2
24	Łukasz	Stosik	2
25	Anastazja	Głowienka	2
26	Jakub	Majtczak	2
27	Inga	Dorobisz	2
28	Daniel	Waraksa	2
29	Leonard	Stiller	2
30	Sebastian	Glapiak	2
31	Fabian	Lelito	2
32	Grzegorz	Anioła	2
33	Witold	Wenzel	2
34	Natasza	Szramka	2
35	Adrianna	Klekot	2
36	Kajetan	Kruszka	2
37	Marcel	Galon	2
38	Nicole	Duszczyk	2
39	Ewelina	Zawalich	2
40	Kaja	Pochroń	2
41	Janina	Tadych	3
42	Dorota	Ryznar	3
43	Daniel	Sudnik	3
44	Melania	Puła	3
45	Nikodem	Bacia	3
46	Dawid	Golon	3
47	Maks	Gozdur	3
48	Julianna	Ropiak	3
49	Marcelina	Górkiewicz	3
50	Janina	Macek	3
51	Klara	Kasper	3
52	Anastazja	Migała	3
53	Leonard	Dzienis	3
54	Tadeusz	Parzyszek	3
55	Maciej	Wiewiórka	3
56	Maks	Szarejko	3
57	Franciszek	Waloszek	3
58	Cezary	Solis	3
59	Kalina	Pajdak	3
60	Dominik	Pawliczek	3
61	Borys	Komuda	4
62	Paweł	Kajak	4
63	Juliusz	Skocz	4
64	Melania	Żuchowicz	4
65	Jędrzej	Różak	4
66	Mieszko	Grupa	4
67	Krystyna	Toś	4
68	Rozalia	Mainka	4
69	Iwo	Trznadel	4
70	Ewelina	Połom	4
71	Liwia	Kuder	4
72	Gustaw	Pryk	4
73	Dagmara	Parkitny	4
74	Paweł	Nikołajuk	4
75	Gabriel	Chlebek	4
76	Emil	Lampa	4
77	Damian	Hajduga	4
78	Aleksander	Bąkiewicz	4
79	Julianna	Kusyk	4
80	Paweł	Śmieszek	4
81	Paweł	Wakuła	5
82	Ida	Szylar	5
83	Ada	Tomal	5
84	Olgierd	Kawiak	5
85	Kajetan	Grosz	5
86	Łukasz	Misiaszek	5
87	Anna Maria	Raźniak	5
88	Iwo	Giża	5
89	Jerzy	Krystkowiak	5
90	Mateusz	Helak	5
91	Tola	Pokusa	5
92	Justyna	Garbacik	5
93	Olga	Glica	5
94	Miłosz	Pacia	5
95	Bartek	Sus	5
96	Jędrzej	Nurkiewicz	5
97	Fryderyk	Kręgiel	5
98	Miłosz	Grochola	5
99	Wojciech	Kuska	5
100	Mateusz	Żabierek	5
101	Miłosz	Kobos	6
102	Rafał	Tarach	6
103	Lidia	Bondyra	6
104	Szymon	Pierz	6
105	Kamila	Wośko	6
106	Kalina	Kalinka	6
107	Jan	Dytko	6
108	Aurelia	Białczyk	6
109	Justyna	Sołoducha	6
110	Mateusz	Piwowarek	6
111	Bartek	Wieczerzak	6
112	Rafał	Dzierwa	6
113	Stanisław	Sornat	6
114	Malwina	Koczy	6
115	Urszula	Daniec	6
116	Melania	Kusztal	6
117	Monika	Żołnierczyk	6
118	Elżbieta	Gierek	6
119	Natan	Kadela	6
120	Elżbieta	Herba	6
121	Stefan	Baniak	1
122	Stefan	Baniak	1
123	Stefan	Baniak	1
124	Stefan	Baniak	1
125	Stefan	Baniak	1
126	Krysia	Kolasa	5
127	Krysia	Kolasa	5
\.


--
-- Name: exercises_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('exercises_student_id_seq', 127, true);


--
-- Data for Name: exercises_studentgrades; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY exercises_studentgrades (id, grade, school_subject_id, student_id) FROM stdin;
1	4	1	1
2	3	2	17
3	4	3	5
4	5	5	14
5	3	3	14
6	2	4	2
7	3	3	20
8	3	3	19
9	3	3	28
10	3.75	2	17
11	2.5	2	17
\.


--
-- Name: exercises_studentgrades_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('exercises_studentgrades_id_seq', 11, true);


--
-- Data for Name: homework_category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY homework_category (id, category_name, slug) FROM stdin;
1	Wibratory	wibratory
2	Strapony	strapony
9	Kulki dla gimpa	kulki-dla-gimpa
10	Żele i lubrykanty	lubrykanty
8	Filmy	filmy
\.


--
-- Name: homework_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('homework_category_id_seq', 16, true);


--
-- Data for Name: homework_product; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY homework_product (id, name, description, price, vat_rate, stock, image) FROM stdin;
3	Damska szpada	\N	250	1	2	\N
8	Double penetration fun time	-	269	1	3	\N
4	Śliska gadzina	-	15	1	5	\N
12	Poke-a-hot-azz	Film przygodowo-podróżniczy rozgrywający się Ameryce Północnej czasu pierwszych kolonistów	39.990000000000002	1	2	\N
7	Czarny smagacz	-	199	1	10	\N
24	Kulka gimpa - czerwona		\N	1	\N	\N
25	Czarna, lateks	Mroczna kulka dla gimpa - produkt wysokiej jakości, z najlepszego gatunkowo lateksu. Twój gimp dusząc się będzie płakał łzy radości!	89	1	50	\N
5	Człowiek o żelaznej lasce	Wzruszający dramat obyczajowy	49	1	3	
\.


--
-- Data for Name: homework_product_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY homework_product_categories (id, product_id, category_id) FROM stdin;
2	3	2
3	3	1
8	5	8
9	7	1
10	8	1
12	4	10
15	12	8
30	24	9
31	25	9
\.


--
-- Name: homework_product_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('homework_product_categories_id_seq', 31, true);


--
-- Name: homework_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('homework_product_id_seq', 25, true);


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_user_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_user_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: ecommerce_category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ecommerce_category
    ADD CONSTRAINT ecommerce_category_pkey PRIMARY KEY (id);


--
-- Name: ecommerce_category_slug_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ecommerce_category
    ADD CONSTRAINT ecommerce_category_slug_key UNIQUE (slug);


--
-- Name: ecommerce_product_catego_product_id_category_id_9589fbb5_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ecommerce_product_categories
    ADD CONSTRAINT ecommerce_product_catego_product_id_category_id_9589fbb5_uniq UNIQUE (product_id, category_id);


--
-- Name: ecommerce_product_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ecommerce_product_categories
    ADD CONSTRAINT ecommerce_product_categories_pkey PRIMARY KEY (id);


--
-- Name: ecommerce_product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ecommerce_product
    ADD CONSTRAINT ecommerce_product_pkey PRIMARY KEY (id);


--
-- Name: exercises_message_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY exercises_message
    ADD CONSTRAINT exercises_message_pkey PRIMARY KEY (id);


--
-- Name: exercises_schoolsubject_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY exercises_schoolsubject
    ADD CONSTRAINT exercises_schoolsubject_pkey PRIMARY KEY (id);


--
-- Name: exercises_student_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY exercises_student
    ADD CONSTRAINT exercises_student_pkey PRIMARY KEY (id);


--
-- Name: exercises_studentgrades_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY exercises_studentgrades
    ADD CONSTRAINT exercises_studentgrades_pkey PRIMARY KEY (id);


--
-- Name: homework_category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY homework_category
    ADD CONSTRAINT homework_category_pkey PRIMARY KEY (id);


--
-- Name: homework_category_slug_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY homework_category
    ADD CONSTRAINT homework_category_slug_key UNIQUE (slug);


--
-- Name: homework_product_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY homework_product_categories
    ADD CONSTRAINT homework_product_categories_pkey PRIMARY KEY (id);


--
-- Name: homework_product_categories_product_id_008e8565_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY homework_product_categories
    ADD CONSTRAINT homework_product_categories_product_id_008e8565_uniq UNIQUE (product_id, category_id);


--
-- Name: homework_product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY homework_product
    ADD CONSTRAINT homework_product_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_0e939a4f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_0e939a4f ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_8373b171; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_8373b171 ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_417f1b1c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_417f1b1c ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_0e939a4f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_0e939a4f ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_e8701ad4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_e8701ad4 ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_8373b171; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_8373b171 ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_e8701ad4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_e8701ad4 ON auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_417f1b1c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_417f1b1c ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_e8701ad4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_e8701ad4 ON django_admin_log USING btree (user_id);


--
-- Name: django_session_de54fa62; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_de54fa62 ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: ecommerce_category_slug_a2f2fe36_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ecommerce_category_slug_a2f2fe36_like ON ecommerce_category USING btree (slug varchar_pattern_ops);


--
-- Name: ecommerce_product_categories_category_id_8aaa0b5b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ecommerce_product_categories_category_id_8aaa0b5b ON ecommerce_product_categories USING btree (category_id);


--
-- Name: ecommerce_product_categories_product_id_93c1c212; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ecommerce_product_categories_product_id_93c1c212 ON ecommerce_product_categories USING btree (product_id);


--
-- Name: exercises_message_92450328; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX exercises_message_92450328 ON exercises_message USING btree (from_student_id);


--
-- Name: exercises_message_f4b39993; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX exercises_message_f4b39993 ON exercises_message USING btree (to_id);


--
-- Name: exercises_studentgrades_30a811f6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX exercises_studentgrades_30a811f6 ON exercises_studentgrades USING btree (student_id);


--
-- Name: exercises_studentgrades_334b90f6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX exercises_studentgrades_334b90f6 ON exercises_studentgrades USING btree (school_subject_id);


--
-- Name: homework_category_slug_700cf3ae_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX homework_category_slug_700cf3ae_like ON homework_category USING btree (slug varchar_pattern_ops);


--
-- Name: homework_product_categories_9bea82de; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX homework_product_categories_9bea82de ON homework_product_categories USING btree (product_id);


--
-- Name: homework_product_categories_b583a629; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX homework_product_categories_b583a629 ON homework_product_categories USING btree (category_id);


--
-- Name: auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_per_permission_id_1fbb5f2c_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_per_permission_id_1fbb5f2c_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_content_type_id_c4bce8eb_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_content_type_id_c4bce8eb_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ecommerce_product_ca_category_id_8aaa0b5b_fk_ecommerce; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ecommerce_product_categories
    ADD CONSTRAINT ecommerce_product_ca_category_id_8aaa0b5b_fk_ecommerce FOREIGN KEY (category_id) REFERENCES ecommerce_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ecommerce_product_ca_product_id_93c1c212_fk_ecommerce; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ecommerce_product_categories
    ADD CONSTRAINT ecommerce_product_ca_product_id_93c1c212_fk_ecommerce FOREIGN KEY (product_id) REFERENCES ecommerce_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: exerci_school_subject_id_3c42cf6a_fk_exercises_schoolsubject_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY exercises_studentgrades
    ADD CONSTRAINT exerci_school_subject_id_3c42cf6a_fk_exercises_schoolsubject_id FOREIGN KEY (school_subject_id) REFERENCES exercises_schoolsubject(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: exercises_mess_from_student_id_6d74b7f1_fk_exercises_student_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY exercises_message
    ADD CONSTRAINT exercises_mess_from_student_id_6d74b7f1_fk_exercises_student_id FOREIGN KEY (from_student_id) REFERENCES exercises_student(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: exercises_message_to_id_04e731ee_fk_exercises_schoolsubject_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY exercises_message
    ADD CONSTRAINT exercises_message_to_id_04e731ee_fk_exercises_schoolsubject_id FOREIGN KEY (to_id) REFERENCES exercises_schoolsubject(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: exercises_studentgr_student_id_1ede42fe_fk_exercises_student_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY exercises_studentgrades
    ADD CONSTRAINT exercises_studentgr_student_id_1ede42fe_fk_exercises_student_id FOREIGN KEY (student_id) REFERENCES exercises_student(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: homework_product_c_category_id_f5fcc94a_fk_homework_category_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY homework_product_categories
    ADD CONSTRAINT homework_product_c_category_id_f5fcc94a_fk_homework_category_id FOREIGN KEY (category_id) REFERENCES homework_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: homework_product_cat_product_id_f2710634_fk_homework_product_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY homework_product_categories
    ADD CONSTRAINT homework_product_cat_product_id_f2710634_fk_homework_product_id FOREIGN KEY (product_id) REFERENCES homework_product(id) DEFERRABLE INITIALLY DEFERRED;


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

