'''
Script para la creacion e insercion de datos en el modelo 
relacional del caso de estudio. 

Autor: Ruy Cabello @ruyca

'''

from random import randint
from random import sample


# sustancia_activa_seq: 1, 2, ...
SUSTANCIAS_ACTIVAS = ["ÁCIDO ACETILSALICÍLICO", "IBUPROFENO", "METAMIZOL SÓDICO","PARACETAMOL",
						  "BUPRENORFINA", "CAPSAICINA", "CLONIXINATO DE LISINA","DEXMEDETOMIDINA",
						  "SULFATO DE ATROPINA","LIDOCAÍNA","BUPIVACAÍNA","DIAZEPAM",
						  "AMLODIPINO", "CAPTOPRIL", "CLORTALIDONA"]
		
# medicamento_seq: 200, 201, 200...
MEDICAMENTO_DES = [
"Inhibe la síntesis de prostaglandinas y actúa sobre el centro termorregulador en el hipotálamo, \
tiene efecto antiagregante plaquetario por inhibición de la enzima tromboxano sintetasa", 
"Es un fármaco inhibidor de prostaglandinas que logra mediante este mecanismo de acción controlar inflamación, dolor y fiebre, la acción \
antiprostaglandínica es a través de su inhibición de ciclooxigenasa responsable de la biosíntesis de las prostaglandinas",
"Inhibe la síntesis de prostaglandinas y actúa sobre el centro termorregulador en el hipotálamo.",
"Inhibe la síntesis de prostaglandinas y actúa sobre el centro termorregulador en el hipotálamo.",
"Analgésico de acción central. Actúa como agonista parcial del receptor opioide-μ y antagonista del receptor opioide-κ.",
"Analgésico de acción local que ejerce una acción desensibilizadora selectiva, por la supresión de la actividad de las fibras sensoriales del \
tipo C y eliminando la substancia P de las terminales nerviosas.",
"Analgésico inhibidor de la ciclooxigenasa, bloqueando la síntesis de PGE y PGF2.",
"Es un agonista del receptor adrenérgico ALFA2 de neuronas presinápticas y postsinápticas de la medula espinal y locus ceruleus, que \
proporciona sedación y analgesia, sin depresión respiratoria.",
"Alcaloide anticolinérgico que compite sobre los receptores muscarínicos, antagonizando selectivamente los efectos de la acetilcolina y de \
medicamentos muscarínicos.",
"Anestésico local que bloquea la conducción nerviosa interfiriendo con el intercambio de sodio y potasio a través de la membrana celular.",
"Anestésico local que bloquea la conducción nerviosa interfiriendo en el intercambio de sodio y potasio, a través de la membrana celular.",
"Benzodiazepina de duración prolongada que produce diversos grados de depresión, desde sedación hasta hipnosis",
"Bloqueador de los canales de calcio que inhibe la entrada de calcio en la célula cardiaca y del músculo liso vascular.",
"Inhibe a la enzima convertidora de la angiotensina lo que impide la formación de angiotensina II a partir de angiotensina I. Disminuye la \
resistencia vascular periférica y reduce la retención de sodio y agua.",
"Diurético que bloquea la reabsorción de sodio y cloro a nivel de túbulo distal."
]

# medicamento_nombre_seq: 1, 2, 3, ...
MEDICAMENTO_NOMBRE = {
					  200:["Aspirina", "Calmantina", "Inyesprin", "Rhonal", "Sedergine"],
					  201:["Algiasdin", "Algidrin", "Alogesia","Apirofeno", "Brufen", "Dalsy", "Dersindol","Dolorac","Dolencar"],
					  202:["Algi Mabo", "Neo Melubrina", "Metalgial", "Nolotil"],
					  203:["Tylenol", "Panadol", "FeverAll", "Tempra"],
					  204:["Buprex", "Feliben", "Transtec"],
					  205:["Alacapsin", "Picasum", "Capsicin Crema", "Capsidol", "Hanasaterm", "Qutenza"],
					  206:["Dolalgial"],
					  207:["Precedex"],
					  208:["Atropina Braun", "Atropina Sulfato", "Serra"],
					  209:["Lambdalina", "Versatis", "Xilonibsa"],
					  210:["Bupivacaína Braun", "Bupivacaína hiperbárica", "Inibsacain"],
					  211:["Aneurol", "Ansium", "Gobanal", "Pacium", "Stesolid", "Tepazepan", "Tropargal", "Valium"],
					  212:["Astudal", "Norvas", "Zabart"],
					  213:["Capoten", "Cesplon", "Cesplon cor", "Tensoprel", "Captosina"],
					  214:["Higrotona"]
					 }
					 
# medicamento_presentacion_seq: 1, 2, 3, ...					 
MEDICAMENTO_PRESENTACION = {
	200: [1,2], 201:[3,4,1,5,6,7,8], 202:[9],
	203: [3,10], 204:[3,1,11], 205:[11], 206:[12],
	207:[13], 208:[13], 209:[11,14], 210:[8,11],
	211:[13], 212:[1,5], 213:[1,5,6], 214:[1]
}
						  
# presentacion_seq: 100, 101, 102, ...
PRESENTACION = [
	"Envase con 20 tabletas", "Envase con 20 tabletas solubles o efervescentes", "Envase con 10 tabletas o cápsulas", 
	"Envase con 12 tabletas", "Envase con 30 tabletas", "Envase con 36 tabletas", "Envase con 24 tabletas", 
	"Envase con 120 ml y medida dosificadora", "Envase con 10 comprimidos", "Envase con 3 supositorios",
	"Envase con 4 parches","Envase con 5 ampolletas de 2 ml","Envase con 1 frasco ámpula",
	"Envase con 5 frascos ámpula de 50 ml", 
]		

# medicamento_presentacion_seq: 1, 2, 3, ... , 

NOMBRES = [
	"BYRON", "DAVID", "GONZALO", "LUIS", "FERNANDA", 
	"EDUARDO", "MARTHA", "PATRICIA", "DIANA", "PEDRO", "KAROL",
	"MARIA", "JOSE", "JESSICA", "SANTIAGO", "HILDA", "CARMEN", 
	"LUCILA", "DANIEL", "FRANCISCO", "PABLO", "BELEN", 
	"VERONICA", "GABRIELA", "ELLENA", "BOB", "PATRICIO",
	"ALBA" "KARINA", "SILVIA", "JUAN", "CARLOS", "FERNANDO",
	"ESTEBAN", "SALMA", "KARINA", "FRIDA", "MIGUEL", "MIKE",
	"KEYLA", "SAM", "LINDA", "YAEL", "GAEL", "JORGE"
]

APELLIDOS = [
	"GONZALEZ", "LOPEZ", "TRUJILLO", "CAMPOVERDE",
	"CAMPOS", "MENDIETA", "MOLINA", "CARDENAS", 
	"VILLAVICENCIO", "NOVILLO", "JARA", "CABRERA", 
	"MORALES", "MARTINEZ", "CEPEDA", "APONTE", "BRAVO", 
	"ARCOS", "SOTO", "ANDRADE", "PINEDA", "CUEVA", 
	"DELGADO", "LUNA", "REYES", "TORRES", "ORTIZ", 
	"RUIZ", "CASTILLO", "RIVERA", "ORTEGA", "GUERRERO", 
	"ESTRADA", "ROJAS", "RAMOS", "REYES", "FLORES", 
	"PEREZ", "HERNANDEZ", "GARCIA", "MONTANA", "VELAZQUEZ",
	"TRONCOS", "NOLASCO", "SOTELO", "PALMA", "OLIVARES",
	"REYNOZA", "REYNALDO", "ASTURIO"
]

DIRECCIONES = [
    "Calle Queso 132, Colonia Nápoles",
    "Calle Vino 52, Colonia París",
    "Calle Pan 12, Colonia Roma",
    "Calle Pizza 32, Colonia Berlín",
    "Calle Pasta 19, Colonia Viena",
    "Calle Hamburguesa 42, Colonia Londres",
    "Calle Taco 21, Colonia Madrid",
    "Calle Enchilada 10, Colonia Barcelona",
    "Calle Quesadilla 3, Colonia Roma Norte",
    "Calle Burritos 2, Colonia Polanco",
    "Calle Tacos al Pastor 1, Colonia Condesa",
    "Calle Chilaquiles 4, Colonia Roma Sur",
    "Calle Flautas 5, Colonia Del Valle",
    "Calle Tamales 6, Colonia Narvarte",
    "Calle Mole 7, Colonia Coyoacán",
    "Calle Ensalada 8, Colonia Santa Fe",
    "Calle Sopa 9, Colonia Polanco"
]

CORREOS = ["@gmail.com", "@outlook.com", "@yahoo.com",
	"@ingenieria.unam.edu", "@comunidad.unam.mx"
]

LETRAS_Y_NUM = ['A', 'B', 'C', 'D', 'E' ,'F', 'G', 'H', 'I', 'J',
	'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U',
	'V', 'W', 'X', 'Y', 'Z', '1', '2', '3', '4', '5', '6', '7',
	'8', '9'
]

COORDENADAS = [
	[19.39, 99.087306], [19.409056, 99.131389], 
	[19.378444, 99.140667], [19.374556, 99.18275], 
	[19.429611, 99.190278], [19.490778, 99.103778]
]

viaje_coord = [			
      	[-99.15607157658494,19.34338476218326],
        [-99.15407022810727,19.34154284605598],
        [-99.15182155258056,19.33930941008235],
        [-99.15016788430847,19.33731660645429],
        [-99.15072927826211,19.33534622547683], 
        [-99.15295236108634,19.33438897494079],
        [-99.15644817047662,19.33513520305427],
        [-99.16146810322113,19.33538678253029],
        [-99.16603612832765,19.33567721959386],
        [-99.17231423680987,19.33598863045948],
        [-99.17591849822617,19.33625972052518],
        [-99.1772456587865,19.33374388046209],
        [-99.17831268434857,19.33342628917257],
        [-99.17963098468068,19.33103010029522],
        [-99.1822695533242,19.33091142439965],
        [-99.1835888362079,19.33085207221867], 
        [-99.18490811813268,19.33079271054894]
]

def mes_aleatorio():
	m = ['01', '02', '03', '04', '05', '06', '07', '08', '09', '10', '11', '12']
	return m[randint(0, 11)]
	
def generar_nombre():

	n1 = randint(0, len(NOMBRES)-1) # nombre aleatorio
	n2 = randint(0, len(APELLIDOS)-1) # apellido aleatorio
	n3 = randint(0, len(APELLIDOS)-1) # apellido 2 aleatorio
	
	nom = NOMBRES[n1]
	ap1 = APELLIDOS[n2]
	ap2 = APELLIDOS[n3]
	
	return 	[nom, ap1, ap2]
	
def generar_telefono():
	inicio = "55"
	fin = "".join([str(randint(0,9)) for _ in range(7)]) 
	return inicio + fin

def generar_direccion():
	return DIRECCIONES[randint(0, len(DIRECCIONES)-1)]
		
def generar_correo():
	nom = NOMBRES[randint(0, len(NOMBRES)-1)]
	num = "".join([str(randint(0,9)) for _ in range(3)])
	ext = CORREOS[randint(0, len(CORREOS)-1)]
	return nom + num + ext
			
def generar_rfc(nombre_completo):
	mes = mes_aleatorio()
	anio = str(randint(1950,2010))[2:]
	dia = str(randint(1,28))
	r = str(randint(100, 999))
	
	rfc = nombre_completo[1][:2] + nombre_completo[1][0] + nombre_completo[0][0]
	rfc += anio + mes + dia + r
	
	return rfc
	
def generar_curp(nombre_completo):
	r = ""
	for i in range(14):
		n = randint(0,len(LETRAS_Y_NUM)-1)
		r += LETRAS_Y_NUM[n]
	curp = nombre_completo[0][:2] + nombre_completo[1][0] + nombre_completo[2][0]
	curp += r
	
	return curp
		
def generar_num_tarjeta():
	n_t = "".join([str(randint(0,9)) for _ in range(11)])	
	return '1' + n_t
	
def generar_sustancia_activa():
	s = "insert into sustancia_activa(sustancia_activa_id, nombre_sustancia) values(sustancia_activa_seq.nextval, {});"
	with open('s-09-carga-inicial.sql', 'a') as f:
		f.write('\n--INSERTANDO EN SUSTANCIA_ACTIVA\n')
		for i in range(len(SUSTANCIAS_ACTIVAS)):
			f.write(s.format(f"\'{SUSTANCIAS_ACTIVAS[i]}\'"))
			f.write('\n')
		f.write('\n\n')

def generar_medicamento():
	s = "insert into medicamento(medicamento_id, descripcion, sustancia_activa_id)\
		values(medicamento_seq.nextval, {}, {});"
	with open('s-09-carga-inicial.sql', 'a') as f:
		f.write("\n--INSERTANDO EN MEDICAMENTO\n")
		for i in range(len(SUSTANCIAS_ACTIVAS)):
			# i corresponde a sustancia_activa_id 
			f.write(s.format(f"\'{MEDICAMENTO_DES[i]}\'",i+1)) # i empieza en 0, pero la seq en 1
			f.write('\n')
		f.write('\n\n')
		
def generar_medicamento_nombre():
	s = "insert into medicamento_nombre(nombre_id, nombre, medicamento_id) \
	values(medicamento_nombre_seq.nextval, {}, {});"
	with open('s-09-carga-inicial.sql', 'a') as f:
		f.write('\n--INSERTANDO EN MEDICAMENTO_NOMBRE\n')
		for key, value  in MEDICAMENTO_NOMBRE.items():
			for nombre in value: 
				f.write(s.format(f"\'{nombre}\'", key))
				f.write('\n')
		
def generar_presentaciones():
	s = "insert into presentacion(presentacion_id, descripcion) values(presentacion_seq.nextval, {});"
	with open('s-09-carga-inicial.sql', 'a') as f:
		f.write("\n--INSERTANDO EN PRESENTACIONES\n")
		for i in range(len(PRESENTACION)):
			f.write(s.format(f"\'{PRESENTACION[i]}\'"))
			f.write('\n')
	
def generar_med_pres():
	s = "insert into medicamento_presentacion(med_pres_id, medicamento_id, presentacion_id)\
	  values(medicamento_presentacion_seq.nextval, {}, {});"
	with open('s-09-carga-inicial.sql', 'a') as f:
		f.write('\n--INSERTANDO EN MEDICAMENTO_PRESENTACION\n')
		for key, val in MEDICAMENTO_PRESENTACION.items():
			for presentacion in val:
				f.write(s.format(key, presentacion))
				f.write('\n')

def generar_cliente():
	# generamos 17 clientes
	s = "insert into cliente values(cliente_seq.nextval, {}, {}, {}, {}, {}, {}, {}, {});"
	with open('s-09-carga-inicial.sql', 'a') as f:
		f.write('\n--INSERTANDO EN CLIENTE\n')
		for i in range(17):
			n = randint(0,1)
			nom = generar_nombre()
			tel = generar_telefono()
			di = generar_direccion()
			correo = generar_correo()
			rfc = generar_rfc(nom)
			curp = generar_curp(nom) if n == 1 else "NULL"
			
			if curp != "NULL":
				f.write(s.format(f"\'{tel}\'",f"\'{rfc}\'", f"\'{curp}\'", f"\'{di}\'",
					f"\'{nom[0]}\'", f"\'{nom[1]}\'", f"\'{nom[2]}\'", f"\'{correo}\'"))
			else:
				f.write(s.format(f"\'{tel}\'",f"\'{rfc}\'",curp, f"\'{di}\'",
					f"\'{nom[0]}\'", f"\'{nom[1]}\'", f"\'{nom[2]}\'", f"\'{correo}\'"))
			f.write('\n')
			
def generar_datos_tarjeta():
	s = "insert into datos_tarjeta(tarjeta_id, num_tarjeta, mes_expiracion, anio_expiracion, cliente_id)\
		values(datos_tarjeta_seq.nextval, {}, to_date('{}','mm'), to_date('{}','yyyy'), {});"
	cl_id = 1000
	with open('s-09-carga-inicial.sql', 'a') as f:
		f.write('\n--INSERTANDO EN DATOS_TARJETA\n')
		for i in range(10):
			num_t = generar_num_tarjeta()
			mes = mes_aleatorio()
			anio = str(randint(2010, 2035))
			# cliente_seq: 1000, 1001, ...
			f.write(s.format(num_t, mes, anio, str(cl_id)))
			f.write('\n')
			cl_id += 1
			
def generar_status_pedido():
	s = "insert into status_pedido(status_id, descripcion, clave)\
	values(status_pedido_seq.nextval, {}, {});"
	estados = {'CAPTURADO':'El pedido se ha registrado de manera exitosa y esta espera de envio.', # 1
			   'EN TRANSITO': 'El pedido esta en curso para ser entregado al cliente.', # 2
			   'ENTREGADO': 'El cliente recibio el pedido y este fue aceptado.', # 3
			   'DEVUELTO': 'El cliente encontro algun error con el pedido y fue devuelto', # 4
			   'CANCELADO':'Ocurrio algun error que ocasiono que se cancelara el pedido'} # 5
			   
	with open('s-09-carga-inicial.sql', 'a') as f: 
		f.write('\n--INSERTANDO EN STATUS_PEDIDO\n')
		for key, value in estados.items(): 
			f.write(s.format(f"\'{key}\'", f"\'{value}\'"))
			f.write('\n')
	
def generar_clave_centro(f,a,o):
	s = str(f) + str(a) + str(o)
	clave = ""
	if s == '100':
		clave += 'FF'
	elif s == '010':
		clave += 'AA'
	elif s == '001':
		clave += 'OO'
	else:
		clave += "FM"
		
	final = "".join([LETRAS_Y_NUM[randint(0, len(LETRAS_Y_NUM)-1)] for _ in range(4)])
	clave += final
	
	return clave
	
def generar_centro_operacion():
	s = "insert into centro_operacion(centro_id, es_farmacia, es_almacen, es_oficina, clave, latitud, longitud, telefono)\
	 values(centro_operacion_seq.nextval, {}, {}, {}, {}, {}, {}, {});"
	centro_id = 5000
	cont = 0
	with open('s-09-carga-inicial.sql', 'a') as file:
		file.write('\n--INSERTANDO EN CENTRO_OPERACION\n')
		f = 1
		a = 0
		o = 0
		for i in range(2):
			c = generar_clave_centro(f,a,o)
			t = generar_telefono()
			file.write(s.format(f,a,o,f"\'{c}\'",COORDENADAS[i][0],COORDENADAS[i][1],f"\'{t}\'"))
			file.write('\n')

		f = 0
		a = 1
		o = 0
		for i in range(2, 4):
			c = generar_clave_centro(f,a,o)
			t = generar_telefono()
			file.write(s.format(f,a,o,f"\'{c}\'",COORDENADAS[i][0],COORDENADAS[i][1],f"\'{t}\'"))
			file.write('\n')
			
		f = 0
		a = 0
		o = 1
		for i in range(4, 6):
			c = generar_clave_centro(f,a,o)
			t = generar_telefono()
			file.write(s.format(f,a,o,f"\'{c}\'",COORDENADAS[i][0],COORDENADAS[i][1],f"\'{t}\'"))
			file.write('\n')
		
def generar_empleados():
	# Generamos 20 empleados
	s = "insert into\
	empleado(empleado_id, fecha_ingreso, rfc, nombre, apellido_paterno, apellido_materno, empleado_supervisor_id,centro_id)\
	values(empleado_seq.nextval, to_date('09/12/2023','dd/mm/yyyy'), {}, {}, {}, {}, {}, {});"
	centros = [5000,5005,5010,5015,5020,5025] # 2 farmacia, 2 almacen, 2 oficina
	emp_sup = [500, 501, 502, 503, 504, 505]
	with open('s-09-carga-inicial.sql', 'a') as f:
		f.write('\n--INSERTANDO EN EMPLEADOS\n')
		# empleados supervisores
		for i in range(6):
			n = generar_nombre()
			rfc = generar_rfc(n)
			e_s = 'NULL'
			c_id = centros[i]
			f.write(s.format(f"\'{rfc}\'",f"\'{n[0]}\'",f"\'{n[1]}\'",f"\'{n[2]}\'",e_s,c_id))
			f.write("\n")
		# empleados regulares
		for i in range(14):
			n = generar_nombre()
			rfc = generar_rfc(n)
			e_s = emp_sup[randint(0, len(emp_sup)-1)]
			c_id = centros[randint(0, len(centros)-1)]
			f.write(s.format(f"\'{rfc}\'",f"\'{n[0]}\'",f"\'{n[1]}\'",f"\'{n[2]}\'",e_s,c_id))
			f.write("\n")
		
def generar_inventario():
	farmacia_id = [5000,5005]
	s = "insert into inventario(inventario_id, existencias, farmacia_id, med_pres_id)\
	values(inventario_seq.nextval, {}, {}, {});"
	
	# med_pres_seq : 1, 2, 3, ...
	cont = 1
	with open('s-09-carga-inicial.sql', 'a') as f:
		f.write('\n--INSERTANDO EN INVENTARIO\n')
		for i in range(2):
			for key, val in MEDICAMENTO_PRESENTACION.items():
				for pres in val:
					ext = randint(0, 150)
					f.write(s.format(str(ext),str(farmacia_id[i]),str(cont)))
					f.write('\n')
					cont += 1
			cont = 1
		
		
def generar_farmacias():
	inventario = []
	centros = [5000, 5005]
	apertura = ["101223", "111223"]
	c = ["3X8", "0AP"]
	f = "PHO"
	gerentes_id =[501, 502]
	sucursales = ["villa-hermosa/norte", "coyoacan-alto/sur"]
	p = "https://www.pharmacyonline.com/sucursales/"
	s = "insert into farmacia(farmacia_id, pagina_web, rfc_fiscal, empleado_gerente_id)\
	values({},{},{},{});"
	with open('s-09-carga-inicial.sql', 'a') as f:
		f.write('\n--INSERTANDO EN FARMACIAS\n')
		for i in range(2):
			ce = centros[i]
			rfc = "PHO" + apertura[i] + c[i]
			f.write(s.format(ce, f"\'{p+sucursales[i]}\'",f"\'{rfc}\'",gerentes_id[i]))
			f.write('\n')
			
			
def generar_almacenes():
	s = "insert into almacen(almacen_id, almacen_contigencia) values({}, {});"
	centros = [5010, 5015] # el primer centro es el centro de contigencia del segundo
	with open('s-09-carga-inicial.sql', 'a') as f:
		f.write("\n--INSERTANDO EN ALMACENES\n")
		f.write(s.format(centros[0], "NULL"))
		f.write('\n')
		f.write(s.format(centros[1], centros[0]))
		f.write('\n')
		
def generar_oficinas():
	s = "insert into oficina(oficina_id, nombre, telefono)\
	values({}, {}, {});"
	centros = [5020, 5025]
	nombres = ["Oficina Villa Real", "Oficina Castores A.C"]
	with open('s-09-carga-inicial.sql', 'a') as f:
		f.write("\n--INSERTANDO EN OFICINA\n")
		for i in range(2):
			c = centros[i]
			n = nombres[i]
			t = generar_telefono()
			f.write(s.format(c,f"\'{n}\'",f"\'{t}\'"))
			f.write('\n')
			
def generar_movimiento():
	s = "insert into movimiento(movimiento_id, fecha_movimiento, tipo_movimiento,almacen_centro_id,\
	empleado_responsable_id) values(movimiento_seq.nextval, {}, {}, {}, {});"
	# Los centros_id que son almacenes son: 5010, 5015
	with open('s-09-carga-inicial.sql', 'a') as f:
		f.write('\n--INSERTANDO EN MOVIMIENTO\n')
		f1 = f"to_date('12-12-2023', 'dd-mm-yyyy')"
		f2 = f"to_date('15-12-2023', 'dd-mm-yyyy')"
		f.write(s.format(f1,f"\'E\'", str(5010), randint(500, 510))) # mov 1
		f.write('\n')
		f.write(s.format(f2,f"\'S\'", str(5010), randint(500, 510))) # mov 2
		f.write('\n')
		f.write(s.format(f1,f"\'E\'", str(5015), randint(500, 510))) # mov 3
		f.write('\n')
		f.write(s.format(f2,f"\'S\'", str(5015), randint(500, 510))) # mov 4
		f.write('\n')
		
def generar_detalle_movimiento():
	s = "insert into detalle_movimiento(detalle_movimiento_id, cantidad, movimiento_id,\
	med_pres_id) values(detalle_movimiento_seq.nextval, {}, {}, {});"
	# med_pres_id : 1, 2, 3, ... , 30
	# generamos 4 movimientos: 1,2,3,4
	presentaciones_med = [i for i in range(1,31)]
	centro = 5010
	with open('s-09-carga-inicial.sql', 'a') as f:
		f.write('\n--INSERTANDO EN DETALLE_MOVIMIENTO\n')
		for i in range(1,5):
			mov = randint(5,10) # se mueven entre 5 y 10 medicinas por mov
			smple = sample(presentaciones_med, mov) # lista de medicamentos_pres a mover
			for med_pres in smple:
				cantidad = randint(10,50) # se mueven entre 10 y 50 med_pres
				f.write(s.format(cantidad, str(i), str(med_pres)))
				f.write('\n')
			
def generar_pedidos():
	# creamos 3 pedidos
	s = "insert into pedido(pedido_id, fecha_status_actual, folio, fecha_pedido, \
	importe_total, cliente_id, empleado_id, status_id) values(pedido_seq.nextval, {}, \
	{}, {}, {}, {}, {}, {});"
	# cliente 1000, 1001, 1002
	with open('s-09-carga-inicial.sql', 'a') as f:
		f.write('\n--INSERTANDO EN PEDIDO\n')
		f.write(s.format(f"to_date('14-12-2023 18:00:00', 'dd-mm-yyyy HH24:MM:SS')",
				f"\'A1B2C3LM09AL3\'",
				f"to_date('10-12-2023 21:00:00', 'dd-mm-yyyy HH24:MM:SS')",
				str(2070), str(1000), str(507), str(3)))
		f.write('\n')
		f.write(s.format(f"to_date('11-12-2023 15:00:00', 'dd-mm-yyyy HH24:MM:SS')",
				f"\'KKK2C4LO09AL3\'",
				f"to_date('11-12-2023 22:00:00', 'dd-mm-yyyy HH24:MM:SS')",
				str(3000), str(1001), str(508), str(1)))
		f.write('\n')
		f.write(s.format(f"to_date('12-12-2023 12:30:00', 'dd-mm-yyyy HH24:MM:SS')",
				f"\'ZYZ0069O09AL3\'",
				f"to_date('12-12-2023 13:00:00', 'dd-mm-yyyy HH24:MM:SS')",
				str(150), str(1002), str(507), str(5)))
		f.write('\n')
				
def generar_historico():
	s = "insert into historico_status_pedido(historico_status_pedido_id, \
	fecha, status_id, pedido_id) values(historico_status_pedido_seq.nextval, \
	{}, {}, {});"
	with open('s-09-carga-inicial.sql', 'a') as f:
		f.write('\n--INSERTANDO EN HISTORICO_STATUS_PEDIDO\n')
		f.write(s.format(f"to_date('10-12-2023 21:00:00', 'HH24:MM:SS')",
						str(1), str(5000)))	
		f.write('\n')
		f.write(s.format(f"to_date('11-12-2023 12:00:00', 'HH24:MM:SS')",
						str(2), str(5000)))	
		f.write('\n')
		f.write(s.format(f"to_date('11-12-2023 15:00:00', 'HH24:MM:SS')",
						str(1), str(5001)))	
		f.write('\n')				
		f.write(s.format(f"to_date('14-12-2023 17:48:00', 'HH24:MM:SS')",
						str(3), str(5000)))	
		f.write('\n')						
		f.write(s.format(f"to_date('12-12-2023 12:30:00', 'HH24:MM:SS')",
						str(1), str(5002)))
		f.write('\n')
		f.write(s.format(f"to_date('12-12-2023 13:00:00', 'HH24:MM:SS')",
						str(5), str(5002)))	
		f.write('\n')
						
						
def generar_detalles_pedido():
	
	s = "insert into detalles_pedido(detalle_id, pedido_id, cantidad, med_pres_id,\
	farmacia_id) values(detalle_pedido_seq.nextval,{}, {}, {}, {});"
	#5000, 5005
	presentaciones_med = [i for i in range(1,31)]
	with open('s-09-carga-inicial.sql', 'a') as f:
		f.write('\n--INSERTANDO EN DETALLES_PEDIDO\n')
		for i in range(1, 4):
			mov = randint(1,5) # se mueven entre 1 y 5 medicinas por mov
			smple = sample(presentaciones_med, mov) # lista de medicamentos_pres a mover
			for med_pres in smple:
				cantidad = randint(1,10) # se mueven entre 1 y 10 med_pres
				farm = 5000 if randint(0,1) == 1 else 5005 # que farmacia surte
				f.write(s.format(str(i), str(cantidad), str(med_pres), str(farm)))
				f.write('\n')

def generar_ubicacion_pedido():
	s = "insert into ubicacion_pedido(ubicacion_pedido_id, fecha_ubicacion, \
	latitud, longitud, pedido_id) values(ubicacion_pedido_seq.nextval, {}, {}, {}, \
	5000);"
	# viaje_coord
	# se entrego 14/12/2023 a las 17:48:00
	minu = '00'
	
	with open('s-09-carga-inicial.sql', 'a') as f:
		f.write('\n--INSERTANDO EN UBICACION_PEDIDO\n')
		for cont,coord in enumerate(viaje_coord):
			lat = coord[0]
			lon = coord[1]
			hora = f"to_date('14-12-2023 17:{minu}:00', 'dd-mm-yyyy hh24:mm:ss')"
			f.write(s.format(hora, lat, lon))
			f.write('\n')
			
			minu = int(minu) + 3
			minu = str(minu)
			if len(minu) == 1:
				minu = "0" + minu
			
			
				
				
def run():
	generar_sustancia_activa() 
	generar_medicamento()
	generar_medicamento_nombre()
	generar_presentaciones()
	generar_med_pres()
	generar_cliente()
	generar_datos_tarjeta()
	generar_status_pedido()
	generar_centro_operacion()
	generar_empleados()
	generar_farmacias() 
	generar_almacenes()
	generar_oficinas()
	generar_inventario()
	generar_movimiento()
	generar_detalle_movimiento()
	generar_pedidos()
	generar_historico()
	generar_detalles_pedido()
	generar_ubicacion_pedido()

if __name__ == '__main__':
	run()
