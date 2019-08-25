testing
testConocerUsuarioSiExiste
	| usuario1 usuario2 |
	usuario1 := Usuario nombre: 'Julieta' contraseña: 'Julieta123'.
	usuario2 := Usuario nombre: 'Gonzalo' contraseña: 'Julieta123'.
	cuoora agregarUsuario: usuario1.
	self assert: (cuoora conocerUsuarioSiExiste: usuario1) = usuario1.
	self assert: (cuoora conocerUsuarioSiExiste: usuario2) isNil