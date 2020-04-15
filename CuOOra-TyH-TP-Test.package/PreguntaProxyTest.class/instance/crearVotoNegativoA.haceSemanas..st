creating
crearVotoNegativoA: unaPregunta haceSemanas: nWeeks
	| fecha |
	fecha := DateAndTime today - 1 day.
	^ Voto
		usuario: (Usuario nombre: 'ejemplo@ejemplo.com' contraseña: 'ejemplo@ejemplo.com')
		entrada: unaPregunta
		fechaCreación: fecha - nWeeks weeks
		esPositivo: false