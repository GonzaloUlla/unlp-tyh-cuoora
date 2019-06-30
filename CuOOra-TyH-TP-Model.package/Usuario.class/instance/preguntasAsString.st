converting
preguntasAsString
	"Retorna Preguntas como un String"

	| retorno |
	retorno := 'PREGUNTAS' , String cr.
	preguntas do: [ :x | retorno := retorno , x asString ].
	^ retorno