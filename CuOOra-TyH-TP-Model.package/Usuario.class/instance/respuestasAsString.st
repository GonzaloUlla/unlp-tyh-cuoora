converting
respuestasAsString
	"Retorna Respuestas como un String"

	| retorno |
	retorno := 'RESPUESTAS' , String cr.
	respuestas do: [ :x | retorno := retorno , x asString ].
	^ retorno