CREATE TABLE public."People"
{
	person_id serial NOT NULL,
	first_name character varying(32) NOT NULL,
	last_name character varying(64) NOT NULL,
	email character varying(200),
	PRIMARY KEY (person_id)
}

INSERT INTO public."People"(
	person_id, first_name, last_name)
	VALUES (16, 'dino', 'flintstone');


SELECT * FROM public."People"

DELETE FROM public."People" WHERE person_id = 1

SELECT * FROM public."People"
	WHERE last_name = 'rubble'

SELECT last_name, COUNT(last_name) AS family_count FROM public."People"
	GROUP BY last_name

CREATE TABLE public."Clothes"
(
	clothing_id serial NOT NULL,
	person_id integer NOT NULL,
	clothing_type character varying(16) NOT NULL,
	name character varying(32) NOT NULL,
	count integer NOT NULL,
	CONSTRAINT "clothing_pkey" PRIMARY KEY (clothing_id)
)

INSERT INTO public."Clothes" (person_id, clothing_type, name, count) VALUES (11, 'pants', 'raptor', 3);
INSERT INTO public."Clothes" (person_id, clothing_type, name, count) VALUES (11, 'pants', 'sabertooth', 5);
INSERT INTO public."Clothes" (person_id, clothing_type, name, count) VALUES (12, 'dress', 'breadloaf', 4);
INSERT INTO public."Clothes" (person_id, clothing_type, name, count) VALUES (10, 'sweater', 'under armor', 3);
INSERT INTO public."Clothes" (person_id, clothing_type, name, count) VALUES (11, 'shoes', 'nike', 2);

-- doesnt work becuase no one had a person id of 11
INSERT INTO public."Clothes" (person_id, clothing_type, name, count) VALUES (20, 'shoes', 'nike', 2);

SELECT * FROM public."Clothes"

-- JOIN
SELECT first_name, last_name, clothing_type, name, count FROM public."People"
INNER JOIN public."Clothes" ON public."People".person_id = public."Clothes".person_id

SELECT first_name, last_name, clothing_type, name, count FROM public."People"
LEFT JOIN public."Clothes" ON public."People".person_id = public."Clothes".person_id

SELECT first_name, last_name, clothing_type, name, count FROM public."People"
LEFT JOIN public."Clothes" ON public."People".person_id = public."Clothes".person_id
WHERE name IS NULL
	
SELECT * FROM public."People"


-- Day 6
-- ADDRESS
CREATE TABLE public."Addresses"
(
	address_id serial,
	addr_line1 character varying(64) NOT NULL,
	city_name character varying(64) NOT NULL,
	postal_code character varying(12) NOT NULL,
	country character varying(24) NOT NULL,
	CONSTRAINT "address_pkey" PRIMARY KEY (address_id)
)

INSERT INTO public."Addresses" (addr_line1, city_name, postal_code, country) VALUES ('235 Sandstone Way', 'Bedrock', 'O8H3J1', 'CANADA');
INSERT INTO public."Addresses" (addr_line1, city_name, postal_code, country) VALUES ('247 Sandstone Way', 'Bedrock', 'D4H3L3', 'CANADA');
INSERT INTO public."Addresses" (addr_line1, city_name, postal_code, country) VALUES ('57 Granute Quarry', 'Bedrock', 'S8H3J9', 'CANADA');
INSERT INTO public."Addresses" (addr_line1, city_name, postal_code, country) VALUES ('7 Volcano View', 'Village of Shale', 'D8H3J5', 'CANADA');

SELECT * FROM public."Addresses"
ORDER BY address_id ASC 

--
CREATE TABLE public."People_join_Addresses"
(
    person_id integer NOT NULL,
    address_id integer NOT NULL,
    addr_type character varying(8) NOT NULL
);

ALTER TABLE IF EXISTS public."People_join_Addresses"
    OWNER to postgres;
--

-- DAY 6
INSERT INTO public."People_join_Addresses"(
	person_id, address_id, addr_type)
	VALUES (12, 2, 'home');

SELECT * FROM public."People_join_Addresses"

	--TO DELETE FROM IT
	DELETE FROM public."People_join_Addresses" WHERE address_id = 2

-- JOINING
SELECT first_name
	, last_name 
	, addr_type
	, addr_line1
	, city_name
	, country
	, postal_code
	FROM public."People"
	INNER JOIN public."People_join_Addresses" USING (person_id)
	INNER JOIN public."Addresses" USING (address_id)