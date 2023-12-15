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
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id, costo_unitario)	  values(medicamento_presentacion_seq.nextval, 200, 100, 172);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id, costo_unitario)	  values(medicamento_presentacion_seq.nextval, 200, 101, 413);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id, costo_unitario)	  values(medicamento_presentacion_seq.nextval, 201, 102, 307);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id, costo_unitario)	  values(medicamento_presentacion_seq.nextval, 201, 103, 126);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id, costo_unitario)	  values(medicamento_presentacion_seq.nextval, 201, 100, 244);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id, costo_unitario)	  values(medicamento_presentacion_seq.nextval, 201, 104, 429);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id, costo_unitario)	  values(medicamento_presentacion_seq.nextval, 201, 105, 489);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id, costo_unitario)	  values(medicamento_presentacion_seq.nextval, 201, 106, 74);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id, costo_unitario)	  values(medicamento_presentacion_seq.nextval, 201, 107, 146);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id, costo_unitario)	  values(medicamento_presentacion_seq.nextval, 202, 108, 374);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id, costo_unitario)	  values(medicamento_presentacion_seq.nextval, 203, 102, 319);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id, costo_unitario)	  values(medicamento_presentacion_seq.nextval, 203, 109, 104);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id, costo_unitario)	  values(medicamento_presentacion_seq.nextval, 204, 102, 142);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id, costo_unitario)	  values(medicamento_presentacion_seq.nextval, 204, 100, 440);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id, costo_unitario)	  values(medicamento_presentacion_seq.nextval, 204, 110, 219);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id, costo_unitario)	  values(medicamento_presentacion_seq.nextval, 205, 110, 455);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id, costo_unitario)	  values(medicamento_presentacion_seq.nextval, 206, 111, 119);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id, costo_unitario)	  values(medicamento_presentacion_seq.nextval, 207, 112, 413);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id, costo_unitario)	  values(medicamento_presentacion_seq.nextval, 208, 112, 427);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id, costo_unitario)	  values(medicamento_presentacion_seq.nextval, 209, 110, 149);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id, costo_unitario)	  values(medicamento_presentacion_seq.nextval, 209, 113, 72);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id, costo_unitario)	  values(medicamento_presentacion_seq.nextval, 210, 107, 317);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id, costo_unitario)	  values(medicamento_presentacion_seq.nextval, 210, 110, 88);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id, costo_unitario)	  values(medicamento_presentacion_seq.nextval, 211, 112, 95);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id, costo_unitario)	  values(medicamento_presentacion_seq.nextval, 212, 100, 101);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id, costo_unitario)	  values(medicamento_presentacion_seq.nextval, 212, 104, 95);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id, costo_unitario)	  values(medicamento_presentacion_seq.nextval, 213, 100, 242);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id, costo_unitario)	  values(medicamento_presentacion_seq.nextval, 213, 104, 67);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id, costo_unitario)	  values(medicamento_presentacion_seq.nextval, 213, 105, 153);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id, costo_unitario)	  values(medicamento_presentacion_seq.nextval, 214, 100, 144);

--INSERTANDO EN CLIENTE
insert into cliente values(cliente_seq.nextval, '550972015', 'MOMC861215973', NULL, 'Calle Mole 7, Colonia Coyoacán', 'CARLOS', 'MORALES', 'MARTINEZ', 'LUIS086@outlook.com');
insert into cliente values(cliente_seq.nextval, '550930853', 'REPE790718841', NULL, 'Calle Pizza 32, Colonia Berlín', 'ESTEBAN', 'REYES', 'PINEDA', 'KEYLA732@yahoo.com');
insert into cliente values(cliente_seq.nextval, '558321014', 'RUEF530510374', NULL, 'Calle Pasta 19, Colonia Viena', 'FRIDA', 'RUIZ', 'ESTRADA', 'FRIDA549@outlook.com');
insert into cliente values(cliente_seq.nextval, '553314654', 'CEAJ860516629', NULL, 'Calle Queso 132, Colonia Nápoles', 'JORGE', 'CEPEDA', 'ANDRADE', 'PEDRO804@yahoo.com');
insert into cliente values(cliente_seq.nextval, '558105002', 'ARAG961120959', 'GOAA1A785RWJCKM2HA', 'Calle Queso 132, Colonia Nápoles', 'GONZALO', 'ARCOS', 'APONTE', 'EDUARDO181@gmail.com');
insert into cliente values(cliente_seq.nextval, '551582466', 'APOK771123597', 'KEAOW59IIUSVLSQI6R', 'Calle Tamales 6, Colonia Narvarte', 'KEYLA', 'APONTE', 'ORTIZ', 'VERONICA449@ingenieria.unam.edu');
insert into cliente values(cliente_seq.nextval, '551029659', 'ARRL860516527', 'LIARJILY3EMLU1LUIY', 'Calle Burritos 2, Colonia Polanco', 'LINDA', 'ARCOS', 'REYES', 'BELEN323@gmail.com');
insert into cliente values(cliente_seq.nextval, '552494028', 'REGM96043332', 'MARGEDUVJA8EBKPGCE', 'Calle Queso 132, Colonia Nápoles', 'MARIA', 'REYNALDO', 'GUERRERO', 'FRIDA782@ingenieria.unam.edu');
insert into cliente values(cliente_seq.nextval, '555090409', 'CARY620216207', 'YACR3A9FNOVLC74H7O', 'Calle Pizza 32, Colonia Berlín', 'YAEL', 'CAMPOVERDE', 'REYES', 'YAEL788@yahoo.com');
insert into cliente values(cliente_seq.nextval, '551995289', 'GAJJ820124795', 'JOGJ4K1GE2MDBXUMVM', 'Calle Hamburguesa 42, Colonia Londres', 'JORGE', 'GARCIA', 'JARA', 'MARTHA007@ingenieria.unam.edu');
insert into cliente values(cliente_seq.nextval, '551319949', 'RURJ560110736', NULL, 'Calle Quesadilla 3, Colonia Roma Norte', 'JESSICA', 'RUIZ', 'RIVERA', 'BELEN917@comunidad.unam.mx');
insert into cliente values(cliente_seq.nextval, '555604814', 'RIRE740825993', NULL, 'Calle Burritos 2, Colonia Polanco', 'ELLENA', 'RIVERA', 'RIVERA', 'ESTEBAN607@ingenieria.unam.edu');
insert into cliente values(cliente_seq.nextval, '553203270', 'REMB801010930', 'BORMJZJ63Z142MG6MG', 'Calle Burritos 2, Colonia Polanco', 'BOB', 'REYNOZA', 'MONTANA', 'MIKE731@ingenieria.unam.edu');
insert into cliente values(cliente_seq.nextval, '553763261', 'GAMD871022437', 'DAGMEN4LKJXN8NI4VK', 'Calle Hamburguesa 42, Colonia Londres', 'DANIEL', 'GARCIA', 'MORALES', 'LINDA713@yahoo.com');
insert into cliente values(cliente_seq.nextval, '558327844', 'LUGC030814580', NULL, 'Calle Enchilada 10, Colonia Barcelona', 'CARLOS', 'LUNA', 'GONZALEZ', 'KEYLA980@gmail.com');
insert into cliente values(cliente_seq.nextval, '557639667', 'CARP710623728', 'PACRI7T7PXCGNAHGJQ', 'Calle Pizza 32, Colonia Berlín', 'PABLO', 'CARDENAS', 'RAMOS', 'SAM313@comunidad.unam.mx');
insert into cliente values(cliente_seq.nextval, '557839473', 'DEMS050619254', 'SADM8V6PT9JW3399A1', 'Calle Ensalada 8, Colonia Santa Fe', 'SALMA', 'DELGADO', 'MONTANA', 'JUAN651@yahoo.com');

--INSERTANDO EN DATOS_TARJETA
insert into datos_tarjeta(tarjeta_id, num_tarjeta, mes_expiracion, anio_expiracion, cliente_id)		values(datos_tarjeta_seq.nextval, 140109605243, 12, 2020, 1000);
insert into datos_tarjeta(tarjeta_id, num_tarjeta, mes_expiracion, anio_expiracion, cliente_id)		values(datos_tarjeta_seq.nextval, 193564301731, 09, 2020, 1001);
insert into datos_tarjeta(tarjeta_id, num_tarjeta, mes_expiracion, anio_expiracion, cliente_id)		values(datos_tarjeta_seq.nextval, 107919396184, 01, 2023, 1002);
insert into datos_tarjeta(tarjeta_id, num_tarjeta, mes_expiracion, anio_expiracion, cliente_id)		values(datos_tarjeta_seq.nextval, 195437196384, 01, 2016, 1003);
insert into datos_tarjeta(tarjeta_id, num_tarjeta, mes_expiracion, anio_expiracion, cliente_id)		values(datos_tarjeta_seq.nextval, 167861255088, 03, 2032, 1004);
insert into datos_tarjeta(tarjeta_id, num_tarjeta, mes_expiracion, anio_expiracion, cliente_id)		values(datos_tarjeta_seq.nextval, 140267533876, 02, 2011, 1005);
insert into datos_tarjeta(tarjeta_id, num_tarjeta, mes_expiracion, anio_expiracion, cliente_id)		values(datos_tarjeta_seq.nextval, 199356546790, 02, 2029, 1006);
insert into datos_tarjeta(tarjeta_id, num_tarjeta, mes_expiracion, anio_expiracion, cliente_id)		values(datos_tarjeta_seq.nextval, 138280876879, 01, 2017, 1007);
insert into datos_tarjeta(tarjeta_id, num_tarjeta, mes_expiracion, anio_expiracion, cliente_id)		values(datos_tarjeta_seq.nextval, 147554156470, 04, 2032, 1008);
insert into datos_tarjeta(tarjeta_id, num_tarjeta, mes_expiracion, anio_expiracion, cliente_id)		values(datos_tarjeta_seq.nextval, 118849018895, 11, 2033, 1009);

--INSERTANDO EN STATUS_PEDIDO
insert into status_pedido(status_id, clave, descripcion)	values(status_pedido_seq.nextval, 'CAPTURADO', 'El pedido se ha registrado de manera exitosa y esta espera de envio.');
insert into status_pedido(status_id, clave, descripcion)	values(status_pedido_seq.nextval, 'EN TRANSITO', 'El pedido esta en curso para ser entregado al cliente.');
insert into status_pedido(status_id, clave, descripcion)	values(status_pedido_seq.nextval, 'ENTREGADO', 'El cliente recibio el pedido y este fue aceptado.');
insert into status_pedido(status_id, clave, descripcion)	values(status_pedido_seq.nextval, 'DEVUELTO', 'El cliente encontro algun error con el pedido y fue devuelto');
insert into status_pedido(status_id, clave, descripcion)	values(status_pedido_seq.nextval, 'CANCELADO', 'Ocurrio algun error que ocasiono que se cancelara el pedido');

--INSERTANDO EN CENTRO_OPERACION
insert into centro_operacion(centro_id, es_farmacia, es_almacen, es_oficina, clave, latitud, longitud, telefono)	 values(centro_operacion_seq.nextval, 1, 0, 0, 'FFEIVC', 19.39, 99.087306, '550207465');
insert into centro_operacion(centro_id, es_farmacia, es_almacen, es_oficina, clave, latitud, longitud, telefono)	 values(centro_operacion_seq.nextval, 1, 0, 0, 'FF7RAJ', 19.409056, 99.131389, '559409254');
insert into centro_operacion(centro_id, es_farmacia, es_almacen, es_oficina, clave, latitud, longitud, telefono)	 values(centro_operacion_seq.nextval, 0, 1, 0, 'AAW2O7', 19.378444, 99.140667, '554191904');
insert into centro_operacion(centro_id, es_farmacia, es_almacen, es_oficina, clave, latitud, longitud, telefono)	 values(centro_operacion_seq.nextval, 0, 1, 0, 'AA9YDM', 19.374556, 99.18275, '556624770');
insert into centro_operacion(centro_id, es_farmacia, es_almacen, es_oficina, clave, latitud, longitud, telefono)	 values(centro_operacion_seq.nextval, 0, 0, 1, 'OOZLIW', 19.429611, 99.190278, '553275446');
insert into centro_operacion(centro_id, es_farmacia, es_almacen, es_oficina, clave, latitud, longitud, telefono)	 values(centro_operacion_seq.nextval, 0, 0, 1, 'OOL4S5', 19.490778, 99.103778, '558835393');

--INSERTANDO EN EMPLEADOS
insert into	empleado(empleado_id, fecha_ingreso, rfc, nombre, apellido_paterno, apellido_materno, empleado_supervisor_id,centro_id)	values(empleado_seq.nextval, to_date('09/12/2023','dd/mm/yyyy'), 'VIRS02035562', 'SANTIAGO', 'VILLAVICENCIO', 'REYES', NULL, 5000);
insert into	empleado(empleado_id, fecha_ingreso, rfc, nombre, apellido_paterno, apellido_materno, empleado_supervisor_id,centro_id)	values(empleado_seq.nextval, to_date('09/12/2023','dd/mm/yyyy'), 'BRLL07103980', 'LUCILA', 'BRAVO', 'LOPEZ', NULL, 5005);
insert into	empleado(empleado_id, fecha_ingreso, rfc, nombre, apellido_paterno, apellido_materno, empleado_supervisor_id,centro_id)	values(empleado_seq.nextval, to_date('09/12/2023','dd/mm/yyyy'), 'GOPE770925678', 'EDUARDO', 'GONZALEZ', 'PINEDA', NULL, 5010);
insert into	empleado(empleado_id, fecha_ingreso, rfc, nombre, apellido_paterno, apellido_materno, empleado_supervisor_id,centro_id)	values(empleado_seq.nextval, to_date('09/12/2023','dd/mm/yyyy'), 'RIMC55066440', 'CARMEN', 'RIVERA', 'MONTANA', NULL, 5015);
insert into	empleado(empleado_id, fecha_ingreso, rfc, nombre, apellido_paterno, apellido_materno, empleado_supervisor_id,centro_id)	values(empleado_seq.nextval, to_date('09/12/2023','dd/mm/yyyy'), 'CACK020122895', 'KEYLA', 'CAMPOVERDE', 'CARDENAS', NULL, 5020);
insert into	empleado(empleado_id, fecha_ingreso, rfc, nombre, apellido_paterno, apellido_materno, empleado_supervisor_id,centro_id)	values(empleado_seq.nextval, to_date('09/12/2023','dd/mm/yyyy'), 'GULJ561019514', 'JOSE', 'GUERRERO', 'LOPEZ', NULL, 5025);
insert into	empleado(empleado_id, fecha_ingreso, rfc, nombre, apellido_paterno, apellido_materno, empleado_supervisor_id,centro_id)	values(empleado_seq.nextval, to_date('09/12/2023','dd/mm/yyyy'), 'GUAJ570327928', 'JUAN', 'GUERRERO', 'ASTURIO', 502, 5020);
insert into	empleado(empleado_id, fecha_ingreso, rfc, nombre, apellido_paterno, apellido_materno, empleado_supervisor_id,centro_id)	values(empleado_seq.nextval, to_date('09/12/2023','dd/mm/yyyy'), 'MOCC591213341', 'CARLOS', 'MORALES', 'CABRERA', 505, 5015);
insert into	empleado(empleado_id, fecha_ingreso, rfc, nombre, apellido_paterno, apellido_materno, empleado_supervisor_id,centro_id)	values(empleado_seq.nextval, to_date('09/12/2023','dd/mm/yyyy'), 'MAMP811220839', 'PATRICIA', 'MARTINEZ', 'MORALES', 502, 5005);
insert into	empleado(empleado_id, fecha_ingreso, rfc, nombre, apellido_paterno, apellido_materno, empleado_supervisor_id,centro_id)	values(empleado_seq.nextval, to_date('09/12/2023','dd/mm/yyyy'), 'LUTG501028347', 'GONZALO', 'LUNA', 'TORRES', 503, 5015);
insert into	empleado(empleado_id, fecha_ingreso, rfc, nombre, apellido_paterno, apellido_materno, empleado_supervisor_id,centro_id)	values(empleado_seq.nextval, to_date('09/12/2023','dd/mm/yyyy'), 'PALS83073123', 'SAM', 'PALMA', 'LOPEZ', 503, 5015);
insert into	empleado(empleado_id, fecha_ingreso, rfc, nombre, apellido_paterno, apellido_materno, empleado_supervisor_id,centro_id)	values(empleado_seq.nextval, to_date('09/12/2023','dd/mm/yyyy'), 'MOBF881012132', 'FERNANDA', 'MONTANA', 'BRAVO', 505, 5010);
insert into	empleado(empleado_id, fecha_ingreso, rfc, nombre, apellido_paterno, apellido_materno, empleado_supervisor_id,centro_id)	values(empleado_seq.nextval, to_date('09/12/2023','dd/mm/yyyy'), 'LOCA55059210', 'ALBAKARINA', 'LOPEZ', 'CAMPOVERDE', 504, 5025);
insert into	empleado(empleado_id, fecha_ingreso, rfc, nombre, apellido_paterno, apellido_materno, empleado_supervisor_id,centro_id)	values(empleado_seq.nextval, to_date('09/12/2023','dd/mm/yyyy'), 'GURJ63118768', 'JESSICA', 'GUERRERO', 'RAMOS', 504, 5000);
insert into	empleado(empleado_id, fecha_ingreso, rfc, nombre, apellido_paterno, apellido_materno, empleado_supervisor_id,centro_id)	values(empleado_seq.nextval, to_date('09/12/2023','dd/mm/yyyy'), 'NOAA660813665', 'ALBAKARINA', 'NOLASCO', 'ARCOS', 504, 5015);
insert into	empleado(empleado_id, fecha_ingreso, rfc, nombre, apellido_paterno, apellido_materno, empleado_supervisor_id,centro_id)	values(empleado_seq.nextval, to_date('09/12/2023','dd/mm/yyyy'), 'TOCS89039146', 'SANTIAGO', 'TORRES', 'CASTILLO', 502, 5025);
insert into	empleado(empleado_id, fecha_ingreso, rfc, nombre, apellido_paterno, apellido_materno, empleado_supervisor_id,centro_id)	values(empleado_seq.nextval, to_date('09/12/2023','dd/mm/yyyy'), 'BRGS560420660', 'SALMA', 'BRAVO', 'GUERRERO', 501, 5020);
insert into	empleado(empleado_id, fecha_ingreso, rfc, nombre, apellido_paterno, apellido_materno, empleado_supervisor_id,centro_id)	values(empleado_seq.nextval, to_date('09/12/2023','dd/mm/yyyy'), 'RUCB720924419', 'BYRON', 'RUIZ', 'CUEVA', 502, 5000);
insert into	empleado(empleado_id, fecha_ingreso, rfc, nombre, apellido_paterno, apellido_materno, empleado_supervisor_id,centro_id)	values(empleado_seq.nextval, to_date('09/12/2023','dd/mm/yyyy'), 'SOPJ56019266', 'JORGE', 'SOTELO', 'PEREZ', 501, 5015);
insert into	empleado(empleado_id, fecha_ingreso, rfc, nombre, apellido_paterno, apellido_materno, empleado_supervisor_id,centro_id)	values(empleado_seq.nextval, to_date('09/12/2023','dd/mm/yyyy'), 'ROLS990719889', 'SAM', 'ROJAS', 'LOPEZ', 504, 5010);

--INSERTANDO EN FARMACIAS
insert into farmacia(farmacia_id, pagina_web, rfc_fiscal, empleado_gerente_id)	values(5000,'https://www.pharmacyonline.com/sucursales/villa-hermosa/norte','PHO1012233X8',501);
insert into farmacia(farmacia_id, pagina_web, rfc_fiscal, empleado_gerente_id)	values(5005,'https://www.pharmacyonline.com/sucursales/coyoacan-alto/sur','PHO1112230AP',502);

--INSERTANDO EN ALMACENES
insert into almacen(almacen_id, almacen_contigencia_id, tipo_almacen) values(5010, NULL, 'C');
insert into almacen(almacen_id, almacen_contigencia_id, tipo_almacen) values(5015, 5010, 'M');

--INSERTANDO EN OFICINA
insert into oficina(oficina_id, nombre, telefono)	values(5020, 'Oficina Villa Real', '558443519');
insert into oficina(oficina_id, nombre, telefono)	values(5025, 'Oficina Castores A.C', '551948615');

--INSERTANDO EN INVENTARIO
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 135, 5000, 1);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 147, 5000, 2);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 143, 5000, 3);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 24, 5000, 4);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 60, 5000, 5);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 77, 5000, 6);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 17, 5000, 7);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 108, 5000, 8);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 66, 5000, 9);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 45, 5000, 10);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 1, 5000, 11);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 0, 5000, 12);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 30, 5000, 13);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 90, 5000, 14);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 116, 5000, 15);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 90, 5000, 16);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 5, 5000, 17);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 131, 5000, 18);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 0, 5000, 19);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 93, 5000, 20);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 12, 5000, 21);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 44, 5000, 22);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 148, 5000, 23);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 64, 5000, 24);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 42, 5000, 25);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 135, 5000, 26);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 124, 5000, 27);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 106, 5000, 28);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 3, 5000, 29);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 47, 5000, 30);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 20, 5005, 1);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 74, 5005, 2);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 128, 5005, 3);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 1, 5005, 4);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 116, 5005, 5);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 76, 5005, 6);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 56, 5005, 7);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 13, 5005, 8);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 24, 5005, 9);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 128, 5005, 10);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 55, 5005, 11);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 29, 5005, 12);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 34, 5005, 13);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 103, 5005, 14);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 104, 5005, 15);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 61, 5005, 16);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 68, 5005, 17);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 63, 5005, 18);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 124, 5005, 19);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 98, 5005, 20);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 59, 5005, 21);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 12, 5005, 22);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 120, 5005, 23);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 138, 5005, 24);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 96, 5005, 25);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 118, 5005, 26);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 125, 5005, 27);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 48, 5005, 28);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 55, 5005, 29);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 62, 5005, 30);

--INSERTANDO EN MOVIMIENTO
insert into movimiento(movimiento_id, fecha_movimiento, tipo_movimiento,almacen_id,	empleado_responsable_id) values(movimiento_seq.nextval, to_date('12-12-2023', 'dd-mm-yyyy'), 'E', 5010, 504);
insert into movimiento(movimiento_id, fecha_movimiento, tipo_movimiento,almacen_id,	empleado_responsable_id) values(movimiento_seq.nextval, to_date('15-12-2023', 'dd-mm-yyyy'), 'S', 5010, 503);
insert into movimiento(movimiento_id, fecha_movimiento, tipo_movimiento,almacen_id,	empleado_responsable_id) values(movimiento_seq.nextval, to_date('12-12-2023', 'dd-mm-yyyy'), 'E', 5015, 507);
insert into movimiento(movimiento_id, fecha_movimiento, tipo_movimiento,almacen_id,	empleado_responsable_id) values(movimiento_seq.nextval, to_date('15-12-2023', 'dd-mm-yyyy'), 'S', 5015, 508);

--INSERTANDO EN DETALLE_MOVIMIENTO
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 41, 1, 18);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 38, 1, 2);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 32, 1, 10);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 23, 1, 12);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 37, 1, 9);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 48, 1, 21);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 47, 2, 16);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 18, 2, 10);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 50, 2, 29);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 44, 2, 24);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 25, 2, 3);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 17, 3, 4);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 22, 3, 27);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 12, 3, 6);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 39, 3, 21);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 44, 3, 24);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 39, 3, 5);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 17, 3, 2);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 47, 3, 17);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 21, 3, 13);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 25, 3, 29);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 21, 4, 29);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 11, 4, 26);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 30, 4, 15);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 10, 4, 27);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 33, 4, 23);

--INSERTANDO EN PEDIDO
insert into pedido(pedido_id, fecha_status_actual, folio, fecha_pedido, 	importe_total, cliente_id, empleado_id, status_id) values(pedido_seq.nextval, to_date('14-12-2023 18:00:00', 'dd-mm-yyyy HH24:MI:SS'), 	'A1B2C3LM09AL3', to_date('10-12-2023 21:00:00', 'dd-mm-yyyy HH24:MI:SS'), 2070, 1000, 507, 3);
insert into pedido(pedido_id, fecha_status_actual, folio, fecha_pedido, 	importe_total, cliente_id, empleado_id, status_id) values(pedido_seq.nextval, to_date('11-12-2023 15:00:00', 'dd-mm-yyyy HH24:MI:SS'), 	'KKK2C4LO09AL3', to_date('11-12-2023 22:00:00', 'dd-mm-yyyy HH24:MI:SS'), 3000, 1001, 508, 1);
insert into pedido(pedido_id, fecha_status_actual, folio, fecha_pedido, 	importe_total, cliente_id, empleado_id, status_id) values(pedido_seq.nextval, to_date('12-12-2023 12:30:00', 'dd-mm-yyyy HH24:MI:SS'), 	'ZYZ0069O09AL3', to_date('12-12-2023 13:00:00', 'dd-mm-yyyy HH24:MI:SS'), 150, 1002, 507, 5);

--INSERTANDO EN HISTORICO_STATUS_PEDIDO
insert into historico_status_pedido(historico_status_pedido_id, 	fecha, status_id, pedido_id) values(historico_status_pedido_seq.nextval, 	to_date('10-12-2023 21:00:00', 'dd-mm-yyyy HH24:MI:SS'), 1, 5000);
insert into historico_status_pedido(historico_status_pedido_id, 	fecha, status_id, pedido_id) values(historico_status_pedido_seq.nextval, 	to_date('11-12-2023 12:00:00', 'dd-mm-yyyy HH24:MI:SS'), 2, 5000);
insert into historico_status_pedido(historico_status_pedido_id, 	fecha, status_id, pedido_id) values(historico_status_pedido_seq.nextval, 	to_date('11-12-2023 15:00:00', 'dd-mm-yyyy HH24:MI:SS'), 1, 5001);
insert into historico_status_pedido(historico_status_pedido_id, 	fecha, status_id, pedido_id) values(historico_status_pedido_seq.nextval, 	to_date('14-12-2023 17:48:00', 'dd-mm-yyyy HH24:MI:SS'), 3, 5000);
insert into historico_status_pedido(historico_status_pedido_id, 	fecha, status_id, pedido_id) values(historico_status_pedido_seq.nextval, 	to_date('12-12-2023 12:30:00', 'dd-mm-yyyy HH24:MI:SS'), 1, 5002);
insert into historico_status_pedido(historico_status_pedido_id, 	fecha, status_id, pedido_id) values(historico_status_pedido_seq.nextval, 	to_date('12-12-2023 13:00:00', 'dd-mm-yyyy HH24:MI:SS'), 5, 5002);

--INSERTANDO EN DETALLES_PEDIDO
insert into detalles_pedido(detalle_id, pedido_id, cantidad, med_pres_id,	farmacia_id) values(detalle_pedido_seq.nextval,5000, 4, 15, 5005);
insert into detalles_pedido(detalle_id, pedido_id, cantidad, med_pres_id,	farmacia_id) values(detalle_pedido_seq.nextval,5001, 5, 4, 5000);
insert into detalles_pedido(detalle_id, pedido_id, cantidad, med_pres_id,	farmacia_id) values(detalle_pedido_seq.nextval,5002, 5, 10, 5000);
insert into detalles_pedido(detalle_id, pedido_id, cantidad, med_pres_id,	farmacia_id) values(detalle_pedido_seq.nextval,5002, 1, 16, 5000);

--INSERTANDO EN UBICACION_PEDIDO
insert into ubicacion_pedido(ubicacion_pedido_id, fecha_ubicacion, 	latitud, longitud, pedido_id) values(ubicacion_pedido_seq.nextval, to_date('14-12-2023 17:00:00', 'dd-mm-yyyy hh24:mi:ss'), -99.15607157658494, 19.34338476218326, 	5000);
insert into ubicacion_pedido(ubicacion_pedido_id, fecha_ubicacion, 	latitud, longitud, pedido_id) values(ubicacion_pedido_seq.nextval, to_date('14-12-2023 17:03:00', 'dd-mm-yyyy hh24:mi:ss'), -99.15407022810727, 19.34154284605598, 	5000);
insert into ubicacion_pedido(ubicacion_pedido_id, fecha_ubicacion, 	latitud, longitud, pedido_id) values(ubicacion_pedido_seq.nextval, to_date('14-12-2023 17:06:00', 'dd-mm-yyyy hh24:mi:ss'), -99.15182155258056, 19.33930941008235, 	5000);
insert into ubicacion_pedido(ubicacion_pedido_id, fecha_ubicacion, 	latitud, longitud, pedido_id) values(ubicacion_pedido_seq.nextval, to_date('14-12-2023 17:09:00', 'dd-mm-yyyy hh24:mi:ss'), -99.15016788430847, 19.33731660645429, 	5000);
insert into ubicacion_pedido(ubicacion_pedido_id, fecha_ubicacion, 	latitud, longitud, pedido_id) values(ubicacion_pedido_seq.nextval, to_date('14-12-2023 17:12:00', 'dd-mm-yyyy hh24:mi:ss'), -99.1507292782621, 19.33534622547683, 	5000);
insert into ubicacion_pedido(ubicacion_pedido_id, fecha_ubicacion, 	latitud, longitud, pedido_id) values(ubicacion_pedido_seq.nextval, to_date('14-12-2023 17:15:00', 'dd-mm-yyyy hh24:mi:ss'), -99.15295236108634, 19.33438897494079, 	5000);
insert into ubicacion_pedido(ubicacion_pedido_id, fecha_ubicacion, 	latitud, longitud, pedido_id) values(ubicacion_pedido_seq.nextval, to_date('14-12-2023 17:18:00', 'dd-mm-yyyy hh24:mi:ss'), -99.15644817047662, 19.33513520305427, 	5000);
insert into ubicacion_pedido(ubicacion_pedido_id, fecha_ubicacion, 	latitud, longitud, pedido_id) values(ubicacion_pedido_seq.nextval, to_date('14-12-2023 17:21:00', 'dd-mm-yyyy hh24:mi:ss'), -99.16146810322113, 19.33538678253029, 	5000);
insert into ubicacion_pedido(ubicacion_pedido_id, fecha_ubicacion, 	latitud, longitud, pedido_id) values(ubicacion_pedido_seq.nextval, to_date('14-12-2023 17:24:00', 'dd-mm-yyyy hh24:mi:ss'), -99.16603612832765, 19.33567721959386, 	5000);
insert into ubicacion_pedido(ubicacion_pedido_id, fecha_ubicacion, 	latitud, longitud, pedido_id) values(ubicacion_pedido_seq.nextval, to_date('14-12-2023 17:27:00', 'dd-mm-yyyy hh24:mi:ss'), -99.17231423680987, 19.33598863045948, 	5000);
insert into ubicacion_pedido(ubicacion_pedido_id, fecha_ubicacion, 	latitud, longitud, pedido_id) values(ubicacion_pedido_seq.nextval, to_date('14-12-2023 17:30:00', 'dd-mm-yyyy hh24:mi:ss'), -99.17591849822617, 19.33625972052518, 	5000);
insert into ubicacion_pedido(ubicacion_pedido_id, fecha_ubicacion, 	latitud, longitud, pedido_id) values(ubicacion_pedido_seq.nextval, to_date('14-12-2023 17:33:00', 'dd-mm-yyyy hh24:mi:ss'), -99.1772456587865, 19.33374388046209, 	5000);
insert into ubicacion_pedido(ubicacion_pedido_id, fecha_ubicacion, 	latitud, longitud, pedido_id) values(ubicacion_pedido_seq.nextval, to_date('14-12-2023 17:36:00', 'dd-mm-yyyy hh24:mi:ss'), -99.17831268434857, 19.33342628917257, 	5000);
insert into ubicacion_pedido(ubicacion_pedido_id, fecha_ubicacion, 	latitud, longitud, pedido_id) values(ubicacion_pedido_seq.nextval, to_date('14-12-2023 17:39:00', 'dd-mm-yyyy hh24:mi:ss'), -99.17963098468068, 19.33103010029522, 	5000);
insert into ubicacion_pedido(ubicacion_pedido_id, fecha_ubicacion, 	latitud, longitud, pedido_id) values(ubicacion_pedido_seq.nextval, to_date('14-12-2023 17:42:00', 'dd-mm-yyyy hh24:mi:ss'), -99.1822695533242, 19.33091142439965, 	5000);
insert into ubicacion_pedido(ubicacion_pedido_id, fecha_ubicacion, 	latitud, longitud, pedido_id) values(ubicacion_pedido_seq.nextval, to_date('14-12-2023 17:45:00', 'dd-mm-yyyy hh24:mi:ss'), -99.1835888362079, 19.33085207221867, 	5000);
insert into ubicacion_pedido(ubicacion_pedido_id, fecha_ubicacion, 	latitud, longitud, pedido_id) values(ubicacion_pedido_seq.nextval, to_date('14-12-2023 17:48:00', 'dd-mm-yyyy hh24:mi:ss'), -99.18490811813268, 19.33079271054894, 	5000);
