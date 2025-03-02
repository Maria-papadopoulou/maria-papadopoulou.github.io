PGDMP  #                    }            ecoffee    17.4    17.4 :    4           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            5           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            6           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            7           1262    16551    ecoffee    DATABASE     m   CREATE DATABASE ecoffee WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'el-GR';
    DROP DATABASE ecoffee;
                     postgres    false            �            1259    16552    accessories    TABLE     �   CREATE TABLE public.accessories (
    brand text,
    image text,
    name text,
    price numeric,
    slug text,
    "ID" integer NOT NULL
);
    DROP TABLE public.accessories;
       public         heap r       postgres    false            �            1259    16557    accessories_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."accessories_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."accessories_ID_seq";
       public               postgres    false    217            8           0    0    accessories_ID_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."accessories_ID_seq" OWNED BY public.accessories."ID";
          public               postgres    false    218            �            1259    16558 	   beverages    TABLE     �   CREATE TABLE public.beverages (
    brand text,
    image text,
    name text,
    price numeric,
    slug text,
    "ID" integer NOT NULL
);
    DROP TABLE public.beverages;
       public         heap r       postgres    false            �            1259    16563    beverages_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."beverages_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."beverages_ID_seq";
       public               postgres    false    219            9           0    0    beverages_ID_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."beverages_ID_seq" OWNED BY public.beverages."ID";
          public               postgres    false    220            �            1259    16564    capsules    TABLE     �   CREATE TABLE public.capsules (
    brand text,
    image text,
    name text,
    price numeric,
    slug text,
    "ID" integer NOT NULL
);
    DROP TABLE public.capsules;
       public         heap r       postgres    false            �            1259    16569    capsules_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."capsules_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."capsules_ID_seq";
       public               postgres    false    221            :           0    0    capsules_ID_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."capsules_ID_seq" OWNED BY public.capsules."ID";
          public               postgres    false    222            �            1259    16570    customer_products    TABLE     ^   CREATE TABLE public.customer_products (
    cid integer NOT NULL,
    pid integer NOT NULL
);
 %   DROP TABLE public.customer_products;
       public         heap r       postgres    false            �            1259    16573    machines    TABLE     �   CREATE TABLE public.machines (
    brand text,
    image text,
    name text,
    price numeric,
    slug text,
    "ID" integer NOT NULL
);
    DROP TABLE public.machines;
       public         heap r       postgres    false            �            1259    16578    machines_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."machines_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."machines_ID_seq";
       public               postgres    false    224            ;           0    0    machines_ID_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."machines_ID_seq" OWNED BY public.machines."ID";
          public               postgres    false    225            �            1259    16579    products    TABLE     �   CREATE TABLE public.products (
    brand text NOT NULL,
    image text NOT NULL,
    name text NOT NULL,
    price numeric(10,2) NOT NULL,
    slug text NOT NULL,
    category text NOT NULL,
    id integer NOT NULL
);
    DROP TABLE public.products;
       public         heap r       postgres    false            �            1259    16584    products_id_seq    SEQUENCE     �   CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.products_id_seq;
       public               postgres    false    226            <           0    0    products_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;
          public               postgres    false    227            �            1259    16585    users    TABLE     �   CREATE TABLE public.users (
    address text,
    email text,
    name text,
    phone text,
    surname text,
    "ID" integer NOT NULL,
    password text
);
    DROP TABLE public.users;
       public         heap r       postgres    false            �            1259    16590    users_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."users_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."users_ID_seq";
       public               postgres    false    228            =           0    0    users_ID_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."users_ID_seq" OWNED BY public.users."ID";
          public               postgres    false    229            �            1259    16591    variety    TABLE     �   CREATE TABLE public.variety (
    brand text,
    image text,
    name text,
    price numeric,
    slug text,
    "ID" integer NOT NULL
);
    DROP TABLE public.variety;
       public         heap r       postgres    false            �            1259    16596    variety_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."variety_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."variety_ID_seq";
       public               postgres    false    230            >           0    0    variety_ID_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."variety_ID_seq" OWNED BY public.variety."ID";
          public               postgres    false    231            y           2604    16597    accessories ID    DEFAULT     t   ALTER TABLE ONLY public.accessories ALTER COLUMN "ID" SET DEFAULT nextval('public."accessories_ID_seq"'::regclass);
 ?   ALTER TABLE public.accessories ALTER COLUMN "ID" DROP DEFAULT;
       public               postgres    false    218    217            z           2604    16598    beverages ID    DEFAULT     p   ALTER TABLE ONLY public.beverages ALTER COLUMN "ID" SET DEFAULT nextval('public."beverages_ID_seq"'::regclass);
 =   ALTER TABLE public.beverages ALTER COLUMN "ID" DROP DEFAULT;
       public               postgres    false    220    219            {           2604    16599    capsules ID    DEFAULT     n   ALTER TABLE ONLY public.capsules ALTER COLUMN "ID" SET DEFAULT nextval('public."capsules_ID_seq"'::regclass);
 <   ALTER TABLE public.capsules ALTER COLUMN "ID" DROP DEFAULT;
       public               postgres    false    222    221            |           2604    16600    machines ID    DEFAULT     n   ALTER TABLE ONLY public.machines ALTER COLUMN "ID" SET DEFAULT nextval('public."machines_ID_seq"'::regclass);
 <   ALTER TABLE public.machines ALTER COLUMN "ID" DROP DEFAULT;
       public               postgres    false    225    224            }           2604    16601    products id    DEFAULT     j   ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);
 :   ALTER TABLE public.products ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    227    226            ~           2604    16602    users ID    DEFAULT     h   ALTER TABLE ONLY public.users ALTER COLUMN "ID" SET DEFAULT nextval('public."users_ID_seq"'::regclass);
 9   ALTER TABLE public.users ALTER COLUMN "ID" DROP DEFAULT;
       public               postgres    false    229    228                       2604    16603 
   variety ID    DEFAULT     l   ALTER TABLE ONLY public.variety ALTER COLUMN "ID" SET DEFAULT nextval('public."variety_ID_seq"'::regclass);
 ;   ALTER TABLE public.variety ALTER COLUMN "ID" DROP DEFAULT;
       public               postgres    false    231    230            #          0    16552    accessories 
   TABLE DATA           L   COPY public.accessories (brand, image, name, price, slug, "ID") FROM stdin;
    public               postgres    false    217   ]?       %          0    16558 	   beverages 
   TABLE DATA           J   COPY public.beverages (brand, image, name, price, slug, "ID") FROM stdin;
    public               postgres    false    219   OA       '          0    16564    capsules 
   TABLE DATA           I   COPY public.capsules (brand, image, name, price, slug, "ID") FROM stdin;
    public               postgres    false    221   �B       )          0    16570    customer_products 
   TABLE DATA           5   COPY public.customer_products (cid, pid) FROM stdin;
    public               postgres    false    223   �D       *          0    16573    machines 
   TABLE DATA           I   COPY public.machines (brand, image, name, price, slug, "ID") FROM stdin;
    public               postgres    false    224   �D       ,          0    16579    products 
   TABLE DATA           Q   COPY public.products (brand, image, name, price, slug, category, id) FROM stdin;
    public               postgres    false    226   �F       .          0    16585    users 
   TABLE DATA           U   COPY public.users (address, email, name, phone, surname, "ID", password) FROM stdin;
    public               postgres    false    228   =d       0          0    16591    variety 
   TABLE DATA           H   COPY public.variety (brand, image, name, price, slug, "ID") FROM stdin;
    public               postgres    false    230   le       ?           0    0    accessories_ID_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."accessories_ID_seq"', 9, true);
          public               postgres    false    218            @           0    0    beverages_ID_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."beverages_ID_seq"', 10, true);
          public               postgres    false    220            A           0    0    capsules_ID_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."capsules_ID_seq"', 8, true);
          public               postgres    false    222            B           0    0    machines_ID_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."machines_ID_seq"', 4, true);
          public               postgres    false    225            C           0    0    products_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.products_id_seq', 21, true);
          public               postgres    false    227            D           0    0    users_ID_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."users_ID_seq"', 4, true);
          public               postgres    false    229            E           0    0    variety_ID_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."variety_ID_seq"', 5, true);
          public               postgres    false    231            �           2606    16605    accessories accessories_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.accessories
    ADD CONSTRAINT accessories_pkey PRIMARY KEY ("ID");
 F   ALTER TABLE ONLY public.accessories DROP CONSTRAINT accessories_pkey;
       public                 postgres    false    217            �           2606    16607    beverages beverages_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.beverages
    ADD CONSTRAINT beverages_pkey PRIMARY KEY ("ID");
 B   ALTER TABLE ONLY public.beverages DROP CONSTRAINT beverages_pkey;
       public                 postgres    false    219            �           2606    16609    capsules capsules_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.capsules
    ADD CONSTRAINT capsules_pkey PRIMARY KEY ("ID");
 @   ALTER TABLE ONLY public.capsules DROP CONSTRAINT capsules_pkey;
       public                 postgres    false    221            �           2606    16611 (   customer_products customer_products_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.customer_products
    ADD CONSTRAINT customer_products_pkey PRIMARY KEY (cid, pid);
 R   ALTER TABLE ONLY public.customer_products DROP CONSTRAINT customer_products_pkey;
       public                 postgres    false    223    223            �           2606    16613    machines machines_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.machines
    ADD CONSTRAINT machines_pkey PRIMARY KEY ("ID");
 @   ALTER TABLE ONLY public.machines DROP CONSTRAINT machines_pkey;
       public                 postgres    false    224            �           2606    16615    products products_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public                 postgres    false    226            �           2606    16617    users users_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY ("ID");
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public                 postgres    false    228            �           2606    16619    variety variety_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.variety
    ADD CONSTRAINT variety_pkey PRIMARY KEY ("ID");
 >   ALTER TABLE ONLY public.variety DROP CONSTRAINT variety_pkey;
       public                 postgres    false    230            �           2606    16620 ,   customer_products customer_products_cid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_products
    ADD CONSTRAINT customer_products_cid_fkey FOREIGN KEY (cid) REFERENCES public.users("ID") ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.customer_products DROP CONSTRAINT customer_products_cid_fkey;
       public               postgres    false    223    4749    228            �           2606    16625 ,   customer_products customer_products_pid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_products
    ADD CONSTRAINT customer_products_pid_fkey FOREIGN KEY (pid) REFERENCES public.products(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.customer_products DROP CONSTRAINT customer_products_pid_fkey;
       public               postgres    false    223    226    4747            #   �  x���M��0�����[�$��ED]������M33q�&4�t禂��y�#���|���W2ݙ��Q�������9�Z5\k	V�(}3���}5`�
�*^�C��O+�oB՞����S�'q�3HB�� �ޥJ���Z�^����i3�-���DaV�I��w�k-�f���`����s{�ߡ�І������f��/�g@0o�U��'[9d�^��;/�?�������3d��R.C�Ȣe��l��MH��8g�sY�W���������_�� ��pQR}
"���q�<�(M'hq!���J�m���m���΁>�������W���w�?��]����|��*���#-���X��� ��[\�dP�e���c��yNH�qF�ی���6#XQQώf0!)9#qD���?�����7Ps<S�v�<+Ԝ.�cY�&Q�����97�����8�n�ޓ��_I�G�      %   |  x����n�0�g�)���J�"$��H,]L0I�Զb��XQ�:WjGT���Vo�Rm�^_$�����&<�a4�(H��㈏F��S7�q!Pę�L��8JxA{�̨HRE��31uoD�^�w3>��|����������o���yqn�(�p����N�)��ȝV�{q����_ὖ3=�+XՃWyLX��8��C�H��,��<dib֕^�� ��!^��0>��|��@áY:I�=jQn�+-lzGb*�*�ft������rG�\ޛg��O��{�p+�}�����f�T�D��`�U�Jr����oΓ���G$J�H�clcZ21�5���+���oc��n�o��Iӹv���H      '   �  x��R͎�0>;O�K��M�$H�M�V��R��r]7-��Q������3p�ޠ}%7M˲��f���|�x�R��Z�mY���z�r^�-�k$���X�3�ƛ]*5���]���C!��l(�L�}��Bx���Y���K�!#!�j�J;�hؓ�ʦ�>|=|;~9�:>~�?�!b ;�k�},R��KӇ?�����4�[��ΡPY)�Wy��ZcF���&� �v4L�� h��������z&���9l��Y�%
�'�
21�KM�5#���U�g�����?�\�pJ.�W�:�'pxj�>�2O7{�~��6��x�#����ҙuW�bU�{�o^��F�U���0<]�����7�_�F^�u�,%�@�^Ehy9V���4U�ͪ�A�s]5wG�Y�zqG˻�(�tI]B�O�sWlw5�ޯ�\���Dy���t���Y��38d      )      x������ � �      *   �  x����j�@���S̪����bIS|�8��iRJ���ęF�9�݆�/�]�m��R���0~������^`f�����s�T��Jɍ���1ƫ�ʪ�V�KLwWIs�J,�rV���5�y�2섁G�VD��%>L�^IvE!%�L\�����	+���,Ӣx��˛���
�;���Y��ѡ5�2Vq�ldD���Az��Lj~�P����b��z~�X��-H��|�5ӂ崞u�;��Z�#���3�5s���ba�wۛ���U��7�#R��W�A���+����s�6���J&�����9�}��O��bx��"v�!ӦAdp)W��s��;q=����6�G0�N��8��Їɠ�'{Po՗��Q?t�fV�HI�W):aC}4Y��hBs#z�&~G=�Pjr�5������~�"�텶k��$qI�7<��;z:�봧�n�%\�$��9�P�XR��S^�)\�8P0�Q���2M�'kU<G      ,      x��zI��Jv޺M{C��<�h9���99g���L�3���r[��a��$�a4�nK�P�/9����	ғ��f��8C�����
��+�<��n}_w�A�Q���k��UP�}T��P�v0�`�`p���~K�hUF�U�����ߧ����������_��ÿ����}�݇߀��>o��v��$�\�'�=�<}����?��F�Gc�zר{"߭K�뼟���ִ���
}C�??���_~���޳�^�2	�����^]'e�u�(���?������L�����>�1��{e\Uo��0�n�W(�j�]�'S�~F}��߿!����A�Q�%y�,�F���������O�������?>�a��������{���G<���IW�wCL�����|��S�g�p��ǽ���
?T6��
%@�q{_�?�2�������0�G���;%���P}�ݪ�뻛Wt l��� ,_��c0�ݫ?����"�f�"A�"�]yX��<�D�  1�Fr����(�Q�b�@�>� �$^[=���/����������z�L�	�*|�\}~^9Vxu7 �O�$��oD{������6wF(�W[�W��q_o���0��-�����|�[}�a��t%�Z�V�_�l_���}��x�b���������~��?��[}V!�K���������}k8CL�1����ϯ2�����|O!O�r~�=���G�wF��d�ώ6��*��>rΫ�~n�D���'���>q|��>8�����%p��g�ȷ���j-I�^WW���[�?<<��^�$~�H��M�'���c��1{�u���5����>��w<���"
������ �G-\�Iche(�f�d��
�Qr����K�h�I�k�Z��_}7)�
0Ͽ�
 �_$�=	�ۯI��0���k�i�U$e��JO�k���ާʧD�G�B�wZ[��󶪲o$������(�!�<	���Mr����F����#J�+����`������@����}~�ߏ���%����/x�-����Y�U���UU�C�YۮD����'�}HU?P��U���z��"�h
'P���H�F`UZ�I�S.�|T���J�v?G;/��>�9�����&פ�r�W]T.޳�����Y��Y��'�}�|���#0�W�UV��0|��%�Gi��P!G`[Zi�����#ܮ6����E����g���5/Hb��l�!q�;��W�U]ի��p�?�HJ};���b�¯4�A��ʏ��{��~@�^sC�Z o7�z�߿|3ί���_~�`�����o�{��͏�!�j���y�����G�M�~~B�v\�
Ű�O��k��a	��g���Gb�>�L=	����?�SG�n�F�Y�����u�-@��$��{4�Q��9$j�r3���)���歽��q@؃T�`�{�G��u����c���w���y��*s`�ߥ��ȯ?�����Mx�����(F���Z����p���@a��JPY�药ZM��?!�'����$Ð�?�}��m�z@G?���D��:�?��o}�;��/�@���,�a�2��#�1��]xI�����؄8VO_��;��!��U�+�#?�ֆG���>LÙ�����HQ���??��N��/(���ܟ�Y�#��W��E�/a6����ddA��7�����zc�-�^g��t4����@-�['nc������Q{�������|0�������e?�#k����Yԝ�)󵗒n��V���9��1<LH+ݤ,�V���{e�zq������(K� ��ߥ%��T�����"����i-o����;q;�t���:X��8WH�__�����)t�=�ey��Z���l7�����n�����x�m�pr�)��D��zo]p����ʨ,R4sI2KM���U�f2����߼}����n��&���n�=�����fs�N6��M	Ʈky��x{Ⱥ��*q]����B�a5�tk=�c탫�>��6=O�J�t���tmM��l�1�pGߕr�4�I�J�đ1�x�ޙ��k��;��pl�*ᬸ��7��G4�/�O��)%�i����{�M�B�Ŝ7�?�7�(k�q���IƁ��ȩ^j3��ִlڂ�oD\"�����"��sEE��Xb�����=B�}�X��,�Zo:�->Nr/��ٞ���?G�\&
v��8��N��R[:�Y�b�¬\�u6#*6�E=�XSv�Hr(���AM-��]��:i����]RaZ��
���Eߙ�r���Vz��&!���!�e�����~�w�~q���R���[���"�ت��L��e����O!���<t����m�
��D����ql�4�k�U�Gm��	b�f��3r&���!�C�ԼXՂ� �lx�
��4]~}���h�K���M�91����=�WK�7|��K^��!�X^J��u#T�i��C+!j�SV�wCbե� n�P���
�M��[�8Iuw�pr��ɒ<������
�^�*�)�1x�zxi��K~��G��9��-Tk7��F�����M�H��Ey�I�x/�9C�S<�;�Gn�U9��p�){�躷-hY��
}1Whe�Mx�7>�2ry�D�2Oh�Ӄ�~�=i��UĪ@���Ƅ�T�Ꚇ�2���Sk*�٘��1��-�"!�b^5�v��A�4�5��.��ۇ�(R䂍iRǞ%�EO�:����*�#�\��p�7U���`L��%��԰5��)O-V\n���s�/��5��0�Wb����Pnc� ʴf�u��AA�5*r�'/g���>�4Ãv�ɡ�p`�#y6��eզnQE�:���]�scQ��u55��#R���\�*���g��Ƌw/�6��'����5��̘�ڭó1�/'y:�k�g�|��T�k���/zTP3n��@�M�t`ɠn�����no��$� <�V0�Ce$P���Д�#�d�=�KQ��t4�^���� �"����h�	(���@�[��#��H��0O	�Wڼv���6��.�Z�ڣ��g��TJ9J��<g)9ʶ5f}����2���;�y�v�mдk���l�*D���Fk�aG��=�w���\�u�`Q�P!��'}Q�:��
���u~z�w{e��:h�����.~�}��Hѯ|��앞#d��&�7�ȱl�
�x�y�C�c2�����(����r�(�晄eĳ�ua�oa7���Ym�ɭ�O�)��Nwi�=���Bi`}�ů�h*�p���Qr���Ļ\�7�U�	3�� g�Tܝؐ�t�7�ƝljR�h�p�x�U.#}�4-gI�T3
(��A���ZK�[o�i�>|jU������P]��N^$��8������ ��dhu��Պ�HۋS�\֒�ʶ[�n�i*ύ��y}�����w�ݞ*�a�A.�. C�q�"�nI�8�*�ԝ$�V����pe�U��2%Z�¦n��qw�t�Zb��rF��.�kv�2���V�)r�L��EH:�`��tFhkʭ�e+��2϶����DC�[l�!�>�<��W��pq��j�=���渨n�C������vӐ�� `۠k	'�+�r5���L����z�/���=�6\#2^b�a[>��v��i[�Kg=�+Z*�P.�&;� �s&u�K{t
��V���M��1�|�oH�C�sH�tK��b���!<hg$Tz�;�����{RM)/�`��W�t�6���H�#t1dX_� V�}O@:&�v[�?�s���t�"bk��'3��h�&��X>٦T��f���S��$�&<���m�Պik�>ϩD^���E�������Z9��X\It����ڛPe��`�l�;���6��{�5/FE�48h!�0PB	�n01���M��F;�+��A9��5x���`��i ���6Z��v/M�H8c�Nu�0�K�M,���'J+<��h�T����x�o.P}kq��4Ig7�dA�g߭��`3^b,� B  �jD����K�W�A`$ǥC�/M��Ks��dF�����gu�	��s�O��_ZKm����Lq���*"*���LMb)L�@����K?U�!T�*[BЛofh��1�}3H�p�ȩ��lm�(w�3�r�)�oK��V=��w[z�Vd��#v��w�Vk}���r$ͭ&cv�
b6�V�9X����P4���YD�.�v��f.��Fn����]	����4	�Ƞa�ŵ�Y����l�pD�*G���7���*">U��)7�
��Z<쯬��I��Z;�=`�����t�Q�!����� �p�%�=�
no���bI���B.s�vsӔ<�6N�{��ܜfmי<{����_6rQ̣u�Oh�?�j�X��U#սB�8W`::ꖝ�KN�\��Ѩ��x��)Mv�d���n<�g�#/U�&�>��Xw4G�t������=��g^����ҹu��NiyN ��28J�@M���à�������&��c�Գ>U$���pTLiI��XOzHC��~I����p0s���}��P�6]�l/����;���Q��@�w5D��L��cJfN)�
]m�����ؚYT���j���%�Jb/��9���W
Jm<·-���b�C2(Ƭco7���0�*�HF'c�y���¨�7���M�iګlO�fɤ�f ���%;uJ^-�φ=?kՆ�j���:�>�3��  ��ƻgx�����T�֕?�/���
��Ž���s�5�`�ͲՂ��0�<��ީ���8� �)me'3�#/Kz+2q��Жi�x�n��@����X(�vu�� ˕m(M�7h[�v�EttVXM>
���pHA�fQ"�׻�wFl��'���2��TQ (���LH��NQ�=P�
q��81���w�G`tj��i�FD������:.�(�˶��{z�d��h�b%u��^�lb�)7Zd��B�e QU!ډ�S�[��{� ��-�zO��頰���+�.y쐡ױْ��G+� A	dMY�S�LiE�1�]�qM9g��R�M���$v&�W�D�8��^ �䷬�^ma���3�@
���u4/ncpT�4��7t�<BK�1g�l��u1�=w�z���9����^C��L��G7D�ԉ�8Y��F���}�X���4�k�"6m_�m���:��#��P�[i�mq��G7,�m)r�
��Y-ˠ\��DN�b���\�;��rȑ|^���F�ΔҘ `uQZ�7�p5š�һq�+&�i�  ��T� ���1�&4[�(&�2�;��6'�ȊH:�;ڭ�vDH��,٩�r��3�xAy�ȤX�����=#����@�6�?��3���~���N�?�������M��{�zu=�����W/��Ç?}��'�vC��+�����G����A��Lb�w���%��m���<>��D<����(�+��:��/�M�c_2yۗ����܄$��?�K�I�e_��_�7��g8h���H+.(wi����rm��~��n������*��J�{зʧ}I�[��K�_�%�S���ݬ~�ܚ�O�~���[߯�ͩ:|�� ^�;Y7Y��t6����~��[��tZ����Ju���vRw>9!'D��#h{s~ۏ��Y��g��=����q�F�`w|�I��;fM'��=�C^�ƥZH���	��M���z�T���bT����
�$~�� R5?�2���cV��Mm���}v`#ܔ<�Z��C��&9�6ڙ*�G.,�f[��ː���`-9]|��.�FJ���������=L�bD�j����Ҁ�w�E����,Z���&FC���᳨Bf�K�r!�%_�s
1C���G�3�/p�� K� 8�C���1�u�*�Η�Ta�o��1(�P��&9Lm*��q��9�LŤʜgL�<Ȫ�^�;E~��i���qĄ~D$�Ь4y
��ۙ����/�K�.E��`�\��i�R�ۅ���m�F��] �w� �mwO6���D%r.:����H����1�a�Rg?�f�%]f�b�E�2���-��.�D1��^<�7;N-N�#wPB��S���D,b��ރ�}�5�M+ �7��7�fa%�P�~ђ�h��:��O}�!�1sπnD9Ȧ�Ho�a��is8)��(�f�M�B�H�ǳ�7��v�Q	�Է&��zB=+4"��\S'tt�PhTw!��;"��.a��ފ(:$�IŃԢ�LX����c��P��C���q�����5.Ԥ��ʺ>
`��k�U���s(����s�Zl[�q:��E9���x�`"{�ܖ�0��!�K1P~�<"����D��4;9&��W�����V����!�?�+C�'�c���п��hK�f����=C��9$����ea��1EqG�Ӝ�r�g#|9w-������z�;B"�����h�:�>x��H�t�&\����{�����b%��K��OG�Dl{�4B��"��c����C9�+�%���Y��UU
j�=��^B���A��1C"�vǺעK�|���V%�$;�S���{_ɋV�Q?�u�WZ>��L�`�Tk&&��8'3�@n���)�e��1�q<OSʞ��C��\���r�1�c~w�Q5crw����vN��s��qGa��U�Xjڲ�����aA����: 3��ᵷ��N� �L
��#��vz�d�����G����.m��i�-w�t简���`�$��qn���Ο��![P�s��v�M�q�e�N����WӘуaMa�M����	�c���x.Ƃ����;O�#}�D{��F<��T��dC`�1)^��a瞜M�hl|�)H���N�L�D�t���#S2P�!i��'n�1eQh*O����6T�c�?������S[�'�P@toD����]9%QoHT�4�tB&�^�����n�v�XĚ�=c}�]"<���iW6I?�a|��Z"k�,�2?����/ Wnͅ��m%	m%lF��3��~�1B;f�4r+����w}!�iXU�"�L��w�� F:3^�ڭ:G}a��>�4j��/eF6Z�e���LF�Q[��n���}خe��wM 6)��t3qg/��]yC��ہT)�{a�"��wR���֯=���Mҩȿ�D�Hh�׊�����bSD�2��ݹ��y�ء��m:B�D�"�J���ǽ����=��a\�3��R��Ԁ���yů��	H�[3؏2M
I7h!���jqI�8���j�`>�Zk�X�_��`�����^~����_�~<���|����eߤ��/q~��Q��	�Fp�x=��#_�_�v��%��;���_����_~����?�����.��ܛ_Ϗ%��>C��wp,|�|=,��|x�� �����޽��I��      .     x�-N�N�0��_��`'��H�� [U	��m��mbG������ ��H,����N�I��ޓ�s���\�~\{z�^�}����}vO g"�Q��(�%w<Xl����{�W-��Q�,������~�����0�1Cca,��t+��6��3]A/K� �4!l�B��1}#]���.E���Vـ�eP�JX�{	XJ	��\K�!ɍ^�u�92�v�'ٍ�e��i��)ei�/P7kQ����/�:�g�x�c6��UA.h~%��=Ɠ;}�n��Ԉ'      0   �  x���MN�0���)r���8 l�*'u��G��@� X�a�X�`����s%�ƕZ(U+Rf޼O�Å��S�}�
9�0�Ϯ`�PS�BV�U�j!�X�'D�	�j�	rF+R�K5"�T�c����˞}���}j��#]+����c{o���e_c��f�P�f=�Ü�١.:�S&�܎'c����q�V�F�~��������~�/�/̏Ox��'�w��O��9ʗ��,�N�4�[[/��:]E�\ �%�}�$Ն)�_��,\���Ћ�BC8L�tS���OW��H�40�sJ����t|JK�@�sְ�v_�
Y�Z��0�CFi��=w���$�#��W����k#��e��]��X�9P�o�eF_x�zO\DK�'��	�u�9�M�ח���w"�Eg0��o{k     