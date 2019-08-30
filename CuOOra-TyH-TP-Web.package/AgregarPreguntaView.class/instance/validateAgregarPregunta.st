controlling
validateAgregarPregunta
	"Checks required fields for pregunta"

	error := pregunta título isBlank or: [ pregunta texto isBlank or: pregunta conocerTópicosRelacionados isEmpty ].
	^ error not