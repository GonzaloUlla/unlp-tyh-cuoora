controlling
validateSignupUsuario: unUsuario
	unUsuario nombre isBlank
		ifTrue: [ self errorLogin: true ]
		ifFalse: [ unUsuario contraseña isBlank
				ifTrue: [ self errorLogin: true ] ].
	self errorLogin
		ifFalse: [ (self loginUsuario: unUsuario)
				ifNil: [ self limpiarUsuario.
					self answer: (self registrarUsuario: unUsuario) ]
				ifNotNil: [ errorLogin := true ] ]