testing
testValidarUsuarioContraseña
	| usuario1 usuario2 |
	usuario1 := Usuario nombre: 'Julieta' contraseña: 'Julieta123'.
	usuario2 := Usuario nombre: 'Julieta' contraseña: 'Julieta123'.
	cuoora agregarUsuario: usuario1.
	self assert: (cuoora validarUsuarioContraseña: usuario2) = usuario1.
	usuario2 := Usuario nombre: 'Julieta' contraseña: 'Julieta12'.
	self assert: (cuoora validarUsuarioContraseña: usuario2) isNil