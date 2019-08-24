controlling
loginUsuario: unUsuario
	self cuooraInstance conocerUsuarios
		detect: [ :eachUsuario | eachUsuario nombre = unUsuario nombre and: eachUsuario contraseña = unUsuario contraseña ]
		ifFound: [ :eachUsuario | ^ eachUsuario ]
		ifNone: [ ^ nil ]