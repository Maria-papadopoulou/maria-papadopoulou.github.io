PGDMP      0                }            E-coffee    17.2    17.2 .    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    16387    E-coffee    DATABASE     |   CREATE DATABASE "E-coffee" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Greek_Greece.1253';
    DROP DATABASE "E-coffee";
                     postgres    false            �            1259    16417    accessories    TABLE     �   CREATE TABLE public.accessories (
    brand text,
    image text,
    name text,
    price numeric,
    slug text,
    "ID" integer NOT NULL
);
    DROP TABLE public.accessories;
       public         heap r       postgres    false            �            1259    16416    accessories_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."accessories_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."accessories_ID_seq";
       public               postgres    false    222            �           0    0    accessories_ID_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."accessories_ID_seq" OWNED BY public.accessories."ID";
          public               postgres    false    221            �            1259    16426 	   beverages    TABLE     �   CREATE TABLE public.beverages (
    brand text,
    image text,
    name text,
    price numeric,
    slug text,
    "ID" integer NOT NULL
);
    DROP TABLE public.beverages;
       public         heap r       postgres    false            �            1259    16425    beverages_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."beverages_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."beverages_ID_seq";
       public               postgres    false    224            �           0    0    beverages_ID_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."beverages_ID_seq" OWNED BY public.beverages."ID";
          public               postgres    false    223            �            1259    16393    capsules    TABLE     �   CREATE TABLE public.capsules (
    brand text,
    image text,
    name text,
    price numeric,
    slug text,
    "ID" integer NOT NULL
);
    DROP TABLE public.capsules;
       public         heap r       postgres    false            �            1259    16398    capsules_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."capsules_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."capsules_ID_seq";
       public               postgres    false    218            �           0    0    capsules_ID_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."capsules_ID_seq" OWNED BY public.capsules."ID";
          public               postgres    false    219            �            1259    16388    machines    TABLE     �   CREATE TABLE public.machines (
    brand text,
    image text,
    name text,
    price numeric,
    slug text,
    "ID" integer NOT NULL
);
    DROP TABLE public.machines;
       public         heap r       postgres    false            �            1259    16405    machines_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."machines_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."machines_ID_seq";
       public               postgres    false    217            �           0    0    machines_ID_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."machines_ID_seq" OWNED BY public.machines."ID";
          public               postgres    false    220            �            1259    16435    users    TABLE     �   CREATE TABLE public.users (
    address text,
    email text,
    name text,
    phone text,
    surname text,
    "ID" integer NOT NULL
);
    DROP TABLE public.users;
       public         heap r       postgres    false            �            1259    16434    users_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."users_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."users_ID_seq";
       public               postgres    false    226            �           0    0    users_ID_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."users_ID_seq" OWNED BY public.users."ID";
          public               postgres    false    225            �            1259    16444    variety    TABLE     �   CREATE TABLE public.variety (
    brand text,
    image text,
    name text,
    price numeric,
    slug text,
    "ID" integer NOT NULL
);
    DROP TABLE public.variety;
       public         heap r       postgres    false            �            1259    16443    variety_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."variety_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."variety_ID_seq";
       public               postgres    false    228            �           0    0    variety_ID_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."variety_ID_seq" OWNED BY public.variety."ID";
          public               postgres    false    227            <           2604    16420    accessories ID    DEFAULT     t   ALTER TABLE ONLY public.accessories ALTER COLUMN "ID" SET DEFAULT nextval('public."accessories_ID_seq"'::regclass);
 ?   ALTER TABLE public.accessories ALTER COLUMN "ID" DROP DEFAULT;
       public               postgres    false    221    222    222            =           2604    16429    beverages ID    DEFAULT     p   ALTER TABLE ONLY public.beverages ALTER COLUMN "ID" SET DEFAULT nextval('public."beverages_ID_seq"'::regclass);
 =   ALTER TABLE public.beverages ALTER COLUMN "ID" DROP DEFAULT;
       public               postgres    false    224    223    224            ;           2604    16399    capsules ID    DEFAULT     n   ALTER TABLE ONLY public.capsules ALTER COLUMN "ID" SET DEFAULT nextval('public."capsules_ID_seq"'::regclass);
 <   ALTER TABLE public.capsules ALTER COLUMN "ID" DROP DEFAULT;
       public               postgres    false    219    218            :           2604    16406    machines ID    DEFAULT     n   ALTER TABLE ONLY public.machines ALTER COLUMN "ID" SET DEFAULT nextval('public."machines_ID_seq"'::regclass);
 <   ALTER TABLE public.machines ALTER COLUMN "ID" DROP DEFAULT;
       public               postgres    false    220    217            >           2604    16438    users ID    DEFAULT     h   ALTER TABLE ONLY public.users ALTER COLUMN "ID" SET DEFAULT nextval('public."users_ID_seq"'::regclass);
 9   ALTER TABLE public.users ALTER COLUMN "ID" DROP DEFAULT;
       public               postgres    false    225    226    226            ?           2604    16447 
   variety ID    DEFAULT     l   ALTER TABLE ONLY public.variety ALTER COLUMN "ID" SET DEFAULT nextval('public."variety_ID_seq"'::regclass);
 ;   ALTER TABLE public.variety ALTER COLUMN "ID" DROP DEFAULT;
       public               postgres    false    227    228    228            �          0    16417    accessories 
   TABLE DATA           L   COPY public.accessories (brand, image, name, price, slug, "ID") FROM stdin;
    public               postgres    false    222   �0       �          0    16426 	   beverages 
   TABLE DATA           J   COPY public.beverages (brand, image, name, price, slug, "ID") FROM stdin;
    public               postgres    false    224   �2       �          0    16393    capsules 
   TABLE DATA           I   COPY public.capsules (brand, image, name, price, slug, "ID") FROM stdin;
    public               postgres    false    218   4       �          0    16388    machines 
   TABLE DATA           I   COPY public.machines (brand, image, name, price, slug, "ID") FROM stdin;
    public               postgres    false    217   <4       �          0    16435    users 
   TABLE DATA           K   COPY public.users (address, email, name, phone, surname, "ID") FROM stdin;
    public               postgres    false    226   Y4       �          0    16444    variety 
   TABLE DATA           H   COPY public.variety (brand, image, name, price, slug, "ID") FROM stdin;
    public               postgres    false    228   v4       �           0    0    accessories_ID_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."accessories_ID_seq"', 4, true);
          public               postgres    false    221            �           0    0    beverages_ID_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."beverages_ID_seq"', 10, true);
          public               postgres    false    223            �           0    0    capsules_ID_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."capsules_ID_seq"', 1, false);
          public               postgres    false    219            �           0    0    machines_ID_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."machines_ID_seq"', 1, false);
          public               postgres    false    220            �           0    0    users_ID_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."users_ID_seq"', 1, false);
          public               postgres    false    225            �           0    0    variety_ID_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."variety_ID_seq"', 1, false);
          public               postgres    false    227            E           2606    16424    accessories accessories_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.accessories
    ADD CONSTRAINT accessories_pkey PRIMARY KEY ("ID");
 F   ALTER TABLE ONLY public.accessories DROP CONSTRAINT accessories_pkey;
       public                 postgres    false    222            G           2606    16433    beverages beverages_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.beverages
    ADD CONSTRAINT beverages_pkey PRIMARY KEY ("ID");
 B   ALTER TABLE ONLY public.beverages DROP CONSTRAINT beverages_pkey;
       public                 postgres    false    224            C           2606    16415    capsules capsules_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.capsules
    ADD CONSTRAINT capsules_pkey PRIMARY KEY ("ID");
 @   ALTER TABLE ONLY public.capsules DROP CONSTRAINT capsules_pkey;
       public                 postgres    false    218            A           2606    16413    machines machines_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.machines
    ADD CONSTRAINT machines_pkey PRIMARY KEY ("ID");
 @   ALTER TABLE ONLY public.machines DROP CONSTRAINT machines_pkey;
       public                 postgres    false    217            I           2606    16442    users users_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY ("ID");
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public                 postgres    false    226            K           2606    16451    variety variety_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.variety
    ADD CONSTRAINT variety_pkey PRIMARY KEY ("ID");
 >   ALTER TABLE ONLY public.variety DROP CONSTRAINT variety_pkey;
       public                 postgres    false    228            �   �  x���Mk1�ϙO�So�I2;o�R��Z��x$�dwC3�0��7Dz�Aď J��B�A�+5��]�(!y~I��?9�t�Z�{/IV�U��1�M"�ЈZ2�ص}�0�D���DI��8�*/'�L3���̈́@�7h�R�_��v~(���چ)u ����b��eXע�ҭ�<��5|t� <��;B���� ���]�
�N(�')�?`��s.[}1���>��9��:i��������7@�-�M?G'[�=�6W=��P�o����5?��L8sL�yb:]�܅�/D�㌦3A*�N�0�c�����/B;�Ç��]C�87磙b����nZE�3D��'a��-űcmͺ�NF������_A�#�z��_�������FE�(�����)���s�2�����|�Cz�M��qE׫�6w      �   |  x����n�0�g�)���J�"$��H,]L0I�Զb��XQ�:WjGT���Vo�Rm�^_$�����&<�a4�(H��㈏F��S7�q!Pę�L��8JxA{�̨HRE��31uoD�^�w3>��|����������o���yqn�(�p����N�)��ȝV�{q����_ὖ3=�+XՃWyLX��8��C�H��,��<dib֕^�� ��!^��0>��|��@áY:I�=jQn�+-lzGb*�*�ft������rG�\ޛg��O��{�p+�}�����f�T�D��`�U�Jr����oΓ���G$J�H�clcZ21�5���+���oc��n�o��Iӹv���H      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     