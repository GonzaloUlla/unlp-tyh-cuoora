testing
testEliminarTodasRespuestas

	|usuario1 respuesta1 respuesta2 voto1|
	
	"Inicializo usuario1 y respuesta1"
	usuario1 := Usuario 
		nombre: 'Gonzalo' 
		contraseña: 'Gonzalo123'.
	
	respuesta1 := Respuesta 
		usuario: usuario1  
		texto: 'r1'  
		preguntaReferida: pregunta.   

	respuesta2 := Respuesta 
		usuario: usuario1  
		texto: 'r2'  
		preguntaReferida: pregunta.	
	
	"Agrego respuesta1 y respuesta2 a pregunta"
	pregunta activar.
	pregunta agregarRespuesta: respuesta1.
	pregunta agregarRespuesta: respuesta2.
	
	"Inicializo el voto1"
	voto1 := Voto 
		usuario: usuario1 
		entrada: respuesta1.
	
	"Agrego voto1 positivo en respuesta1"	
	respuesta1 agregarVotoPositivo: voto1. 
	
	"Valido que la respuesta1 tiene un voto positivo"
	self assert: respuesta1 conocerVotosPositivos size equals: 1.
	
	"Valido que la pregunta posea dos respuestas"
	self assert: pregunta conocerRespuestas size equals: 2.
	
	"Elimino todas las respuestas de la pregunta"
	pregunta eliminarTodasRespuestas.
	
	"Valido que la pregunta no posee dos respuestas"
	self deny: pregunta conocerRespuestas size = 2.
	
	"Valido que la pregunta no posee respuestas"
	self assert: pregunta conocerRespuestas isEmpty.
	
	"Valido que la respuesta no posee votos positivos"
	self assert: respuesta1 conocerVotosPositivos isEmpty. 
	