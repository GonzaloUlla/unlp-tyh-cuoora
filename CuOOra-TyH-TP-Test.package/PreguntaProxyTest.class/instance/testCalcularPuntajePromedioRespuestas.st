testing
testCalcularPuntajePromedioRespuestas
	| proxy2 respuesta1 respuesta2 respuesta3 respuesta4 usuario1 usuario2 usuario3 voto1 voto2 voto3 voto4 voto5 voto6 voto7 |
	proxy2 := proxy copy.
	proxy2 texto: 'Otro texto muy diferente'.
	"Inicializo usuario1, usuario2 y usuario3"
	usuario1 := Usuario nombre: 'Gonzalo' contraseña: 'Gonzalo123'.
	usuario2 := Usuario nombre: 'Pedro' contraseña: 'Pedro123'.
	usuario3 := Usuario nombre: 'Ana' contraseña: 'Ana123'.

	"Inicializo respuesta1, respuesta2 y respuesta3"
	respuesta1 := Respuesta usuario: usuario1 texto: 'r1' preguntaReferida: proxy.
	respuesta2 := Respuesta usuario: usuario2 texto: 'r2' preguntaReferida: proxy.
	respuesta3 := Respuesta usuario: usuario3 texto: 'r3' preguntaReferida: proxy.
	respuesta4 := Respuesta usuario: usuario3 texto: 'r3' preguntaReferida: proxy2.
	sDAO put: respuesta4.
	proxy activar.

	"Agrego respuesta1, respuesta2 y respuesta3 a pregunta"
	proxy agregarRespuesta: respuesta1.
	proxy agregarRespuesta: respuesta2.
	proxy agregarRespuesta: respuesta3.

	"Valido que la pregunta posea tres respuestas"
	self assert: proxy conocerRespuestas size equals: 6.

	"Valido que el puntaje promedio de las respuestas sea 0, dado que todavía no poseen votos"
	self assert: proxy calcularPuntajePromedioRespuestas equals: 0.

	"Inicializo voto1, voto2, voto3, voto4 y voto5"
	voto1 := Voto usuario: usuario2 entrada: respuesta1.
	voto2 := Voto usuario: usuario3 entrada: respuesta1.
	voto3 := Voto usuario: usuario1 entrada: respuesta2.
	voto4 := Voto usuario: usuario1 entrada: respuesta3.
	voto5 := Voto usuario: usuario2 entrada: respuesta3.
	voto6 := Voto usuario: usuario2 entrada: respuesta4.
	voto7 := Voto usuario: usuario2 entrada: respuesta4.

	"respuesta1 posee 2 puntos a favor, respuesta2 posee 1 punto a favor y respuesta3 posee 0 puntos a favor"
	respuesta1 agregarVotoPositivo: voto1.
	respuesta1 agregarVotoPositivo: voto2.
	respuesta2 agregarVotoPositivo: voto3.
	respuesta3 agregarVotoPositivo: voto4.
	respuesta3 agregarVotoNegativo: voto5.
	respuesta4 agregarVotoPositivo: voto6.
	respuesta4 agregarVotoPositivo: voto6.
	respuesta4 agregarVotoPositivo: voto7.
	"Valido que el puntaje promedio de respuestas sea 1, dado que 3/3 = 1"
	self assert: proxy calcularPuntajePromedioRespuestas equals: 1