api
calcularPuntajePromedioRespuestas
	"Retorna el puntaje promedio de todas las Respuestas a la Pregunta"

	| puntajeTotal |
	puntajeTotal := 0.
	respuestas do: [ :respuesta | puntajeTotal := puntajeTotal + respuesta calcularPuntaje ].
	^ (puntajeTotal / respuestas size) asFloat