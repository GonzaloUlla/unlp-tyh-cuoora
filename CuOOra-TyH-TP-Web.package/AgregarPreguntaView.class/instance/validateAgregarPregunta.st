controlling
validateAgregarPregunta
	"Checks required fields for pregunta"

	error := pregunta título trim isEmpty
		or: [ pregunta texto trim isEmpty or: pregunta conocerTópicosRelacionados isEmpty ].
	^ error not