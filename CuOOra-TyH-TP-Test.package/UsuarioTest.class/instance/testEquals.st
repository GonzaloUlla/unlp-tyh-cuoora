testing
testEquals
	| otroUsuario |
	otroUsuario := usuario copy.
	self assert: usuario equals: otroUsuario.
	otroUsuario nombre: 'Otro nombre diferente al anterior'.
	self deny: (usuario equals: otroUsuario)