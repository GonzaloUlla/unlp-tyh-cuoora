api
calcularPuntajePromedioRespuestas
	"Retorna el puntaje promedio de todas las Respuestas a la Pregunta"

	| puntajeTotal todasRespuestas respuestasSubset |
	puntajeTotal := 0.
	todasRespuestas := sDAO retrieveAllByClass: Respuesta.
	respuestasSubset := todasRespuestas select: [ :rta | rta preguntaReferida = pregunta ].
	respuestasSubset do: [ :respuesta | puntajeTotal := puntajeTotal + respuesta calcularPuntaje ].
	^ (puntajeTotal / respuestasSubset size) asFloat