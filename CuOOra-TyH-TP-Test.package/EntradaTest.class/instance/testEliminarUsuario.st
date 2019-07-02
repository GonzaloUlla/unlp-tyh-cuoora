testing
testEliminarUsuario
	self assert: entrada usuario isNotNil.
	entrada eliminarUsuario.
	self assert: entrada usuario isNil