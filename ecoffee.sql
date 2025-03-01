PGDMP      4                }            ecoffee    17.3    17.3 :    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false                        0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false                       1262    16516    ecoffee    DATABASE     m   CREATE DATABASE ecoffee WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en-GB';
    DROP DATABASE ecoffee;
                     postgres    false            �            1259    16517    accessories    TABLE     �   CREATE TABLE public.accessories (
    brand text,
    image text,
    name text,
    price numeric,
    slug text,
    "ID" integer NOT NULL
);
    DROP TABLE public.accessories;
       public         heap r       postgres    false            �            1259    16522    accessories_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."accessories_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."accessories_ID_seq";
       public               postgres    false    217                       0    0    accessories_ID_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."accessories_ID_seq" OWNED BY public.accessories."ID";
          public               postgres    false    218            �            1259    16523 	   beverages    TABLE     �   CREATE TABLE public.beverages (
    brand text,
    image text,
    name text,
    price numeric,
    slug text,
    "ID" integer NOT NULL
);
    DROP TABLE public.beverages;
       public         heap r       postgres    false            �            1259    16528    beverages_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."beverages_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."beverages_ID_seq";
       public               postgres    false    219                       0    0    beverages_ID_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."beverages_ID_seq" OWNED BY public.beverages."ID";
          public               postgres    false    220            �            1259    16529    capsules    TABLE     �   CREATE TABLE public.capsules (
    brand text,
    image text,
    name text,
    price numeric,
    slug text,
    "ID" integer NOT NULL
);
    DROP TABLE public.capsules;
       public         heap r       postgres    false            �            1259    16534    capsules_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."capsules_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."capsules_ID_seq";
       public               postgres    false    221                       0    0    capsules_ID_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."capsules_ID_seq" OWNED BY public.capsules."ID";
          public               postgres    false    222            �            1259    16535    customer_products    TABLE     ^   CREATE TABLE public.customer_products (
    cid integer NOT NULL,
    pid integer NOT NULL
);
 %   DROP TABLE public.customer_products;
       public         heap r       postgres    false            �            1259    16538    machines    TABLE     �   CREATE TABLE public.machines (
    brand text,
    image text,
    name text,
    price numeric,
    slug text,
    "ID" integer NOT NULL
);
    DROP TABLE public.machines;
       public         heap r       postgres    false            �            1259    16543    machines_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."machines_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."machines_ID_seq";
       public               postgres    false    224                       0    0    machines_ID_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."machines_ID_seq" OWNED BY public.machines."ID";
          public               postgres    false    225            �            1259    16544    products    TABLE     �   CREATE TABLE public.products (
    brand text NOT NULL,
    image text NOT NULL,
    name text NOT NULL,
    price numeric(10,2) NOT NULL,
    slug text NOT NULL,
    category text NOT NULL,
    id integer NOT NULL
);
    DROP TABLE public.products;
       public         heap r       postgres    false            �            1259    16549    products_id_seq    SEQUENCE     �   CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.products_id_seq;
       public               postgres    false    226                       0    0    products_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;
          public               postgres    false    227            �            1259    16550    users    TABLE     �   CREATE TABLE public.users (
    address text,
    email text,
    name text,
    phone text,
    surname text,
    "ID" integer NOT NULL,
    password text
);
    DROP TABLE public.users;
       public         heap r       postgres    false            �            1259    16555    users_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."users_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."users_ID_seq";
       public               postgres    false    228                       0    0    users_ID_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."users_ID_seq" OWNED BY public.users."ID";
          public               postgres    false    229            �            1259    16556    variety    TABLE     �   CREATE TABLE public.variety (
    brand text,
    image text,
    name text,
    price numeric,
    slug text,
    "ID" integer NOT NULL
);
    DROP TABLE public.variety;
       public         heap r       postgres    false            �            1259    16561    variety_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."variety_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."variety_ID_seq";
       public               postgres    false    230                       0    0    variety_ID_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."variety_ID_seq" OWNED BY public.variety."ID";
          public               postgres    false    231            C           2604    16562    accessories ID    DEFAULT     t   ALTER TABLE ONLY public.accessories ALTER COLUMN "ID" SET DEFAULT nextval('public."accessories_ID_seq"'::regclass);
 ?   ALTER TABLE public.accessories ALTER COLUMN "ID" DROP DEFAULT;
       public               postgres    false    218    217            D           2604    16563    beverages ID    DEFAULT     p   ALTER TABLE ONLY public.beverages ALTER COLUMN "ID" SET DEFAULT nextval('public."beverages_ID_seq"'::regclass);
 =   ALTER TABLE public.beverages ALTER COLUMN "ID" DROP DEFAULT;
       public               postgres    false    220    219            E           2604    16564    capsules ID    DEFAULT     n   ALTER TABLE ONLY public.capsules ALTER COLUMN "ID" SET DEFAULT nextval('public."capsules_ID_seq"'::regclass);
 <   ALTER TABLE public.capsules ALTER COLUMN "ID" DROP DEFAULT;
       public               postgres    false    222    221            F           2604    16565    machines ID    DEFAULT     n   ALTER TABLE ONLY public.machines ALTER COLUMN "ID" SET DEFAULT nextval('public."machines_ID_seq"'::regclass);
 <   ALTER TABLE public.machines ALTER COLUMN "ID" DROP DEFAULT;
       public               postgres    false    225    224            G           2604    16566    products id    DEFAULT     j   ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);
 :   ALTER TABLE public.products ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    227    226            H           2604    16567    users ID    DEFAULT     h   ALTER TABLE ONLY public.users ALTER COLUMN "ID" SET DEFAULT nextval('public."users_ID_seq"'::regclass);
 9   ALTER TABLE public.users ALTER COLUMN "ID" DROP DEFAULT;
       public               postgres    false    229    228            I           2604    16568 
   variety ID    DEFAULT     l   ALTER TABLE ONLY public.variety ALTER COLUMN "ID" SET DEFAULT nextval('public."variety_ID_seq"'::regclass);
 ;   ALTER TABLE public.variety ALTER COLUMN "ID" DROP DEFAULT;
       public               postgres    false    231    230            �          0    16517    accessories 
   TABLE DATA           L   COPY public.accessories (brand, image, name, price, slug, "ID") FROM stdin;
    public               postgres    false    217   ]?       �          0    16523 	   beverages 
   TABLE DATA           J   COPY public.beverages (brand, image, name, price, slug, "ID") FROM stdin;
    public               postgres    false    219   $A       �          0    16529    capsules 
   TABLE DATA           I   COPY public.capsules (brand, image, name, price, slug, "ID") FROM stdin;
    public               postgres    false    221   �B       �          0    16535    customer_products 
   TABLE DATA           5   COPY public.customer_products (cid, pid) FROM stdin;
    public               postgres    false    223   �D       �          0    16538    machines 
   TABLE DATA           I   COPY public.machines (brand, image, name, price, slug, "ID") FROM stdin;
    public               postgres    false    224   �D       �          0    16544    products 
   TABLE DATA           Q   COPY public.products (brand, image, name, price, slug, category, id) FROM stdin;
    public               postgres    false    226   �F       �          0    16550    users 
   TABLE DATA           U   COPY public.users (address, email, name, phone, surname, "ID", password) FROM stdin;
    public               postgres    false    228   �M       �          0    16556    variety 
   TABLE DATA           H   COPY public.variety (brand, image, name, price, slug, "ID") FROM stdin;
    public               postgres    false    230   �N       	           0    0    accessories_ID_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."accessories_ID_seq"', 9, true);
          public               postgres    false    218            
           0    0    beverages_ID_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."beverages_ID_seq"', 10, true);
          public               postgres    false    220                       0    0    capsules_ID_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."capsules_ID_seq"', 8, true);
          public               postgres    false    222                       0    0    machines_ID_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."machines_ID_seq"', 4, true);
          public               postgres    false    225                       0    0    products_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.products_id_seq', 21, true);
          public               postgres    false    227                       0    0    users_ID_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."users_ID_seq"', 4, true);
          public               postgres    false    229                       0    0    variety_ID_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."variety_ID_seq"', 5, true);
          public               postgres    false    231            K           2606    16570    accessories accessories_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.accessories
    ADD CONSTRAINT accessories_pkey PRIMARY KEY ("ID");
 F   ALTER TABLE ONLY public.accessories DROP CONSTRAINT accessories_pkey;
       public                 postgres    false    217            M           2606    16572    beverages beverages_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.beverages
    ADD CONSTRAINT beverages_pkey PRIMARY KEY ("ID");
 B   ALTER TABLE ONLY public.beverages DROP CONSTRAINT beverages_pkey;
       public                 postgres    false    219            O           2606    16574    capsules capsules_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.capsules
    ADD CONSTRAINT capsules_pkey PRIMARY KEY ("ID");
 @   ALTER TABLE ONLY public.capsules DROP CONSTRAINT capsules_pkey;
       public                 postgres    false    221            Q           2606    16576 (   customer_products customer_products_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.customer_products
    ADD CONSTRAINT customer_products_pkey PRIMARY KEY (cid, pid);
 R   ALTER TABLE ONLY public.customer_products DROP CONSTRAINT customer_products_pkey;
       public                 postgres    false    223    223            S           2606    16578    machines machines_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.machines
    ADD CONSTRAINT machines_pkey PRIMARY KEY ("ID");
 @   ALTER TABLE ONLY public.machines DROP CONSTRAINT machines_pkey;
       public                 postgres    false    224            U           2606    16580    products products_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public                 postgres    false    226            W           2606    16582    users users_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY ("ID");
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public                 postgres    false    228            Y           2606    16584    variety variety_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.variety
    ADD CONSTRAINT variety_pkey PRIMARY KEY ("ID");
 >   ALTER TABLE ONLY public.variety DROP CONSTRAINT variety_pkey;
       public                 postgres    false    230            Z           2606    16585 ,   customer_products customer_products_cid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_products
    ADD CONSTRAINT customer_products_cid_fkey FOREIGN KEY (cid) REFERENCES public.users("ID") ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.customer_products DROP CONSTRAINT customer_products_cid_fkey;
       public               postgres    false    223    4695    228            [           2606    16590 ,   customer_products customer_products_pid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_products
    ADD CONSTRAINT customer_products_pid_fkey FOREIGN KEY (pid) REFERENCES public.products(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.customer_products DROP CONSTRAINT customer_products_pid_fkey;
       public               postgres    false    223    226    4693            �   �  x���Mk1�ϙO�So�I2;o�R��Z��x$�dwC3�0��7Dz�Aď J��B�A�+5��]�(!y~I��?9�t�Z�{/IV�U��1�M"�ЈZ2�ص}�0�D���DI��8�*/'�L3���̈́@�7h�R�_��v~(���چ)u ����b��eXע�ҭ�<��5|t� <��;B���� ���]�
�N(�')�?`��s.[}1���>��9��:i��������7@�-�M?G'[�=�6W=��P�o����5?��L8sL�yb:]�܅�/D�㌦3A*�N�0�c�����/B;�Ç��]C�87磙b����nZE�3D��'a��-űcmͺ�NF������_A�#�z��_�������FE�(�����)���s�2�����|�Cz�M��qE׫�6w      �   |  x����n�0�g�)���J�"$��H,]L0I�Զb��XQ�:WjGT���Vo�Rm�^_$�����&<�a4�(H��㈏F��S7�q!Pę�L��8JxA{�̨HRE��31uoD�^�w3>��|����������o���yqn�(�p����N�)��ȝV�{q����_ὖ3=�+XՃWyLX��8��C�H��,��<dib֕^�� ��!^��0>��|��@áY:I�=jQn�+-lzGb*�*�ft������rG�\ޛg��O��{�p+�}�����f�T�D��`�U�Jr����oΓ���G$J�H�clcZ21�5���+���oc��n�o��Iӹv���H      �   �  x��R͎�0>;O�K��M�$H�M�V��R��r]7-��Q������3p�ޠ}%7M˲��f���|�x�R��Z�mY���z�r^�-�k$���X�3�ƛ]*5���]���C!��l(�L�}��Bx���Y���K�!#!�j�J;�hؓ�ʦ�>|=|;~9�:>~�?�!b ;�k�},R��KӇ?�����4�[��ΡPY)�Wy��ZcF���&� �v4L�� h��������z&���9l��Y�%
�'�
21�KM�5#���U�g�����?�\�pJ.�W�:�'pxj�>�2O7{�~��6��x�#����ҙuW�bU�{�o^��F�U���0<]�����7�_�F^�u�,%�@�^Ehy9V���4U�ͪ�A�s]5wG�Y�zqG˻�(�tI]B�O�sWlw5�ޯ�\���Dy���t���Y��38d      �      x������ � �      �   �  x����j�@���S̪����bIS|�8��iRJ���ęF�9�݆�/�]�m��R���0~������^`f�����s�T��Jɍ���1ƫ�ʪ�V�KLwWIs�J,�rV���5�y�2섁G�VD��%>L�^IvE!%�L\�����	+���,Ӣx��˛���
�;���Y��ѡ5�2Vq�ldD���Az��Lj~�P����b��z~�X��-H��|�5ӂ崞u�;��Z�#���3�5s���ba�wۛ���U��7�#R��W�A���+����s�6���J&�����9�}��O��bx��"v�!ӦAdp)W��s��;q=����6�G0�N��8��Їɠ�'{Po՗��Q?t�fV�HI�W):aC}4Y��hBs#z�&~G=�Pjr�5������~�"�텶k��$qI�7<��;z:�봧�n�%\�$��9�P�XR��S^�)\�8P0�Q���2M�'kU<G      �   �  x��W[o��~�~ż�oC��"��,�]c�� o�EQ@Q#�5Eʲ��6ݶۇEQ�P�}̦0��Hv���/����NC�!yΜ���s�f\�D��y*>3��r���[=H��˜�C&��99όt1������m�&��$�	�8X��&�Lr?=��?�i���b΢�'�|���S���~�c櫧T{Ƴ|��^� ��f�:!Z��Q4�y@Â@����X�wM�6i�v��MB��r��P��,MA��c�/���?�]ܡ#��"ghs*�+��ֿ)^k&�<_L���AÁ���f�8��(��=.ߕ���F�r%S#͒�"��9�q�MӚp����T�R�Ԋ�o@��߮�j1���D��I����B�'p�黔��CL-���&`�~��x̲��p��7ſ����7���c^���)~ ��H#�B2ÀE�"�a�"��w]3.)ULJJ�Ԕ�f�[��?b1؉7�(=2Z��if,��I��87i���0Lb�1�`�/ga�q̗
1��+�W)������~ ,����
P^��5���$?r�f���D�9}�䕄�b���Չ�������O�{������s��xU�E�y`�)�� �G�Cx�`^�(A��w�����U���Dc�L�q
�xV3bJ��n�xކ�N����w8�dƘ�,������^7f�P�J�b�(�����C�"CW`>�wO���|�4���ˊ�=���d���v��t��X:\v?Lm�ȥL܇F��j����6zz�Z̒��b��B洞^�8V��	�V(�����=j�$�mM(f&'��Ԡ�1M���yJ]�m��<�8���7}�;Y�Ƞ�Of�-Cf+c�{�SF�V� M5�F�j��dP�&�2�p�[iO��'~G�����ϓ���w��H��zc��B��"�&X}��X�j5�J�{[�8��"rԃ_>��[��z��z�q!@�x�%�ҿd��# �T�W0?HHaP�x��G����)��槤�=-�k��js2�8�
?;�]��mڨ8H���Ζ�/j������U���U����Y�sv����w����=L�2s�[�~E�*���m���7:C�ӽ���hǞkS�����8�с�L�����g}U�0�~���:<K�i��3�W�s�����͡��Z�Q��ϒI��Ir�����,ߪ��r̹��1φG�ԀhQ���*:�X0�Y��n-۳�����������^)'�(~��;hYߣ����u/.�@03^�~qy�3�f�U*��I�q
s�Xb�q��3�C�K\�tl�g�p������)>ƃ��F�����t�u3A^	?g��0�1,F+4�c�ߛ���BT1�90�1΀g���|��u�6�����xv��}��tOON����罏�^�Q�I��,'0�Eu�?xQI��%!I���n�yP��P4�i[�A�G�Ţ�׆th�ِʻ�Z�v�/���.������r6x[V�nuf5R��RЮ��n'<_i����J��q]ȶنF��&������j�a 8L��s�=��L�ᒮ��.�|��Y7`�d�ya!��oĪ��L`f3�=�)JtT�ו�a�H�ם{�J���B{�����{�X��8���3�|���q	�pL�xiĦ�;�*�n�K���ao��Be���$ɠ��;�5�MI���$�O�Qٷ�괚���n�|�7����<m�Ro�Z��V��      �     x�-N�N�0��_��`'��H�� [U	��m��mbG������ ��H,����N�I��ޓ�s���\�~\{z�^�}����}vO g"�Q��(�%w<Xl����{�W-��Q�,������~�����0�1Cca,��t+��6��3]A/K� �4!l�B��1}#]���.E���Vـ�eP�JX�{	XJ	��\K�!ɍ^�u�92�v�'ٍ�e��i��)ei�/P7kQ����/�:�g�x�c6��UA.h~%��=Ɠ;}�n��Ԉ'      �   �  x���MN�0���)r���8 l�*'u��G��@� X�a�X�`����s%�ƕZ(U+Rf޼O�Å��S�}�
9�0�Ϯ`�PS�BV�U�j!�X�'D�	�j�	rF+R�K5"�T�c����˞}���}j��#]+����c{o���e_c��f�P�f=�Ü�١.:�S&�܎'c����q�V�F�~��������~�/�/̏Ox��'�w��O��9ʗ��,�N�4�[[/��:]E�\ �%�}�$Ն)�_��,\���Ћ�BC8L�tS���OW��H�40�sJ����t|JK�@�sְ�v_�
Y�Z��0�CFi��=w���$�#��W����k#��e��]��X�9P�o�eF_x�zO\DK�'��	�u�9�M�ח���w"�Eg0��o{k     