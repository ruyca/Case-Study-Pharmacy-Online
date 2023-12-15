  -- @Autores: Ruy Cabello @ruyca, Carolina Sotelo @carolinanolso
-- @Fehca creacion: 10/12/2023
-- @Descripcion: creacion script para insertar los datos iniciales

connect cn_proy_admin/pf_admin;
--INSERTANDO EN SUSTANCIA_ACTIVA
insert into sustancia_activa(sustancia_activa_id, nombre_sustancia) values(sustancia_activa_seq.nextval, 'ÁCIDO ACETILSALICÍLICO');
insert into sustancia_activa(sustancia_activa_id, nombre_sustancia) values(sustancia_activa_seq.nextval, 'IBUPROFENO');
insert into sustancia_activa(sustancia_activa_id, nombre_sustancia) values(sustancia_activa_seq.nextval, 'METAMIZOL SÓDICO');
insert into sustancia_activa(sustancia_activa_id, nombre_sustancia) values(sustancia_activa_seq.nextval, 'PARACETAMOL');
insert into sustancia_activa(sustancia_activa_id, nombre_sustancia) values(sustancia_activa_seq.nextval, 'BUPRENORFINA');
insert into sustancia_activa(sustancia_activa_id, nombre_sustancia) values(sustancia_activa_seq.nextval, 'CAPSAICINA');
insert into sustancia_activa(sustancia_activa_id, nombre_sustancia) values(sustancia_activa_seq.nextval, 'CLONIXINATO DE LISINA');
insert into sustancia_activa(sustancia_activa_id, nombre_sustancia) values(sustancia_activa_seq.nextval, 'DEXMEDETOMIDINA');
insert into sustancia_activa(sustancia_activa_id, nombre_sustancia) values(sustancia_activa_seq.nextval, 'SULFATO DE ATROPINA');
insert into sustancia_activa(sustancia_activa_id, nombre_sustancia) values(sustancia_activa_seq.nextval, 'LIDOCAÍNA');
insert into sustancia_activa(sustancia_activa_id, nombre_sustancia) values(sustancia_activa_seq.nextval, 'BUPIVACAÍNA');
insert into sustancia_activa(sustancia_activa_id, nombre_sustancia) values(sustancia_activa_seq.nextval, 'DIAZEPAM');
insert into sustancia_activa(sustancia_activa_id, nombre_sustancia) values(sustancia_activa_seq.nextval, 'AMLODIPINO');
insert into sustancia_activa(sustancia_activa_id, nombre_sustancia) values(sustancia_activa_seq.nextval, 'CAPTOPRIL');
insert into sustancia_activa(sustancia_activa_id, nombre_sustancia) values(sustancia_activa_seq.nextval, 'CLORTALIDONA');



--INSERTANDO EN MEDICAMENTO
insert into medicamento(medicamento_id, descripcion, sustancia_activa_id)		values(medicamento_seq.nextval, 'Inhibe la síntesis de prostaglandinas y actúa sobre el centro termorregulador en el hipotálamo, tiene efecto antiagregante plaquetario por inhibición de la enzima tromboxano sintetasa', 1);
insert into medicamento(medicamento_id, descripcion, sustancia_activa_id)		values(medicamento_seq.nextval, 'Es un fármaco inhibidor de prostaglandinas que logra mediante este mecanismo de acción controlar inflamación, dolor y fiebre, la acción antiprostaglandínica es a través de su inhibición de ciclooxigenasa responsable de la biosíntesis de las prostaglandinas', 2);
insert into medicamento(medicamento_id, descripcion, sustancia_activa_id)		values(medicamento_seq.nextval, 'Inhibe la síntesis de prostaglandinas y actúa sobre el centro termorregulador en el hipotálamo.', 3);
insert into medicamento(medicamento_id, descripcion, sustancia_activa_id)		values(medicamento_seq.nextval, 'Inhibe la síntesis de prostaglandinas y actúa sobre el centro termorregulador en el hipotálamo.', 4);
insert into medicamento(medicamento_id, descripcion, sustancia_activa_id)		values(medicamento_seq.nextval, 'Analgésico de acción central. Actúa como agonista parcial del receptor opioide-μ y antagonista del receptor opioide-κ.', 5);
insert into medicamento(medicamento_id, descripcion, sustancia_activa_id)		values(medicamento_seq.nextval, 'Analgésico de acción local que ejerce una acción desensibilizadora selectiva, por la supresión de la actividad de las fibras sensoriales del tipo C y eliminando la substancia P de las terminales nerviosas.', 6);
insert into medicamento(medicamento_id, descripcion, sustancia_activa_id)		values(medicamento_seq.nextval, 'Analgésico inhibidor de la ciclooxigenasa, bloqueando la síntesis de PGE y PGF2.', 7);
insert into medicamento(medicamento_id, descripcion, sustancia_activa_id)		values(medicamento_seq.nextval, 'Es un agonista del receptor adrenérgico ALFA2 de neuronas presinápticas y postsinápticas de la medula espinal y locus ceruleus, que proporciona sedación y analgesia, sin depresión respiratoria.', 8);
insert into medicamento(medicamento_id, descripcion, sustancia_activa_id)		values(medicamento_seq.nextval, 'Alcaloide anticolinérgico que compite sobre los receptores muscarínicos, antagonizando selectivamente los efectos de la acetilcolina y de medicamentos muscarínicos.', 9);
insert into medicamento(medicamento_id, descripcion, sustancia_activa_id)		values(medicamento_seq.nextval, 'Anestésico local que bloquea la conducción nerviosa interfiriendo con el intercambio de sodio y potasio a través de la membrana celular.', 10);
insert into medicamento(medicamento_id, descripcion, sustancia_activa_id)		values(medicamento_seq.nextval, 'Anestésico local que bloquea la conducción nerviosa interfiriendo en el intercambio de sodio y potasio, a través de la membrana celular.', 11);
insert into medicamento(medicamento_id, descripcion, sustancia_activa_id)		values(medicamento_seq.nextval, 'Benzodiazepina de duración prolongada que produce diversos grados de depresión, desde sedación hasta hipnosis', 12);
insert into medicamento(medicamento_id, descripcion, sustancia_activa_id)		values(medicamento_seq.nextval, 'Bloqueador de los canales de calcio que inhibe la entrada de calcio en la célula cardiaca y del músculo liso vascular.', 13);
insert into medicamento(medicamento_id, descripcion, sustancia_activa_id)		values(medicamento_seq.nextval, 'Inhibe a la enzima convertidora de la angiotensina lo que impide la formación de angiotensina II a partir de angiotensina I. Disminuye la resistencia vascular periférica y reduce la retención de sodio y agua.', 14);
insert into medicamento(medicamento_id, descripcion, sustancia_activa_id)		values(medicamento_seq.nextval, 'Diurético que bloquea la reabsorción de sodio y cloro a nivel de túbulo distal.', 15);



--INSERTANDO EN MEDICAMENTO_NOMBRE
insert into medicamento_nombre(nombre_id, nombre, medicamento_id) 	values(medicamento_nombre_seq.nextval, 'Aspirina', 200);
insert into medicamento_nombre(nombre_id, nombre, medicamento_id) 	values(medicamento_nombre_seq.nextval, 'Calmantina', 200);
insert into medicamento_nombre(nombre_id, nombre, medicamento_id) 	values(medicamento_nombre_seq.nextval, 'Inyesprin', 200);
insert into medicamento_nombre(nombre_id, nombre, medicamento_id) 	values(medicamento_nombre_seq.nextval, 'Rhonal', 200);
insert into medicamento_nombre(nombre_id, nombre, medicamento_id) 	values(medicamento_nombre_seq.nextval, 'Sedergine', 200);
insert into medicamento_nombre(nombre_id, nombre, medicamento_id) 	values(medicamento_nombre_seq.nextval, 'Algiasdin', 201);
insert into medicamento_nombre(nombre_id, nombre, medicamento_id) 	values(medicamento_nombre_seq.nextval, 'Algidrin', 201);
insert into medicamento_nombre(nombre_id, nombre, medicamento_id) 	values(medicamento_nombre_seq.nextval, 'Alogesia', 201);
insert into medicamento_nombre(nombre_id, nombre, medicamento_id) 	values(medicamento_nombre_seq.nextval, 'Apirofeno', 201);
insert into medicamento_nombre(nombre_id, nombre, medicamento_id) 	values(medicamento_nombre_seq.nextval, 'Brufen', 201);
insert into medicamento_nombre(nombre_id, nombre, medicamento_id) 	values(medicamento_nombre_seq.nextval, 'Dalsy', 201);
insert into medicamento_nombre(nombre_id, nombre, medicamento_id) 	values(medicamento_nombre_seq.nextval, 'Dersindol', 201);
insert into medicamento_nombre(nombre_id, nombre, medicamento_id) 	values(medicamento_nombre_seq.nextval, 'Dolorac', 201);
insert into medicamento_nombre(nombre_id, nombre, medicamento_id) 	values(medicamento_nombre_seq.nextval, 'Dolencar', 201);
insert into medicamento_nombre(nombre_id, nombre, medicamento_id) 	values(medicamento_nombre_seq.nextval, 'Algi Mabo', 202);
insert into medicamento_nombre(nombre_id, nombre, medicamento_id) 	values(medicamento_nombre_seq.nextval, 'Neo Melubrina', 202);
insert into medicamento_nombre(nombre_id, nombre, medicamento_id) 	values(medicamento_nombre_seq.nextval, 'Metalgial', 202);
insert into medicamento_nombre(nombre_id, nombre, medicamento_id) 	values(medicamento_nombre_seq.nextval, 'Nolotil', 202);
insert into medicamento_nombre(nombre_id, nombre, medicamento_id) 	values(medicamento_nombre_seq.nextval, 'Tylenol', 203);
insert into medicamento_nombre(nombre_id, nombre, medicamento_id) 	values(medicamento_nombre_seq.nextval, 'Panadol', 203);
insert into medicamento_nombre(nombre_id, nombre, medicamento_id) 	values(medicamento_nombre_seq.nextval, 'FeverAll', 203);
insert into medicamento_nombre(nombre_id, nombre, medicamento_id) 	values(medicamento_nombre_seq.nextval, 'Tempra', 203);
insert into medicamento_nombre(nombre_id, nombre, medicamento_id) 	values(medicamento_nombre_seq.nextval, 'Buprex', 204);
insert into medicamento_nombre(nombre_id, nombre, medicamento_id) 	values(medicamento_nombre_seq.nextval, 'Feliben', 204);
insert into medicamento_nombre(nombre_id, nombre, medicamento_id) 	values(medicamento_nombre_seq.nextval, 'Transtec', 204);
insert into medicamento_nombre(nombre_id, nombre, medicamento_id) 	values(medicamento_nombre_seq.nextval, 'Alacapsin', 205);
insert into medicamento_nombre(nombre_id, nombre, medicamento_id) 	values(medicamento_nombre_seq.nextval, 'Picasum', 205);
insert into medicamento_nombre(nombre_id, nombre, medicamento_id) 	values(medicamento_nombre_seq.nextval, 'Capsicin Crema', 205);
insert into medicamento_nombre(nombre_id, nombre, medicamento_id) 	values(medicamento_nombre_seq.nextval, 'Capsidol', 205);
insert into medicamento_nombre(nombre_id, nombre, medicamento_id) 	values(medicamento_nombre_seq.nextval, 'Hanasaterm', 205);
insert into medicamento_nombre(nombre_id, nombre, medicamento_id) 	values(medicamento_nombre_seq.nextval, 'Qutenza', 205);
insert into medicamento_nombre(nombre_id, nombre, medicamento_id) 	values(medicamento_nombre_seq.nextval, 'Dolalgial', 206);
insert into medicamento_nombre(nombre_id, nombre, medicamento_id) 	values(medicamento_nombre_seq.nextval, 'Precedex', 207);
insert into medicamento_nombre(nombre_id, nombre, medicamento_id) 	values(medicamento_nombre_seq.nextval, 'Atropina Braun', 208);
insert into medicamento_nombre(nombre_id, nombre, medicamento_id) 	values(medicamento_nombre_seq.nextval, 'Atropina Sulfato', 208);
insert into medicamento_nombre(nombre_id, nombre, medicamento_id) 	values(medicamento_nombre_seq.nextval, 'Serra', 208);
insert into medicamento_nombre(nombre_id, nombre, medicamento_id) 	values(medicamento_nombre_seq.nextval, 'Lambdalina', 209);
insert into medicamento_nombre(nombre_id, nombre, medicamento_id) 	values(medicamento_nombre_seq.nextval, 'Versatis', 209);
insert into medicamento_nombre(nombre_id, nombre, medicamento_id) 	values(medicamento_nombre_seq.nextval, 'Xilonibsa', 209);
insert into medicamento_nombre(nombre_id, nombre, medicamento_id) 	values(medicamento_nombre_seq.nextval, 'Bupivacaína Braun', 210);
insert into medicamento_nombre(nombre_id, nombre, medicamento_id) 	values(medicamento_nombre_seq.nextval, 'Bupivacaína hiperbárica', 210);
insert into medicamento_nombre(nombre_id, nombre, medicamento_id) 	values(medicamento_nombre_seq.nextval, 'Inibsacain', 210);
insert into medicamento_nombre(nombre_id, nombre, medicamento_id) 	values(medicamento_nombre_seq.nextval, 'Aneurol', 211);
insert into medicamento_nombre(nombre_id, nombre, medicamento_id) 	values(medicamento_nombre_seq.nextval, 'Ansium', 211);
insert into medicamento_nombre(nombre_id, nombre, medicamento_id) 	values(medicamento_nombre_seq.nextval, 'Gobanal', 211);
insert into medicamento_nombre(nombre_id, nombre, medicamento_id) 	values(medicamento_nombre_seq.nextval, 'Pacium', 211);
insert into medicamento_nombre(nombre_id, nombre, medicamento_id) 	values(medicamento_nombre_seq.nextval, 'Stesolid', 211);
insert into medicamento_nombre(nombre_id, nombre, medicamento_id) 	values(medicamento_nombre_seq.nextval, 'Tepazepan', 211);
insert into medicamento_nombre(nombre_id, nombre, medicamento_id) 	values(medicamento_nombre_seq.nextval, 'Tropargal', 211);
insert into medicamento_nombre(nombre_id, nombre, medicamento_id) 	values(medicamento_nombre_seq.nextval, 'Valium', 211);
insert into medicamento_nombre(nombre_id, nombre, medicamento_id) 	values(medicamento_nombre_seq.nextval, 'Astudal', 212);
insert into medicamento_nombre(nombre_id, nombre, medicamento_id) 	values(medicamento_nombre_seq.nextval, 'Norvas', 212);
insert into medicamento_nombre(nombre_id, nombre, medicamento_id) 	values(medicamento_nombre_seq.nextval, 'Zabart', 212);
insert into medicamento_nombre(nombre_id, nombre, medicamento_id) 	values(medicamento_nombre_seq.nextval, 'Capoten', 213);
insert into medicamento_nombre(nombre_id, nombre, medicamento_id) 	values(medicamento_nombre_seq.nextval, 'Cesplon', 213);
insert into medicamento_nombre(nombre_id, nombre, medicamento_id) 	values(medicamento_nombre_seq.nextval, 'Cesplon cor', 213);
insert into medicamento_nombre(nombre_id, nombre, medicamento_id) 	values(medicamento_nombre_seq.nextval, 'Tensoprel', 213);
insert into medicamento_nombre(nombre_id, nombre, medicamento_id) 	values(medicamento_nombre_seq.nextval, 'Captosina', 213);
insert into medicamento_nombre(nombre_id, nombre, medicamento_id) 	values(medicamento_nombre_seq.nextval, 'Higrotona', 214);

--INSERTANDO EN PRESENTACIONES
insert into presentacion(presentacion_id, descripcion) values(presentacion_seq.nextval, 'Envase con 20 tabletas');
insert into presentacion(presentacion_id, descripcion) values(presentacion_seq.nextval, 'Envase con 20 tabletas solubles o efervescentes');
insert into presentacion(presentacion_id, descripcion) values(presentacion_seq.nextval, 'Envase con 10 tabletas o cápsulas');
insert into presentacion(presentacion_id, descripcion) values(presentacion_seq.nextval, 'Envase con 12 tabletas');
insert into presentacion(presentacion_id, descripcion) values(presentacion_seq.nextval, 'Envase con 30 tabletas');
insert into presentacion(presentacion_id, descripcion) values(presentacion_seq.nextval, 'Envase con 36 tabletas');
insert into presentacion(presentacion_id, descripcion) values(presentacion_seq.nextval, 'Envase con 24 tabletas');
insert into presentacion(presentacion_id, descripcion) values(presentacion_seq.nextval, 'Envase con 120 ml y medida dosificadora');
insert into presentacion(presentacion_id, descripcion) values(presentacion_seq.nextval, 'Envase con 10 comprimidos');
insert into presentacion(presentacion_id, descripcion) values(presentacion_seq.nextval, 'Envase con 3 supositorios');
insert into presentacion(presentacion_id, descripcion) values(presentacion_seq.nextval, 'Envase con 4 parches');
insert into presentacion(presentacion_id, descripcion) values(presentacion_seq.nextval, 'Envase con 5 ampolletas de 2 ml');
insert into presentacion(presentacion_id, descripcion) values(presentacion_seq.nextval, 'Envase con 1 frasco ámpula');
insert into presentacion(presentacion_id, descripcion) values(presentacion_seq.nextval, 'Envase con 5 frascos ámpula de 50 ml');

--INSERTANDO EN MEDICAMENTO_PRESENTACION
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id)	  values(medicamento_presentacion_seq.nextval, 200, 1);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id)	  values(medicamento_presentacion_seq.nextval, 200, 2);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id)	  values(medicamento_presentacion_seq.nextval, 201, 3);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id)	  values(medicamento_presentacion_seq.nextval, 201, 4);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id)	  values(medicamento_presentacion_seq.nextval, 201, 1);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id)	  values(medicamento_presentacion_seq.nextval, 201, 5);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id)	  values(medicamento_presentacion_seq.nextval, 201, 6);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id)	  values(medicamento_presentacion_seq.nextval, 201, 7);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id)	  values(medicamento_presentacion_seq.nextval, 201, 8);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id)	  values(medicamento_presentacion_seq.nextval, 202, 9);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id)	  values(medicamento_presentacion_seq.nextval, 203, 3);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id)	  values(medicamento_presentacion_seq.nextval, 203, 10);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id)	  values(medicamento_presentacion_seq.nextval, 204, 3);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id)	  values(medicamento_presentacion_seq.nextval, 204, 1);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id)	  values(medicamento_presentacion_seq.nextval, 204, 11);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id)	  values(medicamento_presentacion_seq.nextval, 205, 11);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id)	  values(medicamento_presentacion_seq.nextval, 206, 12);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id)	  values(medicamento_presentacion_seq.nextval, 207, 13);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id)	  values(medicamento_presentacion_seq.nextval, 208, 13);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id)	  values(medicamento_presentacion_seq.nextval, 209, 11);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id)	  values(medicamento_presentacion_seq.nextval, 209, 14);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id)	  values(medicamento_presentacion_seq.nextval, 210, 8);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id)	  values(medicamento_presentacion_seq.nextval, 210, 11);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id)	  values(medicamento_presentacion_seq.nextval, 211, 13);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id)	  values(medicamento_presentacion_seq.nextval, 212, 1);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id)	  values(medicamento_presentacion_seq.nextval, 212, 5);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id)	  values(medicamento_presentacion_seq.nextval, 213, 1);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id)	  values(medicamento_presentacion_seq.nextval, 213, 5);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id)	  values(medicamento_presentacion_seq.nextval, 213, 6);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id)	  values(medicamento_presentacion_seq.nextval, 214, 1);

--INSERTANDO EN CLIENTE
insert into cliente values(cliente_seq.nextval, '557798812', 'CACL100916714', 'LUCSYOEQ9UR2P6SYWL', 'Calle Sopa 9, Colonia Polanco', 'LUCILA', 'CAMPOVERDE', 'SOTELO', 'FRIDA281@gmail.com');
insert into cliente values(cliente_seq.nextval, '550050219', 'ANAB791114268', NULL, 'Calle Taco 21, Colonia Madrid', 'BELEN', 'ANDRADE', 'CAMPOVERDE', 'KARINA066@yahoo.com');
insert into cliente values(cliente_seq.nextval, '556846576', 'TRTE561121773', NULL, 'Calle Pizza 32, Colonia Berlín', 'EDUARDO', 'TRONCOS', 'MOLINA', 'SALMA621@yahoo.com');
insert into cliente values(cliente_seq.nextval, '552717757', 'RERC840114155', NULL, 'Calle Sopa 9, Colonia Polanco', 'CARLOS', 'REYES', 'VELAZQUEZ', 'BOB806@gmail.com');
insert into cliente values(cliente_seq.nextval, '550569265', 'MOMJ640316880', 'JUMA5U78ZXQHT9FOG5', 'Calle Flautas 5, Colonia Del Valle', 'JUAN', 'MOLINA', 'ARCOS', 'BYRON210@outlook.com');
insert into cliente values(cliente_seq.nextval, '556967721', 'GAGB800911688', NULL, 'Calle Mole 7, Colonia Coyoacán', 'BYRON', 'GARCIA', 'REYES', 'PEDRO852@ingenieria.unam.edu');
insert into cliente values(cliente_seq.nextval, '551499892', 'RERS561114949', NULL, 'Calle Pasta 19, Colonia Viena', 'SILVIA', 'REYNOZA', 'CAMPOS', 'KAROL708@yahoo.com');
insert into cliente values(cliente_seq.nextval, '551207271', 'RERY630715507', NULL, 'Calle Sopa 9, Colonia Polanco', 'YAEL', 'REYNOZA', 'MORALES', 'KAROL840@outlook.com');
insert into cliente values(cliente_seq.nextval, '559937118', 'DEDP760522875', NULL, 'Calle Chilaquiles 4, Colonia Roma Sur', 'PATRICIA', 'DELGADO', 'CASTILLO', 'LUIS035@ingenieria.unam.edu');
insert into cliente values(cliente_seq.nextval, '551434274', 'OROF00125966', 'FROFHI141IOIPD5986', 'Calle Sopa 9, Colonia Polanco', 'FRIDA', 'ORTEGA', 'FLORES', 'SAM674@outlook.com');
insert into cliente values(cliente_seq.nextval, '554254982', 'TOTG08056848', 'GATOI6I1SMVYMY8QNS', 'Calle Sopa 9, Colonia Polanco', 'GAEL', 'TORRES', 'OLIVARES', 'JOSE498@comunidad.unam.mx');
insert into cliente values(cliente_seq.nextval, '553991905', 'RERD500816653', NULL, 'Calle Ensalada 8, Colonia Santa Fe', 'DAVID', 'REYNALDO', 'TORRES', 'BYRON471@outlook.com');
insert into cliente values(cliente_seq.nextval, '553623250', 'MOMD570922615', NULL, 'Calle Sopa 9, Colonia Polanco', 'DANIEL', 'MORALES', 'VILLAVICENCIO', 'JORGE036@ingenieria.unam.edu');
insert into cliente values(cliente_seq.nextval, '556744093', 'RERP73058689', NULL, 'Calle Burritos 2, Colonia Polanco', 'PATRICIO', 'REYNOZA', 'ASTURIO', 'ESTEBAN612@comunidad.unam.mx');
insert into cliente values(cliente_seq.nextval, '558930640', 'CACK590225841', NULL, 'Calle Mole 7, Colonia Coyoacán', 'KAROL', 'CAMPOS', 'BRAVO', 'PATRICIO533@outlook.com');
insert into cliente values(cliente_seq.nextval, '559809145', 'PIPP90094456', NULL, 'Calle Hamburguesa 42, Colonia Londres', 'PABLO', 'PINEDA', 'CAMPOS', 'KEYLA805@gmail.com');
insert into cliente values(cliente_seq.nextval, '554293352', 'VIVM56126120', NULL, 'Calle Tamales 6, Colonia Narvarte', 'MIGUEL', 'VILLAVICENCIO', 'GONZALEZ', 'BOB501@outlook.com');

--INSERTANDO EN DATOS_TARJETA
insert into datos_tarjeta(tarjeta_id, num_tarjeta, mes_expiracion, anio_expiracion, cliente_id)		values(datos_tarjeta_seq.nextval, 196710675867, to_date('05','mm'), to_date('2026','yyyy'), 1000);
insert into datos_tarjeta(tarjeta_id, num_tarjeta, mes_expiracion, anio_expiracion, cliente_id)		values(datos_tarjeta_seq.nextval, 163658377282, to_date('03','mm'), to_date('2013','yyyy'), 1001);
insert into datos_tarjeta(tarjeta_id, num_tarjeta, mes_expiracion, anio_expiracion, cliente_id)		values(datos_tarjeta_seq.nextval, 111756276513, to_date('06','mm'), to_date('2026','yyyy'), 1002);
insert into datos_tarjeta(tarjeta_id, num_tarjeta, mes_expiracion, anio_expiracion, cliente_id)		values(datos_tarjeta_seq.nextval, 112818640609, to_date('02','mm'), to_date('2028','yyyy'), 1003);
insert into datos_tarjeta(tarjeta_id, num_tarjeta, mes_expiracion, anio_expiracion, cliente_id)		values(datos_tarjeta_seq.nextval, 188897431079, to_date('10','mm'), to_date('2016','yyyy'), 1004);
insert into datos_tarjeta(tarjeta_id, num_tarjeta, mes_expiracion, anio_expiracion, cliente_id)		values(datos_tarjeta_seq.nextval, 188339063259, to_date('01','mm'), to_date('2019','yyyy'), 1005);
insert into datos_tarjeta(tarjeta_id, num_tarjeta, mes_expiracion, anio_expiracion, cliente_id)		values(datos_tarjeta_seq.nextval, 177218940485, to_date('11','mm'), to_date('2033','yyyy'), 1006);
insert into datos_tarjeta(tarjeta_id, num_tarjeta, mes_expiracion, anio_expiracion, cliente_id)		values(datos_tarjeta_seq.nextval, 195008130920, to_date('06','mm'), to_date('2018','yyyy'), 1007);
insert into datos_tarjeta(tarjeta_id, num_tarjeta, mes_expiracion, anio_expiracion, cliente_id)		values(datos_tarjeta_seq.nextval, 142112635742, to_date('06','mm'), to_date('2033','yyyy'), 1008);
insert into datos_tarjeta(tarjeta_id, num_tarjeta, mes_expiracion, anio_expiracion, cliente_id)		values(datos_tarjeta_seq.nextval, 122264856265, to_date('10','mm'), to_date('2011','yyyy'), 1009);

--INSERTANDO EN STATUS_PEDIDO
insert into status_pedido(status_id, descripcion, clave)	values(status_pedido_seq.nextval, 'CAPTURADO', 'El pedido se ha registrado de manera exitosa y esta espera de envio.');
insert into status_pedido(status_id, descripcion, clave)	values(status_pedido_seq.nextval, 'EN TRANSITO', 'El pedido esta en curso para ser entregado al cliente.');
insert into status_pedido(status_id, descripcion, clave)	values(status_pedido_seq.nextval, 'ENTREGADO', 'El cliente recibio el pedido y este fue aceptado.');
insert into status_pedido(status_id, descripcion, clave)	values(status_pedido_seq.nextval, 'DEVUELTO', 'El cliente encontro algun error con el pedido y fue devuelto');
insert into status_pedido(status_id, descripcion, clave)	values(status_pedido_seq.nextval, 'CANCELADO', 'Ocurrio algun error que ocasiono que se cancelara el pedido');

--INSERTANDO EN CENTRO_OPERACION
insert into centro_operacion(centro_id, es_farmacia, es_almacen, es_oficina, clave, latitud, longitud, telefono)	 values(centro_operacion_seq.nextval, 1, 0, 0, 'FF7V1C', 19.39, 99.087306, '550815205');
insert into centro_operacion(centro_id, es_farmacia, es_almacen, es_oficina, clave, latitud, longitud, telefono)	 values(centro_operacion_seq.nextval, 1, 0, 0, 'FFLQQP', 19.409056, 99.131389, '554596674');
insert into centro_operacion(centro_id, es_farmacia, es_almacen, es_oficina, clave, latitud, longitud, telefono)	 values(centro_operacion_seq.nextval, 0, 1, 0, 'AAQ61V', 19.378444, 99.140667, '556364101');
insert into centro_operacion(centro_id, es_farmacia, es_almacen, es_oficina, clave, latitud, longitud, telefono)	 values(centro_operacion_seq.nextval, 0, 1, 0, 'AA6JVR', 19.374556, 99.18275, '558689944');
insert into centro_operacion(centro_id, es_farmacia, es_almacen, es_oficina, clave, latitud, longitud, telefono)	 values(centro_operacion_seq.nextval, 0, 0, 1, 'OOPY4T', 19.429611, 99.190278, '555976080');
insert into centro_operacion(centro_id, es_farmacia, es_almacen, es_oficina, clave, latitud, longitud, telefono)	 values(centro_operacion_seq.nextval, 0, 0, 1, 'OO585W', 19.490778, 99.103778, '550368891');

--INSERTANDO EN EMPLEADOS
insert into	empleado(empleado_id, fecha_ingreso, rfc, nombre, apellido_paterno, apellido_materno, empleado_supervisor_id,centro_id)	values(empleado_seq.nextval, to_date('09/12/2023','dd/mm/yyyy'), 'PEPH571012395', 'HILDA', 'PEREZ', 'APONTE', NULL, 5000);
insert into	empleado(empleado_id, fecha_ingreso, rfc, nombre, apellido_paterno, apellido_materno, empleado_supervisor_id,centro_id)	values(empleado_seq.nextval, to_date('09/12/2023','dd/mm/yyyy'), 'LULB630827514', 'BELEN', 'LUNA', 'RAMOS', NULL, 5005);
insert into	empleado(empleado_id, fecha_ingreso, rfc, nombre, apellido_paterno, apellido_materno, empleado_supervisor_id,centro_id)	values(empleado_seq.nextval, to_date('09/12/2023','dd/mm/yyyy'), 'SOSK730319742', 'KAROL', 'SOTELO', 'ROJAS', NULL, 5010);
insert into	empleado(empleado_id, fecha_ingreso, rfc, nombre, apellido_paterno, apellido_materno, empleado_supervisor_id,centro_id)	values(empleado_seq.nextval, to_date('09/12/2023','dd/mm/yyyy'), 'CACA840316535', 'ALBAKARINA', 'CABRERA', 'MORALES', NULL, 5015);
insert into	empleado(empleado_id, fecha_ingreso, rfc, nombre, apellido_paterno, apellido_materno, empleado_supervisor_id,centro_id)	values(empleado_seq.nextval, to_date('09/12/2023','dd/mm/yyyy'), 'RERL620922743', 'LUIS', 'REYNOZA', 'MENDIETA', NULL, 5020);
insert into	empleado(empleado_id, fecha_ingreso, rfc, nombre, apellido_paterno, apellido_materno, empleado_supervisor_id,centro_id)	values(empleado_seq.nextval, to_date('09/12/2023','dd/mm/yyyy'), 'TRTV04087631', 'VERONICA', 'TRUJILLO', 'LOPEZ', NULL, 5025);
insert into	empleado(empleado_id, fecha_ingreso, rfc, nombre, apellido_paterno, apellido_materno, empleado_supervisor_id,centro_id)	values(empleado_seq.nextval, to_date('09/12/2023','dd/mm/yyyy'), 'JAJB780124666', 'BYRON', 'JARA', 'ANDRADE', 503, 5000);
insert into	empleado(empleado_id, fecha_ingreso, rfc, nombre, apellido_paterno, apellido_materno, empleado_supervisor_id,centro_id)	values(empleado_seq.nextval, to_date('09/12/2023','dd/mm/yyyy'), 'OROF070915838', 'FRANCISCO', 'ORTIZ', 'MENDIETA', 503, 5020);
insert into	empleado(empleado_id, fecha_ingreso, rfc, nombre, apellido_paterno, apellido_materno, empleado_supervisor_id,centro_id)	values(empleado_seq.nextval, to_date('09/12/2023','dd/mm/yyyy'), 'PIPF73029923', 'FRANCISCO', 'PINEDA', 'CARDENAS', 500, 5015);
insert into	empleado(empleado_id, fecha_ingreso, rfc, nombre, apellido_paterno, apellido_materno, empleado_supervisor_id,centro_id)	values(empleado_seq.nextval, to_date('09/12/2023','dd/mm/yyyy'), 'TOTM970428745', 'MARTHA', 'TORRES', 'HERNANDEZ', 500, 5025);
insert into	empleado(empleado_id, fecha_ingreso, rfc, nombre, apellido_paterno, apellido_materno, empleado_supervisor_id,centro_id)	values(empleado_seq.nextval, to_date('09/12/2023','dd/mm/yyyy'), 'CACG060326746', 'GABRIELA', 'CABRERA', 'RIVERA', 501, 5005);
insert into	empleado(empleado_id, fecha_ingreso, rfc, nombre, apellido_paterno, apellido_materno, empleado_supervisor_id,centro_id)	values(empleado_seq.nextval, to_date('09/12/2023','dd/mm/yyyy'), 'MEMJ840822608', 'JESSICA', 'MENDIETA', 'RAMOS', 504, 5025);
insert into	empleado(empleado_id, fecha_ingreso, rfc, nombre, apellido_paterno, apellido_materno, empleado_supervisor_id,centro_id)	values(empleado_seq.nextval, to_date('09/12/2023','dd/mm/yyyy'), 'PEPM090320663', 'MARIA', 'PEREZ', 'TRONCOS', 505, 5025);
insert into	empleado(empleado_id, fecha_ingreso, rfc, nombre, apellido_paterno, apellido_materno, empleado_supervisor_id,centro_id)	values(empleado_seq.nextval, to_date('09/12/2023','dd/mm/yyyy'), 'HEHD930823730', 'DIANA', 'HERNANDEZ', 'BRAVO', 501, 5025);
insert into	empleado(empleado_id, fecha_ingreso, rfc, nombre, apellido_paterno, apellido_materno, empleado_supervisor_id,centro_id)	values(empleado_seq.nextval, to_date('09/12/2023','dd/mm/yyyy'), 'RIRL830610471', 'LINDA', 'RIVERA', 'MONTANA', 503, 5005);
insert into	empleado(empleado_id, fecha_ingreso, rfc, nombre, apellido_paterno, apellido_materno, empleado_supervisor_id,centro_id)	values(empleado_seq.nextval, to_date('09/12/2023','dd/mm/yyyy'), 'GOGH08126510', 'HILDA', 'GONZALEZ', 'REYES', 503, 5015);
insert into	empleado(empleado_id, fecha_ingreso, rfc, nombre, apellido_paterno, apellido_materno, empleado_supervisor_id,centro_id)	values(empleado_seq.nextval, to_date('09/12/2023','dd/mm/yyyy'), 'MEMM040414996', 'MARIA', 'MENDIETA', 'NOVILLO', 505, 5005);
insert into	empleado(empleado_id, fecha_ingreso, rfc, nombre, apellido_paterno, apellido_materno, empleado_supervisor_id,centro_id)	values(empleado_seq.nextval, to_date('09/12/2023','dd/mm/yyyy'), 'TOTB800710143', 'BYRON', 'TORRES', 'BRAVO', 500, 5000);
insert into	empleado(empleado_id, fecha_ingreso, rfc, nombre, apellido_paterno, apellido_materno, empleado_supervisor_id,centro_id)	values(empleado_seq.nextval, to_date('09/12/2023','dd/mm/yyyy'), 'VIVF500418106', 'FERNANDO', 'VILLAVICENCIO', 'CARDENAS', 504, 5020);
insert into	empleado(empleado_id, fecha_ingreso, rfc, nombre, apellido_paterno, apellido_materno, empleado_supervisor_id,centro_id)	values(empleado_seq.nextval, to_date('09/12/2023','dd/mm/yyyy'), 'LOLS98079251', 'SALMA', 'LOPEZ', 'ORTEGA', 500, 5015);

--INSERTANDO EN FARMACIAS
insert into farmacia(farmacia_id, pagina_web, rfc_fiscal, empleado_gerente_id)	values(5000,'https://www.pharmacyonline.com/sucursales/villa-hermosa/norte','PHO1012233X8',501);
insert into farmacia(farmacia_id, pagina_web, rfc_fiscal, empleado_gerente_id)	values(5005,'https://www.pharmacyonline.com/sucursales/coyoacan-alto/sur','PHO1112230AP',502);

--INSERTANDO EN ALMACENES
insert into almacen(almacen_id, almacen_contigencia) values(5010, NULL);
insert into almacen(almacen_id, almacen_contigencia) values(5015, 5010);

--INSERTANDO EN OFICINA
insert into oficina(oficina_id, nombre, telefono)	values(5020, 'Oficina Villa Real', '551663346');
insert into oficina(oficina_id, nombre, telefono)	values(5025, 'Oficina Castores A.C', '559057200');

--INSERTANDO EN INVENTARIO
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 41, 5000, 1);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 26, 5000, 2);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 126, 5000, 3);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 18, 5000, 4);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 90, 5000, 5);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 55, 5000, 6);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 43, 5000, 7);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 128, 5000, 8);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 140, 5000, 9);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 110, 5000, 10);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 54, 5000, 11);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 122, 5000, 12);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 74, 5000, 13);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 146, 5000, 14);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 60, 5000, 15);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 91, 5000, 16);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 142, 5000, 17);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 3, 5000, 18);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 62, 5000, 19);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 53, 5000, 20);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 143, 5000, 21);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 28, 5000, 22);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 138, 5000, 23);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 66, 5000, 24);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 75, 5000, 25);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 83, 5000, 26);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 70, 5000, 27);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 70, 5000, 28);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 21, 5000, 29);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 113, 5000, 30);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 88, 5005, 1);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 77, 5005, 2);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 95, 5005, 3);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 102, 5005, 4);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 98, 5005, 5);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 105, 5005, 6);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 136, 5005, 7);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 136, 5005, 8);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 117, 5005, 9);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 30, 5005, 10);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 102, 5005, 11);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 39, 5005, 12);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 53, 5005, 13);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 83, 5005, 14);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 118, 5005, 15);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 120, 5005, 16);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 129, 5005, 17);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 138, 5005, 18);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 61, 5005, 19);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 65, 5005, 20);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 128, 5005, 21);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 120, 5005, 22);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 35, 5005, 23);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 121, 5005, 24);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 144, 5005, 25);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 108, 5005, 26);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 140, 5005, 27);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 143, 5005, 28);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 49, 5005, 29);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 32, 5005, 30);

--INSERTANDO EN MOVIMIENTO
insert into movimiento(movimiento_id, fecha_movimiento, tipo_movimiento,almacen_centro_id,	empleado_responsable_id) values(movimiento_seq.nextval, to_date('12-12-2023', 'dd-mm-yyyy'), 'E', 5010, 510);
insert into movimiento(movimiento_id, fecha_movimiento, tipo_movimiento,almacen_centro_id,	empleado_responsable_id) values(movimiento_seq.nextval, to_date('15-12-2023', 'dd-mm-yyyy'), 'S', 5010, 502);
insert into movimiento(movimiento_id, fecha_movimiento, tipo_movimiento,almacen_centro_id,	empleado_responsable_id) values(movimiento_seq.nextval, to_date('12-12-2023', 'dd-mm-yyyy'), 'E', 5015, 508);
insert into movimiento(movimiento_id, fecha_movimiento, tipo_movimiento,almacen_centro_id,	empleado_responsable_id) values(movimiento_seq.nextval, to_date('15-12-2023', 'dd-mm-yyyy'), 'S', 5015, 507);

--INSERTANDO EN DETALLE_MOVIMIENTO
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 34, 1, 1);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 22, 1, 23);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 36, 1, 26);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 24, 1, 3);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 43, 1, 24);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 45, 1, 20);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 43, 1, 22);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 18, 2, 16);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 19, 2, 24);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 47, 2, 17);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 45, 2, 12);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 31, 2, 2);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 46, 2, 25);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 26, 3, 4);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 33, 3, 7);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 26, 3, 5);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 23, 3, 9);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 31, 3, 12);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 50, 3, 1);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 50, 3, 2);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 17, 4, 10);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 33, 4, 15);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 34, 4, 3);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 31, 4, 6);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 13, 4, 18);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 34, 4, 26);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 29, 4, 25);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 47, 4, 16);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 15, 4, 11);

--INSERTANDO EN PEDIDO
insert into pedido(pedido_id, fecha_status_actual, folio, fecha_pedido, 	importe_total, cliente_id, empleado_id, status_id) values(pedido_seq.nextval, to_date('14-12-2023 18:00:00', 'dd-mm-yyyy HH24:MM:SS'), 	'A1B2C3LM09AL3', to_date('10-12-2023 21:00:00', 'dd-mm-yyyy HH24:MM:SS'), 2070, 1000, 507, 3);
insert into pedido(pedido_id, fecha_status_actual, folio, fecha_pedido, 	importe_total, cliente_id, empleado_id, status_id) values(pedido_seq.nextval, to_date('11-12-2023 15:00:00', 'dd-mm-yyyy HH24:MM:SS'), 	'KKK2C4LO09AL3', to_date('11-12-2023 22:00:00', 'dd-mm-yyyy HH24:MM:SS'), 3000, 1001, 508, 1);
insert into pedido(pedido_id, fecha_status_actual, folio, fecha_pedido, 	importe_total, cliente_id, empleado_id, status_id) values(pedido_seq.nextval, to_date('12-12-2023 12:30:00', 'dd-mm-yyyy HH24:MM:SS'), 	'ZYZ0069O09AL3', to_date('12-12-2023 13:00:00', 'dd-mm-yyyy HH24:MM:SS'), 150, 1002, 507, 5);

--INSERTANDO EN HISTORICO_STATUS_PEDIDO
insert into historico_status_pedido(historico_status_pedido_id, 	fecha, status_id, pedido_id) values(historico_status_pedido_seq.nextval, 	to_date('10-12-2023 21:00:00', 'HH24:MM:SS'), 1, 5000);
insert into historico_status_pedido(historico_status_pedido_id, 	fecha, status_id, pedido_id) values(historico_status_pedido_seq.nextval, 	to_date('11-12-2023 12:00:00', 'HH24:MM:SS'), 2, 5000);
insert into historico_status_pedido(historico_status_pedido_id, 	fecha, status_id, pedido_id) values(historico_status_pedido_seq.nextval, 	to_date('11-12-2023 15:00:00', 'HH24:MM:SS'), 1, 5001);
insert into historico_status_pedido(historico_status_pedido_id, 	fecha, status_id, pedido_id) values(historico_status_pedido_seq.nextval, 	to_date('14-12-2023 17:48:00', 'HH24:MM:SS'), 3, 5000);
insert into historico_status_pedido(historico_status_pedido_id, 	fecha, status_id, pedido_id) values(historico_status_pedido_seq.nextval, 	to_date('12-12-2023 12:30:00', 'HH24:MM:SS'), 1, 5002);
insert into historico_status_pedido(historico_status_pedido_id, 	fecha, status_id, pedido_id) values(historico_status_pedido_seq.nextval, 	to_date('12-12-2023 13:00:00', 'HH24:MM:SS'), 5, 5002);

--INSERTANDO EN DETALLES_PEDIDO
insert into detalles_pedido(detalle_id, pedido_id, cantidad, med_pres_id,	farmacia_id) values(detalle_pedido_seq.nextval,1, 6, 7, 5005);
insert into detalles_pedido(detalle_id, pedido_id, cantidad, med_pres_id,	farmacia_id) values(detalle_pedido_seq.nextval,2, 6, 27, 5005);
insert into detalles_pedido(detalle_id, pedido_id, cantidad, med_pres_id,	farmacia_id) values(detalle_pedido_seq.nextval,2, 5, 17, 5005);
insert into detalles_pedido(detalle_id, pedido_id, cantidad, med_pres_id,	farmacia_id) values(detalle_pedido_seq.nextval,2, 3, 29, 5005);
insert into detalles_pedido(detalle_id, pedido_id, cantidad, med_pres_id,	farmacia_id) values(detalle_pedido_seq.nextval,2, 9, 9, 5000);
insert into detalles_pedido(detalle_id, pedido_id, cantidad, med_pres_id,	farmacia_id) values(detalle_pedido_seq.nextval,3, 4, 22, 5000);
insert into detalles_pedido(detalle_id, pedido_id, cantidad, med_pres_id,	farmacia_id) values(detalle_pedido_seq.nextval,3, 7, 25, 5000);
insert into detalles_pedido(detalle_id, pedido_id, cantidad, med_pres_id,	farmacia_id) values(detalle_pedido_seq.nextval,3, 8, 19, 5000);
insert into detalles_pedido(detalle_id, pedido_id, cantidad, med_pres_id,	farmacia_id) values(detalle_pedido_seq.nextval,3, 2, 26, 5000);
insert into detalles_pedido(detalle_id, pedido_id, cantidad, med_pres_id,	farmacia_id) values(detalle_pedido_seq.nextval,3, 10, 12, 5005);

--INSERTANDO EN UBICACION_PEDIDO
insert into ubicacion_pedido(ubicacion_pedido_id, fecha_ubicacion, 	latitud, longitud, pedido_id) values(ubicacion_pedido_seq.nextval, to_date('14-12-2023 17:00:00', 'dd-mm-yyyy hh24:mm:ss'), -99.15607157658494, 19.34338476218326, 	5000);
insert into ubicacion_pedido(ubicacion_pedido_id, fecha_ubicacion, 	latitud, longitud, pedido_id) values(ubicacion_pedido_seq.nextval, to_date('14-12-2023 17:03:00', 'dd-mm-yyyy hh24:mm:ss'), -99.15407022810727, 19.34154284605598, 	5000);
insert into ubicacion_pedido(ubicacion_pedido_id, fecha_ubicacion, 	latitud, longitud, pedido_id) values(ubicacion_pedido_seq.nextval, to_date('14-12-2023 17:06:00', 'dd-mm-yyyy hh24:mm:ss'), -99.15182155258056, 19.33930941008235, 	5000);
insert into ubicacion_pedido(ubicacion_pedido_id, fecha_ubicacion, 	latitud, longitud, pedido_id) values(ubicacion_pedido_seq.nextval, to_date('14-12-2023 17:09:00', 'dd-mm-yyyy hh24:mm:ss'), -99.15016788430847, 19.33731660645429, 	5000);
insert into ubicacion_pedido(ubicacion_pedido_id, fecha_ubicacion, 	latitud, longitud, pedido_id) values(ubicacion_pedido_seq.nextval, to_date('14-12-2023 17:12:00', 'dd-mm-yyyy hh24:mm:ss'), -99.1507292782621, 19.33534622547683, 	5000);
insert into ubicacion_pedido(ubicacion_pedido_id, fecha_ubicacion, 	latitud, longitud, pedido_id) values(ubicacion_pedido_seq.nextval, to_date('14-12-2023 17:15:00', 'dd-mm-yyyy hh24:mm:ss'), -99.15295236108634, 19.33438897494079, 	5000);
insert into ubicacion_pedido(ubicacion_pedido_id, fecha_ubicacion, 	latitud, longitud, pedido_id) values(ubicacion_pedido_seq.nextval, to_date('14-12-2023 17:18:00', 'dd-mm-yyyy hh24:mm:ss'), -99.15644817047662, 19.33513520305427, 	5000);
insert into ubicacion_pedido(ubicacion_pedido_id, fecha_ubicacion, 	latitud, longitud, pedido_id) values(ubicacion_pedido_seq.nextval, to_date('14-12-2023 17:21:00', 'dd-mm-yyyy hh24:mm:ss'), -99.16146810322113, 19.33538678253029, 	5000);
insert into ubicacion_pedido(ubicacion_pedido_id, fecha_ubicacion, 	latitud, longitud, pedido_id) values(ubicacion_pedido_seq.nextval, to_date('14-12-2023 17:24:00', 'dd-mm-yyyy hh24:mm:ss'), -99.16603612832765, 19.33567721959386, 	5000);
insert into ubicacion_pedido(ubicacion_pedido_id, fecha_ubicacion, 	latitud, longitud, pedido_id) values(ubicacion_pedido_seq.nextval, to_date('14-12-2023 17:27:00', 'dd-mm-yyyy hh24:mm:ss'), -99.17231423680987, 19.33598863045948, 	5000);
insert into ubicacion_pedido(ubicacion_pedido_id, fecha_ubicacion, 	latitud, longitud, pedido_id) values(ubicacion_pedido_seq.nextval, to_date('14-12-2023 17:30:00', 'dd-mm-yyyy hh24:mm:ss'), -99.17591849822617, 19.33625972052518, 	5000);
insert into ubicacion_pedido(ubicacion_pedido_id, fecha_ubicacion, 	latitud, longitud, pedido_id) values(ubicacion_pedido_seq.nextval, to_date('14-12-2023 17:33:00', 'dd-mm-yyyy hh24:mm:ss'), -99.1772456587865, 19.33374388046209, 	5000);
insert into ubicacion_pedido(ubicacion_pedido_id, fecha_ubicacion, 	latitud, longitud, pedido_id) values(ubicacion_pedido_seq.nextval, to_date('14-12-2023 17:36:00', 'dd-mm-yyyy hh24:mm:ss'), -99.17831268434857, 19.33342628917257, 	5000);
insert into ubicacion_pedido(ubicacion_pedido_id, fecha_ubicacion, 	latitud, longitud, pedido_id) values(ubicacion_pedido_seq.nextval, to_date('14-12-2023 17:39:00', 'dd-mm-yyyy hh24:mm:ss'), -99.17963098468068, 19.33103010029522, 	5000);
insert into ubicacion_pedido(ubicacion_pedido_id, fecha_ubicacion, 	latitud, longitud, pedido_id) values(ubicacion_pedido_seq.nextval, to_date('14-12-2023 17:42:00', 'dd-mm-yyyy hh24:mm:ss'), -99.1822695533242, 19.33091142439965, 	5000);
insert into ubicacion_pedido(ubicacion_pedido_id, fecha_ubicacion, 	latitud, longitud, pedido_id) values(ubicacion_pedido_seq.nextval, to_date('14-12-2023 17:45:00', 'dd-mm-yyyy hh24:mm:ss'), -99.1835888362079, 19.33085207221867, 	5000);
insert into ubicacion_pedido(ubicacion_pedido_id, fecha_ubicacion, 	latitud, longitud, pedido_id) values(ubicacion_pedido_seq.nextval, to_date('14-12-2023 17:48:00', 'dd-mm-yyyy hh24:mm:ss'), -99.18490811813268, 19.33079271054894, 	5000);
