PGDMP     5                    {           Auth    15.1    15.1     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    24657    Auth    DATABASE     z   CREATE DATABASE "Auth" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Canada.1252';
    DROP DATABASE "Auth";
                postgres    false            �            1259    24666    Logins    TABLE     �   CREATE TABLE public."Logins" (
    id integer NOT NULL,
    username character varying(12) NOT NULL,
    password character varying(80) NOT NULL,
    email character varying(128) NOT NULL,
    uuid uuid NOT NULL
);
    DROP TABLE public."Logins";
       public         heap    postgres    false            �            1259    24665    Logins_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Logins_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."Logins_id_seq";
       public          postgres    false    215                        0    0    Logins_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."Logins_id_seq" OWNED BY public."Logins".id;
          public          postgres    false    214            e           2604    24669 	   Logins id    DEFAULT     j   ALTER TABLE ONLY public."Logins" ALTER COLUMN id SET DEFAULT nextval('public."Logins_id_seq"'::regclass);
 :   ALTER TABLE public."Logins" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            �          0    24666    Logins 
   TABLE DATA           G   COPY public."Logins" (id, username, password, email, uuid) FROM stdin;
    public          postgres    false    215                     0    0    Logins_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Logins_id_seq"', 5, true);
          public          postgres    false    214            g           2606    24671    Logins Logins_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."Logins"
    ADD CONSTRAINT "Logins_pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."Logins" DROP CONSTRAINT "Logins_pkey";
       public            postgres    false    215            i           2606    24673    Logins unique_username 
   CONSTRAINT     W   ALTER TABLE ONLY public."Logins"
    ADD CONSTRAINT unique_username UNIQUE (username);
 B   ALTER TABLE ONLY public."Logins" DROP CONSTRAINT unique_username;
       public            postgres    false    215            �   q  x�5��r�@F��s�m�{��I%`9A���nh�@���\��J�ܜ�9�}%���\Y=I
��N���y|���������ݳ��MFӬ>}����]$ꞆqB	���Kc����Zci�)���.J��.o^E����f`ۍ(\v�C(��n���0R�t��i$�8�ҙ��&��^�3�)��s[q��g���rɩa9���]W���F�m�6��&��_�<ާ�*w�������0�_�u���5:���/q�(�� 0�Ja%��N	D;�ȿ��}U�x���7`��2��z*��]gyv�#��v��}������+y��Q�+ƿD&'DC��J��
Ω���y�v@���3�,�?���'     