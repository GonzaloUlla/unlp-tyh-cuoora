comparing
= otraPregunta
	^ self usuario = otraPregunta usuario
		and: [ self título = otraPregunta título and: [ self texto = otraPregunta texto ] ]