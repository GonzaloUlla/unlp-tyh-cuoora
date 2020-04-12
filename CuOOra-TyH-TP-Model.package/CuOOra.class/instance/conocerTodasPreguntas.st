api
conocerTodasPreguntas
	| todasPreguntas |
	todasPreguntas := Set new.
	self conocerUsuarios do: [ :user | todasPreguntas addAll: user conocerPreguntas ].
	^ todasPreguntas