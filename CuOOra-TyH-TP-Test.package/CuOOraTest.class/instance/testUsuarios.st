testing
testUsuarios
	| usuario1 |
	usuario1 := Usuario nombre: 'Julieta' contraseña: 'Julieta123'.
	cuoora agregarUsuario: usuario1.
	self deny: cuoora conocerUsuarios isEmpty