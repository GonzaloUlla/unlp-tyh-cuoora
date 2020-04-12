creating
crearRespuestaA: unaPregunta haceSemanas: nWeeks
	^ Respuesta
		usuario: (Usuario nombre: 'ejemplo@ejemplo.com' contraseña: 'ejemplo@ejemplo.com')
		fechaCreación: DateAndTime now - nWeeks weeks
		texto: 'Texto de ejemplo'
		preguntaReferida: unaPregunta