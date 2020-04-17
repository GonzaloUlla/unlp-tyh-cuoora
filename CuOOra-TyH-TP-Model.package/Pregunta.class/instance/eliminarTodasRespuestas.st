api
eliminarTodasRespuestas
	"Elimina todos los Votos de cada Respuesta y luego todas las Respuestas de sus usuarios y de la Pregunta"

	respuestas do: [ :respuesta | respuesta eliminarTodosVotos eliminarUsuario ].
	respuestas removeAll.
	respuestasSize := 0