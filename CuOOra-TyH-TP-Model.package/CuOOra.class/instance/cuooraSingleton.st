accessing
cuooraSingleton
	"Return a CuOOra instance with sample data"

	| usuario1 usuario2 usuario3 usuario4 tópico1 tópico2 tópico3 pregunta1 pregunta2 pregunta3 pregunta4 respuesta1 respuesta2 respuesta3 voto1 voto2 |
	cuooraSingleton
		ifNil: [ cuooraSingleton := self class new.

			"1- Crear y agregar usuarios"
			usuario1 := Usuario nombre: 'pedro@cuoora.com' contraseña: 'pedro@cuoora.com' fechaCreación: DateAndTime now.
			usuario2 := Usuario nombre: 'diego@cuoora.com' contraseña: 'diego@cuoora.com' fechaCreación: DateAndTime now.
			usuario3 := Usuario nombre: 'juan@cuoora.com' contraseña: 'juan@cuoora.com' fechaCreación: DateAndTime now.
			usuario4 := Usuario nombre: 'jose@cuoora.com' contraseña: 'jose@cuoora.com' fechaCreación: DateAndTime now.
			cuooraSingleton agregarUsuario: usuario1.
			cuooraSingleton agregarUsuario: usuario2.
			cuooraSingleton agregarUsuario: usuario3.
			cuooraSingleton agregarUsuario: usuario4.

			"2- Crear y agregar tópicos"
			tópico1 := Tópico nombre: 'OO1' descripción: 'Orientación a Objetos I'.
			tópico2 := Tópico nombre: 'Smalltalk' descripción: 'Lenguaje Smalltalk'.
			tópico3 := Tópico nombre: 'Test de unidad' descripción: 'Test de unidad'.
			cuooraSingleton agregarTópico: tópico1.
			cuooraSingleton agregarTópico: tópico2.
			cuooraSingleton agregarTópico: tópico3.

			"3- Usuario1: [T1, T2, T3], Usuario2: [T1, T2, T3], Usuario3: [], Usuario4: [T2]"
			usuario1 agregarTópicoInterés: tópico1.
			usuario1 agregarTópicoInterés: tópico2.
			usuario1 agregarTópicoInterés: tópico3.
			usuario2 agregarTópicoInterés: tópico1.
			usuario2 agregarTópicoInterés: tópico2.
			usuario2 agregarTópicoInterés: tópico3.
			usuario4 agregarTópicoInterés: tópico2.
			"Seguidos por U3: [U1, U2]"
			usuario3 seguirA: usuario1.
			usuario3 seguirA: usuario2.
			"Seguidos por U2: [U4]"
			usuario2 seguirA: usuario4.
			"Seguidos por U1: [U3]"
			usuario1 seguirA: usuario3.

			"4- Crear y agregar preguntas"
			"Pregunta1: {U1, [T1, T3], 'yesterday noon'}"
			pregunta1 := PreguntaProxy
				usuario: usuario1
				fechaCreación: DateAndTime yesterday noon
				título: 'Método setUp'
				texto: '¿Para qué sirve el método setUp en un Test Case?'
				tópicoRelacionado: tópico1.
			pregunta1 agregarTópicoRelacionado: tópico3.
			usuario1 agregarPregunta: pregunta1.
			tópico1 agregarPregunta: pregunta1.
			tópico3 agregarPregunta: pregunta1.
			"Pregunta2: {U2, [T1, T2], 'today noon'}"
			pregunta2 := PreguntaProxy
				usuario: usuario2
				fechaCreación: DateAndTime now noon
				título: '#messageNotUnderstood'
				texto: '¿Qué significa #messageNotUnderstood?'
				tópicoRelacionado: tópico1.
			pregunta2 agregarTópicoRelacionado: tópico2.
			usuario2 agregarPregunta: pregunta2.
			tópico1 agregarPregunta: pregunta2.
			tópico2 agregarPregunta: pregunta2.
			"Pregunta3: {U3, [T3], '20190729'}"
			pregunta3 := PreguntaProxy
				usuario: usuario3
				fechaCreación: (DateAndTime year: 2019 month: 7 day: 29)
				título: '#subclassResponsibility'
				texto: '¿Qué significa #subclassResponsibility?'
				tópicoRelacionado: tópico3.
			usuario3 agregarPregunta: pregunta3.
			tópico3 agregarPregunta: pregunta3.
			"Pregunta4: {U4, [T1], 'today midnight'}"
			pregunta4 := PreguntaProxy
				usuario: usuario3
				fechaCreación: DateAndTime midnight
				título: 'Polimorfismo'
				texto: '¿Qué implica el polimorfismo en OOP?'
				tópicoRelacionado: tópico1.
			usuario3 agregarPregunta: pregunta4.
			tópico1 agregarPregunta: pregunta4.

			"5- Crear y agregar respuestas"
			pregunta1 activar.
			pregunta2 activar.
			"Respuesta1: {U1, P2, 'now'}"
			respuesta1 := Respuesta
				usuario: usuario1
				fechaCreación: DateAndTime now
				texto: 'Significa que el objeto que recibió el mensaje no encontró ningún método para ejecutar en respuesta'
				preguntaReferida: pregunta2.
			usuario1 agregarRespuesta: respuesta1.
			pregunta2 agregarRespuesta: respuesta1.
			"Respuesta2: {U2, P1, 'now'}"
			respuesta2 := Respuesta
				usuario: usuario2
				fechaCreación: DateAndTime now
				texto:
					'Sirve para instanciar los objetos que son evaluados por el test en un único método y que se ejecute siempre antes de cada test'
				preguntaReferida: pregunta1.
			usuario2 agregarRespuesta: respuesta2.
			pregunta1 agregarRespuesta: respuesta2.
			"Respuesta3: {U3, P1, 'now'}"
			respuesta3 := Respuesta
				usuario: usuario3
				fechaCreación: DateAndTime now
				texto: 'TestCase#setUp inicializa un test y por convención forma parte del protocolo running'
				preguntaReferida: pregunta1.
			usuario3 agregarRespuesta: respuesta3.
			pregunta1 agregarRespuesta: respuesta3.

			"6- Registrar Like a pregunta"
			"voto1 por usuario2 a pregunta1"
			voto1 := Voto usuario: usuario2 entrada: pregunta1 fechaCreación: DateAndTime now.
			pregunta1 agregarVotoPositivo: voto1.

			"6- Registrar Dislike a pregunta"
			"voto2 por usuario1 a pregunta2"
			voto2 := Voto usuario: usuario1 entrada: pregunta2 fechaCreación: DateAndTime now.
			pregunta2 agregarVotoNegativo: voto2 ].
	^ cuooraSingleton