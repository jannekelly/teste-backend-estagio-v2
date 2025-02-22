PGDMP     ;                    y            test    13.3    13.3     B           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            C           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            D           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            E           1262    94252    test    DATABASE     Y   CREATE DATABASE test WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE test;
                postgres    false                        2615    94253 	   operation    SCHEMA        CREATE SCHEMA operation;
    DROP SCHEMA operation;
                postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                postgres    false            F           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   postgres    false    3            �            1259    94308 	   equipment    TABLE     y   CREATE TABLE operation.equipment (
    id uuid NOT NULL,
    equipment_model_id uuid NOT NULL,
    name text NOT NULL
);
     DROP TABLE operation.equipment;
    	   operation         heap    postgres    false    6            �            1259    94276    equipment_model    TABLE     Y   CREATE TABLE operation.equipment_model (
    id uuid NOT NULL,
    name text NOT NULL
);
 &   DROP TABLE operation.equipment_model;
    	   operation         heap    postgres    false    6            �            1259    94295 %   equipment_model_state_hourly_earnings    TABLE     �   CREATE TABLE operation.equipment_model_state_hourly_earnings (
    equipment_model_id uuid NOT NULL,
    equipment_state_id uuid NOT NULL,
    value real NOT NULL
);
 <   DROP TABLE operation.equipment_model_state_hourly_earnings;
    	   operation         heap    postgres    false    6            �            1259    94346    equipment_position_history    TABLE     �   CREATE TABLE operation.equipment_position_history (
    equipment_id uuid NOT NULL,
    date timestamp without time zone NOT NULL,
    lat real NOT NULL,
    lon real NOT NULL
);
 1   DROP TABLE operation.equipment_position_history;
    	   operation         heap    postgres    false    6            �            1259    94284    equipment_state    TABLE     r   CREATE TABLE operation.equipment_state (
    id uuid NOT NULL,
    name text NOT NULL,
    color text NOT NULL
);
 &   DROP TABLE operation.equipment_state;
    	   operation         heap    postgres    false    6            �            1259    94354    equipment_state_history    TABLE     �   CREATE TABLE operation.equipment_state_history (
    equipment_id uuid NOT NULL,
    date timestamp without time zone NOT NULL,
    equipment_state_id uuid NOT NULL
);
 .   DROP TABLE operation.equipment_state_history;
    	   operation         heap    postgres    false    6            =          0    94308 	   equipment 
   TABLE DATA           D   COPY operation.equipment (id, equipment_model_id, name) FROM stdin;
 	   operation          postgres    false    204            :          0    94276    equipment_model 
   TABLE DATA           6   COPY operation.equipment_model (id, name) FROM stdin;
 	   operation          postgres    false    201            <          0    94295 %   equipment_model_state_hourly_earnings 
   TABLE DATA           q   COPY operation.equipment_model_state_hourly_earnings (equipment_model_id, equipment_state_id, value) FROM stdin;
 	   operation          postgres    false    203            >          0    94346    equipment_position_history 
   TABLE DATA           U   COPY operation.equipment_position_history (equipment_id, date, lat, lon) FROM stdin;
 	   operation          postgres    false    205            ;          0    94284    equipment_state 
   TABLE DATA           =   COPY operation.equipment_state (id, name, color) FROM stdin;
 	   operation          postgres    false    202            ?          0    94354    equipment_state_history 
   TABLE DATA           \   COPY operation.equipment_state_history (equipment_id, date, equipment_state_id) FROM stdin;
 	   operation          postgres    false    206            �           2606    94283 $   equipment_model equipment_model_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY operation.equipment_model
    ADD CONSTRAINT equipment_model_pkey PRIMARY KEY (id);
 Q   ALTER TABLE ONLY operation.equipment_model DROP CONSTRAINT equipment_model_pkey;
    	   operation            postgres    false    201            �           2606    94315    equipment equipment_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY operation.equipment
    ADD CONSTRAINT equipment_pkey PRIMARY KEY (id);
 E   ALTER TABLE ONLY operation.equipment DROP CONSTRAINT equipment_pkey;
    	   operation            postgres    false    204            �           2606    94291 $   equipment_state equipment_state_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY operation.equipment_state
    ADD CONSTRAINT equipment_state_pkey PRIMARY KEY (id);
 Q   ALTER TABLE ONLY operation.equipment_state DROP CONSTRAINT equipment_state_pkey;
    	   operation            postgres    false    202            �           2606    94349 '   equipment_position_history fk_equipment    FK CONSTRAINT     �   ALTER TABLE ONLY operation.equipment_position_history
    ADD CONSTRAINT fk_equipment FOREIGN KEY (equipment_id) REFERENCES operation.equipment(id);
 T   ALTER TABLE ONLY operation.equipment_position_history DROP CONSTRAINT fk_equipment;
    	   operation          postgres    false    3505    205    204            �           2606    94357 $   equipment_state_history fk_equipment    FK CONSTRAINT     �   ALTER TABLE ONLY operation.equipment_state_history
    ADD CONSTRAINT fk_equipment FOREIGN KEY (equipment_id) REFERENCES operation.equipment(id);
 Q   ALTER TABLE ONLY operation.equipment_state_history DROP CONSTRAINT fk_equipment;
    	   operation          postgres    false    206    3505    204            �           2606    94298 8   equipment_model_state_hourly_earnings fk_equipment_model    FK CONSTRAINT     �   ALTER TABLE ONLY operation.equipment_model_state_hourly_earnings
    ADD CONSTRAINT fk_equipment_model FOREIGN KEY (equipment_model_id) REFERENCES operation.equipment_model(id);
 e   ALTER TABLE ONLY operation.equipment_model_state_hourly_earnings DROP CONSTRAINT fk_equipment_model;
    	   operation          postgres    false    203    3501    201            �           2606    94316    equipment fk_equipment_model    FK CONSTRAINT     �   ALTER TABLE ONLY operation.equipment
    ADD CONSTRAINT fk_equipment_model FOREIGN KEY (equipment_model_id) REFERENCES operation.equipment_model(id);
 I   ALTER TABLE ONLY operation.equipment DROP CONSTRAINT fk_equipment_model;
    	   operation          postgres    false    204    201    3501            �           2606    94303 8   equipment_model_state_hourly_earnings fk_equipment_state    FK CONSTRAINT     �   ALTER TABLE ONLY operation.equipment_model_state_hourly_earnings
    ADD CONSTRAINT fk_equipment_state FOREIGN KEY (equipment_state_id) REFERENCES operation.equipment_state(id);
 e   ALTER TABLE ONLY operation.equipment_model_state_hourly_earnings DROP CONSTRAINT fk_equipment_state;
    	   operation          postgres    false    202    3503    203            �           2606    94362 *   equipment_state_history fk_equipment_state    FK CONSTRAINT     �   ALTER TABLE ONLY operation.equipment_state_history
    ADD CONSTRAINT fk_equipment_state FOREIGN KEY (equipment_state_id) REFERENCES operation.equipment_state(id);
 W   ALTER TABLE ONLY operation.equipment_state_history DROP CONSTRAINT fk_equipment_state;
    	   operation          postgres    false    202    206    3503            =   >  x�����]1E�^8অ�1�]������/��%���<����r�@o?�'lߌ}�2���tE�	|�D2��㫴=���|�D�F9��I	�'�R@���i�+��q��� �,��>�ZTm�&>��4�̜;io�t�e�Х�����Gmj�$J����S.��6,����&Q��{�R�����W�>�}z��RO;����Z��dq�!C$��e�.��I E��{������X�F���+�(9�g>9�Bf����ǘ��@rˣ:KIC�浽����·
q�1��^4��a�7Di��Zk��.��      :   �   x����0�:�"��l%A5A�m�@�9�`�,�{ȓĔJ=6�<'҉�ԅ�t��	������X�7H��YՎ$<1���b�P�t�}��?��[�5[��(�$̍4�Xs�R�Yu8����������.�      <   �   x�����!�c.�D�\����������~�D��
|�������P�Z7�E6Ȑ���c�:M�tΡ!���V��jLC�>җ��`�`��Ȅ�W<5c��1&�=1�����M$;�*q�$���
C��Z(U�J��~ S�����kG'�Z�a�ЪX)�=���Z����      >      x��}I�9������@�-ɷ�?�B������%�VN�j��yu�I�o��w�_?�Mۯ7����۞�o��cm���Ã�m�۠���������/�������uN[߾�pd��+���f�/���_7�}~©چј�F�a�?Ϻ7������e.�p��R���o����ufF0��]}�y��~��3����E��H�Юg5[���|�0�:*�8$�L}V���g��0��:^�A4�/��p�[��o���ũ��t���`��j�����PV�����ܦnX>����k�o!@8���<��KB����U�8ϰ�}����[Ae%3�L�!n^�+�����ܵ�w�`���{}�����sV�=�jT�!����(������e�z(㯦l�
�=�U�
wI%7.!GkÊu�j�}n���v7�[6�9,�N���VB�n�IB�)��q��b �]�ZB�|��Ɨ��C���A�}Ca-�ͪ���c�R�� ��h.��e(��	w���>���/���Y=��K$�&��ͭ뼄�d���6�i�%�=�a�KCP�G�����-de���֭�6��l��Y������9}�D�̓X���Pw�j��-��ѥ���5oi��z�1؃ or���Z���h�ǥOs�V�1�q�C�n��J!�P柷UM~�����-ԉ6�R8N���`l�����)����8�q��]@��ŴI����֤��j}��tC�L�Mlz|�s�q��+,����]��Fr�yRF�a߮�p>�UA��q3>� �zEm����9]Ht!(H�."N;KAL���f���yy�����4�E�}�Ȩ\b�on�m^a��p��<d���*�9n�aEu� �F�Ҳg0,��+>�b}U7,����eM�t	w��iO�'j��M�aV���Q���bL��8��8�v�+q88G�����Mה�ƇHV8�8ܾe��a=`�����w��F���Ņ˵��#M��{�X�WE=t�aH&+�`�$����֚�Q����Ϳ���
��B}��8_�I7�B�(!l�f�E���8��|���k;���;�����o+\����������ߓ7>E�I���Ѯ8�����-%���8��J��g�h܂8�^Ѵ���w�TK\10�Yk�P/G*zo=t`��-����m�A"���m���3�TKϹB��DKp§�'�+;w�"C6����\(74�Kjr������7g-�/!!JNG�oV%[��]f�ѳ�lKx]sW�OG��B�J����\��l���r7���������
~k�$��<�y���^!����>��p�����w%���-�"��wCẃ�����&��nY�a[���珒p� ����qh.Xw�ܟY��#F�����?�;��2TLH��:jN�[�41zw�*�W�0S�_�7	���BT�P2�®��[V�K����ؚ
���tB���D����+صX"��8ܥr���48#%�5�)-�sVj�@���W���2�~����O"�_7��z���u�^ɶ(�ys�ܗ�R��`�M�-���(Lv�:iP�K����9w�}Tk�
�-a0�c=��i���2)$��5_�������P����68���uM7"���a������Ҭp����MwM�C�X+�p`�˘#�N��������_@������Y�	@p=[���>�_@�(de����H�.�~�#$ �e��v�'�5*�;$���U�Hد�I{�&�f=�@Y�[�����Q�P�и��Gq��
׎jkU��Qׁ�E>e){C#K�'��ʫɏD��ك#� ϽɄ�=�@�T���K��y1�.�Z� �U?�k�'�}U�B�?g�S�?��a��`��W��T]����'��	��5��D�e>�-�,BX�d����z�"�z��\+�s�S?f����y8��h�����N��U��_��![��-h���Z��4��_��Ѿ��k�`�U��)D�2F����3�v�T��8_�N;�g})[{D��j����2(�t�wǺ5k �s�h����=	�0]���q�QѾ7�u����^C���-�@�Z�w�-w?C*�ʶ�0a�+#=����3	G�/��_=�Ћ��v�Qx������~���o��>��v
�`гZ>̐�O}q&�J��P�GzRk���*[��C�V��W��f���yВ*m��-�4"�Ĉ~һC�?�Ē@�e��\��QE��cp�I�Ԫ�������8ֈ�D�V�"�}�,1W�;�Ug~/�m�<vM2X�w�5���U�����Q"ӧ9�P�ŔXeV[�`�F2�tQp�ꊓ17�����B����)D&�R�hV�2 �(.��RG���a�ΘP��ڿ='���D�ƀ-���Ԓҫ�ۅԬ%ҰIʒ��4�Ϋ����	�`���U�6�D��q�	K�g�k�'I"U�L�\g�M���Ȗ�5ĭ��2a�ɲ۷߯�[@��z�oD��y��1�' A�z��Z�U߉LT�P�n�U�"^��W�-AfUp�6�2_v�@7ͧ�$�����f��8�m}���	ˤո+�ax�*�H�ۓ�~ܤ�#����q�p�௰{�W��(��`f���U�܀�Cv���0��_��
�]c�������TV���=��_O�����i�Dmm��Mfk�gu����l`��=kx���-� �'����ٔa�{�p�\
�F��n�ɤU$�Q�4�fW�
>�폣��i%#X������gEv2�:j�g����@�"9^h��[=g�ڹ����z r��7CU�p��`�Lr�!Zy�|�m�h��D�B�k�vkO�dX���+��k�x�c��NO�d�;����2�d{��.�bi�)DR����8�]<�F�Ј����tͭ��;�!D���d�����ӟ?������ }31�){����:��$�-�v�/}k)g�D�/N�k$��� ܥ�V�Ϫdr�Ϙ�	_�	�Vz��S)��8�}wT��I�/}}�<�Չ.��	9�κx~�.v�S�*���L�<��I�Z����L�t��C�%�P�p�U��/;3��F��jHVg�p�]��Cp��Zk�1(uo��~\����U��Qk����(!4Ϸ�9a����Aʍ#W���4[��x�`7kiH�C">�kk�/���*e��f��L7�eb���h4��_��ћ�A�xȪ2
!�Q��f�8W��Зh��F��Ū���A�^�%?��D���)%1�>��7\ϳ���Y��uw��� ��gӧ�������]�5��5SB�h���3�5T"�v	���]�>j�En=��k*6@w'ERE��4.���Lѱ���a�ki�Rn��R����桺�&sg��Dz�������SX����2������L)K3<�)���$��
�Dৰ����m�7�7G�Z����_/���K�h�pm��g�lJs�MW���r!�W�k$D�:K��'�U[�`z�͹�K2��k���ݘ,�v�S��Jꌤ�h��+?�;����ݤ�\̺uY3��8g�T>x��b��V��$�=L�#�
�7��{�?�=j,�"���v1��)4Co�e���U=��P]��00����������8��J��QP­򢬨�/���'d�|�B��%�,W��[<R
U/�~X�S��)��h�ELۻ*�1ޜ�B8�<n_s���aEma�>M'�f���4�.���a�&�l��"o���j6�(�����������|��(L�ّ�]�,����9ךؚ��p��t]O?@�}���d
�V)er��Z�t������ڄ��������jC��0q�vR{�B����d�ʬ٬%ʹ+�tӏ���۶�����z�k��������'[�|�I�3w���O�g�
׶�p� V��h|_ݮBɐ+����~�ֱ`�6uTj�OC�gZ��g^c��/��    �����C6��|פJ��a@�p�P���|I�q(��M�-��9� C����'Jnm4��n,� M���d
k�|���H/Ȯ��� }���9(����~�p0��V
�H4��b}!�*F����ٳ{nO����h!�+��p���K錠ϺZ�+��z!Xu�Dx��q�<��p=��:krHN�D�^<�����%��9�3ߔ�G�6;��\��9.��]B�
��i������g.�5A��9����	UЫ�ޙl^R�5H���x��������]���*�|9R���sQ�/�OA8if��Y��Q��W��a��鑇��%/	�ʥ#�BJ�w�� ���c��
g��<Sf�8xe#

Gw���i)F���KF�w�檇v���=2��y���ë�FFk�̽�fF��>-�yϊ�	N$=t�:�c2{��>jm���L`��3�.
�՟e��h��U�'���q�R���g
�W��,�О��s:Jt����O�gnT���b�1�����0�-��R��L�	�5��͏>�o-���Z~���	v	��V��K5�xt���	19���}`���.�?g�p�sh�Ϛ~��?��簆�KK�,�r�r��֣8aX��D��;��5�Ǌ]
nA���YUǏZ8}�Iz�UQ�	�-����74ԅ�>��clŁ�U��2�$����s�,
�=�]�� F	�ͥ�q���w�R�J����jGV�8(Z3Y�ճ/���5��L�����wh�n������2Dt+Zq�3����^u�0��%GK��,�r�ey}�s������mh�JN�P[�͞'|������f��S��0�/�k����më׹�Qc��H&���x���|�_��ے��oaw�?\\��_�6cL��~.��T��̔1r�!��$��Y�kH��x�Z��-�a�h�;N�>�P��Q{�Ź��⊾j��ت���a�p{�鞒�\����ũJ��ˉ�Z+���(U�;�Z`h->B��lO\��o���LEi�-��|�g����f[�||�l���z���D�g.�����ơ�xg薪�ID[}M��Z��3|K�-$'�-¾r�צ0�)R���3賶��j���Y{�+����U\}W	�Q�v(����𞫝�C��p�X
^#��ҏ��� ����swOa8{,}�樕hf�#U{�����إß횾Џ���e=����}�t2�� ºFߡ��~��W�KCp�ptS�x�M΀<�}�)����P��.��kͱ���hj��T�YG�Ix��BG5�]���T�y��h�պ��37p��ՆK2W�f��
b�AN����Y�m	�Y;Y|2���N�>��sp
v�]J�d�(�W�5>����Q�m3��6�f �֧Jrn�.�>ikwd�Y+zv��%��j�k���?n�cQ/U��m����%,�y�j�	g�'����۸Rz;s�0�-��X�2��9����~�B�_t�5�9�CY���B�Y�z]}���S�̚M�ɚh���������&�����氡�/#�������A�֤�S���Y���Y#`�[.!����P����G�F�幒>9�������$�����l�*�h�}�0�=LK�&�;����H�4��I��E/��<�g�RF�Q��ېJɪ�*�@٫!�h�/�&�V���h��Å}y8��
��ѐrx�G��jD�����M?�m�-���ۏ�fof�C�td�Ͽ�sEN�K����p��~z��;�qm���.G$w	bh��O֮�\s�c��7j������0�����d�^�we�֌����������1�:45��8�����knK�r��B��5b}n?����
Y������y�s�O�/K�&=�y��pwm����H����/��U��r�4��&ė�V|��iq���0���}�0�ݟ{Iyq;+Q�6=�����5����������E��k���h_�.1�q�uԑE���c5���L(��>�����#�F��]#ͥ�Ф杇"O!u�|W�in�1�/�o���Y�~쯠�o"�T3�ÈE?�%�s�zM�e	������3�}�a��/ѧ�@���Y(S_����2���R�c��	���ћk#����i�J0ؽS�*I��(���0�>G|&���������p2s��穫��P�d��b��H�^(�X�� V�*�d2��}�B8r�)��2C�DA$�*鄟��I�<���0�p�;^��Rq�>w��!䪄�,�ی��>��'�a�V����#>b�(��`ks���x���)R��LQ˺�j ��r����!8�vD��Έ	��m�Q]{�An���r��c�_F}��Ued�=�/�~���-���Y�����Ws�)]�o��Zݾ�ڸ�
�!��O�0g��h��es,���	C���F�9%��z�\=ƪp�mGc$/��qm�[�({�08���̨���*d�^��g¿��˾��ș� \�ɓ>5���_��ײ-)si����������,�u9Lu}yT�y�8_n/��n?έ:c2ȏ�;������J�P��k��n#��0��E�Ï+���������O��|S�>�֏����\��~�����O��͉:(��c�=*�_�0�]�"!z+Ϫ!
@8�5�VD.�E��Lk��̿� .�ޙy61k��Q��r��<-[��Kf�+�f+3wףn��84J��C}a`��c6��ڄ)�"��`]�D�Ib�����Q�q�}�^{�eu�&��%�<w��ķ������Vxi*I�� ~�kA��wQ1U�Q��F�u��6�jes��v�_����~!��z\�p"Pf]�]Z��I�6��ְ��������\\R}�i	�pm���Նi��f~O=](a>ap=ʟ������hw�j.��w@�zM�T������_(ZKO��4׫�%�dph]�i�* 9�DkU�9�qU	��	�\��H�L�����_q�K;?[>fK�p�s����sF���vNG�]рh���=���)��P8n���UӜ5#]֨:�m�D'�J���UBM~�Nk|n�{C��Wɇ��OC��)���~V���0���\�}T����m����㪚o!�]�������Ctq���M�r��a�[���z�\O?DW���`���ݖ0��%U�èL�_�+�
�
jG��
a3=��IQ��q�[��'^���{���h��uй%���v�@��^�ϹD���M���h�gIQE����FRQW����.����ƚ�u��jM9������Y�Z56�������>��C1����~պl�"�Ck����f��v���fWl�E��~H�ʲ.�	�z�B��U�6���9�9�Y(��]6pn���!�`z�����Fݮ>�?����0�P���������0�]�tV�*��rK�g'֮�4����j/��U{Z�X�O�C��?�'O֧R~����_��w�����~�����o��/��gÿ��5-Tw�,� �z���p��1��|9�Ƭ:fD�����ڂL�]v\���К&�Q�Za�o���	㭌}����{�?��>�q0�剘�#4E��pMZ���{�w�I��<.c������������p��d�3���]���838 \+�g�gc�[��0\[ⵎ�E�k�c�3ߧ�>>������9��c�.�_�g��G2�zs��}�_T�g�힅��ښ^���1���a(m[���=cag>kO)�(1��{ƖUzڶ���"��.���\��]��a]�tu
�}�ݛ��R��@��� ��w�X�0
|���]�.���4�:TG���h(�Q|�[�+���M��� 2��F;'/�pwI��=J���;X�o�
�Ie�p����r�r�'(�H^�hT-��2>�޽��<u������ϕ�gj�`�ZC8�vfu����'�]�,�L~�p���Ƶ�0�L�¡���Q�;�& �  ힶ2�
�2��� ��W u�&�K�am�UG&�Q��ͅSF�l�x�/ѧ��ز5���ݵ~2��,�PP1����(��4�O��-ALqΪ��s�ژ���x��P��{!��jW����0�����Iv���f�)V!������.���԰*����3�"��p4��!OF�ά�0�-���Vp8��n��YF�^���]so�b �1����rS)
w;�+�M���Kd08y�ײZ�19���f�L-�O]�trb��Z�C�i;��G�M����Ff�ʸ���1g}T�<�Y$���d�+2��Q�K#�?W�P�ܨ���	�]Q���m�����r�l9�����W��k]鞎�}
<�Ȕg�MHd�W0R]:&�������e��"�����o��?�l�      ;   �   x�λ1E��n�X�?��-��Hd[
�P�6��ߙwΈ�`�o�0�2i��(�O�e��;%흢ob�g`\[��i�j�07�"��d����1����XAs���	x�Rj��R5���|�t�㳤�
��~��� �.X      ?      x���I�9ץS�D#��,����G�`U�~$P�:�JH�><:o�Q�랶򮯭��m�V��3����L��G쑶=�=}����~��c��x�ҶW>�My����ۭ��ޯ[{���������{���Q^���{�F/��������������SU��?��c���V��,�ܶ1������6�Y;��W�=����}zv��P-�=���=�f�����W�_�=��2�+��TOs����b�=�gSUw������A����|����N����N ؽ��7��>̱��vW��~:����^M�݇j��}zc��|��>3U�c~{z׏=����i�9�I��/��a���	vW#�E��eDO/�"ya�~��^��e��#z��0}��O���vϧ���c/�Q�`�b�݋(�yj3��wt ��~�Ha���Y��{d��ac?E�����'0ƞ�x5�Vc���|���=D_l��}��}��4ͼX�ft��^��R$�[:�b4|��zS�)���	3��S�R��X;�l�]{W�Z�<�b%.��u[t�2E]M���D13�QM�㠋�A/Ǳ�eڷ��4�lj�y1��͌�(�=�TETƞ��A7}�����A���3Op�Y8=�k�T��#�|��|e�# �߯�gz��?�#i옎�N�,ۉ�e��\?v{P:�g(�y����^�������(��贪���Z-'�z�TX_�t�a:��)���1]��Lǁ�(�`�uz�n~զ~�3��.��C=���P:�7a��G��0��贚��H��(O@�Lǁ�K��rz��Ei7��EG�wL�N��L_,�*q�e�
F�2ߵa�2L����w�1�t���P^o�l�|)�9�����i�ӽsu�#ŵZa���Ǣ�>AU��NZ��-�`��ŝ��_��t�t/�����Z��1]���j����뫘.�|��Ϝu��|�����
(����E�v`�K�to�\t/*[�Wo��)O��ݛ�A�b�:�Ś|������A�-a���:+����j���t�\�PWS�7�(��#���[jcq�S%�̺���贛��vW�
X)M��0�J4u�f4ݬ�.���]jc/���^�|)v�ZY�z�����,����G|������1�V��[����?�i옎v1LGy1Jg��Q��U�0
��<�̋Q:�����	x���D�挤q���3�3O���=JLGyF�:lL�j������S��M��4��t�6X�����2v�c�՗�.����M��Tc:��0ū�>�mALG�Jg�NJ��D����E�i��(��|B�;%��j��32L��Ke��c��Gb�1�{gS�o�P��,����
�QR:����U���<�S5��Ta�GFo�l��Do�2:U�R��tX�f��3�.~ա�H���T�⌜��i7VJ3�i�^Q��t�^�fi;=˜U����SL���H��)���=��L������ݵ��/������V�l��K�Ee�^��e�>����f�#��죓�2vqFVu5��h�W��d)����t/�jti;E��vI����>W��Ee1ԳI��y��gD<��mO������Q.[�5=������R:����#��[���!z����n�=������)H���=�_5�^Q��"JF/�S	�����-MD���&��.Z���q@������ٍjD?�׏w��t�����/H����_�C�����}�7(]<��z��b���M�2-�����o�z�͘/��W��;�R_���{;p��4)]��R2}ॾ�=��*"���)L_,�鋥���)݋�:�a3z�=� �{Q�^h�2J�2���G����y`J�|������j����s�ѮB�.���J�No:R�9��k��>�Ӄ��(v��t���Z��ZL�����P���n��.��s�Ta�Ɍ�"�����P�ڑԵf�lѽZ����)�\jЎH�.�g�jca��`�t���:ɊkU��G�]A!��#+}�ҽ�)*��	�朩�Yi�KH7��F��R���t3/v�S+X��w)]��z�u3��t�^�}VJc��C�XZt�2L�Pf�ϑ�۬�����,q�?�O�Ϩe�}6���0���
��x��N@�,����&LG���_5`U��ݯ��&F�P�����u�,0�����Q`M�Q����j�t�[�t��e��L-�`�Q�A����}��)�e�1]�8�뮌>`4L������>U?r���T��4���a{�Ǉ�r����2Ɍ�];�q`��&�	�E�g��^t/�=v1�^)]��?��^�U��3�NՌ��z`����S�9lJc��׏���*�����y��`}��՘�1�˿'�	���4�h�f�����/�3]*�{��R�zsf�=O�1�[�A�\Q��G��"L������=�y��fbѽ�؇������^ӑ����� ��[J3�����݋,�8g*|W���]L�<�ի1v�ӣ=�0]��T������`gF�P]���I�Ƙ.����UL�r�A��a�W���zzj�|�e�����b}�<s���}��Տ!��6���ȷyo����}�1�#���9��h��ttjc::�)��D�v��t��q0:�aJ�	e�1yK�^`�>LG��3�:��3�����f!(�e;1]�{�/�`�xj�^H�jS���8LW��r�.����#���9���*��;�Tw`�9�ҙ�ї��{��[L�����_��3�'�!�tV��t�2,���HO��6L�bd�����NkÔ����yKKS�e�ν�����.�������H���^t�{c����:��x553�Y�]��u>LG!JgwU0]��T���H���e��O3�_tя�P����A_)B���9���.���^��ܗY{��}L��{�Р��0i�0���#`0LW-#�0�g��Xt/O���ީ������uΨ�pл��n~զ���#1]���X�����}�ӽ���S��]��]�R�����E��j�[9���8���|m3���?���Y�Vk�kke/e��rӑ/F����t�!g�]�1EÔ���c:�()�u��tq���&����Ժa:�<S:��0]�#id���."�3-���;��vo���mAJg>0���LS��뫘��wJg:lJgF��QJg�+LO�	+Ϙ.z���QLG�2D_�KoK��QLG�+F��KL��{��y0���S�
FFطӽ<A��]b���=�9�����=� ўE�δ��.�ME��TSK��M�2z5sz���ޣ�t�K�t��h�+������5J���|���|��f/��3��]�>�ZY�7L)�\�ì�-Ů�U��V�0����їb׋�c7ke���bK��M]��������,��u�������#L�cѽ�R�������g�����}�������b���E��NL�N�_�t���=J7Om��*��>��.�3���Z5���z�����ݯ���o��m߷��}+�o��N���Z������z�t���t���t���t��Q:�*���%Jg�<��؃�3<W1E����.�����;��bmL����NcL�{U�L���1]�	h��Y��ű�J���vWO���Nu��.�|�_*���|�اzj��3�δ?����z�ǹ��s�܍U���=�GJPI��G���ݓjw�1d�YfLGCL����e�l�|�V�0]���<��{�*�����t1��������G.�8�+��c�8ߩ�ӽ�~�f���Ҙ��l�7��&O��."�wu�v�V�t�v3N��tq��=ԯ:�=LGumL��bI͋%�����*�2#:�m��^v�=�#v3�j��C)}�eԼX��%���t/*��n���D��5�t1�j~f���fP�ިftz��=?2�:g���W��	ӽ�&��a/�W5?�߅�7��M�L3�.�|]���Y��"0��k��{d7sث��W;�{c�x��\U��1��sxW���[�ҁ{��Vڽms������y�E��Lc��hFR:�B`:�3�N_��t�q`�j֧���Քa%�Q~�ŵ�a$���{�׏��{d j  �UJg�wLGy`Jg�;�W�ӣt��f�o�c�:v�1�t��h����F�n��U"�N���.�}��؄�2J��R�{vO���,�;�����0�g(�)���1]�}�ѳ��6��2����fj1��)��R1�;=R�CJO�Ԡ�Ũw�e�nf�R7c���]��6��gӀ��1݋��r��Ŝޢ{9�s�]a�L�u�tt'��E˜��^?�E�v1�/ӽ�Rл��.���_et5n
z��Eoii��Ld�[
5*[*@q�E��E�LQ��fE��Ŭ����^$�4�^bѽxu)����L4ح���=��k�C5��{dW�H�Vj�]�䃾	C�Z�)��FC��?����ǟ˷1�     