creating
crearVotoPositivoA: unaPregunta haceSemanas: nWeeks
	^ Voto
		usuario: (Usuario nombre: 'ejemplo@ejemplo.com' contraseña: 'ejemplo@ejemplo.com')
		entrada: unaPregunta
		fechaCreación: DateAndTime now - nWeeks weeks
		esPositivo: true