PGDMP  
                    }            ecoffee    17.2    17.2 C    
           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false                       1262    49266    ecoffee    DATABASE     y   CREATE DATABASE ecoffee WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Greek_Greece.1253';
    DROP DATABASE ecoffee;
                     postgres    false            �            1259    49267    accessories    TABLE     �   CREATE TABLE public.accessories (
    brand text,
    image text,
    name text,
    price numeric,
    slug text,
    "ID" integer NOT NULL
);
    DROP TABLE public.accessories;
       public         heap r       postgres    false            �            1259    49272    accessories_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."accessories_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."accessories_ID_seq";
       public               postgres    false    217                       0    0    accessories_ID_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."accessories_ID_seq" OWNED BY public.accessories."ID";
          public               postgres    false    218            �            1259    49273 	   beverages    TABLE     �   CREATE TABLE public.beverages (
    brand text,
    image text,
    name text,
    price numeric,
    slug text,
    "ID" integer NOT NULL
);
    DROP TABLE public.beverages;
       public         heap r       postgres    false            �            1259    49278    beverages_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."beverages_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."beverages_ID_seq";
       public               postgres    false    219                       0    0    beverages_ID_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."beverages_ID_seq" OWNED BY public.beverages."ID";
          public               postgres    false    220            �            1259    49279    capsules    TABLE     �   CREATE TABLE public.capsules (
    brand text,
    image text,
    name text,
    price numeric,
    slug text,
    "ID" integer NOT NULL
);
    DROP TABLE public.capsules;
       public         heap r       postgres    false            �            1259    49284    capsules_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."capsules_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."capsules_ID_seq";
       public               postgres    false    221                       0    0    capsules_ID_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."capsules_ID_seq" OWNED BY public.capsules."ID";
          public               postgres    false    222            �            1259    49412    cart    TABLE     X   CREATE TABLE public.cart (
    id integer NOT NULL,
    uid integer,
    pid integer
);
    DROP TABLE public.cart;
       public         heap r       postgres    false            �            1259    49411    cart_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cart_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.cart_id_seq;
       public               postgres    false    233                       0    0    cart_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.cart_id_seq OWNED BY public.cart.id;
          public               postgres    false    232            �            1259    49285    customer_products    TABLE     ^   CREATE TABLE public.customer_products (
    cid integer NOT NULL,
    pid integer NOT NULL
);
 %   DROP TABLE public.customer_products;
       public         heap r       postgres    false            �            1259    49288    machines    TABLE     �   CREATE TABLE public.machines (
    brand text,
    image text,
    name text,
    price numeric,
    slug text,
    "ID" integer NOT NULL
);
    DROP TABLE public.machines;
       public         heap r       postgres    false            �            1259    49293    machines_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."machines_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."machines_ID_seq";
       public               postgres    false    224                       0    0    machines_ID_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."machines_ID_seq" OWNED BY public.machines."ID";
          public               postgres    false    225            �            1259    49294    products    TABLE     �   CREATE TABLE public.products (
    brand text NOT NULL,
    image text NOT NULL,
    name text NOT NULL,
    price numeric(10,2) NOT NULL,
    slug text NOT NULL,
    category text NOT NULL,
    id integer NOT NULL
);
    DROP TABLE public.products;
       public         heap r       postgres    false            �            1259    49299    products_id_seq    SEQUENCE     �   CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.products_id_seq;
       public               postgres    false    226                       0    0    products_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;
          public               postgres    false    227            �            1259    49300    users    TABLE     �   CREATE TABLE public.users (
    address text,
    email text,
    name text,
    phone text,
    surname text,
    "ID" integer NOT NULL,
    password text,
    role text
);
    DROP TABLE public.users;
       public         heap r       postgres    false            �            1259    49305    users_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."users_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."users_ID_seq";
       public               postgres    false    228                       0    0    users_ID_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."users_ID_seq" OWNED BY public.users."ID";
          public               postgres    false    229            �            1259    49306    variety    TABLE     �   CREATE TABLE public.variety (
    brand text,
    image text,
    name text,
    price numeric,
    slug text,
    "ID" integer NOT NULL
);
    DROP TABLE public.variety;
       public         heap r       postgres    false            �            1259    49311    variety_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."variety_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."variety_ID_seq";
       public               postgres    false    230                       0    0    variety_ID_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."variety_ID_seq" OWNED BY public.variety."ID";
          public               postgres    false    231            H           2604    49312    accessories ID    DEFAULT     t   ALTER TABLE ONLY public.accessories ALTER COLUMN "ID" SET DEFAULT nextval('public."accessories_ID_seq"'::regclass);
 ?   ALTER TABLE public.accessories ALTER COLUMN "ID" DROP DEFAULT;
       public               postgres    false    218    217            I           2604    49313    beverages ID    DEFAULT     p   ALTER TABLE ONLY public.beverages ALTER COLUMN "ID" SET DEFAULT nextval('public."beverages_ID_seq"'::regclass);
 =   ALTER TABLE public.beverages ALTER COLUMN "ID" DROP DEFAULT;
       public               postgres    false    220    219            J           2604    49314    capsules ID    DEFAULT     n   ALTER TABLE ONLY public.capsules ALTER COLUMN "ID" SET DEFAULT nextval('public."capsules_ID_seq"'::regclass);
 <   ALTER TABLE public.capsules ALTER COLUMN "ID" DROP DEFAULT;
       public               postgres    false    222    221            O           2604    49415    cart id    DEFAULT     b   ALTER TABLE ONLY public.cart ALTER COLUMN id SET DEFAULT nextval('public.cart_id_seq'::regclass);
 6   ALTER TABLE public.cart ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    232    233    233            K           2604    49315    machines ID    DEFAULT     n   ALTER TABLE ONLY public.machines ALTER COLUMN "ID" SET DEFAULT nextval('public."machines_ID_seq"'::regclass);
 <   ALTER TABLE public.machines ALTER COLUMN "ID" DROP DEFAULT;
       public               postgres    false    225    224            L           2604    49316    products id    DEFAULT     j   ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);
 :   ALTER TABLE public.products ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    227    226            M           2604    49317    users ID    DEFAULT     h   ALTER TABLE ONLY public.users ALTER COLUMN "ID" SET DEFAULT nextval('public."users_ID_seq"'::regclass);
 9   ALTER TABLE public.users ALTER COLUMN "ID" DROP DEFAULT;
       public               postgres    false    229    228            N           2604    49318 
   variety ID    DEFAULT     l   ALTER TABLE ONLY public.variety ALTER COLUMN "ID" SET DEFAULT nextval('public."variety_ID_seq"'::regclass);
 ;   ALTER TABLE public.variety ALTER COLUMN "ID" DROP DEFAULT;
       public               postgres    false    231    230            �          0    49267    accessories 
   TABLE DATA           L   COPY public.accessories (brand, image, name, price, slug, "ID") FROM stdin;
    public               postgres    false    217   �H       �          0    49273 	   beverages 
   TABLE DATA           J   COPY public.beverages (brand, image, name, price, slug, "ID") FROM stdin;
    public               postgres    false    219   �J       �          0    49279    capsules 
   TABLE DATA           I   COPY public.capsules (brand, image, name, price, slug, "ID") FROM stdin;
    public               postgres    false    221   xL                 0    49412    cart 
   TABLE DATA           ,   COPY public.cart (id, uid, pid) FROM stdin;
    public               postgres    false    233   bN       �          0    49285    customer_products 
   TABLE DATA           5   COPY public.customer_products (cid, pid) FROM stdin;
    public               postgres    false    223   �N       �          0    49288    machines 
   TABLE DATA           I   COPY public.machines (brand, image, name, price, slug, "ID") FROM stdin;
    public               postgres    false    224   �N                  0    49294    products 
   TABLE DATA           Q   COPY public.products (brand, image, name, price, slug, category, id) FROM stdin;
    public               postgres    false    226   �P                 0    49300    users 
   TABLE DATA           [   COPY public.users (address, email, name, phone, surname, "ID", password, role) FROM stdin;
    public               postgres    false    228   $�                 0    49306    variety 
   TABLE DATA           H   COPY public.variety (brand, image, name, price, slug, "ID") FROM stdin;
    public               postgres    false    230   :�                  0    0    accessories_ID_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."accessories_ID_seq"', 9, true);
          public               postgres    false    218                       0    0    beverages_ID_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."beverages_ID_seq"', 10, true);
          public               postgres    false    220                       0    0    capsules_ID_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."capsules_ID_seq"', 8, true);
          public               postgres    false    222                       0    0    cart_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.cart_id_seq', 19, true);
          public               postgres    false    232                       0    0    machines_ID_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."machines_ID_seq"', 4, true);
          public               postgres    false    225                       0    0    products_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.products_id_seq', 21, true);
          public               postgres    false    227                       0    0    users_ID_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."users_ID_seq"', 46, true);
          public               postgres    false    229                       0    0    variety_ID_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."variety_ID_seq"', 5, true);
          public               postgres    false    231            Q           2606    49323    accessories accessories_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.accessories
    ADD CONSTRAINT accessories_pkey PRIMARY KEY ("ID");
 F   ALTER TABLE ONLY public.accessories DROP CONSTRAINT accessories_pkey;
       public                 postgres    false    217            S           2606    49325    beverages beverages_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.beverages
    ADD CONSTRAINT beverages_pkey PRIMARY KEY ("ID");
 B   ALTER TABLE ONLY public.beverages DROP CONSTRAINT beverages_pkey;
       public                 postgres    false    219            U           2606    49327    capsules capsules_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.capsules
    ADD CONSTRAINT capsules_pkey PRIMARY KEY ("ID");
 @   ALTER TABLE ONLY public.capsules DROP CONSTRAINT capsules_pkey;
       public                 postgres    false    221            a           2606    49417    cart cart_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT cart_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.cart DROP CONSTRAINT cart_pkey;
       public                 postgres    false    233            W           2606    49329 (   customer_products customer_products_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.customer_products
    ADD CONSTRAINT customer_products_pkey PRIMARY KEY (cid, pid);
 R   ALTER TABLE ONLY public.customer_products DROP CONSTRAINT customer_products_pkey;
       public                 postgres    false    223    223            Y           2606    49331    machines machines_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.machines
    ADD CONSTRAINT machines_pkey PRIMARY KEY ("ID");
 @   ALTER TABLE ONLY public.machines DROP CONSTRAINT machines_pkey;
       public                 postgres    false    224            [           2606    49333    products products_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public                 postgres    false    226            ]           2606    49335    users users_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY ("ID");
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public                 postgres    false    228            _           2606    49337    variety variety_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.variety
    ADD CONSTRAINT variety_pkey PRIMARY KEY ("ID");
 >   ALTER TABLE ONLY public.variety DROP CONSTRAINT variety_pkey;
       public                 postgres    false    230            b           2606    49338 ,   customer_products customer_products_cid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_products
    ADD CONSTRAINT customer_products_cid_fkey FOREIGN KEY (cid) REFERENCES public.users("ID") ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.customer_products DROP CONSTRAINT customer_products_cid_fkey;
       public               postgres    false    4701    228    223            c           2606    49343 ,   customer_products customer_products_pid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_products
    ADD CONSTRAINT customer_products_pid_fkey FOREIGN KEY (pid) REFERENCES public.products(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.customer_products DROP CONSTRAINT customer_products_pid_fkey;
       public               postgres    false    226    4699    223            d           2606    49418    cart fk    FK CONSTRAINT     e   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT fk FOREIGN KEY (pid) REFERENCES public.products(id);
 1   ALTER TABLE ONLY public.cart DROP CONSTRAINT fk;
       public               postgres    false    4699    226    233            e           2606    49423    cart fk_users    FK CONSTRAINT     |   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT fk_users FOREIGN KEY (uid) REFERENCES public.users("ID") ON DELETE CASCADE;
 7   ALTER TABLE ONLY public.cart DROP CONSTRAINT fk_users;
       public               postgres    false    228    233    4701            �   �  x���M��0�����[�$��ED]������M33q�&4�t禂��y�#���|���W2ݙ��Q�������9�Z5\k	V�(}3���}5`�
�*^�C��O+�oB՞����S�'q�3HB�� �ޥJ���Z�^����i3�-���DaV�I��w�k-�f���`����s{�ߡ�І������f��/�g@0o�U��'[9d�^��;/�?�������3d��R.C�Ȣe��l��MH��8g�sY�W���������_�� ��pQR}
"���q�<�(M'hq!���J�m���m���΁>�������W���w�?��]����|��*���#-���X��� ��[\�dP�e���c��yNH�qF�ی���6#XQQώf0!)9#qD���?�����7Ps<S�v�<+Ԝ.�cY�&Q�����97�����8�n�ޓ��_I�G�      �   |  x����n�0�g�)���J�"$��H,]L0I�Զb��XQ�:WjGT���Vo�Rm�^_$�����&<�a4�(H��㈏F��S7�q!Pę�L��8JxA{�̨HRE��31uoD�^�w3>��|����������o���yqn�(�p����N�)��ȝV�{q����_ὖ3=�+XՃWyLX��8��C�H��,��<dib֕^�� ��!^��0>��|��@áY:I�=jQn�+-lzGb*�*�ft������rG�\ޛg��O��{�p+�}�����f�T�D��`�U�Jr����oΓ���G$J�H�clcZ21�5���+���oc��n�o��Iӹv���H      �   �  x��R͎�0>;O�K��M�$H�M�V��R��r]7-��Q������3p�ޠ}%7M˲��f���|�x�R��Z�mY���z�r^�-�k$���X�3�ƛ]*5���]���C!��l(�L�}��Bx���Y���K�!#!�j�J;�hؓ�ʦ�>|=|;~9�:>~�?�!b ;�k�},R��KӇ?�����4�[��ΡPY)�Wy��ZcF���&� �v4L�� h��������z&���9l��Y�%
�'�
21�KM�5#���U�g�����?�\�pJ.�W�:�'pxj�>�2O7{�~��6��x�#����ҙuW�bU�{�o^��F�U���0<]�����7�_�F^�u�,%�@�^Ehy9V���4U�ͪ�A�s]5wG�Y�zqG˻�(�tI]B�O�sWlw5�ޯ�\���Dy���t���Y��38d            x�3�41�4����� `�      �      x������ � �      �   �  x����j�@���S̪����bIS|�8��iRJ���ęF�9�݆�/�]�m��R���0~������^`f�����s�T��Jɍ���1ƫ�ʪ�V�KLwWIs�J,�rV���5�y�2섁G�VD��%>L�^IvE!%�L\�����	+���,Ӣx��˛���
�;���Y��ѡ5�2Vq�ldD���Az��Lj~�P����b��z~�X��-H��|�5ӂ崞u�;��Z�#���3�5s���ba�wۛ���U��7�#R��W�A���+����s�6���J&�����9�}��O��bx��"v�!ӦAdp)W��s��;q=����6�G0�N��8��Їɠ�'{Po՗��Q?t�fV�HI�W):aC}4Y��hBs#z�&~G=�Pjr�5������~�"�텶k��$qI�7<��;z:�봧�n�%\�$��9�P�XR��S^�)\�8P0�Q���2M�'kU<G             x���I��ʖ&6>�W�IzB�˾+���$6b/�$<�����Q����<0`F��aU	#ad�
���K��>����|YO�J��"֊�~����h�
����O�i���q�ei����|voq�Li3�sW�a2��` ���ψߞ�|Jߚ����A�m���ӗ���?|�����}��?�_���������G�?�F��}��!�>|"���O���N_g���K:��t���4�8�2���W�5�7����뇿�������>k�=l���>�g!캼I��3}����7�L����ݗ���}�@��w·���;�?���ϸ&�K�|͇o\?���?8_|�����S�Wi��G���6a��?2��𯎅�˃����>�����g�X�w��w�����a����ϯ]��_-1�����p<j��;>�.��GX����]	�I��5�,������i$�`��h(��04��B$��B��8��������&�h��>]�9:�����a:y8�/e|��C����?��u����'⥊�G�ߒwʷo��;�Kq؍���'�����_���3��!;H܌P"��8�A3�O��g�/(��>q�m��}z��߿A�~���5�<7�����3���'��	���Oq�:��:��7�����������ӱo�Tx��Ӏ��M���b�c������~��?��%��w�u�����=}z����ջ�?_~�Μ�!��r����34�zs�������E���r�}OB��)~bqxQ��E��K^����~�{�q�7F�Y��ޘߛ���� �[�������>о��1�S�u�o<�G���ʮa�8��-�y��)���Q�I�ญ�������c�H���)�@�Fa��8Fh�1_�7]�ߣ��@�ﾛ�]{o�냱�*��y2=~���N҃p�~bҡ��i?{�'�=(���?����K �;}h���m�_Ht�rL5L?��G�d�'�ʓt��)�����G�����~0��AJ�#~�b�}�[?��#�Q�X������y���Gl})�/��������#��Ϻ�q��gM�>#�~��o���C�O���{q}�H[�u�[9>���$�g���4IB$��	���v$7V�7�^�.o{�S����}��7G��O�hC~ϛ�:�jL�=���M���٘����&�h�{���k�&�N�Vo��p��O���a�	��0
B!Б�tMә󕻞�N����Ew�a���z�}��8ώ��T���~%����k����[������/3�?)��0�A��.�}�Ұ?��ÿG�k�#eC4�a��a�?�_��{������}�:�׺~7�o�|L���?:.ᐧ��	&��q��'(���@�s���q	��o��^���ǐi��!�ԏ�o��q�������71��̰���2���`��z_C|�#�����B�z��iJy����c��k��t�"_���#�Ǵ_y�`�W�ѿQ�˻�p��m��6���C���>Ө;ZSX����ۇ� �@8uX���{�������/�?(㡰����Gd�Io\;��c����޲W�_I�@�:���Dy��:��������y��n~�;�b�3���v�h�F�)d��ExL01�[��ü�/���Ȋ`(ҭ?���Â�8��tzY�O1��2�Ig�Y�M�-`�J}�����N����o��$�����EH��V�*;��(S��A� 1���e w��ܘ��2y�Y�)��z����d���a�ؓ�W�������=l�[}_0�w��V�j;/*�,9�fn�v����v��|<��t�Cw�n�~M�ds\՝�����n�$m�q�~}���%F��|<�{�*��J/���$d�{e��If���Μ�{ao�2L�0�8w������q�{|fn����O����ܡ������z9�X���>�n.����+�h��1Ƃ���B���"%��e����5��t�:E/>�c�����ls�O��ꓳ/�����~�q}�N���p�o� rg����%+2vg����5'�K��uF&�������0��jxA�{�������{3K.�SmN}O�d�q�S��+�Nޓ���(�H�x�";h@��c�¥�C3��	Z�/��5�H��)��7˵!x������YfZ��r�%>K8��Ǎ��흕�`�i�Z��*��L�HV&VM*ɺÒD 4����Ö�~�!�IQ����<��L�R��v.�OK��U�_M�1�(O5DhYU��Rbm�鹧��9�P�v�S����K} ���%yJ\�僕��{{!�;�k�r"%�����.����oqqz_њ%�3�k��=����N������(��XG�\GsݩW�[�Ϩ:��-�N���D��>d��LLT4{��X��݇��B�L܈R��̰r�� �S�v�r&�x�8��D3����W�-��qL��:����g��,��Q�������k�4Yzf���;Y�G1S�FtE��LTwe`|d��-T�A®��iʴ�y�����z�d=��v&q��������'@���'Ϧ���A|. s�۬#t�����^7����8B�[�g��N�̽�!%���a2�P�����-��W��¦5����tWo�5���6�M��;5�I$U*��2\!�4@҂m��+�\�ޅ*4àJm�ų��4��Y�S�X�`���[�R.�O��P�ZA���I>�*��T'���5X���E"�Y���B[Rꉈ�����\�,�W�|k�o��Jfs��0ǭ���nUa����n�L�Nm���RC� 2�;�en�mʴ7�v�~X� �,�[����\8P��Y@|�g�m?U6S�mִC�� QW��?M�#B/�$ gڵgi>Jqq�]3�*Io!\4,7i���ٌC��7�[��6�	6ĥ����찁��92���$�U��vj''ZO��RV2?R���;�A;{r�*>C��u@t�9���[3�N|����|6B4,`�e{����׻��*)��T=pR�3)�1!N�Kՠ≰��P�h��&U�A�:T��M�Wư�Z��f��h"6JZ��[��ް����#IД���n�^�.���v�}aQ�*-�Nz��|ѝ}b�mU�cDJ�q &�d��]��-�4T�Q�^];���:�����B�,���62�*�N��BK��	y���cZ�!�B�w�*���t��x�*��\�6T�#������H��(?�=��28њX
O�p�A5�%{��	ȕg:"h���X�R�'�؃PR=�e�cެ�v���Zq�Rk�t3S����#Do�O��p=$=!H4=��B>d]�h܂N-@-"�F7�2�j�<&3,3����AM#�J�za<��zd�z$�����ƨ��8Ej�<w;{��.H`J���`��F��ֵ�{���.@��4��|��8�(� ����B�P6��!�Ԡ�V9|�J�zT�)$��<���kY;�CK�)�v�a[�n�I�չ;s/o�����?ꨀ�B�;Y'���"���]}L���e�<��̸��z�:#s'��Ni���d�̵���Iw=�0��>oy�KU�xE��R�C<�W-�z�x(U$�[�dE����p���q�!z�b���Yύ��66����T��[�f�!j�ŭ���`������L��ǡ��� "� )�q�5<!tJԉ`}�87��?�v-8I9������x�?�[C��\"S��2�&0w��@�mتq�|UE�kn7P�Y�d����8@s�� *��d����
���$�r:T+A���o��[
>)�%�B�r�S����m��ٴЅ+�.�2	�Dw�vAP2��WG3X�-�v�%4@��+݆÷�&��b�u�Q0�d�4y&g!KYz#51��G%�ҽ^��3�+�`�R�k7�����619K�b��*Y0�Q�I��f� ��r�V���U�����=��B�����m    ��F�=B*	�X��A/di��T�n�6ц�'Dc��VՍ�A
�7��Nk�G}�b��9�QL�R#��L��^�����)��&�gL4��7`^M̐�����B��"��zv(���HE����@�J�}XR����xv9�g�ų�[_җȣ��0�Em���[g]A���r��$��I3�Pth���M�M�l�aK�~�{��^�?�9����>�qG��d,��d���E�7ML�Bz[�1����l7���m��%c4����Eu�;c��v����ș�%+N!�Udv�41�&�$c��R��eN���&�&�+���S�N���*mOnυ��?ܞq�R��࢜�����؁s�;ޟ�4��Z���ga6�G:��Sm{�yl�pڣt�q�Z�F�K�gYh\Mc����#�%������gf] RF1OdD����Hd�ԣL]����eK0-�X��v��c 6��������G���Z�T�f�j.��L�=h������%��(8�-�,�y3���ث'(LxE["7p5͚�f|yj	�V^7#�P[A�l\Zol�I@��`�i�'��gR�V���=l��m�Zz�)zF �j��s��*�x^ʑ~<T�В�m#3_ܒ��2?ac����\D��k�D�V(�>���g�_�5����yn���3������܌�"�Yc��zOGN��
�Ȇ��6Z�E�J�1`��F�x�[;�~���i?�qǲ�h]����s�ky� lބ<��qA���*�4,��N-ԮҶ��s��z�Q�GS�3���k�K�r�{���.�L�1U{�.y1����\���o��(��4��r	}��>]�7U`u��*8���ӓ `gƀ��@i�vޙ.^�!d�����I�s�c��W�5uZ��0˃C#�g<;�=p�����ܤ#v
�)Q���&�x,i�	q�*��E�,�g%��Di6�7A����W�K�p�P���?�B��C01����@5v

����N,���{&̇����$.��w�_�,��YCǿ������{(�u=��¹��W+�z�%:�wn�i��؛��ߡ[;�*���v��G��p3z�äCB/�+�N�	K�.wBś"9鈏?��F,C+ҭ���H'�%<wk��/h4�d���;s�G7l���{9����p���Y�醯�j5�h���ڪ
Tm�x�m�T#/9t��Ɔ���5Kԁ�,��R�Fj�x�'&o8j��Q�;�MPQr�4�4p��WZ���&\H���10(h|�
��	)\Q���}�
�=�lH���!**|"V���o���/Dn���k��~����_���)�q
?�î�?~N����ݗ���_}��O���z��E��d�R����I�ۮ�ɾ����_n��]n��^n�z�C*g����쪼�%�}IŹZ�C��Yα��}I-oڗ<���ʙc�%z�J�uQ7h���h�Oy�O�c�~�����qU�U���9���Js|���%5��n�ٗ�~ڗ��:�������,�*�������<����
_{�Z�������[�B4b�7n��hc�8�����ŭ�.%)�WMxr��A��/��'�c?����4��Y��9{�������M1�Ő���/�P5��;~ ����r'���U���-k�KǷp*s��ǩ�G��6���4*^�_Z͖�3���*l<x@�;Y��8�hit�\Q�q�<0����5r,��=!���!M�W��P�l�IJ�Kb��w�~���H* �l��]X�����n�G_�-<S+/�j��{��~Ps��i����s�S%#`�: �[Br�"�#��D��-,��^���X`U��!�E��#n5 �D�k��G�厪���[W��Y��I_D�8��I�k�;�ң�\ɔDb�W�^O�t��'r��?��f(�p�>��;�1�=��(m�g>�E���HD�T���;F��lo@s�4"�	x���P3F�u�����b��W�s���0��������
j"�<AF�Q��t�G������ �����UC�P������|���]���I � ̌z��n$%.�+�p��n���js�3l��($���g�p��}U���U9��B"�{	�C�R�^\={��q>D9W��[�L@��ޣN�y�WC@�����p#ㄜx�!ܞ��5{h��x��U3G㘫�4���@шg�W@��os;#�-(�J�R�+ơ$ZP�̡7P,�h�0q�T�#��xչ�L�d��͵p���D4�KۉJ����W�9�̎:����Y�#�s�������=M|�u����N3굀QW�w(�ݝ�v�@\	�,{o��]����^�Î�TBe��3s��a�Q�7)@��!�l�N�3��5�i3fj�A3KD��L���LuLq�� c Z2Y���Y�B29��FC��Ch�YxrOT�gU/�J#�[�IO�������v�ͥUq�%v� �H��A��(�pR9|���Eh��-D��e�7���Yk>)�0!�놡�6kLB�m.�5l�e2����TK�t!��ts�.��M���TL[=F�H ��������kA�3�L�(���z��I.p��ur�A8G�Y]���o�JjzНP�rFGw�)Z,�3C>K��K�\����^��u���<��e�,L�1Z��Ň�Y�GN=���
�a�"��il�`�k�����QN��R!ž��Rc��(�u	ե+F<�-x:���fP�;-�� �VȒ���=��NgJ "uO��l�w�1�oLɄY
'�!��lЗJR$�oC1l���*��/��W�"�	�t����/��=��f�ʒ�<��)H:;���" Zi`�'�e�_�{�G��2	��G�TR4�^��.�����XIv�N�;�ۦ�*�k�V}��ᡕšO3����B>�GJ�r^�F�?(v�M^$f(	j*\���T&Wo 3��
���-�j'J�4���M��z]�;������VM���8�x����n�t
� ��.b��&�_�{�A�[W>�G����9Q�!��\�t0D]�v'��F�k ��Q#��l6�v��:��\�^��u�,�bp��$������e w��W *g%`��Ҍ�Q\R����PP�.����i�b~QH\̧������X����L��+!�.����`�����/����=����ÿ����'�z��v£
��%8��8�H�0D�JB(���_D���_�/��͟v����z����o��߯C�_�����%�*��Ϗ�qX};C�	�������a�W�o��~��w??0�_xZ�`��>��S��w߯�}\�>�����U0ۇ`�P��qZb�vZ�8-����27>�*a���L�	-��u��^����wNM�',��,*�8-q��J^�_8��T8��%<��w���y~�0�\fcY�f�C��t ��=������`\s��D�n��g��Ic.7X��{/�_��n���S{f�֋�}G(쁐����~��:5a��5c,�v�^�h��J'�n��|𻲌����5g����_��1�0�1YX��]�7>�g�� ]�j@�[�[$�t4?����boX�=�sW�=�!R�yQa�"v� ��cϣbm�rk�����k�6��a�F?#!��,�[�8�D��f��x2lQ�g��@rJ"��P����������+R��&VtDI���̬�:~"-��Y���u�e�c}��+6�B��S���!
��ܟuS:�k��o,��0zb&t��,�������~�-����B�Y��cgm�����w� ���x�v0�\���T��le��E�D��!��v�$Abx��:*d����E�ӝ��9{�k��R0�C�5����Zr��@�b���H�=����`O�銹[y*)2��N\��e,���}3��	�����{j��`�D24�<6H�P�Y�����Z�4�j��Y�a�h��%'�Q� �0���� ��&��IK�P[�~��U6�r/�+    ���YLD[w��f�L��#�25�]�GL�k��栋o�.b�c�`���Zi2�DU�ݬ����*M�3#,���2�ĬKή�cv��o�%��D��,w�S�0�Qa)�\�☂9�}?R��鼣�[���
�<dߠ0��溗;;��0���[|T�u�B���6��OD_�J���I�x�� ��3骷�Y36���@E�DE��%��h=@���Ð�0�2�~�,��'�j�
	�tG���eO����0Ʃ�m��Y��a��f[QdW��� `���^ׅ�5����
oƊ��:Gʑ8�#����"���t� �z 2�j�yt ?��Ga挂$_��v�x��@�`�+��	� �Tw��#jv��5��j�hy��/���.��G�pp����RxV��R8\qsUױrF"�q��;�� w�� �g����v(R)�SieJNQF3m8A��lT<�:Hˮ�l�'��Ѭl����bm)g���;z�Nב�h��Ԟ;�,�y���X�C�=P�E�y ^���50�
��.�zs�3~�cl���\5w�����)+��I%���y�'�rm�'��1�T\�
`��۵6�����[k�nu_����9��+L����4W<�.(���W��~�����(
P=�����T=�Si�R����y��N����-���N��Sf��\����U�����a�ѨS`8ýy\@F$K��[��]��aD�k�w]
�qqa,�5��_N��֠�mx�"mF�_̓.Τs}�l-��!	ޔ]�<v;�z�P����1�pO��>��J�^Y�Q\�̍��R;�R]u��{��;�j�x��uLbj��	�]}����	cDXj�&9�9\��p��$��~`����Su癛�V���dA�:�k�
�Č�=�J�����^�E��q%�u�$��l�^��}�N�}O���6!�4q��ʔ��� I�cy?anI�&<��/�k?$�:�,!^�fM���b\y1�#1�侾��=��V���V�>1 ����P#s��-�Nb$R܊kq���{K�m�s�g�Q���E
�!�3=�4�P�lGh��3�/땭�c@����s�UK���<e4�9U��̼�V�ֆ�����כU����W]�l7�>),�u�W����ƺ|mM&��v���t���x|Ĝ�L)���U$��f��W��4�� F��I�AP�<�d�#Y����a����1�+1'8A��4;�����E��"�7/%�l��A4N"��O�1�W074�����43� k���˰��a�03<|=���P�/+�>�'�؁�%Vf(	��+V��9'���k�Q��|>_��g�*Ӑ5�=sT2�֝0���4}���S�Ik�ɹ-�FR�"���E�/�ӨO~���92��q�0o�@���t��u�v�N1��D� ع����G�=��^ȕ�WNmc��[�9oOGY쪹"�]-����U�Y�z׍�8��5K|3^5&aV�Sv"��A0��T�v/T�2sU$�۷���B�$����)d4��I�u��?�o.�Y0���&B}6yq�^�9��gjg3��0���r��6a���o����g�i�7��vw8���g7�Ӆ(���|j�8bL7A#��<徕v�<��Z�tݓ���+�d�vW�5#�Uf:�p?wE��1��'-$��F*����@M׭g���^�.���6*J���K�7�#�����B�\L� QX/L�Ic�'એ,g��Ю�=z��ՙ5�NCs�/��B�ٞ�r#���v�n���o9X�G�t'L8-�~��f����\��JR��ܲ<�O��n�6�Q�0�H%2�����/9�h��<����3�_j�s3�d�2Q����� �L�(����a��u5�E��4,Ż�I�^�j�':��N>��1н|�W� ��k,B��(w�vb���0�5��s��LS�O����~��]��H���T"���J���N�t�,~�f�$)9�;�y�:�߅�"<�[�����g�����zc��r��UqзHPT��F�����H�uE��'m�2�ܩi��ɦ!�[R	�'f)���oK"/*Z��Q��-x/�T���ݧ	-O둩�Q�������M�x��3�bТ{�U��,2���XC\�9+�ό��?����F+m��w�O@AIC����|2�Ն�VBsLO�+#w�J�*�&Q����H|O@�Js���NF�g꦳�p!��0#�`b���7ޥ7�ގo>Ŕ�F'���,>҄9�lº�`B�j��ш4�>�>܅��(�Y��6hE�&�C�N�&�5.��t�����s϶L�����o�!(�*�.�<u>�H�PZڽ��w��-�@��>ώr���R�r=T����7}�P�t�;r�6�k�hd�I�x@�ke�b�` ;m�s,�w��鳴�W�@ӊ��C��`���c�VlQWt�.�,��)=�(�#�o𧆮�莩=�C/s@(\�]�Yf�c�5�	\�@�� �&{���gƊ��r��K�^1+Ma+B���;�$t���t
N�x�u YGG��gXA�� SF@M�)n���]���~#�'�\QL�y���ؽ�U�V$�)K|P=i�/A4 *#���#����.(�� �ĳ�Z'����䥂oZ;1>�7�7�)��%���S�f�љ3��N�mZ |�Q�gbQ0�=��.��rK�!��r��G���x�\�>��ܹ��x�\;M�F�+���l�O ��V�x���\�}�ɒ�b��g�y ����4ɤ�{��ئ��)��d��{�T;S�B�!)�Z��z��;�B:���[){
~��I�Ck�G�߈�M0��oٍ�z#!�^���~GuF�4�H%�x��<\%9��e�)f����-6̫��b���7�ہ�+�4��ǚnu��K|��G؟��-g"�hl�ߎ��O����Z����z��#ȝv���������Z@��`�{U)��r�K)7q+͘0rh=#�qu�ӓE��xW������i��&w��hM�SMV��>Yr��4�}0�������zy���{n�Ը#M��������?��V�Y� �m�G�"�u](�跣��R�8o��Q��d=�d�GP����3M}�pj��6!|���
�PJw�^�=������%,��;��]j�g��-`k��8���[���4��V��H��2�iLl#�]�-I����9L�ea[�H+U����ݏ(:
������A�t:+�i���ZM�W(ܮ���,S�^t����|�$a+���Sg�w�Ȃ}�Ib3k��O�]w[-��Lꙵ�>Jn��ksv(�A�:Ui ��W�m&�o@�}�i�gXRBX���]�1��ĝrG�W{�G� (&�{��h>�j�SU���L��C��݈�M�.\�\���&����_�B��$������θfw=��K*Q2r~"�56�0Ie\�\Q
7v�yE=g�o�}���N�l��\n7%�h�iC/I�iVZB#��R��7�����w޽��9V���q���-{�w���BV���v�=���O�c���b5UnA��^��l��e^�����q�������p�Q�񔥬����{�O�v莩-F�)��m����p!Œ���牝�x`Q�9�?�����R]k��h�@�O����@8��x�(��It�D�������k
��,��\�*�ƾ�l�m�He�y)�?P#=_�'�v������R�k�}N҃���X�=��7��◕�A p����ŋU����}�9�bsOقo�]��'�B�'l�xv��3|Yey<P���9N������EU��N��}&9Jg��t��&}'��ң%�UZV������R޳h���(=U�x��G�õ���s�KSK`��'�����5��Ѿ� ��<z���E[�T�2D&�b��p��5��K��9�Y�0=r�)�{�S��ܞ4�щη�|ts�hc��:8�� ���L��3���i �^﮾��v&��`�����<�۵[ ^   ��1����S�^���u�:��▓~�C���&����h��GҒ5cX ��&�?������E
.�`��w]~��^�~��F�w����}����k8           x�M�]o�0�����v�"Pv�H��� �TZ;�A*����ޜ�͓��G�^f� r�kQѬ�iS�"@�J7Ll=/g�������a�cF삕�nw���@9��h��F��]~��g�Usz7��EI?i-8cd��g���>[ؼ�t@7�d�J9��n�n{���qh�ͩ|��-9��Ţ��u�d�Ҹ��GPVe����6wS���@�ż�c`?$�U��W���G=�����5�뉚������yI9BEQ~ d�g�         �  x���MN�0���)r���8 l�*'u��G��@� X�a�X�`����s%�ƕZ(U+Rf޼O�Å��S�}�
9�0�Ϯ`�PS�BV�U�j!�X�'D�	�j�	rF+R�K5"�T�c����˞}���}j��#]+����c{o���e_c��f�P�f=�Ü�١.:�S&�܎'c����q�V�F�~��������~�/�/̏Ox��'�w��O��9ʗ��,�N�4�[[/��:]E�\ �%�}�$Ն)�_��,\���Ћ�BC8L�tS���OW��H�40�sJ����t|JK�@�sְ�v_�
Y�Z��0�CFi��=w���$�#��W����k#��e��]��X�9P�o�eF_x�zO\DK�'��	�u�9�M�ח���w"�Eg0��o{k     