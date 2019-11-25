-- Table: public.country_tbl

-- DROP TABLE public.country_tbl;

CREATE TABLE public.country_tbl
(
    "countryNAME" character varying COLLATE pg_catalog."default" NOT NULL,
    "countryCODE" character varying COLLATE pg_catalog."default" NOT NULL
)

TABLESPACE pg_default;

ALTER TABLE public.country_tbl
    OWNER to postgres;


-- Table: public.price_tbl

-- DROP TABLE public.price_tbl;

CREATE TABLE public.price_tbl
(
    "productID" character varying COLLATE pg_catalog."default" NOT NULL,
    "Y1992" double precision,
    "Y1993" double precision,
    "Y1994" double precision,
    "Y1995" double precision,
    "Y1996" double precision,
    "Y1997" double precision,
    "Y1998" double precision,
    "Y1999" double precision,
    "Y2000" double precision,
    "Y2001" double precision,
    "Y2002" double precision,
    "Y2003" double precision,
    "Y2004" double precision,
    "Y2005" double precision,
    "Y2006" double precision,
    "Y2007" double precision,
    "Y2008" double precision,
    "Y2009" double precision,
    "Y2010" double precision,
    "Y2011" double precision,
    "Y2012" double precision,
    CONSTRAINT price_tbl_pkey PRIMARY KEY ("productID")
)

TABLESPACE pg_default;

ALTER TABLE public.price_tbl
    OWNER to postgres;


-- Table: public.product_tbl

-- DROP TABLE public.product_tbl;

CREATE TABLE public.product_tbl
(
    "productID" integer NOT NULL,
    product_name character varying COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT product_tbl_pkey PRIMARY KEY ("productID")
)

TABLESPACE pg_default;

ALTER TABLE public.product_tbl
    OWNER to postgres;


-- Table: public.production_tbl

-- DROP TABLE public.production_tbl;

CREATE TABLE public.production_tbl
(
    "countryCode" character varying COLLATE pg_catalog."default" NOT NULL,
    "productID" integer NOT NULL,
    "Y1992" double precision,
    "Y1993" double precision,
    "Y1994" double precision,
    "Y1995" double precision,
    "Y1996" double precision,
    "Y1997" double precision,
    "Y1998" double precision,
    "Y1999" double precision,
    "Y2000" double precision,
    "Y2001" double precision,
    "Y2002" double precision,
    "Y2003" double precision,
    "Y2004" double precision,
    "Y2005" double precision,
    "Y2006" double precision,
    "Y2007" double precision,
    "Y2008" double precision,
    "Y2009" double precision,
    "Y2010" double precision,
    "Y2011" double precision,
    "Y2012" double precision
)

TABLESPACE pg_default;

ALTER TABLE public.production_tbl
    OWNER to postgres;


-- Table: public.temperature_tbl

-- DROP TABLE public.temperature_tbl;

CREATE TABLE public.temperature_tbl
(
    "Y1992" double precision,
    "Y1993" double precision,
    "Y1994" double precision,
    "Y1995" double precision,
    "Y1996" double precision,
    "Y1997" double precision,
    "Y1998" double precision,
    "Y1999" double precision,
    "Y2000" double precision,
    "Y2001" double precision,
    "Y2002" double precision,
    "Y2003" double precision,
    "Y2004" double precision,
    "Y2005" double precision,
    "Y2006" double precision,
    "Y2007" double precision,
    "Y2008" double precision,
    "Y2009" double precision,
    "Y2010" double precision,
    "Y2011" double precision,
    "Y2012" double precision,
    "countryCODE" character varying COLLATE pg_catalog."default" NOT NULL
)

TABLESPACE pg_default;

ALTER TABLE public.temperature_tbl
    OWNER to postgres;