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



--
-- Name: accounts_id_seq; Type: SEQUENCE; Schema: public; Owner: mainvaadbait_il_com
--

CREATE SEQUENCE accounts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- Name: accounts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mainvaadbait_il_com
--

ALTER SEQUENCE accounts_id_seq OWNED BY accounts.id;


--
-- Name: ad_cat_codes; Type: TABLE; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

CREATE TABLE ad_cat_codes (
    id integer NOT NULL,
    code_desc character varying(30)
);



--
-- Name: ad_cat_codes_seq_id; Type: SEQUENCE; Schema: public; Owner: mainvaadbait_il_com
--

CREATE SEQUENCE ad_cat_codes_seq_id
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



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



--
-- Name: ads_id_seq; Type: SEQUENCE; Schema: public; Owner: mainvaadbait_il_com
--

CREATE SEQUENCE ads_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- Name: ads_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mainvaadbait_il_com
--

ALTER SEQUENCE ads_id_seq OWNED BY ads.id;


--
-- Name: app_codes; Type: TABLE; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

CREATE TABLE app_codes (
    id integer NOT NULL,
    code_desc character varying(30)
);



--
-- Name: app_codes_id_seq; Type: SEQUENCE; Schema: public; Owner: mainvaadbait_il_com
--

CREATE SEQUENCE app_codes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- Name: app_codes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mainvaadbait_il_com
--

ALTER SEQUENCE app_codes_id_seq OWNED BY app_codes.id;


--
-- Name: app_codes_seq_id; Type: SEQUENCE; Schema: public; Owner: mainvaadbait_il_com
--

CREATE SEQUENCE app_codes_seq_id
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



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



--
-- Name: appartments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mainvaadbait_il_com
--

ALTER SEQUENCE appartments_id_seq OWNED BY appartments.id;


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



--
-- Name: apt_maintenance_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mainvaadbait_il_com
--

ALTER SEQUENCE apt_maintenance_id_seq OWNED BY apt_maintenance.id;


--
-- Name: bank_code_id_seq; Type: SEQUENCE; Schema: public; Owner: mainvaadbait_il_com
--

CREATE SEQUENCE bank_code_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- Name: bank_codes; Type: TABLE; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

CREATE TABLE bank_codes (
    id integer DEFAULT nextval('bank_code_id_seq'::regclass) NOT NULL,
    code_desc character varying(30)
);



--
-- Name: bank_codes_seq_id; Type: SEQUENCE; Schema: public; Owner: mainvaadbait_il_com
--

CREATE SEQUENCE bank_codes_seq_id
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



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



--
-- Name: buildings_id_seq; Type: SEQUENCE; Schema: public; Owner: mainvaadbait_il_com
--

CREATE SEQUENCE buildings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- Name: buildings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mainvaadbait_il_com
--

ALTER SEQUENCE buildings_id_seq OWNED BY buildings.id;


--
-- Name: comment_codes; Type: TABLE; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

CREATE TABLE comment_codes (
    id integer NOT NULL,
    code_desc character varying(30)
);



--
-- Name: comment_codes_id_seq; Type: SEQUENCE; Schema: public; Owner: mainvaadbait_il_com
--

CREATE SEQUENCE comment_codes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- Name: comment_codes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mainvaadbait_il_com
--

ALTER SEQUENCE comment_codes_id_seq OWNED BY comment_codes.id;


--
-- Name: comment_codes_seq_id; Type: SEQUENCE; Schema: public; Owner: mainvaadbait_il_com
--

CREATE SEQUENCE comment_codes_seq_id
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



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



--
-- Name: comments_id_seq; Type: SEQUENCE; Schema: public; Owner: mainvaadbait_il_com
--

CREATE SEQUENCE comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- Name: comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mainvaadbait_il_com
--

ALTER SEQUENCE comments_id_seq OWNED BY comments.id;


--
-- Name: contact_codes_id_seq; Type: SEQUENCE; Schema: public; Owner: mainvaadbait_il_com
--

CREATE SEQUENCE contact_codes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- Name: contact_codes; Type: TABLE; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

CREATE TABLE contact_codes (
    id integer DEFAULT nextval('contact_codes_id_seq'::regclass) NOT NULL,
    code_desc character varying(30)
);



--
-- Name: contact_codes_seq_id; Type: SEQUENCE; Schema: public; Owner: mainvaadbait_il_com
--

CREATE SEQUENCE contact_codes_seq_id
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



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



--
-- Name: contacts_id_seq; Type: SEQUENCE; Schema: public; Owner: mainvaadbait_il_com
--

CREATE SEQUENCE contacts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- Name: contacts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mainvaadbait_il_com
--

ALTER SEQUENCE contacts_id_seq OWNED BY contacts.id;


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



--
-- Name: forums_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mainvaadbait_il_com
--

ALTER SEQUENCE forums_id_seq OWNED BY forums.id;


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



--
-- Name: incomes_id_seq; Type: SEQUENCE; Schema: public; Owner: mainvaadbait_il_com
--

CREATE SEQUENCE incomes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- Name: incomes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mainvaadbait_il_com
--

ALTER SEQUENCE incomes_id_seq OWNED BY incomes.id;


--
-- Name: pay_codes; Type: TABLE; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

CREATE TABLE pay_codes (
    id integer NOT NULL,
    code_desc character varying(30)
);



--
-- Name: pay_codes_id_seqpay_codes_id_seq; Type: SEQUENCE; Schema: public; Owner: mainvaadbait_il_com
--

CREATE SEQUENCE pay_codes_id_seqpay_codes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- Name: pay_codes_seq_id; Type: SEQUENCE; Schema: public; Owner: mainvaadbait_il_com
--

CREATE SEQUENCE pay_codes_seq_id
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



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



--
-- Name: poll_codes; Type: TABLE; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

CREATE TABLE poll_codes (
    id integer NOT NULL,
    code_desc character varying(30)
);



--
-- Name: poll_codes_seq_id; Type: SEQUENCE; Schema: public; Owner: mainvaadbait_il_com
--

CREATE SEQUENCE poll_codes_seq_id
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



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



--
-- Name: polloptions_id_seq; Type: SEQUENCE; Schema: public; Owner: mainvaadbait_il_com
--

CREATE SEQUENCE polloptions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- Name: polloptions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mainvaadbait_il_com
--

ALTER SEQUENCE polloptions_id_seq OWNED BY poll_options.id;


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



--
-- Name: polls_id_seq; Type: SEQUENCE; Schema: public; Owner: mainvaadbait_il_com
--

CREATE SEQUENCE polls_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- Name: polls_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mainvaadbait_il_com
--

ALTER SEQUENCE polls_id_seq OWNED BY polls.id;


--
-- Name: post_codes; Type: TABLE; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

CREATE TABLE post_codes (
    id integer NOT NULL,
    code_desc character varying(30)
);



--
-- Name: post_codes_seq_id; Type: SEQUENCE; Schema: public; Owner: mainvaadbait_il_com
--

CREATE SEQUENCE post_codes_seq_id
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- Name: post_tags; Type: TABLE; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

CREATE TABLE post_tags (
    bld_id integer NOT NULL,
    post_id integer NOT NULL,
    tag_id integer NOT NULL
);



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



--
-- Name: posts_id_seq; Type: SEQUENCE; Schema: public; Owner: mainvaadbait_il_com
--

CREATE SEQUENCE posts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- Name: posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mainvaadbait_il_com
--

ALTER SEQUENCE posts_id_seq OWNED BY posts.id;


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



--
-- Name: projects_id_seq; Type: SEQUENCE; Schema: public; Owner: mainvaadbait_il_com
--

CREATE SEQUENCE projects_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- Name: projects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mainvaadbait_il_com
--

ALTER SEQUENCE projects_id_seq OWNED BY projects.id;


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



--
-- Name: receipts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mainvaadbait_il_com
--

ALTER SEQUENCE receipts_id_seq OWNED BY receipts.id;


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



--
-- Name: reminders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mainvaadbait_il_com
--

ALTER SEQUENCE reminders_id_seq OWNED BY reminders.id;


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



--
-- Name: sites_id_seq; Type: SEQUENCE; Schema: public; Owner: mainvaadbait_il_com
--

CREATE SEQUENCE sites_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- Name: sites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mainvaadbait_il_com
--

ALTER SEQUENCE sites_id_seq OWNED BY sites.id;


--
-- Name: tags; Type: TABLE; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

CREATE TABLE tags (
    id integer NOT NULL,
    bld_id integer NOT NULL,
    tag_name character varying(128) NOT NULL,
    frequency integer DEFAULT 1
);



--
-- Name: tags_id_seq; Type: SEQUENCE; Schema: public; Owner: mainvaadbait_il_com
--

CREATE SEQUENCE tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- Name: tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mainvaadbait_il_com
--

ALTER SEQUENCE tags_id_seq OWNED BY tags.id;


--
-- Name: task_codes; Type: TABLE; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

CREATE TABLE task_codes (
    id integer NOT NULL,
    code_desc character varying(30)
);



--
-- Name: task_codes_seq_id; Type: SEQUENCE; Schema: public; Owner: mainvaadbait_il_com
--

CREATE SEQUENCE task_codes_seq_id
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



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



--
-- Name: tasks_id_seq; Type: SEQUENCE; Schema: public; Owner: mainvaadbait_il_com
--

CREATE SEQUENCE tasks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- Name: tasks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mainvaadbait_il_com
--

ALTER SEQUENCE tasks_id_seq OWNED BY tasks.id;


--
-- Name: taxes; Type: TABLE; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

CREATE TABLE taxes (
    bld_id integer NOT NULL,
    tax_start_date date NOT NULL,
    tax_amount double precision NOT NULL
);



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



--
-- Name: tenants_id_seq; Type: SEQUENCE; Schema: public; Owner: mainvaadbait_il_com
--

CREATE SEQUENCE tenants_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- Name: tenants_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mainvaadbait_il_com
--

ALTER SEQUENCE tenants_id_seq OWNED BY tenants.id;


--
-- Name: ticket_codes; Type: TABLE; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

CREATE TABLE ticket_codes (
    id integer NOT NULL,
    code_desc character varying(30)
);



--
-- Name: ticket_codes_seq_id; Type: SEQUENCE; Schema: public; Owner: mainvaadbait_il_com
--

CREATE SEQUENCE ticket_codes_seq_id
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



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



--
-- Name: tickets_id_seq; Type: SEQUENCE; Schema: public; Owner: mainvaadbait_il_com
--

CREATE SEQUENCE tickets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- Name: tickets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mainvaadbait_il_com
--

ALTER SEQUENCE tickets_id_seq OWNED BY tickets.id;


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



--
-- Name: todo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mainvaadbait_il_com
--

ALTER SEQUENCE todo_id_seq OWNED BY todo.id;


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



--
-- Name: transactions_id_seq; Type: SEQUENCE; Schema: public; Owner: mainvaadbait_il_com
--

CREATE SEQUENCE transactions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- Name: transactions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mainvaadbait_il_com
--

ALTER SEQUENCE transactions_id_seq OWNED BY transactions.id;


--
-- Name: trn_cat_codes; Type: TABLE; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

CREATE TABLE trn_cat_codes (
    id integer NOT NULL,
    code_desc character varying(30)
);



--
-- Name: trn_cat_codes_seq_id; Type: SEQUENCE; Schema: public; Owner: mainvaadbait_il_com
--

CREATE SEQUENCE trn_cat_codes_seq_id
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- Name: v_incomes; Type: VIEW; Schema: public; Owner: mainvaadbait_il_com
--

CREATE VIEW v_incomes AS
    SELECT incomes.id, incomes.bld_id, incomes.prj_id, incomes.inc_date, incomes.inc_until_date, incomes.inc_amount, incomes.inc_paid, incomes.inc_branch, incomes.inc_chk_no, incomes.inc_chk_date, incomes.inc_apt_num, incomes.inc_bank, date_part('month'::text, incomes.inc_date) AS mm, date_part('year'::text, incomes.inc_date) AS yy FROM incomes;



--
-- Name: v_trans; Type: VIEW; Schema: public; Owner: mainvaadbait_il_com
--

CREATE VIEW v_trans AS
    SELECT transactions.id, transactions.bld_id, transactions.acc_id, transactions.prj_id, transactions.trn_date, transactions.trn_amount, transactions.trn_debit, transactions.trn_reference, transactions.trn_desc, transactions.trn_cat, date_part('month'::text, transactions.trn_date) AS mm, date_part('year'::text, transactions.trn_date) AS yy FROM transactions;



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
-- Name: accounts_pkey; Type: CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

ALTER TABLE ONLY accounts
    ADD CONSTRAINT accounts_pkey PRIMARY KEY (id,bld_id);


--
-- Name: ad_cat_codes_pkey; Type: CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

ALTER TABLE ONLY ad_cat_codes
    ADD CONSTRAINT ad_cat_codes_pkey PRIMARY KEY (id);


--
-- Name: ads_pkey; Type: CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

ALTER TABLE ONLY ads
    ADD CONSTRAINT ads_pkey PRIMARY KEY (id,bld_id);


--
-- Name: app_codes_pkey; Type: CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

ALTER TABLE ONLY app_codes
    ADD CONSTRAINT app_codes_pkey PRIMARY KEY (id);


--
-- Name: appartments_pkey; Type: CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

ALTER TABLE ONLY appartments
    ADD CONSTRAINT appartments_pkey PRIMARY KEY (id,bld_id);


--
-- Name: apptaxes_pkey; Type: CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

ALTER TABLE ONLY app_taxes
    ADD CONSTRAINT apptaxes_pkey PRIMARY KEY (app_id, bld_id, start_date);


--
-- Name: apt_maintenance_pkey; Type: CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

ALTER TABLE ONLY apt_maintenance
    ADD CONSTRAINT apt_maintenance_pkey PRIMARY KEY (id,bld_id);


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
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id,bld_id);


--
-- Name: contact_codes_pkey; Type: CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

ALTER TABLE ONLY contact_codes
    ADD CONSTRAINT contact_codes_pkey PRIMARY KEY (id);


--
-- Name: contacts_pkey; Type: CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

ALTER TABLE ONLY contacts
    ADD CONSTRAINT contacts_pkey PRIMARY KEY (id,bld_id);


--
-- Name: forums_pkey; Type: CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

ALTER TABLE ONLY forums
    ADD CONSTRAINT forums_pkey PRIMARY KEY (id,bld_id);


--
-- Name: incomes_pkey; Type: CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

ALTER TABLE ONLY incomes
    ADD CONSTRAINT incomes_pkey PRIMARY KEY (id,bld_id);


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
    ADD CONSTRAINT poll_options_pkey PRIMARY KEY (id, poll_id,bld_id);


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
    ADD CONSTRAINT polls_pkey PRIMARY KEY (id,bld_id);


--
-- Name: post_codes_pkey; Type: CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

ALTER TABLE ONLY post_codes
    ADD CONSTRAINT post_codes_pkey PRIMARY KEY (id);


--
-- Name: posts_pkey; Type: CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

ALTER TABLE ONLY posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id,bld_id);


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
    ADD CONSTRAINT receipts_pkey PRIMARY KEY (id,bld_id);


--
-- Name: registries_pkey; Type: CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

ALTER TABLE ONLY registries
    ADD CONSTRAINT registries_pkey PRIMARY KEY (id,bld_id);


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
    ADD CONSTRAINT reminders_pkey PRIMARY KEY (id,bld_id);


--
-- Name: sites_pkey; Type: CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

ALTER TABLE ONLY sites
    ADD CONSTRAINT sites_pkey PRIMARY KEY (id);


--
-- Name: tags_pkey; Type: CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

ALTER TABLE ONLY tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id,bld_id);


--
-- Name: task_codes_pkey; Type: CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

ALTER TABLE ONLY task_codes
    ADD CONSTRAINT task_codes_pkey PRIMARY KEY (id);


--
-- Name: tasks_pkey; Type: CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

ALTER TABLE ONLY tasks
    ADD CONSTRAINT tasks_pkey PRIMARY KEY (id,bld_id);


--
-- Name: tenants_pkey; Type: CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

ALTER TABLE ONLY tenants
    ADD CONSTRAINT tenants_pkey PRIMARY KEY (id,bld_id);


--
-- Name: ticket_codes_pkey; Type: CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

ALTER TABLE ONLY ticket_codes
    ADD CONSTRAINT ticket_codes_pkey PRIMARY KEY (id);


--
-- Name: ticket_history_pkey; Type: CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

ALTER TABLE ONLY ticket_history
    ADD CONSTRAINT ticket_history_pkey PRIMARY KEY (id,bld_id);


--
-- Name: tickets_pkey; Type: CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

ALTER TABLE ONLY tickets
    ADD CONSTRAINT tickets_pkey PRIMARY KEY (id,bld_id);


--
-- Name: todo_pkey; Type: CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

ALTER TABLE ONLY todo
    ADD CONSTRAINT todo_pkey PRIMARY KEY (id);


--
-- Name: transactions_pkey; Type: CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com; Tablespace: 
--

ALTER TABLE ONLY transactions
    ADD CONSTRAINT transactions_pkey PRIMARY KEY (id,bld_id);


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
    ADD CONSTRAINT app_taxes_app_id_fkey FOREIGN KEY (app_id,bld_id) REFERENCES appartments(id,bld_id) ON UPDATE CASCADE ON DELETE RESTRICT;


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
    ADD CONSTRAINT apt_maintenance_apt_id_fkey FOREIGN KEY (apt_id,bld_id) REFERENCES appartments(id,bld_id) ON UPDATE CASCADE ON DELETE RESTRICT;


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
    ADD CONSTRAINT comments_author_id_fkey FOREIGN KEY (author_id,bld_id) REFERENCES tenants(id,bld_id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: comments_buildings_fk; Type: FK CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE ONLY comments
    ADD CONSTRAINT comments_buildings_fk FOREIGN KEY (bld_id) REFERENCES buildings(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: comments_post_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE ONLY comments
    ADD CONSTRAINT comments_post_id_fkey FOREIGN KEY (post_id,bld_id) REFERENCES posts(id,bld_id) ON UPDATE CASCADE ON DELETE CASCADE;


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
    ADD CONSTRAINT forums_forum_mngr_fkey FOREIGN KEY (forum_mngr,bld_id) REFERENCES tenants(id,bld_id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: incomes_buildings_fk; Type: FK CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE ONLY incomes
    ADD CONSTRAINT incomes_buildings_fk FOREIGN KEY (bld_id) REFERENCES buildings(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: incomes_inc_apt_num_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE ONLY incomes
    ADD CONSTRAINT incomes_inc_apt_num_fkey FOREIGN KEY (inc_apt_num,bld_id) REFERENCES appartments(id,bld_id) ON UPDATE CASCADE;


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
    ADD CONSTRAINT poll_attendents_option_selected_fkey FOREIGN KEY (option_selected, pol_id,bld_id) REFERENCES poll_options(id, poll_id,bld_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: poll_attendents_pol_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE ONLY poll_attendents
    ADD CONSTRAINT poll_attendents_pol_id_fkey FOREIGN KEY (pol_id,bld_id) REFERENCES polls(id,bld_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: poll_attendents_tnt_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE ONLY poll_attendents
    ADD CONSTRAINT poll_attendents_tnt_id_fkey FOREIGN KEY (tnt_id,bld_id) REFERENCES tenants(id,bld_id) ON UPDATE CASCADE ON DELETE CASCADE;


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
    ADD CONSTRAINT post_tags_post_id_fkey FOREIGN KEY (post_id,bld_id) REFERENCES posts(id,bld_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: post_tags_tag_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE ONLY post_tags
    ADD CONSTRAINT post_tags_tag_id_fkey FOREIGN KEY (tag_id,bld_id) REFERENCES tags(id,bld_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: posts_author_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE ONLY posts
    ADD CONSTRAINT posts_author_id_fkey FOREIGN KEY (author_id,bld_id) REFERENCES tenants(id,bld_id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: posts_buildings_fk; Type: FK CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE ONLY posts
    ADD CONSTRAINT posts_buildings_fk FOREIGN KEY (bld_id) REFERENCES buildings(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: posts_forum_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE ONLY posts
    ADD CONSTRAINT posts_forum_id_fkey FOREIGN KEY (forum_id,bld_id) REFERENCES forums(id,bld_id) ON UPDATE CASCADE ON DELETE CASCADE;


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
    ADD CONSTRAINT registries_tnt_app_num_fkey FOREIGN KEY (tnt_app_num,bld_id) REFERENCES appartments(id,bld_id);


--
-- Name: reminders_apt_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE ONLY reminders
    ADD CONSTRAINT reminders_apt_id_fkey FOREIGN KEY (apt_id,bld_id) REFERENCES appartments(id,bld_id) ON UPDATE CASCADE ON DELETE RESTRICT;


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
    ADD CONSTRAINT tasks_tnt_id_fkey FOREIGN KEY (tnt_id,bld_id) REFERENCES tenants(id,bld_id) ON UPDATE CASCADE ON DELETE CASCADE;


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
    ADD CONSTRAINT tenants_tnt_app_num_fkey FOREIGN KEY (tnt_app_num,bld_id) REFERENCES appartments(id,bld_id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: ticket_history_buildings_fk; Type: FK CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE ONLY ticket_history
    ADD CONSTRAINT ticket_history_buildings_fk FOREIGN KEY (bld_id) REFERENCES buildings(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: ticket_history_tkt_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE ONLY ticket_history
    ADD CONSTRAINT ticket_history_tkt_id_fkey FOREIGN KEY (tkt_id,bld_id) REFERENCES tickets(id,bld_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: ticket_history_tnt_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE ONLY ticket_history
    ADD CONSTRAINT ticket_history_tnt_id_fkey FOREIGN KEY (tnt_id,bld_id) REFERENCES tenants(id,bld_id) ON UPDATE CASCADE ON DELETE CASCADE;


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
    ADD CONSTRAINT tickets_tnt_id_fkey FOREIGN KEY (tnt_id,bld_id) REFERENCES tenants(id,bld_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: transactions_acc_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mainvaadbait_il_com
--

ALTER TABLE ONLY transactions
    ADD CONSTRAINT transactions_acc_id_fkey FOREIGN KEY (acc_id,bld_id) REFERENCES accounts(id,bld_id) ON UPDATE CASCADE ON DELETE RESTRICT;


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


--
-- PostgreSQL database dump complete
--


