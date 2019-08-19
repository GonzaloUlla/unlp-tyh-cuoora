accessing
cuooraSingleton
	"Return a CuOOra instance with sample data"

	| usuario1 usuario2 usuario3 tópico1 tópico2 tópico3 pregunta1 pregunta2 respuesta1 respuesta2 |
	cuooraSingleton
		ifNil: [ cuooraSingleton := self class new.
			"1- Crear y agregar usuarios"
			usuario1 := Usuario nombre: 'pedro@cuoora.com' contraseña: 'pedro@cuoora.com' fechaCreación: DateAndTime now.
			usuario2 := Usuario nombre: 'diego@cuoora.com' contraseña: 'diego@cuoora.com' fechaCreación: DateAndTime now.
			usuario3 := Usuario nombre: 'juan@cuoora.com' contraseña: 'juan@cuoora.com' fechaCreación: DateAndTime now.
			cuooraSingleton agregarUsuario: usuario1.
			cuooraSingleton agregarUsuario: usuario2.
			cuooraSingleton agregarUsuario: usuario3.
			"2- Crear y agregar tópicos"
			tópico1 := Tópico nombre: 'OO1' descripción: 'Orientación a Objetos I'.
			tópico2 := Tópico nombre: 'Smalltalk' descripción: 'Lenguaje Smalltalk'.
			tópico3 := Tópico nombre: 'Test de unidad' descripción: 'Test de unidad'.
			cuooraSingleton agregarTópico: tópico1.
			cuooraSingleton agregarTópico: tópico2.
			cuooraSingleton agregarTópico: tópico3.
			usuario1 agregarTópicoInterés: tópico1.
			usuario1 agregarTópicoInterés: tópico2.
			usuario1 agregarTópicoInterés: tópico3.
			usuario2 agregarTópicoInterés: tópico1.
			usuario2 agregarTópicoInterés: tópico2.
			usuario2 agregarTópicoInterés: tópico3.
			"3- Crear y agregar preguntas"
			pregunta1 := Pregunta
				usuario: usuario1
				fechaCreación: DateAndTime now
				título: 'Método setUp'
				texto: '¿Para qué sirve el método setUp en un Test Case?'
				tópicoRelacionado: tópico1.
			pregunta1 agregarTópicoRelacionado: tópico3.
			usuario1 agregarPregunta: pregunta1.
			tópico1 agregarPregunta: pregunta1.
			pregunta2 := Pregunta
				usuario: usuario2
				fechaCreación: DateAndTime now
				título: '#messageNotUnderstood'
				texto: '¿Qué significa #messageNotUnderstood?'
				tópicoRelacionado: tópico1.
			pregunta2 agregarTópicoRelacionado: tópico2.
			usuario2 agregarPregunta: pregunta2.
			tópico2 agregarPregunta: pregunta2.
			"4- Crear y agregar respuestas"
			respuesta1 := Respuesta
				usuario: usuario1
				fechaCreación: DateAndTime now
				texto: 'Significa que el objeto que recibió el mensaje no encontró ningún método para ejecutar en respuesta'
				preguntaReferida: pregunta2.
			usuario1 agregarRespuesta: respuesta1.
			pregunta2 agregarRespuesta: respuesta1.
			respuesta2 := Respuesta
				usuario: usuario2
				fechaCreación: DateAndTime now
				texto: 'Sirve para instanciar los objetos que son evaluados por el test en un único método y que se ejecute siempre antes de cada test'
				preguntaReferida: pregunta1.
			usuario2 agregarRespuesta: respuesta2.
			pregunta1 agregarRespuesta: respuesta2 ].
	^ cuooraSingleton