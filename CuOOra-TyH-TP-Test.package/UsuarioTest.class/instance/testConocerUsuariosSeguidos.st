tests
testConocerUsuariosSeguidos
	| usuario1 usuario2 |
	"initialization"
	usuario1 := Usuario nombre: 'u1' contraseña: 'u1'.
	usuario2 := Usuario nombre: 'u2' contraseña: 'u2'.
	usuario seguirA: usuario1.
	self assert: (usuario conocerUsuariosSeguidos includes: usuario1).
	self deny: (usuario conocerUsuariosSeguidos includes: usuario2).
	self assert: usuario conocerUsuariosSeguidos size equals: 1.
	"try to modify usuarios"
	usuario conocerUsuariosSeguidos add: 'otro usuario'.
	self assert: usuario conocerUsuariosSeguidos size equals: 1