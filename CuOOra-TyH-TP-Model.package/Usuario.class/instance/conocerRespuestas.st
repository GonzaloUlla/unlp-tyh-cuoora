api
conocerRespuestas
	| retorno |
	retorno := 'RESPUESTAS' , String cr.
	respuestas do: [ :x | retorno := retorno , x asString ].
	^ retorno