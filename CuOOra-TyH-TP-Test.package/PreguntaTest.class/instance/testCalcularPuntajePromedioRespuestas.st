testing
testCalcularPuntajePromedioRespuestas
	| respuesta1 respuesta2 respuesta3 usuario1 usuario2 usuario3 voto1 voto2 voto3 voto4 voto5 |

	"Inicializo usuario1, usuario2 y usuario3"
	usuario1 := Usuario nombre: 'Gonzalo' contraseña: 'Gonzalo123'.
	usuario2 := Usuario nombre: 'Pedro' contraseña: 'Pedro123'.
	usuario3 := Usuario nombre: 'Ana' contraseña: 'Ana123'.
	
	"Inicializo respuesta1, respuesta2 y respuesta3"
	respuesta1 := Respuesta
		usuario: usuario1
		texto: 'r1'
		preguntaReferida: pregunta.
	respuesta2 := Respuesta
		usuario: usuario2
		texto: 'r2'
		preguntaReferida: pregunta.
	respuesta3 := Respuesta
		usuario: usuario3
		texto: 'r3'
		preguntaReferida: pregunta.
		
	"Agrego respuesta1, respuesta2 y respuesta3 a pregunta"	
	pregunta agregarRespuesta: respuesta1.
	pregunta agregarRespuesta: respuesta2.
	pregunta agregarRespuesta: respuesta3.
	
	"Valido que la pregunta posea tres respuestas"
	self assert: pregunta conocerRespuestas size equals: 3.
	
	"Valido que el puntaje promedio de las respuestas sea 0, dado que todavía no poseen votos"
	self
		assert: pregunta calcularPuntajePromedioRespuestas
		equals: 0.
		
	"Inicializo voto1, voto2, voto3, voto4 y voto5"	
	voto1 := Voto usuario: usuario2 entrada: respuesta1.
	voto2 := Voto usuario: usuario3 entrada: respuesta1.
	voto3 := Voto usuario: usuario1 entrada: respuesta2.
	voto4 := Voto usuario: usuario1 entrada: respuesta3.
	voto5 := Voto usuario: usuario2 entrada: respuesta3.
	
	"respuesta1 posee 2 puntos a favor, respuesta2 posee 1 punto a favor y respuesta3 posee 0 puntos a favor"
	respuesta1 agregarVotoPositivo: voto1.
	respuesta1 agregarVotoPositivo: voto2.
	respuesta2 agregarVotoPositivo: voto3.
	respuesta3 agregarVotoPositivo: voto4.
	respuesta3 agregarVotoNegativo: voto5.
	
	"Valido que el puntaje promedio de respuestas sea 1, dado que 3/3 = 1"
	self
		assert: pregunta calcularPuntajePromedioRespuestas
		equals: 1.
		
		