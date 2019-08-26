api
validarUsuarioContraseña: unUsuario
	| usuarioRegistrado |
	usuarioRegistrado := self conocerUsuarioSiExiste: unUsuario.
	usuarioRegistrado
		ifNotNil: [ usuarioRegistrado contraseña = unUsuario contraseña
				ifFalse: [ usuarioRegistrado := nil ] ].
	^ usuarioRegistrado