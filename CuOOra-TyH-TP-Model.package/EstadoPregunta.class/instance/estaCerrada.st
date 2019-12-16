as yet unclassified
estaCerrada
	| retorno |
	retorno := false.
	(self isKindOf: Cerrada)
		ifTrue: [ retorno := true ].
	^ retorno