tests
testSeguirA
	usuario seguirA: (Usuario nombre: 'u1' contraseña: 'u2').
	self assert: usuario conocerUsuariosSeguidos size equals: 1.
	self assert: usuario conocerUsuariosSeguidos atRandom nombre equals: 'u1'.
	self assert: usuario conocerUsuariosSeguidos atRandom nombre = 'u1'.
	self deny: usuario conocerUsuariosSeguidos atRandom nombre = 'u2'