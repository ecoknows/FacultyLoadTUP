PGDMP                         y            facultyload    13.2    13.2 ?   ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    70727    facultyload    DATABASE     o   CREATE DATABASE facultyload WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.utf8';
    DROP DATABASE facultyload;
                renegado    false            ?            1259    70728    account_emailaddress    TABLE     ?   CREATE TABLE public.account_emailaddress (
    id integer NOT NULL,
    email character varying(254) NOT NULL,
    verified boolean NOT NULL,
    "primary" boolean NOT NULL,
    user_id integer NOT NULL
);
 (   DROP TABLE public.account_emailaddress;
       public         heap    renegado    false            ?            1259    70731    account_emailaddress_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.account_emailaddress_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.account_emailaddress_id_seq;
       public          renegado    false    200            ?           0    0    account_emailaddress_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.account_emailaddress_id_seq OWNED BY public.account_emailaddress.id;
          public          renegado    false    201            ?            1259    70733    account_emailconfirmation    TABLE     ?   CREATE TABLE public.account_emailconfirmation (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    sent timestamp with time zone,
    key character varying(64) NOT NULL,
    email_address_id integer NOT NULL
);
 -   DROP TABLE public.account_emailconfirmation;
       public         heap    renegado    false            ?            1259    70736     account_emailconfirmation_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.account_emailconfirmation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.account_emailconfirmation_id_seq;
       public          renegado    false    202            ?           0    0     account_emailconfirmation_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.account_emailconfirmation_id_seq OWNED BY public.account_emailconfirmation.id;
          public          renegado    false    203            ?            1259    70738 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    renegado    false            ?            1259    70741    auth_group_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          renegado    false    204            ?           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          renegado    false    205            ?            1259    70743    auth_group_permissions    TABLE     ?   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    renegado    false            ?            1259    70746    auth_group_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          renegado    false    206            ?           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          renegado    false    207            ?            1259    70748    auth_permission    TABLE     ?   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    renegado    false            ?            1259    70751    auth_permission_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          renegado    false    208            ?           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          renegado    false    209            ?            1259    70753    base_basepage    TABLE     H   CREATE TABLE public.base_basepage (
    page_ptr_id integer NOT NULL
);
 !   DROP TABLE public.base_basepage;
       public         heap    renegado    false            ?            1259    70756 	   base_room    TABLE     [   CREATE TABLE public.base_room (
    id integer NOT NULL,
    name character varying(50)
);
    DROP TABLE public.base_room;
       public         heap    renegado    false            ?            1259    70759    base_room_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.base_room_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.base_room_id_seq;
       public          renegado    false    211            ?           0    0    base_room_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.base_room_id_seq OWNED BY public.base_room.id;
          public          renegado    false    212            ?            1259    70761    base_schedule    TABLE     6  CREATE TABLE public.base_schedule (
    id integer NOT NULL,
    day character varying(20),
    start_time integer NOT NULL,
    ending_time integer NOT NULL,
    lec integer NOT NULL,
    lab integer NOT NULL,
    units integer NOT NULL,
    room_id integer,
    section_id integer,
    subject_id integer
);
 !   DROP TABLE public.base_schedule;
       public         heap    renegado    false            ?            1259    70764    base_schedule_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.base_schedule_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.base_schedule_id_seq;
       public          renegado    false    213            ?           0    0    base_schedule_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.base_schedule_id_seq OWNED BY public.base_schedule.id;
          public          renegado    false    214            ?            1259    70766    base_subject    TABLE     ?   CREATE TABLE public.base_subject (
    id integer NOT NULL,
    subject_code character varying(50),
    description text,
    course_id integer
);
     DROP TABLE public.base_subject;
       public         heap    renegado    false            ?            1259    70772    base_subject_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.base_subject_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.base_subject_id_seq;
       public          renegado    false    215            ?           0    0    base_subject_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.base_subject_id_seq OWNED BY public.base_subject.id;
          public          renegado    false    216            ?            1259    70774    base_timeload    TABLE     H   CREATE TABLE public.base_timeload (
    page_ptr_id integer NOT NULL
);
 !   DROP TABLE public.base_timeload;
       public         heap    renegado    false            ?            1259    70777    course_college    TABLE     `   CREATE TABLE public.course_college (
    id integer NOT NULL,
    name character varying(50)
);
 "   DROP TABLE public.course_college;
       public         heap    renegado    false            ?            1259    70780    course_college_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.course_college_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.course_college_id_seq;
       public          renegado    false    218            ?           0    0    course_college_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.course_college_id_seq OWNED BY public.course_college.id;
          public          renegado    false    219            ?            1259    70782    course_course    TABLE     -  CREATE TABLE public.course_course (
    id integer NOT NULL,
    name character varying(50),
    abbreviation character varying(50),
    first_year_section integer NOT NULL,
    second_year_section integer NOT NULL,
    third_year_section integer NOT NULL,
    fourth_year_section integer NOT NULL
);
 !   DROP TABLE public.course_course;
       public         heap    renegado    false            ?            1259    70785    course_course_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.course_course_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.course_course_id_seq;
       public          renegado    false    220            ?           0    0    course_course_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.course_course_id_seq OWNED BY public.course_course.id;
          public          renegado    false    221            ?            1259    70787    course_department    TABLE     {   CREATE TABLE public.course_department (
    id integer NOT NULL,
    name character varying(50),
    college_id integer
);
 %   DROP TABLE public.course_department;
       public         heap    renegado    false            ?            1259    70790    course_department_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.course_department_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.course_department_id_seq;
       public          renegado    false    222            ?           0    0    course_department_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.course_department_id_seq OWNED BY public.course_department.id;
          public          renegado    false    223            ?            1259    70792    course_section    TABLE     ?   CREATE TABLE public.course_section (
    id integer NOT NULL,
    year integer NOT NULL,
    name character varying(100) NOT NULL,
    course_id integer
);
 "   DROP TABLE public.course_section;
       public         heap    renegado    false            ?            1259    70795    course_section_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.course_section_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.course_section_id_seq;
       public          renegado    false    224            ?           0    0    course_section_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.course_section_id_seq OWNED BY public.course_section.id;
          public          renegado    false    225            ?            1259    70797     depthead_departmentheadindexpage    TABLE     [   CREATE TABLE public.depthead_departmentheadindexpage (
    page_ptr_id integer NOT NULL
);
 4   DROP TABLE public.depthead_departmentheadindexpage;
       public         heap    renegado    false            ?            1259    70800    depthead_facultyloadingpage    TABLE     V   CREATE TABLE public.depthead_facultyloadingpage (
    page_ptr_id integer NOT NULL
);
 /   DROP TABLE public.depthead_facultyloadingpage;
       public         heap    renegado    false            ?            1259    70803    depthead_facultyloadpage    TABLE     S   CREATE TABLE public.depthead_facultyloadpage (
    page_ptr_id integer NOT NULL
);
 ,   DROP TABLE public.depthead_facultyloadpage;
       public         heap    renegado    false            ?            1259    70806    django_admin_log    TABLE     ?  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    renegado    false            ?            1259    70813    django_admin_log_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          renegado    false    229            ?           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          renegado    false    230            ?            1259    70815    django_content_type    TABLE     ?   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    renegado    false            ?            1259    70818    django_content_type_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          renegado    false    231            ?           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          renegado    false    232            ?            1259    70820    django_migrations    TABLE     ?   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    renegado    false            ?            1259    70826    django_migrations_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          renegado    false    233            ?           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          renegado    false    234            ?            1259    70828    django_session    TABLE     ?   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    renegado    false            ?            1259    70834    django_site    TABLE     ?   CREATE TABLE public.django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);
    DROP TABLE public.django_site;
       public         heap    renegado    false            ?            1259    70837    django_site_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_site_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.django_site_id_seq;
       public          renegado    false    236            ?           0    0    django_site_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.django_site_id_seq OWNED BY public.django_site.id;
          public          renegado    false    237            ?            1259    70839    facultyload_facultyload    TABLE     R   CREATE TABLE public.facultyload_facultyload (
    page_ptr_id integer NOT NULL
);
 +   DROP TABLE public.facultyload_facultyload;
       public         heap    renegado    false            ?            1259    70842    facultyload_facultyloading    TABLE     U   CREATE TABLE public.facultyload_facultyloading (
    page_ptr_id integer NOT NULL
);
 .   DROP TABLE public.facultyload_facultyloading;
       public         heap    renegado    false            ?            1259    70845    facultyload_facultyloadmodel    TABLE     ?   CREATE TABLE public.facultyload_facultyloadmodel (
    id integer NOT NULL,
    year integer NOT NULL,
    semester character varying(20) NOT NULL,
    approved boolean NOT NULL,
    professor_id integer,
    schedule_id integer
);
 0   DROP TABLE public.facultyload_facultyloadmodel;
       public         heap    renegado    false            ?            1259    70848 #   facultyload_facultyloadmodel_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.facultyload_facultyloadmodel_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.facultyload_facultyloadmodel_id_seq;
       public          renegado    false    240            ?           0    0 #   facultyload_facultyloadmodel_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.facultyload_facultyloadmodel_id_seq OWNED BY public.facultyload_facultyloadmodel.id;
          public          renegado    false    241            ?            1259    70850    socialaccount_socialaccount    TABLE     D  CREATE TABLE public.socialaccount_socialaccount (
    id integer NOT NULL,
    provider character varying(30) NOT NULL,
    uid character varying(191) NOT NULL,
    last_login timestamp with time zone NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    extra_data text NOT NULL,
    user_id integer NOT NULL
);
 /   DROP TABLE public.socialaccount_socialaccount;
       public         heap    renegado    false            ?            1259    70856 "   socialaccount_socialaccount_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.socialaccount_socialaccount_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.socialaccount_socialaccount_id_seq;
       public          renegado    false    242            ?           0    0 "   socialaccount_socialaccount_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.socialaccount_socialaccount_id_seq OWNED BY public.socialaccount_socialaccount.id;
          public          renegado    false    243            ?            1259    70858    socialaccount_socialapp    TABLE     #  CREATE TABLE public.socialaccount_socialapp (
    id integer NOT NULL,
    provider character varying(30) NOT NULL,
    name character varying(40) NOT NULL,
    client_id character varying(191) NOT NULL,
    secret character varying(191) NOT NULL,
    key character varying(191) NOT NULL
);
 +   DROP TABLE public.socialaccount_socialapp;
       public         heap    renegado    false            ?            1259    70864    socialaccount_socialapp_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.socialaccount_socialapp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.socialaccount_socialapp_id_seq;
       public          renegado    false    244            ?           0    0    socialaccount_socialapp_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.socialaccount_socialapp_id_seq OWNED BY public.socialaccount_socialapp.id;
          public          renegado    false    245            ?            1259    70866    socialaccount_socialapp_sites    TABLE     ?   CREATE TABLE public.socialaccount_socialapp_sites (
    id integer NOT NULL,
    socialapp_id integer NOT NULL,
    site_id integer NOT NULL
);
 1   DROP TABLE public.socialaccount_socialapp_sites;
       public         heap    renegado    false            ?            1259    70869 $   socialaccount_socialapp_sites_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.socialaccount_socialapp_sites_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.socialaccount_socialapp_sites_id_seq;
       public          renegado    false    246            ?           0    0 $   socialaccount_socialapp_sites_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.socialaccount_socialapp_sites_id_seq OWNED BY public.socialaccount_socialapp_sites.id;
          public          renegado    false    247            ?            1259    70871    socialaccount_socialtoken    TABLE     ?   CREATE TABLE public.socialaccount_socialtoken (
    id integer NOT NULL,
    token text NOT NULL,
    token_secret text NOT NULL,
    expires_at timestamp with time zone,
    account_id integer NOT NULL,
    app_id integer NOT NULL
);
 -   DROP TABLE public.socialaccount_socialtoken;
       public         heap    renegado    false            ?            1259    70877     socialaccount_socialtoken_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.socialaccount_socialtoken_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.socialaccount_socialtoken_id_seq;
       public          renegado    false    248            ?           0    0     socialaccount_socialtoken_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.socialaccount_socialtoken_id_seq OWNED BY public.socialaccount_socialtoken.id;
          public          renegado    false    249            ?            1259    70879 
   taggit_tag    TABLE     ?   CREATE TABLE public.taggit_tag (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL
);
    DROP TABLE public.taggit_tag;
       public         heap    renegado    false            ?            1259    70882    taggit_tag_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.taggit_tag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.taggit_tag_id_seq;
       public          renegado    false    250            ?           0    0    taggit_tag_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.taggit_tag_id_seq OWNED BY public.taggit_tag.id;
          public          renegado    false    251            ?            1259    70884    taggit_taggeditem    TABLE     ?   CREATE TABLE public.taggit_taggeditem (
    id integer NOT NULL,
    object_id integer NOT NULL,
    content_type_id integer NOT NULL,
    tag_id integer NOT NULL
);
 %   DROP TABLE public.taggit_taggeditem;
       public         heap    renegado    false            ?            1259    70887    taggit_taggeditem_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.taggit_taggeditem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.taggit_taggeditem_id_seq;
       public          renegado    false    252            ?           0    0    taggit_taggeditem_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.taggit_taggeditem_id_seq OWNED BY public.taggit_taggeditem.id;
          public          renegado    false    253            ?            1259    70889    users_professor    TABLE     ?  CREATE TABLE public.users_professor (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    department_id integer,
    department_head boolean NOT NULL,
    time_in character varying(50),
    time_out character varying(50),
    middle_name character varying(20)
);
 #   DROP TABLE public.users_professor;
       public         heap    renegado    false            ?            1259    70895    users_professor_groups    TABLE     ?   CREATE TABLE public.users_professor_groups (
    id integer NOT NULL,
    professor_id integer NOT NULL,
    group_id integer NOT NULL
);
 *   DROP TABLE public.users_professor_groups;
       public         heap    renegado    false                        1259    70898    users_professor_groups_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.users_professor_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.users_professor_groups_id_seq;
       public          renegado    false    255            ?           0    0    users_professor_groups_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.users_professor_groups_id_seq OWNED BY public.users_professor_groups.id;
          public          renegado    false    256                       1259    70900    users_professor_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.users_professor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.users_professor_id_seq;
       public          renegado    false    254            ?           0    0    users_professor_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.users_professor_id_seq OWNED BY public.users_professor.id;
          public          renegado    false    257                       1259    70902     users_professor_user_permissions    TABLE     ?   CREATE TABLE public.users_professor_user_permissions (
    id integer NOT NULL,
    professor_id integer NOT NULL,
    permission_id integer NOT NULL
);
 4   DROP TABLE public.users_professor_user_permissions;
       public         heap    renegado    false                       1259    70905 '   users_professor_user_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.users_professor_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.users_professor_user_permissions_id_seq;
       public          renegado    false    258            ?           0    0 '   users_professor_user_permissions_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.users_professor_user_permissions_id_seq OWNED BY public.users_professor_user_permissions.id;
          public          renegado    false    259                       1259    70907    wagtailadmin_admin    TABLE     D   CREATE TABLE public.wagtailadmin_admin (
    id integer NOT NULL
);
 &   DROP TABLE public.wagtailadmin_admin;
       public         heap    renegado    false                       1259    70910    wagtailadmin_admin_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.wagtailadmin_admin_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.wagtailadmin_admin_id_seq;
       public          renegado    false    260            ?           0    0    wagtailadmin_admin_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.wagtailadmin_admin_id_seq OWNED BY public.wagtailadmin_admin.id;
          public          renegado    false    261                       1259    70912    wagtailcore_collection    TABLE     ?  CREATE TABLE public.wagtailcore_collection (
    id integer NOT NULL,
    path character varying(255) NOT NULL COLLATE pg_catalog."C",
    depth integer NOT NULL,
    numchild integer NOT NULL,
    name character varying(255) NOT NULL,
    CONSTRAINT wagtailcore_collection_depth_check CHECK ((depth >= 0)),
    CONSTRAINT wagtailcore_collection_numchild_check CHECK ((numchild >= 0))
);
 *   DROP TABLE public.wagtailcore_collection;
       public         heap    renegado    false                       1259    70920    wagtailcore_collection_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.wagtailcore_collection_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.wagtailcore_collection_id_seq;
       public          renegado    false    262            ?           0    0    wagtailcore_collection_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.wagtailcore_collection_id_seq OWNED BY public.wagtailcore_collection.id;
          public          renegado    false    263                       1259    70922 %   wagtailcore_collectionviewrestriction    TABLE     ?   CREATE TABLE public.wagtailcore_collectionviewrestriction (
    id integer NOT NULL,
    restriction_type character varying(20) NOT NULL,
    password character varying(255) NOT NULL,
    collection_id integer NOT NULL
);
 9   DROP TABLE public.wagtailcore_collectionviewrestriction;
       public         heap    renegado    false            	           1259    70925 ,   wagtailcore_collectionviewrestriction_groups    TABLE     ?   CREATE TABLE public.wagtailcore_collectionviewrestriction_groups (
    id integer NOT NULL,
    collectionviewrestriction_id integer NOT NULL,
    group_id integer NOT NULL
);
 @   DROP TABLE public.wagtailcore_collectionviewrestriction_groups;
       public         heap    renegado    false            
           1259    70928 3   wagtailcore_collectionviewrestriction_groups_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.wagtailcore_collectionviewrestriction_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 J   DROP SEQUENCE public.wagtailcore_collectionviewrestriction_groups_id_seq;
       public          renegado    false    265            ?           0    0 3   wagtailcore_collectionviewrestriction_groups_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.wagtailcore_collectionviewrestriction_groups_id_seq OWNED BY public.wagtailcore_collectionviewrestriction_groups.id;
          public          renegado    false    266                       1259    70930 ,   wagtailcore_collectionviewrestriction_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.wagtailcore_collectionviewrestriction_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public.wagtailcore_collectionviewrestriction_id_seq;
       public          renegado    false    264            ?           0    0 ,   wagtailcore_collectionviewrestriction_id_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public.wagtailcore_collectionviewrestriction_id_seq OWNED BY public.wagtailcore_collectionviewrestriction.id;
          public          renegado    false    267                       1259    70932    wagtailcore_comment    TABLE     ?  CREATE TABLE public.wagtailcore_comment (
    id integer NOT NULL,
    text text NOT NULL,
    contentpath text NOT NULL,
    "position" text NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    resolved_at timestamp with time zone,
    page_id integer NOT NULL,
    resolved_by_id integer,
    revision_created_id integer,
    user_id integer NOT NULL
);
 '   DROP TABLE public.wagtailcore_comment;
       public         heap    renegado    false                       1259    70938    wagtailcore_comment_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.wagtailcore_comment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.wagtailcore_comment_id_seq;
       public          renegado    false    268            ?           0    0    wagtailcore_comment_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.wagtailcore_comment_id_seq OWNED BY public.wagtailcore_comment.id;
          public          renegado    false    269                       1259    70940    wagtailcore_commentreply    TABLE       CREATE TABLE public.wagtailcore_commentreply (
    id integer NOT NULL,
    text text NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    comment_id integer NOT NULL,
    user_id integer NOT NULL
);
 ,   DROP TABLE public.wagtailcore_commentreply;
       public         heap    renegado    false                       1259    70946    wagtailcore_commentreply_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.wagtailcore_commentreply_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.wagtailcore_commentreply_id_seq;
       public          renegado    false    270            ?           0    0    wagtailcore_commentreply_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.wagtailcore_commentreply_id_seq OWNED BY public.wagtailcore_commentreply.id;
          public          renegado    false    271                       1259    70948    wagtailcore_groupapprovaltask    TABLE     X   CREATE TABLE public.wagtailcore_groupapprovaltask (
    task_ptr_id integer NOT NULL
);
 1   DROP TABLE public.wagtailcore_groupapprovaltask;
       public         heap    renegado    false                       1259    70951 $   wagtailcore_groupapprovaltask_groups    TABLE     ?   CREATE TABLE public.wagtailcore_groupapprovaltask_groups (
    id integer NOT NULL,
    groupapprovaltask_id integer NOT NULL,
    group_id integer NOT NULL
);
 8   DROP TABLE public.wagtailcore_groupapprovaltask_groups;
       public         heap    renegado    false                       1259    70954 +   wagtailcore_groupapprovaltask_groups_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.wagtailcore_groupapprovaltask_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public.wagtailcore_groupapprovaltask_groups_id_seq;
       public          renegado    false    273            ?           0    0 +   wagtailcore_groupapprovaltask_groups_id_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public.wagtailcore_groupapprovaltask_groups_id_seq OWNED BY public.wagtailcore_groupapprovaltask_groups.id;
          public          renegado    false    274                       1259    70956 %   wagtailcore_groupcollectionpermission    TABLE     ?   CREATE TABLE public.wagtailcore_groupcollectionpermission (
    id integer NOT NULL,
    collection_id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 9   DROP TABLE public.wagtailcore_groupcollectionpermission;
       public         heap    renegado    false                       1259    70959 ,   wagtailcore_groupcollectionpermission_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.wagtailcore_groupcollectionpermission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public.wagtailcore_groupcollectionpermission_id_seq;
       public          renegado    false    275            ?           0    0 ,   wagtailcore_groupcollectionpermission_id_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public.wagtailcore_groupcollectionpermission_id_seq OWNED BY public.wagtailcore_groupcollectionpermission.id;
          public          renegado    false    276                       1259    70961    wagtailcore_grouppagepermission    TABLE     ?   CREATE TABLE public.wagtailcore_grouppagepermission (
    id integer NOT NULL,
    permission_type character varying(20) NOT NULL,
    group_id integer NOT NULL,
    page_id integer NOT NULL
);
 3   DROP TABLE public.wagtailcore_grouppagepermission;
       public         heap    renegado    false                       1259    70964 &   wagtailcore_grouppagepermission_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.wagtailcore_grouppagepermission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.wagtailcore_grouppagepermission_id_seq;
       public          renegado    false    277            ?           0    0 &   wagtailcore_grouppagepermission_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.wagtailcore_grouppagepermission_id_seq OWNED BY public.wagtailcore_grouppagepermission.id;
          public          renegado    false    278                       1259    70966    wagtailcore_locale    TABLE     w   CREATE TABLE public.wagtailcore_locale (
    id integer NOT NULL,
    language_code character varying(100) NOT NULL
);
 &   DROP TABLE public.wagtailcore_locale;
       public         heap    renegado    false                       1259    70969    wagtailcore_locale_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.wagtailcore_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.wagtailcore_locale_id_seq;
       public          renegado    false    279            ?           0    0    wagtailcore_locale_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.wagtailcore_locale_id_seq OWNED BY public.wagtailcore_locale.id;
          public          renegado    false    280                       1259    70971    wagtailcore_page    TABLE     ?  CREATE TABLE public.wagtailcore_page (
    id integer NOT NULL,
    path character varying(255) NOT NULL COLLATE pg_catalog."C",
    depth integer NOT NULL,
    numchild integer NOT NULL,
    title character varying(255) NOT NULL,
    slug character varying(255) NOT NULL,
    live boolean NOT NULL,
    has_unpublished_changes boolean NOT NULL,
    url_path text NOT NULL,
    seo_title character varying(255) NOT NULL,
    show_in_menus boolean NOT NULL,
    search_description text NOT NULL,
    go_live_at timestamp with time zone,
    expire_at timestamp with time zone,
    expired boolean NOT NULL,
    content_type_id integer NOT NULL,
    owner_id integer,
    locked boolean NOT NULL,
    latest_revision_created_at timestamp with time zone,
    first_published_at timestamp with time zone,
    live_revision_id integer,
    last_published_at timestamp with time zone,
    draft_title character varying(255) NOT NULL,
    locked_at timestamp with time zone,
    locked_by_id integer,
    translation_key uuid NOT NULL,
    locale_id integer NOT NULL,
    alias_of_id integer,
    CONSTRAINT wagtailcore_page_depth_check CHECK ((depth >= 0)),
    CONSTRAINT wagtailcore_page_numchild_check CHECK ((numchild >= 0))
);
 $   DROP TABLE public.wagtailcore_page;
       public         heap    renegado    false                       1259    70979    wagtailcore_page_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.wagtailcore_page_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.wagtailcore_page_id_seq;
       public          renegado    false    281            ?           0    0    wagtailcore_page_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.wagtailcore_page_id_seq OWNED BY public.wagtailcore_page.id;
          public          renegado    false    282                       1259    70981    wagtailcore_pagelogentry    TABLE     ?  CREATE TABLE public.wagtailcore_pagelogentry (
    id integer NOT NULL,
    label text NOT NULL,
    action character varying(255) NOT NULL,
    data_json text NOT NULL,
    "timestamp" timestamp with time zone NOT NULL,
    content_changed boolean NOT NULL,
    deleted boolean NOT NULL,
    content_type_id integer,
    page_id integer NOT NULL,
    revision_id integer,
    user_id integer
);
 ,   DROP TABLE public.wagtailcore_pagelogentry;
       public         heap    renegado    false                       1259    70987    wagtailcore_pagelogentry_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.wagtailcore_pagelogentry_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.wagtailcore_pagelogentry_id_seq;
       public          renegado    false    283            ?           0    0    wagtailcore_pagelogentry_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.wagtailcore_pagelogentry_id_seq OWNED BY public.wagtailcore_pagelogentry.id;
          public          renegado    false    284                       1259    70989    wagtailcore_pagerevision    TABLE     0  CREATE TABLE public.wagtailcore_pagerevision (
    id integer NOT NULL,
    submitted_for_moderation boolean NOT NULL,
    created_at timestamp with time zone NOT NULL,
    content_json text NOT NULL,
    approved_go_live_at timestamp with time zone,
    page_id integer NOT NULL,
    user_id integer
);
 ,   DROP TABLE public.wagtailcore_pagerevision;
       public         heap    renegado    false                       1259    70995    wagtailcore_pagerevision_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.wagtailcore_pagerevision_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.wagtailcore_pagerevision_id_seq;
       public          renegado    false    285            ?           0    0    wagtailcore_pagerevision_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.wagtailcore_pagerevision_id_seq OWNED BY public.wagtailcore_pagerevision.id;
          public          renegado    false    286                       1259    70997    wagtailcore_pagesubscription    TABLE     ?   CREATE TABLE public.wagtailcore_pagesubscription (
    id integer NOT NULL,
    comment_notifications boolean NOT NULL,
    page_id integer NOT NULL,
    user_id integer NOT NULL
);
 0   DROP TABLE public.wagtailcore_pagesubscription;
       public         heap    renegado    false                        1259    71000 #   wagtailcore_pagesubscription_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.wagtailcore_pagesubscription_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.wagtailcore_pagesubscription_id_seq;
       public          renegado    false    287            ?           0    0 #   wagtailcore_pagesubscription_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.wagtailcore_pagesubscription_id_seq OWNED BY public.wagtailcore_pagesubscription.id;
          public          renegado    false    288            !           1259    71002    wagtailcore_pageviewrestriction    TABLE     ?   CREATE TABLE public.wagtailcore_pageviewrestriction (
    id integer NOT NULL,
    password character varying(255) NOT NULL,
    page_id integer NOT NULL,
    restriction_type character varying(20) NOT NULL
);
 3   DROP TABLE public.wagtailcore_pageviewrestriction;
       public         heap    renegado    false            "           1259    71005 &   wagtailcore_pageviewrestriction_groups    TABLE     ?   CREATE TABLE public.wagtailcore_pageviewrestriction_groups (
    id integer NOT NULL,
    pageviewrestriction_id integer NOT NULL,
    group_id integer NOT NULL
);
 :   DROP TABLE public.wagtailcore_pageviewrestriction_groups;
       public         heap    renegado    false            #           1259    71008 -   wagtailcore_pageviewrestriction_groups_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.wagtailcore_pageviewrestriction_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public.wagtailcore_pageviewrestriction_groups_id_seq;
       public          renegado    false    290            ?           0    0 -   wagtailcore_pageviewrestriction_groups_id_seq    SEQUENCE OWNED BY        ALTER SEQUENCE public.wagtailcore_pageviewrestriction_groups_id_seq OWNED BY public.wagtailcore_pageviewrestriction_groups.id;
          public          renegado    false    291            $           1259    71010 &   wagtailcore_pageviewrestriction_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.wagtailcore_pageviewrestriction_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.wagtailcore_pageviewrestriction_id_seq;
       public          renegado    false    289            ?           0    0 &   wagtailcore_pageviewrestriction_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.wagtailcore_pageviewrestriction_id_seq OWNED BY public.wagtailcore_pageviewrestriction.id;
          public          renegado    false    292            %           1259    71012    wagtailcore_site    TABLE       CREATE TABLE public.wagtailcore_site (
    id integer NOT NULL,
    hostname character varying(255) NOT NULL,
    port integer NOT NULL,
    is_default_site boolean NOT NULL,
    root_page_id integer NOT NULL,
    site_name character varying(255) NOT NULL
);
 $   DROP TABLE public.wagtailcore_site;
       public         heap    renegado    false            &           1259    71018    wagtailcore_site_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.wagtailcore_site_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.wagtailcore_site_id_seq;
       public          renegado    false    293            ?           0    0    wagtailcore_site_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.wagtailcore_site_id_seq OWNED BY public.wagtailcore_site.id;
          public          renegado    false    294            '           1259    71020    wagtailcore_task    TABLE     ?   CREATE TABLE public.wagtailcore_task (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    active boolean NOT NULL,
    content_type_id integer NOT NULL
);
 $   DROP TABLE public.wagtailcore_task;
       public         heap    renegado    false            (           1259    71023    wagtailcore_task_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.wagtailcore_task_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.wagtailcore_task_id_seq;
       public          renegado    false    295            ?           0    0    wagtailcore_task_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.wagtailcore_task_id_seq OWNED BY public.wagtailcore_task.id;
          public          renegado    false    296            )           1259    71025    wagtailcore_taskstate    TABLE     ?  CREATE TABLE public.wagtailcore_taskstate (
    id integer NOT NULL,
    status character varying(50) NOT NULL,
    started_at timestamp with time zone NOT NULL,
    finished_at timestamp with time zone,
    content_type_id integer NOT NULL,
    page_revision_id integer NOT NULL,
    task_id integer NOT NULL,
    workflow_state_id integer NOT NULL,
    finished_by_id integer,
    comment text NOT NULL
);
 )   DROP TABLE public.wagtailcore_taskstate;
       public         heap    renegado    false            *           1259    71031    wagtailcore_taskstate_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.wagtailcore_taskstate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.wagtailcore_taskstate_id_seq;
       public          renegado    false    297            ?           0    0    wagtailcore_taskstate_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.wagtailcore_taskstate_id_seq OWNED BY public.wagtailcore_taskstate.id;
          public          renegado    false    298            +           1259    71033    wagtailcore_workflow    TABLE     ?   CREATE TABLE public.wagtailcore_workflow (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    active boolean NOT NULL
);
 (   DROP TABLE public.wagtailcore_workflow;
       public         heap    renegado    false            ,           1259    71036    wagtailcore_workflow_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.wagtailcore_workflow_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.wagtailcore_workflow_id_seq;
       public          renegado    false    299            ?           0    0    wagtailcore_workflow_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.wagtailcore_workflow_id_seq OWNED BY public.wagtailcore_workflow.id;
          public          renegado    false    300            -           1259    71038    wagtailcore_workflowpage    TABLE     q   CREATE TABLE public.wagtailcore_workflowpage (
    page_id integer NOT NULL,
    workflow_id integer NOT NULL
);
 ,   DROP TABLE public.wagtailcore_workflowpage;
       public         heap    renegado    false            .           1259    71041    wagtailcore_workflowstate    TABLE     (  CREATE TABLE public.wagtailcore_workflowstate (
    id integer NOT NULL,
    status character varying(50) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    current_task_state_id integer,
    page_id integer NOT NULL,
    requested_by_id integer,
    workflow_id integer NOT NULL
);
 -   DROP TABLE public.wagtailcore_workflowstate;
       public         heap    renegado    false            /           1259    71044     wagtailcore_workflowstate_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.wagtailcore_workflowstate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.wagtailcore_workflowstate_id_seq;
       public          renegado    false    302            ?           0    0     wagtailcore_workflowstate_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.wagtailcore_workflowstate_id_seq OWNED BY public.wagtailcore_workflowstate.id;
          public          renegado    false    303            0           1259    71046    wagtailcore_workflowtask    TABLE     ?   CREATE TABLE public.wagtailcore_workflowtask (
    id integer NOT NULL,
    sort_order integer,
    task_id integer NOT NULL,
    workflow_id integer NOT NULL
);
 ,   DROP TABLE public.wagtailcore_workflowtask;
       public         heap    renegado    false            1           1259    71049    wagtailcore_workflowtask_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.wagtailcore_workflowtask_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.wagtailcore_workflowtask_id_seq;
       public          renegado    false    304            ?           0    0    wagtailcore_workflowtask_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.wagtailcore_workflowtask_id_seq OWNED BY public.wagtailcore_workflowtask.id;
          public          renegado    false    305            2           1259    71051    wagtaildocs_document    TABLE     ?  CREATE TABLE public.wagtaildocs_document (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    file character varying(100) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    uploaded_by_user_id integer,
    collection_id integer NOT NULL,
    file_size integer,
    file_hash character varying(40) NOT NULL,
    CONSTRAINT wagtaildocs_document_file_size_check CHECK ((file_size >= 0))
);
 (   DROP TABLE public.wagtaildocs_document;
       public         heap    renegado    false            3           1259    71055    wagtaildocs_document_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.wagtaildocs_document_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.wagtaildocs_document_id_seq;
       public          renegado    false    306            ?           0    0    wagtaildocs_document_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.wagtaildocs_document_id_seq OWNED BY public.wagtaildocs_document.id;
          public          renegado    false    307            4           1259    71057    wagtaildocs_uploadeddocument    TABLE     ?   CREATE TABLE public.wagtaildocs_uploadeddocument (
    id integer NOT NULL,
    file character varying(200) NOT NULL,
    uploaded_by_user_id integer
);
 0   DROP TABLE public.wagtaildocs_uploadeddocument;
       public         heap    renegado    false            5           1259    71060 #   wagtaildocs_uploadeddocument_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.wagtaildocs_uploadeddocument_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.wagtaildocs_uploadeddocument_id_seq;
       public          renegado    false    308            ?           0    0 #   wagtaildocs_uploadeddocument_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.wagtaildocs_uploadeddocument_id_seq OWNED BY public.wagtaildocs_uploadeddocument.id;
          public          renegado    false    309            6           1259    71062    wagtailembeds_embed    TABLE     ?  CREATE TABLE public.wagtailembeds_embed (
    id integer NOT NULL,
    url text NOT NULL,
    max_width smallint,
    type character varying(10) NOT NULL,
    html text NOT NULL,
    title text NOT NULL,
    author_name text NOT NULL,
    provider_name text NOT NULL,
    thumbnail_url text NOT NULL,
    width integer,
    height integer,
    last_updated timestamp with time zone NOT NULL,
    hash character varying(32) NOT NULL
);
 '   DROP TABLE public.wagtailembeds_embed;
       public         heap    renegado    false            7           1259    71068    wagtailembeds_embed_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.wagtailembeds_embed_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.wagtailembeds_embed_id_seq;
       public          renegado    false    310            ?           0    0    wagtailembeds_embed_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.wagtailembeds_embed_id_seq OWNED BY public.wagtailembeds_embed.id;
          public          renegado    false    311            8           1259    71070    wagtailforms_formsubmission    TABLE     ?   CREATE TABLE public.wagtailforms_formsubmission (
    id integer NOT NULL,
    form_data text NOT NULL,
    submit_time timestamp with time zone NOT NULL,
    page_id integer NOT NULL
);
 /   DROP TABLE public.wagtailforms_formsubmission;
       public         heap    renegado    false            9           1259    71076 "   wagtailforms_formsubmission_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.wagtailforms_formsubmission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.wagtailforms_formsubmission_id_seq;
       public          renegado    false    312            ?           0    0 "   wagtailforms_formsubmission_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.wagtailforms_formsubmission_id_seq OWNED BY public.wagtailforms_formsubmission.id;
          public          renegado    false    313            :           1259    71078    wagtailimages_image    TABLE     ?  CREATE TABLE public.wagtailimages_image (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    file character varying(100) NOT NULL,
    width integer NOT NULL,
    height integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    focal_point_x integer,
    focal_point_y integer,
    focal_point_width integer,
    focal_point_height integer,
    uploaded_by_user_id integer,
    file_size integer,
    collection_id integer NOT NULL,
    file_hash character varying(40) NOT NULL,
    CONSTRAINT wagtailimages_image_file_size_check CHECK ((file_size >= 0)),
    CONSTRAINT wagtailimages_image_focal_point_height_check CHECK ((focal_point_height >= 0)),
    CONSTRAINT wagtailimages_image_focal_point_width_check CHECK ((focal_point_width >= 0)),
    CONSTRAINT wagtailimages_image_focal_point_x_check CHECK ((focal_point_x >= 0)),
    CONSTRAINT wagtailimages_image_focal_point_y_check CHECK ((focal_point_y >= 0))
);
 '   DROP TABLE public.wagtailimages_image;
       public         heap    renegado    false            ;           1259    71086    wagtailimages_image_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.wagtailimages_image_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.wagtailimages_image_id_seq;
       public          renegado    false    314            ?           0    0    wagtailimages_image_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.wagtailimages_image_id_seq OWNED BY public.wagtailimages_image.id;
          public          renegado    false    315            <           1259    71088    wagtailimages_rendition    TABLE     0  CREATE TABLE public.wagtailimages_rendition (
    id integer NOT NULL,
    file character varying(100) NOT NULL,
    width integer NOT NULL,
    height integer NOT NULL,
    focal_point_key character varying(16) NOT NULL,
    filter_spec character varying(255) NOT NULL,
    image_id integer NOT NULL
);
 +   DROP TABLE public.wagtailimages_rendition;
       public         heap    renegado    false            =           1259    71091    wagtailimages_rendition_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.wagtailimages_rendition_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.wagtailimages_rendition_id_seq;
       public          renegado    false    316            ?           0    0    wagtailimages_rendition_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.wagtailimages_rendition_id_seq OWNED BY public.wagtailimages_rendition.id;
          public          renegado    false    317            >           1259    71093    wagtailimages_uploadedimage    TABLE     ?   CREATE TABLE public.wagtailimages_uploadedimage (
    id integer NOT NULL,
    file character varying(200) NOT NULL,
    uploaded_by_user_id integer
);
 /   DROP TABLE public.wagtailimages_uploadedimage;
       public         heap    renegado    false            ?           1259    71096 "   wagtailimages_uploadedimage_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.wagtailimages_uploadedimage_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.wagtailimages_uploadedimage_id_seq;
       public          renegado    false    318            ?           0    0 "   wagtailimages_uploadedimage_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.wagtailimages_uploadedimage_id_seq OWNED BY public.wagtailimages_uploadedimage.id;
          public          renegado    false    319            @           1259    71098    wagtailredirects_redirect    TABLE       CREATE TABLE public.wagtailredirects_redirect (
    id integer NOT NULL,
    old_path character varying(255) NOT NULL,
    is_permanent boolean NOT NULL,
    redirect_link character varying(255) NOT NULL,
    redirect_page_id integer,
    site_id integer
);
 -   DROP TABLE public.wagtailredirects_redirect;
       public         heap    renegado    false            A           1259    71104     wagtailredirects_redirect_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.wagtailredirects_redirect_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.wagtailredirects_redirect_id_seq;
       public          renegado    false    320            ?           0    0     wagtailredirects_redirect_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.wagtailredirects_redirect_id_seq OWNED BY public.wagtailredirects_redirect.id;
          public          renegado    false    321            B           1259    71106    wagtailsearch_editorspick    TABLE     ?   CREATE TABLE public.wagtailsearch_editorspick (
    id integer NOT NULL,
    sort_order integer,
    description text NOT NULL,
    page_id integer NOT NULL,
    query_id integer NOT NULL
);
 -   DROP TABLE public.wagtailsearch_editorspick;
       public         heap    renegado    false            C           1259    71112     wagtailsearch_editorspick_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.wagtailsearch_editorspick_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.wagtailsearch_editorspick_id_seq;
       public          renegado    false    322            ?           0    0     wagtailsearch_editorspick_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.wagtailsearch_editorspick_id_seq OWNED BY public.wagtailsearch_editorspick.id;
          public          renegado    false    323            D           1259    71114    wagtailsearch_query    TABLE     w   CREATE TABLE public.wagtailsearch_query (
    id integer NOT NULL,
    query_string character varying(255) NOT NULL
);
 '   DROP TABLE public.wagtailsearch_query;
       public         heap    renegado    false            E           1259    71117    wagtailsearch_query_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.wagtailsearch_query_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.wagtailsearch_query_id_seq;
       public          renegado    false    324            ?           0    0    wagtailsearch_query_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.wagtailsearch_query_id_seq OWNED BY public.wagtailsearch_query.id;
          public          renegado    false    325            F           1259    71119    wagtailsearch_querydailyhits    TABLE     ?   CREATE TABLE public.wagtailsearch_querydailyhits (
    id integer NOT NULL,
    date date NOT NULL,
    hits integer NOT NULL,
    query_id integer NOT NULL
);
 0   DROP TABLE public.wagtailsearch_querydailyhits;
       public         heap    renegado    false            G           1259    71122 #   wagtailsearch_querydailyhits_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.wagtailsearch_querydailyhits_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.wagtailsearch_querydailyhits_id_seq;
       public          renegado    false    326            ?           0    0 #   wagtailsearch_querydailyhits_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.wagtailsearch_querydailyhits_id_seq OWNED BY public.wagtailsearch_querydailyhits.id;
          public          renegado    false    327            H           1259    71124    wagtailusers_userprofile    TABLE     ?  CREATE TABLE public.wagtailusers_userprofile (
    id integer NOT NULL,
    submitted_notifications boolean NOT NULL,
    approved_notifications boolean NOT NULL,
    rejected_notifications boolean NOT NULL,
    user_id integer NOT NULL,
    preferred_language character varying(10) NOT NULL,
    current_time_zone character varying(40) NOT NULL,
    avatar character varying(100) NOT NULL,
    updated_comments_notifications boolean NOT NULL
);
 ,   DROP TABLE public.wagtailusers_userprofile;
       public         heap    renegado    false            I           1259    71127    wagtailusers_userprofile_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.wagtailusers_userprofile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.wagtailusers_userprofile_id_seq;
       public          renegado    false    328            ?           0    0    wagtailusers_userprofile_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.wagtailusers_userprofile_id_seq OWNED BY public.wagtailusers_userprofile.id;
          public          renegado    false    329            ?           2604    71129    account_emailaddress id    DEFAULT     ?   ALTER TABLE ONLY public.account_emailaddress ALTER COLUMN id SET DEFAULT nextval('public.account_emailaddress_id_seq'::regclass);
 F   ALTER TABLE public.account_emailaddress ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    201    200            ?           2604    71130    account_emailconfirmation id    DEFAULT     ?   ALTER TABLE ONLY public.account_emailconfirmation ALTER COLUMN id SET DEFAULT nextval('public.account_emailconfirmation_id_seq'::regclass);
 K   ALTER TABLE public.account_emailconfirmation ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    203    202            ?           2604    71131    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    205    204            ?           2604    71132    auth_group_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    207    206            ?           2604    71133    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    209    208            ?           2604    71134    base_room id    DEFAULT     l   ALTER TABLE ONLY public.base_room ALTER COLUMN id SET DEFAULT nextval('public.base_room_id_seq'::regclass);
 ;   ALTER TABLE public.base_room ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    212    211            ?           2604    71135    base_schedule id    DEFAULT     t   ALTER TABLE ONLY public.base_schedule ALTER COLUMN id SET DEFAULT nextval('public.base_schedule_id_seq'::regclass);
 ?   ALTER TABLE public.base_schedule ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    214    213            ?           2604    71136    base_subject id    DEFAULT     r   ALTER TABLE ONLY public.base_subject ALTER COLUMN id SET DEFAULT nextval('public.base_subject_id_seq'::regclass);
 >   ALTER TABLE public.base_subject ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    216    215            ?           2604    71137    course_college id    DEFAULT     v   ALTER TABLE ONLY public.course_college ALTER COLUMN id SET DEFAULT nextval('public.course_college_id_seq'::regclass);
 @   ALTER TABLE public.course_college ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    219    218            ?           2604    71138    course_course id    DEFAULT     t   ALTER TABLE ONLY public.course_course ALTER COLUMN id SET DEFAULT nextval('public.course_course_id_seq'::regclass);
 ?   ALTER TABLE public.course_course ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    221    220            ?           2604    71139    course_department id    DEFAULT     |   ALTER TABLE ONLY public.course_department ALTER COLUMN id SET DEFAULT nextval('public.course_department_id_seq'::regclass);
 C   ALTER TABLE public.course_department ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    223    222            ?           2604    71140    course_section id    DEFAULT     v   ALTER TABLE ONLY public.course_section ALTER COLUMN id SET DEFAULT nextval('public.course_section_id_seq'::regclass);
 @   ALTER TABLE public.course_section ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    225    224            ?           2604    71141    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    230    229            ?           2604    71142    django_content_type id    DEFAULT     ?   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    232    231            ?           2604    71143    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    234    233            ?           2604    71144    django_site id    DEFAULT     p   ALTER TABLE ONLY public.django_site ALTER COLUMN id SET DEFAULT nextval('public.django_site_id_seq'::regclass);
 =   ALTER TABLE public.django_site ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    237    236            ?           2604    71145    facultyload_facultyloadmodel id    DEFAULT     ?   ALTER TABLE ONLY public.facultyload_facultyloadmodel ALTER COLUMN id SET DEFAULT nextval('public.facultyload_facultyloadmodel_id_seq'::regclass);
 N   ALTER TABLE public.facultyload_facultyloadmodel ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    241    240            ?           2604    71146    socialaccount_socialaccount id    DEFAULT     ?   ALTER TABLE ONLY public.socialaccount_socialaccount ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialaccount_id_seq'::regclass);
 M   ALTER TABLE public.socialaccount_socialaccount ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    243    242            ?           2604    71147    socialaccount_socialapp id    DEFAULT     ?   ALTER TABLE ONLY public.socialaccount_socialapp ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialapp_id_seq'::regclass);
 I   ALTER TABLE public.socialaccount_socialapp ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    245    244            ?           2604    71148     socialaccount_socialapp_sites id    DEFAULT     ?   ALTER TABLE ONLY public.socialaccount_socialapp_sites ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialapp_sites_id_seq'::regclass);
 O   ALTER TABLE public.socialaccount_socialapp_sites ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    247    246            ?           2604    71149    socialaccount_socialtoken id    DEFAULT     ?   ALTER TABLE ONLY public.socialaccount_socialtoken ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialtoken_id_seq'::regclass);
 K   ALTER TABLE public.socialaccount_socialtoken ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    249    248            ?           2604    71150    taggit_tag id    DEFAULT     n   ALTER TABLE ONLY public.taggit_tag ALTER COLUMN id SET DEFAULT nextval('public.taggit_tag_id_seq'::regclass);
 <   ALTER TABLE public.taggit_tag ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    251    250            ?           2604    71151    taggit_taggeditem id    DEFAULT     |   ALTER TABLE ONLY public.taggit_taggeditem ALTER COLUMN id SET DEFAULT nextval('public.taggit_taggeditem_id_seq'::regclass);
 C   ALTER TABLE public.taggit_taggeditem ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    253    252            ?           2604    71152    users_professor id    DEFAULT     x   ALTER TABLE ONLY public.users_professor ALTER COLUMN id SET DEFAULT nextval('public.users_professor_id_seq'::regclass);
 A   ALTER TABLE public.users_professor ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    257    254            ?           2604    71153    users_professor_groups id    DEFAULT     ?   ALTER TABLE ONLY public.users_professor_groups ALTER COLUMN id SET DEFAULT nextval('public.users_professor_groups_id_seq'::regclass);
 H   ALTER TABLE public.users_professor_groups ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    256    255            ?           2604    71154 #   users_professor_user_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.users_professor_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.users_professor_user_permissions_id_seq'::regclass);
 R   ALTER TABLE public.users_professor_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    259    258            ?           2604    71155    wagtailadmin_admin id    DEFAULT     ~   ALTER TABLE ONLY public.wagtailadmin_admin ALTER COLUMN id SET DEFAULT nextval('public.wagtailadmin_admin_id_seq'::regclass);
 D   ALTER TABLE public.wagtailadmin_admin ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    261    260            ?           2604    71156    wagtailcore_collection id    DEFAULT     ?   ALTER TABLE ONLY public.wagtailcore_collection ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_collection_id_seq'::regclass);
 H   ALTER TABLE public.wagtailcore_collection ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    263    262            ?           2604    71157 (   wagtailcore_collectionviewrestriction id    DEFAULT     ?   ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_collectionviewrestriction_id_seq'::regclass);
 W   ALTER TABLE public.wagtailcore_collectionviewrestriction ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    267    264            ?           2604    71158 /   wagtailcore_collectionviewrestriction_groups id    DEFAULT     ?   ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction_groups ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_collectionviewrestriction_groups_id_seq'::regclass);
 ^   ALTER TABLE public.wagtailcore_collectionviewrestriction_groups ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    266    265            ?           2604    71159    wagtailcore_comment id    DEFAULT     ?   ALTER TABLE ONLY public.wagtailcore_comment ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_comment_id_seq'::regclass);
 E   ALTER TABLE public.wagtailcore_comment ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    269    268            ?           2604    71160    wagtailcore_commentreply id    DEFAULT     ?   ALTER TABLE ONLY public.wagtailcore_commentreply ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_commentreply_id_seq'::regclass);
 J   ALTER TABLE public.wagtailcore_commentreply ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    271    270            ?           2604    71161 '   wagtailcore_groupapprovaltask_groups id    DEFAULT     ?   ALTER TABLE ONLY public.wagtailcore_groupapprovaltask_groups ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_groupapprovaltask_groups_id_seq'::regclass);
 V   ALTER TABLE public.wagtailcore_groupapprovaltask_groups ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    274    273            ?           2604    71162 (   wagtailcore_groupcollectionpermission id    DEFAULT     ?   ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_groupcollectionpermission_id_seq'::regclass);
 W   ALTER TABLE public.wagtailcore_groupcollectionpermission ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    276    275            ?           2604    71163 "   wagtailcore_grouppagepermission id    DEFAULT     ?   ALTER TABLE ONLY public.wagtailcore_grouppagepermission ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_grouppagepermission_id_seq'::regclass);
 Q   ALTER TABLE public.wagtailcore_grouppagepermission ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    278    277            ?           2604    71164    wagtailcore_locale id    DEFAULT     ~   ALTER TABLE ONLY public.wagtailcore_locale ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_locale_id_seq'::regclass);
 D   ALTER TABLE public.wagtailcore_locale ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    280    279            ?           2604    71165    wagtailcore_page id    DEFAULT     z   ALTER TABLE ONLY public.wagtailcore_page ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_page_id_seq'::regclass);
 B   ALTER TABLE public.wagtailcore_page ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    282    281            ?           2604    71166    wagtailcore_pagelogentry id    DEFAULT     ?   ALTER TABLE ONLY public.wagtailcore_pagelogentry ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_pagelogentry_id_seq'::regclass);
 J   ALTER TABLE public.wagtailcore_pagelogentry ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    284    283            ?           2604    71167    wagtailcore_pagerevision id    DEFAULT     ?   ALTER TABLE ONLY public.wagtailcore_pagerevision ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_pagerevision_id_seq'::regclass);
 J   ALTER TABLE public.wagtailcore_pagerevision ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    286    285            ?           2604    71168    wagtailcore_pagesubscription id    DEFAULT     ?   ALTER TABLE ONLY public.wagtailcore_pagesubscription ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_pagesubscription_id_seq'::regclass);
 N   ALTER TABLE public.wagtailcore_pagesubscription ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    288    287            ?           2604    71169 "   wagtailcore_pageviewrestriction id    DEFAULT     ?   ALTER TABLE ONLY public.wagtailcore_pageviewrestriction ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_pageviewrestriction_id_seq'::regclass);
 Q   ALTER TABLE public.wagtailcore_pageviewrestriction ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    292    289            ?           2604    71170 )   wagtailcore_pageviewrestriction_groups id    DEFAULT     ?   ALTER TABLE ONLY public.wagtailcore_pageviewrestriction_groups ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_pageviewrestriction_groups_id_seq'::regclass);
 X   ALTER TABLE public.wagtailcore_pageviewrestriction_groups ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    291    290            ?           2604    71171    wagtailcore_site id    DEFAULT     z   ALTER TABLE ONLY public.wagtailcore_site ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_site_id_seq'::regclass);
 B   ALTER TABLE public.wagtailcore_site ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    294    293            ?           2604    71172    wagtailcore_task id    DEFAULT     z   ALTER TABLE ONLY public.wagtailcore_task ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_task_id_seq'::regclass);
 B   ALTER TABLE public.wagtailcore_task ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    296    295            ?           2604    71173    wagtailcore_taskstate id    DEFAULT     ?   ALTER TABLE ONLY public.wagtailcore_taskstate ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_taskstate_id_seq'::regclass);
 G   ALTER TABLE public.wagtailcore_taskstate ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    298    297            ?           2604    71174    wagtailcore_workflow id    DEFAULT     ?   ALTER TABLE ONLY public.wagtailcore_workflow ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_workflow_id_seq'::regclass);
 F   ALTER TABLE public.wagtailcore_workflow ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    300    299            ?           2604    71175    wagtailcore_workflowstate id    DEFAULT     ?   ALTER TABLE ONLY public.wagtailcore_workflowstate ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_workflowstate_id_seq'::regclass);
 K   ALTER TABLE public.wagtailcore_workflowstate ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    303    302            ?           2604    71176    wagtailcore_workflowtask id    DEFAULT     ?   ALTER TABLE ONLY public.wagtailcore_workflowtask ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_workflowtask_id_seq'::regclass);
 J   ALTER TABLE public.wagtailcore_workflowtask ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    305    304            ?           2604    71177    wagtaildocs_document id    DEFAULT     ?   ALTER TABLE ONLY public.wagtaildocs_document ALTER COLUMN id SET DEFAULT nextval('public.wagtaildocs_document_id_seq'::regclass);
 F   ALTER TABLE public.wagtaildocs_document ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    307    306            ?           2604    71178    wagtaildocs_uploadeddocument id    DEFAULT     ?   ALTER TABLE ONLY public.wagtaildocs_uploadeddocument ALTER COLUMN id SET DEFAULT nextval('public.wagtaildocs_uploadeddocument_id_seq'::regclass);
 N   ALTER TABLE public.wagtaildocs_uploadeddocument ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    309    308            ?           2604    71179    wagtailembeds_embed id    DEFAULT     ?   ALTER TABLE ONLY public.wagtailembeds_embed ALTER COLUMN id SET DEFAULT nextval('public.wagtailembeds_embed_id_seq'::regclass);
 E   ALTER TABLE public.wagtailembeds_embed ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    311    310            ?           2604    71180    wagtailforms_formsubmission id    DEFAULT     ?   ALTER TABLE ONLY public.wagtailforms_formsubmission ALTER COLUMN id SET DEFAULT nextval('public.wagtailforms_formsubmission_id_seq'::regclass);
 M   ALTER TABLE public.wagtailforms_formsubmission ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    313    312            ?           2604    71181    wagtailimages_image id    DEFAULT     ?   ALTER TABLE ONLY public.wagtailimages_image ALTER COLUMN id SET DEFAULT nextval('public.wagtailimages_image_id_seq'::regclass);
 E   ALTER TABLE public.wagtailimages_image ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    315    314                        2604    71182    wagtailimages_rendition id    DEFAULT     ?   ALTER TABLE ONLY public.wagtailimages_rendition ALTER COLUMN id SET DEFAULT nextval('public.wagtailimages_rendition_id_seq'::regclass);
 I   ALTER TABLE public.wagtailimages_rendition ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    317    316                       2604    71183    wagtailimages_uploadedimage id    DEFAULT     ?   ALTER TABLE ONLY public.wagtailimages_uploadedimage ALTER COLUMN id SET DEFAULT nextval('public.wagtailimages_uploadedimage_id_seq'::regclass);
 M   ALTER TABLE public.wagtailimages_uploadedimage ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    319    318                       2604    71184    wagtailredirects_redirect id    DEFAULT     ?   ALTER TABLE ONLY public.wagtailredirects_redirect ALTER COLUMN id SET DEFAULT nextval('public.wagtailredirects_redirect_id_seq'::regclass);
 K   ALTER TABLE public.wagtailredirects_redirect ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    321    320                       2604    71185    wagtailsearch_editorspick id    DEFAULT     ?   ALTER TABLE ONLY public.wagtailsearch_editorspick ALTER COLUMN id SET DEFAULT nextval('public.wagtailsearch_editorspick_id_seq'::regclass);
 K   ALTER TABLE public.wagtailsearch_editorspick ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    323    322                       2604    71186    wagtailsearch_query id    DEFAULT     ?   ALTER TABLE ONLY public.wagtailsearch_query ALTER COLUMN id SET DEFAULT nextval('public.wagtailsearch_query_id_seq'::regclass);
 E   ALTER TABLE public.wagtailsearch_query ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    325    324                       2604    71187    wagtailsearch_querydailyhits id    DEFAULT     ?   ALTER TABLE ONLY public.wagtailsearch_querydailyhits ALTER COLUMN id SET DEFAULT nextval('public.wagtailsearch_querydailyhits_id_seq'::regclass);
 N   ALTER TABLE public.wagtailsearch_querydailyhits ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    327    326                       2604    71188    wagtailusers_userprofile id    DEFAULT     ?   ALTER TABLE ONLY public.wagtailusers_userprofile ALTER COLUMN id SET DEFAULT nextval('public.wagtailusers_userprofile_id_seq'::regclass);
 J   ALTER TABLE public.wagtailusers_userprofile ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    329    328            0          0    70728    account_emailaddress 
   TABLE DATA           W   COPY public.account_emailaddress (id, email, verified, "primary", user_id) FROM stdin;
    public          renegado    false    200   m      2          0    70733    account_emailconfirmation 
   TABLE DATA           ]   COPY public.account_emailconfirmation (id, created, sent, key, email_address_id) FROM stdin;
    public          renegado    false    202   ?      4          0    70738 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          renegado    false    204   ?      6          0    70743    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          renegado    false    206   ?      8          0    70748    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          renegado    false    208   ?      :          0    70753    base_basepage 
   TABLE DATA           4   COPY public.base_basepage (page_ptr_id) FROM stdin;
    public          renegado    false    210   ?      ;          0    70756 	   base_room 
   TABLE DATA           -   COPY public.base_room (id, name) FROM stdin;
    public          renegado    false    211   ?      =          0    70761    base_schedule 
   TABLE DATA           {   COPY public.base_schedule (id, day, start_time, ending_time, lec, lab, units, room_id, section_id, subject_id) FROM stdin;
    public          renegado    false    213   ?      ?          0    70766    base_subject 
   TABLE DATA           P   COPY public.base_subject (id, subject_code, description, course_id) FROM stdin;
    public          renegado    false    215         A          0    70774    base_timeload 
   TABLE DATA           4   COPY public.base_timeload (page_ptr_id) FROM stdin;
    public          renegado    false    217   t      B          0    70777    course_college 
   TABLE DATA           2   COPY public.course_college (id, name) FROM stdin;
    public          renegado    false    218   ?      D          0    70782    course_course 
   TABLE DATA           ?   COPY public.course_course (id, name, abbreviation, first_year_section, second_year_section, third_year_section, fourth_year_section) FROM stdin;
    public          renegado    false    220   ?      F          0    70787    course_department 
   TABLE DATA           A   COPY public.course_department (id, name, college_id) FROM stdin;
    public          renegado    false    222         H          0    70792    course_section 
   TABLE DATA           C   COPY public.course_section (id, year, name, course_id) FROM stdin;
    public          renegado    false    224   ?      J          0    70797     depthead_departmentheadindexpage 
   TABLE DATA           G   COPY public.depthead_departmentheadindexpage (page_ptr_id) FROM stdin;
    public          renegado    false    226   ?      K          0    70800    depthead_facultyloadingpage 
   TABLE DATA           B   COPY public.depthead_facultyloadingpage (page_ptr_id) FROM stdin;
    public          renegado    false    227   ?      L          0    70803    depthead_facultyloadpage 
   TABLE DATA           ?   COPY public.depthead_facultyloadpage (page_ptr_id) FROM stdin;
    public          renegado    false    228   ?      M          0    70806    django_admin_log 
   TABLE DATA           ?   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          renegado    false    229   ?      O          0    70815    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          renegado    false    231   ?      Q          0    70820    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          renegado    false    233   A      S          0    70828    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          renegado    false    235   ?      T          0    70834    django_site 
   TABLE DATA           7   COPY public.django_site (id, domain, name) FROM stdin;
    public          renegado    false    236   D$      V          0    70839    facultyload_facultyload 
   TABLE DATA           >   COPY public.facultyload_facultyload (page_ptr_id) FROM stdin;
    public          renegado    false    238   q$      W          0    70842    facultyload_facultyloading 
   TABLE DATA           A   COPY public.facultyload_facultyloading (page_ptr_id) FROM stdin;
    public          renegado    false    239   ?$      X          0    70845    facultyload_facultyloadmodel 
   TABLE DATA           o   COPY public.facultyload_facultyloadmodel (id, year, semester, approved, professor_id, schedule_id) FROM stdin;
    public          renegado    false    240   ?$      Z          0    70850    socialaccount_socialaccount 
   TABLE DATA           v   COPY public.socialaccount_socialaccount (id, provider, uid, last_login, date_joined, extra_data, user_id) FROM stdin;
    public          renegado    false    242   ?$      \          0    70858    socialaccount_socialapp 
   TABLE DATA           ]   COPY public.socialaccount_socialapp (id, provider, name, client_id, secret, key) FROM stdin;
    public          renegado    false    244   %      ^          0    70866    socialaccount_socialapp_sites 
   TABLE DATA           R   COPY public.socialaccount_socialapp_sites (id, socialapp_id, site_id) FROM stdin;
    public          renegado    false    246   -%      `          0    70871    socialaccount_socialtoken 
   TABLE DATA           l   COPY public.socialaccount_socialtoken (id, token, token_secret, expires_at, account_id, app_id) FROM stdin;
    public          renegado    false    248   J%      b          0    70879 
   taggit_tag 
   TABLE DATA           4   COPY public.taggit_tag (id, name, slug) FROM stdin;
    public          renegado    false    250   g%      d          0    70884    taggit_taggeditem 
   TABLE DATA           S   COPY public.taggit_taggeditem (id, object_id, content_type_id, tag_id) FROM stdin;
    public          renegado    false    252   ?%      f          0    70889    users_professor 
   TABLE DATA           ?   COPY public.users_professor (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, department_id, department_head, time_in, time_out, middle_name) FROM stdin;
    public          renegado    false    254   ?%      g          0    70895    users_professor_groups 
   TABLE DATA           L   COPY public.users_professor_groups (id, professor_id, group_id) FROM stdin;
    public          renegado    false    255   Q'      j          0    70902     users_professor_user_permissions 
   TABLE DATA           [   COPY public.users_professor_user_permissions (id, professor_id, permission_id) FROM stdin;
    public          renegado    false    258   }'      l          0    70907    wagtailadmin_admin 
   TABLE DATA           0   COPY public.wagtailadmin_admin (id) FROM stdin;
    public          renegado    false    260   ?'      n          0    70912    wagtailcore_collection 
   TABLE DATA           Q   COPY public.wagtailcore_collection (id, path, depth, numchild, name) FROM stdin;
    public          renegado    false    262   ?'      p          0    70922 %   wagtailcore_collectionviewrestriction 
   TABLE DATA           n   COPY public.wagtailcore_collectionviewrestriction (id, restriction_type, password, collection_id) FROM stdin;
    public          renegado    false    264   ?'      q          0    70925 ,   wagtailcore_collectionviewrestriction_groups 
   TABLE DATA           r   COPY public.wagtailcore_collectionviewrestriction_groups (id, collectionviewrestriction_id, group_id) FROM stdin;
    public          renegado    false    265   (      t          0    70932    wagtailcore_comment 
   TABLE DATA           ?   COPY public.wagtailcore_comment (id, text, contentpath, "position", created_at, updated_at, resolved_at, page_id, resolved_by_id, revision_created_id, user_id) FROM stdin;
    public          renegado    false    268   (      v          0    70940    wagtailcore_commentreply 
   TABLE DATA           i   COPY public.wagtailcore_commentreply (id, text, created_at, updated_at, comment_id, user_id) FROM stdin;
    public          renegado    false    270   ;(      x          0    70948    wagtailcore_groupapprovaltask 
   TABLE DATA           D   COPY public.wagtailcore_groupapprovaltask (task_ptr_id) FROM stdin;
    public          renegado    false    272   X(      y          0    70951 $   wagtailcore_groupapprovaltask_groups 
   TABLE DATA           b   COPY public.wagtailcore_groupapprovaltask_groups (id, groupapprovaltask_id, group_id) FROM stdin;
    public          renegado    false    273   w(      {          0    70956 %   wagtailcore_groupcollectionpermission 
   TABLE DATA           k   COPY public.wagtailcore_groupcollectionpermission (id, collection_id, group_id, permission_id) FROM stdin;
    public          renegado    false    275   ?(      }          0    70961    wagtailcore_grouppagepermission 
   TABLE DATA           a   COPY public.wagtailcore_grouppagepermission (id, permission_type, group_id, page_id) FROM stdin;
    public          renegado    false    277   ?(                0    70966    wagtailcore_locale 
   TABLE DATA           ?   COPY public.wagtailcore_locale (id, language_code) FROM stdin;
    public          renegado    false    279   ?(      ?          0    70971    wagtailcore_page 
   TABLE DATA           ?  COPY public.wagtailcore_page (id, path, depth, numchild, title, slug, live, has_unpublished_changes, url_path, seo_title, show_in_menus, search_description, go_live_at, expire_at, expired, content_type_id, owner_id, locked, latest_revision_created_at, first_published_at, live_revision_id, last_published_at, draft_title, locked_at, locked_by_id, translation_key, locale_id, alias_of_id) FROM stdin;
    public          renegado    false    281   ?(      ?          0    70981    wagtailcore_pagelogentry 
   TABLE DATA           ?   COPY public.wagtailcore_pagelogentry (id, label, action, data_json, "timestamp", content_changed, deleted, content_type_id, page_id, revision_id, user_id) FROM stdin;
    public          renegado    false    283   |+      ?          0    70989    wagtailcore_pagerevision 
   TABLE DATA           ?   COPY public.wagtailcore_pagerevision (id, submitted_for_moderation, created_at, content_json, approved_go_live_at, page_id, user_id) FROM stdin;
    public          renegado    false    285   ?-      ?          0    70997    wagtailcore_pagesubscription 
   TABLE DATA           c   COPY public.wagtailcore_pagesubscription (id, comment_notifications, page_id, user_id) FROM stdin;
    public          renegado    false    287   ?1      ?          0    71002    wagtailcore_pageviewrestriction 
   TABLE DATA           b   COPY public.wagtailcore_pageviewrestriction (id, password, page_id, restriction_type) FROM stdin;
    public          renegado    false    289   2      ?          0    71005 &   wagtailcore_pageviewrestriction_groups 
   TABLE DATA           f   COPY public.wagtailcore_pageviewrestriction_groups (id, pageviewrestriction_id, group_id) FROM stdin;
    public          renegado    false    290   P2      ?          0    71012    wagtailcore_site 
   TABLE DATA           h   COPY public.wagtailcore_site (id, hostname, port, is_default_site, root_page_id, site_name) FROM stdin;
    public          renegado    false    293   ?2      ?          0    71020    wagtailcore_task 
   TABLE DATA           M   COPY public.wagtailcore_task (id, name, active, content_type_id) FROM stdin;
    public          renegado    false    295   ?2      ?          0    71025    wagtailcore_taskstate 
   TABLE DATA           ?   COPY public.wagtailcore_taskstate (id, status, started_at, finished_at, content_type_id, page_revision_id, task_id, workflow_state_id, finished_by_id, comment) FROM stdin;
    public          renegado    false    297   3      ?          0    71033    wagtailcore_workflow 
   TABLE DATA           @   COPY public.wagtailcore_workflow (id, name, active) FROM stdin;
    public          renegado    false    299   !3      ?          0    71038    wagtailcore_workflowpage 
   TABLE DATA           H   COPY public.wagtailcore_workflowpage (page_id, workflow_id) FROM stdin;
    public          renegado    false    301   V3      ?          0    71041    wagtailcore_workflowstate 
   TABLE DATA           ?   COPY public.wagtailcore_workflowstate (id, status, created_at, current_task_state_id, page_id, requested_by_id, workflow_id) FROM stdin;
    public          renegado    false    302   w3      ?          0    71046    wagtailcore_workflowtask 
   TABLE DATA           X   COPY public.wagtailcore_workflowtask (id, sort_order, task_id, workflow_id) FROM stdin;
    public          renegado    false    304   ?3      ?          0    71051    wagtaildocs_document 
   TABLE DATA           ?   COPY public.wagtaildocs_document (id, title, file, created_at, uploaded_by_user_id, collection_id, file_size, file_hash) FROM stdin;
    public          renegado    false    306   ?3      ?          0    71057    wagtaildocs_uploadeddocument 
   TABLE DATA           U   COPY public.wagtaildocs_uploadeddocument (id, file, uploaded_by_user_id) FROM stdin;
    public          renegado    false    308   ?3      ?          0    71062    wagtailembeds_embed 
   TABLE DATA           ?   COPY public.wagtailembeds_embed (id, url, max_width, type, html, title, author_name, provider_name, thumbnail_url, width, height, last_updated, hash) FROM stdin;
    public          renegado    false    310   ?3      ?          0    71070    wagtailforms_formsubmission 
   TABLE DATA           Z   COPY public.wagtailforms_formsubmission (id, form_data, submit_time, page_id) FROM stdin;
    public          renegado    false    312   4      ?          0    71078    wagtailimages_image 
   TABLE DATA           ?   COPY public.wagtailimages_image (id, title, file, width, height, created_at, focal_point_x, focal_point_y, focal_point_width, focal_point_height, uploaded_by_user_id, file_size, collection_id, file_hash) FROM stdin;
    public          renegado    false    314   -4      ?          0    71088    wagtailimages_rendition 
   TABLE DATA           r   COPY public.wagtailimages_rendition (id, file, width, height, focal_point_key, filter_spec, image_id) FROM stdin;
    public          renegado    false    316   J4      ?          0    71093    wagtailimages_uploadedimage 
   TABLE DATA           T   COPY public.wagtailimages_uploadedimage (id, file, uploaded_by_user_id) FROM stdin;
    public          renegado    false    318   g4      ?          0    71098    wagtailredirects_redirect 
   TABLE DATA           y   COPY public.wagtailredirects_redirect (id, old_path, is_permanent, redirect_link, redirect_page_id, site_id) FROM stdin;
    public          renegado    false    320   ?4      ?          0    71106    wagtailsearch_editorspick 
   TABLE DATA           c   COPY public.wagtailsearch_editorspick (id, sort_order, description, page_id, query_id) FROM stdin;
    public          renegado    false    322   ?4      ?          0    71114    wagtailsearch_query 
   TABLE DATA           ?   COPY public.wagtailsearch_query (id, query_string) FROM stdin;
    public          renegado    false    324   ?4      ?          0    71119    wagtailsearch_querydailyhits 
   TABLE DATA           P   COPY public.wagtailsearch_querydailyhits (id, date, hits, query_id) FROM stdin;
    public          renegado    false    326   ?4      ?          0    71124    wagtailusers_userprofile 
   TABLE DATA           ?   COPY public.wagtailusers_userprofile (id, submitted_notifications, approved_notifications, rejected_notifications, user_id, preferred_language, current_time_zone, avatar, updated_comments_notifications) FROM stdin;
    public          renegado    false    328   ?4      ?           0    0    account_emailaddress_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.account_emailaddress_id_seq', 1, false);
          public          renegado    false    201            ?           0    0     account_emailconfirmation_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.account_emailconfirmation_id_seq', 1, false);
          public          renegado    false    203            ?           0    0    auth_group_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_group_id_seq', 4, true);
          public          renegado    false    205            ?           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 18, true);
          public          renegado    false    207            ?           0    0    auth_permission_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_permission_id_seq', 243, true);
          public          renegado    false    209            ?           0    0    base_room_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.base_room_id_seq', 1, true);
          public          renegado    false    212            ?           0    0    base_schedule_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.base_schedule_id_seq', 3, true);
          public          renegado    false    214            ?           0    0    base_subject_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.base_subject_id_seq', 3, true);
          public          renegado    false    216            ?           0    0    course_college_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.course_college_id_seq', 1, true);
          public          renegado    false    219            ?           0    0    course_course_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.course_course_id_seq', 1, true);
          public          renegado    false    221            ?           0    0    course_department_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.course_department_id_seq', 1, true);
          public          renegado    false    223            ?           0    0    course_section_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.course_section_id_seq', 4, true);
          public          renegado    false    225                        0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);
          public          renegado    false    230                       0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 61, true);
          public          renegado    false    232                       0    0    django_migrations_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.django_migrations_id_seq', 179, true);
          public          renegado    false    234                       0    0    django_site_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.django_site_id_seq', 1, true);
          public          renegado    false    237                       0    0 #   facultyload_facultyloadmodel_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.facultyload_facultyloadmodel_id_seq', 5, true);
          public          renegado    false    241                       0    0 "   socialaccount_socialaccount_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.socialaccount_socialaccount_id_seq', 1, false);
          public          renegado    false    243                       0    0    socialaccount_socialapp_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.socialaccount_socialapp_id_seq', 1, false);
          public          renegado    false    245                       0    0 $   socialaccount_socialapp_sites_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.socialaccount_socialapp_sites_id_seq', 1, false);
          public          renegado    false    247                       0    0     socialaccount_socialtoken_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.socialaccount_socialtoken_id_seq', 1, false);
          public          renegado    false    249            	           0    0    taggit_tag_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.taggit_tag_id_seq', 1, false);
          public          renegado    false    251            
           0    0    taggit_taggeditem_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.taggit_taggeditem_id_seq', 1, false);
          public          renegado    false    253                       0    0    users_professor_groups_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.users_professor_groups_id_seq', 3, true);
          public          renegado    false    256                       0    0    users_professor_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.users_professor_id_seq', 3, true);
          public          renegado    false    257                       0    0 '   users_professor_user_permissions_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.users_professor_user_permissions_id_seq', 1, false);
          public          renegado    false    259                       0    0    wagtailadmin_admin_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.wagtailadmin_admin_id_seq', 1, false);
          public          renegado    false    261                       0    0    wagtailcore_collection_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.wagtailcore_collection_id_seq', 1, true);
          public          renegado    false    263                       0    0 3   wagtailcore_collectionviewrestriction_groups_id_seq    SEQUENCE SET     b   SELECT pg_catalog.setval('public.wagtailcore_collectionviewrestriction_groups_id_seq', 1, false);
          public          renegado    false    266                       0    0 ,   wagtailcore_collectionviewrestriction_id_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public.wagtailcore_collectionviewrestriction_id_seq', 1, false);
          public          renegado    false    267                       0    0    wagtailcore_comment_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.wagtailcore_comment_id_seq', 1, false);
          public          renegado    false    269                       0    0    wagtailcore_commentreply_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.wagtailcore_commentreply_id_seq', 1, false);
          public          renegado    false    271                       0    0 +   wagtailcore_groupapprovaltask_groups_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public.wagtailcore_groupapprovaltask_groups_id_seq', 1, true);
          public          renegado    false    274                       0    0 ,   wagtailcore_groupcollectionpermission_id_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public.wagtailcore_groupcollectionpermission_id_seq', 12, true);
          public          renegado    false    276                       0    0 &   wagtailcore_grouppagepermission_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.wagtailcore_grouppagepermission_id_seq', 7, true);
          public          renegado    false    278                       0    0    wagtailcore_locale_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.wagtailcore_locale_id_seq', 1, true);
          public          renegado    false    280                       0    0    wagtailcore_page_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.wagtailcore_page_id_seq', 9, true);
          public          renegado    false    282                       0    0    wagtailcore_pagelogentry_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.wagtailcore_pagelogentry_id_seq', 27, true);
          public          renegado    false    284                       0    0    wagtailcore_pagerevision_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.wagtailcore_pagerevision_id_seq', 11, true);
          public          renegado    false    286                       0    0 #   wagtailcore_pagesubscription_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.wagtailcore_pagesubscription_id_seq', 7, true);
          public          renegado    false    288                       0    0 -   wagtailcore_pageviewrestriction_groups_id_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public.wagtailcore_pageviewrestriction_groups_id_seq', 7, true);
          public          renegado    false    291                       0    0 &   wagtailcore_pageviewrestriction_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.wagtailcore_pageviewrestriction_id_seq', 4, true);
          public          renegado    false    292                       0    0    wagtailcore_site_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.wagtailcore_site_id_seq', 2, true);
          public          renegado    false    294                       0    0    wagtailcore_task_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.wagtailcore_task_id_seq', 1, true);
          public          renegado    false    296                        0    0    wagtailcore_taskstate_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.wagtailcore_taskstate_id_seq', 1, false);
          public          renegado    false    298            !           0    0    wagtailcore_workflow_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.wagtailcore_workflow_id_seq', 1, true);
          public          renegado    false    300            "           0    0     wagtailcore_workflowstate_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.wagtailcore_workflowstate_id_seq', 1, false);
          public          renegado    false    303            #           0    0    wagtailcore_workflowtask_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.wagtailcore_workflowtask_id_seq', 1, true);
          public          renegado    false    305            $           0    0    wagtaildocs_document_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.wagtaildocs_document_id_seq', 1, false);
          public          renegado    false    307            %           0    0 #   wagtaildocs_uploadeddocument_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.wagtaildocs_uploadeddocument_id_seq', 1, false);
          public          renegado    false    309            &           0    0    wagtailembeds_embed_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.wagtailembeds_embed_id_seq', 1, false);
          public          renegado    false    311            '           0    0 "   wagtailforms_formsubmission_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.wagtailforms_formsubmission_id_seq', 1, false);
          public          renegado    false    313            (           0    0    wagtailimages_image_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.wagtailimages_image_id_seq', 1, false);
          public          renegado    false    315            )           0    0    wagtailimages_rendition_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.wagtailimages_rendition_id_seq', 1, false);
          public          renegado    false    317            *           0    0 "   wagtailimages_uploadedimage_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.wagtailimages_uploadedimage_id_seq', 1, false);
          public          renegado    false    319            +           0    0     wagtailredirects_redirect_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.wagtailredirects_redirect_id_seq', 1, false);
          public          renegado    false    321            ,           0    0     wagtailsearch_editorspick_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.wagtailsearch_editorspick_id_seq', 1, false);
          public          renegado    false    323            -           0    0    wagtailsearch_query_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.wagtailsearch_query_id_seq', 1, false);
          public          renegado    false    325            .           0    0 #   wagtailsearch_querydailyhits_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.wagtailsearch_querydailyhits_id_seq', 1, false);
          public          renegado    false    327            /           0    0    wagtailusers_userprofile_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.wagtailusers_userprofile_id_seq', 11, true);
          public          renegado    false    329            	           2606    71190 3   account_emailaddress account_emailaddress_email_key 
   CONSTRAINT     o   ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_email_key UNIQUE (email);
 ]   ALTER TABLE ONLY public.account_emailaddress DROP CONSTRAINT account_emailaddress_email_key;
       public            renegado    false    200                       2606    71192 .   account_emailaddress account_emailaddress_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.account_emailaddress DROP CONSTRAINT account_emailaddress_pkey;
       public            renegado    false    200                       2606    71194 ;   account_emailconfirmation account_emailconfirmation_key_key 
   CONSTRAINT     u   ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_key_key UNIQUE (key);
 e   ALTER TABLE ONLY public.account_emailconfirmation DROP CONSTRAINT account_emailconfirmation_key_key;
       public            renegado    false    202                       2606    71196 8   account_emailconfirmation account_emailconfirmation_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.account_emailconfirmation DROP CONSTRAINT account_emailconfirmation_pkey;
       public            renegado    false    202                       2606    71198    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            renegado    false    204                       2606    71200 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            renegado    false    206    206                       2606    71202 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            renegado    false    206                       2606    71204    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            renegado    false    204                        2606    71206 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            renegado    false    208    208            "           2606    71208 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            renegado    false    208            $           2606    71210     base_basepage base_basepage_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.base_basepage
    ADD CONSTRAINT base_basepage_pkey PRIMARY KEY (page_ptr_id);
 J   ALTER TABLE ONLY public.base_basepage DROP CONSTRAINT base_basepage_pkey;
       public            renegado    false    210            &           2606    71212    base_room base_room_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.base_room
    ADD CONSTRAINT base_room_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.base_room DROP CONSTRAINT base_room_pkey;
       public            renegado    false    211            (           2606    71214     base_schedule base_schedule_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.base_schedule
    ADD CONSTRAINT base_schedule_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.base_schedule DROP CONSTRAINT base_schedule_pkey;
       public            renegado    false    213            .           2606    71216    base_subject base_subject_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.base_subject
    ADD CONSTRAINT base_subject_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.base_subject DROP CONSTRAINT base_subject_pkey;
       public            renegado    false    215            0           2606    71218     base_timeload base_timeload_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.base_timeload
    ADD CONSTRAINT base_timeload_pkey PRIMARY KEY (page_ptr_id);
 J   ALTER TABLE ONLY public.base_timeload DROP CONSTRAINT base_timeload_pkey;
       public            renegado    false    217            2           2606    71220 "   course_college course_college_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.course_college
    ADD CONSTRAINT course_college_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.course_college DROP CONSTRAINT course_college_pkey;
       public            renegado    false    218            4           2606    71222     course_course course_course_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.course_course
    ADD CONSTRAINT course_course_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.course_course DROP CONSTRAINT course_course_pkey;
       public            renegado    false    220            7           2606    71224 (   course_department course_department_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.course_department
    ADD CONSTRAINT course_department_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.course_department DROP CONSTRAINT course_department_pkey;
       public            renegado    false    222            :           2606    71226 "   course_section course_section_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.course_section
    ADD CONSTRAINT course_section_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.course_section DROP CONSTRAINT course_section_pkey;
       public            renegado    false    224            <           2606    71228 F   depthead_departmentheadindexpage depthead_departmentheadindexpage_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY public.depthead_departmentheadindexpage
    ADD CONSTRAINT depthead_departmentheadindexpage_pkey PRIMARY KEY (page_ptr_id);
 p   ALTER TABLE ONLY public.depthead_departmentheadindexpage DROP CONSTRAINT depthead_departmentheadindexpage_pkey;
       public            renegado    false    226            >           2606    71230 <   depthead_facultyloadingpage depthead_facultyloadingpage_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY public.depthead_facultyloadingpage
    ADD CONSTRAINT depthead_facultyloadingpage_pkey PRIMARY KEY (page_ptr_id);
 f   ALTER TABLE ONLY public.depthead_facultyloadingpage DROP CONSTRAINT depthead_facultyloadingpage_pkey;
       public            renegado    false    227            @           2606    71232 6   depthead_facultyloadpage depthead_facultyloadpage_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY public.depthead_facultyloadpage
    ADD CONSTRAINT depthead_facultyloadpage_pkey PRIMARY KEY (page_ptr_id);
 `   ALTER TABLE ONLY public.depthead_facultyloadpage DROP CONSTRAINT depthead_facultyloadpage_pkey;
       public            renegado    false    228            C           2606    71234 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            renegado    false    229            F           2606    71236 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            renegado    false    231    231            H           2606    71238 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            renegado    false    231            J           2606    71240 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            renegado    false    233            M           2606    71242 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            renegado    false    235            Q           2606    71244 ,   django_site django_site_domain_a2e37b91_uniq 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_domain_a2e37b91_uniq UNIQUE (domain);
 V   ALTER TABLE ONLY public.django_site DROP CONSTRAINT django_site_domain_a2e37b91_uniq;
       public            renegado    false    236            S           2606    71246    django_site django_site_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.django_site DROP CONSTRAINT django_site_pkey;
       public            renegado    false    236            U           2606    71248 4   facultyload_facultyload facultyload_facultyload_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY public.facultyload_facultyload
    ADD CONSTRAINT facultyload_facultyload_pkey PRIMARY KEY (page_ptr_id);
 ^   ALTER TABLE ONLY public.facultyload_facultyload DROP CONSTRAINT facultyload_facultyload_pkey;
       public            renegado    false    238            W           2606    71250 :   facultyload_facultyloading facultyload_facultyloading_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY public.facultyload_facultyloading
    ADD CONSTRAINT facultyload_facultyloading_pkey PRIMARY KEY (page_ptr_id);
 d   ALTER TABLE ONLY public.facultyload_facultyloading DROP CONSTRAINT facultyload_facultyloading_pkey;
       public            renegado    false    239            Y           2606    71252 >   facultyload_facultyloadmodel facultyload_facultyloadmodel_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.facultyload_facultyloadmodel
    ADD CONSTRAINT facultyload_facultyloadmodel_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.facultyload_facultyloadmodel DROP CONSTRAINT facultyload_facultyloadmodel_pkey;
       public            renegado    false    240            ]           2606    71254 <   socialaccount_socialaccount socialaccount_socialaccount_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.socialaccount_socialaccount DROP CONSTRAINT socialaccount_socialaccount_pkey;
       public            renegado    false    242            _           2606    71256 R   socialaccount_socialaccount socialaccount_socialaccount_provider_uid_fc810c6e_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_provider_uid_fc810c6e_uniq UNIQUE (provider, uid);
 |   ALTER TABLE ONLY public.socialaccount_socialaccount DROP CONSTRAINT socialaccount_socialaccount_provider_uid_fc810c6e_uniq;
       public            renegado    false    242    242            d           2606    71258 Y   socialaccount_socialapp_sites socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq UNIQUE (socialapp_id, site_id);
 ?   ALTER TABLE ONLY public.socialaccount_socialapp_sites DROP CONSTRAINT socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq;
       public            renegado    false    246    246            b           2606    71260 4   socialaccount_socialapp socialaccount_socialapp_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.socialaccount_socialapp
    ADD CONSTRAINT socialaccount_socialapp_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.socialaccount_socialapp DROP CONSTRAINT socialaccount_socialapp_pkey;
       public            renegado    false    244            f           2606    71262 @   socialaccount_socialapp_sites socialaccount_socialapp_sites_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp_sites_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.socialaccount_socialapp_sites DROP CONSTRAINT socialaccount_socialapp_sites_pkey;
       public            renegado    false    246            l           2606    71264 S   socialaccount_socialtoken socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq UNIQUE (app_id, account_id);
 }   ALTER TABLE ONLY public.socialaccount_socialtoken DROP CONSTRAINT socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq;
       public            renegado    false    248    248            n           2606    71266 8   socialaccount_socialtoken socialaccount_socialtoken_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.socialaccount_socialtoken DROP CONSTRAINT socialaccount_socialtoken_pkey;
       public            renegado    false    248            q           2606    71268    taggit_tag taggit_tag_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.taggit_tag
    ADD CONSTRAINT taggit_tag_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.taggit_tag DROP CONSTRAINT taggit_tag_name_key;
       public            renegado    false    250            s           2606    71270    taggit_tag taggit_tag_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.taggit_tag
    ADD CONSTRAINT taggit_tag_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.taggit_tag DROP CONSTRAINT taggit_tag_pkey;
       public            renegado    false    250            v           2606    71272    taggit_tag taggit_tag_slug_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.taggit_tag
    ADD CONSTRAINT taggit_tag_slug_key UNIQUE (slug);
 H   ALTER TABLE ONLY public.taggit_tag DROP CONSTRAINT taggit_tag_slug_key;
       public            renegado    false    250            y           2606    71274 J   taggit_taggeditem taggit_taggeditem_content_type_id_object_i_4bb97a8e_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_content_type_id_object_i_4bb97a8e_uniq UNIQUE (content_type_id, object_id, tag_id);
 t   ALTER TABLE ONLY public.taggit_taggeditem DROP CONSTRAINT taggit_taggeditem_content_type_id_object_i_4bb97a8e_uniq;
       public            renegado    false    252    252    252            }           2606    71276 (   taggit_taggeditem taggit_taggeditem_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.taggit_taggeditem DROP CONSTRAINT taggit_taggeditem_pkey;
       public            renegado    false    252            ?           2606    71278 2   users_professor_groups users_professor_groups_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.users_professor_groups
    ADD CONSTRAINT users_professor_groups_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.users_professor_groups DROP CONSTRAINT users_professor_groups_pkey;
       public            renegado    false    255            ?           2606    71280 Q   users_professor_groups users_professor_groups_professor_id_group_id_1fc6a21b_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.users_professor_groups
    ADD CONSTRAINT users_professor_groups_professor_id_group_id_1fc6a21b_uniq UNIQUE (professor_id, group_id);
 {   ALTER TABLE ONLY public.users_professor_groups DROP CONSTRAINT users_professor_groups_professor_id_group_id_1fc6a21b_uniq;
       public            renegado    false    255    255            ?           2606    71282 $   users_professor users_professor_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.users_professor
    ADD CONSTRAINT users_professor_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.users_professor DROP CONSTRAINT users_professor_pkey;
       public            renegado    false    254            ?           2606    71284 `   users_professor_user_permissions users_professor_user_per_professor_id_permission__3489eea4_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.users_professor_user_permissions
    ADD CONSTRAINT users_professor_user_per_professor_id_permission__3489eea4_uniq UNIQUE (professor_id, permission_id);
 ?   ALTER TABLE ONLY public.users_professor_user_permissions DROP CONSTRAINT users_professor_user_per_professor_id_permission__3489eea4_uniq;
       public            renegado    false    258    258            ?           2606    71286 F   users_professor_user_permissions users_professor_user_permissions_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY public.users_professor_user_permissions
    ADD CONSTRAINT users_professor_user_permissions_pkey PRIMARY KEY (id);
 p   ALTER TABLE ONLY public.users_professor_user_permissions DROP CONSTRAINT users_professor_user_permissions_pkey;
       public            renegado    false    258            ?           2606    71288 ,   users_professor users_professor_username_key 
   CONSTRAINT     k   ALTER TABLE ONLY public.users_professor
    ADD CONSTRAINT users_professor_username_key UNIQUE (username);
 V   ALTER TABLE ONLY public.users_professor DROP CONSTRAINT users_professor_username_key;
       public            renegado    false    254            ?           2606    71290 *   wagtailadmin_admin wagtailadmin_admin_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.wagtailadmin_admin
    ADD CONSTRAINT wagtailadmin_admin_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.wagtailadmin_admin DROP CONSTRAINT wagtailadmin_admin_pkey;
       public            renegado    false    260            ?           2606    71292 6   wagtailcore_collection wagtailcore_collection_path_key 
   CONSTRAINT     q   ALTER TABLE ONLY public.wagtailcore_collection
    ADD CONSTRAINT wagtailcore_collection_path_key UNIQUE (path);
 `   ALTER TABLE ONLY public.wagtailcore_collection DROP CONSTRAINT wagtailcore_collection_path_key;
       public            renegado    false    262            ?           2606    71294 2   wagtailcore_collection wagtailcore_collection_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.wagtailcore_collection
    ADD CONSTRAINT wagtailcore_collection_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.wagtailcore_collection DROP CONSTRAINT wagtailcore_collection_pkey;
       public            renegado    false    262            ?           2606    71296 l   wagtailcore_collectionviewrestriction_groups wagtailcore_collectionvi_collectionviewrestrictio_988995ae_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction_groups
    ADD CONSTRAINT wagtailcore_collectionvi_collectionviewrestrictio_988995ae_uniq UNIQUE (collectionviewrestriction_id, group_id);
 ?   ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction_groups DROP CONSTRAINT wagtailcore_collectionvi_collectionviewrestrictio_988995ae_uniq;
       public            renegado    false    265    265            ?           2606    71298 ^   wagtailcore_collectionviewrestriction_groups wagtailcore_collectionviewrestriction_groups_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction_groups
    ADD CONSTRAINT wagtailcore_collectionviewrestriction_groups_pkey PRIMARY KEY (id);
 ?   ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction_groups DROP CONSTRAINT wagtailcore_collectionviewrestriction_groups_pkey;
       public            renegado    false    265            ?           2606    71300 P   wagtailcore_collectionviewrestriction wagtailcore_collectionviewrestriction_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction
    ADD CONSTRAINT wagtailcore_collectionviewrestriction_pkey PRIMARY KEY (id);
 z   ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction DROP CONSTRAINT wagtailcore_collectionviewrestriction_pkey;
       public            renegado    false    264            ?           2606    71302 ,   wagtailcore_comment wagtailcore_comment_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.wagtailcore_comment
    ADD CONSTRAINT wagtailcore_comment_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.wagtailcore_comment DROP CONSTRAINT wagtailcore_comment_pkey;
       public            renegado    false    268            ?           2606    71304 6   wagtailcore_commentreply wagtailcore_commentreply_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.wagtailcore_commentreply
    ADD CONSTRAINT wagtailcore_commentreply_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.wagtailcore_commentreply DROP CONSTRAINT wagtailcore_commentreply_pkey;
       public            renegado    false    270            ?           2606    71306 d   wagtailcore_groupapprovaltask_groups wagtailcore_groupapprova_groupapprovaltask_id_gro_bb5ee7eb_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.wagtailcore_groupapprovaltask_groups
    ADD CONSTRAINT wagtailcore_groupapprova_groupapprovaltask_id_gro_bb5ee7eb_uniq UNIQUE (groupapprovaltask_id, group_id);
 ?   ALTER TABLE ONLY public.wagtailcore_groupapprovaltask_groups DROP CONSTRAINT wagtailcore_groupapprova_groupapprovaltask_id_gro_bb5ee7eb_uniq;
       public            renegado    false    273    273            ?           2606    71308 N   wagtailcore_groupapprovaltask_groups wagtailcore_groupapprovaltask_groups_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY public.wagtailcore_groupapprovaltask_groups
    ADD CONSTRAINT wagtailcore_groupapprovaltask_groups_pkey PRIMARY KEY (id);
 x   ALTER TABLE ONLY public.wagtailcore_groupapprovaltask_groups DROP CONSTRAINT wagtailcore_groupapprovaltask_groups_pkey;
       public            renegado    false    273            ?           2606    71310 @   wagtailcore_groupapprovaltask wagtailcore_groupapprovaltask_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY public.wagtailcore_groupapprovaltask
    ADD CONSTRAINT wagtailcore_groupapprovaltask_pkey PRIMARY KEY (task_ptr_id);
 j   ALTER TABLE ONLY public.wagtailcore_groupapprovaltask DROP CONSTRAINT wagtailcore_groupapprovaltask_pkey;
       public            renegado    false    272            ?           2606    71312 e   wagtailcore_groupcollectionpermission wagtailcore_groupcollect_group_id_collection_id_p_a21cefe9_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission
    ADD CONSTRAINT wagtailcore_groupcollect_group_id_collection_id_p_a21cefe9_uniq UNIQUE (group_id, collection_id, permission_id);
 ?   ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission DROP CONSTRAINT wagtailcore_groupcollect_group_id_collection_id_p_a21cefe9_uniq;
       public            renegado    false    275    275    275            ?           2606    71314 P   wagtailcore_groupcollectionpermission wagtailcore_groupcollectionpermission_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission
    ADD CONSTRAINT wagtailcore_groupcollectionpermission_pkey PRIMARY KEY (id);
 z   ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission DROP CONSTRAINT wagtailcore_groupcollectionpermission_pkey;
       public            renegado    false    275            ?           2606    71316 _   wagtailcore_grouppagepermission wagtailcore_grouppageper_group_id_page_id_permiss_0898bdf8_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.wagtailcore_grouppagepermission
    ADD CONSTRAINT wagtailcore_grouppageper_group_id_page_id_permiss_0898bdf8_uniq UNIQUE (group_id, page_id, permission_type);
 ?   ALTER TABLE ONLY public.wagtailcore_grouppagepermission DROP CONSTRAINT wagtailcore_grouppageper_group_id_page_id_permiss_0898bdf8_uniq;
       public            renegado    false    277    277    277            ?           2606    71318 D   wagtailcore_grouppagepermission wagtailcore_grouppagepermission_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY public.wagtailcore_grouppagepermission
    ADD CONSTRAINT wagtailcore_grouppagepermission_pkey PRIMARY KEY (id);
 n   ALTER TABLE ONLY public.wagtailcore_grouppagepermission DROP CONSTRAINT wagtailcore_grouppagepermission_pkey;
       public            renegado    false    277            ?           2606    71320 7   wagtailcore_locale wagtailcore_locale_language_code_key 
   CONSTRAINT     {   ALTER TABLE ONLY public.wagtailcore_locale
    ADD CONSTRAINT wagtailcore_locale_language_code_key UNIQUE (language_code);
 a   ALTER TABLE ONLY public.wagtailcore_locale DROP CONSTRAINT wagtailcore_locale_language_code_key;
       public            renegado    false    279            ?           2606    71322 *   wagtailcore_locale wagtailcore_locale_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.wagtailcore_locale
    ADD CONSTRAINT wagtailcore_locale_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.wagtailcore_locale DROP CONSTRAINT wagtailcore_locale_pkey;
       public            renegado    false    279            ?           2606    71324 *   wagtailcore_page wagtailcore_page_path_key 
   CONSTRAINT     e   ALTER TABLE ONLY public.wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_path_key UNIQUE (path);
 T   ALTER TABLE ONLY public.wagtailcore_page DROP CONSTRAINT wagtailcore_page_path_key;
       public            renegado    false    281            ?           2606    71326 &   wagtailcore_page wagtailcore_page_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.wagtailcore_page DROP CONSTRAINT wagtailcore_page_pkey;
       public            renegado    false    281            ?           2606    71328 I   wagtailcore_page wagtailcore_page_translation_key_locale_id_9b041bad_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_translation_key_locale_id_9b041bad_uniq UNIQUE (translation_key, locale_id);
 s   ALTER TABLE ONLY public.wagtailcore_page DROP CONSTRAINT wagtailcore_page_translation_key_locale_id_9b041bad_uniq;
       public            renegado    false    281    281            ?           2606    71330 6   wagtailcore_pagelogentry wagtailcore_pagelogentry_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.wagtailcore_pagelogentry
    ADD CONSTRAINT wagtailcore_pagelogentry_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.wagtailcore_pagelogentry DROP CONSTRAINT wagtailcore_pagelogentry_pkey;
       public            renegado    false    283            ?           2606    71332 6   wagtailcore_pagerevision wagtailcore_pagerevision_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.wagtailcore_pagerevision
    ADD CONSTRAINT wagtailcore_pagerevision_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.wagtailcore_pagerevision DROP CONSTRAINT wagtailcore_pagerevision_pkey;
       public            renegado    false    285            ?           2606    71334 W   wagtailcore_pagesubscription wagtailcore_pagesubscription_page_id_user_id_0cef73ed_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.wagtailcore_pagesubscription
    ADD CONSTRAINT wagtailcore_pagesubscription_page_id_user_id_0cef73ed_uniq UNIQUE (page_id, user_id);
 ?   ALTER TABLE ONLY public.wagtailcore_pagesubscription DROP CONSTRAINT wagtailcore_pagesubscription_page_id_user_id_0cef73ed_uniq;
       public            renegado    false    287    287            ?           2606    71336 >   wagtailcore_pagesubscription wagtailcore_pagesubscription_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.wagtailcore_pagesubscription
    ADD CONSTRAINT wagtailcore_pagesubscription_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.wagtailcore_pagesubscription DROP CONSTRAINT wagtailcore_pagesubscription_pkey;
       public            renegado    false    287            ?           2606    71338 f   wagtailcore_pageviewrestriction_groups wagtailcore_pageviewrest_pageviewrestriction_id_g_d23f80bb_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.wagtailcore_pageviewrestriction_groups
    ADD CONSTRAINT wagtailcore_pageviewrest_pageviewrestriction_id_g_d23f80bb_uniq UNIQUE (pageviewrestriction_id, group_id);
 ?   ALTER TABLE ONLY public.wagtailcore_pageviewrestriction_groups DROP CONSTRAINT wagtailcore_pageviewrest_pageviewrestriction_id_g_d23f80bb_uniq;
       public            renegado    false    290    290            ?           2606    71340 R   wagtailcore_pageviewrestriction_groups wagtailcore_pageviewrestriction_groups_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY public.wagtailcore_pageviewrestriction_groups
    ADD CONSTRAINT wagtailcore_pageviewrestriction_groups_pkey PRIMARY KEY (id);
 |   ALTER TABLE ONLY public.wagtailcore_pageviewrestriction_groups DROP CONSTRAINT wagtailcore_pageviewrestriction_groups_pkey;
       public            renegado    false    290            ?           2606    71342 D   wagtailcore_pageviewrestriction wagtailcore_pageviewrestriction_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY public.wagtailcore_pageviewrestriction
    ADD CONSTRAINT wagtailcore_pageviewrestriction_pkey PRIMARY KEY (id);
 n   ALTER TABLE ONLY public.wagtailcore_pageviewrestriction DROP CONSTRAINT wagtailcore_pageviewrestriction_pkey;
       public            renegado    false    289            ?           2606    71344 =   wagtailcore_site wagtailcore_site_hostname_port_2c626d70_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.wagtailcore_site
    ADD CONSTRAINT wagtailcore_site_hostname_port_2c626d70_uniq UNIQUE (hostname, port);
 g   ALTER TABLE ONLY public.wagtailcore_site DROP CONSTRAINT wagtailcore_site_hostname_port_2c626d70_uniq;
       public            renegado    false    293    293            ?           2606    71346 &   wagtailcore_site wagtailcore_site_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.wagtailcore_site
    ADD CONSTRAINT wagtailcore_site_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.wagtailcore_site DROP CONSTRAINT wagtailcore_site_pkey;
       public            renegado    false    293            ?           2606    71348 &   wagtailcore_task wagtailcore_task_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.wagtailcore_task
    ADD CONSTRAINT wagtailcore_task_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.wagtailcore_task DROP CONSTRAINT wagtailcore_task_pkey;
       public            renegado    false    295                       2606    71350 0   wagtailcore_taskstate wagtailcore_taskstate_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.wagtailcore_taskstate
    ADD CONSTRAINT wagtailcore_taskstate_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.wagtailcore_taskstate DROP CONSTRAINT wagtailcore_taskstate_pkey;
       public            renegado    false    297                       2606    71352 .   wagtailcore_workflow wagtailcore_workflow_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.wagtailcore_workflow
    ADD CONSTRAINT wagtailcore_workflow_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.wagtailcore_workflow DROP CONSTRAINT wagtailcore_workflow_pkey;
       public            renegado    false    299                       2606    71354 6   wagtailcore_workflowpage wagtailcore_workflowpage_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY public.wagtailcore_workflowpage
    ADD CONSTRAINT wagtailcore_workflowpage_pkey PRIMARY KEY (page_id);
 `   ALTER TABLE ONLY public.wagtailcore_workflowpage DROP CONSTRAINT wagtailcore_workflowpage_pkey;
       public            renegado    false    301                       2606    71356 M   wagtailcore_workflowstate wagtailcore_workflowstate_current_task_state_id_key 
   CONSTRAINT     ?   ALTER TABLE ONLY public.wagtailcore_workflowstate
    ADD CONSTRAINT wagtailcore_workflowstate_current_task_state_id_key UNIQUE (current_task_state_id);
 w   ALTER TABLE ONLY public.wagtailcore_workflowstate DROP CONSTRAINT wagtailcore_workflowstate_current_task_state_id_key;
       public            renegado    false    302                       2606    71358 8   wagtailcore_workflowstate wagtailcore_workflowstate_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.wagtailcore_workflowstate
    ADD CONSTRAINT wagtailcore_workflowstate_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.wagtailcore_workflowstate DROP CONSTRAINT wagtailcore_workflowstate_pkey;
       public            renegado    false    302                       2606    71360 6   wagtailcore_workflowtask wagtailcore_workflowtask_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.wagtailcore_workflowtask
    ADD CONSTRAINT wagtailcore_workflowtask_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.wagtailcore_workflowtask DROP CONSTRAINT wagtailcore_workflowtask_pkey;
       public            renegado    false    304                       2606    71362 S   wagtailcore_workflowtask wagtailcore_workflowtask_workflow_id_task_id_4ec7a62b_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.wagtailcore_workflowtask
    ADD CONSTRAINT wagtailcore_workflowtask_workflow_id_task_id_4ec7a62b_uniq UNIQUE (workflow_id, task_id);
 }   ALTER TABLE ONLY public.wagtailcore_workflowtask DROP CONSTRAINT wagtailcore_workflowtask_workflow_id_task_id_4ec7a62b_uniq;
       public            renegado    false    304    304                       2606    71364 .   wagtaildocs_document wagtaildocs_document_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.wagtaildocs_document
    ADD CONSTRAINT wagtaildocs_document_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.wagtaildocs_document DROP CONSTRAINT wagtaildocs_document_pkey;
       public            renegado    false    306                       2606    71366 >   wagtaildocs_uploadeddocument wagtaildocs_uploadeddocument_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.wagtaildocs_uploadeddocument
    ADD CONSTRAINT wagtaildocs_uploadeddocument_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.wagtaildocs_uploadeddocument DROP CONSTRAINT wagtaildocs_uploadeddocument_pkey;
       public            renegado    false    308            !           2606    71368 :   wagtailembeds_embed wagtailembeds_embed_hash_c9bd8c9a_uniq 
   CONSTRAINT     u   ALTER TABLE ONLY public.wagtailembeds_embed
    ADD CONSTRAINT wagtailembeds_embed_hash_c9bd8c9a_uniq UNIQUE (hash);
 d   ALTER TABLE ONLY public.wagtailembeds_embed DROP CONSTRAINT wagtailembeds_embed_hash_c9bd8c9a_uniq;
       public            renegado    false    310            #           2606    71370 ,   wagtailembeds_embed wagtailembeds_embed_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.wagtailembeds_embed
    ADD CONSTRAINT wagtailembeds_embed_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.wagtailembeds_embed DROP CONSTRAINT wagtailembeds_embed_pkey;
       public            renegado    false    310            &           2606    71372 <   wagtailforms_formsubmission wagtailforms_formsubmission_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.wagtailforms_formsubmission
    ADD CONSTRAINT wagtailforms_formsubmission_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.wagtailforms_formsubmission DROP CONSTRAINT wagtailforms_formsubmission_pkey;
       public            renegado    false    312            *           2606    71374 ,   wagtailimages_image wagtailimages_image_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.wagtailimages_image
    ADD CONSTRAINT wagtailimages_image_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.wagtailimages_image DROP CONSTRAINT wagtailimages_image_pkey;
       public            renegado    false    314            0           2606    71376 V   wagtailimages_rendition wagtailimages_rendition_image_id_filter_spec_foc_323c8fe0_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.wagtailimages_rendition
    ADD CONSTRAINT wagtailimages_rendition_image_id_filter_spec_foc_323c8fe0_uniq UNIQUE (image_id, filter_spec, focal_point_key);
 ?   ALTER TABLE ONLY public.wagtailimages_rendition DROP CONSTRAINT wagtailimages_rendition_image_id_filter_spec_foc_323c8fe0_uniq;
       public            renegado    false    316    316    316            2           2606    71378 4   wagtailimages_rendition wagtailimages_rendition_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.wagtailimages_rendition
    ADD CONSTRAINT wagtailimages_rendition_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.wagtailimages_rendition DROP CONSTRAINT wagtailimages_rendition_pkey;
       public            renegado    false    316            4           2606    71380 <   wagtailimages_uploadedimage wagtailimages_uploadedimage_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.wagtailimages_uploadedimage
    ADD CONSTRAINT wagtailimages_uploadedimage_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.wagtailimages_uploadedimage DROP CONSTRAINT wagtailimages_uploadedimage_pkey;
       public            renegado    false    318            9           2606    71382 R   wagtailredirects_redirect wagtailredirects_redirect_old_path_site_id_783622d7_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.wagtailredirects_redirect
    ADD CONSTRAINT wagtailredirects_redirect_old_path_site_id_783622d7_uniq UNIQUE (old_path, site_id);
 |   ALTER TABLE ONLY public.wagtailredirects_redirect DROP CONSTRAINT wagtailredirects_redirect_old_path_site_id_783622d7_uniq;
       public            renegado    false    320    320            ;           2606    71384 8   wagtailredirects_redirect wagtailredirects_redirect_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.wagtailredirects_redirect
    ADD CONSTRAINT wagtailredirects_redirect_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.wagtailredirects_redirect DROP CONSTRAINT wagtailredirects_redirect_pkey;
       public            renegado    false    320            @           2606    71386 8   wagtailsearch_editorspick wagtailsearch_editorspick_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.wagtailsearch_editorspick
    ADD CONSTRAINT wagtailsearch_editorspick_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.wagtailsearch_editorspick DROP CONSTRAINT wagtailsearch_editorspick_pkey;
       public            renegado    false    322            C           2606    71388 ,   wagtailsearch_query wagtailsearch_query_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.wagtailsearch_query
    ADD CONSTRAINT wagtailsearch_query_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.wagtailsearch_query DROP CONSTRAINT wagtailsearch_query_pkey;
       public            renegado    false    324            F           2606    71390 8   wagtailsearch_query wagtailsearch_query_query_string_key 
   CONSTRAINT     {   ALTER TABLE ONLY public.wagtailsearch_query
    ADD CONSTRAINT wagtailsearch_query_query_string_key UNIQUE (query_string);
 b   ALTER TABLE ONLY public.wagtailsearch_query DROP CONSTRAINT wagtailsearch_query_query_string_key;
       public            renegado    false    324            H           2606    71392 >   wagtailsearch_querydailyhits wagtailsearch_querydailyhits_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.wagtailsearch_querydailyhits
    ADD CONSTRAINT wagtailsearch_querydailyhits_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.wagtailsearch_querydailyhits DROP CONSTRAINT wagtailsearch_querydailyhits_pkey;
       public            renegado    false    326            K           2606    71394 U   wagtailsearch_querydailyhits wagtailsearch_querydailyhits_query_id_date_1dd232e6_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.wagtailsearch_querydailyhits
    ADD CONSTRAINT wagtailsearch_querydailyhits_query_id_date_1dd232e6_uniq UNIQUE (query_id, date);
    ALTER TABLE ONLY public.wagtailsearch_querydailyhits DROP CONSTRAINT wagtailsearch_querydailyhits_query_id_date_1dd232e6_uniq;
       public            renegado    false    326    326            M           2606    71396 6   wagtailusers_userprofile wagtailusers_userprofile_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.wagtailusers_userprofile
    ADD CONSTRAINT wagtailusers_userprofile_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.wagtailusers_userprofile DROP CONSTRAINT wagtailusers_userprofile_pkey;
       public            renegado    false    328            O           2606    71398 =   wagtailusers_userprofile wagtailusers_userprofile_user_id_key 
   CONSTRAINT     {   ALTER TABLE ONLY public.wagtailusers_userprofile
    ADD CONSTRAINT wagtailusers_userprofile_user_id_key UNIQUE (user_id);
 g   ALTER TABLE ONLY public.wagtailusers_userprofile DROP CONSTRAINT wagtailusers_userprofile_user_id_key;
       public            renegado    false    328                       1259    71399 (   account_emailaddress_email_03be32b2_like    INDEX     ~   CREATE INDEX account_emailaddress_email_03be32b2_like ON public.account_emailaddress USING btree (email varchar_pattern_ops);
 <   DROP INDEX public.account_emailaddress_email_03be32b2_like;
       public            renegado    false    200                       1259    71400 %   account_emailaddress_user_id_2c513194    INDEX     i   CREATE INDEX account_emailaddress_user_id_2c513194 ON public.account_emailaddress USING btree (user_id);
 9   DROP INDEX public.account_emailaddress_user_id_2c513194;
       public            renegado    false    200                       1259    71401 3   account_emailconfirmation_email_address_id_5b7f8c58    INDEX     ?   CREATE INDEX account_emailconfirmation_email_address_id_5b7f8c58 ON public.account_emailconfirmation USING btree (email_address_id);
 G   DROP INDEX public.account_emailconfirmation_email_address_id_5b7f8c58;
       public            renegado    false    202                       1259    71402 +   account_emailconfirmation_key_f43612bd_like    INDEX     ?   CREATE INDEX account_emailconfirmation_key_f43612bd_like ON public.account_emailconfirmation USING btree (key varchar_pattern_ops);
 ?   DROP INDEX public.account_emailconfirmation_key_f43612bd_like;
       public            renegado    false    202                       1259    71403    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            renegado    false    204                       1259    71404 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            renegado    false    206                       1259    71405 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            renegado    false    206                       1259    71406 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            renegado    false    208            )           1259    71407    base_schedule_room_id_747834ab    INDEX     [   CREATE INDEX base_schedule_room_id_747834ab ON public.base_schedule USING btree (room_id);
 2   DROP INDEX public.base_schedule_room_id_747834ab;
       public            renegado    false    213            *           1259    71408 !   base_schedule_section_id_ec48af3c    INDEX     a   CREATE INDEX base_schedule_section_id_ec48af3c ON public.base_schedule USING btree (section_id);
 5   DROP INDEX public.base_schedule_section_id_ec48af3c;
       public            renegado    false    213            +           1259    71409 !   base_schedule_subject_id_877f0497    INDEX     a   CREATE INDEX base_schedule_subject_id_877f0497 ON public.base_schedule USING btree (subject_id);
 5   DROP INDEX public.base_schedule_subject_id_877f0497;
       public            renegado    false    213            ,           1259    71410    base_subject_course_id_cb60fe87    INDEX     ]   CREATE INDEX base_subject_course_id_cb60fe87 ON public.base_subject USING btree (course_id);
 3   DROP INDEX public.base_subject_course_id_cb60fe87;
       public            renegado    false    215            5           1259    71411 %   course_department_college_id_1fe60f70    INDEX     i   CREATE INDEX course_department_college_id_1fe60f70 ON public.course_department USING btree (college_id);
 9   DROP INDEX public.course_department_college_id_1fe60f70;
       public            renegado    false    222            8           1259    71412 !   course_section_course_id_b17c56a1    INDEX     a   CREATE INDEX course_section_course_id_b17c56a1 ON public.course_section USING btree (course_id);
 5   DROP INDEX public.course_section_course_id_b17c56a1;
       public            renegado    false    224            A           1259    71413 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            renegado    false    229            D           1259    71414 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            renegado    false    229            K           1259    71415 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            renegado    false    235            N           1259    71416 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            renegado    false    235            O           1259    71417     django_site_domain_a2e37b91_like    INDEX     n   CREATE INDEX django_site_domain_a2e37b91_like ON public.django_site USING btree (domain varchar_pattern_ops);
 4   DROP INDEX public.django_site_domain_a2e37b91_like;
       public            renegado    false    236            Z           1259    71418 2   facultyload_facultyloadmodel_professor_id_b5957c53    INDEX     ?   CREATE INDEX facultyload_facultyloadmodel_professor_id_b5957c53 ON public.facultyload_facultyloadmodel USING btree (professor_id);
 F   DROP INDEX public.facultyload_facultyloadmodel_professor_id_b5957c53;
       public            renegado    false    240            [           1259    71419 1   facultyload_facultyloadmodel_schedule_id_4d595bcf    INDEX     ?   CREATE INDEX facultyload_facultyloadmodel_schedule_id_4d595bcf ON public.facultyload_facultyloadmodel USING btree (schedule_id);
 E   DROP INDEX public.facultyload_facultyloadmodel_schedule_id_4d595bcf;
       public            renegado    false    240            `           1259    71420 ,   socialaccount_socialaccount_user_id_8146e70c    INDEX     w   CREATE INDEX socialaccount_socialaccount_user_id_8146e70c ON public.socialaccount_socialaccount USING btree (user_id);
 @   DROP INDEX public.socialaccount_socialaccount_user_id_8146e70c;
       public            renegado    false    242            g           1259    71421 .   socialaccount_socialapp_sites_site_id_2579dee5    INDEX     {   CREATE INDEX socialaccount_socialapp_sites_site_id_2579dee5 ON public.socialaccount_socialapp_sites USING btree (site_id);
 B   DROP INDEX public.socialaccount_socialapp_sites_site_id_2579dee5;
       public            renegado    false    246            h           1259    71422 3   socialaccount_socialapp_sites_socialapp_id_97fb6e7d    INDEX     ?   CREATE INDEX socialaccount_socialapp_sites_socialapp_id_97fb6e7d ON public.socialaccount_socialapp_sites USING btree (socialapp_id);
 G   DROP INDEX public.socialaccount_socialapp_sites_socialapp_id_97fb6e7d;
       public            renegado    false    246            i           1259    71423 -   socialaccount_socialtoken_account_id_951f210e    INDEX     y   CREATE INDEX socialaccount_socialtoken_account_id_951f210e ON public.socialaccount_socialtoken USING btree (account_id);
 A   DROP INDEX public.socialaccount_socialtoken_account_id_951f210e;
       public            renegado    false    248            j           1259    71424 )   socialaccount_socialtoken_app_id_636a42d7    INDEX     q   CREATE INDEX socialaccount_socialtoken_app_id_636a42d7 ON public.socialaccount_socialtoken USING btree (app_id);
 =   DROP INDEX public.socialaccount_socialtoken_app_id_636a42d7;
       public            renegado    false    248            o           1259    71425    taggit_tag_name_58eb2ed9_like    INDEX     h   CREATE INDEX taggit_tag_name_58eb2ed9_like ON public.taggit_tag USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.taggit_tag_name_58eb2ed9_like;
       public            renegado    false    250            t           1259    71426    taggit_tag_slug_6be58b2c_like    INDEX     h   CREATE INDEX taggit_tag_slug_6be58b2c_like ON public.taggit_tag USING btree (slug varchar_pattern_ops);
 1   DROP INDEX public.taggit_tag_slug_6be58b2c_like;
       public            renegado    false    250            w           1259    71427 *   taggit_taggeditem_content_type_id_9957a03c    INDEX     s   CREATE INDEX taggit_taggeditem_content_type_id_9957a03c ON public.taggit_taggeditem USING btree (content_type_id);
 >   DROP INDEX public.taggit_taggeditem_content_type_id_9957a03c;
       public            renegado    false    252            z           1259    71428 8   taggit_taggeditem_content_type_id_object_id_196cc965_idx    INDEX     ?   CREATE INDEX taggit_taggeditem_content_type_id_object_id_196cc965_idx ON public.taggit_taggeditem USING btree (content_type_id, object_id);
 L   DROP INDEX public.taggit_taggeditem_content_type_id_object_id_196cc965_idx;
       public            renegado    false    252    252            {           1259    71429 $   taggit_taggeditem_object_id_e2d7d1df    INDEX     g   CREATE INDEX taggit_taggeditem_object_id_e2d7d1df ON public.taggit_taggeditem USING btree (object_id);
 8   DROP INDEX public.taggit_taggeditem_object_id_e2d7d1df;
       public            renegado    false    252            ~           1259    71430 !   taggit_taggeditem_tag_id_f4f5b767    INDEX     a   CREATE INDEX taggit_taggeditem_tag_id_f4f5b767 ON public.taggit_taggeditem USING btree (tag_id);
 5   DROP INDEX public.taggit_taggeditem_tag_id_f4f5b767;
       public            renegado    false    252            
           1259    71431    unique_in_progress_workflow    INDEX     ?   CREATE UNIQUE INDEX unique_in_progress_workflow ON public.wagtailcore_workflowstate USING btree (page_id) WHERE ((status)::text = ANY (ARRAY[('in_progress'::character varying)::text, ('needs_changes'::character varying)::text]));
 /   DROP INDEX public.unique_in_progress_workflow;
       public            renegado    false    302    302                       1259    71432 &   users_professor_department_id_c28c9483    INDEX     k   CREATE INDEX users_professor_department_id_c28c9483 ON public.users_professor USING btree (department_id);
 :   DROP INDEX public.users_professor_department_id_c28c9483;
       public            renegado    false    254            ?           1259    71433 (   users_professor_groups_group_id_3b60ceb7    INDEX     o   CREATE INDEX users_professor_groups_group_id_3b60ceb7 ON public.users_professor_groups USING btree (group_id);
 <   DROP INDEX public.users_professor_groups_group_id_3b60ceb7;
       public            renegado    false    255            ?           1259    71434 ,   users_professor_groups_professor_id_24e87343    INDEX     w   CREATE INDEX users_professor_groups_professor_id_24e87343 ON public.users_professor_groups USING btree (professor_id);
 @   DROP INDEX public.users_professor_groups_professor_id_24e87343;
       public            renegado    false    255            ?           1259    71435 7   users_professor_user_permissions_permission_id_266eb463    INDEX     ?   CREATE INDEX users_professor_user_permissions_permission_id_266eb463 ON public.users_professor_user_permissions USING btree (permission_id);
 K   DROP INDEX public.users_professor_user_permissions_permission_id_266eb463;
       public            renegado    false    258            ?           1259    71436 6   users_professor_user_permissions_professor_id_88fc7072    INDEX     ?   CREATE INDEX users_professor_user_permissions_professor_id_88fc7072 ON public.users_professor_user_permissions USING btree (professor_id);
 J   DROP INDEX public.users_professor_user_permissions_professor_id_88fc7072;
       public            renegado    false    258            ?           1259    71437 &   users_professor_username_a68eda7d_like    INDEX     z   CREATE INDEX users_professor_username_a68eda7d_like ON public.users_professor USING btree (username varchar_pattern_ops);
 :   DROP INDEX public.users_professor_username_a68eda7d_like;
       public            renegado    false    254            ?           1259    71438 )   wagtailcore_collection_path_d848dc19_like    INDEX     ?   CREATE INDEX wagtailcore_collection_path_d848dc19_like ON public.wagtailcore_collection USING btree (path varchar_pattern_ops);
 =   DROP INDEX public.wagtailcore_collection_path_d848dc19_like;
       public            renegado    false    262            ?           1259    71439 >   wagtailcore_collectionview_collectionviewrestriction__47320efd    INDEX     ?   CREATE INDEX wagtailcore_collectionview_collectionviewrestriction__47320efd ON public.wagtailcore_collectionviewrestriction_groups USING btree (collectionviewrestriction_id);
 R   DROP INDEX public.wagtailcore_collectionview_collectionviewrestriction__47320efd;
       public            renegado    false    265            ?           1259    71440 <   wagtailcore_collectionviewrestriction_collection_id_761908ec    INDEX     ?   CREATE INDEX wagtailcore_collectionviewrestriction_collection_id_761908ec ON public.wagtailcore_collectionviewrestriction USING btree (collection_id);
 P   DROP INDEX public.wagtailcore_collectionviewrestriction_collection_id_761908ec;
       public            renegado    false    264            ?           1259    71441 >   wagtailcore_collectionviewrestriction_groups_group_id_1823f2a3    INDEX     ?   CREATE INDEX wagtailcore_collectionviewrestriction_groups_group_id_1823f2a3 ON public.wagtailcore_collectionviewrestriction_groups USING btree (group_id);
 R   DROP INDEX public.wagtailcore_collectionviewrestriction_groups_group_id_1823f2a3;
       public            renegado    false    265            ?           1259    71442 $   wagtailcore_comment_page_id_108444b5    INDEX     g   CREATE INDEX wagtailcore_comment_page_id_108444b5 ON public.wagtailcore_comment USING btree (page_id);
 8   DROP INDEX public.wagtailcore_comment_page_id_108444b5;
       public            renegado    false    268            ?           1259    71443 +   wagtailcore_comment_resolved_by_id_a282aa0e    INDEX     u   CREATE INDEX wagtailcore_comment_resolved_by_id_a282aa0e ON public.wagtailcore_comment USING btree (resolved_by_id);
 ?   DROP INDEX public.wagtailcore_comment_resolved_by_id_a282aa0e;
       public            renegado    false    268            ?           1259    71444 0   wagtailcore_comment_revision_created_id_1d058279    INDEX        CREATE INDEX wagtailcore_comment_revision_created_id_1d058279 ON public.wagtailcore_comment USING btree (revision_created_id);
 D   DROP INDEX public.wagtailcore_comment_revision_created_id_1d058279;
       public            renegado    false    268            ?           1259    71445 $   wagtailcore_comment_user_id_0c577ca6    INDEX     g   CREATE INDEX wagtailcore_comment_user_id_0c577ca6 ON public.wagtailcore_comment USING btree (user_id);
 8   DROP INDEX public.wagtailcore_comment_user_id_0c577ca6;
       public            renegado    false    268            ?           1259    71446 ,   wagtailcore_commentreply_comment_id_afc7e027    INDEX     w   CREATE INDEX wagtailcore_commentreply_comment_id_afc7e027 ON public.wagtailcore_commentreply USING btree (comment_id);
 @   DROP INDEX public.wagtailcore_commentreply_comment_id_afc7e027;
       public            renegado    false    270            ?           1259    71447 )   wagtailcore_commentreply_user_id_d0b3b9c3    INDEX     q   CREATE INDEX wagtailcore_commentreply_user_id_d0b3b9c3 ON public.wagtailcore_commentreply USING btree (user_id);
 =   DROP INDEX public.wagtailcore_commentreply_user_id_d0b3b9c3;
       public            renegado    false    270            ?           1259    71448 8   wagtailcore_groupapprovalt_groupapprovaltask_id_9a9255ea    INDEX     ?   CREATE INDEX wagtailcore_groupapprovalt_groupapprovaltask_id_9a9255ea ON public.wagtailcore_groupapprovaltask_groups USING btree (groupapprovaltask_id);
 L   DROP INDEX public.wagtailcore_groupapprovalt_groupapprovaltask_id_9a9255ea;
       public            renegado    false    273            ?           1259    71449 6   wagtailcore_groupapprovaltask_groups_group_id_2e64b61f    INDEX     ?   CREATE INDEX wagtailcore_groupapprovaltask_groups_group_id_2e64b61f ON public.wagtailcore_groupapprovaltask_groups USING btree (group_id);
 J   DROP INDEX public.wagtailcore_groupapprovaltask_groups_group_id_2e64b61f;
       public            renegado    false    273            ?           1259    71450 <   wagtailcore_groupcollectionpermission_collection_id_5423575a    INDEX     ?   CREATE INDEX wagtailcore_groupcollectionpermission_collection_id_5423575a ON public.wagtailcore_groupcollectionpermission USING btree (collection_id);
 P   DROP INDEX public.wagtailcore_groupcollectionpermission_collection_id_5423575a;
       public            renegado    false    275            ?           1259    71451 7   wagtailcore_groupcollectionpermission_group_id_05d61460    INDEX     ?   CREATE INDEX wagtailcore_groupcollectionpermission_group_id_05d61460 ON public.wagtailcore_groupcollectionpermission USING btree (group_id);
 K   DROP INDEX public.wagtailcore_groupcollectionpermission_group_id_05d61460;
       public            renegado    false    275            ?           1259    71452 <   wagtailcore_groupcollectionpermission_permission_id_1b626275    INDEX     ?   CREATE INDEX wagtailcore_groupcollectionpermission_permission_id_1b626275 ON public.wagtailcore_groupcollectionpermission USING btree (permission_id);
 P   DROP INDEX public.wagtailcore_groupcollectionpermission_permission_id_1b626275;
       public            renegado    false    275            ?           1259    71453 1   wagtailcore_grouppagepermission_group_id_fc07e671    INDEX     ?   CREATE INDEX wagtailcore_grouppagepermission_group_id_fc07e671 ON public.wagtailcore_grouppagepermission USING btree (group_id);
 E   DROP INDEX public.wagtailcore_grouppagepermission_group_id_fc07e671;
       public            renegado    false    277            ?           1259    71454 0   wagtailcore_grouppagepermission_page_id_710b114a    INDEX        CREATE INDEX wagtailcore_grouppagepermission_page_id_710b114a ON public.wagtailcore_grouppagepermission USING btree (page_id);
 D   DROP INDEX public.wagtailcore_grouppagepermission_page_id_710b114a;
       public            renegado    false    277            ?           1259    71455 .   wagtailcore_locale_language_code_03149338_like    INDEX     ?   CREATE INDEX wagtailcore_locale_language_code_03149338_like ON public.wagtailcore_locale USING btree (language_code varchar_pattern_ops);
 B   DROP INDEX public.wagtailcore_locale_language_code_03149338_like;
       public            renegado    false    279            ?           1259    71456 %   wagtailcore_page_alias_of_id_12945502    INDEX     i   CREATE INDEX wagtailcore_page_alias_of_id_12945502 ON public.wagtailcore_page USING btree (alias_of_id);
 9   DROP INDEX public.wagtailcore_page_alias_of_id_12945502;
       public            renegado    false    281            ?           1259    71457 )   wagtailcore_page_content_type_id_c28424df    INDEX     q   CREATE INDEX wagtailcore_page_content_type_id_c28424df ON public.wagtailcore_page USING btree (content_type_id);
 =   DROP INDEX public.wagtailcore_page_content_type_id_c28424df;
       public            renegado    false    281            ?           1259    71458 ,   wagtailcore_page_first_published_at_2b5dd637    INDEX     w   CREATE INDEX wagtailcore_page_first_published_at_2b5dd637 ON public.wagtailcore_page USING btree (first_published_at);
 @   DROP INDEX public.wagtailcore_page_first_published_at_2b5dd637;
       public            renegado    false    281            ?           1259    71459 *   wagtailcore_page_live_revision_id_930bd822    INDEX     s   CREATE INDEX wagtailcore_page_live_revision_id_930bd822 ON public.wagtailcore_page USING btree (live_revision_id);
 >   DROP INDEX public.wagtailcore_page_live_revision_id_930bd822;
       public            renegado    false    281            ?           1259    71460 #   wagtailcore_page_locale_id_3c7e30a6    INDEX     e   CREATE INDEX wagtailcore_page_locale_id_3c7e30a6 ON public.wagtailcore_page USING btree (locale_id);
 7   DROP INDEX public.wagtailcore_page_locale_id_3c7e30a6;
       public            renegado    false    281            ?           1259    71461 &   wagtailcore_page_locked_by_id_bcb86245    INDEX     k   CREATE INDEX wagtailcore_page_locked_by_id_bcb86245 ON public.wagtailcore_page USING btree (locked_by_id);
 :   DROP INDEX public.wagtailcore_page_locked_by_id_bcb86245;
       public            renegado    false    281            ?           1259    71462 "   wagtailcore_page_owner_id_fbf7c332    INDEX     c   CREATE INDEX wagtailcore_page_owner_id_fbf7c332 ON public.wagtailcore_page USING btree (owner_id);
 6   DROP INDEX public.wagtailcore_page_owner_id_fbf7c332;
       public            renegado    false    281            ?           1259    71463 #   wagtailcore_page_path_98eba2c8_like    INDEX     t   CREATE INDEX wagtailcore_page_path_98eba2c8_like ON public.wagtailcore_page USING btree (path varchar_pattern_ops);
 7   DROP INDEX public.wagtailcore_page_path_98eba2c8_like;
       public            renegado    false    281            ?           1259    71464    wagtailcore_page_slug_e7c11b8f    INDEX     [   CREATE INDEX wagtailcore_page_slug_e7c11b8f ON public.wagtailcore_page USING btree (slug);
 2   DROP INDEX public.wagtailcore_page_slug_e7c11b8f;
       public            renegado    false    281            ?           1259    71465 #   wagtailcore_page_slug_e7c11b8f_like    INDEX     t   CREATE INDEX wagtailcore_page_slug_e7c11b8f_like ON public.wagtailcore_page USING btree (slug varchar_pattern_ops);
 7   DROP INDEX public.wagtailcore_page_slug_e7c11b8f_like;
       public            renegado    false    281            ?           1259    71466 (   wagtailcore_pagelogentry_action_c2408198    INDEX     o   CREATE INDEX wagtailcore_pagelogentry_action_c2408198 ON public.wagtailcore_pagelogentry USING btree (action);
 <   DROP INDEX public.wagtailcore_pagelogentry_action_c2408198;
       public            renegado    false    283            ?           1259    71467 -   wagtailcore_pagelogentry_action_c2408198_like    INDEX     ?   CREATE INDEX wagtailcore_pagelogentry_action_c2408198_like ON public.wagtailcore_pagelogentry USING btree (action varchar_pattern_ops);
 A   DROP INDEX public.wagtailcore_pagelogentry_action_c2408198_like;
       public            renegado    false    283            ?           1259    71468 1   wagtailcore_pagelogentry_content_changed_99f27ade    INDEX     ?   CREATE INDEX wagtailcore_pagelogentry_content_changed_99f27ade ON public.wagtailcore_pagelogentry USING btree (content_changed);
 E   DROP INDEX public.wagtailcore_pagelogentry_content_changed_99f27ade;
       public            renegado    false    283            ?           1259    71469 1   wagtailcore_pagelogentry_content_type_id_74e7708a    INDEX     ?   CREATE INDEX wagtailcore_pagelogentry_content_type_id_74e7708a ON public.wagtailcore_pagelogentry USING btree (content_type_id);
 E   DROP INDEX public.wagtailcore_pagelogentry_content_type_id_74e7708a;
       public            renegado    false    283            ?           1259    71470 )   wagtailcore_pagelogentry_page_id_8464e327    INDEX     q   CREATE INDEX wagtailcore_pagelogentry_page_id_8464e327 ON public.wagtailcore_pagelogentry USING btree (page_id);
 =   DROP INDEX public.wagtailcore_pagelogentry_page_id_8464e327;
       public            renegado    false    283            ?           1259    71471 -   wagtailcore_pagelogentry_revision_id_8043d103    INDEX     y   CREATE INDEX wagtailcore_pagelogentry_revision_id_8043d103 ON public.wagtailcore_pagelogentry USING btree (revision_id);
 A   DROP INDEX public.wagtailcore_pagelogentry_revision_id_8043d103;
       public            renegado    false    283            ?           1259    71472 )   wagtailcore_pagelogentry_user_id_604ccfd8    INDEX     q   CREATE INDEX wagtailcore_pagelogentry_user_id_604ccfd8 ON public.wagtailcore_pagelogentry USING btree (user_id);
 =   DROP INDEX public.wagtailcore_pagelogentry_user_id_604ccfd8;
       public            renegado    false    283            ?           1259    71473 5   wagtailcore_pagerevision_approved_go_live_at_e56afc67    INDEX     ?   CREATE INDEX wagtailcore_pagerevision_approved_go_live_at_e56afc67 ON public.wagtailcore_pagerevision USING btree (approved_go_live_at);
 I   DROP INDEX public.wagtailcore_pagerevision_approved_go_live_at_e56afc67;
       public            renegado    false    285            ?           1259    71474 ,   wagtailcore_pagerevision_created_at_66954e3b    INDEX     w   CREATE INDEX wagtailcore_pagerevision_created_at_66954e3b ON public.wagtailcore_pagerevision USING btree (created_at);
 @   DROP INDEX public.wagtailcore_pagerevision_created_at_66954e3b;
       public            renegado    false    285            ?           1259    71475 )   wagtailcore_pagerevision_page_id_d421cc1d    INDEX     q   CREATE INDEX wagtailcore_pagerevision_page_id_d421cc1d ON public.wagtailcore_pagerevision USING btree (page_id);
 =   DROP INDEX public.wagtailcore_pagerevision_page_id_d421cc1d;
       public            renegado    false    285            ?           1259    71476 :   wagtailcore_pagerevision_submitted_for_moderation_c682e44c    INDEX     ?   CREATE INDEX wagtailcore_pagerevision_submitted_for_moderation_c682e44c ON public.wagtailcore_pagerevision USING btree (submitted_for_moderation);
 N   DROP INDEX public.wagtailcore_pagerevision_submitted_for_moderation_c682e44c;
       public            renegado    false    285            ?           1259    71477 )   wagtailcore_pagerevision_user_id_2409d2f4    INDEX     q   CREATE INDEX wagtailcore_pagerevision_user_id_2409d2f4 ON public.wagtailcore_pagerevision USING btree (user_id);
 =   DROP INDEX public.wagtailcore_pagerevision_user_id_2409d2f4;
       public            renegado    false    285            ?           1259    71478 -   wagtailcore_pagesubscription_page_id_a085e7a6    INDEX     y   CREATE INDEX wagtailcore_pagesubscription_page_id_a085e7a6 ON public.wagtailcore_pagesubscription USING btree (page_id);
 A   DROP INDEX public.wagtailcore_pagesubscription_page_id_a085e7a6;
       public            renegado    false    287            ?           1259    71479 -   wagtailcore_pagesubscription_user_id_89d7def9    INDEX     y   CREATE INDEX wagtailcore_pagesubscription_user_id_89d7def9 ON public.wagtailcore_pagesubscription USING btree (user_id);
 A   DROP INDEX public.wagtailcore_pagesubscription_user_id_89d7def9;
       public            renegado    false    287            ?           1259    71480 :   wagtailcore_pageviewrestri_pageviewrestriction_id_f147a99a    INDEX     ?   CREATE INDEX wagtailcore_pageviewrestri_pageviewrestriction_id_f147a99a ON public.wagtailcore_pageviewrestriction_groups USING btree (pageviewrestriction_id);
 N   DROP INDEX public.wagtailcore_pageviewrestri_pageviewrestriction_id_f147a99a;
       public            renegado    false    290            ?           1259    71481 8   wagtailcore_pageviewrestriction_groups_group_id_6460f223    INDEX     ?   CREATE INDEX wagtailcore_pageviewrestriction_groups_group_id_6460f223 ON public.wagtailcore_pageviewrestriction_groups USING btree (group_id);
 L   DROP INDEX public.wagtailcore_pageviewrestriction_groups_group_id_6460f223;
       public            renegado    false    290            ?           1259    71482 0   wagtailcore_pageviewrestriction_page_id_15a8bea6    INDEX        CREATE INDEX wagtailcore_pageviewrestriction_page_id_15a8bea6 ON public.wagtailcore_pageviewrestriction USING btree (page_id);
 D   DROP INDEX public.wagtailcore_pageviewrestriction_page_id_15a8bea6;
       public            renegado    false    289            ?           1259    71483 "   wagtailcore_site_hostname_96b20b46    INDEX     c   CREATE INDEX wagtailcore_site_hostname_96b20b46 ON public.wagtailcore_site USING btree (hostname);
 6   DROP INDEX public.wagtailcore_site_hostname_96b20b46;
       public            renegado    false    293            ?           1259    71484 '   wagtailcore_site_hostname_96b20b46_like    INDEX     |   CREATE INDEX wagtailcore_site_hostname_96b20b46_like ON public.wagtailcore_site USING btree (hostname varchar_pattern_ops);
 ;   DROP INDEX public.wagtailcore_site_hostname_96b20b46_like;
       public            renegado    false    293            ?           1259    71485 &   wagtailcore_site_root_page_id_e02fb95c    INDEX     k   CREATE INDEX wagtailcore_site_root_page_id_e02fb95c ON public.wagtailcore_site USING btree (root_page_id);
 :   DROP INDEX public.wagtailcore_site_root_page_id_e02fb95c;
       public            renegado    false    293            ?           1259    71486 )   wagtailcore_task_content_type_id_249ab8ba    INDEX     q   CREATE INDEX wagtailcore_task_content_type_id_249ab8ba ON public.wagtailcore_task USING btree (content_type_id);
 =   DROP INDEX public.wagtailcore_task_content_type_id_249ab8ba;
       public            renegado    false    295            ?           1259    71487 .   wagtailcore_taskstate_content_type_id_0a758fdc    INDEX     {   CREATE INDEX wagtailcore_taskstate_content_type_id_0a758fdc ON public.wagtailcore_taskstate USING btree (content_type_id);
 B   DROP INDEX public.wagtailcore_taskstate_content_type_id_0a758fdc;
       public            renegado    false    297            ?           1259    71488 -   wagtailcore_taskstate_finished_by_id_13f98229    INDEX     y   CREATE INDEX wagtailcore_taskstate_finished_by_id_13f98229 ON public.wagtailcore_taskstate USING btree (finished_by_id);
 A   DROP INDEX public.wagtailcore_taskstate_finished_by_id_13f98229;
       public            renegado    false    297                        1259    71489 /   wagtailcore_taskstate_page_revision_id_9f52c88e    INDEX     }   CREATE INDEX wagtailcore_taskstate_page_revision_id_9f52c88e ON public.wagtailcore_taskstate USING btree (page_revision_id);
 C   DROP INDEX public.wagtailcore_taskstate_page_revision_id_9f52c88e;
       public            renegado    false    297                       1259    71490 &   wagtailcore_taskstate_task_id_c3677c34    INDEX     k   CREATE INDEX wagtailcore_taskstate_task_id_c3677c34 ON public.wagtailcore_taskstate USING btree (task_id);
 :   DROP INDEX public.wagtailcore_taskstate_task_id_c3677c34;
       public            renegado    false    297                       1259    71491 0   wagtailcore_taskstate_workflow_state_id_9239a775    INDEX        CREATE INDEX wagtailcore_taskstate_workflow_state_id_9239a775 ON public.wagtailcore_taskstate USING btree (workflow_state_id);
 D   DROP INDEX public.wagtailcore_taskstate_workflow_state_id_9239a775;
       public            renegado    false    297            	           1259    71492 -   wagtailcore_workflowpage_workflow_id_56f56ff6    INDEX     y   CREATE INDEX wagtailcore_workflowpage_workflow_id_56f56ff6 ON public.wagtailcore_workflowpage USING btree (workflow_id);
 A   DROP INDEX public.wagtailcore_workflowpage_workflow_id_56f56ff6;
       public            renegado    false    301                       1259    71493 *   wagtailcore_workflowstate_page_id_6c962862    INDEX     s   CREATE INDEX wagtailcore_workflowstate_page_id_6c962862 ON public.wagtailcore_workflowstate USING btree (page_id);
 >   DROP INDEX public.wagtailcore_workflowstate_page_id_6c962862;
       public            renegado    false    302                       1259    71494 2   wagtailcore_workflowstate_requested_by_id_4090bca3    INDEX     ?   CREATE INDEX wagtailcore_workflowstate_requested_by_id_4090bca3 ON public.wagtailcore_workflowstate USING btree (requested_by_id);
 F   DROP INDEX public.wagtailcore_workflowstate_requested_by_id_4090bca3;
       public            renegado    false    302                       1259    71495 .   wagtailcore_workflowstate_workflow_id_1f18378f    INDEX     {   CREATE INDEX wagtailcore_workflowstate_workflow_id_1f18378f ON public.wagtailcore_workflowstate USING btree (workflow_id);
 B   DROP INDEX public.wagtailcore_workflowstate_workflow_id_1f18378f;
       public            renegado    false    302                       1259    71496 )   wagtailcore_workflowtask_task_id_ce7716fe    INDEX     q   CREATE INDEX wagtailcore_workflowtask_task_id_ce7716fe ON public.wagtailcore_workflowtask USING btree (task_id);
 =   DROP INDEX public.wagtailcore_workflowtask_task_id_ce7716fe;
       public            renegado    false    304                       1259    71497 -   wagtailcore_workflowtask_workflow_id_b9717175    INDEX     y   CREATE INDEX wagtailcore_workflowtask_workflow_id_b9717175 ON public.wagtailcore_workflowtask USING btree (workflow_id);
 A   DROP INDEX public.wagtailcore_workflowtask_workflow_id_b9717175;
       public            renegado    false    304                       1259    71498 +   wagtaildocs_document_collection_id_23881625    INDEX     u   CREATE INDEX wagtaildocs_document_collection_id_23881625 ON public.wagtaildocs_document USING btree (collection_id);
 ?   DROP INDEX public.wagtaildocs_document_collection_id_23881625;
       public            renegado    false    306                       1259    71499 1   wagtaildocs_document_uploaded_by_user_id_17258b41    INDEX     ?   CREATE INDEX wagtaildocs_document_uploaded_by_user_id_17258b41 ON public.wagtaildocs_document USING btree (uploaded_by_user_id);
 E   DROP INDEX public.wagtaildocs_document_uploaded_by_user_id_17258b41;
       public            renegado    false    306                       1259    71500 9   wagtaildocs_uploadeddocument_uploaded_by_user_id_8dd61a73    INDEX     ?   CREATE INDEX wagtaildocs_uploadeddocument_uploaded_by_user_id_8dd61a73 ON public.wagtaildocs_uploadeddocument USING btree (uploaded_by_user_id);
 M   DROP INDEX public.wagtaildocs_uploadeddocument_uploaded_by_user_id_8dd61a73;
       public            renegado    false    308                       1259    71501 &   wagtailembeds_embed_hash_c9bd8c9a_like    INDEX     z   CREATE INDEX wagtailembeds_embed_hash_c9bd8c9a_like ON public.wagtailembeds_embed USING btree (hash varchar_pattern_ops);
 :   DROP INDEX public.wagtailembeds_embed_hash_c9bd8c9a_like;
       public            renegado    false    310            $           1259    71502 ,   wagtailforms_formsubmission_page_id_e48e93e7    INDEX     w   CREATE INDEX wagtailforms_formsubmission_page_id_e48e93e7 ON public.wagtailforms_formsubmission USING btree (page_id);
 @   DROP INDEX public.wagtailforms_formsubmission_page_id_e48e93e7;
       public            renegado    false    312            '           1259    71503 *   wagtailimages_image_collection_id_c2f8af7e    INDEX     s   CREATE INDEX wagtailimages_image_collection_id_c2f8af7e ON public.wagtailimages_image USING btree (collection_id);
 >   DROP INDEX public.wagtailimages_image_collection_id_c2f8af7e;
       public            renegado    false    314            (           1259    71504 '   wagtailimages_image_created_at_86fa6cd4    INDEX     m   CREATE INDEX wagtailimages_image_created_at_86fa6cd4 ON public.wagtailimages_image USING btree (created_at);
 ;   DROP INDEX public.wagtailimages_image_created_at_86fa6cd4;
       public            renegado    false    314            +           1259    71505 0   wagtailimages_image_uploaded_by_user_id_5d73dc75    INDEX        CREATE INDEX wagtailimages_image_uploaded_by_user_id_5d73dc75 ON public.wagtailimages_image USING btree (uploaded_by_user_id);
 D   DROP INDEX public.wagtailimages_image_uploaded_by_user_id_5d73dc75;
       public            renegado    false    314            ,           1259    71506 ,   wagtailimages_rendition_filter_spec_1cba3201    INDEX     w   CREATE INDEX wagtailimages_rendition_filter_spec_1cba3201 ON public.wagtailimages_rendition USING btree (filter_spec);
 @   DROP INDEX public.wagtailimages_rendition_filter_spec_1cba3201;
       public            renegado    false    316            -           1259    71507 1   wagtailimages_rendition_filter_spec_1cba3201_like    INDEX     ?   CREATE INDEX wagtailimages_rendition_filter_spec_1cba3201_like ON public.wagtailimages_rendition USING btree (filter_spec varchar_pattern_ops);
 E   DROP INDEX public.wagtailimages_rendition_filter_spec_1cba3201_like;
       public            renegado    false    316            .           1259    71508 )   wagtailimages_rendition_image_id_3e1fd774    INDEX     q   CREATE INDEX wagtailimages_rendition_image_id_3e1fd774 ON public.wagtailimages_rendition USING btree (image_id);
 =   DROP INDEX public.wagtailimages_rendition_image_id_3e1fd774;
       public            renegado    false    316            5           1259    71509 8   wagtailimages_uploadedimage_uploaded_by_user_id_85921689    INDEX     ?   CREATE INDEX wagtailimages_uploadedimage_uploaded_by_user_id_85921689 ON public.wagtailimages_uploadedimage USING btree (uploaded_by_user_id);
 L   DROP INDEX public.wagtailimages_uploadedimage_uploaded_by_user_id_85921689;
       public            renegado    false    318            6           1259    71510 +   wagtailredirects_redirect_old_path_bb35247b    INDEX     u   CREATE INDEX wagtailredirects_redirect_old_path_bb35247b ON public.wagtailredirects_redirect USING btree (old_path);
 ?   DROP INDEX public.wagtailredirects_redirect_old_path_bb35247b;
       public            renegado    false    320            7           1259    71511 0   wagtailredirects_redirect_old_path_bb35247b_like    INDEX     ?   CREATE INDEX wagtailredirects_redirect_old_path_bb35247b_like ON public.wagtailredirects_redirect USING btree (old_path varchar_pattern_ops);
 D   DROP INDEX public.wagtailredirects_redirect_old_path_bb35247b_like;
       public            renegado    false    320            <           1259    71512 3   wagtailredirects_redirect_redirect_page_id_b5728a8f    INDEX     ?   CREATE INDEX wagtailredirects_redirect_redirect_page_id_b5728a8f ON public.wagtailredirects_redirect USING btree (redirect_page_id);
 G   DROP INDEX public.wagtailredirects_redirect_redirect_page_id_b5728a8f;
       public            renegado    false    320            =           1259    71513 *   wagtailredirects_redirect_site_id_780a0e1e    INDEX     s   CREATE INDEX wagtailredirects_redirect_site_id_780a0e1e ON public.wagtailredirects_redirect USING btree (site_id);
 >   DROP INDEX public.wagtailredirects_redirect_site_id_780a0e1e;
       public            renegado    false    320            >           1259    71514 *   wagtailsearch_editorspick_page_id_28cbc274    INDEX     s   CREATE INDEX wagtailsearch_editorspick_page_id_28cbc274 ON public.wagtailsearch_editorspick USING btree (page_id);
 >   DROP INDEX public.wagtailsearch_editorspick_page_id_28cbc274;
       public            renegado    false    322            A           1259    71515 +   wagtailsearch_editorspick_query_id_c6eee4a0    INDEX     u   CREATE INDEX wagtailsearch_editorspick_query_id_c6eee4a0 ON public.wagtailsearch_editorspick USING btree (query_id);
 ?   DROP INDEX public.wagtailsearch_editorspick_query_id_c6eee4a0;
       public            renegado    false    322            D           1259    71516 .   wagtailsearch_query_query_string_e785ea07_like    INDEX     ?   CREATE INDEX wagtailsearch_query_query_string_e785ea07_like ON public.wagtailsearch_query USING btree (query_string varchar_pattern_ops);
 B   DROP INDEX public.wagtailsearch_query_query_string_e785ea07_like;
       public            renegado    false    324            I           1259    71517 .   wagtailsearch_querydailyhits_query_id_2185994b    INDEX     {   CREATE INDEX wagtailsearch_querydailyhits_query_id_2185994b ON public.wagtailsearch_querydailyhits USING btree (query_id);
 B   DROP INDEX public.wagtailsearch_querydailyhits_query_id_2185994b;
       public            renegado    false    326            P           2606    71518 P   account_emailaddress account_emailaddress_user_id_2c513194_fk_users_professor_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_user_id_2c513194_fk_users_professor_id FOREIGN KEY (user_id) REFERENCES public.users_professor(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.account_emailaddress DROP CONSTRAINT account_emailaddress_user_id_2c513194_fk_users_professor_id;
       public          renegado    false    200    3457    254            Q           2606    71523 U   account_emailconfirmation account_emailconfirm_email_address_id_5b7f8c58_fk_account_e    FK CONSTRAINT     ?   ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirm_email_address_id_5b7f8c58_fk_account_e FOREIGN KEY (email_address_id) REFERENCES public.account_emailaddress(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.account_emailconfirmation DROP CONSTRAINT account_emailconfirm_email_address_id_5b7f8c58_fk_account_e;
       public          renegado    false    3339    200    202            R           2606    71528 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          renegado    false    208    206    3362            S           2606    71533 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          renegado    false    204    3351    206            T           2606    71538 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          renegado    false    208    231    3400            U           2606    71543 G   base_basepage base_basepage_page_ptr_id_9f44dfb4_fk_wagtailcore_page_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.base_basepage
    ADD CONSTRAINT base_basepage_page_ptr_id_9f44dfb4_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.base_basepage DROP CONSTRAINT base_basepage_page_ptr_id_9f44dfb4_fk_wagtailcore_page_id;
       public          renegado    false    281    210    3536            V           2606    71548 <   base_schedule base_schedule_room_id_747834ab_fk_base_room_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.base_schedule
    ADD CONSTRAINT base_schedule_room_id_747834ab_fk_base_room_id FOREIGN KEY (room_id) REFERENCES public.base_room(id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY public.base_schedule DROP CONSTRAINT base_schedule_room_id_747834ab_fk_base_room_id;
       public          renegado    false    211    3366    213            W           2606    71553 D   base_schedule base_schedule_section_id_ec48af3c_fk_course_section_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.base_schedule
    ADD CONSTRAINT base_schedule_section_id_ec48af3c_fk_course_section_id FOREIGN KEY (section_id) REFERENCES public.course_section(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.base_schedule DROP CONSTRAINT base_schedule_section_id_ec48af3c_fk_course_section_id;
       public          renegado    false    213    3386    224            X           2606    71558 B   base_schedule base_schedule_subject_id_877f0497_fk_base_subject_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.base_schedule
    ADD CONSTRAINT base_schedule_subject_id_877f0497_fk_base_subject_id FOREIGN KEY (subject_id) REFERENCES public.base_subject(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.base_schedule DROP CONSTRAINT base_schedule_subject_id_877f0497_fk_base_subject_id;
       public          renegado    false    3374    215    213            Y           2606    71563 @   base_subject base_subject_course_id_cb60fe87_fk_course_course_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.base_subject
    ADD CONSTRAINT base_subject_course_id_cb60fe87_fk_course_course_id FOREIGN KEY (course_id) REFERENCES public.course_course(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.base_subject DROP CONSTRAINT base_subject_course_id_cb60fe87_fk_course_course_id;
       public          renegado    false    215    220    3380            Z           2606    71568 G   base_timeload base_timeload_page_ptr_id_53ae1e68_fk_wagtailcore_page_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.base_timeload
    ADD CONSTRAINT base_timeload_page_ptr_id_53ae1e68_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.base_timeload DROP CONSTRAINT base_timeload_page_ptr_id_53ae1e68_fk_wagtailcore_page_id;
       public          renegado    false    217    3536    281            [           2606    71573 L   course_department course_department_college_id_1fe60f70_fk_course_college_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.course_department
    ADD CONSTRAINT course_department_college_id_1fe60f70_fk_course_college_id FOREIGN KEY (college_id) REFERENCES public.course_college(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.course_department DROP CONSTRAINT course_department_college_id_1fe60f70_fk_course_college_id;
       public          renegado    false    222    218    3378            \           2606    71578 D   course_section course_section_course_id_b17c56a1_fk_course_course_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.course_section
    ADD CONSTRAINT course_section_course_id_b17c56a1_fk_course_course_id FOREIGN KEY (course_id) REFERENCES public.course_course(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.course_section DROP CONSTRAINT course_section_course_id_b17c56a1_fk_course_course_id;
       public          renegado    false    224    220    3380            ]           2606    71583 W   depthead_departmentheadindexpage depthead_departmenth_page_ptr_id_d4ffda35_fk_wagtailco    FK CONSTRAINT     ?   ALTER TABLE ONLY public.depthead_departmentheadindexpage
    ADD CONSTRAINT depthead_departmenth_page_ptr_id_d4ffda35_fk_wagtailco FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.depthead_departmentheadindexpage DROP CONSTRAINT depthead_departmenth_page_ptr_id_d4ffda35_fk_wagtailco;
       public          renegado    false    3536    226    281            _           2606    71588 O   depthead_facultyloadpage depthead_facultyload_page_ptr_id_01c03973_fk_wagtailco    FK CONSTRAINT     ?   ALTER TABLE ONLY public.depthead_facultyloadpage
    ADD CONSTRAINT depthead_facultyload_page_ptr_id_01c03973_fk_wagtailco FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.depthead_facultyloadpage DROP CONSTRAINT depthead_facultyload_page_ptr_id_01c03973_fk_wagtailco;
       public          renegado    false    281    228    3536            ^           2606    71593 R   depthead_facultyloadingpage depthead_facultyload_page_ptr_id_a1517d73_fk_wagtailco    FK CONSTRAINT     ?   ALTER TABLE ONLY public.depthead_facultyloadingpage
    ADD CONSTRAINT depthead_facultyload_page_ptr_id_a1517d73_fk_wagtailco FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.depthead_facultyloadingpage DROP CONSTRAINT depthead_facultyload_page_ptr_id_a1517d73_fk_wagtailco;
       public          renegado    false    3536    281    227            `           2606    71598 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          renegado    false    231    3400    229            a           2606    71603 H   django_admin_log django_admin_log_user_id_c564eba6_fk_users_professor_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_users_professor_id FOREIGN KEY (user_id) REFERENCES public.users_professor(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_users_professor_id;
       public          renegado    false    3457    254    229            b           2606    71608 N   facultyload_facultyload facultyload_facultyl_page_ptr_id_bdc52ffa_fk_wagtailco    FK CONSTRAINT     ?   ALTER TABLE ONLY public.facultyload_facultyload
    ADD CONSTRAINT facultyload_facultyl_page_ptr_id_bdc52ffa_fk_wagtailco FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.facultyload_facultyload DROP CONSTRAINT facultyload_facultyl_page_ptr_id_bdc52ffa_fk_wagtailco;
       public          renegado    false    3536    281    238            c           2606    71613 Q   facultyload_facultyloading facultyload_facultyl_page_ptr_id_f3d576b7_fk_wagtailco    FK CONSTRAINT     ?   ALTER TABLE ONLY public.facultyload_facultyloading
    ADD CONSTRAINT facultyload_facultyl_page_ptr_id_f3d576b7_fk_wagtailco FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.facultyload_facultyloading DROP CONSTRAINT facultyload_facultyl_page_ptr_id_f3d576b7_fk_wagtailco;
       public          renegado    false    3536    281    239            d           2606    71618 T   facultyload_facultyloadmodel facultyload_facultyl_professor_id_b5957c53_fk_users_pro    FK CONSTRAINT     ?   ALTER TABLE ONLY public.facultyload_facultyloadmodel
    ADD CONSTRAINT facultyload_facultyl_professor_id_b5957c53_fk_users_pro FOREIGN KEY (professor_id) REFERENCES public.users_professor(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.facultyload_facultyloadmodel DROP CONSTRAINT facultyload_facultyl_professor_id_b5957c53_fk_users_pro;
       public          renegado    false    240    3457    254            e           2606    71623 S   facultyload_facultyloadmodel facultyload_facultyl_schedule_id_4d595bcf_fk_base_sche    FK CONSTRAINT     ?   ALTER TABLE ONLY public.facultyload_facultyloadmodel
    ADD CONSTRAINT facultyload_facultyl_schedule_id_4d595bcf_fk_base_sche FOREIGN KEY (schedule_id) REFERENCES public.base_schedule(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.facultyload_facultyloadmodel DROP CONSTRAINT facultyload_facultyl_schedule_id_4d595bcf_fk_base_sche;
       public          renegado    false    3368    240    213            i           2606    71628 O   socialaccount_socialtoken socialaccount_social_account_id_951f210e_fk_socialacc    FK CONSTRAINT     ?   ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_social_account_id_951f210e_fk_socialacc FOREIGN KEY (account_id) REFERENCES public.socialaccount_socialaccount(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.socialaccount_socialtoken DROP CONSTRAINT socialaccount_social_account_id_951f210e_fk_socialacc;
       public          renegado    false    3421    242    248            j           2606    71633 K   socialaccount_socialtoken socialaccount_social_app_id_636a42d7_fk_socialacc    FK CONSTRAINT     ?   ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_social_app_id_636a42d7_fk_socialacc FOREIGN KEY (app_id) REFERENCES public.socialaccount_socialapp(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.socialaccount_socialtoken DROP CONSTRAINT socialaccount_social_app_id_636a42d7_fk_socialacc;
       public          renegado    false    248    244    3426            g           2606    71638 P   socialaccount_socialapp_sites socialaccount_social_site_id_2579dee5_fk_django_si    FK CONSTRAINT     ?   ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_social_site_id_2579dee5_fk_django_si FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.socialaccount_socialapp_sites DROP CONSTRAINT socialaccount_social_site_id_2579dee5_fk_django_si;
       public          renegado    false    246    3411    236            h           2606    71643 U   socialaccount_socialapp_sites socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc    FK CONSTRAINT     ?   ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc FOREIGN KEY (socialapp_id) REFERENCES public.socialaccount_socialapp(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.socialaccount_socialapp_sites DROP CONSTRAINT socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc;
       public          renegado    false    3426    244    246            f           2606    71648 N   socialaccount_socialaccount socialaccount_social_user_id_8146e70c_fk_users_pro    FK CONSTRAINT     ?   ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_social_user_id_8146e70c_fk_users_pro FOREIGN KEY (user_id) REFERENCES public.users_professor(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.socialaccount_socialaccount DROP CONSTRAINT socialaccount_social_user_id_8146e70c_fk_users_pro;
       public          renegado    false    242    254    3457            k           2606    71653 I   taggit_taggeditem taggit_taggeditem_content_type_id_9957a03c_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_content_type_id_9957a03c_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.taggit_taggeditem DROP CONSTRAINT taggit_taggeditem_content_type_id_9957a03c_fk_django_co;
       public          renegado    false    252    231    3400            l           2606    71658 D   taggit_taggeditem taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id FOREIGN KEY (tag_id) REFERENCES public.taggit_tag(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.taggit_taggeditem DROP CONSTRAINT taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id;
       public          renegado    false    252    250    3443            m           2606    71663 N   users_professor users_professor_department_id_c28c9483_fk_course_department_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.users_professor
    ADD CONSTRAINT users_professor_department_id_c28c9483_fk_course_department_id FOREIGN KEY (department_id) REFERENCES public.course_department(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.users_professor DROP CONSTRAINT users_professor_department_id_c28c9483_fk_course_department_id;
       public          renegado    false    254    3383    222            n           2606    71668 N   users_professor_groups users_professor_grou_professor_id_24e87343_fk_users_pro    FK CONSTRAINT     ?   ALTER TABLE ONLY public.users_professor_groups
    ADD CONSTRAINT users_professor_grou_professor_id_24e87343_fk_users_pro FOREIGN KEY (professor_id) REFERENCES public.users_professor(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.users_professor_groups DROP CONSTRAINT users_professor_grou_professor_id_24e87343_fk_users_pro;
       public          renegado    false    254    255    3457            o           2606    71673 P   users_professor_groups users_professor_groups_group_id_3b60ceb7_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.users_professor_groups
    ADD CONSTRAINT users_professor_groups_group_id_3b60ceb7_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.users_professor_groups DROP CONSTRAINT users_professor_groups_group_id_3b60ceb7_fk_auth_group_id;
       public          renegado    false    3351    204    255            p           2606    71678 Y   users_professor_user_permissions users_professor_user_permission_id_266eb463_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.users_professor_user_permissions
    ADD CONSTRAINT users_professor_user_permission_id_266eb463_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.users_professor_user_permissions DROP CONSTRAINT users_professor_user_permission_id_266eb463_fk_auth_perm;
       public          renegado    false    258    208    3362            q           2606    71683 X   users_professor_user_permissions users_professor_user_professor_id_88fc7072_fk_users_pro    FK CONSTRAINT     ?   ALTER TABLE ONLY public.users_professor_user_permissions
    ADD CONSTRAINT users_professor_user_professor_id_88fc7072_fk_users_pro FOREIGN KEY (professor_id) REFERENCES public.users_professor(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.users_professor_user_permissions DROP CONSTRAINT users_professor_user_professor_id_88fc7072_fk_users_pro;
       public          renegado    false    254    3457    258            r           2606    71688 ^   wagtailcore_collectionviewrestriction wagtailcore_collecti_collection_id_761908ec_fk_wagtailco    FK CONSTRAINT     ?   ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction
    ADD CONSTRAINT wagtailcore_collecti_collection_id_761908ec_fk_wagtailco FOREIGN KEY (collection_id) REFERENCES public.wagtailcore_collection(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction DROP CONSTRAINT wagtailcore_collecti_collection_id_761908ec_fk_wagtailco;
       public          renegado    false    262    3479    264            s           2606    71693 l   wagtailcore_collectionviewrestriction_groups wagtailcore_collecti_collectionviewrestri_47320efd_fk_wagtailco    FK CONSTRAINT       ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction_groups
    ADD CONSTRAINT wagtailcore_collecti_collectionviewrestri_47320efd_fk_wagtailco FOREIGN KEY (collectionviewrestriction_id) REFERENCES public.wagtailcore_collectionviewrestriction(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction_groups DROP CONSTRAINT wagtailcore_collecti_collectionviewrestri_47320efd_fk_wagtailco;
       public          renegado    false    264    3482    265            t           2606    71698 `   wagtailcore_collectionviewrestriction_groups wagtailcore_collecti_group_id_1823f2a3_fk_auth_grou    FK CONSTRAINT     ?   ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction_groups
    ADD CONSTRAINT wagtailcore_collecti_group_id_1823f2a3_fk_auth_grou FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction_groups DROP CONSTRAINT wagtailcore_collecti_group_id_1823f2a3_fk_auth_grou;
       public          renegado    false    265    204    3351            u           2606    71703 O   wagtailcore_comment wagtailcore_comment_page_id_108444b5_fk_wagtailcore_page_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.wagtailcore_comment
    ADD CONSTRAINT wagtailcore_comment_page_id_108444b5_fk_wagtailcore_page_id FOREIGN KEY (page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.wagtailcore_comment DROP CONSTRAINT wagtailcore_comment_page_id_108444b5_fk_wagtailcore_page_id;
       public          renegado    false    281    3536    268            v           2606    71708 L   wagtailcore_comment wagtailcore_comment_resolved_by_id_a282aa0e_fk_users_pro    FK CONSTRAINT     ?   ALTER TABLE ONLY public.wagtailcore_comment
    ADD CONSTRAINT wagtailcore_comment_resolved_by_id_a282aa0e_fk_users_pro FOREIGN KEY (resolved_by_id) REFERENCES public.users_professor(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.wagtailcore_comment DROP CONSTRAINT wagtailcore_comment_resolved_by_id_a282aa0e_fk_users_pro;
       public          renegado    false    268    254    3457            w           2606    71713 Q   wagtailcore_comment wagtailcore_comment_revision_created_id_1d058279_fk_wagtailco    FK CONSTRAINT     ?   ALTER TABLE ONLY public.wagtailcore_comment
    ADD CONSTRAINT wagtailcore_comment_revision_created_id_1d058279_fk_wagtailco FOREIGN KEY (revision_created_id) REFERENCES public.wagtailcore_pagerevision(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.wagtailcore_comment DROP CONSTRAINT wagtailcore_comment_revision_created_id_1d058279_fk_wagtailco;
       public          renegado    false    268    285    3554            x           2606    71718 N   wagtailcore_comment wagtailcore_comment_user_id_0c577ca6_fk_users_professor_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.wagtailcore_comment
    ADD CONSTRAINT wagtailcore_comment_user_id_0c577ca6_fk_users_professor_id FOREIGN KEY (user_id) REFERENCES public.users_professor(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.wagtailcore_comment DROP CONSTRAINT wagtailcore_comment_user_id_0c577ca6_fk_users_professor_id;
       public          renegado    false    3457    268    254            y           2606    71723 N   wagtailcore_commentreply wagtailcore_commentr_comment_id_afc7e027_fk_wagtailco    FK CONSTRAINT     ?   ALTER TABLE ONLY public.wagtailcore_commentreply
    ADD CONSTRAINT wagtailcore_commentr_comment_id_afc7e027_fk_wagtailco FOREIGN KEY (comment_id) REFERENCES public.wagtailcore_comment(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.wagtailcore_commentreply DROP CONSTRAINT wagtailcore_commentr_comment_id_afc7e027_fk_wagtailco;
       public          renegado    false    3491    270    268            z           2606    71728 X   wagtailcore_commentreply wagtailcore_commentreply_user_id_d0b3b9c3_fk_users_professor_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.wagtailcore_commentreply
    ADD CONSTRAINT wagtailcore_commentreply_user_id_d0b3b9c3_fk_users_professor_id FOREIGN KEY (user_id) REFERENCES public.users_professor(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.wagtailcore_commentreply DROP CONSTRAINT wagtailcore_commentreply_user_id_d0b3b9c3_fk_users_professor_id;
       public          renegado    false    3457    270    254            |           2606    71733 X   wagtailcore_groupapprovaltask_groups wagtailcore_groupapp_group_id_2e64b61f_fk_auth_grou    FK CONSTRAINT     ?   ALTER TABLE ONLY public.wagtailcore_groupapprovaltask_groups
    ADD CONSTRAINT wagtailcore_groupapp_group_id_2e64b61f_fk_auth_grou FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.wagtailcore_groupapprovaltask_groups DROP CONSTRAINT wagtailcore_groupapp_group_id_2e64b61f_fk_auth_grou;
       public          renegado    false    273    3351    204            }           2606    71738 d   wagtailcore_groupapprovaltask_groups wagtailcore_groupapp_groupapprovaltask_id_9a9255ea_fk_wagtailco    FK CONSTRAINT       ALTER TABLE ONLY public.wagtailcore_groupapprovaltask_groups
    ADD CONSTRAINT wagtailcore_groupapp_groupapprovaltask_id_9a9255ea_fk_wagtailco FOREIGN KEY (groupapprovaltask_id) REFERENCES public.wagtailcore_groupapprovaltask(task_ptr_id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.wagtailcore_groupapprovaltask_groups DROP CONSTRAINT wagtailcore_groupapp_groupapprovaltask_id_9a9255ea_fk_wagtailco;
       public          renegado    false    3500    273    272            {           2606    71743 T   wagtailcore_groupapprovaltask wagtailcore_groupapp_task_ptr_id_cfe58781_fk_wagtailco    FK CONSTRAINT     ?   ALTER TABLE ONLY public.wagtailcore_groupapprovaltask
    ADD CONSTRAINT wagtailcore_groupapp_task_ptr_id_cfe58781_fk_wagtailco FOREIGN KEY (task_ptr_id) REFERENCES public.wagtailcore_task(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.wagtailcore_groupapprovaltask DROP CONSTRAINT wagtailcore_groupapp_task_ptr_id_cfe58781_fk_wagtailco;
       public          renegado    false    272    3581    295            ~           2606    71748 ^   wagtailcore_groupcollectionpermission wagtailcore_groupcol_collection_id_5423575a_fk_wagtailco    FK CONSTRAINT     ?   ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission
    ADD CONSTRAINT wagtailcore_groupcol_collection_id_5423575a_fk_wagtailco FOREIGN KEY (collection_id) REFERENCES public.wagtailcore_collection(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission DROP CONSTRAINT wagtailcore_groupcol_collection_id_5423575a_fk_wagtailco;
       public          renegado    false    3479    275    262                       2606    71753 Y   wagtailcore_groupcollectionpermission wagtailcore_groupcol_group_id_05d61460_fk_auth_grou    FK CONSTRAINT     ?   ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission
    ADD CONSTRAINT wagtailcore_groupcol_group_id_05d61460_fk_auth_grou FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission DROP CONSTRAINT wagtailcore_groupcol_group_id_05d61460_fk_auth_grou;
       public          renegado    false    275    204    3351            ?           2606    71758 ^   wagtailcore_groupcollectionpermission wagtailcore_groupcol_permission_id_1b626275_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission
    ADD CONSTRAINT wagtailcore_groupcol_permission_id_1b626275_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission DROP CONSTRAINT wagtailcore_groupcol_permission_id_1b626275_fk_auth_perm;
       public          renegado    false    275    3362    208            ?           2606    71763 S   wagtailcore_grouppagepermission wagtailcore_grouppag_group_id_fc07e671_fk_auth_grou    FK CONSTRAINT     ?   ALTER TABLE ONLY public.wagtailcore_grouppagepermission
    ADD CONSTRAINT wagtailcore_grouppag_group_id_fc07e671_fk_auth_grou FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.wagtailcore_grouppagepermission DROP CONSTRAINT wagtailcore_grouppag_group_id_fc07e671_fk_auth_grou;
       public          renegado    false    204    277    3351            ?           2606    71768 R   wagtailcore_grouppagepermission wagtailcore_grouppag_page_id_710b114a_fk_wagtailco    FK CONSTRAINT     ?   ALTER TABLE ONLY public.wagtailcore_grouppagepermission
    ADD CONSTRAINT wagtailcore_grouppag_page_id_710b114a_fk_wagtailco FOREIGN KEY (page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.wagtailcore_grouppagepermission DROP CONSTRAINT wagtailcore_grouppag_page_id_710b114a_fk_wagtailco;
       public          renegado    false    281    3536    277            ?           2606    71773 M   wagtailcore_page wagtailcore_page_alias_of_id_12945502_fk_wagtailcore_page_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_alias_of_id_12945502_fk_wagtailcore_page_id FOREIGN KEY (alias_of_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.wagtailcore_page DROP CONSTRAINT wagtailcore_page_alias_of_id_12945502_fk_wagtailcore_page_id;
       public          renegado    false    3536    281    281            ?           2606    71778 G   wagtailcore_page wagtailcore_page_content_type_id_c28424df_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_content_type_id_c28424df_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.wagtailcore_page DROP CONSTRAINT wagtailcore_page_content_type_id_c28424df_fk_django_co;
       public          renegado    false    231    281    3400            ?           2606    71783 H   wagtailcore_page wagtailcore_page_live_revision_id_930bd822_fk_wagtailco    FK CONSTRAINT     ?   ALTER TABLE ONLY public.wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_live_revision_id_930bd822_fk_wagtailco FOREIGN KEY (live_revision_id) REFERENCES public.wagtailcore_pagerevision(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.wagtailcore_page DROP CONSTRAINT wagtailcore_page_live_revision_id_930bd822_fk_wagtailco;
       public          renegado    false    281    285    3554            ?           2606    71788 M   wagtailcore_page wagtailcore_page_locale_id_3c7e30a6_fk_wagtailcore_locale_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_locale_id_3c7e30a6_fk_wagtailcore_locale_id FOREIGN KEY (locale_id) REFERENCES public.wagtailcore_locale(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.wagtailcore_page DROP CONSTRAINT wagtailcore_page_locale_id_3c7e30a6_fk_wagtailcore_locale_id;
       public          renegado    false    3524    279    281            ?           2606    71793 M   wagtailcore_page wagtailcore_page_locked_by_id_bcb86245_fk_users_professor_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_locked_by_id_bcb86245_fk_users_professor_id FOREIGN KEY (locked_by_id) REFERENCES public.users_professor(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.wagtailcore_page DROP CONSTRAINT wagtailcore_page_locked_by_id_bcb86245_fk_users_professor_id;
       public          renegado    false    3457    254    281            ?           2606    71798 I   wagtailcore_page wagtailcore_page_owner_id_fbf7c332_fk_users_professor_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_owner_id_fbf7c332_fk_users_professor_id FOREIGN KEY (owner_id) REFERENCES public.users_professor(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.wagtailcore_page DROP CONSTRAINT wagtailcore_page_owner_id_fbf7c332_fk_users_professor_id;
       public          renegado    false    281    254    3457            ?           2606    71803 S   wagtailcore_pagelogentry wagtailcore_pageloge_content_type_id_74e7708a_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.wagtailcore_pagelogentry
    ADD CONSTRAINT wagtailcore_pageloge_content_type_id_74e7708a_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.wagtailcore_pagelogentry DROP CONSTRAINT wagtailcore_pageloge_content_type_id_74e7708a_fk_django_co;
       public          renegado    false    283    231    3400            ?           2606    71808 K   wagtailcore_pagerevision wagtailcore_pagerevi_page_id_d421cc1d_fk_wagtailco    FK CONSTRAINT     ?   ALTER TABLE ONLY public.wagtailcore_pagerevision
    ADD CONSTRAINT wagtailcore_pagerevi_page_id_d421cc1d_fk_wagtailco FOREIGN KEY (page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.wagtailcore_pagerevision DROP CONSTRAINT wagtailcore_pagerevi_page_id_d421cc1d_fk_wagtailco;
       public          renegado    false    281    3536    285            ?           2606    71813 X   wagtailcore_pagerevision wagtailcore_pagerevision_user_id_2409d2f4_fk_users_professor_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.wagtailcore_pagerevision
    ADD CONSTRAINT wagtailcore_pagerevision_user_id_2409d2f4_fk_users_professor_id FOREIGN KEY (user_id) REFERENCES public.users_professor(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.wagtailcore_pagerevision DROP CONSTRAINT wagtailcore_pagerevision_user_id_2409d2f4_fk_users_professor_id;
       public          renegado    false    3457    254    285            ?           2606    71818 O   wagtailcore_pagesubscription wagtailcore_pagesubs_page_id_a085e7a6_fk_wagtailco    FK CONSTRAINT     ?   ALTER TABLE ONLY public.wagtailcore_pagesubscription
    ADD CONSTRAINT wagtailcore_pagesubs_page_id_a085e7a6_fk_wagtailco FOREIGN KEY (page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.wagtailcore_pagesubscription DROP CONSTRAINT wagtailcore_pagesubs_page_id_a085e7a6_fk_wagtailco;
       public          renegado    false    287    3536    281            ?           2606    71823 O   wagtailcore_pagesubscription wagtailcore_pagesubs_user_id_89d7def9_fk_users_pro    FK CONSTRAINT     ?   ALTER TABLE ONLY public.wagtailcore_pagesubscription
    ADD CONSTRAINT wagtailcore_pagesubs_user_id_89d7def9_fk_users_pro FOREIGN KEY (user_id) REFERENCES public.users_professor(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.wagtailcore_pagesubscription DROP CONSTRAINT wagtailcore_pagesubs_user_id_89d7def9_fk_users_pro;
       public          renegado    false    3457    254    287            ?           2606    71828 Z   wagtailcore_pageviewrestriction_groups wagtailcore_pageview_group_id_6460f223_fk_auth_grou    FK CONSTRAINT     ?   ALTER TABLE ONLY public.wagtailcore_pageviewrestriction_groups
    ADD CONSTRAINT wagtailcore_pageview_group_id_6460f223_fk_auth_grou FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.wagtailcore_pageviewrestriction_groups DROP CONSTRAINT wagtailcore_pageview_group_id_6460f223_fk_auth_grou;
       public          renegado    false    3351    204    290            ?           2606    71833 R   wagtailcore_pageviewrestriction wagtailcore_pageview_page_id_15a8bea6_fk_wagtailco    FK CONSTRAINT     ?   ALTER TABLE ONLY public.wagtailcore_pageviewrestriction
    ADD CONSTRAINT wagtailcore_pageview_page_id_15a8bea6_fk_wagtailco FOREIGN KEY (page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.wagtailcore_pageviewrestriction DROP CONSTRAINT wagtailcore_pageview_page_id_15a8bea6_fk_wagtailco;
       public          renegado    false    3536    281    289            ?           2606    71838 f   wagtailcore_pageviewrestriction_groups wagtailcore_pageview_pageviewrestriction__f147a99a_fk_wagtailco    FK CONSTRAINT       ALTER TABLE ONLY public.wagtailcore_pageviewrestriction_groups
    ADD CONSTRAINT wagtailcore_pageview_pageviewrestriction__f147a99a_fk_wagtailco FOREIGN KEY (pageviewrestriction_id) REFERENCES public.wagtailcore_pageviewrestriction(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.wagtailcore_pageviewrestriction_groups DROP CONSTRAINT wagtailcore_pageview_pageviewrestriction__f147a99a_fk_wagtailco;
       public          renegado    false    3565    289    290            ?           2606    71843 N   wagtailcore_site wagtailcore_site_root_page_id_e02fb95c_fk_wagtailcore_page_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.wagtailcore_site
    ADD CONSTRAINT wagtailcore_site_root_page_id_e02fb95c_fk_wagtailcore_page_id FOREIGN KEY (root_page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.wagtailcore_site DROP CONSTRAINT wagtailcore_site_root_page_id_e02fb95c_fk_wagtailcore_page_id;
       public          renegado    false    3536    281    293            ?           2606    71848 G   wagtailcore_task wagtailcore_task_content_type_id_249ab8ba_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.wagtailcore_task
    ADD CONSTRAINT wagtailcore_task_content_type_id_249ab8ba_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.wagtailcore_task DROP CONSTRAINT wagtailcore_task_content_type_id_249ab8ba_fk_django_co;
       public          renegado    false    3400    231    295            ?           2606    71853 P   wagtailcore_taskstate wagtailcore_taskstat_content_type_id_0a758fdc_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.wagtailcore_taskstate
    ADD CONSTRAINT wagtailcore_taskstat_content_type_id_0a758fdc_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.wagtailcore_taskstate DROP CONSTRAINT wagtailcore_taskstat_content_type_id_0a758fdc_fk_django_co;
       public          renegado    false    3400    297    231            ?           2606    71858 O   wagtailcore_taskstate wagtailcore_taskstat_finished_by_id_13f98229_fk_users_pro    FK CONSTRAINT     ?   ALTER TABLE ONLY public.wagtailcore_taskstate
    ADD CONSTRAINT wagtailcore_taskstat_finished_by_id_13f98229_fk_users_pro FOREIGN KEY (finished_by_id) REFERENCES public.users_professor(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.wagtailcore_taskstate DROP CONSTRAINT wagtailcore_taskstat_finished_by_id_13f98229_fk_users_pro;
       public          renegado    false    297    254    3457            ?           2606    71863 Q   wagtailcore_taskstate wagtailcore_taskstat_page_revision_id_9f52c88e_fk_wagtailco    FK CONSTRAINT     ?   ALTER TABLE ONLY public.wagtailcore_taskstate
    ADD CONSTRAINT wagtailcore_taskstat_page_revision_id_9f52c88e_fk_wagtailco FOREIGN KEY (page_revision_id) REFERENCES public.wagtailcore_pagerevision(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.wagtailcore_taskstate DROP CONSTRAINT wagtailcore_taskstat_page_revision_id_9f52c88e_fk_wagtailco;
       public          renegado    false    3554    297    285            ?           2606    71868 R   wagtailcore_taskstate wagtailcore_taskstat_workflow_state_id_9239a775_fk_wagtailco    FK CONSTRAINT     ?   ALTER TABLE ONLY public.wagtailcore_taskstate
    ADD CONSTRAINT wagtailcore_taskstat_workflow_state_id_9239a775_fk_wagtailco FOREIGN KEY (workflow_state_id) REFERENCES public.wagtailcore_workflowstate(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.wagtailcore_taskstate DROP CONSTRAINT wagtailcore_taskstat_workflow_state_id_9239a775_fk_wagtailco;
       public          renegado    false    302    297    3599            ?           2606    71873 S   wagtailcore_taskstate wagtailcore_taskstate_task_id_c3677c34_fk_wagtailcore_task_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.wagtailcore_taskstate
    ADD CONSTRAINT wagtailcore_taskstate_task_id_c3677c34_fk_wagtailcore_task_id FOREIGN KEY (task_id) REFERENCES public.wagtailcore_task(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.wagtailcore_taskstate DROP CONSTRAINT wagtailcore_taskstate_task_id_c3677c34_fk_wagtailcore_task_id;
       public          renegado    false    295    297    3581            ?           2606    71878 Y   wagtailcore_workflowstate wagtailcore_workflow_current_task_state_i_3a1a0632_fk_wagtailco    FK CONSTRAINT     ?   ALTER TABLE ONLY public.wagtailcore_workflowstate
    ADD CONSTRAINT wagtailcore_workflow_current_task_state_i_3a1a0632_fk_wagtailco FOREIGN KEY (current_task_state_id) REFERENCES public.wagtailcore_taskstate(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.wagtailcore_workflowstate DROP CONSTRAINT wagtailcore_workflow_current_task_state_i_3a1a0632_fk_wagtailco;
       public          renegado    false    297    302    3586            ?           2606    71883 L   wagtailcore_workflowstate wagtailcore_workflow_page_id_6c962862_fk_wagtailco    FK CONSTRAINT     ?   ALTER TABLE ONLY public.wagtailcore_workflowstate
    ADD CONSTRAINT wagtailcore_workflow_page_id_6c962862_fk_wagtailco FOREIGN KEY (page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.wagtailcore_workflowstate DROP CONSTRAINT wagtailcore_workflow_page_id_6c962862_fk_wagtailco;
       public          renegado    false    281    302    3536            ?           2606    71888 K   wagtailcore_workflowpage wagtailcore_workflow_page_id_81e7bab6_fk_wagtailco    FK CONSTRAINT     ?   ALTER TABLE ONLY public.wagtailcore_workflowpage
    ADD CONSTRAINT wagtailcore_workflow_page_id_81e7bab6_fk_wagtailco FOREIGN KEY (page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.wagtailcore_workflowpage DROP CONSTRAINT wagtailcore_workflow_page_id_81e7bab6_fk_wagtailco;
       public          renegado    false    281    301    3536            ?           2606    71893 T   wagtailcore_workflowstate wagtailcore_workflow_requested_by_id_4090bca3_fk_users_pro    FK CONSTRAINT     ?   ALTER TABLE ONLY public.wagtailcore_workflowstate
    ADD CONSTRAINT wagtailcore_workflow_requested_by_id_4090bca3_fk_users_pro FOREIGN KEY (requested_by_id) REFERENCES public.users_professor(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.wagtailcore_workflowstate DROP CONSTRAINT wagtailcore_workflow_requested_by_id_4090bca3_fk_users_pro;
       public          renegado    false    254    302    3457            ?           2606    71898 K   wagtailcore_workflowtask wagtailcore_workflow_task_id_ce7716fe_fk_wagtailco    FK CONSTRAINT     ?   ALTER TABLE ONLY public.wagtailcore_workflowtask
    ADD CONSTRAINT wagtailcore_workflow_task_id_ce7716fe_fk_wagtailco FOREIGN KEY (task_id) REFERENCES public.wagtailcore_task(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.wagtailcore_workflowtask DROP CONSTRAINT wagtailcore_workflow_task_id_ce7716fe_fk_wagtailco;
       public          renegado    false    295    304    3581            ?           2606    71903 P   wagtailcore_workflowstate wagtailcore_workflow_workflow_id_1f18378f_fk_wagtailco    FK CONSTRAINT     ?   ALTER TABLE ONLY public.wagtailcore_workflowstate
    ADD CONSTRAINT wagtailcore_workflow_workflow_id_1f18378f_fk_wagtailco FOREIGN KEY (workflow_id) REFERENCES public.wagtailcore_workflow(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.wagtailcore_workflowstate DROP CONSTRAINT wagtailcore_workflow_workflow_id_1f18378f_fk_wagtailco;
       public          renegado    false    299    3590    302            ?           2606    71908 O   wagtailcore_workflowpage wagtailcore_workflow_workflow_id_56f56ff6_fk_wagtailco    FK CONSTRAINT     ?   ALTER TABLE ONLY public.wagtailcore_workflowpage
    ADD CONSTRAINT wagtailcore_workflow_workflow_id_56f56ff6_fk_wagtailco FOREIGN KEY (workflow_id) REFERENCES public.wagtailcore_workflow(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.wagtailcore_workflowpage DROP CONSTRAINT wagtailcore_workflow_workflow_id_56f56ff6_fk_wagtailco;
       public          renegado    false    301    3590    299            ?           2606    71913 O   wagtailcore_workflowtask wagtailcore_workflow_workflow_id_b9717175_fk_wagtailco    FK CONSTRAINT     ?   ALTER TABLE ONLY public.wagtailcore_workflowtask
    ADD CONSTRAINT wagtailcore_workflow_workflow_id_b9717175_fk_wagtailco FOREIGN KEY (workflow_id) REFERENCES public.wagtailcore_workflow(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.wagtailcore_workflowtask DROP CONSTRAINT wagtailcore_workflow_workflow_id_b9717175_fk_wagtailco;
       public          renegado    false    299    304    3590            ?           2606    71918 M   wagtaildocs_document wagtaildocs_document_collection_id_23881625_fk_wagtailco    FK CONSTRAINT     ?   ALTER TABLE ONLY public.wagtaildocs_document
    ADD CONSTRAINT wagtaildocs_document_collection_id_23881625_fk_wagtailco FOREIGN KEY (collection_id) REFERENCES public.wagtailcore_collection(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.wagtaildocs_document DROP CONSTRAINT wagtaildocs_document_collection_id_23881625_fk_wagtailco;
       public          renegado    false    306    262    3479            ?           2606    71923 S   wagtaildocs_document wagtaildocs_document_uploaded_by_user_id_17258b41_fk_users_pro    FK CONSTRAINT     ?   ALTER TABLE ONLY public.wagtaildocs_document
    ADD CONSTRAINT wagtaildocs_document_uploaded_by_user_id_17258b41_fk_users_pro FOREIGN KEY (uploaded_by_user_id) REFERENCES public.users_professor(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.wagtaildocs_document DROP CONSTRAINT wagtaildocs_document_uploaded_by_user_id_17258b41_fk_users_pro;
       public          renegado    false    254    3457    306            ?           2606    71928 [   wagtaildocs_uploadeddocument wagtaildocs_uploaded_uploaded_by_user_id_8dd61a73_fk_users_pro    FK CONSTRAINT     ?   ALTER TABLE ONLY public.wagtaildocs_uploadeddocument
    ADD CONSTRAINT wagtaildocs_uploaded_uploaded_by_user_id_8dd61a73_fk_users_pro FOREIGN KEY (uploaded_by_user_id) REFERENCES public.users_professor(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.wagtaildocs_uploadeddocument DROP CONSTRAINT wagtaildocs_uploaded_uploaded_by_user_id_8dd61a73_fk_users_pro;
       public          renegado    false    254    308    3457            ?           2606    71933 N   wagtailforms_formsubmission wagtailforms_formsub_page_id_e48e93e7_fk_wagtailco    FK CONSTRAINT     ?   ALTER TABLE ONLY public.wagtailforms_formsubmission
    ADD CONSTRAINT wagtailforms_formsub_page_id_e48e93e7_fk_wagtailco FOREIGN KEY (page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.wagtailforms_formsubmission DROP CONSTRAINT wagtailforms_formsub_page_id_e48e93e7_fk_wagtailco;
       public          renegado    false    312    3536    281            ?           2606    71938 K   wagtailimages_image wagtailimages_image_collection_id_c2f8af7e_fk_wagtailco    FK CONSTRAINT     ?   ALTER TABLE ONLY public.wagtailimages_image
    ADD CONSTRAINT wagtailimages_image_collection_id_c2f8af7e_fk_wagtailco FOREIGN KEY (collection_id) REFERENCES public.wagtailcore_collection(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.wagtailimages_image DROP CONSTRAINT wagtailimages_image_collection_id_c2f8af7e_fk_wagtailco;
       public          renegado    false    262    3479    314            ?           2606    71943 Q   wagtailimages_image wagtailimages_image_uploaded_by_user_id_5d73dc75_fk_users_pro    FK CONSTRAINT     ?   ALTER TABLE ONLY public.wagtailimages_image
    ADD CONSTRAINT wagtailimages_image_uploaded_by_user_id_5d73dc75_fk_users_pro FOREIGN KEY (uploaded_by_user_id) REFERENCES public.users_professor(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.wagtailimages_image DROP CONSTRAINT wagtailimages_image_uploaded_by_user_id_5d73dc75_fk_users_pro;
       public          renegado    false    314    254    3457            ?           2606    71948 K   wagtailimages_rendition wagtailimages_rendit_image_id_3e1fd774_fk_wagtailim    FK CONSTRAINT     ?   ALTER TABLE ONLY public.wagtailimages_rendition
    ADD CONSTRAINT wagtailimages_rendit_image_id_3e1fd774_fk_wagtailim FOREIGN KEY (image_id) REFERENCES public.wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.wagtailimages_rendition DROP CONSTRAINT wagtailimages_rendit_image_id_3e1fd774_fk_wagtailim;
       public          renegado    false    316    3626    314            ?           2606    71953 Z   wagtailimages_uploadedimage wagtailimages_upload_uploaded_by_user_id_85921689_fk_users_pro    FK CONSTRAINT     ?   ALTER TABLE ONLY public.wagtailimages_uploadedimage
    ADD CONSTRAINT wagtailimages_upload_uploaded_by_user_id_85921689_fk_users_pro FOREIGN KEY (uploaded_by_user_id) REFERENCES public.users_professor(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.wagtailimages_uploadedimage DROP CONSTRAINT wagtailimages_upload_uploaded_by_user_id_85921689_fk_users_pro;
       public          renegado    false    318    254    3457            ?           2606    71958 U   wagtailredirects_redirect wagtailredirects_red_redirect_page_id_b5728a8f_fk_wagtailco    FK CONSTRAINT     ?   ALTER TABLE ONLY public.wagtailredirects_redirect
    ADD CONSTRAINT wagtailredirects_red_redirect_page_id_b5728a8f_fk_wagtailco FOREIGN KEY (redirect_page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.wagtailredirects_redirect DROP CONSTRAINT wagtailredirects_red_redirect_page_id_b5728a8f_fk_wagtailco;
       public          renegado    false    3536    281    320            ?           2606    71963 L   wagtailredirects_redirect wagtailredirects_red_site_id_780a0e1e_fk_wagtailco    FK CONSTRAINT     ?   ALTER TABLE ONLY public.wagtailredirects_redirect
    ADD CONSTRAINT wagtailredirects_red_site_id_780a0e1e_fk_wagtailco FOREIGN KEY (site_id) REFERENCES public.wagtailcore_site(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.wagtailredirects_redirect DROP CONSTRAINT wagtailredirects_red_site_id_780a0e1e_fk_wagtailco;
       public          renegado    false    293    3577    320            ?           2606    71968 L   wagtailsearch_editorspick wagtailsearch_editor_page_id_28cbc274_fk_wagtailco    FK CONSTRAINT     ?   ALTER TABLE ONLY public.wagtailsearch_editorspick
    ADD CONSTRAINT wagtailsearch_editor_page_id_28cbc274_fk_wagtailco FOREIGN KEY (page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.wagtailsearch_editorspick DROP CONSTRAINT wagtailsearch_editor_page_id_28cbc274_fk_wagtailco;
       public          renegado    false    281    322    3536            ?           2606    71973 M   wagtailsearch_editorspick wagtailsearch_editor_query_id_c6eee4a0_fk_wagtailse    FK CONSTRAINT     ?   ALTER TABLE ONLY public.wagtailsearch_editorspick
    ADD CONSTRAINT wagtailsearch_editor_query_id_c6eee4a0_fk_wagtailse FOREIGN KEY (query_id) REFERENCES public.wagtailsearch_query(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.wagtailsearch_editorspick DROP CONSTRAINT wagtailsearch_editor_query_id_c6eee4a0_fk_wagtailse;
       public          renegado    false    3651    324    322            ?           2606    71978 P   wagtailsearch_querydailyhits wagtailsearch_queryd_query_id_2185994b_fk_wagtailse    FK CONSTRAINT     ?   ALTER TABLE ONLY public.wagtailsearch_querydailyhits
    ADD CONSTRAINT wagtailsearch_queryd_query_id_2185994b_fk_wagtailse FOREIGN KEY (query_id) REFERENCES public.wagtailsearch_query(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.wagtailsearch_querydailyhits DROP CONSTRAINT wagtailsearch_queryd_query_id_2185994b_fk_wagtailse;
       public          renegado    false    326    3651    324            ?           2606    71983 X   wagtailusers_userprofile wagtailusers_userprofile_user_id_59c92331_fk_users_professor_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.wagtailusers_userprofile
    ADD CONSTRAINT wagtailusers_userprofile_user_id_59c92331_fk_users_professor_id FOREIGN KEY (user_id) REFERENCES public.users_professor(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.wagtailusers_userprofile DROP CONSTRAINT wagtailusers_userprofile_user_id_59c92331_fk_users_professor_id;
       public          renegado    false    254    3457    328            0      x?????? ? ?      2      x?????? ? ?      4   +   x?3?(?OK-.?/?2?tI-H,*?M?+Q?HML?????? ?
?      6      x?????? ? ?      8   u	  x?}?ˮ?6???S?	?.?L??b?? ??V?5m[?/???^?X????????Y,?????????????9???z????z-??7???ړ????^???,??<?ŏe??×?zZ?-µ?;.???8?"\G?m?#϶?g?e>-E?l???=q7?Ĉn? +??Ї??Lx????o?͇?݋?ٸ?sYU?9?h??%c??O?ۺ|W?m@???&???bp???EѡA?Ƞ?=?C??	9?=??=?????m?bt???e5?)?%????? ???J,P????S???^??y??????}??e?1?!?Jm$ɐ???B?9JR???????,L?Ys?X?*?"k?Si?$??r??i$??/??u^
???=??Jv??X U?#??	???7(?????y1?f??5w??e?? ?8??????A??lfW?????Oe3iO?K?j??S???*?????d?????]??sz,[?? ??1?28?<? ߁?Sǌd?/?.ܟ??W??CK٪??(?k?V??i~? ??Yg?n?q??m??;?ָ??|1]?????J^W???#$?D????? I?? M.d=D|4??????u~?p?l??|???{????+?J|'?!?W+??????a??S??s?15??8d????di?N???E?i?^Y?c?8@?????V?ͻ?,??S???X? ???|?ݗ}?.?z?IĲ>HB???_ُ䞕eӮ짷)gE?l+?4?"?ﬨ??.???堪KF??DBUQ2?4*B????H?c?_????>??P?w?m??r?#?p\?L׉T?QE2,???I`'?׻????M??堷??????Q?m??n q????JV?r???ڿ??C9?? 2E?Z??!;??r?3B??B_?徳???l?j???m?T?jm?49S?*c?TX?1?<#<???;?qt?$?????̵?p??jhN??&?F???r܉???sB?	$2?`>;???=???qu??z?E@?4?U `X??: 6,??N?????\?ߧ?䣩G5I|Ư?S$??????NPESê&31A?f?RJ?~-?E?????t???̐*?"?AQ?sĀ???ؖ?/?z???m}>?f/?????i5Us*4
?JȜͣ?eN&?Hʧ?<???W?xR7_?xB?N"?>?????_??^YV????9dw[??Jj??i??ˈ?j{?'??!?"|;E????\?Yy?W??Y??V???Lp???xF? ?4u<GJ??FϚR????QP?z<???7M???A?wIP9=??'1憀X?!?(?? !?T.??>???????T??????!?Z?????G`}3?/|??dwCC?;?'"??Z֚??"???8?1^?ry?h???S??^j????L%x;փ7?e?????6?.?o?:???g?8??C4?I??U>?c%I?W?s$;\?4?pM.???EI?%??9????ٿM??<??7?Q?????T????????i?=??]?S?????F?ѝ??wLC??l0ʤT?????????h????*rdPU=%??B?@?YL?Ưn5?7s??6???_K????*y)ֆH?jB^?? RC	?ke?ke/+?O?h??J?
?_?v*?&?Uj???h?X?4ըicE?d????
????riQ(??s?4Q ???
?c????v?.??mT,4?S6-?"??a??H+??HYe??:???`w?N;sB6????8??????m J?Z5EG	-	[3H?8o??l??????TI?<L?}??e?`??|12?????ZzzW?G?Do?@??0??;7???ʠz??ޜ??3󦽝?G;???f?.cR?*k??_?h׬??? ?u?>^???zs??v???F5%)!??v?'?k!?#m%t?9????T???8?.????????=6?o?}7?lg???d/p?˥????4?C??Ő?c?y?'??l"?v???VLJFWQ)?jQ??0?z?ZW`CQl?eH???3?
:??C@???4?y??>+?Sq<+?g#????Υ??|?n???{??ַ]­??`?DvL????i????m)????k?M??????	X+B?B?:k???𓘅>??~?@???*?v?A??Ï?_?F?^ n?܍C?˭F?/??o5j}???j?x?Ā?j?p??\??????(????1??fh?4A??Gi??H4?k ??E?(?k!ŏQf??????*}7J(?atSO,Š?Z?)??^???c?)??8?a5???p?^f???W?o?F???$N?H????8?"?h'??ċ}??v^?c?????"}??舜j?E?U:"???h?#?
?AJ???u1?
brMFW}?HUl????N?*FV7E)Z??+??SY??? ?      :      x?3?????? h ?      ;      x?3?qr?????? G?      =   ;   x?3????KI??4?44?4 CCN#NC.#??Ԕ??b,?F\ƜnE?K$	c?=... ???      ?   S   x?3?t666?t??-(-I-R(?O/J????K?4?2J?r?$?$*?%&???%?:???\??3?RS? ?b???? ߠ?      A      x?3?????? ? ?      B   "   x?3?t???IMOU?OSN?L?KN?????? m?w      D   :   x?3?tJL?H??/JQ?OSN?L?KNU??Sp??-(-I-??q:;sB W? j??      F       x?3?t??-(-I-R.)M??4?????? _N?      H   1   x?3?4?t
v?5t?4?2?4???@<cNc??3?4??L@?=... V?
?      J      x?3?????? o ?      K      x???????? ? ?      L      x???????? ? ?      M      x?????? ? ?      O   7  x?uTAڣ ]???'(???l???)??No?j???{!??	g?Fel?<?A?b?ލ????FnPμҝ?Y?P͠vM`d??r?MG?K?l????y8??
?L???}?\????C??^d ????D???7WԣE??5n?5?Z?t?? ????@)?????T???|^O^???xrM??_*?>1Ռ6>?2M?f??Kg?{?O%?b;?тx???|X???3!Lw?z??S?w ޣ???:???x?2?n???(D???8L??~?@?d???&?]???pV?8?t@??+?;?BY??????? %?jx???~?A)6??x7?+7????c??d???*$??P????????|?eU?Rl?\????BTTXU??????u??.?:$v?$ܪ??RU?i?u-ɀ?V?;d]?H>U?u?.????E?=?7!}?ƛ!??:?????iY,??????????I???l1Yf(M??j????s ?.????t(??uF????zc?H?Tz>5M4?<?q?z1?S?"?Ăk??s?ʃ?ا?j?KEw?~?????!?      Q   c  x????r????????SQ5zo?˩b?%sL?.N<O?5?snR?|????????????ew ?@Vݪ???%~??/?޸|c???D???teI???6_e~???d??Z?Q?k?P??????0???,h??}?f???V]W57???5???????+???0?,JL(PC??׼?_R???X??(|I???4??K#????IM?D?y?gus?pcC?>??j!z?H????????Sf?,?0??????B???:?}?vY~:ee?6mv-?.???m)b???	??G?????+G??dV'????8?#
H@]?f???#????? ?p?#*?{???^????(!?????@??:W??m???????K?0??[?p?_[#??VjiE??????xst?ӵ???H?1?+?lB?У??1??	6?5?`Z0?b?!l?X?΋?Ǝs?_?⣩??c#Lθ???W~?q?EӖ???5a?]9??%-3??|Ü
w?????`?U??Ui??m^a?=yϾ?Vn??\?@y?????,??̵??Y??­p",?5^ܵ9??/`-?_???ҁ=s?ޞ#?????Pè????????ğ??@J??1Qg??>X??S9?.?PS̓?ߚ_??msu???R'FF????X|?7{??D?_7G??0?X:?u٧r??j???#????v?????^?@Qx_d?Z0N??1??????ԲN???????lڗ???H??w?0??????@6?-?J????*????,},Bh~Y,?R???8ii?A???? ?p?C[?_?{?vk?N??.P?X%?Fhy??Xr?]?V?~K~R(.x?X-?ݷޯUo?lk!?/?۩???f???X5`3+?2??$GI!?4x,J???5X)??Gk??yk?BV????2??2,4??G?E8U?X???uU??x??)?????????t?޳??#????M?%1?!?UA9&??.???V?ʻ1??@???U?D'!??XT?L??=M??OtG??@????U??w??O?%Q??c??|y?/??W?(?>??????r????B1L?nUb??Ɩ?υY3???X?%A?r?Q??ȣh??)Db???$b?g0_U?}???_????Z5.??X?K?}???]T??a?*'l?>cc?^f????Z???Xl??,l<?D1 ?_???k??qKز???%b09?8B4?xY?XLe]?/?h??:??K{)?w????|????ϑ+D?䐱?Y?ݺ????,#?tw cAp?7yj?3???7?Í ?h?? 8<h?C?????&&?=?.t?X?n?6??;????x_ܸj?M?B???????]PIiU%?=2???????J???bPƢ?Xx?????L?2N2??s>?F9?+?d?
??f5???ƊߖCu??$j?)?/3V׎r*??P?-?a?ר?e?M???g?[ٟ1%;]??9?i?$?b	2??-?FF?}g???ufzq?"?Hᠱ(,W4?+??$C0*ܭ???u?>????V?~?_??y]?kJ?*????[?????$ ?h;??C?.bS^?hយ*?\!?)?'h?H$S?lV??
??ݚ~C??0??X?n,?K˥*??朶7J?????W???e?lZ|_T?K?E???Zt??*prc߃Y?_?@?Bg?]k??C۽l),?18??????1??z?3??Sy??????L??????+??f?!??Ӻ??%??
kF$@??????|?W?CW????F3ҿ??>ؠ???C׉H??f??+?`?Ҵ=?ܗX???????K?~DH?ֶ??gy[tTS
?G??	??5??>I?????OX?$Y???l???r?vlC?.????.^??(PH?L??\,?Yf?n????hmn>?5??L????s<?s,an????ƨٜ?^?=?6 ?ө?|X#S7uR3S?[???+'s????l?????)?N?/ʬ?Գ҆?>q?셬,YX?5?aMu??`0k??Y?<??JmsmpWXK?M?K????se?.?A{(??#蘹C???6?w????9
??)????e00?x???s????U??[???El?V}?ĩ 0?Ѱ~C??&B8j?'b *??k????YS?b?a??c?D????Z?;Pr3:?O|h۬??`w?<\i?Gbs#$?^?TBH?l 1Zm?A????@ 6??V??? I??.}@c??)?g??P(?{4?hUy??!ES)?W????R|4v=O?;?Ʊ????l\W?A9???3&//??X???)3bC?7Vkc?Ki???а?ư]ZC?) ?????}?e#M(?%@?'??^??;???????\m_????R?&a???r???_??!????j?m"?????#?a?`K躹]????&?? ??ܴ??#??a?=O('۽??lT??????l?Q?DY???y?.j??????}7?š?#?-???6~??,A???y?8?{!????????/R?2???0g-?????I?VI??,??
1c?&?X1v
]ڱ۬??3???0?ˏ,F?H?9??Q????lc!Fi?!b?27ٷjh?b??g?5???l??2??y|8a??򮩆?)pk???v????c????ˁ?jƣ???A4???ꁯ???????sƶ|???|??v?毕?e??Kw??:?a?Q|?? ,???TH|?????w*?mY?,0?7??rk.?????ȵ@??i(????,V??Z?ǖl??4L??=??f????|??Z~??3h?g???(??pXkEPX??dl!Z???? ?\ȹ?%3p?,?v|??W???p28?<9?;?Л?ILcN6a)4i?/??#F??? ?x?????~?=N?@c?ȓ@?&^??1Α???~D??K??M0?bW?fG??\6O	H?k???x6?tϿ??????g8?yW?m??;?h??P??l???????4<ʬ1?X?ޝ?Z??*>? ?5?????3???????????C7?????y6??ۛhKU??0?]??x?im?YU?O9>??0O??}ǎ???7??&Ⱦ??
??b???c>?]E???OxUE?*???Sm??MX?<??عD??j,U?t ?GE???<?????Xm???Q?z?mnDL??ؙg?Q??/,?Sy?~?	0f?1?}?*??????@pdbU?d?/՝?&????{ɷ?(?kJBvU?????!wsF??҈ŷ?W_?} ??_??π?K??X<?`q?Y??B?_??	xq4F{?1??)*?(???\? ?VsS??[?H?7B?6?0!????F?),??7a???7?A????S????mO?W??1E?)2??7?????2?E?Y?S?g?
x??????~&??????dt?L      S   ?  x???ɮ?H?u?Sd??*??w0?<`??d1O?<??m???I+O?_?姣?'l????S?dCҹ???(I???Z'?/?`7]SE9??x2????Y??[ը?]?Uiu??X??9?A??
$?3??;???o@O???d,%7?LUӷsz??CK?7??X?????]@T?o?Dl?s?G?8?Q?{?!=31?7N?3P?1???`K0`?z??to	?)?<ט?mC??u??HQt.N?P?ϡ?t?2?/@? ??	+@jE???}$i^&AR?	?A4C??S?9??}?W>?z?m??ԒI??I?ѹ??t??ۜ??sx???sz????Mi:oQH??.?P*?x???-?Z?;??)C?C???J???l"eېy?>b?3)??,???)(???:?r??7k+U^?p????7|ܥq????,&?=?????$jo???	???B'?e????~???S?H-??G??????????1_ ' ??~?e|??L̸?&?k????i?c?u??˭Ӂ???yl?dFZ?T??Ͳ?"????[D?6?u?&?????r?V po?4?!3L?U??1??Sv	?%?zv??[,??D????Q????]S=??n?i?D?7i8j???M?????p?E??7_????"2??^	??g1MrE?9c& D?"ٳ*??B?oG偐?D???J' ??>?)?Z?d:_G?g??HH
͗?@둨N???6W?]???ǩʬ?ݍ9?<???G-c씍??r??.rCx?Bq<???^?g??t\?f???P???????U冚??!C???I|???>?D?jJ?????q?y?v?OG??h?F???dҕ~?~ŴK?r?ȼ??z?6?Ng?ӅĦ;oD{??Ӄ&???t?ﭻ?ⵏK?A?-?s?????Se???_e???D????^??p???)?H@?G?zvÊ??8Uv?S?μ?? wߌ??i??q??$???S?Ԉ??L??????&?̈́?n?y??B?G^?<?/?0??.??ӎ`vZ91??4(F??F2??zj???X?d?
?5s??cx??k87??t??9<GKI?u??}??]?{??;b?4?a????r=}????H???Ev]c-t??܏v$?~,?H??ݟ????? ?3?      T      x?3?L?H?-?I?K??Efs??qqq ?<	?      V      x?3?????? v ?      W      x?3?????? } ?      X   4   x?3?4202?L?,*.?,?4?4?2D2?4?2EJ?2?2B2?????? ۩E      Z      x?????? ? ?      \      x?????? ? ?      ^      x?????? ? ?      `      x?????? ? ?      b      x?????? ? ?      d      x?????? ? ?      f   ?  x???mo?0?_?O?ޱX>C?Ԕ?YAaiҒ6?4??B?C?N?????U?J??,?߾????h=%????M??Iьuv?۰???J+?????Y?????#9???m?r?\&?????W??U??o?
#b????8?t??-b??F????F?=yiW?
???8??~.?~??d?wy?,?g?J?ù?????C?"*ʢ~T????????p?]?j????|?kq3?v??E%?4,ù???>?+?Y?8??V??>8?????@ Q?/????O7U?}?6, 3J?????z(?s^OL?܌݃Wjm+C?G??M&?e?-??p????H??\Ei?p,??3^J0????_3Z??xI?f??E?V?????mf??	??B?޾NU?_T?p[???Eۡdݦ?)?V?7????      g      x?3?4?4?bN.c i????? "?      j      x?????? ? ?      l      x?????? ? ?      n      x?3?4000?4?4???/?????? )?      p      x?????? ? ?      q      x?????? ? ?      t      x?????? ? ?      v      x?????? ? ?      x      x?3?????? Z ?      y      x?????? ? ?      {      x?????? ? ?      }      x?????? ? ?            x?3?L??????? k?      ?   |  x???Mo?0??ʯ?}?KJ?W?ð?PC?]z?,?+?6E?bؿ?l]??iWĉmP?ć?Ky??t????/???l??C???C}????(q?;?????ƧX?9K?!<?w?~?_9$x??l=H??W??5???M?$@D[?vw?;???kG?????t???b?1:p?'`G?B>q&??PŲ???͔????ߏ?q??,?_o??^???Ȓ)Q?cʘ???!: uD?6x?r]N=EL??Y9o??????v???2??T?,ZE`?c?k^V??,??S?7???gŌ}aӣ)EQ??M??D?J??R??t?*?>?Kn??Hn{Q$'Z:????7-??Nag?j??;?"??j?N?j??L????????E8?!F)?????L???X8[?????????P?6
?N??[PHӱ?I`{^??b?u??}4?1XS??|??8+&S???Pݸ1???m'$????h?(??H?)???????R?????S.??k???4?1?i\?G?h???~%<?^??T??t?S3uM?rn
5?{?gyV??}?r?'?	?E??bJ@\???~H???[q????#?y????^9ٰS??T!;?Ü
6?am0?Lʤ?\???????i?C??6??_???      ?   X  x????o?0???Wx\?Z~???Ӵ?4?Щ?J%Nf??L????>??h!Mr???????3@MYT/???n???K?????嶤?u?Y?;63?q?DA?p??= E?I??` ?W?ɜ8??/<?~O???hK????|f??]?&?e̔?;?y<!"??\z?>???K?mY????qI??U^??t???gt?/??i??!ʭ??7>-?
٣"Tw??79\?9?P1!w????!]r\:??c2Q?Wo??ś?fB1???BNT??b??yQ<?9?????9?^?/<I}?? ?0?yIʁw^??1π3??U?Dd?aФMu??x;,e??J?2C???]??/?8u???֬?Ԧq?-???ۜo???(?o?۬???uծ???Fκ?4??????Ea??>??tiS7?.i?2??ۂ~????f?Lq???e?#??̺????%0????????0M?V7S?X3??6?~"????#儌KQ?A?QpU_zca>?F???)t?H??6?~????-(H??3???h???|??? V?>94o??????}]w?>?????,?08???/???߈U?A?^}b????J?      ?   ?  x???O??6?ϙO?ښ?kc?\U=T?????
l4 ??tT??מL6$q2?-???	^?5??=?lXd?	 ????5k<??a??kU???K??rU?nk/Wcp???iS???.??t???b{?5?l??U??g?i(c8?R?b??L?$?
) #??f؍ZT?*?? 7N޽\?~3EZ=?eW-?}??Q?}?=/??????l?u񈄶?7??Ӯ'?*??5?v=Qq??VegJ;?s?Ǝ?,?O??kzcﶪ?????"o?F??V????*Zףo?x???????{d?T??uZS??e???)???є??!?QM???i?&????36U?f??Fʾ(l??Y??/?C???8?z%χP?7m䨻????ؘOy??Ic#'}?{?{ª???Pe??]b?@?[??>????˂.???#/? ar?<? ?=?	{??T!L!BL'?$???8I???e?0?j:?˟????jc<?_??G\nG[ێ?????OL?o3?S??,?ԇ;?d?{?ǝ??]?4??`(???3?1?&?H?Ds`L?]?}X?=??6??b??ZN???~?y*?C?3??Ly  8s??t<Ω-??I?C?R?"??Y?bi?2???p???+??mB??z6&??-ڡ?Ȏ?d??d[??a%R?B?!??4?i"q?ir????Z?U??mOsg?????????g??8? ?3?C?P:??????f7QE?k??j??H?0a?"?BI???抻??n????g?%8???˹ȰP?˘??9N?$H?????Iͬ?&!ؚ??lL??&??7?yi?>???ٜ???:??9??]???.p?F????!?e?h ?m?? `?!?8??;?wM|+??W????8J??ݮ?W?Fe??V?>i ȑ?w???r <`???Q?(9??Ľr?7??mP??@q??o?K?/??|?[=_:g?c
6B.G	???;1?ʅ?(w<?!?????e.?      ?   0   x???  ?7W?	"??X??ǝϸ=sM^???8??xs??;$} }	      ?   *   x?3??4?L/?/-(?2??4???99MalNN;F??? k2]      ?   -   x???  ?wn???a?9??r?4t4?????'?+Ƿ??X?      ?   0   x?3???ON???/.??0?L?4?	PpKL.?)???OL?????? ?eM      ?   '   x?3???OI-J,?/*VH,((?/K??,?4?????? ??	J      ?      x?????? ? ?      ?   %   x?3???OI-J,?/*VH,((?/K??,?????? ??	      ?      x?3?4?????? ]      ?      x?????? ? ?      ?      x?3?4?4?4?????? ??      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?     