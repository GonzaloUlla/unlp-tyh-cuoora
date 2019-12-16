as yet unclassified
estaCreada
	| retorno |
	retorno := false.
	(self isKindOf: Creada)
		ifTrue: [ retorno := true ].
	^ retorno