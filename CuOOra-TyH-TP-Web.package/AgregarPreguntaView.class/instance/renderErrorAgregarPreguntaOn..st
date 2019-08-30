rendering
renderErrorAgregarPreguntaOn: html
	error
		ifTrue: [ html text: 'Error: faltan datos de su pregunta' ]