api
dejarDeSeguirA: unUsuario
	sigueA remove: unUsuario ifAbsent: [ ^ false ].
	^ true