rendering
renderBodyOn: html
	loggedUser
		ifNotNil: [ html div
				with: [ html tbsButton
						with: [ html tbsButtonLabel: [ html tbsGlyphIcon iconPlus ].
							html text: 'Hacer una nueva pregunta' ] ] ].
	html space.
	preguntaViews
		ifNotNil: [ preguntaViews do: [ :eachPreguntaView | html render: eachPreguntaView ] ]