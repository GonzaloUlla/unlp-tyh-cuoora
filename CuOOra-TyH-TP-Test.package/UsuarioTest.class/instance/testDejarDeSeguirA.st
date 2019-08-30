testing
testDejarDeSeguirA
	| usuario1 usuario2 |
	usuario1 := Usuario nombre: 'u1' contraseña: 'u1'.
	usuario2 := Usuario nombre: 'u2' contraseña: 'u2'.
	usuario seguirA: usuario1.
	self assert: usuario conocerUsuariosSeguidos size equals: 1.
	self assert: usuario conocerUsuariosSeguidos atRandom nombre equals: 'u1'.
	self assert: (usuario esSeguidorDe: usuario1).
	self deny: (usuario esSeguidorDe: usuario2).
	usuario dejarDeSeguirA: usuario1.
	self deny: (usuario esSeguidorDe: usuario1).
	usuario dejarDeSeguirA: usuario2.
	self deny: (usuario esSeguidorDe: usuario2)