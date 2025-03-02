--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)

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
-- Name: admin_interface_theme; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.admin_interface_theme (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    active boolean NOT NULL,
    title character varying(50) NOT NULL,
    title_visible boolean NOT NULL,
    logo character varying(100) NOT NULL,
    logo_visible boolean NOT NULL,
    css_header_background_color character varying(10) NOT NULL,
    title_color character varying(10) NOT NULL,
    css_header_text_color character varying(10) NOT NULL,
    css_header_link_color character varying(10) NOT NULL,
    css_header_link_hover_color character varying(10) NOT NULL,
    css_module_background_color character varying(10) NOT NULL,
    css_module_text_color character varying(10) NOT NULL,
    css_module_link_color character varying(10) NOT NULL,
    css_module_link_hover_color character varying(10) NOT NULL,
    css_module_rounded_corners boolean NOT NULL,
    css_generic_link_color character varying(10) NOT NULL,
    css_generic_link_hover_color character varying(10) NOT NULL,
    css_save_button_background_color character varying(10) NOT NULL,
    css_save_button_background_hover_color character varying(10) NOT NULL,
    css_save_button_text_color character varying(10) NOT NULL,
    css_delete_button_background_color character varying(10) NOT NULL,
    css_delete_button_background_hover_color character varying(10) NOT NULL,
    css_delete_button_text_color character varying(10) NOT NULL,
    list_filter_dropdown boolean NOT NULL,
    related_modal_active boolean NOT NULL,
    related_modal_background_color character varying(10) NOT NULL,
    related_modal_rounded_corners boolean NOT NULL,
    logo_color character varying(10) NOT NULL,
    recent_actions_visible boolean NOT NULL,
    favicon character varying(100) NOT NULL,
    related_modal_background_opacity character varying(5) NOT NULL,
    env_name character varying(50) NOT NULL,
    env_visible_in_header boolean NOT NULL,
    env_color character varying(10) NOT NULL,
    env_visible_in_favicon boolean NOT NULL,
    related_modal_close_button_visible boolean NOT NULL,
    language_chooser_active boolean NOT NULL,
    language_chooser_display character varying(10) NOT NULL,
    list_filter_sticky boolean NOT NULL,
    form_pagination_sticky boolean NOT NULL,
    form_submit_sticky boolean NOT NULL,
    css_module_background_selected_color character varying(10) NOT NULL,
    css_module_link_selected_color character varying(10) NOT NULL,
    logo_max_height smallint NOT NULL,
    logo_max_width smallint NOT NULL,
    foldable_apps boolean NOT NULL,
    CONSTRAINT admin_interface_theme_logo_max_height_check CHECK ((logo_max_height >= 0)),
    CONSTRAINT admin_interface_theme_logo_max_width_check CHECK ((logo_max_width >= 0))
);


ALTER TABLE public.admin_interface_theme OWNER TO postgres;

--
-- Name: admin_interface_theme_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.admin_interface_theme_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_interface_theme_id_seq OWNER TO postgres;

--
-- Name: admin_interface_theme_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.admin_interface_theme_id_seq OWNED BY public.admin_interface_theme.id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
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
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
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
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
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
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
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
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
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
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
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
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
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
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
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
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
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
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
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
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: pagina1app_contacto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pagina1app_contacto (
    id bigint NOT NULL,
    nombre character varying(100) NOT NULL,
    correo character varying(254) NOT NULL,
    tipo_consulta integer NOT NULL,
    mensaje text NOT NULL,
    avisos boolean NOT NULL
);


ALTER TABLE public.pagina1app_contacto OWNER TO postgres;

--
-- Name: pagina1app_contacto_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pagina1app_contacto_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pagina1app_contacto_id_seq OWNER TO postgres;

--
-- Name: pagina1app_contacto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pagina1app_contacto_id_seq OWNED BY public.pagina1app_contacto.id;


--
-- Name: pagina1app_registro_mascota; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pagina1app_registro_mascota (
    id_mascota integer NOT NULL,
    nombre_mascota character varying(100) NOT NULL,
    sexo_mascota integer NOT NULL,
    edad_mascota integer NOT NULL,
    fecha_rescate_mascota date NOT NULL,
    fecha_vacuna_mascota date NOT NULL,
    foto_mascota character varying(100),
    raza_mascota character varying(100) NOT NULL,
    vacunas_mascota character varying(60) NOT NULL,
    CONSTRAINT pagina1app_registro_mascota_edad_mascota_check CHECK ((edad_mascota >= 0)),
    CONSTRAINT pagina1app_registro_mascota_id_mascota_check CHECK ((id_mascota >= 0))
);


ALTER TABLE public.pagina1app_registro_mascota OWNER TO postgres;

--
-- Name: pagina1app_solicitud_adopcion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pagina1app_solicitud_adopcion (
    id bigint NOT NULL,
    nombres character varying(100) NOT NULL,
    apellidos character varying(100) NOT NULL,
    edad integer NOT NULL,
    correo character varying(254) NOT NULL,
    telefono integer NOT NULL,
    domicilio character varying(1000) NOT NULL,
    id_mascota integer NOT NULL,
    razon text NOT NULL,
    CONSTRAINT pagina1app_solicitud_adopcion_edad_check CHECK ((edad >= 0)),
    CONSTRAINT pagina1app_solicitud_adopcion_id_mascota_check CHECK ((id_mascota >= 0)),
    CONSTRAINT pagina1app_solicitud_adopcion_telefono_check CHECK ((telefono >= 0))
);


ALTER TABLE public.pagina1app_solicitud_adopcion OWNER TO postgres;

--
-- Name: pagina1app_solicitud_adopcion_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pagina1app_solicitud_adopcion_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pagina1app_solicitud_adopcion_id_seq OWNER TO postgres;

--
-- Name: pagina1app_solicitud_adopcion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pagina1app_solicitud_adopcion_id_seq OWNED BY public.pagina1app_solicitud_adopcion.id;


--
-- Name: admin_interface_theme id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_interface_theme ALTER COLUMN id SET DEFAULT nextval('public.admin_interface_theme_id_seq'::regclass);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: pagina1app_contacto id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pagina1app_contacto ALTER COLUMN id SET DEFAULT nextval('public.pagina1app_contacto_id_seq'::regclass);


--
-- Name: pagina1app_solicitud_adopcion id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pagina1app_solicitud_adopcion ALTER COLUMN id SET DEFAULT nextval('public.pagina1app_solicitud_adopcion_id_seq'::regclass);


--
-- Data for Name: admin_interface_theme; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.admin_interface_theme (id, name, active, title, title_visible, logo, logo_visible, css_header_background_color, title_color, css_header_text_color, css_header_link_color, css_header_link_hover_color, css_module_background_color, css_module_text_color, css_module_link_color, css_module_link_hover_color, css_module_rounded_corners, css_generic_link_color, css_generic_link_hover_color, css_save_button_background_color, css_save_button_background_hover_color, css_save_button_text_color, css_delete_button_background_color, css_delete_button_background_hover_color, css_delete_button_text_color, list_filter_dropdown, related_modal_active, related_modal_background_color, related_modal_rounded_corners, logo_color, recent_actions_visible, favicon, related_modal_background_opacity, env_name, env_visible_in_header, env_color, env_visible_in_favicon, related_modal_close_button_visible, language_chooser_active, language_chooser_display, list_filter_sticky, form_pagination_sticky, form_submit_sticky, css_module_background_selected_color, css_module_link_selected_color, logo_max_height, logo_max_width, foldable_apps) FROM stdin;
1	Django	t	Django administration	t		t	#0C4B33	#F5DD5D	#44B78B	#FFFFFF	#C9F0DD	#44B78B	#FFFFFF	#FFFFFF	#C9F0DD	t	#0C3C26	#156641	#0C4B33	#0C3C26	#FFFFFF	#BA2121	#A41515	#FFFFFF	t	t	#000000	t	#FFFFFF	t		0.3		t	#E70000	t	t	t	code	t	f	f	#FFFFCC	#FFFFFF	100	400	t
2	Django2	f	Puppy Heroe - Admin dashboard	t		t	#0C4B33	#0346F5	#44B78B	#FFFFFF	#C9F0DD	#44B78B	#FFFFFF	#FFFFFF	#C9F0DD	t	#0C3C26	#156641	#0C4B33	#0C3C26	#FFFFFF	#BA2121	#A41515	#FFFFFF	t	t	#2ADDFF	t	#1393FF	t		0.3		t	#1772E7	t	t	t	code	t	f	f	#FFFFCC	#FFFFFF	100	400	t
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
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
25	Can add contacto	7	add_contacto
26	Can change contacto	7	change_contacto
27	Can delete contacto	7	delete_contacto
28	Can view contacto	7	view_contacto
29	Can add registro_mascota	8	add_registro_mascota
30	Can change registro_mascota	8	change_registro_mascota
31	Can delete registro_mascota	8	delete_registro_mascota
32	Can view registro_mascota	8	view_registro_mascota
33	Can add solicitud_adopcion	9	add_solicitud_adopcion
34	Can change solicitud_adopcion	9	change_solicitud_adopcion
35	Can delete solicitud_adopcion	9	delete_solicitud_adopcion
36	Can view solicitud_adopcion	9	view_solicitud_adopcion
37	Can add Theme	10	add_theme
38	Can change Theme	10	change_theme
39	Can delete Theme	10	delete_theme
40	Can view Theme	10	view_theme
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
4	pbkdf2_sha256$320000$6M9TQ6otjnzFVC6nGClqqY$GF32/y4q9ZiOzT5WBreIVtXp6Gm1NELHqP21euaE2Vg=	2022-04-30 01:22:23.921201-06	f	hefecaso	Fernando	Carrera	hfcarrerasoto@yahoo.es	f	t	2022-04-27 00:18:37.786933-06
1	pbkdf2_sha256$320000$ZhhzUEXAJE0ajyAFn7unvj$2FZas+ZzysHpdR+IlKAYzzhuYdo+LTVNweMjTw+Lyrw=	2022-04-30 01:23:26.793453-06	t	admin			admin@admin.com	t	t	2022-04-17 02:52:31.54935-06
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2022-04-17 02:53:19.548804-06	1234567897	Chenike	2	[{"changed": {"fields": ["Foto mascota"]}}]	8	1
2	2022-04-17 03:00:44.989799-06	1234567896	Dasha	2	[{"changed": {"fields": ["Foto mascota"]}}]	8	1
3	2022-04-19 01:05:30.48539-06	1234567897	Chenike	3		8	1
4	2022-04-19 01:05:30.982349-06	1234567896	Dasha	3		8	1
5	2022-04-19 01:05:30.99984-06	170420222	Oso	3		8	1
6	2022-04-19 01:05:31.016616-06	170420221	Yoshi	3		8	1
7	2022-04-19 01:05:31.034357-06	123456999	Chui	3		8	1
8	2022-04-19 01:05:31.050943-06	123456989	Chenike	3		8	1
9	2022-04-19 01:05:31.069537-06	123456789	Dasha	3		8	1
10	2022-04-19 01:05:31.086525-06	123456555	Laika	3		8	1
11	2022-04-19 01:05:31.120774-06	123456444	Laika Yoshi	3		8	1
12	2022-04-19 01:05:31.137895-06	123456333	Laika Dasha	3		8	1
13	2022-04-19 01:05:31.155502-06	123456222	Oso	3		8	1
14	2022-04-19 01:05:31.171808-06	123456221	Oso	3		8	1
15	2022-04-26 23:46:25.974029-06	2	fernando	3		4	1
16	2022-04-27 00:17:44.210565-06	3	hefecaso	3		4	1
17	2022-04-28 01:43:24.882966-06	1	Django	2	[{"changed": {"fields": ["Background color"]}}]	10	1
18	2022-04-28 01:46:00.740689-06	1	Django	2	[{"changed": {"fields": ["Color", "Background color"]}}]	10	1
19	2022-04-28 01:47:15.317826-06	1	Django	2	[]	10	1
20	2022-04-28 01:47:41.120187-06	1	Django	2	[]	10	1
21	2022-04-28 01:47:51.763984-06	2	Django2	1	[{"added": {}}]	10	1
22	2022-04-28 01:48:26.359082-06	2	Django2	2	[{"changed": {"fields": ["Color", "Color", "Color"]}}]	10	1
23	2022-04-28 01:50:22.558208-06	2	Django2	2	[{"changed": {"fields": ["Active"]}}]	10	1
24	2022-04-28 02:00:26.23502-06	2	Django2	2	[{"changed": {"fields": ["Title"]}}]	10	1
25	2022-04-28 02:00:32.351618-06	2	Django2	2	[]	10	1
26	2022-04-28 02:23:34.927869-06	2	Django2	2	[{"changed": {"fields": ["Active"]}}]	10	1
27	2022-04-28 02:23:40.27393-06	1	Django	2	[{"changed": {"fields": ["Active"]}}]	10	1
28	2022-04-28 02:24:44.893209-06	2	Django2	2	[{"changed": {"fields": ["Active", "Background color"]}}]	10	1
29	2022-04-28 02:24:56.466494-06	2	Django2	2	[{"changed": {"fields": ["Active"]}}]	10	1
30	2022-04-28 02:25:06.061352-06	1	Django	2	[{"changed": {"fields": ["Active"]}}]	10	1
31	2022-04-28 02:26:10.261923-06	2	Django2	2	[{"changed": {"fields": ["Active"]}}]	10	1
32	2022-04-28 02:30:53.347164-06	1	Django	2	[{"changed": {"fields": ["Active"]}}]	10	1
33	2022-04-28 02:42:01.556421-06	1	Django	2	[{"changed": {"fields": ["Color"]}}]	10	1
34	2022-04-28 03:50:18.615334-06	2	Katy Ixchely	2	[{"changed": {"fields": ["Nombre"]}}]	7	1
35	2022-04-28 03:50:26.78778-06	1	Katy Ixchely	2	[{"changed": {"fields": ["Nombre"]}}]	7	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	pagina1app	contacto
8	pagina1app	registro_mascota
9	pagina1app	solicitud_adopcion
10	admin_interface	theme
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2022-04-17 02:43:50.33096-06
2	auth	0001_initial	2022-04-17 02:43:51.53663-06
3	admin	0001_initial	2022-04-17 02:43:51.838499-06
4	admin	0002_logentry_remove_auto_add	2022-04-17 02:43:51.901247-06
5	admin	0003_logentry_add_action_flag_choices	2022-04-17 02:43:51.973012-06
6	contenttypes	0002_remove_content_type_name	2022-04-17 02:43:52.043342-06
7	auth	0002_alter_permission_name_max_length	2022-04-17 02:43:52.109744-06
8	auth	0003_alter_user_email_max_length	2022-04-17 02:43:52.159115-06
9	auth	0004_alter_user_username_opts	2022-04-17 02:43:52.192411-06
10	auth	0005_alter_user_last_login_null	2022-04-17 02:43:52.222988-06
11	auth	0006_require_contenttypes_0002	2022-04-17 02:43:52.237606-06
12	auth	0007_alter_validators_add_error_messages	2022-04-17 02:43:52.265133-06
13	auth	0008_alter_user_username_max_length	2022-04-17 02:43:52.352702-06
14	auth	0009_alter_user_last_name_max_length	2022-04-17 02:43:52.424279-06
15	auth	0010_alter_group_name_max_length	2022-04-17 02:43:52.526654-06
16	auth	0011_update_proxy_permissions	2022-04-17 02:43:52.583651-06
17	auth	0012_alter_user_first_name_max_length	2022-04-17 02:43:52.626711-06
18	pagina1app	0001_initial	2022-04-17 02:43:53.337997-06
19	sessions	0001_initial	2022-04-17 02:43:53.658261-06
20	admin_interface	0001_initial	2022-04-28 01:40:31.417577-06
21	admin_interface	0002_add_related_modal	2022-04-28 01:40:31.721434-06
22	admin_interface	0003_add_logo_color	2022-04-28 01:40:31.781972-06
23	admin_interface	0004_rename_title_color	2022-04-28 01:40:31.835649-06
24	admin_interface	0005_add_recent_actions_visible	2022-04-28 01:40:31.889825-06
25	admin_interface	0006_bytes_to_str	2022-04-28 01:40:32.061986-06
26	admin_interface	0007_add_favicon	2022-04-28 01:40:32.128644-06
27	admin_interface	0008_change_related_modal_background_opacity_type	2022-04-28 01:40:32.19615-06
28	admin_interface	0009_add_enviroment	2022-04-28 01:40:32.274359-06
29	admin_interface	0010_add_localization	2022-04-28 01:40:32.363234-06
30	admin_interface	0011_add_environment_options	2022-04-28 01:40:32.456394-06
31	admin_interface	0012_update_verbose_names	2022-04-28 01:40:32.568287-06
32	admin_interface	0013_add_related_modal_close_button	2022-04-28 01:40:32.638201-06
33	admin_interface	0014_name_unique	2022-04-28 01:40:33.230284-06
34	admin_interface	0015_add_language_chooser_active	2022-04-28 01:40:33.36623-06
35	admin_interface	0016_add_language_chooser_display	2022-04-28 01:40:33.434754-06
36	admin_interface	0017_change_list_filter_dropdown	2022-04-28 01:40:33.543775-06
37	admin_interface	0018_theme_list_filter_sticky	2022-04-28 01:40:33.640138-06
38	admin_interface	0019_add_form_sticky	2022-04-28 01:40:33.716649-06
39	admin_interface	0020_module_selected_colors	2022-04-28 01:40:33.821872-06
40	admin_interface	0021_file_extension_validator	2022-04-28 01:40:33.893421-06
41	admin_interface	0022_add_logo_max_width_and_height	2022-04-28 01:40:33.970432-06
42	admin_interface	0023_theme_foldable_apps	2022-04-28 01:40:34.016202-06
43	admin_interface	0024_remove_theme_css	2022-04-28 01:40:34.108129-06
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
5nndiskgf00n8xhiuiyzyofgrvuemdhq	eyJfcGFzc3dvcmRfcmVzZXRfdG9rZW4iOiJiNGltb3MtNzgyM2FkNWYzM2MyOWFhYTJhYTc0MDk4OWE4YjNkYzQifQ:1njc7s:N78jZwKdn1H8bXKAP-fqKfXubaatnYuzrE25-PqmqvI	2022-05-11 01:30:16.916992-06
l61sc5el6ty828kf3iltic74ko43vy35	.eJxVjDsOwjAQBe_iGlleZ_2jpOcMlj9rHEC2FCcV4u4QKQW0b2bei_mwrdVvgxY_Z3ZmwE6_WwzpQW0H-R7arfPU27rMke8KP-jg157peTncv4MaRv3WRtjJBp0ioXAGpUDIWhlXpHQWVBA2QhFIWkIpCNFpillNUpJxCCqx9wexqza2:1njzhq:RAQ8vwmTs58Ea4k7doUGb6brX2poVjWZKN-otjOql1s	2022-05-12 02:40:58.3281-06
7o0bss6wmvwm25ug8o9t5idparq4nrg9	.eJxVjDsOwjAQBe_iGlleZ_2jpOcMlj9rHEC2FCcV4u4QKQW0b2bei_mwrdVvgxY_Z3ZmwE6_WwzpQW0H-R7arfPU27rMke8KP-jg157peTncv4MaRv3WRtjJBp0ioXAGpUDIWhlXpHQWVBA2QhFIWkIpCNFpillNUpJxCCqx9wexqza2:1nkhRv:eTbWWCJBA5MFIsqcDNqsMqDlv8wcmip_FHa9P-yd5iA	2022-05-14 01:23:27.091075-06
\.


--
-- Data for Name: pagina1app_contacto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pagina1app_contacto (id, nombre, correo, tipo_consulta, mensaje, avisos) FROM stdin;
3	Fernando Carrera	correo@ejemplo.com	3	Felicidades por la página web	t
2	Katy Ixchely	hfcarrerasoto@yahoo.es	3	Probando el merge	t
1	Katy Ixchely	hfcarrerasoto@yahoo.es	3	Probando el merge	t
\.


--
-- Data for Name: pagina1app_registro_mascota; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pagina1app_registro_mascota (id_mascota, nombre_mascota, sexo_mascota, edad_mascota, fecha_rescate_mascota, fecha_vacuna_mascota, foto_mascota, raza_mascota, vacunas_mascota) FROM stdin;
123456789	Oso	0	12	2022-04-12	2022-04-10	fotos_mascotas/samoyedo.jpg	Samoyedo	rabia,distemper,parainfluenza
123456555	Amber	1	3	2022-04-12	2022-01-07	fotos_mascotas/hacker.png	Pitbull	rabia,parainfluenza
123123123	Yoshi	0	12	2022-04-12	2022-01-07	fotos_mascotas/spiderman.png	Aracnido	rabia,distemper,parainfluenza
1234567891	Linsai	1	5	2022-04-12	2022-04-07	fotos_mascotas/Pastor_aleman.jpg	Pastor aleman	rabia,leptospirosis,parainfluenza
\.


--
-- Data for Name: pagina1app_solicitud_adopcion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pagina1app_solicitud_adopcion (id, nombres, apellidos, edad, correo, telefono, domicilio, id_mascota, razon) FROM stdin;
1	Héctor Fernando	Carrera Soto	25	hfcarrerasoto@yahoo.es	35568775	zona 18	123456787	Esta es una prueba
2	Héctor Fernando Merge	Carrera Soto Merge	25	correo@merge.com	35568775	Lomas de lavarreda	123456785	Prueba después de unir ambas partes
3	Christian	Pocol	25	correo@ejemplo.com	123456	Lomas de lavarreda	1234567891	Esta es una razón
\.


--
-- Name: admin_interface_theme_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.admin_interface_theme_id_seq', 2, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 40, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 4, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 35, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 10, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 43, true);


--
-- Name: pagina1app_contacto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pagina1app_contacto_id_seq', 3, true);


--
-- Name: pagina1app_solicitud_adopcion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pagina1app_solicitud_adopcion_id_seq', 3, true);


--
-- Name: admin_interface_theme admin_interface_theme_name_30bda70f_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_interface_theme
    ADD CONSTRAINT admin_interface_theme_name_30bda70f_uniq UNIQUE (name);


--
-- Name: admin_interface_theme admin_interface_theme_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_interface_theme
    ADD CONSTRAINT admin_interface_theme_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: pagina1app_contacto pagina1app_contacto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pagina1app_contacto
    ADD CONSTRAINT pagina1app_contacto_pkey PRIMARY KEY (id);


--
-- Name: pagina1app_registro_mascota pagina1app_registro_mascota_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pagina1app_registro_mascota
    ADD CONSTRAINT pagina1app_registro_mascota_pkey PRIMARY KEY (id_mascota);


--
-- Name: pagina1app_solicitud_adopcion pagina1app_solicitud_adopcion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pagina1app_solicitud_adopcion
    ADD CONSTRAINT pagina1app_solicitud_adopcion_pkey PRIMARY KEY (id);


--
-- Name: admin_interface_theme_name_30bda70f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_interface_theme_name_30bda70f_like ON public.admin_interface_theme USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

