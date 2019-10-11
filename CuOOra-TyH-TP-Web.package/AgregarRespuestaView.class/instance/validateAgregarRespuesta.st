controlling
validateAgregarRespuesta
	"Checks required fields for respuesta"

	error := respuesta texto trim isEmpty.
	^ error not