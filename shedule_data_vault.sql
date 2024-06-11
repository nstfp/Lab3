--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1
-- Dumped by pg_dump version 15.1

-- Started on 2022-11-16 23:24:04

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
-- TOC entry 3473 (class 1262 OID 19122)
-- Name: schedule_data_vault; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE schedule_data_vault WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';


ALTER DATABASE schedule_data_vault OWNER TO postgres;

\connect schedule_data_vault

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
-- TOC entry 214 (class 1259 OID 19130)
-- Name: hub_day; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.hub_day (
    hash_key text NOT NULL,
    load_date date NOT NULL,
    record_source text NOT NULL,
    number integer NOT NULL
);


ALTER TABLE public.hub_day OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 19158)
-- Name: hub_discipline; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.hub_discipline (
    hash_key text NOT NULL,
    load_date date NOT NULL,
    record_source text NOT NULL,
    number integer NOT NULL
);


ALTER TABLE public.hub_discipline OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 19137)
-- Name: hub_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.hub_group (
    hash_key text NOT NULL,
    load_date date NOT NULL,
    record_source text NOT NULL,
    number integer NOT NULL
);


ALTER TABLE public.hub_group OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 19144)
-- Name: hub_plan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.hub_plan (
    hash_key text NOT NULL,
    load_date date NOT NULL,
    record_source text NOT NULL,
    number integer NOT NULL
);


ALTER TABLE public.hub_plan OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 19151)
-- Name: hub_teacher; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.hub_teacher (
    hash_key text NOT NULL,
    load_date date NOT NULL,
    record_source text NOT NULL,
    number integer NOT NULL
);


ALTER TABLE public.hub_teacher OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 19216)
-- Name: lnk_day_discipline; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lnk_day_discipline (
    hash_key text NOT NULL,
    load_date date NOT NULL,
    record_source text NOT NULL,
    day_hash_key text NOT NULL,
    discipline_hash_key text NOT NULL
);


ALTER TABLE public.lnk_day_discipline OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 19199)
-- Name: lnk_day_teacher; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lnk_day_teacher (
    hash_key text NOT NULL,
    load_date date NOT NULL,
    record_source text NOT NULL,
    day_hash_key text NOT NULL,
    teacher_hash_key text NOT NULL
);


ALTER TABLE public.lnk_day_teacher OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 19165)
-- Name: lnk_group_day; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lnk_group_day (
    hash_key text NOT NULL,
    load_date date NOT NULL,
    record_source text NOT NULL,
    group_hash_key text NOT NULL,
    day_hash_key text NOT NULL
);


ALTER TABLE public.lnk_group_day OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 19182)
-- Name: lnk_group_plan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lnk_group_plan (
    hash_key text NOT NULL,
    load_date date NOT NULL,
    record_source text NOT NULL,
    group_hash_key text NOT NULL,
    plan_hash_key text NOT NULL
);


ALTER TABLE public.lnk_group_plan OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 19233)
-- Name: lnk_plan_discipline; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lnk_plan_discipline (
    hash_key text NOT NULL,
    load_date date NOT NULL,
    record_source text NOT NULL,
    plan_hash_key text NOT NULL,
    discipline_hash_key text NOT NULL
);


ALTER TABLE public.lnk_plan_discipline OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 19262)
-- Name: sat_day; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sat_day (
    hash_key text NOT NULL,
    load_date date NOT NULL,
    record_source text NOT NULL,
    date date NOT NULL,
    created_at date NOT NULL,
    updated_at date NOT NULL
);


ALTER TABLE public.sat_day OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 19357)
-- Name: sat_day_discipline; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sat_day_discipline (
    hash_key text NOT NULL,
    load_date date NOT NULL,
    record_source text NOT NULL,
    quantity integer NOT NULL,
    created_at date NOT NULL
);


ALTER TABLE public.sat_day_discipline OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 19333)
-- Name: sat_day_teacher; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sat_day_teacher (
    hash_key text NOT NULL,
    load_date date NOT NULL,
    record_source text NOT NULL,
    quantity integer NOT NULL,
    created_at date NOT NULL
);


ALTER TABLE public.sat_day_teacher OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 19297)
-- Name: sat_discipline; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sat_discipline (
    hash_key text NOT NULL,
    load_date date NOT NULL,
    record_source text NOT NULL,
    name text NOT NULL,
    created_at date NOT NULL,
    updated_at date NOT NULL
);


ALTER TABLE public.sat_discipline OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 19250)
-- Name: sat_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sat_group (
    hash_key text NOT NULL,
    load_date date NOT NULL,
    record_source text NOT NULL,
    name text NOT NULL,
    created_at date NOT NULL,
    updated_at date NOT NULL
);


ALTER TABLE public.sat_group OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 19309)
-- Name: sat_group_day; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sat_group_day (
    hash_key text NOT NULL,
    load_date date NOT NULL,
    record_source text NOT NULL,
    quantity integer NOT NULL,
    created_at date NOT NULL
);


ALTER TABLE public.sat_group_day OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 19321)
-- Name: sat_group_plan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sat_group_plan (
    hash_key text NOT NULL,
    load_date date NOT NULL,
    record_source text NOT NULL,
    quantity integer NOT NULL,
    created_at date NOT NULL
);


ALTER TABLE public.sat_group_plan OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 19272)
-- Name: sat_plan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sat_plan (
    hash_key text NOT NULL,
    load_date date NOT NULL,
    record_source text NOT NULL,
    hours integer NOT NULL,
    created_at date NOT NULL,
    updated_at date NOT NULL
);


ALTER TABLE public.sat_plan OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 19345)
-- Name: sat_plan_discipline; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sat_plan_discipline (
    hash_key text NOT NULL,
    load_date date NOT NULL,
    record_source text NOT NULL,
    quantity integer NOT NULL,
    created_at date NOT NULL
);


ALTER TABLE public.sat_plan_discipline OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 19284)
-- Name: sat_teacher; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sat_teacher (
    hash_key text NOT NULL,
    load_date date NOT NULL,
    record_source text NOT NULL,
    name text NOT NULL,
    hours integer NOT NULL,
    created_at date NOT NULL,
    updated_at date NOT NULL
);


ALTER TABLE public.sat_teacher OWNER TO postgres;

--
-- TOC entry 3448 (class 0 OID 19130)
-- Dependencies: 214
-- Data for Name: hub_day; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.hub_day (hash_key, load_date, record_source, number) FROM stdin;
\.


--
-- TOC entry 3452 (class 0 OID 19158)
-- Dependencies: 218
-- Data for Name: hub_discipline; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.hub_discipline (hash_key, load_date, record_source, number) FROM stdin;
\.


--
-- TOC entry 3449 (class 0 OID 19137)
-- Dependencies: 215
-- Data for Name: hub_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.hub_group (hash_key, load_date, record_source, number) FROM stdin;
\.


--
-- TOC entry 3450 (class 0 OID 19144)
-- Dependencies: 216
-- Data for Name: hub_plan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.hub_plan (hash_key, load_date, record_source, number) FROM stdin;
\.


--
-- TOC entry 3451 (class 0 OID 19151)
-- Dependencies: 217
-- Data for Name: hub_teacher; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.hub_teacher (hash_key, load_date, record_source, number) FROM stdin;
\.


--
-- TOC entry 3456 (class 0 OID 19216)
-- Dependencies: 222
-- Data for Name: lnk_day_discipline; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.lnk_day_discipline (hash_key, load_date, record_source, day_hash_key, discipline_hash_key) FROM stdin;
\.


--
-- TOC entry 3455 (class 0 OID 19199)
-- Dependencies: 221
-- Data for Name: lnk_day_teacher; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.lnk_day_teacher (hash_key, load_date, record_source, day_hash_key, teacher_hash_key) FROM stdin;
\.


--
-- TOC entry 3453 (class 0 OID 19165)
-- Dependencies: 219
-- Data for Name: lnk_group_day; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.lnk_group_day (hash_key, load_date, record_source, group_hash_key, day_hash_key) FROM stdin;
\.


--
-- TOC entry 3454 (class 0 OID 19182)
-- Dependencies: 220
-- Data for Name: lnk_group_plan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.lnk_group_plan (hash_key, load_date, record_source, group_hash_key, plan_hash_key) FROM stdin;
\.


--
-- TOC entry 3457 (class 0 OID 19233)
-- Dependencies: 223
-- Data for Name: lnk_plan_discipline; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.lnk_plan_discipline (hash_key, load_date, record_source, plan_hash_key, discipline_hash_key) FROM stdin;
\.


--
-- TOC entry 3459 (class 0 OID 19262)
-- Dependencies: 225
-- Data for Name: sat_day; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sat_day (hash_key, load_date, record_source, date, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3467 (class 0 OID 19357)
-- Dependencies: 233
-- Data for Name: sat_day_discipline; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sat_day_discipline (hash_key, load_date, record_source, quantity, created_at) FROM stdin;
\.


--
-- TOC entry 3465 (class 0 OID 19333)
-- Dependencies: 231
-- Data for Name: sat_day_teacher; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sat_day_teacher (hash_key, load_date, record_source, quantity, created_at) FROM stdin;
\.


--
-- TOC entry 3462 (class 0 OID 19297)
-- Dependencies: 228
-- Data for Name: sat_discipline; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sat_discipline (hash_key, load_date, record_source, name, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3458 (class 0 OID 19250)
-- Dependencies: 224
-- Data for Name: sat_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sat_group (hash_key, load_date, record_source, name, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3463 (class 0 OID 19309)
-- Dependencies: 229
-- Data for Name: sat_group_day; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sat_group_day (hash_key, load_date, record_source, quantity, created_at) FROM stdin;
\.


--
-- TOC entry 3464 (class 0 OID 19321)
-- Dependencies: 230
-- Data for Name: sat_group_plan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sat_group_plan (hash_key, load_date, record_source, quantity, created_at) FROM stdin;
\.


--
-- TOC entry 3460 (class 0 OID 19272)
-- Dependencies: 226
-- Data for Name: sat_plan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sat_plan (hash_key, load_date, record_source, hours, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3466 (class 0 OID 19345)
-- Dependencies: 232
-- Data for Name: sat_plan_discipline; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sat_plan_discipline (hash_key, load_date, record_source, quantity, created_at) FROM stdin;
\.


--
-- TOC entry 3461 (class 0 OID 19284)
-- Dependencies: 227
-- Data for Name: sat_teacher; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sat_teacher (hash_key, load_date, record_source, name, hours, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3249 (class 2606 OID 19136)
-- Name: hub_day hub_day_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hub_day
    ADD CONSTRAINT hub_day_pkey PRIMARY KEY (hash_key);


--
-- TOC entry 3257 (class 2606 OID 19164)
-- Name: hub_discipline hub_discipline_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hub_discipline
    ADD CONSTRAINT hub_discipline_pkey PRIMARY KEY (hash_key);


--
-- TOC entry 3251 (class 2606 OID 19143)
-- Name: hub_group hub_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hub_group
    ADD CONSTRAINT hub_group_pkey PRIMARY KEY (hash_key);


--
-- TOC entry 3253 (class 2606 OID 19150)
-- Name: hub_plan hub_plan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hub_plan
    ADD CONSTRAINT hub_plan_pkey PRIMARY KEY (hash_key);


--
-- TOC entry 3255 (class 2606 OID 19157)
-- Name: hub_teacher hub_teacher_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hub_teacher
    ADD CONSTRAINT hub_teacher_pkey PRIMARY KEY (hash_key);


--
-- TOC entry 3265 (class 2606 OID 19222)
-- Name: lnk_day_discipline lnk_day_discipline_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lnk_day_discipline
    ADD CONSTRAINT lnk_day_discipline_pkey PRIMARY KEY (hash_key);


--
-- TOC entry 3263 (class 2606 OID 19205)
-- Name: lnk_day_teacher lnk_day_teacher_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lnk_day_teacher
    ADD CONSTRAINT lnk_day_teacher_pkey PRIMARY KEY (hash_key);


--
-- TOC entry 3259 (class 2606 OID 19171)
-- Name: lnk_group_day lnk_group_day_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lnk_group_day
    ADD CONSTRAINT lnk_group_day_pkey PRIMARY KEY (hash_key);


--
-- TOC entry 3261 (class 2606 OID 19188)
-- Name: lnk_group_plan lnk_group_plan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lnk_group_plan
    ADD CONSTRAINT lnk_group_plan_pkey PRIMARY KEY (hash_key);


--
-- TOC entry 3267 (class 2606 OID 19239)
-- Name: lnk_plan_discipline lnk_plan_discipline_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lnk_plan_discipline
    ADD CONSTRAINT lnk_plan_discipline_pkey PRIMARY KEY (hash_key);


--
-- TOC entry 3285 (class 2606 OID 19363)
-- Name: sat_day_discipline sat_day_discipline_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sat_day_discipline
    ADD CONSTRAINT sat_day_discipline_pkey PRIMARY KEY (hash_key);


--
-- TOC entry 3281 (class 2606 OID 19339)
-- Name: sat_day_teacher sat_day_teacher_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sat_day_teacher
    ADD CONSTRAINT sat_day_teacher_pkey PRIMARY KEY (hash_key);


--
-- TOC entry 3275 (class 2606 OID 19303)
-- Name: sat_discipline sat_discipline_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sat_discipline
    ADD CONSTRAINT sat_discipline_pkey PRIMARY KEY (hash_key);


--
-- TOC entry 3277 (class 2606 OID 19315)
-- Name: sat_group_day sat_group_day_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sat_group_day
    ADD CONSTRAINT sat_group_day_pkey PRIMARY KEY (hash_key);


--
-- TOC entry 3269 (class 2606 OID 19256)
-- Name: sat_group sat_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sat_group
    ADD CONSTRAINT sat_group_pkey PRIMARY KEY (hash_key);


--
-- TOC entry 3279 (class 2606 OID 19327)
-- Name: sat_group_plan sat_group_plan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sat_group_plan
    ADD CONSTRAINT sat_group_plan_pkey PRIMARY KEY (hash_key);


--
-- TOC entry 3283 (class 2606 OID 19351)
-- Name: sat_plan_discipline sat_plan_discipline_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sat_plan_discipline
    ADD CONSTRAINT sat_plan_discipline_pkey PRIMARY KEY (hash_key);


--
-- TOC entry 3271 (class 2606 OID 19278)
-- Name: sat_plan sat_plan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sat_plan
    ADD CONSTRAINT sat_plan_pkey PRIMARY KEY (hash_key);


--
-- TOC entry 3273 (class 2606 OID 19290)
-- Name: sat_teacher sat_teacher_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sat_teacher
    ADD CONSTRAINT sat_teacher_pkey PRIMARY KEY (hash_key);


--
-- TOC entry 3305 (class 2606 OID 19364)
-- Name: sat_day_discipline day_discipline_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sat_day_discipline
    ADD CONSTRAINT day_discipline_fkey FOREIGN KEY (hash_key) REFERENCES public.lnk_day_discipline(hash_key) NOT VALID;


--
-- TOC entry 3286 (class 2606 OID 19177)
-- Name: lnk_group_day day_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lnk_group_day
    ADD CONSTRAINT day_fkey FOREIGN KEY (day_hash_key) REFERENCES public.hub_day(hash_key) NOT VALID;


--
-- TOC entry 3290 (class 2606 OID 19206)
-- Name: lnk_day_teacher day_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lnk_day_teacher
    ADD CONSTRAINT day_fkey FOREIGN KEY (day_hash_key) REFERENCES public.hub_day(hash_key) NOT VALID;


--
-- TOC entry 3292 (class 2606 OID 19223)
-- Name: lnk_day_discipline day_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lnk_day_discipline
    ADD CONSTRAINT day_fkey FOREIGN KEY (day_hash_key) REFERENCES public.hub_day(hash_key) NOT VALID;


--
-- TOC entry 3297 (class 2606 OID 19267)
-- Name: sat_day day_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sat_day
    ADD CONSTRAINT day_fkey FOREIGN KEY (hash_key) REFERENCES public.hub_day(hash_key) NOT VALID;


--
-- TOC entry 3303 (class 2606 OID 19340)
-- Name: sat_day_teacher day_teacher_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sat_day_teacher
    ADD CONSTRAINT day_teacher_fkey FOREIGN KEY (hash_key) REFERENCES public.lnk_day_teacher(hash_key) NOT VALID;


--
-- TOC entry 3293 (class 2606 OID 19228)
-- Name: lnk_day_discipline discipline_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lnk_day_discipline
    ADD CONSTRAINT discipline_fkey FOREIGN KEY (discipline_hash_key) REFERENCES public.hub_discipline(hash_key) NOT VALID;


--
-- TOC entry 3294 (class 2606 OID 19245)
-- Name: lnk_plan_discipline discipline_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lnk_plan_discipline
    ADD CONSTRAINT discipline_fkey FOREIGN KEY (discipline_hash_key) REFERENCES public.hub_discipline(hash_key) NOT VALID;


--
-- TOC entry 3300 (class 2606 OID 19304)
-- Name: sat_discipline discipline_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sat_discipline
    ADD CONSTRAINT discipline_fkey FOREIGN KEY (hash_key) REFERENCES public.hub_discipline(hash_key) NOT VALID;


--
-- TOC entry 3301 (class 2606 OID 19316)
-- Name: sat_group_day group_day_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sat_group_day
    ADD CONSTRAINT group_day_fkey FOREIGN KEY (hash_key) REFERENCES public.lnk_group_day(hash_key) NOT VALID;


--
-- TOC entry 3287 (class 2606 OID 19172)
-- Name: lnk_group_day group_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lnk_group_day
    ADD CONSTRAINT group_fkey FOREIGN KEY (group_hash_key) REFERENCES public.hub_group(hash_key) NOT VALID;


--
-- TOC entry 3288 (class 2606 OID 19189)
-- Name: lnk_group_plan group_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lnk_group_plan
    ADD CONSTRAINT group_fkey FOREIGN KEY (group_hash_key) REFERENCES public.hub_group(hash_key) NOT VALID;


--
-- TOC entry 3296 (class 2606 OID 19257)
-- Name: sat_group group_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sat_group
    ADD CONSTRAINT group_fkey FOREIGN KEY (hash_key) REFERENCES public.hub_group(hash_key) NOT VALID;


--
-- TOC entry 3302 (class 2606 OID 19328)
-- Name: sat_group_plan group_plan_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sat_group_plan
    ADD CONSTRAINT group_plan_fkey FOREIGN KEY (hash_key) REFERENCES public.lnk_group_plan(hash_key) NOT VALID;


--
-- TOC entry 3304 (class 2606 OID 19352)
-- Name: sat_plan_discipline plan_discipline_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sat_plan_discipline
    ADD CONSTRAINT plan_discipline_fkey FOREIGN KEY (hash_key) REFERENCES public.lnk_plan_discipline(hash_key) NOT VALID;


--
-- TOC entry 3289 (class 2606 OID 19194)
-- Name: lnk_group_plan plan_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lnk_group_plan
    ADD CONSTRAINT plan_fkey FOREIGN KEY (plan_hash_key) REFERENCES public.hub_plan(hash_key) NOT VALID;


--
-- TOC entry 3295 (class 2606 OID 19240)
-- Name: lnk_plan_discipline plan_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lnk_plan_discipline
    ADD CONSTRAINT plan_fkey FOREIGN KEY (plan_hash_key) REFERENCES public.hub_plan(hash_key) NOT VALID;


--
-- TOC entry 3298 (class 2606 OID 19279)
-- Name: sat_plan plan_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sat_plan
    ADD CONSTRAINT plan_fkey FOREIGN KEY (hash_key) REFERENCES public.hub_plan(hash_key) NOT VALID;


--
-- TOC entry 3291 (class 2606 OID 19211)
-- Name: lnk_day_teacher teacher_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lnk_day_teacher
    ADD CONSTRAINT teacher_fkey FOREIGN KEY (teacher_hash_key) REFERENCES public.hub_teacher(hash_key) NOT VALID;


--
-- TOC entry 3299 (class 2606 OID 19291)
-- Name: sat_teacher teacher_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sat_teacher
    ADD CONSTRAINT teacher_fkey FOREIGN KEY (hash_key) REFERENCES public.hub_teacher(hash_key) NOT VALID;


-- Completed on 2022-11-16 23:24:04

--
-- PostgreSQL database dump complete
--
