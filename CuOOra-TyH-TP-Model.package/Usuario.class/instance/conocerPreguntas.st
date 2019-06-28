accessing
conocerPreguntas
	| retorno |
	retorno := 'PREGUNTAS' , String cr.
	preguntas do: [ :x | retorno := retorno , x asString ].
	^ retorno