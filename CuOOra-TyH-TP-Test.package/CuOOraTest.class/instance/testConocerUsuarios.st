testing
testConocerUsuarios
	| usuario1 usuario2 usuario3 |
	"Agregar un usuario"
	self assert: cuoora conocerUsuarios isEmpty.
	usuario1 := Usuario nombre: 'u1' contraseña: 'u1'.
	cuoora agregarUsuario: usuario1.
	self deny: cuoora conocerUsuarios isEmpty.
	self assert: cuoora conocerUsuarios size equals: 1.
	self assert: (cuoora conocerUsuarios includes: usuario1).
	"Agregar otro usuario"
	usuario2 := Usuario nombre: 'u2' contraseña: 'u2'.
	cuoora agregarUsuario: usuario2.
	self assert: cuoora conocerUsuarios size equals: 2.
	self assert: (cuoora conocerUsuarios includes: usuario2).
	"try to modify usuarios"
	usuario3 := Usuario nombre: 'u3' contraseña: 'u3'.
	cuoora conocerUsuarios add: usuario3.
	self assert: cuoora conocerUsuarios size equals: 2.
	self deny: (cuoora conocerUsuarios includes: usuario3)