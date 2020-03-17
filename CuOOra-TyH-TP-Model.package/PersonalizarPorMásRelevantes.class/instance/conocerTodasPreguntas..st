api
conocerTodasPreguntas: unCuoora
	| todasPreguntas |
	todasPreguntas := Set new.
	unCuoora conocerUsuarios
		do: [ :user | todasPreguntas addAll: user conocerPreguntas ].
	^ todasPreguntas