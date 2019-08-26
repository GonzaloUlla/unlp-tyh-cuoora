api
conocerUsuarioSiExiste: unUsuario
	usuarios detect: [ :eachUser | eachUser = unUsuario ] ifFound: [ :eachUsuario | ^ eachUsuario ] ifNone: [ ^ nil ]