tests
testAgregarUsuario
	|usuario1|
	usuario1 := Usuario nombre: 'Julieta' contraseña: 'Julieta123'. 
	cuoora agregarUsuario: usuario1.
	self assert: cuoora conocerUsuarios size equals: 1.
	