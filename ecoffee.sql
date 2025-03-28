PGDMP                      }            ecoffee    17.3    17.3 C    
           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false                       1262    24936    ecoffee    DATABASE     m   CREATE DATABASE ecoffee WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en-GB';
    DROP DATABASE ecoffee;
                     postgres    false            �            1259    24937    accessories    TABLE     �   CREATE TABLE public.accessories (
    brand text,
    image text,
    name text,
    price numeric,
    slug text,
    "ID" integer NOT NULL
);
    DROP TABLE public.accessories;
       public         heap r       postgres    false            �            1259    24942    accessories_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."accessories_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."accessories_ID_seq";
       public               postgres    false    217                       0    0    accessories_ID_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."accessories_ID_seq" OWNED BY public.accessories."ID";
          public               postgres    false    218            �            1259    24943 	   beverages    TABLE     �   CREATE TABLE public.beverages (
    brand text,
    image text,
    name text,
    price numeric,
    slug text,
    "ID" integer NOT NULL
);
    DROP TABLE public.beverages;
       public         heap r       postgres    false            �            1259    24948    beverages_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."beverages_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."beverages_ID_seq";
       public               postgres    false    219                       0    0    beverages_ID_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."beverages_ID_seq" OWNED BY public.beverages."ID";
          public               postgres    false    220            �            1259    24949    capsules    TABLE     �   CREATE TABLE public.capsules (
    brand text,
    image text,
    name text,
    price numeric,
    slug text,
    "ID" integer NOT NULL
);
    DROP TABLE public.capsules;
       public         heap r       postgres    false            �            1259    24954    capsules_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."capsules_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."capsules_ID_seq";
       public               postgres    false    221                       0    0    capsules_ID_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."capsules_ID_seq" OWNED BY public.capsules."ID";
          public               postgres    false    222            �            1259    24955    cart    TABLE     n   CREATE TABLE public.cart (
    id integer NOT NULL,
    uid integer,
    pid integer,
    quantity integer
);
    DROP TABLE public.cart;
       public         heap r       postgres    false            �            1259    24958    cart_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cart_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.cart_id_seq;
       public               postgres    false    223                       0    0    cart_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.cart_id_seq OWNED BY public.cart.id;
          public               postgres    false    224            �            1259    24959    customer_products    TABLE     ^   CREATE TABLE public.customer_products (
    cid integer NOT NULL,
    pid integer NOT NULL
);
 %   DROP TABLE public.customer_products;
       public         heap r       postgres    false            �            1259    24962    machines    TABLE     �   CREATE TABLE public.machines (
    brand text,
    image text,
    name text,
    price numeric,
    slug text,
    "ID" integer NOT NULL
);
    DROP TABLE public.machines;
       public         heap r       postgres    false            �            1259    24967    machines_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."machines_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."machines_ID_seq";
       public               postgres    false    226                       0    0    machines_ID_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."machines_ID_seq" OWNED BY public.machines."ID";
          public               postgres    false    227            �            1259    24968    products    TABLE     �   CREATE TABLE public.products (
    brand text NOT NULL,
    image text NOT NULL,
    name text NOT NULL,
    price numeric(10,2) NOT NULL,
    slug text NOT NULL,
    category text NOT NULL,
    id integer NOT NULL,
    stock integer
);
    DROP TABLE public.products;
       public         heap r       postgres    false            �            1259    24973    products_id_seq    SEQUENCE     �   CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.products_id_seq;
       public               postgres    false    228                       0    0    products_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;
          public               postgres    false    229            �            1259    24974    users    TABLE     �   CREATE TABLE public.users (
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
       public         heap r       postgres    false            �            1259    24979    users_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."users_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."users_ID_seq";
       public               postgres    false    230                       0    0    users_ID_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."users_ID_seq" OWNED BY public.users."ID";
          public               postgres    false    231            �            1259    24980    variety    TABLE     �   CREATE TABLE public.variety (
    brand text,
    image text,
    name text,
    price numeric,
    slug text,
    "ID" integer NOT NULL
);
    DROP TABLE public.variety;
       public         heap r       postgres    false            �            1259    24985    variety_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."variety_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."variety_ID_seq";
       public               postgres    false    232                       0    0    variety_ID_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."variety_ID_seq" OWNED BY public.variety."ID";
          public               postgres    false    233            H           2604    24986    accessories ID    DEFAULT     t   ALTER TABLE ONLY public.accessories ALTER COLUMN "ID" SET DEFAULT nextval('public."accessories_ID_seq"'::regclass);
 ?   ALTER TABLE public.accessories ALTER COLUMN "ID" DROP DEFAULT;
       public               postgres    false    218    217            I           2604    24987    beverages ID    DEFAULT     p   ALTER TABLE ONLY public.beverages ALTER COLUMN "ID" SET DEFAULT nextval('public."beverages_ID_seq"'::regclass);
 =   ALTER TABLE public.beverages ALTER COLUMN "ID" DROP DEFAULT;
       public               postgres    false    220    219            J           2604    24988    capsules ID    DEFAULT     n   ALTER TABLE ONLY public.capsules ALTER COLUMN "ID" SET DEFAULT nextval('public."capsules_ID_seq"'::regclass);
 <   ALTER TABLE public.capsules ALTER COLUMN "ID" DROP DEFAULT;
       public               postgres    false    222    221            K           2604    24989    cart id    DEFAULT     b   ALTER TABLE ONLY public.cart ALTER COLUMN id SET DEFAULT nextval('public.cart_id_seq'::regclass);
 6   ALTER TABLE public.cart ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    224    223            L           2604    24990    machines ID    DEFAULT     n   ALTER TABLE ONLY public.machines ALTER COLUMN "ID" SET DEFAULT nextval('public."machines_ID_seq"'::regclass);
 <   ALTER TABLE public.machines ALTER COLUMN "ID" DROP DEFAULT;
       public               postgres    false    227    226            M           2604    24991    products id    DEFAULT     j   ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);
 :   ALTER TABLE public.products ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    229    228            N           2604    24992    users ID    DEFAULT     h   ALTER TABLE ONLY public.users ALTER COLUMN "ID" SET DEFAULT nextval('public."users_ID_seq"'::regclass);
 9   ALTER TABLE public.users ALTER COLUMN "ID" DROP DEFAULT;
       public               postgres    false    231    230            O           2604    24993 
   variety ID    DEFAULT     l   ALTER TABLE ONLY public.variety ALTER COLUMN "ID" SET DEFAULT nextval('public."variety_ID_seq"'::regclass);
 ;   ALTER TABLE public.variety ALTER COLUMN "ID" DROP DEFAULT;
       public               postgres    false    233    232            �          0    24937    accessories 
   TABLE DATA           L   COPY public.accessories (brand, image, name, price, slug, "ID") FROM stdin;
    public               postgres    false    217    I       �          0    24943 	   beverages 
   TABLE DATA           J   COPY public.beverages (brand, image, name, price, slug, "ID") FROM stdin;
    public               postgres    false    219   K       �          0    24949    capsules 
   TABLE DATA           I   COPY public.capsules (brand, image, name, price, slug, "ID") FROM stdin;
    public               postgres    false    221   �L       �          0    24955    cart 
   TABLE DATA           6   COPY public.cart (id, uid, pid, quantity) FROM stdin;
    public               postgres    false    223   �N       �          0    24959    customer_products 
   TABLE DATA           5   COPY public.customer_products (cid, pid) FROM stdin;
    public               postgres    false    225   �N                  0    24962    machines 
   TABLE DATA           I   COPY public.machines (brand, image, name, price, slug, "ID") FROM stdin;
    public               postgres    false    226   �N                 0    24968    products 
   TABLE DATA           X   COPY public.products (brand, image, name, price, slug, category, id, stock) FROM stdin;
    public               postgres    false    228   �P                 0    24974    users 
   TABLE DATA           [   COPY public.users (address, email, name, phone, surname, "ID", password, role) FROM stdin;
    public               postgres    false    230   ��                 0    24980    variety 
   TABLE DATA           H   COPY public.variety (brand, image, name, price, slug, "ID") FROM stdin;
    public               postgres    false    232   �                  0    0    accessories_ID_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."accessories_ID_seq"', 9, true);
          public               postgres    false    218                       0    0    beverages_ID_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."beverages_ID_seq"', 10, true);
          public               postgres    false    220                       0    0    capsules_ID_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."capsules_ID_seq"', 8, true);
          public               postgres    false    222                       0    0    cart_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.cart_id_seq', 57, true);
          public               postgres    false    224                       0    0    machines_ID_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."machines_ID_seq"', 4, true);
          public               postgres    false    227                       0    0    products_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.products_id_seq', 21, true);
          public               postgres    false    229                       0    0    users_ID_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."users_ID_seq"', 80, true);
          public               postgres    false    231                       0    0    variety_ID_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."variety_ID_seq"', 5, true);
          public               postgres    false    233            Q           2606    24998    accessories accessories_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.accessories
    ADD CONSTRAINT accessories_pkey PRIMARY KEY ("ID");
 F   ALTER TABLE ONLY public.accessories DROP CONSTRAINT accessories_pkey;
       public                 postgres    false    217            S           2606    25000    beverages beverages_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.beverages
    ADD CONSTRAINT beverages_pkey PRIMARY KEY ("ID");
 B   ALTER TABLE ONLY public.beverages DROP CONSTRAINT beverages_pkey;
       public                 postgres    false    219            U           2606    25002    capsules capsules_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.capsules
    ADD CONSTRAINT capsules_pkey PRIMARY KEY ("ID");
 @   ALTER TABLE ONLY public.capsules DROP CONSTRAINT capsules_pkey;
       public                 postgres    false    221            W           2606    25004    cart cart_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT cart_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.cart DROP CONSTRAINT cart_pkey;
       public                 postgres    false    223            Y           2606    25006 (   customer_products customer_products_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.customer_products
    ADD CONSTRAINT customer_products_pkey PRIMARY KEY (cid, pid);
 R   ALTER TABLE ONLY public.customer_products DROP CONSTRAINT customer_products_pkey;
       public                 postgres    false    225    225            [           2606    25008    machines machines_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.machines
    ADD CONSTRAINT machines_pkey PRIMARY KEY ("ID");
 @   ALTER TABLE ONLY public.machines DROP CONSTRAINT machines_pkey;
       public                 postgres    false    226            ]           2606    25010    products products_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public                 postgres    false    228            _           2606    25012    users users_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY ("ID");
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public                 postgres    false    230            a           2606    25014    variety variety_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.variety
    ADD CONSTRAINT variety_pkey PRIMARY KEY ("ID");
 >   ALTER TABLE ONLY public.variety DROP CONSTRAINT variety_pkey;
       public                 postgres    false    232            d           2606    25015 ,   customer_products customer_products_cid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_products
    ADD CONSTRAINT customer_products_cid_fkey FOREIGN KEY (cid) REFERENCES public.users("ID") ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.customer_products DROP CONSTRAINT customer_products_cid_fkey;
       public               postgres    false    4703    230    225            e           2606    25020 ,   customer_products customer_products_pid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_products
    ADD CONSTRAINT customer_products_pid_fkey FOREIGN KEY (pid) REFERENCES public.products(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.customer_products DROP CONSTRAINT customer_products_pid_fkey;
       public               postgres    false    228    225    4701            b           2606    25025    cart fk    FK CONSTRAINT     e   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT fk FOREIGN KEY (pid) REFERENCES public.products(id);
 1   ALTER TABLE ONLY public.cart DROP CONSTRAINT fk;
       public               postgres    false    223    4701    228            c           2606    25030    cart fk_users    FK CONSTRAINT     |   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT fk_users FOREIGN KEY (uid) REFERENCES public.users("ID") ON DELETE CASCADE;
 7   ALTER TABLE ONLY public.cart DROP CONSTRAINT fk_users;
       public               postgres    false    230    4703    223            �   �  x���M��0�����[�$��ED]������M33q�&4�t禂��y�#���|���W2ݙ��Q�������9�Z5\k	V�(}3���}5`�
�*^�C��O+�oB՞����S�'q�3HB�� �ޥJ���Z�^����i3�-���DaV�I��w�k-�f���`����s{�ߡ�І������f��/�g@0o�U��'[9d�^��;/�?�������3d��R.C�Ȣe��l��MH��8g�sY�W���������_�� ��pQR}
"���q�<�(M'hq!���J�m���m���΁>�������W���w�?��]����|��*���#-���X��� ��[\�dP�e���c��yNH�qF�ی���6#XQQώf0!)9#qD���?�����7Ps<S�v�<+Ԝ.�cY�&Q�����97�����8�n�ޓ��_I�G�      �   |  x����n�0�g�)���J�"$��H,]L0I�Զb��XQ�:WjGT���Vo�Rm�^_$�����&<�a4�(H��㈏F��S7�q!Pę�L��8JxA{�̨HRE��31uoD�^�w3>��|����������o���yqn�(�p����N�)��ȝV�{q����_ὖ3=�+XՃWyLX��8��C�H��,��<dib֕^�� ��!^��0>��|��@áY:I�=jQn�+-lzGb*�*�ft������rG�\ޛg��O��{�p+�}�����f�T�D��`�U�Jr����oΓ���G$J�H�clcZ21�5���+���oc��n�o��Iӹv���H      �   �  x��R͎�0>;O�K��M�$H�M�V��R��r]7-��Q������3p�ޠ}%7M˲��f���|�x�R��Z�mY���z�r^�-�k$���X�3�ƛ]*5���]���C!��l(�L�}��Bx���Y���K�!#!�j�J;�hؓ�ʦ�>|=|;~9�:>~�?�!b ;�k�},R��KӇ?�����4�[��ΡPY)�Wy��ZcF���&� �v4L�� h��������z&���9l��Y�%
�'�
21�KM�5#���U�g�����?�\�pJ.�W�:�'pxj�>�2O7{�~��6��x�#����ҙuW�bU�{�o^��F�U���0<]�����7�_�F^�u�,%�@�^Ehy9V���4U�ͪ�A�s]5wG�Y�zqG˻�(�tI]B�O�sWlw5�ޯ�\���Dy���t���Y��38d      �   (   x�32�4��44�4�25�41�4�4�26���b1z\\\ `U�      �      x������ � �          �  x����j�@���S̪����bIS|�8��iRJ���ęF�9�݆�/�]�m��R���0~������^`f�����s�T��Jɍ���1ƫ�ʪ�V�KLwWIs�J,�rV���5�y�2섁G�VD��%>L�^IvE!%�L\�����	+���,Ӣx��˛���
�;���Y��ѡ5�2Vq�ldD���Az��Lj~�P����b��z~�X��-H��|�5ӂ崞u�;��Z�#���3�5s���ba�wۛ���U��7�#R��W�A���+����s�6���J&�����9�}��O��bx��"v�!ӦAdp)W��s��;q=����6�G0�N��8��Їɠ�'{Po՗��Q?t�fV�HI�W):aC}4Y��hBs#z�&~G=�Pjr�5������~�"�텶k��$qI�7<��;z:�봧�n�%\�$��9�P�XR��S^�)\�8P0�Q���2M�'kU<G            x���I��Zw6��W܉2a�c�9�`����bO"��*�=��ȉb;g �� �PV B ن��})�s޻��,}�x/�Mr7k���N����8���ԍ����͏o���L_�:M�p�m���)�n��<a�h�F�)d���p�����k�1_ҷ:�������"����0���m�8��t�����2����{�C7��Ozҙa�m��7y�̓��A�ON:Ls��Ǟ>���	!���O_Qx[��}}>���'�}�~��$�����=�.��wQ8��߂tbs3�@4�̉�1��qg. �<�S��j����_9þ�'�9��e}=_�W�{����`�������v^�D�����ڵ�2��}���t����i܍�q�5Vh��qUwf�6h:ʓ����������*˗=����)�1�
*����$� Ü�+#�O2���w����{��ab�9й+�����Ɲ��G�|=�
s��"s�Χ��o����r����8�ps��4�\)E�H�1�d
��q+Y�,������-�[�)z��>�_�q�y>1ޫNξ`���ӯ�0���q:�֛��%�ȝQ�����h؝��<N֜�.�S���_;������P�+����پ��F��,��O�9�=q���NYj�0:yOj/ ��#��a��	 X֏�
��I�V&h9��r�"Դ"�^�x��,׆���N��6g�i�;�	� �,��7�k�wV
��e;�j�K���3-"UX�X5�$�bK��R�["L�9�H&9DYC�
��Ȯ�2�K�;۹tx?-�&W5���l�<��dU�FK���z��X��@�B��N��J"/�- ����)qU�V&f�텸��Ӊ��n\��NXHH�x8P������}Ek:��Μ�Q»��{g[�;��^c���Cb�s�u�^�o�>���o�:�j��#eV�k��y�.X01Q��Q�c��v�V�3q#JQj2���b�|,Nۙ˙�㤶��63<��[,���+w���7'�r3Y^�3i�C'��i�(��r{Uw��b����'�������<�[�j��]��ӔiQ�H+{/�W��zJ+�L�"kA���	�O�Zm9�N�M��Ƀ�\@�
�YG�)���C�*a;_q��X�@�?�n�{#CJ"MO�dB9��s�[H�$�Mk��#�A���*k�#��m���wj��H�TR�d�>B<Ji���* 3W
���Uh0�A��^�g%,9h�ݳL�4�0��R'��;�\��l;��V��^+�|U4��Nf]!k�h�#��D�;�y�����PQM�99�2YL�$��F�&e���j�a�[y�+�ݪ¦��!L�V�`�6��]���Ad�w��ܜ3�<�io(���J
Xb�P�}1l!��p����.��\�*
"�~�l�z�2�i�«��hW��G�^&I@δk��|���2�f�U��B>�h6XnҐ�����o\�"	m�l�K;�����a�sd�u��I�u�
	��NN��`Q��d~�(2T�;w󃙼�k���p� :�ׂPϭ�qH'>���CL>!��=�����]oz�ga�B���L�nL��2�R5�x"�D�-#��h�IU`P�U�rS ��1��p��)>F �����n䖡�7,�8:��H�4�?���p�ة���F�4��b�FGX�J˼����_tgE�n[�����A�b�I�� hp�#d�*M �cT�W׎��Bd>�(�P!��������ʫ-�Вz}B������E�������p0��z���^����4׷��g�����<�q���Q�C�+������$qT�^°7���\y�#�F�~��-U{�=%գ]�<����l�[N�7+%��O73e�8=B������C��T@ӳ,�C����-���"�\`t�*����c21�2�=d4�4�:�����٪GV�Gb~��pk��J�S��̓p��'!����4���zn��qzl]�7K����Mi�������Xz?<�eY�b@�A
o��G�T�wAU>�B��Lϣ����C<T�d�l�����v��ᘝ۰3��x�n���
�!D��u����,�z?�����4[�Y6����qʌky�Ǫ32w"	a!)�Kv�\ۡ`|�t׃s���7�TŎW$�(�1=�〹q���{��RE�!�5NVT�j�.<�l/Qan'�.&�a����X�hcɩz!N@%�Eoơ�Y���Y��p@[[�JL�>A�^����z
a�O"2��qoG�Q�A��D��7�s�+�3oׂ����?�N��'�ú�1�pY�%2�ˡ+�i� Qpgh$چ�7o�GPUDi��v���MF�ʫ�4����P�(@F0 l-ϩ��X�QOr(����;z`��V�x�����BZR*t-�Q1;U(����MK ]���+�`Jt�jd �!S�1}u�0�%�2Y`�|� B4^�R�m8dkR1I/vX�SJ6K�gr���7�P��|xB+��E98����.5�v�K/5/���Yrk�D�PɂY����HM��|7;@�P�[��ʾW�����<��m�h-%5n3�5Z�!�PYH����-z!K���vC��6�>!��e ��nR8���|wZ�>��k��gj�q�fF�ܧ�EM��4�>c��'h���j�`�ҷ���1\ճC��eD*�vJU�샓���ų˙<�-�U݂���D=HGc\Ԧگ�u���Q*��.O��4�PE��L�$�4�F��췺w^�U��A^�Þ/����w$
N�2�L�._�(��ib���
��G>X�g�$tmc�/k��~<�wZT��3n��-����I]���PEf�H�0`�O2�]/5�[F�t��mn�R+Mm1E��]�����\غ����+�-.ʙNJ]o�87���I+Aӑ��;�}�fc~{���a;նW����=JgǭE~i��Dy���E���4Nn�>9�>X��w�W��̬@�(扌H�� �����z��k��9 �l	�Ek9��xt�b��� ���7���zv�'U������.�a��p�=�|oI6>j�4|^F�L$�4��	
^і�A�E���_�Zù���H5�V8׆��p��:Xe������T��dae[�x[�ք�8h����n����@</�H?*KhIڶ��/nI�L����1���q.�u�5z"q�\����/ښ�sRT�<����Y������܌�"�Yc��|OGN��
�Ȇ��6Z�E�J�1`��F�x�[;�~���i?�qǲ�h]����s�ky� lބ<��qA���*�4,��N-ԮҶ��s��z�Q�GS�3���k�K�r�{���.�L�1R{�.y1����\���7]\��e�Ks��>����.|��*����`T�ˆ���I�3c@��`���R;�L/�2Kt}u�$�9б�x�+�ɚ:-�f��������3���8{HC\An�;�ꃔ(F�qf<�4�����m�z�"\��g�4�	�����Cī�%K8D(��ҟq��M�C01����@5v

����N,���{&̇���I\,L�����Y"�ݳ���K����P�C�zPC�s)��V��&Ktn��8�p�+�7%��C�v`U<{��n�˹�f�l�I��^�W~����]�&�7Er�.)�X�V�[gR��N0�Kx�֌3H^�h��q�w$���.��9�r�=O�!
V����_A�j���̛�U*�������=�F^r�.l�,Q��SK�	�A_�����q.`F1���6AUDɡ�H���_i	*��p!������Q+�'�pE�K s��*���!�χ����X�O�߿�'�����O_�������_}��ϧp��)�|�n��i?��_����}�?|��O��5�z��E-��-��:��_,N"�P�K^�U�O[�|R{b��z��冽���F��;�r��4ɮ�ki2�X�T��=ļ��[~\    ������ɣ�N��9�Q�Gg��_u�i��r����$[1&��AڞOyW�Qe�_K���Z�4�W�A�qiRc�����觥�_Q��OL�1�2�r;��_K���Οn��C��іeo�C1�m��ֵ��獛#>�X0N�m/�kqk�KI��U�\~�n��������X���qb޿���e�_}goו]�� �򂏽)s�2��`�K-Tn�AM�QNd���t�Ad�ԋ�5��[8��}��Tӣrq�B~j/e�/��fˉ�NQK6�� ҝ,|vx�4:N�(ظH����G�9G8��=!���!M�W��P�l�IJ�Kb��w�~���H* �l��]X�����n�_�-<S+/�j��{��~Ps��i����s�S%#`�: �[Br�"�#��D��-,��^���X`U��!�E��Cu5 �D�k���������[W��Y��I_D�8��I�k�;�ң�\ɔDb�W�^O�t̑'r��?���P��`|Nawc�{���ݎ�|��j)��\�$www�ts�ހ�iD�����!3F�u�����b��W�s���0��������
j"�<AF�ዥt�G����� �����UC�P������|���]���I � ̌z�m$%.�+�p��n���js�3l���%���g�p��}U���U9��B"�{	�C�R�^\={��q>D9W��[�L@��ޣN�y�WC@�����p#ㄜx�!ܞ�#�k4��J���f��1V9NiZa�!��Ϟ���ߚwF�[P2��E��'V�CI����Co�X$j��a�qP=u��U��3��_�7��Y�n� ,.m'*-�.���FC�Bf�+b���Q��ő��9���YBS˞&>�Ig�}��Z����;��NxO;t �\��7��.iq��G�(hA����oG�8܃?��~/R�d�C6ل�lg
n2�f��$D�f4��L=�����PuA�@�d6��'B��-�dr4>-����q��B��䞨�Ϊ^,%�F��t��sPr��H�K��J�A�ZՃ\�Q��r�0�S���r�[��˖o`x�%��|R�aBH�C]m&֘�6�\�k�D�dDccs����B4����]�%�V�ݩ��z���@pKoq���}ׂ�#f�@Q:o��>C�\�=����7�p���A�߰����;�8匎�S�XXg�|�r��
��D?�c�3�T�Fwyl��6DY��c�B��G��-��z\'�'�+��E�w��`���$����Q����B�}���H�Q4��KW�x�[�t���͠*wZ.;�{�jX!K2z7�4R:�	(H��=I�ʲ���ؿa%f)����w�A_*I�ľŰ����sK�b�帛�LXm�#LLD�x�_��>6�U����MA����.�JK>�,��zܓ=�n�IH�>2�z��y��^w)Ʀϧ�J�{Xt2��x�6�U�_cp�����,�x�)}���<RⰔ+�R4ʠ�.�6y���$��p��VP�R�\� �,6*Lgжt��(�Ӡ׊4%��uY�6O[5%�6�p��N6�E��)������
ܛ�~�v�I�oE���hr�L4Dq]�"��!�B�;��C6�4�'X��$���e���;�є����2_ծ��e1�ˤ&���.x�5�(�u�Q9+�L-!͈�%ջ>��5��Jz@�+����|�z�I!0�ﺉ9�K�Tk����R��"��� |��|���%�O�������?:�0�-}J>�޲*�_x��'�Y��?6U�I"I%!�@�FQ����%�_t%̛?-���v� ����|�����_��#����G\��������?��*�>��%�8�>kC~ϛ���ҿ�L����Y��o�5>!�'��|x�m6Ǥ�_�$n�,M�y��~�t�[�6S�L��Um�� !�Av0�Y��#�ҷ&}�Ps4��|��}�/_��8�������?����W�>�g���3A���-}�E�v�a��Qz wQ�'��sx\c�'�/0�~UY�|�?`�����/��o?�wL�=l���>�g���c���0���������q?��	��>����~o���?6|����M|��I�|͇_������(q�t
�*M@�����&���G���C�� �o���������j��c
�!g����{M�{|�P���4��`���OK�1؇m���+��8}�������s�q>|�?��>���I6��$�#ɦ�E��27>�*a�����dZ��u�������3���Ĝ��~$����F��d���	.'�}E����N_p2���0W��XV�Y��|=Q��_�]��H0��ۍ
��~�N�Bٍ��K֤���ËŽ�ϯ� ��1<�G�m��<���ղGT}�H��*�d�5�cٷ����ǀp�t閹0��+����,]s&�ޯ��|3#���)��}�[p�1�Jҕ������A2NG��Z�-��ړ?w���<�!5���-b����:�<���(��n��]�vhs��j�3����:��y@:o�!a� ��Ny6�$�$���Y� �����}�@��Ċ��;@�z���)���H�0b!:q]r��X�j�������u1w�B�2�g����"��Cm;���	��8��:9��8k?��{I.ଳPCuV9��Yk$%���  �C��>�8�@:���D1�"[Y>�C=�G�y��]C+IP���⁪��J�f*o��t��p��k�@�L��ЅrM��rC���tD"йX��E:�j��=��5ؓd�b�V�J�̿��.t@���~���z�#$}��m9 �-��/cV>��>�ָ.��Zz)vV�G����={�	f�:} �`��|Li���bҒ'����_|x���K���<pv��?Ʀ:�{��ȳL�tW����Z�9�������,��R�� �gj���^[�ivf�����^���u����u������Tc��s���y�F?�rŜ+SS� ' ��{8y:������B �7(̣������N,�&��'��L�����h�c�����R����hR�1�aw����L��f�̅��m9"�x�"j�]@� �k�aH]C�q�`����O�J��t����Zd�=���������sP�g�?��B�Ͷ�ȮF�rA�L�ｮ�k\���ތ��u����Xm��cL��:�Sӕ�#���WK�#o�Q��μ3
�|�r�sڡ�vX��up����3$,xRu�]h����#��~K���5��<��ڻ�����)�*.Kah�YgH�p��9T]��9�������O�b��ڟ��AH��O��)9EY�@��\Y�o�Q�� -�f�͟�nF���7?����U�����:]G梍FS{�ܲL����b�e�@-t/�x��v���+�����a��5���>�^py��mBb�Ƨ���K&����ik��˵������NPqQ+�yn��`r�VWl�u��}-�ǲ����z>�0�ó��\�P���r?_Q�_����6*�(@��g\p�S�<OU�EJ�zZT�S:QnN㷔�.;>O���r��+k��DG�{�χF�N! P����q�|,5�\lU<�w�fC���ib�uy8(��=ą�Lר7�~9�;\[�.����H��1O�8��-����䲇$xSv�����|�B�/3l؞���=�ft@��n�*50JxeaFq�j07N�J�||Ku�	l����>�D����1R�1���G'�w��q���	cDXj�&9�9\��p��$��~`����Su癛�V���dA�:�k�
�Č�=�J�����^�E��q%�u�$��l�^��}�N�zO���6!�4q�ʔ��� I�cy?anI�&<��/�k?$�:�� R�fM���b\y1�C1���Њ��p��]r�b� T}����Ie����T��Z�x38��Rk[���Yl�%�d��e��L��1+ۡ��    ����zek���hA��\~�R���>O�`NU�%3�C����A�3��fէj(�U�.�ͬO
�r�:�U��n��._�A�	�8��o*�$�31g3S�5zz�(�Y���%5����/��myD��@Ԅ;.O�7��H�9#vi�-&/E�D��J�	NPp$���a<q�m�H�͋:��j��H��S�����aC����ef`M��z62��`���ǋ~�������Sz��]be�� (���b�h�s����F��I����q&�2Y�3�'�o�	co|M�W���=՝���ۂk$E9 "�}]��;�����ы�#��W�	�d�NW|�]W�h`����q�zH
��kZ��xt<�|@���\	~��6J��c���t�Ů�+����?Qa�� X�p�U�w�x�S*Z��7�U#afuX1�a'�	��N%j�BU*3WER�}KK�/��O2��i��AF߅�[9���撝e#O��o �g�W�噃�|�v63;	���.��h
���.�,0O~V��z�ow�C��zv�;]��ͧƈ#V�t4b�S�[i��s|���N�=Y�>��rL�jw��Z3"Ze�S��3pW$��-#�}�B2�o�2i�,^�t�zv{�E�R��n���Q�T~�;R�*���.����	E����d�4��|���rF����c��=P�IQ��44g�ҩ-t����.�1�@n���(i���e~(Jw�2��l��K�����$Ua`_��-�����̮�n��s�T"�j̮Y����&�c��AP+>����;7L&,�=�n�rM�d�X��Qf�YW^$kJ�R����u��z�Ch������|�	 ̹�"T�p�n'F-P�C[�p/:�8�4��D:K��g��\��*`�L%�~̬ċ���L����i�H���3���#�]�.�ϰuh��}�.@������7v��-wP]}�E�j��^��tiP�1P�}�Ц)cPʝ:��.�l�r�%��xb�_]��$��~ڂ��L��}�������!�/��_��،W	+0��-�Zt��j՟E&?�k`�6g�������9��h�m��	"(iH����7�Of���J�a�	�	se�nTIZل ��<��	�]i����Ɉ�L�tv.dtf�L���ƻ�&»�۱�ͧ�R��x{�Ň�0"'�m@X�L�X�=����҇�p}9˵����p�����e�K{?].E��E!?���ܳ-���i��[tʤ
�&O���6R.��v����-��+|��東��/�z�&	x��o��,�tw��m�� ���:����x��<��αx��0DN�����l�Vd5�Z�k��{�b���u�g�NN��q��~�?5t�GwL���z�B����2#Ws'��OM�
�^� �5ًVp�pf��Z-g:����bA��"��[ذ�KB�P���@��$�7Z��ut�:��+H� `j��	8ŭ3�r�+�w|�o���+�I7O�^���`��Պ�7e��VOZ�K���H��%��>b�S���{�Y@����p�R�7���㔈���� �Ɓ�)t���̙�^��6-	� >ƨ�31�(�NQ�xs�%Ր�z9�ʣJ� z<t�Vd�@��Q�Gx�\;M�F�+���l�O ��V�x���\�}�ɒ�b��g�y ����4ɤ�{��ئ��)��d��{�T;S�B�!)�Z��z��;�B�a�:���[){
~��I�Ck�G�߈�M0��oٍ�z#!�^���~GuF�4�H%�x��<\%9��e�)f����-6̫��b��7�ہ�+�4��ǜnu��K|���ڟ��-g"�hl����O����Z����z��Cɝv����(�۵�������R�#�a/��ĭ4c�ȡq����aNO!h��]�n8�B����2��I��59`��j�Re�ɒˇ�Q��l}������ˋ��3p��iRǤ��'M���ոhE��	���Vy�� b�Qׅb���v4��J�p=
�`��Ǜ��j��<z��/N-��&����XapJ�N�k�g��<�=����v��K��l�R�lm?��|K���F=�jTiARfC:��m����%���?�I�,lK��i��Us���EG�WPw�4H�Nge?-��7C�)�
��u���ejЋ��<�ϙ�",`e^����\s����Y���5IlfM��	��n�E�ނ�zfm��ye(dd�S�8|��fB��ܗ��a9p�%%��;�a�`���#JN�)�qX~�z�
�b��w���é�n1U������j=��ލ��2���UHK��`�9<b�+[�v���\�����l�'�wI�"JF�O���F4 &��˝�/
�cA��î<����#������_�ۉ��������8m�%�!�2�JAHbd�^���\|�=�λ��=�JC`Q�1�z�e��.��^�
{ܮ��w�Z�w�U���-(t����U�-���˕��xb#.W�]�X�5�^#����Qpo�	��1��h7喹�㹡�.�X�;��<��,�5����ߣ�T_�k����}��7N$5^,���F� �|v�v���p��p9�����+[t�"RYn^���H�W�I�>��,�����ځb���`�'r=fw��M��ġ���%���z�bU{A�dfN��� ��S��[*�B�-鉪�	�5��b�_VY��ZY�'�rC�����*�S���>����J�Eu����H_���*-���K��Lq�
�Y����k���L���#��Z����å�%0q���R��z�h�i���<z���E[�T�2D&�b��p��5��K��9�Y�0=l�)�{�S��ܞ4�щη�|ts�hc��: �� ���L��3���i �^﮾��v&��`�����<�۵[��1����S�^���u�:��▓~�C���&����h�هҒ5cX ���?����Ộpy��ߒ��}����~�	������v�4>�z|mFە`�4��,���}�𷵾����Q�z��8~��~�zI��G��k��r�L"�E}��st@��o�Ϗ<��篷�?��͟�1����/�����-�8�������2̫j�v�>�)����oϢ D�vf��f^W��gg��(�U>q�e��|z���o��~��5�<7������&��+�~���c�C\~��g�����|�N���^�۱o_�x`�S�������.�}m�~��.�WR�p����;9��W��_��x~�zG��8�0��9�C4���'o�s��ZoΕu�7��v��F������`���OP����S_��Th��cwo�,����1ߙ��cԭ��P��u~�ѱo���H��b|����/v��SB�L$IS8N�����rJ�tY�hC���.�_�K�ο��u���h8m�?1��~��{�'�}��'!���n^8��`�}h���m�_ ut�6L?�N�?R[�*O��S~�yWT?$��P��7B��0�;�0�������ʤ8��������;)���z=�ݗ����|��uC㮟Ϛ&}F �����$�=H���0��X���`��|��r|���	7��h�tz�L�$D�����o�i�j��)W��vy3�˟B�/����������_��1?f�26��~V�&�|�l����H�O���}~L�9x���[}4xKކ���p4�	��s��8M��Q
����k��Μ����v�m���?���g=��,�?��9=4���ӵ�[�Q�-zU�	Y�eaa~�A*��w�W�8�q��a3~�}���8�}\h⃑��K���������ޗ�����C�?�9��\����~9�G�%��i;$�������o	�~�Q����w����,��Wz�Ow��<>PA���-�7��8����Q�+&��90�:��Ӷ�p��1�pϫ�����|ؖt�PZ��F�w(>�>�;�:?*N��� �   n���op��> ����ϯI���(��pxk���ӯ���*~��4��V��G���?�#N,a0B~�����|�j��hd����z�ڟ�ǵá\>��ï���z�B��E����A����g/��w{�������)�K9���ǁ~����7���}�s�         1  x��X���H�����2ʕP�r��̈Y���B1���3���6��_h���"�N��Kn��]��Np�D�X{��椏�x��8ٿZ�<޸2K�^~ �#L(�߯����y9w{�K�K���-�գg�d���ݴ7��Bvj.wޭ��(�Ĕ|����E��v��R�J�;�^}��/e�<.��"ߎ\��7��5w����Kw=��W�ng�^�Mo��l}��v�¢��|����t?�J�������þ�|�o'�S��i7��]��ʦw���c�=F�a�v��܌�R.�*��w��������?�����?|��Ro�$���}����������_�� a1���_���վ��o��x�����b��5}��+��H�gc=�#�p�]�@u^7�f��ōN��Q��ܛy�y���ß��ak�🆧�u��z����0�I��r�Q��w�;��|��4>�>P��ܽ~�>�)���&^���٤��0�����a�߂vGb�+^��^a�p"0r���A�
Gx@;�*H��
�y���_�Pw��MJ/l�v����3����4V��\��F���28�n^b�B A�1FXl��e���"�Q�-6�}��s��uz�~�7V1��f��u��S���%h�A�߆B�����N�������ĕ:���c��_���/oy��?�q�x>|���7�p�t�&�[2�{y��6�=�����>m	��3_�q��\����? �@Q�;���ťÙg�LJ�HF$ �=?ρ����h����ׇw���Aܣ�%��ڿ�֗"l'��Z(1d��m|��&�����CH�;�y�	�����=�I���z�<�ʿ P�-��1\�yPe���^ۓ�b[�V
#s�a�wp��e��9��x>��ю�-�\���Q����a����~�,��m��d���n���ab�/"��;��!_�6�����+lJJ��-"���;��3��>gT[��{�>�-m���1>�x
��]?�ΰ!s�F�8ǜϓ�4��m�p0/��f0\�a�oз5�R;���x�B�y�a+��a�ޕ۟����q\��u�ym�R)K繊x*�m��
��&Rl��v"г�
�C1�������Ԋ����f��ͼ]g�<�ù�R����:�� �w%~�Fg�u�+l��D����B�0��0�:�D��S���~C]��V�MN�qm��M��7�1�c؜빺�n�n.��Kް!� �t 󱃰5� Y��V=8ОP���L*Iz�n�ڸA��S��q�z�a��ڼ(��S�f��݉���tk�%o:�%��8FC;�ں3�8�^��������o��ӆ^u޽n�>�f��^9���G9Yy^�R����;8��K}���h0��ڨ�|+w�`�b)�4�=oϸ�J�����#��"j���W����.��J&��� SSv���7�"A�9Z<<�kb5�JG8���������N�q��BǓ�K���jd�ŉn&�8E�fc�.oQPK�K�����lEg�$�CC��:�-�g� ��?�ͥ��4�E]�+�I]�<خ=m�~����ZkT�s�s���k6z�$ɛF�2˛�꧁Q�h��A�	�z�������enxY���薦���:���6�������f���������g���	�����b���9�z�P?�۳�t�'q�{�ծ�]���:6�,�|}
W��,�*������[����+l�0�}�9�1�!������i+�����^/Jǲ;�0+UG�p�q��r>��q:��!�wK����A;�^go�x���i�y����cc�@ f�}M��ԫ�8�[I�"���O�h���M�Y��F�5��zo�sQ)�0��e~぀�"��d=K�G<�����Hx�a������+���9��|Q����0o�� f�%�}e��֮�U�:/�c����/s��-(�P+h�(��f��Q1R��bN����i��U�U�Ǥ~nu����������YW�Soѯƣ��/{�4_j/xH?~P&��S�[�R���}�%B_S��iBNG6�yy9�n�R7A�ҽ_����䞊{�u]y��?����B��RC�`J��yvN!u��I�+u�?��O���=��[^[�FݙV�M߭$���S���~w�d���tٌW��x�M	����]�s���+���#�N<����o�9_j�t6i�>Jꍈ�t�3�TU��iV�ex»܁.�_bC��4����N��^������Pj� {�o�9��n>G��x�]�(3�U�VDIz[�/1^
y��tGP�ʼ8}�ͷ{��9�X�G����������N��EI�B��g�t�vK�Y�'uY`��nu����QP�{���M_j�h`�5)��c�	����2JqN����7�9`��V�R��i��ex>M.1�WfWC�IS��&T�e�|���p�R�|�А;0@��&�h�ˠaa��{�'o�>�v�acT]�Z�Ty��5-&��Š(C�sm��A(�~�!0�r���..vL�X+ �IvQ����)}�� O�bJy�������n�?��*.6���O����,u���_b������n6� ƈ�O8��k� �߳�[!Q��|W�;i�A}6[O�g|��C7�w����H���h�,����˽���G҇׳Gy��]���ل������g��j��Sj��G�zx/�w�+���Ve�����>ID�5���E�+�a?�S%���7͕��1��/�����I��6��.�J����f�KX���ߑ*���*d35k�(���!��_�|�?�Ҡ�         �  x���MN�0���)r���8 l�*'u��G��@� X�a�X�`����s%�ƕZ(U+Rf޼O�Å��S�}�
9�0�Ϯ`�PS�BV�U�j!�X�'D�	�j�	rF+R�K5"�T�c����˞}���}j��#]+����c{o���e_c��f�P�f=�Ü�١.:�S&�܎'c����q�V�F�~��������~�/�/̏Ox��'�w��O��9ʗ��,�N�4�[[/��:]E�\ �%�}�$Ն)�_��,\���Ћ�BC8L�tS���OW��H�40�sJ����t|JK�@�sְ�v_�
Y�Z��0�CFi��=w���$�#��W����k#��e��]��X�9P�o�eF_x�zO\DK�'��	�u�9�M�ח���w"�Eg0��o{k     