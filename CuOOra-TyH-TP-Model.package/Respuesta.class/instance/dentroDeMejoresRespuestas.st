api
dentroDeMejoresRespuestas
	"Retorna true/false dependiendo si el puntaje de la Respuesta es mayor o igual al promedio de puntaje de todas las respuestas a esa Pregunta"

	^ self calcularPuntaje >= preguntaReferida calcularPuntajePromedioRespuestas