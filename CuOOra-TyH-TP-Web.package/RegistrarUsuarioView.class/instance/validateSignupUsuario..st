controlling
validateSignupUsuario: unUsuario
	unUsuario nombre trim isEmpty
		ifTrue: [ self errorLogin: true ]
		ifFalse: [ unUsuario contraseña trim isEmpty
				ifTrue: [ self errorLogin: true ]
				ifFalse: [ self errorLogin: false ] ].
	self errorLogin
		ifFalse: [ (self loginUsuario: unUsuario)
				ifNil: [ self answer: (self registrarUsuario: unUsuario) ]
				ifNotNil: [ errorLogin := true ] ]