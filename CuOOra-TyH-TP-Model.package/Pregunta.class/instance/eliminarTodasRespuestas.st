api
eliminarTodasRespuestas
	"ELimina todos los Votos de cada Respuesta y luego todas las Respuestas de la Pregunta"

	respuestas do: [ :respuesta | respuesta eliminarTodosVotos ].
	respuestas removeAll