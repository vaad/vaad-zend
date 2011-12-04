--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

--
-- Name: plpgsql; Type: PROCEDURAL LANGUAGE; Schema: -; Owner: postgresql
--

CREATE OR REPLACE PROCEDURAL LANGUAGE plpgsql;


ALTER PROCEDURAL LANGUAGE plpgsql OWNER TO postgresql;

SET search_path = public, pg_catalog;

--
-- Name: add_stamp(); Type: FUNCTION; Schema: public; Owner: mainvaadbait_il_com
--

CREATE FUNCTION add_stamp() RETURNS trigger
    LANGUAGE plpgsql
    AS $$

BEGIN

NEW.update_time := CURRENT_TIMESTAMP;

IF (NEW.create_time IS NULL ) THEN

NEW.create_time := CURRENT_TIMESTAMP;

END IF;

RETURN NEW;

END;

$$;


ALTER FUNCTION public.add_stamp() OWNER TO mainvaadbait_il_com;

--
-- Name: ads_add_stamp(); Type: FUNCTION; Schema: public; Owner: mainvaadbait_il_com
--

CREATE FUNCTION ads_add_stamp() RETURNS trigger
    LANGUAGE plpgsql
    AS $$

  BEGIN

    NEW.update_time := CURRENT_TIMESTAMP;

    IF (NEW.creation_date IS NULL ) THEN

     NEW.creation_date := CURRENT_TIMESTAMP;

    END IF;

    RETURN NEW;

  END;

  $$;


ALTER FUNCTION public.ads_add_stamp() OWNER TO mainvaadbait_il_com;

--
-- Name: commens_add_stamp(); Type: FUNCTION; Schema: public; Owner: mainvaadbait_il_com
--

CREATE FUNCTION commens_add_stamp() RETURNS trigger
    LANGUAGE plpgsql
    AS $$

  BEGIN

    IF (NEW.create_time IS NULL ) THEN

     NEW.create_time := CURRENT_TIMESTAMP;

    END IF;

    RETURN NEW;

  END;

  $$;


ALTER FUNCTION public.commens_add_stamp() OWNER TO mainvaadbait_il_com;

--
-- Name: comments_add_stamp(); Type: FUNCTION; Schema: public; Owner: mainvaadbait_il_com
--

CREATE FUNCTION comments_add_stamp() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
  BEGIN
    IF (NEW.create_time IS NULL ) THEN
     NEW.create_time := CURRENT_TIMESTAMP;
    END IF;
    RETURN NEW;
  END;
  $$;


ALTER FUNCTION public.comments_add_stamp() OWNER TO mainvaadbait_il_com;

--
-- Name: posts_add_stamp(); Type: FUNCTION; Schema: public; Owner: mainvaadbait_il_com
--

CREATE FUNCTION posts_add_stamp() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
  BEGIN
    NEW.update_time := CURRENT_TIMESTAMP;
    IF (NEW.create_time IS NULL ) THEN
     NEW.create_time := CURRENT_TIMESTAMP;
    END IF;
    RETURN NEW;
  END;
  $$;


ALTER FUNCTION public.posts_add_stamp() OWNER TO mainvaadbait_il_com;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: accounts; Type: TABLE; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

CREATE TABLE accounts (
    id integer NOT NULL,
    bld_id integer NOT NULL,
    acc_type character(3),
    acc_branch character(3),
    acc_number character varying(20),
    acc_starting_amount double precision DEFAULT 0,
    acc_remarks text,
    acc_bank integer
);


ALTER TABLE public.accounts OWNER TO mainvaadbait_il_com;

--
-- Name: accounts_id_seq; Type: SEQUENCE; Schema: public; Owner: mainvaadbait_il_com
--

CREATE SEQUENCE accounts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.accounts_id_seq OWNER TO mainvaadbait_il_com;

--
-- Name: accounts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mainvaadbait_il_com
--

ALTER SEQUENCE accounts_id_seq OWNED BY accounts.id;


--
-- Name: accounts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mainvaadbait_il_com
--

SELECT pg_catalog.setval('accounts_id_seq', 1, false);


--
-- Name: ad_cat_codes; Type: TABLE; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

CREATE TABLE ad_cat_codes (
    id integer NOT NULL,
    code_desc character varying(30)
);


ALTER TABLE public.ad_cat_codes OWNER TO mainvaadbait_il_com;

--
-- Name: ad_cat_codes_seq_id; Type: SEQUENCE; Schema: public; Owner: mainvaadbait_il_com
--

CREATE SEQUENCE ad_cat_codes_seq_id
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ad_cat_codes_seq_id OWNER TO mainvaadbait_il_com;

--
-- Name: ad_cat_codes_seq_id; Type: SEQUENCE SET; Schema: public; Owner: mainvaadbait_il_com
--

SELECT pg_catalog.setval('ad_cat_codes_seq_id', 2, true);


--
-- Name: ads; Type: TABLE; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

CREATE TABLE ads (
    id integer NOT NULL,
    bld_id integer NOT NULL,
    name character varying(255),
    title character varying(255) NOT NULL,
    content_txt text NOT NULL,
    is_asking boolean,
    is_offering boolean,
    phone_num character varying(15),
    remarks text,
    price_asked double precision DEFAULT 0.0,
    category integer DEFAULT 0,
    creation_date abstime DEFAULT now() NOT NULL,
    update_time abstime DEFAULT now() NOT NULL
);


ALTER TABLE public.ads OWNER TO mainvaadbait_il_com;

--
-- Name: ads_id_seq; Type: SEQUENCE; Schema: public; Owner: mainvaadbait_il_com
--

CREATE SEQUENCE ads_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ads_id_seq OWNER TO mainvaadbait_il_com;

--
-- Name: ads_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mainvaadbait_il_com
--

ALTER SEQUENCE ads_id_seq OWNED BY ads.id;


--
-- Name: ads_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mainvaadbait_il_com
--

SELECT pg_catalog.setval('ads_id_seq', 1, false);


--
-- Name: app_codes; Type: TABLE; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

CREATE TABLE app_codes (
    id integer NOT NULL,
    code_desc character varying(30)
);


ALTER TABLE public.app_codes OWNER TO mainvaadbait_il_com;

--
-- Name: app_codes_id_seq; Type: SEQUENCE; Schema: public; Owner: mainvaadbait_il_com
--

CREATE SEQUENCE app_codes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.app_codes_id_seq OWNER TO mainvaadbait_il_com;

--
-- Name: app_codes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mainvaadbait_il_com
--

ALTER SEQUENCE app_codes_id_seq OWNED BY app_codes.id;


--
-- Name: app_codes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mainvaadbait_il_com
--

SELECT pg_catalog.setval('app_codes_id_seq', 8, true);


--
-- Name: app_codes_seq_id; Type: SEQUENCE; Schema: public; Owner: mainvaadbait_il_com
--

CREATE SEQUENCE app_codes_seq_id
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.app_codes_seq_id OWNER TO mainvaadbait_il_com;

--
-- Name: app_codes_seq_id; Type: SEQUENCE SET; Schema: public; Owner: mainvaadbait_il_com
--

SELECT pg_catalog.setval('app_codes_seq_id', 1, false);


--
-- Name: app_taxes; Type: TABLE; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

CREATE TABLE app_taxes (
    app_id integer NOT NULL,
    bld_id integer NOT NULL,
    start_date date NOT NULL,
    app_num integer NOT NULL,
    tax_amount double precision
);


ALTER TABLE public.app_taxes OWNER TO mainvaadbait_il_com;

--
-- Name: appartments; Type: TABLE; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

CREATE TABLE appartments (
    id integer NOT NULL,
    bld_id integer NOT NULL,
    app_num integer NOT NULL,
    app_flat_num integer DEFAULT 0,
    app_type integer DEFAULT 1,
    start_mnt_date date,
    next_mnt_date date,
    mnt_gap integer DEFAULT 1,
    mnt_gap_type integer DEFAULT 2 NOT NULL
);


ALTER TABLE public.appartments OWNER TO mainvaadbait_il_com;

--
-- Name: COLUMN appartments.mnt_gap; Type: COMMENT; Schema: public; Owner: mainvaadbait_il_com
--

COMMENT ON COLUMN appartments.mnt_gap IS 'ערך מרווח טיפולים';


--
-- Name: COLUMN appartments.mnt_gap_type; Type: COMMENT; Schema: public; Owner: mainvaadbait_il_com
--

COMMENT ON COLUMN appartments.mnt_gap_type IS '0 - days

1- months

2-years';


--
-- Name: appartments_id_seq; Type: SEQUENCE; Schema: public; Owner: mainvaadbait_il_com
--

CREATE SEQUENCE appartments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.appartments_id_seq OWNER TO mainvaadbait_il_com;

--
-- Name: appartments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mainvaadbait_il_com
--

ALTER SEQUENCE appartments_id_seq OWNED BY appartments.id;


--
-- Name: appartments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mainvaadbait_il_com
--

SELECT pg_catalog.setval('appartments_id_seq', 32, false);


--
-- Name: apt_maintenance; Type: TABLE; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

CREATE TABLE apt_maintenance (
    id integer NOT NULL,
    bld_id integer NOT NULL,
    apt_id integer NOT NULL,
    start_date date NOT NULL,
    amount double precision DEFAULT 0.0
);


ALTER TABLE public.apt_maintenance OWNER TO mainvaadbait_il_com;

--
-- Name: TABLE apt_maintenance; Type: COMMENT; Schema: public; Owner: mainvaadbait_il_com
--

COMMENT ON TABLE apt_maintenance IS 'תאריכי טיפול ועלות של יחידות דיור כמו מעליות, גנרטורים וכו';


--
-- Name: apt_maintenance_id_seq; Type: SEQUENCE; Schema: public; Owner: mainvaadbait_il_com
--

CREATE SEQUENCE apt_maintenance_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.apt_maintenance_id_seq OWNER TO mainvaadbait_il_com;

--
-- Name: apt_maintenance_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mainvaadbait_il_com
--

ALTER SEQUENCE apt_maintenance_id_seq OWNED BY apt_maintenance.id;


--
-- Name: apt_maintenance_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mainvaadbait_il_com
--

SELECT pg_catalog.setval('apt_maintenance_id_seq', 2, false);


--
-- Name: bank_code_id_seq; Type: SEQUENCE; Schema: public; Owner: mainvaadbait_il_com
--

CREATE SEQUENCE bank_code_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bank_code_id_seq OWNER TO mainvaadbait_il_com;

--
-- Name: bank_code_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mainvaadbait_il_com
--

SELECT pg_catalog.setval('bank_code_id_seq', 1, false);


--
-- Name: bank_codes; Type: TABLE; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

CREATE TABLE bank_codes (
    id integer DEFAULT nextval('bank_code_id_seq'::regclass) NOT NULL,
    code_desc character varying(30)
);


ALTER TABLE public.bank_codes OWNER TO mainvaadbait_il_com;

--
-- Name: bank_codes_seq_id; Type: SEQUENCE; Schema: public; Owner: mainvaadbait_il_com
--

CREATE SEQUENCE bank_codes_seq_id
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bank_codes_seq_id OWNER TO mainvaadbait_il_com;

--
-- Name: bank_codes_seq_id; Type: SEQUENCE SET; Schema: public; Owner: mainvaadbait_il_com
--

SELECT pg_catalog.setval('bank_codes_seq_id', 55, true);


--
-- Name: buildings; Type: TABLE; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

CREATE TABLE buildings (
    id integer NOT NULL,
    site_id integer NOT NULL,
    is_active boolean DEFAULT true NOT NULL,
    bld_street character varying(50) NOT NULL,
    bld_num character varying(10) NOT NULL,
    bld_city character varying(25) NOT NULL,
    bld_zip character varying(5) NOT NULL,
    bld_num_app integer DEFAULT 30 NOT NULL,
    bld_min_floor integer DEFAULT 0 NOT NULL,
    bld_max_floor integer DEFAULT 6 NOT NULL
);


ALTER TABLE public.buildings OWNER TO mainvaadbait_il_com;

--
-- Name: buildings_id_seq; Type: SEQUENCE; Schema: public; Owner: mainvaadbait_il_com
--

CREATE SEQUENCE buildings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.buildings_id_seq OWNER TO mainvaadbait_il_com;

--
-- Name: buildings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mainvaadbait_il_com
--

ALTER SEQUENCE buildings_id_seq OWNED BY buildings.id;


--
-- Name: buildings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mainvaadbait_il_com
--

SELECT pg_catalog.setval('buildings_id_seq', 1, false);


--
-- Name: comment_codes; Type: TABLE; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

CREATE TABLE comment_codes (
    id integer NOT NULL,
    code_desc character varying(30)
);


ALTER TABLE public.comment_codes OWNER TO mainvaadbait_il_com;

--
-- Name: comment_codes_id_seq; Type: SEQUENCE; Schema: public; Owner: mainvaadbait_il_com
--

CREATE SEQUENCE comment_codes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comment_codes_id_seq OWNER TO mainvaadbait_il_com;

--
-- Name: comment_codes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mainvaadbait_il_com
--

ALTER SEQUENCE comment_codes_id_seq OWNED BY comment_codes.id;


--
-- Name: comment_codes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mainvaadbait_il_com
--

SELECT pg_catalog.setval('comment_codes_id_seq', 2, true);


--
-- Name: comment_codes_seq_id; Type: SEQUENCE; Schema: public; Owner: mainvaadbait_il_com
--

CREATE SEQUENCE comment_codes_seq_id
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comment_codes_seq_id OWNER TO mainvaadbait_il_com;

--
-- Name: comment_codes_seq_id; Type: SEQUENCE SET; Schema: public; Owner: mainvaadbait_il_com
--

SELECT pg_catalog.setval('comment_codes_seq_id', 1, false);


--
-- Name: comments; Type: TABLE; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

CREATE TABLE comments (
    id integer NOT NULL,
    bld_id integer NOT NULL,
    post_id integer NOT NULL,
    author_id integer NOT NULL,
    content_text text NOT NULL,
    status integer NOT NULL,
    create_time date,
    is_locked boolean DEFAULT false NOT NULL
);


ALTER TABLE public.comments OWNER TO mainvaadbait_il_com;

--
-- Name: comments_id_seq; Type: SEQUENCE; Schema: public; Owner: mainvaadbait_il_com
--

CREATE SEQUENCE comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comments_id_seq OWNER TO mainvaadbait_il_com;

--
-- Name: comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mainvaadbait_il_com
--

ALTER SEQUENCE comments_id_seq OWNED BY comments.id;


--
-- Name: comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mainvaadbait_il_com
--

SELECT pg_catalog.setval('comments_id_seq', 1, true);


--
-- Name: contact_codes_id_seq; Type: SEQUENCE; Schema: public; Owner: mainvaadbait_il_com
--

CREATE SEQUENCE contact_codes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contact_codes_id_seq OWNER TO mainvaadbait_il_com;

--
-- Name: contact_codes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mainvaadbait_il_com
--

SELECT pg_catalog.setval('contact_codes_id_seq', 4, true);


--
-- Name: contact_codes; Type: TABLE; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

CREATE TABLE contact_codes (
    id integer DEFAULT nextval('contact_codes_id_seq'::regclass) NOT NULL,
    code_desc character varying(30)
);


ALTER TABLE public.contact_codes OWNER TO mainvaadbait_il_com;

--
-- Name: contact_codes_seq_id; Type: SEQUENCE; Schema: public; Owner: mainvaadbait_il_com
--

CREATE SEQUENCE contact_codes_seq_id
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contact_codes_seq_id OWNER TO mainvaadbait_il_com;

--
-- Name: contact_codes_seq_id; Type: SEQUENCE SET; Schema: public; Owner: mainvaadbait_il_com
--

SELECT pg_catalog.setval('contact_codes_seq_id', 2, true);


--
-- Name: contacts; Type: TABLE; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

CREATE TABLE contacts (
    id integer NOT NULL,
    bld_id integer NOT NULL,
    cnt_first_name character varying(20),
    cnt_last_name character varying(20),
    cnt_phone1 character varying(20),
    cnt_phone2 character varying(20),
    cnt_address character varying(100),
    cnt_remarks text,
    cnt_type integer,
    cnt_email character varying(50)
);


ALTER TABLE public.contacts OWNER TO mainvaadbait_il_com;

--
-- Name: contacts_id_seq; Type: SEQUENCE; Schema: public; Owner: mainvaadbait_il_com
--

CREATE SEQUENCE contacts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contacts_id_seq OWNER TO mainvaadbait_il_com;

--
-- Name: contacts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mainvaadbait_il_com
--

ALTER SEQUENCE contacts_id_seq OWNED BY contacts.id;


--
-- Name: contacts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mainvaadbait_il_com
--

SELECT pg_catalog.setval('contacts_id_seq', 9, true);


--
-- Name: forums; Type: TABLE; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

CREATE TABLE forums (
    id integer NOT NULL,
    bld_id integer NOT NULL,
    forum_name character varying(255) NOT NULL,
    forum_desc text,
    forum_mngr integer DEFAULT 0
);


ALTER TABLE public.forums OWNER TO mainvaadbait_il_com;

--
-- Name: TABLE forums; Type: COMMENT; Schema: public; Owner: mainvaadbait_il_com
--

COMMENT ON TABLE forums IS 'דיונים שונים - כולל הודעות וועד';


--
-- Name: forums_id_seq; Type: SEQUENCE; Schema: public; Owner: mainvaadbait_il_com
--

CREATE SEQUENCE forums_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.forums_id_seq OWNER TO mainvaadbait_il_com;

--
-- Name: forums_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mainvaadbait_il_com
--

ALTER SEQUENCE forums_id_seq OWNED BY forums.id;


--
-- Name: forums_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mainvaadbait_il_com
--

SELECT pg_catalog.setval('forums_id_seq', 1, false);


--
-- Name: incomes; Type: TABLE; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

CREATE TABLE incomes (
    id integer NOT NULL,
    bld_id integer NOT NULL,
    prj_id integer DEFAULT 0 NOT NULL,
    inc_date date NOT NULL,
    inc_until_date date,
    inc_amount double precision NOT NULL,
    inc_paid boolean DEFAULT false,
    inc_branch integer,
    inc_chk_no integer,
    inc_chk_date date,
    inc_apt_num integer,
    inc_bank integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.incomes OWNER TO mainvaadbait_il_com;

--
-- Name: incomes_id_seq; Type: SEQUENCE; Schema: public; Owner: mainvaadbait_il_com
--

CREATE SEQUENCE incomes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.incomes_id_seq OWNER TO mainvaadbait_il_com;

--
-- Name: incomes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mainvaadbait_il_com
--

ALTER SEQUENCE incomes_id_seq OWNED BY incomes.id;


--
-- Name: incomes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mainvaadbait_il_com
--

SELECT pg_catalog.setval('incomes_id_seq', 286, true);


--
-- Name: pay_codes; Type: TABLE; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

CREATE TABLE pay_codes (
    id integer NOT NULL,
    code_desc character varying(30)
);


ALTER TABLE public.pay_codes OWNER TO mainvaadbait_il_com;

--
-- Name: pay_codes_id_seqpay_codes_id_seq; Type: SEQUENCE; Schema: public; Owner: mainvaadbait_il_com
--

CREATE SEQUENCE pay_codes_id_seqpay_codes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pay_codes_id_seqpay_codes_id_seq OWNER TO mainvaadbait_il_com;

--
-- Name: pay_codes_id_seqpay_codes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mainvaadbait_il_com
--

SELECT pg_catalog.setval('pay_codes_id_seqpay_codes_id_seq', 1, false);


--
-- Name: pay_codes_seq_id; Type: SEQUENCE; Schema: public; Owner: mainvaadbait_il_com
--

CREATE SEQUENCE pay_codes_seq_id
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pay_codes_seq_id OWNER TO mainvaadbait_il_com;

--
-- Name: pay_codes_seq_id; Type: SEQUENCE SET; Schema: public; Owner: mainvaadbait_il_com
--

SELECT pg_catalog.setval('pay_codes_seq_id', 1, false);


--
-- Name: poll_attendents; Type: TABLE; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

CREATE TABLE poll_attendents (
    pol_id integer NOT NULL,
    bld_id integer NOT NULL,
    tnt_id integer NOT NULL,
    app_num integer NOT NULL,
    option_selected integer
);


ALTER TABLE public.poll_attendents OWNER TO mainvaadbait_il_com;

--
-- Name: poll_codes; Type: TABLE; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

CREATE TABLE poll_codes (
    id integer NOT NULL,
    code_desc character varying(30)
);


ALTER TABLE public.poll_codes OWNER TO mainvaadbait_il_com;

--
-- Name: poll_codes_seq_id; Type: SEQUENCE; Schema: public; Owner: mainvaadbait_il_com
--

CREATE SEQUENCE poll_codes_seq_id
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.poll_codes_seq_id OWNER TO mainvaadbait_il_com;

--
-- Name: poll_codes_seq_id; Type: SEQUENCE SET; Schema: public; Owner: mainvaadbait_il_com
--

SELECT pg_catalog.setval('poll_codes_seq_id', 1, false);


--
-- Name: poll_options; Type: TABLE; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

CREATE TABLE poll_options (
    id integer NOT NULL,
    poll_id integer NOT NULL,
    bld_id integer NOT NULL,
    po_position integer,
    po_title character varying(255) NOT NULL
);


ALTER TABLE public.poll_options OWNER TO mainvaadbait_il_com;

--
-- Name: polloptions_id_seq; Type: SEQUENCE; Schema: public; Owner: mainvaadbait_il_com
--

CREATE SEQUENCE polloptions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.polloptions_id_seq OWNER TO mainvaadbait_il_com;

--
-- Name: polloptions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mainvaadbait_il_com
--

ALTER SEQUENCE polloptions_id_seq OWNED BY poll_options.id;


--
-- Name: polloptions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mainvaadbait_il_com
--

SELECT pg_catalog.setval('polloptions_id_seq', 1, false);


--
-- Name: polls; Type: TABLE; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

CREATE TABLE polls (
    id integer NOT NULL,
    bld_id integer NOT NULL,
    pol_type integer DEFAULT 0 NOT NULL,
    pol_title character varying(255) NOT NULL,
    pol_date date DEFAULT now() NOT NULL,
    pol_desc text,
    pol_exp_date date,
    pol_on_main boolean DEFAULT false NOT NULL,
    pol_active boolean DEFAULT false NOT NULL
);


ALTER TABLE public.polls OWNER TO mainvaadbait_il_com;

--
-- Name: polls_id_seq; Type: SEQUENCE; Schema: public; Owner: mainvaadbait_il_com
--

CREATE SEQUENCE polls_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.polls_id_seq OWNER TO mainvaadbait_il_com;

--
-- Name: polls_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mainvaadbait_il_com
--

ALTER SEQUENCE polls_id_seq OWNED BY polls.id;


--
-- Name: polls_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mainvaadbait_il_com
--

SELECT pg_catalog.setval('polls_id_seq', 1, false);


--
-- Name: post_codes; Type: TABLE; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

CREATE TABLE post_codes (
    id integer NOT NULL,
    code_desc character varying(30)
);


ALTER TABLE public.post_codes OWNER TO mainvaadbait_il_com;

--
-- Name: post_codes_seq_id; Type: SEQUENCE; Schema: public; Owner: mainvaadbait_il_com
--

CREATE SEQUENCE post_codes_seq_id
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.post_codes_seq_id OWNER TO mainvaadbait_il_com;

--
-- Name: post_codes_seq_id; Type: SEQUENCE SET; Schema: public; Owner: mainvaadbait_il_com
--

SELECT pg_catalog.setval('post_codes_seq_id', 100, true);


--
-- Name: post_tags; Type: TABLE; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

CREATE TABLE post_tags (
    bld_id integer NOT NULL,
    post_id integer NOT NULL,
    tag_id integer NOT NULL
);


ALTER TABLE public.post_tags OWNER TO mainvaadbait_il_com;

--
-- Name: posts; Type: TABLE; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

CREATE TABLE posts (
    id integer NOT NULL,
    bld_id integer NOT NULL,
    author_id integer NOT NULL,
    pst_status integer NOT NULL,
    title character varying(128) NOT NULL,
    content_txt text NOT NULL,
    pst_picture character varying(128),
    create_time timestamp without time zone DEFAULT now(),
    update_time timestamp without time zone DEFAULT now(),
    forum_id integer,
    adding_comments boolean DEFAULT true NOT NULL
);


ALTER TABLE public.posts OWNER TO mainvaadbait_il_com;

--
-- Name: posts_id_seq; Type: SEQUENCE; Schema: public; Owner: mainvaadbait_il_com
--

CREATE SEQUENCE posts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.posts_id_seq OWNER TO mainvaadbait_il_com;

--
-- Name: posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mainvaadbait_il_com
--

ALTER SEQUENCE posts_id_seq OWNED BY posts.id;


--
-- Name: posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mainvaadbait_il_com
--

SELECT pg_catalog.setval('posts_id_seq', 2, false);


--
-- Name: projects; Type: TABLE; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

CREATE TABLE projects (
    id integer NOT NULL,
    bld_id integer NOT NULL,
    prj_title character varying(50),
    prj_desc text,
    prj_approx_cost double precision,
    prj_actual_cost double precision,
    prj_approx_start_date date,
    prj_actual_start_date date,
    prj_approx_end_date date,
    prj_actual_end_date date
);


ALTER TABLE public.projects OWNER TO mainvaadbait_il_com;

--
-- Name: projects_id_seq; Type: SEQUENCE; Schema: public; Owner: mainvaadbait_il_com
--

CREATE SEQUENCE projects_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.projects_id_seq OWNER TO mainvaadbait_il_com;

--
-- Name: projects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mainvaadbait_il_com
--

ALTER SEQUENCE projects_id_seq OWNED BY projects.id;


--
-- Name: projects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mainvaadbait_il_com
--

SELECT pg_catalog.setval('projects_id_seq', 16, true);


--
-- Name: receipts; Type: TABLE; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

CREATE TABLE receipts (
    id integer NOT NULL,
    bld_id integer NOT NULL,
    ser_num integer NOT NULL,
    rct_year integer,
    rct_date date NOT NULL,
    rct_amount real NOT NULL,
    rct_tnt_id integer DEFAULT 0 NOT NULL,
    rct_name character varying(60),
    rct_full_address character varying(250),
    rct_city character varying(60),
    rct_zip character varying(10),
    rct_phone character varying(15),
    rct_trn_id integer
);


ALTER TABLE public.receipts OWNER TO mainvaadbait_il_com;

--
-- Name: TABLE receipts; Type: COMMENT; Schema: public; Owner: mainvaadbait_il_com
--

COMMENT ON TABLE receipts IS 'קבלות שהוצאו- משוייכות לתנועה';


--
-- Name: COLUMN receipts.rct_trn_id; Type: COMMENT; Schema: public; Owner: mainvaadbait_il_com
--

COMMENT ON COLUMN receipts.rct_trn_id IS 'קוד תנועה - צריך גם לשייך לבניין';


--
-- Name: receipts_id_seq; Type: SEQUENCE; Schema: public; Owner: mainvaadbait_il_com
--

CREATE SEQUENCE receipts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.receipts_id_seq OWNER TO mainvaadbait_il_com;

--
-- Name: receipts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mainvaadbait_il_com
--

ALTER SEQUENCE receipts_id_seq OWNED BY receipts.id;


--
-- Name: receipts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mainvaadbait_il_com
--

SELECT pg_catalog.setval('receipts_id_seq', 1, false);


--
-- Name: registries; Type: TABLE; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

CREATE TABLE registries (
    id integer NOT NULL,
    bld_id integer,
    tnt_app_num integer,
    tnt_first_name character varying(15),
    tnt_last_name character varying(15),
    tnt_password character varying(60),
    tnt_birthday date,
    tnt_email character varying(60),
    tnt_app_phone character varying(20),
    tnt_picture character varying(255),
    tnt_mobile character varying(20),
    tnt_entry_date date,
    tnt_occupation character varying(30),
    tnt_is_owner boolean
);


ALTER TABLE public.registries OWNER TO mainvaadbait_il_com;

--
-- Name: reminders; Type: TABLE; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

CREATE TABLE reminders (
    id integer NOT NULL,
    bld_id integer NOT NULL,
    apt_id integer NOT NULL,
    reminder_time timestamp with time zone,
    title character varying(255) NOT NULL,
    remarks text
);


ALTER TABLE public.reminders OWNER TO mainvaadbait_il_com;

--
-- Name: TABLE reminders; Type: COMMENT; Schema: public; Owner: mainvaadbait_il_com
--

COMMENT ON TABLE reminders IS 'תזכורות שונות כגון תאריכי טיפול במעלית, תשלום חשמל וכו';


--
-- Name: reminders_id_seq; Type: SEQUENCE; Schema: public; Owner: mainvaadbait_il_com
--

CREATE SEQUENCE reminders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reminders_id_seq OWNER TO mainvaadbait_il_com;

--
-- Name: reminders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mainvaadbait_il_com
--

ALTER SEQUENCE reminders_id_seq OWNED BY reminders.id;


--
-- Name: reminders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mainvaadbait_il_com
--

SELECT pg_catalog.setval('reminders_id_seq', 1, false);


--
-- Name: sites; Type: TABLE; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

CREATE TABLE sites (
    id integer NOT NULL,
    st_name character varying(100) NOT NULL,
    st_slogen character varying(150),
    st_street character varying(50),
    st_street_num character varying(10),
    st_city character varying(25),
    st_zipcode character varying(5)
);


ALTER TABLE public.sites OWNER TO mainvaadbait_il_com;

--
-- Name: sites_id_seq; Type: SEQUENCE; Schema: public; Owner: mainvaadbait_il_com
--

CREATE SEQUENCE sites_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sites_id_seq OWNER TO mainvaadbait_il_com;

--
-- Name: sites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mainvaadbait_il_com
--

ALTER SEQUENCE sites_id_seq OWNED BY sites.id;


--
-- Name: sites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mainvaadbait_il_com
--

SELECT pg_catalog.setval('sites_id_seq', 1, false);


--
-- Name: tags; Type: TABLE; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

CREATE TABLE tags (
    id integer NOT NULL,
    bld_id integer NOT NULL,
    tag_name character varying(128) NOT NULL,
    frequency integer DEFAULT 1
);


ALTER TABLE public.tags OWNER TO mainvaadbait_il_com;

--
-- Name: tags_id_seq; Type: SEQUENCE; Schema: public; Owner: mainvaadbait_il_com
--

CREATE SEQUENCE tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tags_id_seq OWNER TO mainvaadbait_il_com;

--
-- Name: tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mainvaadbait_il_com
--

ALTER SEQUENCE tags_id_seq OWNED BY tags.id;


--
-- Name: tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mainvaadbait_il_com
--

SELECT pg_catalog.setval('tags_id_seq', 1, false);


--
-- Name: task_codes; Type: TABLE; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

CREATE TABLE task_codes (
    id integer NOT NULL,
    code_desc character varying(30)
);


ALTER TABLE public.task_codes OWNER TO mainvaadbait_il_com;

--
-- Name: task_codes_seq_id; Type: SEQUENCE; Schema: public; Owner: mainvaadbait_il_com
--

CREATE SEQUENCE task_codes_seq_id
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.task_codes_seq_id OWNER TO mainvaadbait_il_com;

--
-- Name: task_codes_seq_id; Type: SEQUENCE SET; Schema: public; Owner: mainvaadbait_il_com
--

SELECT pg_catalog.setval('task_codes_seq_id', 100, true);


--
-- Name: tasks; Type: TABLE; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

CREATE TABLE tasks (
    id integer NOT NULL,
    bld_id integer NOT NULL,
    tnt_id integer NOT NULL,
    tsk_title character varying(150) NOT NULL,
    tsk_details text NOT NULL,
    tsk_duedate date,
    tsk_status integer
);


ALTER TABLE public.tasks OWNER TO mainvaadbait_il_com;

--
-- Name: tasks_id_seq; Type: SEQUENCE; Schema: public; Owner: mainvaadbait_il_com
--

CREATE SEQUENCE tasks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tasks_id_seq OWNER TO mainvaadbait_il_com;

--
-- Name: tasks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mainvaadbait_il_com
--

ALTER SEQUENCE tasks_id_seq OWNED BY tasks.id;


--
-- Name: tasks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mainvaadbait_il_com
--

SELECT pg_catalog.setval('tasks_id_seq', 1, false);


--
-- Name: taxes; Type: TABLE; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

CREATE TABLE taxes (
    bld_id integer NOT NULL,
    tax_start_date date NOT NULL,
    tax_amount double precision NOT NULL
);


ALTER TABLE public.taxes OWNER TO mainvaadbait_il_com;

--
-- Name: tenants; Type: TABLE; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

CREATE TABLE tenants (
    id integer NOT NULL,
    bld_id integer NOT NULL,
    tnt_is_active boolean DEFAULT false,
    tnt_app_num integer NOT NULL,
    tnt_first_name character varying(15) NOT NULL,
    tnt_last_name character varying(15) NOT NULL,
    tnt_password character varying(60),
    tnt_birthday date,
    tnt_email character varying(60),
    tnt_app_phone character varying(20),
    tnt_picture character varying(255),
    tnt_mobile character varying(20),
    tnt_entry_date date,
    tnt_prev_debt double precision,
    tnt_occupation character varying(30),
    tnt_is_vaad boolean DEFAULT false,
    tnt_is_owner boolean DEFAULT true,
    tnt_is_site_vaad boolean DEFAULT false,
    tnt_is_nbrhd_vaad boolean DEFAULT false,
    tnt_is_city_vaad boolean DEFAULT false,
    tnt_is_admin boolean DEFAULT false
);


ALTER TABLE public.tenants OWNER TO mainvaadbait_il_com;

--
-- Name: tenants_id_seq; Type: SEQUENCE; Schema: public; Owner: mainvaadbait_il_com
--

CREATE SEQUENCE tenants_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tenants_id_seq OWNER TO mainvaadbait_il_com;

--
-- Name: tenants_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mainvaadbait_il_com
--

ALTER SEQUENCE tenants_id_seq OWNED BY tenants.id;


--
-- Name: tenants_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mainvaadbait_il_com
--

SELECT pg_catalog.setval('tenants_id_seq', 28, true);


--
-- Name: ticket_codes; Type: TABLE; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

CREATE TABLE ticket_codes (
    id integer NOT NULL,
    code_desc character varying(30)
);


ALTER TABLE public.ticket_codes OWNER TO mainvaadbait_il_com;

--
-- Name: ticket_codes_seq_id; Type: SEQUENCE; Schema: public; Owner: mainvaadbait_il_com
--

CREATE SEQUENCE ticket_codes_seq_id
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ticket_codes_seq_id OWNER TO mainvaadbait_il_com;

--
-- Name: ticket_codes_seq_id; Type: SEQUENCE SET; Schema: public; Owner: mainvaadbait_il_com
--

SELECT pg_catalog.setval('ticket_codes_seq_id', 100, true);


--
-- Name: ticket_history; Type: TABLE; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

CREATE TABLE ticket_history (
    id integer NOT NULL,
    tkt_id integer NOT NULL,
    bld_id integer NOT NULL,
    tnt_id integer NOT NULL,
    tkh_date date NOT NULL,
    tkh_title character varying(50),
    tkh_desc text
);


ALTER TABLE public.ticket_history OWNER TO mainvaadbait_il_com;

--
-- Name: tickets; Type: TABLE; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

CREATE TABLE tickets (
    id integer NOT NULL,
    bld_id integer NOT NULL,
    tnt_id integer NOT NULL,
    tkt_status integer DEFAULT 0,
    tkt_opendate date DEFAULT now(),
    tkt_title character varying(50) NOT NULL,
    tkt_eta date,
    tkt_closedate date
);


ALTER TABLE public.tickets OWNER TO mainvaadbait_il_com;

--
-- Name: tickets_id_seq; Type: SEQUENCE; Schema: public; Owner: mainvaadbait_il_com
--

CREATE SEQUENCE tickets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tickets_id_seq OWNER TO mainvaadbait_il_com;

--
-- Name: tickets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mainvaadbait_il_com
--

ALTER SEQUENCE tickets_id_seq OWNED BY tickets.id;


--
-- Name: tickets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mainvaadbait_il_com
--

SELECT pg_catalog.setval('tickets_id_seq', 1, false);


--
-- Name: todo; Type: TABLE; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

CREATE TABLE todo (
    id integer NOT NULL,
    tsk_title character varying(30) NOT NULL,
    tsk_status integer NOT NULL,
    tsk_category character varying(30) NOT NULL,
    tsk_description text,
    tsk_priority integer DEFAULT 1 NOT NULL
);


ALTER TABLE public.todo OWNER TO mainvaadbait_il_com;

--
-- Name: TABLE todo; Type: COMMENT; Schema: public; Owner: mainvaadbait_il_com
--

COMMENT ON TABLE todo IS 'to do list for admin only';


--
-- Name: todo_id_seq; Type: SEQUENCE; Schema: public; Owner: mainvaadbait_il_com
--

CREATE SEQUENCE todo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.todo_id_seq OWNER TO mainvaadbait_il_com;

--
-- Name: todo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mainvaadbait_il_com
--

ALTER SEQUENCE todo_id_seq OWNED BY todo.id;


--
-- Name: todo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mainvaadbait_il_com
--

SELECT pg_catalog.setval('todo_id_seq', 1, false);


--
-- Name: transactions; Type: TABLE; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

CREATE TABLE transactions (
    id integer NOT NULL,
    bld_id integer NOT NULL,
    acc_id integer NOT NULL,
    prj_id integer NOT NULL,
    trn_date date NOT NULL,
    trn_amount double precision NOT NULL,
    trn_debit integer,
    trn_reference character varying(30),
    trn_desc character varying(255),
    trn_cat integer
)
WITH (autovacuum_enabled=on);


ALTER TABLE public.transactions OWNER TO mainvaadbait_il_com;

--
-- Name: transactions_id_seq; Type: SEQUENCE; Schema: public; Owner: mainvaadbait_il_com
--

CREATE SEQUENCE transactions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.transactions_id_seq OWNER TO mainvaadbait_il_com;

--
-- Name: transactions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mainvaadbait_il_com
--

ALTER SEQUENCE transactions_id_seq OWNED BY transactions.id;


--
-- Name: transactions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mainvaadbait_il_com
--

SELECT pg_catalog.setval('transactions_id_seq', 478, true);


--
-- Name: trn_cat_codes; Type: TABLE; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

CREATE TABLE trn_cat_codes (
    id integer NOT NULL,
    code_desc character varying(30)
);


ALTER TABLE public.trn_cat_codes OWNER TO mainvaadbait_il_com;

--
-- Name: trn_cat_codes_seq_id; Type: SEQUENCE; Schema: public; Owner: mainvaadbait_il_com
--

CREATE SEQUENCE trn_cat_codes_seq_id
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.trn_cat_codes_seq_id OWNER TO mainvaadbait_il_com;

--
-- Name: trn_cat_codes_seq_id; Type: SEQUENCE SET; Schema: public; Owner: mainvaadbait_il_com
--

SELECT pg_catalog.setval('trn_cat_codes_seq_id', 10, true);


--
-- Name: v_incomes; Type: VIEW; Schema: public; Owner: mainvaadbait_il_com
--

CREATE VIEW v_incomes AS
    SELECT incomes.id, incomes.bld_id, incomes.prj_id, incomes.inc_date, incomes.inc_until_date, incomes.inc_amount, incomes.inc_paid, incomes.inc_branch, incomes.inc_chk_no, incomes.inc_chk_date, incomes.inc_apt_num, incomes.inc_bank, date_part('month'::text, incomes.inc_date) AS mm, date_part('year'::text, incomes.inc_date) AS yy FROM incomes;


ALTER TABLE public.v_incomes OWNER TO mainvaadbait_il_com;

--
-- Name: v_trans; Type: VIEW; Schema: public; Owner: mainvaadbait_il_com
--

CREATE VIEW v_trans AS
    SELECT transactions.id, transactions.bld_id, transactions.acc_id, transactions.prj_id, transactions.trn_date, transactions.trn_amount, transactions.trn_debit, transactions.trn_reference, transactions.trn_desc, transactions.trn_cat, date_part('month'::text, transactions.trn_date) AS mm, date_part('year'::text, transactions.trn_date) AS yy FROM transactions;


ALTER TABLE public.v_trans OWNER TO mainvaadbait_il_com;

--
-- Name: id; Type: DEFAULT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE accounts ALTER COLUMN id SET DEFAULT nextval('accounts_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE ads ALTER COLUMN id SET DEFAULT nextval('ads_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE app_codes ALTER COLUMN id SET DEFAULT nextval('app_codes_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE appartments ALTER COLUMN id SET DEFAULT nextval('appartments_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE apt_maintenance ALTER COLUMN id SET DEFAULT nextval('apt_maintenance_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE buildings ALTER COLUMN id SET DEFAULT nextval('buildings_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE comment_codes ALTER COLUMN id SET DEFAULT nextval('comment_codes_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE comments ALTER COLUMN id SET DEFAULT nextval('comments_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE contacts ALTER COLUMN id SET DEFAULT nextval('contacts_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE forums ALTER COLUMN id SET DEFAULT nextval('forums_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE incomes ALTER COLUMN id SET DEFAULT nextval('incomes_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE poll_options ALTER COLUMN id SET DEFAULT nextval('polloptions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE polls ALTER COLUMN id SET DEFAULT nextval('polls_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE posts ALTER COLUMN id SET DEFAULT nextval('posts_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE projects ALTER COLUMN id SET DEFAULT nextval('projects_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE receipts ALTER COLUMN id SET DEFAULT nextval('receipts_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE reminders ALTER COLUMN id SET DEFAULT nextval('reminders_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE sites ALTER COLUMN id SET DEFAULT nextval('sites_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE tags ALTER COLUMN id SET DEFAULT nextval('tags_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE tasks ALTER COLUMN id SET DEFAULT nextval('tasks_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE tenants ALTER COLUMN id SET DEFAULT nextval('tenants_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE tickets ALTER COLUMN id SET DEFAULT nextval('tickets_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE todo ALTER COLUMN id SET DEFAULT nextval('todo_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE transactions ALTER COLUMN id SET DEFAULT nextval('transactions_id_seq'::regclass);


--
-- Data for Name: accounts; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--

INSERT INTO accounts VALUES (1, 1, '2  ', NULL, NULL, 0, 'מזומן', NULL);
INSERT INTO accounts VALUES (2, 1, '1  ', '116', '651121', 0, 'חשבון עוש ראשי', 4);


--
-- Data for Name: ad_cat_codes; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--



--
-- Data for Name: ads; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--



--
-- Data for Name: app_codes; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--

INSERT INTO app_codes VALUES (0, 'דירת מגורים');
INSERT INTO app_codes VALUES (1, 'מעלית');
INSERT INTO app_codes VALUES (2, 'לובי');
INSERT INTO app_codes VALUES (3, 'מחסן');
INSERT INTO app_codes VALUES (4, 'גנרטור');
INSERT INTO app_codes VALUES (5, 'מערכת סולרית');
INSERT INTO app_codes VALUES (6, 'גינה');


--
-- Data for Name: app_taxes; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--



--
-- Data for Name: appartments; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--

INSERT INTO appartments VALUES (5, 1, 5, 2, 0, NULL, NULL, 1, 2);
INSERT INTO appartments VALUES (6, 1, 6, 2, 0, NULL, NULL, 1, 2);
INSERT INTO appartments VALUES (7, 1, 7, 2, 0, NULL, NULL, 1, 2);
INSERT INTO appartments VALUES (8, 1, 8, 2, 0, NULL, NULL, 1, 2);
INSERT INTO appartments VALUES (9, 1, 9, 3, 0, NULL, NULL, 1, 2);
INSERT INTO appartments VALUES (10, 1, 10, 3, 0, NULL, NULL, 1, 2);
INSERT INTO appartments VALUES (11, 1, 11, 3, 0, NULL, NULL, 1, 2);
INSERT INTO appartments VALUES (12, 1, 12, 3, 0, NULL, NULL, 1, 2);
INSERT INTO appartments VALUES (13, 1, 13, 4, 0, NULL, NULL, 1, 2);
INSERT INTO appartments VALUES (14, 1, 14, 4, 0, NULL, NULL, 1, 2);
INSERT INTO appartments VALUES (15, 1, 15, 4, 0, NULL, NULL, 1, 2);
INSERT INTO appartments VALUES (16, 1, 16, 4, 0, NULL, NULL, 1, 2);
INSERT INTO appartments VALUES (17, 1, 17, 5, 0, NULL, NULL, 1, 2);
INSERT INTO appartments VALUES (18, 1, 18, 5, 0, NULL, NULL, 1, 2);
INSERT INTO appartments VALUES (19, 1, 19, 5, 0, NULL, NULL, 1, 2);
INSERT INTO appartments VALUES (20, 1, 20, 5, 0, NULL, NULL, 1, 2);
INSERT INTO appartments VALUES (21, 1, 21, 6, 0, NULL, NULL, 1, 2);
INSERT INTO appartments VALUES (22, 1, 22, 6, 0, NULL, NULL, 1, 2);
INSERT INTO appartments VALUES (23, 1, 23, 6, 0, NULL, NULL, 1, 2);
INSERT INTO appartments VALUES (24, 1, 24, 6, 0, NULL, NULL, 1, 2);
INSERT INTO appartments VALUES (25, 1, 25, 7, 0, NULL, NULL, 1, 2);
INSERT INTO appartments VALUES (26, 1, 26, 7, 0, NULL, NULL, 1, 2);
INSERT INTO appartments VALUES (27, 1, 27, 7, 0, NULL, NULL, 1, 2);
INSERT INTO appartments VALUES (28, 1, 28, 8, 0, NULL, NULL, 1, 2);
INSERT INTO appartments VALUES (29, 1, 29, 8, 0, NULL, NULL, 1, 2);
INSERT INTO appartments VALUES (30, 1, 30, 9, 0, NULL, NULL, 1, 2);
INSERT INTO appartments VALUES (1, 1, 1, 1, 0, NULL, NULL, 1, 2);
INSERT INTO appartments VALUES (2, 1, 2, 1, 0, NULL, NULL, 1, 2);
INSERT INTO appartments VALUES (3, 1, 3, 0, 0, NULL, NULL, 1, 2);
INSERT INTO appartments VALUES (4, 1, 4, 0, 0, NULL, NULL, 1, 2);


--
-- Data for Name: apt_maintenance; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--



--
-- Data for Name: bank_codes; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--

INSERT INTO bank_codes VALUES (0, 'מזומן');
INSERT INTO bank_codes VALUES (1, 'בנק  יורו');
INSERT INTO bank_codes VALUES (4, 'יהב לעובדי מדינה');
INSERT INTO bank_codes VALUES (7, 'פיתוח התעשייה');
INSERT INTO bank_codes VALUES (8, 'הספנות לישראל');
INSERT INTO bank_codes VALUES (9, 'הדואר – מספר סניף תמיד 001');
INSERT INTO bank_codes VALUES (10, 'לאומי/הישיר הראשון');
INSERT INTO bank_codes VALUES (11, 'דיסקונט');
INSERT INTO bank_codes VALUES (12, 'הפועלים');
INSERT INTO bank_codes VALUES (13, 'איגוד');
INSERT INTO bank_codes VALUES (14, 'אוצר החייל');
INSERT INTO bank_codes VALUES (17, 'מרכנתיל דיסקונט');
INSERT INTO bank_codes VALUES (19, 'החקלאות לישראל ');
INSERT INTO bank_codes VALUES (20, 'המזרחי');
INSERT INTO bank_codes VALUES (26, 'בנק U');
INSERT INTO bank_codes VALUES (28, 'קונטיננטל');
INSERT INTO bank_codes VALUES (30, 'הלמסחר');
INSERT INTO bank_codes VALUES (31, 'הבינלאומי הראשון');
INSERT INTO bank_codes VALUES (34, 'ערבי ישראלי');
INSERT INTO bank_codes VALUES (35, 'פולסקא/פאקאו');
INSERT INTO bank_codes VALUES (46, 'מסד');
INSERT INTO bank_codes VALUES (47, 'עולמי להשקעות');
INSERT INTO bank_codes VALUES (48, 'קופת העובד הלאומי בנתניה');
INSERT INTO bank_codes VALUES (52, 'פועלי אגודת ישראל');
INSERT INTO bank_codes VALUES (54, 'ירושלים');


--
-- Data for Name: buildings; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--

INSERT INTO buildings VALUES (1, 1, true, 'מגדל עוז', '1', 'מודיעין', '70703', 30, -1, 9);


--
-- Data for Name: comment_codes; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--



--
-- Data for Name: comments; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--



--
-- Data for Name: contact_codes; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--

INSERT INTO contact_codes VALUES (0, 'כללי');
INSERT INTO contact_codes VALUES (1, 'וועד בניין');
INSERT INTO contact_codes VALUES (3, 'אינסטלטור');
INSERT INTO contact_codes VALUES (4, 'וועד בניין סמוך');


--
-- Data for Name: contacts; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--

INSERT INTO contacts VALUES (4, 1, 'רוית', '', '0522200600', '', '', 'ועד בנין 7', 0, '');
INSERT INTO contacts VALUES (6, 1, 'משה', 'אינטרקום בבנין', '0522424272', '', '', 'בתקין את האינטרקום בבנין', 0, '');
INSERT INTO contacts VALUES (3, 1, 'חלי', NULL, '0528752558', NULL, NULL, 'ועד בנין 7', 1, NULL);
INSERT INTO contacts VALUES (1, 1, 'צביקה', 'קמינר', '0544825251', NULL, NULL, 'וועד בנין 3', 4, 'zvikas@malamteam.com');
INSERT INTO contacts VALUES (5, 1, 'יחזקאל', 'עמי', '089728110', NULL, 'רחוב לבונה 11 מודיעין', NULL, 0, NULL);
INSERT INTO contacts VALUES (2, 1, 'מוטי', 'סיטון', '0508575105', NULL, NULL, 'ועד בנין 5', 4, NULL);
INSERT INTO contacts VALUES (7, 1, 'דני', 'שירותי ביובית', '0505215677', '035719833', NULL, 'הומלץ על ידי בנין 3', 3, NULL);
INSERT INTO contacts VALUES (8, 1, 'כלליפט', 'שירותי מעלית', '035507135', '036106666 מנוי 49943', NULL, NULL, 0, NULL);
INSERT INTO contacts VALUES (9, 1, 'אמג''ד', NULL, '0522827048', NULL, NULL, 'מקצועי ולא יקרן. עובד כאינסטלטור בניין באתרי בניה במודיעין', 3, NULL);


--
-- Data for Name: forums; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--



--
-- Data for Name: incomes; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--

INSERT INTO incomes VALUES (281, 1, 0, '2011-11-01', '2011-11-01', 250, false, 582, 369, '2011-11-01', 22, 12);
INSERT INTO incomes VALUES (282, 1, 0, '2011-12-01', '2011-12-01', 250, false, 582, 364, '2011-12-01', 22, 12);
INSERT INTO incomes VALUES (283, 1, 0, '2012-01-01', '2012-01-01', 250, false, 582, 365, '2012-01-01', 22, 12);
INSERT INTO incomes VALUES (7, 1, 0, '2011-12-01', '2011-12-01', 312.5, false, 123, 399, '2011-11-07', 15, 4);
INSERT INTO incomes VALUES (15, 1, 0, '2011-11-01', '2011-11-01', 250, false, 663, 913, '2011-11-15', 2, 12);
INSERT INTO incomes VALUES (16, 1, 0, '2011-12-01', '2011-12-01', 250, false, 663, 914, '2011-12-15', 2, 12);
INSERT INTO incomes VALUES (34, 1, 0, '2011-11-01', '2011-11-01', 250, false, 493, 826, '2011-11-10', 28, 20);
INSERT INTO incomes VALUES (35, 1, 0, '2011-12-01', '2011-12-01', 250, false, 493, 827, '2011-12-10', 28, 20);
INSERT INTO incomes VALUES (46, 1, 0, '2011-11-01', '2011-11-01', 250, false, 148, 52, '2011-11-10', 9, 11);
INSERT INTO incomes VALUES (47, 1, 0, '2011-12-01', '2011-12-01', 250, false, 148, 53, '2011-12-10', 9, 11);
INSERT INTO incomes VALUES (56, 1, 0, '2011-11-01', '2011-11-01', 250, false, 680, 399, '2011-11-10', 1, 10);
INSERT INTO incomes VALUES (67, 1, 0, '2011-11-01', '2011-11-01', 250, false, 494, 38, '2011-11-10', 5, 14);
INSERT INTO incomes VALUES (68, 1, 0, '2011-12-01', '2011-12-01', 250, false, 494, 39, '2011-12-10', 5, 14);
INSERT INTO incomes VALUES (75, 1, 0, '2011-11-01', '2011-11-01', 250, false, 778, 362, '2011-11-10', 7, 12);
INSERT INTO incomes VALUES (76, 1, 0, '2011-12-01', '2011-12-01', 250, false, 778, 363, '2011-12-10', 7, 12);
INSERT INTO incomes VALUES (92, 1, 0, '2011-11-01', '2011-11-01', 250, false, 315, 504, '2011-11-10', 8, 14);
INSERT INTO incomes VALUES (93, 1, 0, '2011-12-01', '2011-12-01', 250, false, 315, 505, '2011-12-10', 8, 14);
INSERT INTO incomes VALUES (57, 1, 0, '2011-12-01', '2011-12-01', 250, true, 680, 400, '2011-12-10', 1, 10);
INSERT INTO incomes VALUES (101, 1, 0, '2011-11-01', '2011-11-01', 250, false, 628, 703, '2011-11-10', 10, 12);
INSERT INTO incomes VALUES (103, 1, 0, '2011-12-01', '2011-12-01', 250, false, 628, 704, '2011-12-10', 10, 12);
INSERT INTO incomes VALUES (116, 1, 0, '2011-11-01', '2011-11-01', 250, false, 5, 63, '2011-11-15', 12, 11);
INSERT INTO incomes VALUES (117, 1, 0, '2011-12-01', '2011-12-01', 250, false, 5, 64, '2011-12-15', 12, 11);
INSERT INTO incomes VALUES (125, 1, 0, '2011-11-01', '2011-11-01', 250, false, 45, 18, '2011-11-10', 13, 11);
INSERT INTO incomes VALUES (126, 1, 0, '2011-12-01', '2011-12-01', 250, false, 45, 19, '2011-12-10', 13, 11);
INSERT INTO incomes VALUES (134, 1, 0, '2011-11-01', '2011-11-01', 250, false, 582, 166, '2011-11-10', 14, 12);
INSERT INTO incomes VALUES (135, 1, 0, '2011-12-01', '2011-12-01', 250, false, 582, 167, '2011-12-10', 14, 12);
INSERT INTO incomes VALUES (142, 1, 0, '2011-11-01', '2011-11-01', 250, false, 678, 732, '2011-11-10', 17, 10);
INSERT INTO incomes VALUES (143, 1, 0, '2011-12-01', '2011-12-01', 250, false, 678, 733, '2011-12-10', 17, 10);
INSERT INTO incomes VALUES (174, 1, 0, '2011-11-01', '2011-11-01', 250, false, 680, 82, '2011-11-01', 21, 10);
INSERT INTO incomes VALUES (175, 1, 0, '2011-12-01', '2011-12-01', 250, false, 680, 83, '2011-12-01', 21, 10);
INSERT INTO incomes VALUES (182, 1, 0, '2011-11-01', '2011-11-01', 250, false, 582, 313, '2011-11-10', 23, 12);
INSERT INTO incomes VALUES (183, 1, 0, '2011-12-01', '2011-12-01', 250, false, 582, 314, '2011-12-10', 23, 12);
INSERT INTO incomes VALUES (192, 1, 0, '2011-11-01', '2011-11-01', 250, false, 657, 2000, '2011-11-15', 26, 10);
INSERT INTO incomes VALUES (193, 1, 0, '2011-12-01', '2011-12-01', 250, false, 657, 2001, '2011-12-15', 26, 10);
INSERT INTO incomes VALUES (201, 1, 0, '2011-11-01', '2011-11-01', 250, false, 128, 87, '2011-11-05', 29, 31);
INSERT INTO incomes VALUES (202, 1, 0, '2011-12-01', '2011-12-01', 250, false, 128, 88, '2011-12-05', 29, 31);
INSERT INTO incomes VALUES (210, 1, 0, '2011-11-01', '2011-11-01', 250, false, 345, 962, '2011-11-15', 30, 14);
INSERT INTO incomes VALUES (218, 1, 0, '2011-12-01', '2011-12-01', 250, false, 85, 11, '2011-12-10', 16, 11);
INSERT INTO incomes VALUES (224, 1, 0, '2010-12-01', '2010-12-01', 187.5, true, 123, 392, '2010-12-07', 15, 4);
INSERT INTO incomes VALUES (217, 1, 0, '2011-11-01', '2011-12-01', 500, false, 85, 10, '2011-11-11', 16, 11);
INSERT INTO incomes VALUES (213, 1, 0, '2011-11-01', '2011-12-01', 500, false, 116, 657, '2011-12-11', 24, 4);
INSERT INTO incomes VALUES (264, 1, 0, '2011-11-01', '2011-11-01', 250, false, 378, 829, '2011-11-10', 11, 14);
INSERT INTO incomes VALUES (265, 1, 0, '2011-12-01', '2011-12-01', 250, false, 378, 830, '2011-12-10', 11, 14);
INSERT INTO incomes VALUES (268, 1, 0, '2011-11-01', '2011-11-01', 250, false, 16, 8785, '2011-11-15', 18, 31);
INSERT INTO incomes VALUES (269, 1, 0, '2011-12-01', '2011-12-01', 250, false, 16, 8786, '2011-12-15', 18, 31);
INSERT INTO incomes VALUES (274, 1, 0, '2011-10-01', '2011-10-01', 250, false, 345, 861, '2011-11-10', 20, 14);
INSERT INTO incomes VALUES (275, 1, 0, '2011-11-01', '2011-11-01', 250, false, 345, 862, '2011-12-10', 20, 14);
INSERT INTO incomes VALUES (276, 1, 0, '2011-12-01', '2011-12-01', 250, false, 345, 863, '2012-01-10', 20, 14);
INSERT INTO incomes VALUES (112, 1, 0, '2011-03-01', '2011-04-01', 500, true, 116, 652, '2011-04-11', 24, 4);
INSERT INTO incomes VALUES (278, 1, 0, '2011-06-01', '2011-08-01', 750, true, 109, 1343, '2011-10-01', 4, 31);
INSERT INTO incomes VALUES (280, 1, 0, '2011-10-01', '2011-10-01', 250, true, 582, 362, '2011-10-03', 22, 12);
INSERT INTO incomes VALUES (284, 1, 0, '2012-02-01', '2012-02-01', 250, true, 582, 366, '2011-02-01', 22, 12);
INSERT INTO incomes VALUES (279, 1, 0, '2011-09-01', '2011-09-01', 250, true, 582, 363, '2011-10-03', 22, 12);
INSERT INTO incomes VALUES (124, 1, 0, '2011-10-01', '2011-10-01', 250, true, 45, 18, '2011-10-10', 13, 11);
INSERT INTO incomes VALUES (74, 1, 0, '2011-10-01', '2011-10-01', 250, true, 778, 362, '2011-10-10', 7, 12);
INSERT INTO incomes VALUES (1, 1, 0, '2011-05-01', '2011-05-01', 250, true, 680, 70, '2011-05-01', 21, 10);
INSERT INTO incomes VALUES (2, 1, 0, '2011-05-01', '2011-05-01', 250, true, 778, 357, '2011-05-10', 7, 12);
INSERT INTO incomes VALUES (8, 1, 0, '2011-04-01', '2011-04-01', 250, true, 663, 906, '2011-04-15', 2, 12);
INSERT INTO incomes VALUES (9, 1, 0, '2011-05-01', '2011-05-01', 250, true, 663, 907, '2011-05-15', 2, 12);
INSERT INTO incomes VALUES (10, 1, 0, '2011-06-01', '2011-06-01', 250, true, 663, 908, '2011-06-15', 2, 12);
INSERT INTO incomes VALUES (11, 1, 0, '2011-07-01', '2011-07-01', 250, true, 663, 909, '2011-07-15', 2, 12);
INSERT INTO incomes VALUES (12, 1, 0, '2011-08-01', '2011-08-01', 250, true, 663, 910, '2011-08-15', 2, 12);
INSERT INTO incomes VALUES (13, 1, 0, '2011-09-01', '2011-09-01', 250, true, 663, 911, '2011-09-15', 2, 12);
INSERT INTO incomes VALUES (14, 1, 0, '2011-10-01', '2011-10-01', 250, true, 663, 912, '2011-10-15', 2, 12);
INSERT INTO incomes VALUES (17, 1, 0, '2010-12-01', '2010-12-01', 250, true, NULL, NULL, '2011-02-15', 3, 0);
INSERT INTO incomes VALUES (18, 1, 0, '2011-02-01', '2011-02-01', 250, true, NULL, NULL, '2011-02-15', 3, 0);
INSERT INTO incomes VALUES (19, 1, 0, '2010-08-01', '2010-08-01', 250, true, NULL, NULL, '2011-01-15', 3, 0);
INSERT INTO incomes VALUES (20, 1, 0, '2010-09-01', '2010-09-01', 250, true, NULL, NULL, '2011-01-15', 3, 0);
INSERT INTO incomes VALUES (21, 1, 0, '2011-01-01', '2011-01-01', 250, true, NULL, NULL, '2011-01-15', 25, 0);
INSERT INTO incomes VALUES (22, 1, 0, '2011-02-01', '2011-02-01', 250, true, NULL, NULL, '2011-01-15', 25, 0);
INSERT INTO incomes VALUES (23, 1, 0, '2011-03-01', '2011-03-01', 250, true, NULL, NULL, '2011-01-15', 25, 0);
INSERT INTO incomes VALUES (24, 1, 0, '2011-04-01', '2011-04-01', 250, true, NULL, NULL, '2011-01-15', 25, 0);
INSERT INTO incomes VALUES (25, 1, 0, '2011-05-01', '2011-05-01', 250, true, NULL, NULL, '2011-01-15', 25, 0);
INSERT INTO incomes VALUES (26, 1, 0, '2011-06-01', '2011-06-01', 250, true, NULL, NULL, '2011-01-15', 25, 0);
INSERT INTO incomes VALUES (27, 1, 0, '2011-04-01', '2011-04-01', 250, true, 493, 717, '2011-04-10', 28, 20);
INSERT INTO incomes VALUES (28, 1, 0, '2011-05-01', '2011-05-01', 250, true, 493, 718, '2011-05-10', 28, 20);
INSERT INTO incomes VALUES (29, 1, 0, '2011-06-01', '2011-06-01', 250, true, 493, 719, '2011-06-10', 28, 20);
INSERT INTO incomes VALUES (30, 1, 0, '2011-07-01', '2011-07-01', 250, true, 493, 720, '2011-07-10', 28, 20);
INSERT INTO incomes VALUES (31, 1, 0, '2011-08-01', '2011-08-01', 250, true, 493, 721, '2011-08-10', 28, 20);
INSERT INTO incomes VALUES (32, 1, 0, '2011-09-01', '2011-09-01', 250, true, 493, 722, '2011-09-10', 28, 20);
INSERT INTO incomes VALUES (33, 1, 0, '2011-10-01', '2011-10-01', 250, true, 493, 723, '2011-10-10', 28, 20);
INSERT INTO incomes VALUES (36, 1, 0, '2011-04-01', '2011-04-01', 250, true, 378, 122, '2011-04-10', 11, 14);
INSERT INTO incomes VALUES (37, 1, 0, '2011-06-01', '2011-06-01', 250, true, 378, 124, '2011-06-10', 11, 14);
INSERT INTO incomes VALUES (38, 1, 0, '2011-07-01', '2011-07-01', 250, true, 378, 125, '2011-07-10', 11, 14);
INSERT INTO incomes VALUES (39, 1, 0, '2011-04-01', '2011-04-01', 250, true, 148, 45, '2011-04-10', 9, 11);
INSERT INTO incomes VALUES (40, 1, 0, '2011-05-01', '2011-05-01', 250, true, 148, 46, '2011-05-10', 9, 11);
INSERT INTO incomes VALUES (41, 1, 0, '2011-06-01', '2011-06-01', 250, true, 148, 47, '2011-06-10', 9, 11);
INSERT INTO incomes VALUES (42, 1, 0, '2011-07-01', '2011-07-01', 250, true, 148, 48, '2011-07-10', 9, 11);
INSERT INTO incomes VALUES (43, 1, 0, '2011-08-01', '2011-08-01', 250, true, 148, 49, '2011-08-10', 9, 11);
INSERT INTO incomes VALUES (44, 1, 0, '2011-09-01', '2011-09-01', 250, true, 148, 50, '2011-09-10', 9, 11);
INSERT INTO incomes VALUES (45, 1, 0, '2011-10-01', '2011-10-01', 250, true, 148, 51, '2011-10-10', 9, 11);
INSERT INTO incomes VALUES (48, 1, 0, '2011-04-01', '2011-04-01', 250, true, 582, 139, '2011-04-01', 22, 12);
INSERT INTO incomes VALUES (49, 1, 0, '2011-04-01', '2011-04-01', 250, true, 680, 392, '2011-04-10', 1, 10);
INSERT INTO incomes VALUES (50, 1, 0, '2011-05-01', '2011-05-01', 250, true, 680, 393, '2011-05-10', 1, 10);
INSERT INTO incomes VALUES (51, 1, 0, '2011-06-01', '2011-06-01', 250, true, 680, 394, '2011-06-10', 1, 10);
INSERT INTO incomes VALUES (52, 1, 0, '2011-07-01', '2011-07-01', 250, true, 680, 395, '2011-07-10', 1, 10);
INSERT INTO incomes VALUES (53, 1, 0, '2011-08-01', '2011-08-01', 250, true, 680, 396, '2011-08-10', 1, 10);
INSERT INTO incomes VALUES (54, 1, 0, '2011-09-01', '2011-09-01', 250, true, 680, 397, '2011-09-10', 1, 10);
INSERT INTO incomes VALUES (55, 1, 0, '2011-10-01', '2011-10-01', 250, true, 680, 398, '2011-10-10', 1, 10);
INSERT INTO incomes VALUES (58, 1, 0, '2011-04-01', '2011-04-01', 250, true, 494, 31, '2011-04-10', 5, 14);
INSERT INTO incomes VALUES (59, 1, 0, '2011-05-01', '2011-05-01', 250, true, 494, 32, '2011-05-10', 5, 14);
INSERT INTO incomes VALUES (60, 1, 0, '2011-06-01', '2011-06-01', 250, true, 494, 33, '2011-06-10', 5, 14);
INSERT INTO incomes VALUES (61, 1, 0, '2011-07-01', '2011-07-01', 250, true, 494, 34, '2011-07-10', 5, 14);
INSERT INTO incomes VALUES (62, 1, 0, '2011-08-01', '2011-08-01', 250, true, 494, 35, '2011-08-10', 5, 14);
INSERT INTO incomes VALUES (63, 1, 0, '2011-09-01', '2011-09-01', 250, true, 494, 36, '2011-09-10', 5, 14);
INSERT INTO incomes VALUES (64, 1, 0, '2010-10-01', '2010-10-01', 250, true, NULL, NULL, '2011-01-15', 3, 0);
INSERT INTO incomes VALUES (65, 1, 0, '2010-11-01', '2010-11-01', 250, true, NULL, NULL, '2011-01-15', 3, 0);
INSERT INTO incomes VALUES (66, 1, 0, '2011-10-01', '2011-10-01', 250, true, 494, 37, '2011-10-10', 5, 14);
INSERT INTO incomes VALUES (69, 1, 0, '2011-04-01', '2011-04-01', 250, true, 778, 355, '2011-04-10', 7, 12);
INSERT INTO incomes VALUES (70, 1, 0, '2011-06-01', '2011-06-01', 250, true, 778, 357, '2011-06-10', 7, 12);
INSERT INTO incomes VALUES (71, 1, 0, '2011-07-01', '2011-07-01', 250, true, 778, 358, '2011-07-10', 7, 12);
INSERT INTO incomes VALUES (72, 1, 0, '2011-08-01', '2011-08-01', 250, true, 778, 359, '2011-08-10', 7, 12);
INSERT INTO incomes VALUES (73, 1, 0, '2011-09-01', '2011-09-01', 250, true, 778, 360, '2011-09-10', 7, 12);
INSERT INTO incomes VALUES (77, 1, 0, '2011-04-01', '2011-04-01', 250, true, 315, 610, '2011-04-10', 8, 14);
INSERT INTO incomes VALUES (78, 1, 0, '2011-05-01', '2011-05-01', 250, true, 315, 611, '2011-05-10', 8, 14);
INSERT INTO incomes VALUES (79, 1, 0, '2011-06-01', '2011-06-01', 250, true, 315, 612, '2011-06-10', 8, 14);
INSERT INTO incomes VALUES (82, 1, 0, '2011-03-01', '2011-03-01', 250, true, 663, 905, '2011-03-15', 2, 12);
INSERT INTO incomes VALUES (83, 1, 0, '2011-03-01', '2011-03-01', 250, true, 315, 609, '2011-03-10', 8, 14);
INSERT INTO incomes VALUES (84, 1, 0, '2011-03-01', '2011-03-01', 250, true, 148, 44, '2011-03-10', 9, 11);
INSERT INTO incomes VALUES (85, 1, 0, '2011-03-01', '2011-03-01', 250, true, 680, 391, '2011-03-10', 1, 10);
INSERT INTO incomes VALUES (86, 1, 0, '2011-03-01', '2011-03-01', 250, true, 778, 355, '2011-03-10', 7, 12);
INSERT INTO incomes VALUES (87, 1, 0, '2011-03-01', '2011-03-01', 250, true, 493, 716, '2011-03-10', 28, 20);
INSERT INTO incomes VALUES (88, 1, 0, '2011-03-01', '2011-03-01', 250, true, 582, 138, '2011-03-01', 22, 12);
INSERT INTO incomes VALUES (90, 1, 0, '2011-09-01', '2011-09-01', 250, true, 315, 502, '2011-09-10', 8, 14);
INSERT INTO incomes VALUES (91, 1, 0, '2011-10-01', '2011-10-01', 250, true, 315, 503, '2011-10-10', 8, 14);
INSERT INTO incomes VALUES (94, 1, 0, '2011-04-01', '2011-04-01', 250, true, 628, 696, '2011-04-10', 10, 12);
INSERT INTO incomes VALUES (95, 1, 0, '2011-05-01', '2011-05-01', 250, true, 628, 697, '2011-05-10', 10, 12);
INSERT INTO incomes VALUES (96, 1, 0, '2011-06-01', '2011-06-01', 250, true, 628, 698, '2011-06-10', 10, 12);
INSERT INTO incomes VALUES (97, 1, 0, '2011-07-01', '2011-07-01', 250, true, 628, 699, '2011-07-10', 10, 12);
INSERT INTO incomes VALUES (98, 1, 0, '2011-08-01', '2011-08-01', 250, true, 628, 700, '2011-08-10', 10, 12);
INSERT INTO incomes VALUES (99, 1, 0, '2011-09-01', '2011-09-01', 250, true, 628, 701, '2011-09-10', 10, 12);
INSERT INTO incomes VALUES (100, 1, 0, '2011-10-01', '2011-10-01', 250, true, 628, 702, '2011-10-10', 10, 12);
INSERT INTO incomes VALUES (102, 1, 0, '2011-05-01', '2011-05-01', 250, true, 378, 123, '2011-05-10', 11, 14);
INSERT INTO incomes VALUES (104, 1, 0, '2011-04-01', '2011-04-01', 250, true, 5, 56, '2011-04-15', 12, 11);
INSERT INTO incomes VALUES (105, 1, 0, '2011-05-01', '2011-05-01', 250, true, 5, 57, '2011-05-15', 12, 11);
INSERT INTO incomes VALUES (106, 1, 0, '2011-06-01', '2011-06-01', 250, true, 5, 58, '2011-06-15', 12, 11);
INSERT INTO incomes VALUES (107, 1, 0, '2011-07-01', '2011-07-01', 250, true, 5, 59, '2011-07-15', 12, 11);
INSERT INTO incomes VALUES (108, 1, 0, '2011-08-01', '2011-08-01', 250, true, 5, 60, '2011-08-15', 12, 11);
INSERT INTO incomes VALUES (109, 1, 0, '2011-06-01', '2011-06-01', 250, true, 582, 141, '2011-06-01', 22, 12);
INSERT INTO incomes VALUES (110, 1, 0, '2011-07-01', '2011-07-01', 250, true, 582, 142, '2011-07-01', 22, 12);
INSERT INTO incomes VALUES (111, 1, 0, '2011-08-01', '2011-08-01', 250, true, 582, 143, '2011-08-01', 22, 12);
INSERT INTO incomes VALUES (114, 1, 0, '2011-09-01', '2011-09-01', 250, true, 5, 61, '2011-09-15', 12, 11);
INSERT INTO incomes VALUES (115, 1, 0, '2011-10-01', '2011-10-01', 250, true, 5, 62, '2011-10-15', 12, 11);
INSERT INTO incomes VALUES (118, 1, 0, '2011-04-01', '2011-04-01', 250, true, 45, 11, '2011-04-10', 13, 11);
INSERT INTO incomes VALUES (119, 1, 0, '2011-05-01', '2011-05-01', 250, true, 45, 12, '2011-05-10', 13, 11);
INSERT INTO incomes VALUES (120, 1, 0, '2011-06-01', '2011-06-01', 250, true, 45, 13, '2011-06-10', 13, 11);
INSERT INTO incomes VALUES (121, 1, 0, '2011-07-01', '2011-07-01', 250, true, 45, 14, '2011-07-10', 13, 11);
INSERT INTO incomes VALUES (122, 1, 0, '2011-08-01', '2011-08-01', 250, true, 45, 15, '2011-08-10', 13, 11);
INSERT INTO incomes VALUES (123, 1, 0, '2011-09-01', '2011-09-01', 250, true, 45, 16, '2011-09-10', 13, 11);
INSERT INTO incomes VALUES (127, 1, 0, '2011-04-01', '2011-04-01', 250, true, 582, 159, '2011-04-10', 14, 12);
INSERT INTO incomes VALUES (128, 1, 0, '2011-05-01', '2011-05-01', 250, true, 582, 160, '2011-05-10', 14, 12);
INSERT INTO incomes VALUES (129, 1, 0, '2011-06-01', '2011-06-01', 250, true, 582, 161, '2011-06-10', 14, 12);
INSERT INTO incomes VALUES (130, 1, 0, '2011-07-01', '2011-07-01', 250, true, 582, 162, '2011-07-10', 14, 12);
INSERT INTO incomes VALUES (131, 1, 0, '2011-08-01', '2011-08-01', 250, true, 582, 163, '2011-08-10', 14, 12);
INSERT INTO incomes VALUES (132, 1, 0, '2011-09-01', '2011-09-01', 250, true, 582, 164, '2011-09-10', 14, 12);
INSERT INTO incomes VALUES (133, 1, 0, '2011-10-01', '2011-10-01', 250, true, 582, 165, '2011-10-10', 14, 12);
INSERT INTO incomes VALUES (136, 1, 0, '2011-04-01', '2011-04-01', 250, true, 678, 725, '2011-04-10', 17, 10);
INSERT INTO incomes VALUES (137, 1, 0, '2011-06-01', '2011-06-01', 250, true, 678, 727, '2011-06-10', 17, 10);
INSERT INTO incomes VALUES (138, 1, 0, '2011-07-01', '2011-07-01', 250, true, 678, 728, '2011-07-10', 17, 10);
INSERT INTO incomes VALUES (139, 1, 0, '2011-08-01', '2011-08-01', 250, true, 678, 729, '2011-08-10', 17, 10);
INSERT INTO incomes VALUES (140, 1, 0, '2011-09-01', '2011-09-01', 250, true, 678, 730, '2011-09-10', 17, 10);
INSERT INTO incomes VALUES (144, 1, 0, '2011-04-01', '2011-04-01', 250, true, 16, 542, '2011-04-15', 18, 31);
INSERT INTO incomes VALUES (145, 1, 0, '2011-05-01', '2011-05-01', 250, true, 16, 543, '2011-05-15', 18, 31);
INSERT INTO incomes VALUES (146, 1, 0, '2011-06-01', '2011-06-01', 250, true, 16, 544, '2011-06-15', 18, 31);
INSERT INTO incomes VALUES (147, 1, 0, '2011-07-01', '2011-07-01', 250, true, 16, 545, '2011-07-15', 18, 31);
INSERT INTO incomes VALUES (148, 1, 0, '2011-08-01', '2011-08-01', 250, true, 16, 546, '2011-08-15', 18, 31);
INSERT INTO incomes VALUES (149, 1, 0, '2011-09-01', '2011-09-01', 250, true, 16, 547, '2011-09-15', 18, 31);
INSERT INTO incomes VALUES (150, 1, 0, '2011-10-01', '2011-10-01', 250, true, 16, 548, '2011-10-15', 18, 31);
INSERT INTO incomes VALUES (151, 1, 0, '2011-04-01', '2011-04-01', 250, true, 16, 9909, '2011-04-01', 19, 31);
INSERT INTO incomes VALUES (152, 1, 0, '2011-05-01', '2011-05-01', 250, true, 16, 9910, '2011-05-01', 19, 31);
INSERT INTO incomes VALUES (153, 1, 0, '2011-06-01', '2011-06-01', 250, true, 16, 9911, '2011-06-01', 19, 31);
INSERT INTO incomes VALUES (154, 1, 0, '2011-07-01', '2011-07-01', 250, true, 16, 9912, '2011-07-01', 19, 31);
INSERT INTO incomes VALUES (155, 1, 0, '2011-08-01', '2011-08-01', 250, true, 16, 9913, '2011-08-01', 19, 31);
INSERT INTO incomes VALUES (156, 1, 0, '2011-04-01', '2011-04-01', 250, true, 582, 306, '2011-04-10', 23, 12);
INSERT INTO incomes VALUES (157, 1, 0, '2011-05-01', '2011-05-01', 250, true, 582, 307, '2011-05-10', 23, 12);
INSERT INTO incomes VALUES (158, 1, 0, '2011-04-01', '2011-04-01', 250, true, 345, 193, '2011-04-10', 20, 14);
INSERT INTO incomes VALUES (159, 1, 0, '2011-05-01', '2011-05-01', 250, true, 345, 194, '2011-05-10', 20, 14);
INSERT INTO incomes VALUES (160, 1, 0, '2011-06-01', '2011-06-01', 250, true, 345, 195, '2011-06-10', 20, 14);
INSERT INTO incomes VALUES (161, 1, 0, '2011-04-01', '2011-04-01', 250, true, 680, 75, '2011-04-01', 21, 10);
INSERT INTO incomes VALUES (162, 1, 0, '2011-06-01', '2011-06-01', 250, true, 680, 77, '2011-06-01', 21, 10);
INSERT INTO incomes VALUES (163, 1, 0, '2011-07-01', '2011-07-01', 250, true, 680, 78, '2011-07-01', 21, 10);
INSERT INTO incomes VALUES (164, 1, 0, '2011-08-01', '2011-08-01', 250, true, 680, 79, '2011-08-01', 21, 10);
INSERT INTO incomes VALUES (165, 1, 0, '2011-09-01', '2011-09-01', 250, true, 680, 80, '2011-09-01', 21, 10);
INSERT INTO incomes VALUES (166, 1, 0, '2011-03-01', '2011-03-01', 250, true, 582, 305, '2011-03-10', 23, 12);
INSERT INTO incomes VALUES (167, 1, 0, '2011-03-01', '2011-03-01', 250, true, 5, 55, '2011-03-15', 12, 11);
INSERT INTO incomes VALUES (168, 1, 0, '2011-03-01', '2011-03-01', 250, true, 582, 158, '2011-03-10', 14, 12);
INSERT INTO incomes VALUES (169, 1, 0, '2011-03-01', '2011-03-01', 250, true, 16, 541, '2011-03-15', 18, 31);
INSERT INTO incomes VALUES (170, 1, 0, '2011-03-01', '2011-03-01', 250, true, 678, 724, '2011-03-10', 17, 10);
INSERT INTO incomes VALUES (171, 1, 0, '2011-03-01', '2011-03-01', 250, true, 680, 72, '2011-03-01', 21, 10);
INSERT INTO incomes VALUES (172, 1, 0, '2011-03-01', '2011-03-01', 250, true, 628, 695, '2011-03-10', 10, 12);
INSERT INTO incomes VALUES (176, 1, 0, '2011-04-01', '2011-04-01', 250, true, 657, 1993, '2011-04-15', 26, 10);
INSERT INTO incomes VALUES (177, 1, 0, '2011-06-01', '2011-06-01', 250, true, 582, 308, '2011-06-10', 23, 12);
INSERT INTO incomes VALUES (173, 1, 0, '2011-10-01', '2011-10-01', 250, true, 680, 65, '2011-10-01', 21, 10);
INSERT INTO incomes VALUES (141, 1, 0, '2011-10-01', '2011-10-01', 250, true, 678, 782, '2011-10-10', 17, 10);
INSERT INTO incomes VALUES (178, 1, 0, '2011-07-01', '2011-07-01', 250, true, 582, 309, '2011-07-10', 23, 12);
INSERT INTO incomes VALUES (179, 1, 0, '2011-08-01', '2011-08-01', 250, true, 582, 310, '2011-08-10', 23, 12);
INSERT INTO incomes VALUES (180, 1, 0, '2011-09-01', '2011-09-01', 250, true, 582, 311, '2011-09-10', 23, 12);
INSERT INTO incomes VALUES (181, 1, 0, '2011-10-01', '2011-10-01', 250, true, 582, 312, '2011-10-10', 23, 12);
INSERT INTO incomes VALUES (184, 1, 0, '2011-05-01', '2011-05-01', 250, true, 657, 1994, '2011-05-15', 26, 10);
INSERT INTO incomes VALUES (185, 1, 0, '2011-06-01', '2011-06-01', 250, true, 657, 1995, '2011-06-15', 26, 10);
INSERT INTO incomes VALUES (186, 1, 0, '2011-07-01', '2011-07-01', 250, true, 657, 1996, '2011-07-15', 26, 10);
INSERT INTO incomes VALUES (187, 1, 0, '2011-08-01', '2011-08-01', 250, true, 657, 1997, '2011-08-15', 26, 10);
INSERT INTO incomes VALUES (188, 1, 0, '2011-05-01', '2011-05-01', 250, true, 582, 141, '2011-05-01', 22, 12);
INSERT INTO incomes VALUES (189, 1, 0, '2011-05-01', '2011-05-01', 250, true, 678, 777, '2011-05-10', 17, 10);
INSERT INTO incomes VALUES (190, 1, 0, '2011-09-01', '2011-09-01', 250, true, 657, 1998, '2011-09-15', 26, 10);
INSERT INTO incomes VALUES (191, 1, 0, '2011-10-01', '2011-10-01', 250, true, 657, 1999, '2011-10-15', 26, 10);
INSERT INTO incomes VALUES (194, 1, 0, '2011-04-01', '2011-04-01', 250, true, 128, 80, '2011-04-05', 29, 31);
INSERT INTO incomes VALUES (195, 1, 0, '2011-05-01', '2011-05-01', 250, true, 128, 81, '2011-05-05', 29, 31);
INSERT INTO incomes VALUES (196, 1, 0, '2011-06-01', '2011-06-01', 250, true, 128, 82, '2011-06-05', 29, 31);
INSERT INTO incomes VALUES (197, 1, 0, '2011-07-01', '2011-07-01', 250, true, 128, 83, '2011-07-05', 29, 31);
INSERT INTO incomes VALUES (198, 1, 0, '2011-08-01', '2011-08-01', 250, true, 128, 84, '2011-08-05', 29, 31);
INSERT INTO incomes VALUES (199, 1, 0, '2011-09-01', '2011-09-01', 250, true, 128, 85, '2011-09-05', 29, 31);
INSERT INTO incomes VALUES (200, 1, 0, '2011-10-01', '2011-10-01', 250, true, 128, 86, '2011-10-05', 29, 31);
INSERT INTO incomes VALUES (203, 1, 0, '2011-04-01', '2011-04-01', 250, true, 345, 955, '2011-04-15', 30, 14);
INSERT INTO incomes VALUES (204, 1, 0, '2011-05-01', '2011-05-01', 250, true, 345, 956, '2011-05-15', 30, 14);
INSERT INTO incomes VALUES (205, 1, 0, '2011-06-01', '2011-06-01', 250, true, 345, 957, '2011-06-15', 30, 14);
INSERT INTO incomes VALUES (206, 1, 0, '2011-07-01', '2011-07-01', 250, true, 345, 958, '2011-07-15', 30, 14);
INSERT INTO incomes VALUES (207, 1, 0, '2011-08-01', '2011-08-01', 250, true, 345, 959, '2011-08-15', 30, 14);
INSERT INTO incomes VALUES (208, 1, 0, '2011-09-01', '2011-09-01', 250, true, 345, 960, '2011-09-15', 30, 14);
INSERT INTO incomes VALUES (209, 1, 0, '2011-10-01', '2011-10-01', 250, true, 345, 961, '2011-10-15', 30, 14);
INSERT INTO incomes VALUES (219, 1, 0, '2010-11-01', '2010-11-01', 250, true, 657, 1816, '2011-01-10', 26, 10);
INSERT INTO incomes VALUES (220, 1, 0, '2010-12-01', '2010-12-01', 250, true, 657, 1817, '2011-02-10', 26, 10);
INSERT INTO incomes VALUES (223, 1, 0, '2010-12-01', '2010-12-01', 312.5, true, 164, 497, '2011-02-14', 15, 46);
INSERT INTO incomes VALUES (225, 1, 0, '2011-02-01', '2011-02-01', 250, true, 663, 904, '2011-02-15', 2, 12);
INSERT INTO incomes VALUES (226, 1, 0, '2011-02-01', '2011-02-01', 250, true, 778, 353, '2011-02-10', 7, 12);
INSERT INTO incomes VALUES (227, 1, 0, '2011-02-01', '2011-02-01', 250, true, 315, 608, '2011-02-10', 8, 14);
INSERT INTO incomes VALUES (228, 1, 0, '2011-02-01', '2011-02-01', 250, true, 628, 694, '2011-02-10', 10, 12);
INSERT INTO incomes VALUES (229, 1, 0, '2011-02-01', '2011-02-01', 250, true, 5, 54, '2011-02-15', 12, 11);
INSERT INTO incomes VALUES (230, 1, 0, '2010-02-01', '2010-02-01', 250, true, 680, 88, '2011-01-01', 21, 10);
INSERT INTO incomes VALUES (231, 1, 0, '2011-02-01', '2011-02-01', 250, true, 16, 9907, '2011-02-01', 19, 31);
INSERT INTO incomes VALUES (232, 1, 0, '2011-02-01', '2011-02-01', 250, true, 582, 304, '2011-02-10', 23, 12);
INSERT INTO incomes VALUES (233, 1, 0, '2011-02-01', '2011-02-01', 250, true, 345, 191, '2011-02-10', 20, 14);
INSERT INTO incomes VALUES (234, 1, 0, '2011-02-01', '2011-02-01', 250, true, 680, 73, '2011-02-01', 21, 10);
INSERT INTO incomes VALUES (235, 1, 0, '2011-02-01', '2011-02-01', 250, true, 116, 651, '2011-02-10', 24, 4);
INSERT INTO incomes VALUES (236, 1, 0, '2011-02-01', '2011-02-01', 250, true, 657, 1991, '2011-02-15', 26, 10);
INSERT INTO incomes VALUES (237, 1, 0, '2011-02-01', '2011-02-01', 250, true, 680, 390, '2011-02-10', 1, 10);
INSERT INTO incomes VALUES (238, 1, 0, '2011-02-01', '2011-02-01', 250, true, 493, 715, '2011-02-10', 28, 20);
INSERT INTO incomes VALUES (239, 1, 0, '2011-02-01', '2011-02-01', 250, true, 378, 120, '2011-02-10', 11, 14);
INSERT INTO incomes VALUES (241, 1, 0, '2011-02-01', '2011-02-01', 250, true, 148, 43, '2011-02-10', 9, 11);
INSERT INTO incomes VALUES (242, 1, 0, '2011-02-01', '2011-02-01', 250, true, 582, 137, '2011-02-01', 22, 12);
INSERT INTO incomes VALUES (243, 1, 0, '2011-02-01', '2011-02-01', 250, true, 494, 29, '2011-02-10', 5, 14);
INSERT INTO incomes VALUES (244, 1, 0, '2011-02-01', '2011-02-01', 250, true, 45, 9, '2011-02-10', 13, 11);
INSERT INTO incomes VALUES (245, 1, 0, '2011-02-01', '2011-02-01', 250, true, 582, 157, '2011-02-10', 14, 12);
INSERT INTO incomes VALUES (246, 1, 0, '2011-02-01', '2011-02-01', 250, true, 678, 723, '2011-02-10', 17, 10);
INSERT INTO incomes VALUES (247, 1, 0, '2011-02-01', '2011-02-01', 250, true, 16, 540, '2011-02-15', 18, 31);
INSERT INTO incomes VALUES (248, 1, 0, '2011-02-01', '2011-02-01', 250, true, 128, 78, '2011-02-05', 29, 31);
INSERT INTO incomes VALUES (249, 1, 0, '2011-02-01', '2011-02-01', 250, true, 345, 953, '2011-02-15', 30, 14);
INSERT INTO incomes VALUES (250, 1, 0, '2011-12-01', '2011-12-01', 250, true, 345, 952, '2011-01-15', 30, 14);
INSERT INTO incomes VALUES (251, 1, 0, '2011-03-01', '2011-03-01', 250, true, 494, 30, '2011-03-10', 5, 14);
INSERT INTO incomes VALUES (252, 1, 0, '2011-03-01', '2011-03-01', 250, true, 45, 10, '2011-03-10', 13, 11);
INSERT INTO incomes VALUES (253, 1, 0, '2011-03-01', '2011-03-01', 250, true, 16, 9908, '2011-03-01', 19, 31);
INSERT INTO incomes VALUES (254, 1, 0, '2011-03-01', '2011-03-01', 250, true, 345, 192, '2011-03-10', 20, 14);
INSERT INTO incomes VALUES (255, 1, 0, '2011-03-01', '2011-03-01', 250, true, 345, 954, '2011-03-15', 30, 14);
INSERT INTO incomes VALUES (256, 1, 0, '2011-03-01', '2011-03-01', 250, true, 128, 79, '2011-03-05', 29, 31);
INSERT INTO incomes VALUES (257, 1, 0, '2011-03-01', '2011-03-01', 250, true, 657, 1992, '2011-03-15', 26, 10);
INSERT INTO incomes VALUES (258, 1, 0, '2011-03-01', '2011-03-01', 250, true, 378, 121, '2011-03-10', 11, 14);
INSERT INTO incomes VALUES (4, 1, 0, '2011-06-01', '2011-07-01', 500, true, 123, 395, '2011-05-07', 15, 4);
INSERT INTO incomes VALUES (5, 1, 0, '2011-08-01', '2011-09-01', 500, true, 123, 397, '2011-07-07', 15, 4);
INSERT INTO incomes VALUES (6, 1, 0, '2011-10-01', '2011-11-01', 500, true, 123, 398, '2011-09-07', 15, 4);
INSERT INTO incomes VALUES (89, 1, 0, '2011-04-01', '2011-05-01', 500, true, 123, 394, '2011-03-07', 15, 4);
INSERT INTO incomes VALUES (221, 1, 0, '2011-02-01', '2011-12-01', 2750, true, 600, 31, '2011-02-15', 27, 12);
INSERT INTO incomes VALUES (214, 1, 0, '2011-05-01', '2011-06-01', 500, true, 85, 7, '2011-05-11', 16, 11);
INSERT INTO incomes VALUES (215, 1, 0, '2011-07-01', '2011-08-01', 500, true, 85, 8, '2011-07-11', 16, 11);
INSERT INTO incomes VALUES (216, 1, 0, '2011-09-01', '2011-10-01', 500, true, 85, 9, '2011-09-11', 16, 11);
INSERT INTO incomes VALUES (222, 1, 0, '2011-02-01', '2011-03-01', 500, true, 123, 393, '2011-01-07', 15, 4);
INSERT INTO incomes VALUES (240, 1, 0, '2011-02-01', '2011-03-01', 500, true, 109, 922, '2011-02-15', 4, 31);
INSERT INTO incomes VALUES (259, 1, 0, '2011-03-01', '2011-04-01', 500, true, 85, 6, '2011-03-11', 16, 11);
INSERT INTO incomes VALUES (113, 1, 0, '2011-05-01', '2011-06-01', 500, true, 116, 653, '2011-06-11', 24, 4);
INSERT INTO incomes VALUES (211, 1, 0, '2011-07-01', '2011-08-01', 500, true, 116, 654, '2011-08-11', 24, 4);
INSERT INTO incomes VALUES (212, 1, 0, '2011-09-01', '2011-10-01', 500, true, 116, 655, '2011-10-11', 24, 4);
INSERT INTO incomes VALUES (260, 1, 0, '2011-08-01', '2011-08-01', 250, true, 378, 826, '2011-08-10', 11, 14);
INSERT INTO incomes VALUES (263, 1, 0, '2011-10-01', '2011-10-01', 250, true, 378, 828, '2011-10-10', 11, 14);
INSERT INTO incomes VALUES (262, 1, 0, '2011-09-01', '2011-09-01', 250, true, 378, 827, '2011-09-10', 11, 14);
INSERT INTO incomes VALUES (81, 1, 0, '2011-07-01', '2011-08-01', 500, true, 315, 501, '2011-08-10', 8, 14);
INSERT INTO incomes VALUES (271, 1, 0, '2011-07-01', '2011-07-01', 250, true, 345, 858, '2011-09-02', 20, 14);
INSERT INTO incomes VALUES (272, 1, 0, '2011-08-01', '2011-08-01', 250, true, 345, 859, '2011-09-28', 20, 14);
INSERT INTO incomes VALUES (273, 1, 0, '2011-09-01', '2011-09-01', 250, true, 345, 860, '2011-10-10', 20, 14);
INSERT INTO incomes VALUES (277, 1, 0, '2011-07-01', '2011-09-01', 750, true, 857, 4591, '2011-09-05', 25, 10);
INSERT INTO incomes VALUES (3, 1, 0, '2011-04-01', '2011-05-01', 500, true, 109, 200, '2011-05-23', 4, 31);
INSERT INTO incomes VALUES (286, 1, 0, '2011-09-01', '2011-11-01', 750, false, 144, 20, '2011-11-14', 19, 11);


--
-- Data for Name: pay_codes; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--

INSERT INTO pay_codes VALUES (0, 'כללי');


--
-- Data for Name: poll_attendents; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--



--
-- Data for Name: poll_codes; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--

INSERT INTO poll_codes VALUES (0, 'החלטת וועד');
INSERT INTO poll_codes VALUES (1, 'משאל רגיל');


--
-- Data for Name: poll_options; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--



--
-- Data for Name: polls; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--



--
-- Data for Name: post_codes; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--

INSERT INTO post_codes VALUES (0, 'לא לפרסום');
INSERT INTO post_codes VALUES (1, 'פרסום רגיל');
INSERT INTO post_codes VALUES (99, 'פרסום בעמוד ראשי');


--
-- Data for Name: post_tags; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--



--
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--

INSERT INTO posts VALUES (1, 1, 1, 99, 'פתיחת האתר', '<div align="right">ברוכים הבאים לאתר של מגדל עוז 1.<br>אחרי הרבה 

מאמצים האתר סוף סוף נפתח. אני מקווה שתפיקו ממנו תועלת רבה. האתר עדיין בהרצה אז

 אנא, שלחו את הערותיכם אלי ואני אתיחס לכל הערה<br>על

 מנת להנות מכל האפשרויות של האתר, עליכם להירשם. לאחר ההרשמה אנא, המתינו

 עד שאאשר אתכם. זה יכול לקחת מספר שעות, אז סבלנות. אם לא אישרתי אתכם אנא

 צרו איתי קשר דרך הטלפון ואבדוק את העניין.<br>רצוי שכל בני המשפחה ירשמו לאתר ולא רק אחד מבני המשפחה. כך תוכלו ליצור מודעות פרטיות ולהגיב על הנעשה כאן באופן אישי.<br><br>אשמח לשמוע את דעתכם על האתר ועל הבניין כמובן.<br></div><p><br></p>', NULL, '2011-09-27 05:34:05', '2011-10-05 06:46:11', NULL, true);


--
-- Data for Name: projects; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--

INSERT INTO projects VALUES (3, 1, 'שיפוץ לובי 1-', '', 5000, 8000, NULL, NULL, NULL, NULL);
INSERT INTO projects VALUES (0, 1, 'מיסי וועד', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO projects VALUES (1, 1, 'הוצאות כלליות', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO projects VALUES (2, 1, 'החלפת רצפת מעליות', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO projects VALUES (11, 1, 'אינסטלציה', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO projects VALUES (13, 1, 'הוצאות חשמל', 'כל הוצאות החשמל בבניין', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO projects VALUES (14, 1, 'הוצאות נקיון', 'כל הוצאות הנקיון בבנין', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO projects VALUES (15, 1, 'הוצאות מעלית', 'כל ההוצאות שקשורות למעלית', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO projects VALUES (16, 1, 'גינון', 'כל הפעולות הקשורות לגינון הבניין', NULL, NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: receipts; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--



--
-- Data for Name: registries; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--



--
-- Data for Name: reminders; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--



--
-- Data for Name: sites; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--

INSERT INTO sites VALUES (1, 'מגדל עוז', 'כשהוועד תופס פיקוד', 'מגדל עוז', '1', 'מודיעין', '71703');


--
-- Data for Name: tags; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--



--
-- Data for Name: task_codes; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--

INSERT INTO task_codes VALUES (0, 'משימה פתוחה');
INSERT INTO task_codes VALUES (99, 'משימה סגורה');
INSERT INTO task_codes VALUES (1, 'משימה בפיתוח');


--
-- Data for Name: tasks; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--



--
-- Data for Name: taxes; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--



--
-- Data for Name: tenants; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--

INSERT INTO tenants VALUES (1, 1, true, 6, 'אלי', 'חיון', '820e3f2d112673b784f759648bb29e65', NULL, 'elihayun@gmail.com', '089717392', '', '0509247123', NULL, NULL, '', true, true, false, false, false, false);
INSERT INTO tenants VALUES (4, 1, false, 8, 'יעקב', 'בנדלר', '', NULL, NULL, NULL, NULL, '0508217015', NULL, NULL, NULL, false, true, false, false, false, false);
INSERT INTO tenants VALUES (5, 1, false, 21, 'ויטלי', 'ריינוס', NULL, NULL, '', '', '', '0524007630', NULL, NULL, '', false, true, false, false, false, false);
INSERT INTO tenants VALUES (6, 1, false, 29, 'רויטל', 'חדד', NULL, NULL, '', '', '', '0525236463', NULL, NULL, '', false, true, false, false, false, false);
INSERT INTO tenants VALUES (7, 1, false, 7, 'ויקי', 'שמש', NULL, NULL, '', '089712085', '', '', NULL, NULL, '', false, true, false, false, false, false);
INSERT INTO tenants VALUES (8, 1, false, 20, 'גדעון', 'קונרד', NULL, NULL, '', '0777101149', '', '', NULL, NULL, '', false, true, false, false, false, false);
INSERT INTO tenants VALUES (9, 1, false, 12, 'דני', 'ראיקו', NULL, NULL, '', '0774552687', '', '', NULL, NULL, '', false, true, false, false, false, false);
INSERT INTO tenants VALUES (10, 1, false, 17, 'משה', 'בן ציון', NULL, NULL, '', '', '', '0547636193', NULL, NULL, '', false, true, false, false, false, false);
INSERT INTO tenants VALUES (11, 1, false, 25, 'עדי', 'בלאס', NULL, NULL, '', '', '', '0503880407', NULL, NULL, '', false, true, false, false, false, false);
INSERT INTO tenants VALUES (12, 1, false, 19, 'אהרון', 'גרינר', NULL, NULL, '', '', '', '0507925085', NULL, NULL, '', false, true, false, false, false, false);
INSERT INTO tenants VALUES (13, 1, false, 10, 'שי', 'ורנר', NULL, NULL, '', '', '', '0544861228', NULL, NULL, '', false, true, false, false, false, false);
INSERT INTO tenants VALUES (15, 1, false, 18, 'שרי', 'בך', NULL, NULL, '', '', '', '0502863377', NULL, NULL, '', false, true, false, false, false, false);
INSERT INTO tenants VALUES (16, 1, false, 23, 'זאב', 'שטיינברג', NULL, NULL, '', '0505886905', '', '0546388436', NULL, NULL, '', false, true, false, false, false, false);
INSERT INTO tenants VALUES (17, 1, false, 16, 'דויד', 'מילוא', NULL, NULL, '', '', '', '0545868832', NULL, NULL, '', false, true, false, false, false, false);
INSERT INTO tenants VALUES (18, 1, false, 9, 'אסנת', 'כהן', NULL, NULL, '', '', '', '0544799558', NULL, NULL, '', false, true, false, false, false, false);
INSERT INTO tenants VALUES (19, 1, false, 5, 'אבי', 'הייער', NULL, NULL, '', '', '', '0542291790', NULL, NULL, '', true, true, false, false, false, false);
INSERT INTO tenants VALUES (20, 1, false, 30, 'יגאל', 'ביבי', NULL, NULL, '', '', '', '0522499193', NULL, NULL, '', false, true, false, false, false, false);
INSERT INTO tenants VALUES (23, 1, false, 22, 'פרד', 'בראונשטיין', NULL, NULL, '', '0548883744', '', '0546628245', NULL, NULL, '', false, true, false, false, false, false);
INSERT INTO tenants VALUES (26, 1, true, 6, 'עדי', 'זוסמן', 'd23c7a62c9505062d152952a067f7a71', NULL, 'adiz@adi-way.com', NULL, NULL, NULL, NULL, NULL, NULL, false, true, false, false, false, false);
INSERT INTO tenants VALUES (27, 1, true, 19, 'ענת', 'פידלר', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, false, false, false, false, false);
INSERT INTO tenants VALUES (28, 1, true, 19, 'אלכס', 'פידלר', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, false, false, false, false, false);
INSERT INTO tenants VALUES (3, 1, false, 3, 'דוריתה', 'ארקוסין', NULL, NULL, NULL, '089759789', NULL, NULL, NULL, NULL, NULL, false, true, false, false, false, false);
INSERT INTO tenants VALUES (14, 1, false, 4, 'שרית', 'מזרחי', NULL, NULL, NULL, NULL, NULL, '0506817849', NULL, NULL, NULL, false, true, false, false, false, false);
INSERT INTO tenants VALUES (21, 1, false, 1, 'אליהו', 'סספורטס', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, true, false, false, false, false);


--
-- Data for Name: ticket_codes; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--

INSERT INTO ticket_codes VALUES (0, 'תקלה פתוחה');
INSERT INTO ticket_codes VALUES (99, 'תקלה סגורה');
INSERT INTO ticket_codes VALUES (1, 'תקלה בטיפול');
INSERT INTO ticket_codes VALUES (2, 'תקלה מושהית');


--
-- Data for Name: ticket_history; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--

INSERT INTO ticket_history VALUES (1, 1, 1, 1, '2011-10-18', 'tick 1', '');
INSERT INTO ticket_history VALUES (3, 1, 1, 5, '2011-10-17', 'tick 2', '');
INSERT INTO ticket_history VALUES (4, 1, 1, 10, '2011-10-17', 'tick 3', '');
INSERT INTO ticket_history VALUES (5, 2, 1, 1, '2011-10-17', 'tick 5', '');
INSERT INTO ticket_history VALUES (6, 2, 1, 10, '2011-10-16', 'tick 6', '');


--
-- Data for Name: tickets; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--

INSERT INTO tickets VALUES (1, 1, 1, 0, '2011-10-17', 'Ticket 1', NULL, NULL);
INSERT INTO tickets VALUES (3, 1, 1, 0, '2011-10-15', 'Ticket 3', NULL, NULL);
INSERT INTO tickets VALUES (5, 1, 6, 0, '2011-10-18', 'Ticket 5', NULL, NULL);
INSERT INTO tickets VALUES (2, 1, 1, 99, '2011-10-16', 'Ticket 2', NULL, NULL);
INSERT INTO tickets VALUES (4, 1, 27, 0, '2011-10-20', 'תאורת חדר מדרגות בשבת', '2011-10-26', NULL);


--
-- Data for Name: todo; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--

INSERT INTO todo VALUES (3, 'אפשרות מחיקה', 0, '0', 'לאפשר למחוק רשומות', 1);
INSERT INTO todo VALUES (4, 'חובות דיירים', 0, '2', '', 1);
INSERT INTO todo VALUES (1, 'תקלות', 0, '4', 'בעת יצירת תקלה חדשה יש להציג רק שדות : כותרת ותיאור (שייכים לטבלת ההסטוריה) 

כאשר נשמור את הרשומה יש להוסיף רשומה לטבלת תקלות  עם קוד הדייר שפתח את התקלה. ולפי הקוד שהתקבל להוסיף להסטוריה', 1);
INSERT INTO todo VALUES (5, 'לוח מודעות', 0, '0', '', 1);
INSERT INTO todo VALUES (6, 'אפשרות להוסיף תקלה', 0, '7', 'לאפשר לדיירים רגילים אפשרות להוסיף תקלות. ולעדכן את מה שהם הוסיפו. אפשרות להוסיף להיסטוריה של התקלה', 2);


--
-- Data for Name: transactions; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--

INSERT INTO transactions VALUES (443, 1, 2, 2, '2011-08-27', 315, 1, '102', 'בניין 11 - ריצוף מעלית', 4);
INSERT INTO transactions VALUES (369, 1, 1, 1, '2011-08-25', 2000, 1, '', 'משיכת מזומן', 6);
INSERT INTO transactions VALUES (398, 1, 1, 1, '2011-09-05', 4000, 1, '', 'משיכת מזומן', 6);
INSERT INTO transactions VALUES (400, 1, 1, 1, '2011-01-20', 5000, 1, '1', 'משיכת מזומן', 6);
INSERT INTO transactions VALUES (418, 1, 1, 1, '2011-05-16', 1000, 1, '19', 'משיכת מזומן', 6);
INSERT INTO transactions VALUES (394, 1, 2, 2, '2011-08-25', 1100, -1, '', 'מרצפות (עם בנין 11)', 4);
INSERT INTO transactions VALUES (407, 1, 2, 2, '2011-06-18', 1212, -1, '24', 'מרצפות למעלית', 4);
INSERT INTO transactions VALUES (374, 1, 1, 2, '2011-09-08', 1000, -1, '13', 'ריצוף מעלית - עבודה', 4);
INSERT INTO transactions VALUES (464, 1, 1, 1, '2011-09-08', 1000, -1, '', 'תיקון קיר חיצוני', 6);
INSERT INTO transactions VALUES (396, 1, 2, 1, '2011-09-02', 917, -1, '', 'חשמל חניון', 8);
INSERT INTO transactions VALUES (389, 1, 2, 1, '2011-07-27', 3499, -1, '', 'חשמל + גנרטור', 8);
INSERT INTO transactions VALUES (378, 1, 1, 1, '2011-09-22', 127.700000000000003, -1, '', 'הרמת כוסית לשנה החדשה', 6);
INSERT INTO transactions VALUES (373, 1, 1, 1, '2011-01-11', 464, -1, '2440', 'תיקון אינטרקום', 6);
INSERT INTO transactions VALUES (375, 1, 1, 1, '2011-06-09', 44.5, -1, '8636', 'שיכפול מפתחות', 6);
INSERT INTO transactions VALUES (376, 1, 2, 1, '2011-08-25', 2000, -1, '', 'משיכת מזומן', 6);
INSERT INTO transactions VALUES (377, 1, 1, 3, '2011-02-15', 1900, -1, '', 'תיקרה אקוסטית', 6);
INSERT INTO transactions VALUES (379, 1, 1, 1, '2011-03-10', 200, -1, '', 'לוחות מודעות', 6);
INSERT INTO transactions VALUES (384, 1, 1, 3, '2011-05-27', 182, -1, '540', 'צבע לארגזי כיבוי', 6);
INSERT INTO transactions VALUES (385, 1, 1, 3, '2011-02-25', 80, -1, '5', 'צבע ללובי', 6);
INSERT INTO transactions VALUES (364, 1, 1, 1, '2011-01-02', 446, -1, '1890', 'מברגה + טסטר', 6);
INSERT INTO transactions VALUES (436, 1, 1, 1, '2011-02-25', 7000, 1, '6', 'משיכת מזומן', 6);
INSERT INTO transactions VALUES (444, 1, 2, 0, '2011-06-01', 6750, 1, NULL, NULL, 3);
INSERT INTO transactions VALUES (445, 1, 2, 0, '2011-08-01', 5750, 1, NULL, NULL, 3);
INSERT INTO transactions VALUES (446, 1, 2, 0, '2010-02-01', 250, 1, NULL, NULL, 3);
INSERT INTO transactions VALUES (447, 1, 2, 0, '2011-03-01', 6500, 1, NULL, NULL, 3);
INSERT INTO transactions VALUES (448, 1, 2, 0, '2011-05-01', 6500, 1, NULL, NULL, 3);
INSERT INTO transactions VALUES (371, 1, 1, 3, '2011-02-25', 1000, -1, '', 'דלת ללובי', 6);
INSERT INTO transactions VALUES (386, 1, 1, 3, '2011-05-27', 5000, -1, '', 'תשלום לשיפוץ לובי', 6);
INSERT INTO transactions VALUES (387, 1, 1, 3, '2011-05-27', 200, -1, '', 'טיפ לפועל', 6);
INSERT INTO transactions VALUES (397, 1, 2, 1, '2011-09-05', 4000, -1, '', 'משיכת מזומן', 6);
INSERT INTO transactions VALUES (402, 1, 2, 1, '2011-02-16', 870, -1, '3', 'ביטוח לבניין', 6);
INSERT INTO transactions VALUES (442, 1, 2, 11, '2011-10-01', 600, -1, '40', 'תיקון סתימה בדירה 6', 5);
INSERT INTO transactions VALUES (383, 1, 1, 11, '2011-08-25', 450, -1, NULL, 'תיקון דירה 3', 5);
INSERT INTO transactions VALUES (367, 1, 1, 11, '2011-08-26', 500, -1, NULL, 'החלפת גלגלון בלובי 1', 5);
INSERT INTO transactions VALUES (366, 1, 1, 11, '2011-08-25', 1000, -1, NULL, 'מקדמה - אל חזור', 5);
INSERT INTO transactions VALUES (365, 1, 1, 11, '2011-08-25', 200, -1, NULL, 'תיקון דירה מס 1', 5);
INSERT INTO transactions VALUES (440, 1, 1, 11, '2011-02-07', 320, -1, NULL, 'תיקון נזילה בדירה 1', 5);
INSERT INTO transactions VALUES (399, 1, 2, 11, '2011-09-26', 500, -1, '39', 'סתימה בבנין', 5);
INSERT INTO transactions VALUES (432, 1, 1, 11, '2011-05-24', 200, -1, NULL, 'תיקון נזילה בחניה', 5);
INSERT INTO transactions VALUES (466, 1, 2, 13, '2011-10-28', 1049.3900000000001, -1, '45', 'תשלום חשמל', 1);
INSERT INTO transactions VALUES (408, 1, 2, 13, '2011-03-21', 984.909999999999968, -1, '9', 'תשלום חשמל - לפני ניתוק', 1);
INSERT INTO transactions VALUES (421, 1, 2, 13, '2011-06-14', 1086.17000000000007, -1, '22', 'חשמל ציבורי', 1);
INSERT INTO transactions VALUES (416, 1, 2, 13, '2011-05-08', 998.019999999999982, -1, '18', 'חשמל ציבורי', 1);
INSERT INTO transactions VALUES (411, 1, 2, 13, '2011-04-07', 2619, -1, '12', 'חשמל ציבורי', 1);
INSERT INTO transactions VALUES (467, 1, 2, 14, '2011-11-01', 2000, -1, '47', 'נקוי הבניין', 7);
INSERT INTO transactions VALUES (392, 1, 2, 15, '2011-08-25', 900, -1, '33', 'שירות למעלית', 4);
INSERT INTO transactions VALUES (388, 1, 2, 15, '2011-07-17', 900, -1, '', 'שירות למעלית', 4);
INSERT INTO transactions VALUES (465, 1, 2, 0, '2011-10-28', 725.509999999999991, 1, NULL, 'העברה מחשבון קודם', 3);
INSERT INTO transactions VALUES (412, 1, 2, 15, '2011-04-10', 1110, -1, '13', 'מעלית - בדיקה ', 4);
INSERT INTO transactions VALUES (415, 1, 2, 15, '2011-05-08', 1800, -1, '17', 'שירות למעלית', 4);
INSERT INTO transactions VALUES (420, 1, 2, 15, '2011-06-14', 900, -1, '21', 'שירות למעלית', 4);
INSERT INTO transactions VALUES (403, 1, 2, 15, '2011-02-22', 2997, -1, '4', 'שירות למעלית ינואר - מרץ', 4);
INSERT INTO transactions VALUES (382, 1, 2, 0, '2011-01-16', 20000, 1, 'העברה מחשבון קודם', 'יתרת פתיחה', 3);
INSERT INTO transactions VALUES (404, 1, 2, 0, '2011-01-18', 250, -1, '5', 'תשלום לוועד', 3);
INSERT INTO transactions VALUES (423, 1, 1, 0, '2011-02-01', 250, -1, NULL, 'תשלום לוועד', 3);
INSERT INTO transactions VALUES (424, 1, 1, 0, '2011-03-01', 250, -1, NULL, 'תשלום לוועד', 3);
INSERT INTO transactions VALUES (425, 1, 1, 0, '2011-04-01', 250, -1, NULL, 'תשלום לוועד', 3);
INSERT INTO transactions VALUES (426, 1, 1, 0, '2011-05-01', 250, -1, NULL, 'תשלום לוועד', 3);
INSERT INTO transactions VALUES (427, 1, 1, 0, '2011-06-01', 250, -1, NULL, 'תשלום לוועד', 3);
INSERT INTO transactions VALUES (428, 1, 1, 0, '2011-07-01', 250, -1, NULL, 'תשלום לוועד', 3);
INSERT INTO transactions VALUES (429, 1, 1, 0, '2011-08-01', 250, -1, NULL, 'תשלום לוועד', 3);
INSERT INTO transactions VALUES (430, 1, 1, 0, '2011-09-01', 250, -1, NULL, 'תשלום לוועד', 3);
INSERT INTO transactions VALUES (431, 1, 1, 0, '2011-10-01', 250, -1, NULL, 'תשלום לוועד', 3);
INSERT INTO transactions VALUES (372, 1, 2, 16, '2011-06-17', 1450, -1, '23', 'גינון + מחשב לגינה', 9);
INSERT INTO transactions VALUES (380, 1, 1, 16, '2011-01-21', 142, -1, '45799', 'ברזים לגינה', 9);
INSERT INTO transactions VALUES (381, 1, 1, 16, '2011-01-21', 39, -1, '45820', 'ברזים לגינה', 9);
INSERT INTO transactions VALUES (391, 1, 2, 16, '2011-08-16', 1250, -1, NULL, 'גינה עם בניין 3', 9);
INSERT INTO transactions VALUES (361, 1, 1, 16, '2011-04-22', 600, -1, '744', 'ארגז גינה+דלתות', 9);
INSERT INTO transactions VALUES (363, 1, 2, 16, '2011-04-22', 500, -1, '744', 'ארגז גינה+דלתות', 9);
INSERT INTO transactions VALUES (362, 1, 2, 16, '2011-04-22', 500, -1, '744', 'ארגז גינה+דלתות', 9);
INSERT INTO transactions VALUES (370, 1, 1, 1, '2011-04-05', 200, -1, '0771', 'תיקון תריסים חדר כושר', 6);
INSERT INTO transactions VALUES (406, 1, 2, 3, '2011-03-16', 6563, -1, '8', 'ריצוף ללובי', 6);
INSERT INTO transactions VALUES (409, 1, 2, 3, '2011-04-02', 179, -1, '10', 'שלטים לבניין', 6);
INSERT INTO transactions VALUES (413, 1, 2, 1, '2011-04-10', 300, -1, '14', 'תיקון דלת כניסה', 6);
INSERT INTO transactions VALUES (417, 1, 2, 1, '2011-05-16', 1000, -1, '19', 'משיכת מזומן', 6);
INSERT INTO transactions VALUES (433, 1, 1, 1, '2011-01-21', 117, -1, '45801', 'לחצנים למדרגות', 6);
INSERT INTO transactions VALUES (434, 1, 2, 1, '2011-01-20', 5000, -1, '1', 'משיכת מזומן', 6);
INSERT INTO transactions VALUES (435, 1, 1, 1, '2011-03-21', 77.5, -1, '', 'צינור גמיש', 6);
INSERT INTO transactions VALUES (438, 1, 2, 1, '2011-02-25', 7000, -1, '6', 'משיכת מזומן', 6);
INSERT INTO transactions VALUES (439, 1, 1, 1, '2011-01-05', 230, -1, '', 'מנורות', 6);
INSERT INTO transactions VALUES (441, 1, 1, 3, '2011-02-25', 1700, -1, '', 'מקדמה לשיפוץ', 6);
INSERT INTO transactions VALUES (454, 1, 1, 3, '2011-02-23', 340, -1, '18318', 'מנעול מותאם ללובי -1', 6);
INSERT INTO transactions VALUES (449, 1, 2, 0, '2011-04-01', 6500, 1, NULL, NULL, 3);
INSERT INTO transactions VALUES (450, 1, 2, 0, '2011-02-01', 9500, 1, NULL, NULL, 3);
INSERT INTO transactions VALUES (451, 1, 2, 0, '2011-10-01', 5750, 1, NULL, NULL, 3);
INSERT INTO transactions VALUES (452, 1, 2, 0, '2011-09-01', 6250, 1, NULL, NULL, 3);
INSERT INTO transactions VALUES (453, 1, 2, 0, '2011-07-01', 7500, 1, NULL, NULL, 3);
INSERT INTO transactions VALUES (455, 1, 1, 0, '2011-02-01', 500, 1, NULL, NULL, 3);
INSERT INTO transactions VALUES (456, 1, 1, 0, '2010-10-01', 250, 1, NULL, NULL, 3);
INSERT INTO transactions VALUES (457, 1, 1, 0, '2011-03-01', 250, 1, NULL, NULL, 3);
INSERT INTO transactions VALUES (458, 1, 1, 0, '2011-05-01', 250, 1, NULL, NULL, 3);
INSERT INTO transactions VALUES (460, 1, 1, 0, '2010-08-01', 250, 1, NULL, NULL, 3);
INSERT INTO transactions VALUES (461, 1, 1, 0, '2011-01-01', 250, 1, NULL, NULL, 3);
INSERT INTO transactions VALUES (462, 1, 1, 0, '2011-04-01', 250, 1, NULL, NULL, 3);
INSERT INTO transactions VALUES (463, 1, 1, 0, '2010-09-01', 250, 1, NULL, NULL, 3);
INSERT INTO transactions VALUES (459, 1, 1, 0, '2011-06-01', 250, 1, '', '', 3);
INSERT INTO transactions VALUES (471, 1, 2, 11, '2011-11-04', 900, -1, '77', 'פתיחת סתימה דירה 6', 5);
INSERT INTO transactions VALUES (470, 1, 2, 11, '2011-11-02', 986, -1, '76', 'פתיחת סתימה דירה 6', 5);
INSERT INTO transactions VALUES (368, 1, 1, 11, '2011-09-06', 1300, -1, NULL, 'אל חזור', 5);
INSERT INTO transactions VALUES (437, 1, 1, 11, '2011-02-07', 200, -1, NULL, 'בדיקת נזילה וצנרת בחניות', 5);
INSERT INTO transactions VALUES (393, 1, 2, 13, '2011-08-25', 1045, -1, NULL, 'תשלום חשמל', 1);
INSERT INTO transactions VALUES (468, 1, 2, 14, '2011-10-05', 2000, -1, '42', 'מנקה לבניין', 7);
INSERT INTO transactions VALUES (401, 1, 2, 14, '2011-02-04', 2000, -1, '2', 'מנקה לבניין', 7);
INSERT INTO transactions VALUES (405, 1, 2, 14, '2011-03-04', 2000, -1, '7', 'מנקה לבניין', 7);
INSERT INTO transactions VALUES (410, 1, 2, 14, '2011-04-07', 2000, -1, '11', 'מנקה לבניין', 7);
INSERT INTO transactions VALUES (414, 1, 2, 14, '2011-05-02', 2200, -1, '16', 'מנקה + שי לחג', 7);
INSERT INTO transactions VALUES (419, 1, 2, 14, '2011-06-01', 2000, -1, '20', 'מנקה לבניין', 7);
INSERT INTO transactions VALUES (422, 1, 2, 14, '2011-07-08', 2000, -1, '25', 'מנקה לבניין', 7);
INSERT INTO transactions VALUES (395, 1, 2, 14, '2011-09-02', 2000, -1, '', 'מנקה לבניין', 7);
INSERT INTO transactions VALUES (390, 1, 2, 14, '2011-08-03', 2000, -1, '', 'מנקה לבניין', 7);
INSERT INTO transactions VALUES (472, 1, 2, 1, '2011-11-01', 406, -1, '50', 'הוצאת מכתב התראה למר סספורטס', 6);
INSERT INTO transactions VALUES (473, 1, 2, 1, '2011-11-01', 250, -1, '49', 'תשלום לוועד', 3);
INSERT INTO transactions VALUES (474, 1, 2, 11, '2011-11-06', 850, -1, '80', 'סתימה בדירה 6', 5);
INSERT INTO transactions VALUES (475, 1, 2, 0, '2011-11-18', 6812.5, 1, 'תקבולים מחודש נובמבר', 'תקבולים מחודש נובמבר', 3);
INSERT INTO transactions VALUES (476, 1, 2, 15, '2011-12-01', 2000, -1, '81', 'שירות למעלית', 4);
INSERT INTO transactions VALUES (478, 1, 2, 1, '2011-12-01', 172, -1, '82', 'כיבוי שריפה בחדר אשפה', 6);
INSERT INTO transactions VALUES (477, 1, 2, 14, '2011-12-01', 2000, -1, '83', 'מנקה לבניין', 7);


--
-- Data for Name: trn_cat_codes; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--

INSERT INTO trn_cat_codes VALUES (1, 'חשמל');
INSERT INTO trn_cat_codes VALUES (2, 'מים');
INSERT INTO trn_cat_codes VALUES (3, 'תשלומי וועד');
INSERT INTO trn_cat_codes VALUES (4, 'אחזקת מעלית');
INSERT INTO trn_cat_codes VALUES (5, 'אינסטלציה');
INSERT INTO trn_cat_codes VALUES (6, 'כללי');
INSERT INTO trn_cat_codes VALUES (0, 'לא מוגדר');
INSERT INTO trn_cat_codes VALUES (7, 'נקיון בניין');
INSERT INTO trn_cat_codes VALUES (8, 'וועד מרכזי');
INSERT INTO trn_cat_codes VALUES (9, 'גינון');


--
-- Name: accounts_pkey; Type: CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

ALTER TABLE ONLY accounts
    ADD CONSTRAINT accounts_pkey PRIMARY KEY (id);


--
-- Name: ad_cat_codes_pkey; Type: CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

ALTER TABLE ONLY ad_cat_codes
    ADD CONSTRAINT ad_cat_codes_pkey PRIMARY KEY (id);


--
-- Name: ads_pkey; Type: CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

ALTER TABLE ONLY ads
    ADD CONSTRAINT ads_pkey PRIMARY KEY (id);


--
-- Name: app_codes_pkey; Type: CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

ALTER TABLE ONLY app_codes
    ADD CONSTRAINT app_codes_pkey PRIMARY KEY (id);


--
-- Name: appartments_pkey; Type: CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

ALTER TABLE ONLY appartments
    ADD CONSTRAINT appartments_pkey PRIMARY KEY (id);


--
-- Name: apptaxes_pkey; Type: CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

ALTER TABLE ONLY app_taxes
    ADD CONSTRAINT apptaxes_pkey PRIMARY KEY (app_id, bld_id, start_date);


--
-- Name: apt_maintenance_pkey; Type: CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

ALTER TABLE ONLY apt_maintenance
    ADD CONSTRAINT apt_maintenance_pkey PRIMARY KEY (id);


--
-- Name: bank_codes_pkey; Type: CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

ALTER TABLE ONLY bank_codes
    ADD CONSTRAINT bank_codes_pkey PRIMARY KEY (id);


--
-- Name: buildings_pkey; Type: CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

ALTER TABLE ONLY buildings
    ADD CONSTRAINT buildings_pkey PRIMARY KEY (id);


--
-- Name: comment_codes_pkey; Type: CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

ALTER TABLE ONLY comment_codes
    ADD CONSTRAINT comment_codes_pkey PRIMARY KEY (id);


--
-- Name: comments_pkey; Type: CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

ALTER TABLE ONLY comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);


--
-- Name: contact_codes_pkey; Type: CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

ALTER TABLE ONLY contact_codes
    ADD CONSTRAINT contact_codes_pkey PRIMARY KEY (id);


--
-- Name: contacts_pkey; Type: CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

ALTER TABLE ONLY contacts
    ADD CONSTRAINT contacts_pkey PRIMARY KEY (id);


--
-- Name: forums_pkey; Type: CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

ALTER TABLE ONLY forums
    ADD CONSTRAINT forums_pkey PRIMARY KEY (id);


--
-- Name: incomes_pkey; Type: CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

ALTER TABLE ONLY incomes
    ADD CONSTRAINT incomes_pkey PRIMARY KEY (id);


--
-- Name: pay_codes_pkey; Type: CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

ALTER TABLE ONLY pay_codes
    ADD CONSTRAINT pay_codes_pkey PRIMARY KEY (id);


--
-- Name: poll_codes_pkey; Type: CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

ALTER TABLE ONLY poll_codes
    ADD CONSTRAINT poll_codes_pkey PRIMARY KEY (id);


--
-- Name: poll_options_pkey; Type: CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

ALTER TABLE ONLY poll_options
    ADD CONSTRAINT poll_options_pkey PRIMARY KEY (id, poll_id);


--
-- Name: pollattendents_app_num_key; Type: CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

ALTER TABLE ONLY poll_attendents
    ADD CONSTRAINT pollattendents_app_num_key UNIQUE (app_num);


--
-- Name: pollattendents_pkey; Type: CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

ALTER TABLE ONLY poll_attendents
    ADD CONSTRAINT pollattendents_pkey PRIMARY KEY (pol_id, bld_id, tnt_id);


--
-- Name: polls_pkey; Type: CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

ALTER TABLE ONLY polls
    ADD CONSTRAINT polls_pkey PRIMARY KEY (id);


--
-- Name: post_codes_pkey; Type: CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

ALTER TABLE ONLY post_codes
    ADD CONSTRAINT post_codes_pkey PRIMARY KEY (id);


--
-- Name: posts_pkey; Type: CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

ALTER TABLE ONLY posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);


--
-- Name: posttags_pkey; Type: CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

ALTER TABLE ONLY post_tags
    ADD CONSTRAINT posttags_pkey PRIMARY KEY (bld_id, post_id, tag_id);


--
-- Name: projects_pkey; Type: CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

ALTER TABLE ONLY projects
    ADD CONSTRAINT projects_pkey PRIMARY KEY (id, bld_id);


--
-- Name: receipts_pkey; Type: CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

ALTER TABLE ONLY receipts
    ADD CONSTRAINT receipts_pkey PRIMARY KEY (id);


--
-- Name: registries_pkey; Type: CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

ALTER TABLE ONLY registries
    ADD CONSTRAINT registries_pkey PRIMARY KEY (id);


--
-- Name: registries_tnt_email_key; Type: CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

ALTER TABLE ONLY registries
    ADD CONSTRAINT registries_tnt_email_key UNIQUE (tnt_email);


--
-- Name: registries_tnt_first_name_tnt_last_name_key; Type: CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

ALTER TABLE ONLY registries
    ADD CONSTRAINT registries_tnt_first_name_tnt_last_name_key UNIQUE (tnt_first_name, tnt_last_name);


--
-- Name: reminders_pkey; Type: CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

ALTER TABLE ONLY reminders
    ADD CONSTRAINT reminders_pkey PRIMARY KEY (id);


--
-- Name: sites_pkey; Type: CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

ALTER TABLE ONLY sites
    ADD CONSTRAINT sites_pkey PRIMARY KEY (id);


--
-- Name: tags_pkey; Type: CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

ALTER TABLE ONLY tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);


--
-- Name: task_codes_pkey; Type: CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

ALTER TABLE ONLY task_codes
    ADD CONSTRAINT task_codes_pkey PRIMARY KEY (id);


--
-- Name: tasks_pkey; Type: CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

ALTER TABLE ONLY tasks
    ADD CONSTRAINT tasks_pkey PRIMARY KEY (id);


--
-- Name: tenants_pkey; Type: CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

ALTER TABLE ONLY tenants
    ADD CONSTRAINT tenants_pkey PRIMARY KEY (id);


--
-- Name: ticket_codes_pkey; Type: CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

ALTER TABLE ONLY ticket_codes
    ADD CONSTRAINT ticket_codes_pkey PRIMARY KEY (id);


--
-- Name: ticket_history_pkey; Type: CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

ALTER TABLE ONLY ticket_history
    ADD CONSTRAINT ticket_history_pkey PRIMARY KEY (id);


--
-- Name: tickets_pkey; Type: CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

ALTER TABLE ONLY tickets
    ADD CONSTRAINT tickets_pkey PRIMARY KEY (id);


--
-- Name: todo_pkey; Type: CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

ALTER TABLE ONLY todo
    ADD CONSTRAINT todo_pkey PRIMARY KEY (id);


--
-- Name: transactions_pkey; Type: CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

ALTER TABLE ONLY transactions
    ADD CONSTRAINT transactions_pkey PRIMARY KEY (id);


--
-- Name: trn_cat_codes_pkey; Type: CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

ALTER TABLE ONLY trn_cat_codes
    ADD CONSTRAINT trn_cat_codes_pkey PRIMARY KEY (id);


--
-- Name: ads_addcurrentdate; Type: TRIGGER; Schema: public; Owner: mainvaadbait_il_com
--

CREATE TRIGGER ads_addcurrentdate BEFORE INSERT OR UPDATE ON ads FOR EACH ROW EXECUTE PROCEDURE ads_add_stamp();


--
-- Name: comments_addcurrentdate; Type: TRIGGER; Schema: public; Owner: mainvaadbait_il_com
--

CREATE TRIGGER comments_addcurrentdate BEFORE INSERT OR UPDATE ON comments FOR EACH ROW EXECUTE PROCEDURE comments_add_stamp();


--
-- Name: posts_addcurrentdate; Type: TRIGGER; Schema: public; Owner: mainvaadbait_il_com
--

CREATE TRIGGER posts_addcurrentdate BEFORE INSERT OR UPDATE ON posts FOR EACH ROW EXECUTE PROCEDURE posts_add_stamp();


--
-- Name: accounts_acc_bank_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE ONLY accounts
    ADD CONSTRAINT accounts_acc_bank_fkey FOREIGN KEY (acc_bank) REFERENCES bank_codes(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: accounts_bld_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE ONLY accounts
    ADD CONSTRAINT accounts_bld_id_fkey FOREIGN KEY (bld_id) REFERENCES buildings(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: ads_buildings_fk; Type: FK CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE ONLY ads
    ADD CONSTRAINT ads_buildings_fk FOREIGN KEY (bld_id) REFERENCES buildings(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: ads_category_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE ONLY ads
    ADD CONSTRAINT ads_category_fkey FOREIGN KEY (category) REFERENCES ad_cat_codes(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: app_taxes_app_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE ONLY app_taxes
    ADD CONSTRAINT app_taxes_app_id_fkey FOREIGN KEY (app_id) REFERENCES appartments(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: app_taxes_buildings_fk; Type: FK CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE ONLY app_taxes
    ADD CONSTRAINT app_taxes_buildings_fk FOREIGN KEY (bld_id) REFERENCES buildings(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: appartments_app_type_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE ONLY appartments
    ADD CONSTRAINT appartments_app_type_fkey FOREIGN KEY (app_type) REFERENCES app_codes(id);


--
-- Name: appartments_buildings_fk; Type: FK CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE ONLY appartments
    ADD CONSTRAINT appartments_buildings_fk FOREIGN KEY (bld_id) REFERENCES buildings(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: apt_maintenance_apt_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE ONLY apt_maintenance
    ADD CONSTRAINT apt_maintenance_apt_id_fkey FOREIGN KEY (apt_id) REFERENCES appartments(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: apt_maintenance_bld_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE ONLY apt_maintenance
    ADD CONSTRAINT apt_maintenance_bld_id_fkey FOREIGN KEY (bld_id) REFERENCES buildings(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: buildings_site_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE ONLY buildings
    ADD CONSTRAINT buildings_site_id_fkey FOREIGN KEY (site_id) REFERENCES sites(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: comments_author_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE ONLY comments
    ADD CONSTRAINT comments_author_id_fkey FOREIGN KEY (author_id) REFERENCES tenants(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: comments_buildings_fk; Type: FK CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE ONLY comments
    ADD CONSTRAINT comments_buildings_fk FOREIGN KEY (bld_id) REFERENCES buildings(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: comments_post_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE ONLY comments
    ADD CONSTRAINT comments_post_id_fkey FOREIGN KEY (post_id) REFERENCES posts(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: comments_status_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE ONLY comments
    ADD CONSTRAINT comments_status_fkey FOREIGN KEY (status) REFERENCES comment_codes(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: contacts_buildings_fk; Type: FK CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE ONLY contacts
    ADD CONSTRAINT contacts_buildings_fk FOREIGN KEY (bld_id) REFERENCES buildings(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: contacts_cnt_type_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE ONLY contacts
    ADD CONSTRAINT contacts_cnt_type_fkey FOREIGN KEY (cnt_type) REFERENCES contact_codes(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: forums_buildings_fk; Type: FK CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE ONLY forums
    ADD CONSTRAINT forums_buildings_fk FOREIGN KEY (bld_id) REFERENCES buildings(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: forums_forum_mngr_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE ONLY forums
    ADD CONSTRAINT forums_forum_mngr_fkey FOREIGN KEY (forum_mngr) REFERENCES tenants(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: incomes_buildings_fk; Type: FK CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE ONLY incomes
    ADD CONSTRAINT incomes_buildings_fk FOREIGN KEY (bld_id) REFERENCES buildings(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: incomes_inc_apt_num_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE ONLY incomes
    ADD CONSTRAINT incomes_inc_apt_num_fkey FOREIGN KEY (inc_apt_num) REFERENCES appartments(id) ON UPDATE CASCADE;


--
-- Name: incomes_inc_bank_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE ONLY incomes
    ADD CONSTRAINT incomes_inc_bank_fkey FOREIGN KEY (inc_bank) REFERENCES bank_codes(id) ON UPDATE CASCADE;


--
-- Name: incomes_prj_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE ONLY incomes
    ADD CONSTRAINT incomes_prj_id_fkey FOREIGN KEY (prj_id, bld_id) REFERENCES projects(id, bld_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: poll_attendents_option_selected_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE ONLY poll_attendents
    ADD CONSTRAINT poll_attendents_option_selected_fkey FOREIGN KEY (option_selected, pol_id) REFERENCES poll_options(id, poll_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: poll_attendents_pol_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE ONLY poll_attendents
    ADD CONSTRAINT poll_attendents_pol_id_fkey FOREIGN KEY (pol_id) REFERENCES polls(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: poll_attendents_tnt_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE ONLY poll_attendents
    ADD CONSTRAINT poll_attendents_tnt_id_fkey FOREIGN KEY (tnt_id) REFERENCES tenants(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: polls_buildings_fk; Type: FK CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE ONLY polls
    ADD CONSTRAINT polls_buildings_fk FOREIGN KEY (bld_id) REFERENCES buildings(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: polls_pol_type_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE ONLY polls
    ADD CONSTRAINT polls_pol_type_fkey FOREIGN KEY (pol_type) REFERENCES poll_codes(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: post_tags_buildings_fk; Type: FK CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE ONLY post_tags
    ADD CONSTRAINT post_tags_buildings_fk FOREIGN KEY (bld_id) REFERENCES buildings(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: post_tags_post_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE ONLY post_tags
    ADD CONSTRAINT post_tags_post_id_fkey FOREIGN KEY (post_id) REFERENCES posts(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: post_tags_tag_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE ONLY post_tags
    ADD CONSTRAINT post_tags_tag_id_fkey FOREIGN KEY (tag_id) REFERENCES tags(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: posts_author_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE ONLY posts
    ADD CONSTRAINT posts_author_id_fkey FOREIGN KEY (author_id) REFERENCES tenants(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: posts_buildings_fk; Type: FK CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE ONLY posts
    ADD CONSTRAINT posts_buildings_fk FOREIGN KEY (bld_id) REFERENCES buildings(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: posts_forum_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE ONLY posts
    ADD CONSTRAINT posts_forum_id_fkey FOREIGN KEY (forum_id) REFERENCES forums(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: posts_pst_status_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE ONLY posts
    ADD CONSTRAINT posts_pst_status_fkey FOREIGN KEY (pst_status) REFERENCES post_codes(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: projects_buildings_fk; Type: FK CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE ONLY projects
    ADD CONSTRAINT projects_buildings_fk FOREIGN KEY (bld_id) REFERENCES buildings(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: receipts_buildings_fk; Type: FK CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE ONLY receipts
    ADD CONSTRAINT receipts_buildings_fk FOREIGN KEY (bld_id) REFERENCES buildings(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: registries_bld_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE ONLY registries
    ADD CONSTRAINT registries_bld_id_fkey FOREIGN KEY (bld_id) REFERENCES buildings(id);


--
-- Name: registries_tnt_app_num_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE ONLY registries
    ADD CONSTRAINT registries_tnt_app_num_fkey FOREIGN KEY (tnt_app_num) REFERENCES appartments(id);


--
-- Name: reminders_apt_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE ONLY reminders
    ADD CONSTRAINT reminders_apt_id_fkey FOREIGN KEY (apt_id) REFERENCES appartments(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: reminders_buildings_fk; Type: FK CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE ONLY reminders
    ADD CONSTRAINT reminders_buildings_fk FOREIGN KEY (bld_id) REFERENCES buildings(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: tags_buildings_fk; Type: FK CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE ONLY tags
    ADD CONSTRAINT tags_buildings_fk FOREIGN KEY (bld_id) REFERENCES buildings(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: tasks_buildings_fk; Type: FK CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE ONLY tasks
    ADD CONSTRAINT tasks_buildings_fk FOREIGN KEY (bld_id) REFERENCES buildings(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: tasks_tnt_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE ONLY tasks
    ADD CONSTRAINT tasks_tnt_id_fkey FOREIGN KEY (tnt_id) REFERENCES tenants(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: tasks_tsk_status_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE ONLY tasks
    ADD CONSTRAINT tasks_tsk_status_fkey FOREIGN KEY (tsk_status) REFERENCES task_codes(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: taxes_buildings_fk; Type: FK CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE ONLY taxes
    ADD CONSTRAINT taxes_buildings_fk FOREIGN KEY (bld_id) REFERENCES buildings(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: tenants_buildings_fk; Type: FK CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE ONLY tenants
    ADD CONSTRAINT tenants_buildings_fk FOREIGN KEY (bld_id) REFERENCES buildings(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: tenants_tnt_app_num_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE ONLY tenants
    ADD CONSTRAINT tenants_tnt_app_num_fkey FOREIGN KEY (tnt_app_num) REFERENCES appartments(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: ticket_history_buildings_fk; Type: FK CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE ONLY ticket_history
    ADD CONSTRAINT ticket_history_buildings_fk FOREIGN KEY (bld_id) REFERENCES buildings(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: ticket_history_tkt_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE ONLY ticket_history
    ADD CONSTRAINT ticket_history_tkt_id_fkey FOREIGN KEY (tkt_id) REFERENCES tickets(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: ticket_history_tnt_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE ONLY ticket_history
    ADD CONSTRAINT ticket_history_tnt_id_fkey FOREIGN KEY (tnt_id) REFERENCES tenants(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: tickets_buildings_fk; Type: FK CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE ONLY tickets
    ADD CONSTRAINT tickets_buildings_fk FOREIGN KEY (bld_id) REFERENCES buildings(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: tickets_tkt_status_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE ONLY tickets
    ADD CONSTRAINT tickets_tkt_status_fkey FOREIGN KEY (tkt_status) REFERENCES ticket_codes(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: tickets_tnt_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE ONLY tickets
    ADD CONSTRAINT tickets_tnt_id_fkey FOREIGN KEY (tnt_id) REFERENCES tenants(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: transactions_acc_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE ONLY transactions
    ADD CONSTRAINT transactions_acc_id_fkey FOREIGN KEY (acc_id) REFERENCES accounts(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: transactions_buildings_fk; Type: FK CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE ONLY transactions
    ADD CONSTRAINT transactions_buildings_fk FOREIGN KEY (bld_id) REFERENCES buildings(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: transactions_prj_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE ONLY transactions
    ADD CONSTRAINT transactions_prj_id_fkey FOREIGN KEY (prj_id, bld_id) REFERENCES projects(id, bld_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: transactions_trn_cat_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE ONLY transactions
    ADD CONSTRAINT transactions_trn_cat_fkey FOREIGN KEY (trn_cat) REFERENCES trn_cat_codes(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgresql
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgresql;
GRANT ALL ON SCHEMA public TO postgresql;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

