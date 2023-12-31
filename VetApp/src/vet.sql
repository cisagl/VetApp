PGDMP     7                    {            vet    13.13    13.13 3    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    19051    vet    DATABASE     a   CREATE DATABASE vet WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Turkish_T�rkiye.1254';
    DROP DATABASE vet;
                postgres    false            �            1259    19311    animal    TABLE     H  CREATE TABLE public.animal (
    animal_id bigint NOT NULL,
    animal_breed character varying(255),
    animal_color character varying(255),
    animal_birth_date date,
    animal_gender character varying(255),
    animal_name character varying(255),
    animal_species character varying(255),
    animal_customer_id bigint
);
    DROP TABLE public.animal;
       public         heap    postgres    false            �            1259    19309    animal_animal_id_seq    SEQUENCE     }   CREATE SEQUENCE public.animal_animal_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.animal_animal_id_seq;
       public          postgres    false    201            �           0    0    animal_animal_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.animal_animal_id_seq OWNED BY public.animal.animal_id;
          public          postgres    false    200            �            1259    19322    appointment    TABLE     �   CREATE TABLE public.appointment (
    appointment_id bigint NOT NULL,
    appointment_date timestamp(6) without time zone,
    appointment_animal_id bigint,
    appointment_doctor_id bigint
);
    DROP TABLE public.appointment;
       public         heap    postgres    false            �            1259    19320    appointment_appointment_id_seq    SEQUENCE     �   CREATE SEQUENCE public.appointment_appointment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.appointment_appointment_id_seq;
       public          postgres    false    203            �           0    0    appointment_appointment_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.appointment_appointment_id_seq OWNED BY public.appointment.appointment_id;
          public          postgres    false    202            �            1259    19330    available_date    TABLE     �   CREATE TABLE public.available_date (
    available_date_id bigint NOT NULL,
    available_date_vet date,
    available_date_doctor_id bigint
);
 "   DROP TABLE public.available_date;
       public         heap    postgres    false            �            1259    19328 $   available_date_available_date_id_seq    SEQUENCE     �   CREATE SEQUENCE public.available_date_available_date_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.available_date_available_date_id_seq;
       public          postgres    false    205            �           0    0 $   available_date_available_date_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.available_date_available_date_id_seq OWNED BY public.available_date.available_date_id;
          public          postgres    false    204            �            1259    19338    customer    TABLE       CREATE TABLE public.customer (
    customer_id bigint NOT NULL,
    customer_address character varying(255),
    customer_city character varying(255),
    customer_mail character varying(255),
    customer_name character varying(255),
    customer_phone character varying(255)
);
    DROP TABLE public.customer;
       public         heap    postgres    false            �            1259    19336    customer_customer_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customer_customer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.customer_customer_id_seq;
       public          postgres    false    207            �           0    0    customer_customer_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.customer_customer_id_seq OWNED BY public.customer.customer_id;
          public          postgres    false    206            �            1259    19349    doctor    TABLE     
  CREATE TABLE public.doctor (
    doctor_id bigint NOT NULL,
    doctor_address character varying(255),
    doctor_city character varying(255),
    doctor_mail character varying(255),
    doctor_name character varying(255),
    doctor_phone character varying(255)
);
    DROP TABLE public.doctor;
       public         heap    postgres    false            �            1259    19347    doctor_doctor_id_seq    SEQUENCE     }   CREATE SEQUENCE public.doctor_doctor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.doctor_doctor_id_seq;
       public          postgres    false    209            �           0    0    doctor_doctor_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.doctor_doctor_id_seq OWNED BY public.doctor.doctor_id;
          public          postgres    false    208            �            1259    19360    vaccine    TABLE     �   CREATE TABLE public.vaccine (
    vaccine_id bigint NOT NULL,
    vaccine_code character varying(255),
    vaccine_name character varying(255),
    vaccine_protect_finish date,
    vaccine_protect_start date,
    vaccine_animal_id bigint
);
    DROP TABLE public.vaccine;
       public         heap    postgres    false            �            1259    19358    vaccine_vaccine_id_seq    SEQUENCE        CREATE SEQUENCE public.vaccine_vaccine_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.vaccine_vaccine_id_seq;
       public          postgres    false    211            �           0    0    vaccine_vaccine_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.vaccine_vaccine_id_seq OWNED BY public.vaccine.vaccine_id;
          public          postgres    false    210            D           2604    19314    animal animal_id    DEFAULT     t   ALTER TABLE ONLY public.animal ALTER COLUMN animal_id SET DEFAULT nextval('public.animal_animal_id_seq'::regclass);
 ?   ALTER TABLE public.animal ALTER COLUMN animal_id DROP DEFAULT;
       public          postgres    false    201    200    201            E           2604    19325    appointment appointment_id    DEFAULT     �   ALTER TABLE ONLY public.appointment ALTER COLUMN appointment_id SET DEFAULT nextval('public.appointment_appointment_id_seq'::regclass);
 I   ALTER TABLE public.appointment ALTER COLUMN appointment_id DROP DEFAULT;
       public          postgres    false    202    203    203            F           2604    19333     available_date available_date_id    DEFAULT     �   ALTER TABLE ONLY public.available_date ALTER COLUMN available_date_id SET DEFAULT nextval('public.available_date_available_date_id_seq'::regclass);
 O   ALTER TABLE public.available_date ALTER COLUMN available_date_id DROP DEFAULT;
       public          postgres    false    204    205    205            G           2604    19341    customer customer_id    DEFAULT     |   ALTER TABLE ONLY public.customer ALTER COLUMN customer_id SET DEFAULT nextval('public.customer_customer_id_seq'::regclass);
 C   ALTER TABLE public.customer ALTER COLUMN customer_id DROP DEFAULT;
       public          postgres    false    206    207    207            H           2604    19352    doctor doctor_id    DEFAULT     t   ALTER TABLE ONLY public.doctor ALTER COLUMN doctor_id SET DEFAULT nextval('public.doctor_doctor_id_seq'::regclass);
 ?   ALTER TABLE public.doctor ALTER COLUMN doctor_id DROP DEFAULT;
       public          postgres    false    209    208    209            I           2604    19363    vaccine vaccine_id    DEFAULT     x   ALTER TABLE ONLY public.vaccine ALTER COLUMN vaccine_id SET DEFAULT nextval('public.vaccine_vaccine_id_seq'::regclass);
 A   ALTER TABLE public.vaccine ALTER COLUMN vaccine_id DROP DEFAULT;
       public          postgres    false    211    210    211            �          0    19311    animal 
   TABLE DATA           �   COPY public.animal (animal_id, animal_breed, animal_color, animal_birth_date, animal_gender, animal_name, animal_species, animal_customer_id) FROM stdin;
    public          postgres    false    201   7>       �          0    19322    appointment 
   TABLE DATA           u   COPY public.appointment (appointment_id, appointment_date, appointment_animal_id, appointment_doctor_id) FROM stdin;
    public          postgres    false    203   �>       �          0    19330    available_date 
   TABLE DATA           i   COPY public.available_date (available_date_id, available_date_vet, available_date_doctor_id) FROM stdin;
    public          postgres    false    205   ?       �          0    19338    customer 
   TABLE DATA           ~   COPY public.customer (customer_id, customer_address, customer_city, customer_mail, customer_name, customer_phone) FROM stdin;
    public          postgres    false    207   Q?       �          0    19349    doctor 
   TABLE DATA           p   COPY public.doctor (doctor_id, doctor_address, doctor_city, doctor_mail, doctor_name, doctor_phone) FROM stdin;
    public          postgres    false    209   �?       �          0    19360    vaccine 
   TABLE DATA           �   COPY public.vaccine (vaccine_id, vaccine_code, vaccine_name, vaccine_protect_finish, vaccine_protect_start, vaccine_animal_id) FROM stdin;
    public          postgres    false    211   �@       �           0    0    animal_animal_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.animal_animal_id_seq', 14, true);
          public          postgres    false    200            �           0    0    appointment_appointment_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.appointment_appointment_id_seq', 24, true);
          public          postgres    false    202            �           0    0 $   available_date_available_date_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.available_date_available_date_id_seq', 6, true);
          public          postgres    false    204            �           0    0    customer_customer_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.customer_customer_id_seq', 11, true);
          public          postgres    false    206            �           0    0    doctor_doctor_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.doctor_doctor_id_seq', 9, true);
          public          postgres    false    208            �           0    0    vaccine_vaccine_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.vaccine_vaccine_id_seq', 17, true);
          public          postgres    false    210            K           2606    19319    animal animal_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.animal
    ADD CONSTRAINT animal_pkey PRIMARY KEY (animal_id);
 <   ALTER TABLE ONLY public.animal DROP CONSTRAINT animal_pkey;
       public            postgres    false    201            M           2606    19327    appointment appointment_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.appointment
    ADD CONSTRAINT appointment_pkey PRIMARY KEY (appointment_id);
 F   ALTER TABLE ONLY public.appointment DROP CONSTRAINT appointment_pkey;
       public            postgres    false    203            O           2606    19335 "   available_date available_date_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.available_date
    ADD CONSTRAINT available_date_pkey PRIMARY KEY (available_date_id);
 L   ALTER TABLE ONLY public.available_date DROP CONSTRAINT available_date_pkey;
       public            postgres    false    205            Q           2606    19346    customer customer_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (customer_id);
 @   ALTER TABLE ONLY public.customer DROP CONSTRAINT customer_pkey;
       public            postgres    false    207            S           2606    19357    doctor doctor_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.doctor
    ADD CONSTRAINT doctor_pkey PRIMARY KEY (doctor_id);
 <   ALTER TABLE ONLY public.doctor DROP CONSTRAINT doctor_pkey;
       public            postgres    false    209            U           2606    19368    vaccine vaccine_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.vaccine
    ADD CONSTRAINT vaccine_pkey PRIMARY KEY (vaccine_id);
 >   ALTER TABLE ONLY public.vaccine DROP CONSTRAINT vaccine_pkey;
       public            postgres    false    211            Y           2606    19384 *   available_date fk3hhr5kyo13rc8g6u3p3bsyedu    FK CONSTRAINT     �   ALTER TABLE ONLY public.available_date
    ADD CONSTRAINT fk3hhr5kyo13rc8g6u3p3bsyedu FOREIGN KEY (available_date_doctor_id) REFERENCES public.doctor(doctor_id);
 T   ALTER TABLE ONLY public.available_date DROP CONSTRAINT fk3hhr5kyo13rc8g6u3p3bsyedu;
       public          postgres    false    2899    209    205            V           2606    19369 !   animal fk7v0huk1yclccxra61tk2wo16    FK CONSTRAINT     �   ALTER TABLE ONLY public.animal
    ADD CONSTRAINT fk7v0huk1yclccxra61tk2wo16 FOREIGN KEY (animal_customer_id) REFERENCES public.customer(customer_id);
 K   ALTER TABLE ONLY public.animal DROP CONSTRAINT fk7v0huk1yclccxra61tk2wo16;
       public          postgres    false    2897    207    201            X           2606    19379 '   appointment fki81ox4a93tc9ka8c2fyd7p8h1    FK CONSTRAINT     �   ALTER TABLE ONLY public.appointment
    ADD CONSTRAINT fki81ox4a93tc9ka8c2fyd7p8h1 FOREIGN KEY (appointment_doctor_id) REFERENCES public.doctor(doctor_id);
 Q   ALTER TABLE ONLY public.appointment DROP CONSTRAINT fki81ox4a93tc9ka8c2fyd7p8h1;
       public          postgres    false    203    209    2899            Z           2606    19389 #   vaccine fko6uuy26nq7sv0pyruqjmwg43g    FK CONSTRAINT     �   ALTER TABLE ONLY public.vaccine
    ADD CONSTRAINT fko6uuy26nq7sv0pyruqjmwg43g FOREIGN KEY (vaccine_animal_id) REFERENCES public.animal(animal_id);
 M   ALTER TABLE ONLY public.vaccine DROP CONSTRAINT fko6uuy26nq7sv0pyruqjmwg43g;
       public          postgres    false    211    201    2891            W           2606    19374 '   appointment fksne2j50y78it7iyf8yjxhi1cl    FK CONSTRAINT     �   ALTER TABLE ONLY public.appointment
    ADD CONSTRAINT fksne2j50y78it7iyf8yjxhi1cl FOREIGN KEY (appointment_animal_id) REFERENCES public.animal(animal_id);
 Q   ALTER TABLE ONLY public.appointment DROP CONSTRAINT fksne2j50y78it7iyf8yjxhi1cl;
       public          postgres    false    2891    203    201            �   w   x�3��/�M�S�NM�,��tJ�L��Q()-*�K.�4202�54�50�ts�u�q����tv�4�$Yk���sd�$���pgV&f��A��5��s���s՚k�+c���� E%>D      �   >   x�Uɱ !�:��@�A~��B������p~@0��멝J�V�T(d��R���K|�      �   5   x�3�4202�54"N#.#��5FpM�\d�!�)�k�!�@�=... �
&      �   s   x�3��M-�N�RHNL�S�/.IT(���S��W0�<���K*���,N�O�)uHN��,�K���t�8M�M--��L-��8�S��$��b  \���)P e`Q�� �+F��� E=:$      �   �   x���1�0Eg�9A��	m�J���XY�$�(i#�-����]�P��`[�ϖ�Zr~DG#����]�t���u��"& �`	��`֥%�B()S@	!\� �``p\�YG;x��M�ϑF�}�O���~��o����xS����/i?W鲪�r�*���P�v�j;T�/��1�>=S�Q      �   �   x�3�uq�t761�KL"N##]C#]Cc��4䲀�4�K-���� �Ԅ�RC�Rs�J�8�=���$gHjq�cq&H�)V��Ȋq+3E�>�z#�RC�R3���TE� y�:�RK�R��=... �P     