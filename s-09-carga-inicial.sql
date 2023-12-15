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
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id, costo_unitario)	  values(medicamento_presentacion_seq.nextval, 200, 100, 393);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id, costo_unitario)	  values(medicamento_presentacion_seq.nextval, 200, 101, 198);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id, costo_unitario)	  values(medicamento_presentacion_seq.nextval, 201, 102, 486);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id, costo_unitario)	  values(medicamento_presentacion_seq.nextval, 201, 103, 477);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id, costo_unitario)	  values(medicamento_presentacion_seq.nextval, 201, 100, 88);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id, costo_unitario)	  values(medicamento_presentacion_seq.nextval, 201, 104, 164);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id, costo_unitario)	  values(medicamento_presentacion_seq.nextval, 201, 105, 290);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id, costo_unitario)	  values(medicamento_presentacion_seq.nextval, 201, 106, 116);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id, costo_unitario)	  values(medicamento_presentacion_seq.nextval, 201, 107, 168);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id, costo_unitario)	  values(medicamento_presentacion_seq.nextval, 202, 108, 491);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id, costo_unitario)	  values(medicamento_presentacion_seq.nextval, 203, 102, 422);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id, costo_unitario)	  values(medicamento_presentacion_seq.nextval, 203, 109, 151);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id, costo_unitario)	  values(medicamento_presentacion_seq.nextval, 204, 102, 381);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id, costo_unitario)	  values(medicamento_presentacion_seq.nextval, 204, 100, 109);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id, costo_unitario)	  values(medicamento_presentacion_seq.nextval, 204, 110, 265);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id, costo_unitario)	  values(medicamento_presentacion_seq.nextval, 205, 110, 395);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id, costo_unitario)	  values(medicamento_presentacion_seq.nextval, 206, 111, 459);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id, costo_unitario)	  values(medicamento_presentacion_seq.nextval, 207, 112, 137);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id, costo_unitario)	  values(medicamento_presentacion_seq.nextval, 208, 112, 266);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id, costo_unitario)	  values(medicamento_presentacion_seq.nextval, 209, 110, 295);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id, costo_unitario)	  values(medicamento_presentacion_seq.nextval, 209, 113, 85);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id, costo_unitario)	  values(medicamento_presentacion_seq.nextval, 210, 107, 193);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id, costo_unitario)	  values(medicamento_presentacion_seq.nextval, 210, 110, 278);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id, costo_unitario)	  values(medicamento_presentacion_seq.nextval, 211, 112, 93);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id, costo_unitario)	  values(medicamento_presentacion_seq.nextval, 212, 100, 318);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id, costo_unitario)	  values(medicamento_presentacion_seq.nextval, 212, 104, 333);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id, costo_unitario)	  values(medicamento_presentacion_seq.nextval, 213, 100, 165);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id, costo_unitario)	  values(medicamento_presentacion_seq.nextval, 213, 104, 93);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id, costo_unitario)	  values(medicamento_presentacion_seq.nextval, 213, 105, 423);
insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id, costo_unitario)	  values(medicamento_presentacion_seq.nextval, 214, 100, 475);

--INSERTANDO EN CLIENTE
insert into cliente values(cliente_seq.nextval, '550531483', 'MAGM100513471', 'MIMGKSR17B31VMZD8B', 'Calle Flautas 5, Colonia Del Valle', 'MIKE', 'MARTINEZ', 'GUERRERO', 'FERNANDA169@outlook.com');
insert into cliente values(cliente_seq.nextval, '554307018', 'ARML61017594', 'LUAMDXL6SMME58FQ9O', 'Calle Pan 12, Colonia Roma', 'LUCILA', 'ARCOS', 'MARTINEZ', 'JUAN816@outlook.com');
insert into cliente values(cliente_seq.nextval, '553343194', 'RERV940223332', 'VERRNQ1O4ZKDQXD447', 'Calle Tamales 6, Colonia Narvarte', 'VERONICA', 'REYES', 'RUIZ', 'SALMA524@outlook.com');
insert into cliente values(cliente_seq.nextval, '551437357', 'OLAB841227388', 'BOOA1AGWIRCKTLKPEQ', 'Calle Ensalada 8, Colonia Santa Fe', 'BOB', 'OLIVARES', 'ARCOS', 'ELLENA983@outlook.com');
insert into cliente values(cliente_seq.nextval, '557247805', 'CUGL060223400', 'LICGZGZ4J3CYNGAP9Q', 'Calle Tamales 6, Colonia Narvarte', 'LINDA', 'CUEVA', 'GUERRERO', 'SAM441@ingenieria.unam.edu');
insert into cliente values(cliente_seq.nextval, '554878058', 'RIAB540220961', NULL, 'Calle Ensalada 8, Colonia Santa Fe', 'BOB', 'RIVERA', 'ANDRADE', 'MIGUEL433@gmail.com');
insert into cliente values(cliente_seq.nextval, '552384573', 'SOOB89092990', 'BOSOYXFHV843MHB3A8', 'Calle Pan 12, Colonia Roma', 'BOB', 'SOTELO', 'ORTEGA', 'SILVIA120@comunidad.unam.mx');
insert into cliente values(cliente_seq.nextval, '553492262', 'RUGA941213368', NULL, 'Calle Quesadilla 3, Colonia Roma Norte', 'ALBAKARINA', 'RUIZ', 'GONZALEZ', 'CARLOS350@yahoo.com');
insert into cliente values(cliente_seq.nextval, '557665835', 'MORY530920615', NULL, 'Calle Quesadilla 3, Colonia Roma Norte', 'YAEL', 'MONTANA', 'RAMOS', 'GABRIELA842@ingenieria.unam.edu');
insert into cliente values(cliente_seq.nextval, '553592917', 'CARP871223503', NULL, 'Calle Quesadilla 3, Colonia Roma Norte', 'PATRICIA', 'CAMPOS', 'ROJAS', 'HILDA150@ingenieria.unam.edu');
insert into cliente values(cliente_seq.nextval, '553385935', 'SOLS650526783', 'SASL6MLUA41XWRQGXB', 'Calle Pan 12, Colonia Roma', 'SALMA', 'SOTELO', 'LUNA', 'MIGUEL690@outlook.com');
insert into cliente values(cliente_seq.nextval, '550971034', 'ORNP031212344', 'PAONFIU91QWMSW3UYN', 'Calle Quesadilla 3, Colonia Roma Norte', 'PATRICIO', 'ORTIZ', 'NOLASCO', 'PATRICIO263@yahoo.com');
insert into cliente values(cliente_seq.nextval, '558467991', 'MENM020110277', 'MAMNR76D1AII35Q73T', 'Calle Tacos al Pastor 1, Colonia Condesa', 'MARTHA', 'MENDIETA', 'NOVILLO', 'VERONICA423@gmail.com');
insert into cliente values(cliente_seq.nextval, '557713188', 'GAML92043700', 'LUGMWZ46IZJQSC2WI8', 'Calle Hamburguesa 42, Colonia Londres', 'LUIS', 'GARCIA', 'MENDIETA', 'FERNANDA087@comunidad.unam.mx');
insert into cliente values(cliente_seq.nextval, '552710681', 'PATL841220495', NULL, 'Calle Pizza 32, Colonia Berlín', 'LUIS', 'PALMA', 'TRUJILLO', 'KEYLA297@gmail.com');
insert into cliente values(cliente_seq.nextval, '557025601', 'LUOL040611347', NULL, 'Calle Enchilada 10, Colonia Barcelona', 'LUCILA', 'LUNA', 'OLIVARES', 'BYRON331@outlook.com');
insert into cliente values(cliente_seq.nextval, '558604004', 'SOSJ990325796', 'JESSBKUBB5TS8B2RWA', 'Calle Flautas 5, Colonia Del Valle', 'JESSICA', 'SOTELO', 'SOTELO', 'LUCILA421@outlook.com');

--INSERTANDO EN DATOS_TARJETA
insert into datos_tarjeta(tarjeta_id, num_tarjeta, mes_expiracion, anio_expiracion, cliente_id)		values(datos_tarjeta_seq.nextval, 195199330754, 04, 2033, 1000);
insert into datos_tarjeta(tarjeta_id, num_tarjeta, mes_expiracion, anio_expiracion, cliente_id)		values(datos_tarjeta_seq.nextval, 101920408103, 07, 2034, 1001);
insert into datos_tarjeta(tarjeta_id, num_tarjeta, mes_expiracion, anio_expiracion, cliente_id)		values(datos_tarjeta_seq.nextval, 190362311477, 06, 2015, 1002);
insert into datos_tarjeta(tarjeta_id, num_tarjeta, mes_expiracion, anio_expiracion, cliente_id)		values(datos_tarjeta_seq.nextval, 114942532383, 04, 2020, 1003);
insert into datos_tarjeta(tarjeta_id, num_tarjeta, mes_expiracion, anio_expiracion, cliente_id)		values(datos_tarjeta_seq.nextval, 155020239217, 01, 2022, 1004);
insert into datos_tarjeta(tarjeta_id, num_tarjeta, mes_expiracion, anio_expiracion, cliente_id)		values(datos_tarjeta_seq.nextval, 165067264951, 06, 2027, 1005);
insert into datos_tarjeta(tarjeta_id, num_tarjeta, mes_expiracion, anio_expiracion, cliente_id)		values(datos_tarjeta_seq.nextval, 121580507089, 07, 2027, 1006);
insert into datos_tarjeta(tarjeta_id, num_tarjeta, mes_expiracion, anio_expiracion, cliente_id)		values(datos_tarjeta_seq.nextval, 105817844769, 02, 2033, 1007);
insert into datos_tarjeta(tarjeta_id, num_tarjeta, mes_expiracion, anio_expiracion, cliente_id)		values(datos_tarjeta_seq.nextval, 139744524212, 01, 2030, 1008);
insert into datos_tarjeta(tarjeta_id, num_tarjeta, mes_expiracion, anio_expiracion, cliente_id)		values(datos_tarjeta_seq.nextval, 188416429160, 08, 2034, 1009);

--INSERTANDO EN STATUS_PEDIDO
insert into status_pedido(status_id, clave, descripcion)	values(status_pedido_seq.nextval, 'CAPTURADO', 'El pedido se ha registrado de manera exitosa y esta espera de envio.');
insert into status_pedido(status_id, clave, descripcion)	values(status_pedido_seq.nextval, 'EN TRANSITO', 'El pedido esta en curso para ser entregado al cliente.');
insert into status_pedido(status_id, clave, descripcion)	values(status_pedido_seq.nextval, 'ENTREGADO', 'El cliente recibio el pedido y este fue aceptado.');
insert into status_pedido(status_id, clave, descripcion)	values(status_pedido_seq.nextval, 'DEVUELTO', 'El cliente encontro algun error con el pedido y fue devuelto');
insert into status_pedido(status_id, clave, descripcion)	values(status_pedido_seq.nextval, 'CANCELADO', 'Ocurrio algun error que ocasiono que se cancelara el pedido');

--INSERTANDO EN CENTRO_OPERACION
insert into centro_operacion(centro_id, es_farmacia, es_almacen, es_oficina, clave, latitud, longitud, telefono)	 values(centro_operacion_seq.nextval, 1, 0, 0, 'FFTDL9', 19.39, 99.087306, '551274219');
insert into centro_operacion(centro_id, es_farmacia, es_almacen, es_oficina, clave, latitud, longitud, telefono)	 values(centro_operacion_seq.nextval, 1, 0, 0, 'FFZ388', 19.409056, 99.131389, '552253143');
insert into centro_operacion(centro_id, es_farmacia, es_almacen, es_oficina, clave, latitud, longitud, telefono)	 values(centro_operacion_seq.nextval, 0, 1, 0, 'AAUQOD', 19.378444, 99.140667, '552910965');
insert into centro_operacion(centro_id, es_farmacia, es_almacen, es_oficina, clave, latitud, longitud, telefono)	 values(centro_operacion_seq.nextval, 0, 1, 0, 'AANKGW', 19.374556, 99.18275, '552221654');
insert into centro_operacion(centro_id, es_farmacia, es_almacen, es_oficina, clave, latitud, longitud, telefono)	 values(centro_operacion_seq.nextval, 0, 0, 1, 'OOMHEW', 19.429611, 99.190278, '558655098');
insert into centro_operacion(centro_id, es_farmacia, es_almacen, es_oficina, clave, latitud, longitud, telefono)	 values(centro_operacion_seq.nextval, 0, 0, 1, 'OOCNHO', 19.490778, 99.103778, '551890719');

--INSERTANDO EN EMPLEADOS
insert into	empleado(empleado_id, fecha_ingreso, rfc, nombre, apellido_paterno, apellido_materno, empleado_supervisor_id,centro_id, 	salario) values(empleado_seq.nextval, to_date('09/12/2023','dd/mm/yyyy'), 'PEVE090426332', 'ELLENA', 'PEREZ', 'VELAZQUEZ', NULL, 5000, 29131);
insert into	empleado(empleado_id, fecha_ingreso, rfc, nombre, apellido_paterno, apellido_materno, empleado_supervisor_id,centro_id, 	salario) values(empleado_seq.nextval, to_date('09/12/2023','dd/mm/yyyy'), 'ROMD660524296', 'DANIEL', 'ROJAS', 'MONTANA', NULL, 5005, 29211);
insert into	empleado(empleado_id, fecha_ingreso, rfc, nombre, apellido_paterno, apellido_materno, empleado_supervisor_id,centro_id, 	salario) values(empleado_seq.nextval, to_date('09/12/2023','dd/mm/yyyy'), 'CAJM080920804', 'MIGUEL', 'CABRERA', 'JARA', NULL, 5010, 28286);
insert into	empleado(empleado_id, fecha_ingreso, rfc, nombre, apellido_paterno, apellido_materno, empleado_supervisor_id,centro_id, 	salario) values(empleado_seq.nextval, to_date('09/12/2023','dd/mm/yyyy'), 'BRLD581222274', 'DANIEL', 'BRAVO', 'LUNA', NULL, 5015, 22887);
insert into	empleado(empleado_id, fecha_ingreso, rfc, nombre, apellido_paterno, apellido_materno, empleado_supervisor_id,centro_id, 	salario) values(empleado_seq.nextval, to_date('09/12/2023','dd/mm/yyyy'), 'TRDM000217885', 'MIGUEL', 'TRUJILLO', 'DELGADO', NULL, 5020, 24165);
insert into	empleado(empleado_id, fecha_ingreso, rfc, nombre, apellido_paterno, apellido_materno, empleado_supervisor_id,centro_id, 	salario) values(empleado_seq.nextval, to_date('09/12/2023','dd/mm/yyyy'), 'SORJ56083882', 'JORGE', 'SOTELO', 'ROJAS', NULL, 5025, 23358);
insert into	empleado(empleado_id, fecha_ingreso, rfc, nombre, apellido_paterno, apellido_materno, empleado_supervisor_id,centro_id, 	salario) values(empleado_seq.nextval, to_date('09/12/2023','dd/mm/yyyy'), 'RALK10033345', 'KEYLA', 'RAMOS', 'LUNA', 501, 5005, 14452);
insert into	empleado(empleado_id, fecha_ingreso, rfc, nombre, apellido_paterno, apellido_materno, empleado_supervisor_id,centro_id, 	salario) values(empleado_seq.nextval, to_date('09/12/2023','dd/mm/yyyy'), 'CANK870727305', 'KARINA', 'CABRERA', 'NOVILLO', 503, 5015, 8036);
insert into	empleado(empleado_id, fecha_ingreso, rfc, nombre, apellido_paterno, apellido_materno, empleado_supervisor_id,centro_id, 	salario) values(empleado_seq.nextval, to_date('09/12/2023','dd/mm/yyyy'), 'SOOE68061707', 'ESTEBAN', 'SOTO', 'OLIVARES', 502, 5000, 13311);
insert into	empleado(empleado_id, fecha_ingreso, rfc, nombre, apellido_paterno, apellido_materno, empleado_supervisor_id,centro_id, 	salario) values(empleado_seq.nextval, to_date('09/12/2023','dd/mm/yyyy'), 'TRML990316170', 'LUCILA', 'TRONCOS', 'MOLINA', 502, 5010, 12456);
insert into	empleado(empleado_id, fecha_ingreso, rfc, nombre, apellido_paterno, apellido_materno, empleado_supervisor_id,centro_id, 	salario) values(empleado_seq.nextval, to_date('09/12/2023','dd/mm/yyyy'), 'ORMS901010989', 'SALMA', 'ORTEGA', 'MARTINEZ', 503, 5005, 7102);
insert into	empleado(empleado_id, fecha_ingreso, rfc, nombre, apellido_paterno, apellido_materno, empleado_supervisor_id,centro_id, 	salario) values(empleado_seq.nextval, to_date('09/12/2023','dd/mm/yyyy'), 'MAOG951124580', 'GABRIELA', 'MARTINEZ', 'OLIVARES', 500, 5005, 7480);
insert into	empleado(empleado_id, fecha_ingreso, rfc, nombre, apellido_paterno, apellido_materno, empleado_supervisor_id,centro_id, 	salario) values(empleado_seq.nextval, to_date('09/12/2023','dd/mm/yyyy'), 'ORHY901128469', 'YAEL', 'ORTEGA', 'HERNANDEZ', 500, 5005, 7118);
insert into	empleado(empleado_id, fecha_ingreso, rfc, nombre, apellido_paterno, apellido_materno, empleado_supervisor_id,centro_id, 	salario) values(empleado_seq.nextval, to_date('09/12/2023','dd/mm/yyyy'), 'ROPA740210858', 'ALBAKARINA', 'ROJAS', 'PALMA', 500, 5025, 9795);
insert into	empleado(empleado_id, fecha_ingreso, rfc, nombre, apellido_paterno, apellido_materno, empleado_supervisor_id,centro_id, 	salario) values(empleado_seq.nextval, to_date('09/12/2023','dd/mm/yyyy'), 'LUPJ691021920', 'JESSICA', 'LUNA', 'PALMA', 502, 5005, 7535);
insert into	empleado(empleado_id, fecha_ingreso, rfc, nombre, apellido_paterno, apellido_materno, empleado_supervisor_id,centro_id, 	salario) values(empleado_seq.nextval, to_date('09/12/2023','dd/mm/yyyy'), 'BRCF040119695', 'FRANCISCO', 'BRAVO', 'CARDENAS', 504, 5010, 12616);
insert into	empleado(empleado_id, fecha_ingreso, rfc, nombre, apellido_paterno, apellido_materno, empleado_supervisor_id,centro_id, 	salario) values(empleado_seq.nextval, to_date('09/12/2023','dd/mm/yyyy'), 'APML58087155', 'LINDA', 'APONTE', 'MONTANA', 502, 5025, 12022);
insert into	empleado(empleado_id, fecha_ingreso, rfc, nombre, apellido_paterno, apellido_materno, empleado_supervisor_id,centro_id, 	salario) values(empleado_seq.nextval, to_date('09/12/2023','dd/mm/yyyy'), 'MERG930721747', 'GAEL', 'MENDIETA', 'REYNOZA', 505, 5000, 8733);
insert into	empleado(empleado_id, fecha_ingreso, rfc, nombre, apellido_paterno, apellido_materno, empleado_supervisor_id,centro_id, 	salario) values(empleado_seq.nextval, to_date('09/12/2023','dd/mm/yyyy'), 'NOCM051112447', 'MARIA', 'NOVILLO', 'CABRERA', 502, 5005, 9900);
insert into	empleado(empleado_id, fecha_ingreso, rfc, nombre, apellido_paterno, apellido_materno, empleado_supervisor_id,centro_id, 	salario) values(empleado_seq.nextval, to_date('09/12/2023','dd/mm/yyyy'), 'CECE950226310', 'EDUARDO', 'CEPEDA', 'CABRERA', 505, 5005, 14384);

--INSERTANDO EN FARMACIAS
insert into farmacia(farmacia_id, pagina_web, rfc_fiscal, empleado_gerente_id)	values(5000,'https://www.pharmacyonline.com/sucursales/villa-hermosa/norte','PHO1012233X8',501);
insert into farmacia(farmacia_id, pagina_web, rfc_fiscal, empleado_gerente_id)	values(5005,'https://www.pharmacyonline.com/sucursales/coyoacan-alto/sur','PHO1112230AP',502);

--INSERTANDO EN ALMACENES
insert into almacen(almacen_id, almacen_contigencia_id, tipo_almacen) values(5010, NULL, 'C');
insert into almacen(almacen_id, almacen_contigencia_id, tipo_almacen) values(5015, 5010, 'M');

--INSERTANDO EN OFICINA
insert into oficina(oficina_id, nombre, telefono)	values(5020, 'Oficina Villa Real', '554488092');
insert into oficina(oficina_id, nombre, telefono)	values(5025, 'Oficina Castores A.C', '551843414');

--INSERTANDO EN INVENTARIO
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 139, 5000, 1);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 150, 5000, 2);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 89, 5000, 3);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 109, 5000, 4);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 23, 5000, 5);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 48, 5000, 6);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 17, 5000, 7);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 7, 5000, 8);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 38, 5000, 9);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 103, 5000, 10);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 47, 5000, 11);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 40, 5000, 12);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 143, 5000, 13);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 18, 5000, 14);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 19, 5000, 15);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 15, 5000, 16);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 125, 5000, 17);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 79, 5000, 18);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 99, 5000, 19);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 20, 5000, 20);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 25, 5000, 21);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 53, 5000, 22);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 86, 5000, 23);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 49, 5000, 24);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 112, 5000, 25);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 146, 5000, 26);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 98, 5000, 27);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 4, 5000, 28);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 66, 5000, 29);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 107, 5000, 30);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 76, 5005, 1);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 91, 5005, 2);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 60, 5005, 3);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 150, 5005, 4);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 110, 5005, 5);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 66, 5005, 6);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 25, 5005, 7);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 50, 5005, 8);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 111, 5005, 9);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 30, 5005, 10);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 17, 5005, 11);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 124, 5005, 12);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 106, 5005, 13);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 111, 5005, 14);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 114, 5005, 15);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 90, 5005, 16);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 130, 5005, 17);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 60, 5005, 18);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 126, 5005, 19);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 34, 5005, 20);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 27, 5005, 21);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 121, 5005, 22);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 130, 5005, 23);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 96, 5005, 24);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 86, 5005, 25);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 137, 5005, 26);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 11, 5005, 27);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 80, 5005, 28);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 45, 5005, 29);
insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)	values(inventario_seq.nextval, 10, 5005, 30);

--INSERTANDO EN MOVIMIENTO
insert into movimiento(movimiento_id, fecha_movimiento, tipo_movimiento,almacen_id,	empleado_responsable_id) values(movimiento_seq.nextval, to_date('12-12-2023', 'dd-mm-yyyy'), 'E', 5010, 500);
insert into movimiento(movimiento_id, fecha_movimiento, tipo_movimiento,almacen_id,	empleado_responsable_id) values(movimiento_seq.nextval, to_date('15-12-2023', 'dd-mm-yyyy'), 'S', 5010, 504);
insert into movimiento(movimiento_id, fecha_movimiento, tipo_movimiento,almacen_id,	empleado_responsable_id) values(movimiento_seq.nextval, to_date('12-12-2023', 'dd-mm-yyyy'), 'E', 5015, 509);
insert into movimiento(movimiento_id, fecha_movimiento, tipo_movimiento,almacen_id,	empleado_responsable_id) values(movimiento_seq.nextval, to_date('15-12-2023', 'dd-mm-yyyy'), 'S', 5015, 505);

--INSERTANDO EN DETALLE_MOVIMIENTO
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 33, 1, 6);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 25, 1, 20);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 29, 1, 24);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 27, 1, 1);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 50, 1, 28);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 46, 1, 25);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 12, 1, 22);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 31, 1, 11);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 10, 1, 3);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 28, 2, 4);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 32, 2, 18);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 23, 2, 13);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 18, 2, 9);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 50, 2, 15);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 35, 2, 8);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 13, 2, 17);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 19, 2, 12);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 19, 2, 16);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 13, 2, 24);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 48, 3, 2);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 35, 3, 22);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 39, 3, 18);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 34, 3, 30);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 14, 3, 9);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 50, 3, 7);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 29, 4, 22);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 48, 4, 7);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 42, 4, 5);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 28, 4, 15);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 15, 4, 20);
insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,	med_pres_id) values(detalle_movimiento_seq.nextval, 17, 4, 29);

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
insert into detalles_pedido(detalle_id, pedido_id, cantidad, med_pres_id,	farmacia_id) values(detalle_pedido_seq.nextval,5000, 4, 20, 5000);
insert into detalles_pedido(detalle_id, pedido_id, cantidad, med_pres_id,	farmacia_id) values(detalle_pedido_seq.nextval,5000, 1, 1, 5000);
insert into detalles_pedido(detalle_id, pedido_id, cantidad, med_pres_id,	farmacia_id) values(detalle_pedido_seq.nextval,5000, 9, 23, 5005);
insert into detalles_pedido(detalle_id, pedido_id, cantidad, med_pres_id,	farmacia_id) values(detalle_pedido_seq.nextval,5000, 5, 8, 5005);
insert into detalles_pedido(detalle_id, pedido_id, cantidad, med_pres_id,	farmacia_id) values(detalle_pedido_seq.nextval,5000, 7, 25, 5005);
insert into detalles_pedido(detalle_id, pedido_id, cantidad, med_pres_id,	farmacia_id) values(detalle_pedido_seq.nextval,5001, 7, 9, 5000);
insert into detalles_pedido(detalle_id, pedido_id, cantidad, med_pres_id,	farmacia_id) values(detalle_pedido_seq.nextval,5001, 1, 4, 5000);
insert into detalles_pedido(detalle_id, pedido_id, cantidad, med_pres_id,	farmacia_id) values(detalle_pedido_seq.nextval,5001, 5, 21, 5000);
insert into detalles_pedido(detalle_id, pedido_id, cantidad, med_pres_id,	farmacia_id) values(detalle_pedido_seq.nextval,5001, 4, 26, 5000);
insert into detalles_pedido(detalle_id, pedido_id, cantidad, med_pres_id,	farmacia_id) values(detalle_pedido_seq.nextval,5002, 1, 4, 5000);
insert into detalles_pedido(detalle_id, pedido_id, cantidad, med_pres_id,	farmacia_id) values(detalle_pedido_seq.nextval,5002, 2, 22, 5000);
insert into detalles_pedido(detalle_id, pedido_id, cantidad, med_pres_id,	farmacia_id) values(detalle_pedido_seq.nextval,5002, 7, 6, 5005);

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
