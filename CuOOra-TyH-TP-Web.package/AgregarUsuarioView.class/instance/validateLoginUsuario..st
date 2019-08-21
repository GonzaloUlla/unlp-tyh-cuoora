controlling
validateLoginUsuario: unUsuario
	(self loginUsuario: unUsuario)
		ifNil: [ errorLogin := true ]
		ifNotNil: [ self limpiarUsuario.
			self answer: (self loginUsuario: unUsuario) ]