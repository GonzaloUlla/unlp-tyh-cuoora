controlling
validateAgregarRespuesta
	"Checks required fields for respuesta"

	error := respuesta texto isBlank.
	^ error not