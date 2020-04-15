creating
crearRespuestaA: unaPregunta haceSemanas: nWeeks
	| fecha |
	fecha := DateAndTime today - 1 day.
	^ Respuesta
		usuario: (Usuario nombre: 'ejemplo@ejemplo.com' contraseña: 'ejemplo@ejemplo.com')
		fechaCreación: fecha - nWeeks weeks
		texto: 'Texto de ejemplo'
		preguntaReferida: unaPregunta