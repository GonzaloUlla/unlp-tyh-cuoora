api
conocerPreguntasDeUsuariosSeguidosPor: unUsuario
	| preguntasDeUsuariosSeguidos |
	preguntasDeUsuariosSeguidos := Set new.
	unUsuario conocerUsuariosSeguidos
		do: [ :user | preguntasDeUsuariosSeguidos addAll: user conocerPreguntas ].
	^ preguntasDeUsuariosSeguidos