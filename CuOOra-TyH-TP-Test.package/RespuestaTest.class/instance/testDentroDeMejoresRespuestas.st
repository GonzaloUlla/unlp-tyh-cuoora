testing
testDentroDeMejoresRespuestas
	"Retorna true/false dependiendo si el puntaje de la Respuesta es mayor o igual al promedio de puntaje de todas las respuestas a esa Pregunta"

	"^ self calcularPuntaje >= preguntaReferida calcularPuntajePromedioRespuestas"

	| pregunta1 respuesta2 respuesta3 usuario1 usuario2 usuario3 voto1 voto2 voto3 voto4 voto5 |
	"Inicializo usuario1, usuario2 y usuario3"
	usuario1 := Usuario nombre: 'u1' contraseña: 'u1'.
	usuario2 := Usuario nombre: 'u2' contraseña: 'u2'.
	usuario3 := Usuario nombre: 'u3' contraseña: 'u3'.

	"Inicializo pregunta1"
	pregunta1 := Pregunta
		usuario: usuario1
		título: 'p1'
		texto: 'p1'
		tópicoRelacionado: 't1'.
	"Inicializo respuesta, respuesta2 y respuesta3"
	respuesta := Respuesta usuario: usuario1 texto: 'r1' preguntaReferida: pregunta1.
	respuesta2 := Respuesta usuario: usuario2 texto: 'r2' preguntaReferida: pregunta1.
	respuesta3 := Respuesta usuario: usuario3 texto: 'r3' preguntaReferida: pregunta1.

	"Agrego respuesta, respuesta2 y respuesta3 a pregunta"
	pregunta1 agregarRespuesta: respuesta.
	pregunta1 agregarRespuesta: respuesta2.
	pregunta1 agregarRespuesta: respuesta3.

	"Valido que la pregunta posea tres respuestas"
	self assert: pregunta1 conocerRespuestas size equals: 3.

	"Valido que el puntaje promedio de las respuestas sea 0, dado que todavía no poseen votos"
	self assert: pregunta1 calcularPuntajePromedioRespuestas equals: 0.

	"Inicializo voto1, voto2, voto3, voto4 y voto5"
	voto1 := Voto usuario: usuario2 entrada: respuesta.
	voto2 := Voto usuario: usuario3 entrada: respuesta.
	voto3 := Voto usuario: usuario1 entrada: respuesta2.
	voto4 := Voto usuario: usuario1 entrada: respuesta3.
	voto5 := Voto usuario: usuario2 entrada: respuesta3.

	"respuesta: +2, respuesta2: +1  y respuesta3: 0 "
	respuesta agregarVotoPositivo: voto1.
	respuesta agregarVotoPositivo: voto2.
	respuesta2 agregarVotoPositivo: voto3.
	respuesta3 agregarVotoPositivo: voto4.
	respuesta3 agregarVotoNegativo: voto5.

	"Valido que el puntaje promedio de respuestas sea 1, dado que 3/3 = 1"
	self assert: pregunta1 calcularPuntajePromedioRespuestas equals: 1.

	"2 > 1"
	self assert: respuesta dentroDeMejoresRespuestas.
	"1 >= 1"
	self assert: respuesta2 dentroDeMejoresRespuestas.
	"0 < 1"
	self deny: respuesta3 dentroDeMejoresRespuestas