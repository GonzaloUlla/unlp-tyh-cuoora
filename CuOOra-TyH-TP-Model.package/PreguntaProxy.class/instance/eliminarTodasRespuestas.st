api
eliminarTodasRespuestas
	"Elimina todos los Votos de cada Respuesta y luego todas las Respuestas de sus usuarios y de la Pregunta"

	pregunta ifNil: [ self initializePregunta ].
	^ pregunta eliminarTodasRespuestas