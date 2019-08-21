accessing
children
	| children |
	children := OrderedCollection with: agregarUsuarioView.
	preguntaViews ifNotNil: [ preguntaViews do: [ :eachPreguntaView | children add: eachPreguntaView ] ].
	^ children