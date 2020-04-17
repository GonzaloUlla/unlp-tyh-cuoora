testing
testHash
	| otroUsuario |
	otroUsuario := usuario copy.
	self assert: usuario hash = otroUsuario hash.
	otroUsuario nombre: 'Otro nombre diferente al anterior'.
	self deny: usuario hash = otroUsuario hash