/** R[h}X^Ģf[^o^ */
--  Ą}X^ĢR[hĢo^
INSERT INTO privilege (code, name) VALUES (1, 'VXeĒŅ');
INSERT INTO privilege (code, name) VALUES (2, 'źŹpŅ');

-- ŖŽ}X^ĢR[hĢo^
INSERT INTO category (code, name) VALUES (0, 'L');
INSERT INTO category (code, name) VALUES (1, 'Nw');
INSERT INTO category (code, name) VALUES (2, 'šj');
INSERT INTO category (code, name) VALUES (3, 'ŠļČw');
INSERT INTO category (code, name) VALUES (4, '©RČw');
INSERT INTO category (code, name) VALUES (5, 'Zp');
INSERT INTO category (code, name) VALUES (6, 'YĘ');
INSERT INTO category (code, name) VALUES (7, '|p');
INSERT INTO category (code, name) VALUES (8, '¾ź');
INSERT INTO category (code, name) VALUES (9, '¶w');

-- oÅŠ}X^ĢR[hĢo^
INSERT INTO publisher (code, name) VALUES ('01', 'āgX');

/** }X^e[uĢf[^o^ */
INSERT INTO member VALUES (nextval('member_id_seq'), '12056692', '~c rĶ', '232-0016', '_Žģ§”lsģę{³¬2-16-18', '080-4293-2703', 'mizuho2311@mhwuymgwsr.rp.rql', '1985-07-05', 1, current_timestamp, current_timestamp);
INSERT INTO member VALUES (nextval('member_id_seq'), '12050662', '“c  ', '277-0851', 'ēt§sü“¬1-17-13', '080-3440-9925', 'yuzuki086@udtmsizh.nbl.jrml', '2001-02-01', 2, current_timestamp, current_timestamp);
INSERT INTO member VALUES (nextval('member_id_seq'), '12058021', 'lū HY', '259-0201', '_Žģ§«æŗS^ß¬^ß3-20-8', '080-4751-9498', 'fujio_tsuchiya@yfqkvmrmfr.geq.bbl', '1987-11-15', 2, current_timestamp, current_timestamp);
INSERT INTO member VALUES (nextval('member_id_seq'), '12057327', 'Ć“ ³ü', '121-0807', 's«§ęÉ»{¬1-16É»{¬Ap[g406', '090-4613-0336', 'yoshiko_shimada@ztvzw.frig.fhbl', '1970-10-08', 1, current_timestamp, current_timestamp);
INSERT INTO member VALUES (nextval('member_id_seq'), '12052425', 'gąV ³æ', '241-0005', '_Žģ§”ls®ęŖ4-6ŖtHXg216', '080-1284-7148', 'chuuzou30475@kwjs.qxl', '1980-01-27', 2, current_timestamp, current_timestamp);
INSERT INTO member VALUES (nextval('member_id_seq'), '12056107', 'k ĒF', '231-0862', '_Žģ§”lsęRč¬2-5-9Rč¬^[418', '080-6431-9202', 'momokatezuka@wjhpjivinw.hgl', '1997-04-02', 2, current_timestamp, current_timestamp);
INSERT INTO member VALUES (nextval('member_id_seq'), '12058439', 'óc O', '350-0236', 'éŹ§āĖsŌe¬4-2-6', '090-1133-3877', 'ikosugi@xsrehtx.uis.ayl', '1978-04-07', 2, current_timestamp, current_timestamp);

INSERT INTO auth VALUES (nextval('auth_id_seq'), '12056692', 1, '31c191d73919df6a7928748abb781800efed72c335fd574b548bd5c83320960d'); -- usr1
INSERT INTO auth VALUES (nextval('auth_id_seq'), '12050662', 2, 'dc6d1427d39c787ca546abeccddc0ca01c3411a82b4a4493acdb251ac4dd1931'); -- usr2
INSERT INTO auth VALUES (nextval('auth_id_seq'), '12058021', 2, '583c1da8f27d6202a6ba4afed44ee6ceca416ed2a35ffb23de424d60632d2706'); -- usr3
INSERT INTO auth VALUES (nextval('auth_id_seq'), '12057327', 1, '37fd8167e5d090ed401696d0fc5abbbf16b66888b1a0a52321e48a2100507bdc'); -- usr4
INSERT INTO auth VALUES (nextval('auth_id_seq'), '12052425', 2, 'd09ce0948322de958f9c3e943e1e33892430ea48c5f36d1c972ef74c7219d2c7'); -- usr5
INSERT INTO auth VALUES (nextval('auth_id_seq'), '12056107', 2, 'ebe1a73a2ee3db071055e7d3c790b7cf8e8becaf2ef1713152f4b8202fc2f2b2'); -- usr6
INSERT INTO auth VALUES (nextval('auth_id_seq'), '12058439', 2, '223d74bca6107ec1508771622068bb3b3b7bbc103da7014aa40ae642c57ccab9'); -- usr7
