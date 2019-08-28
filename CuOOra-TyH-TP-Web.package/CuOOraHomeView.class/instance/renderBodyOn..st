rendering
renderBodyOn: html
	loggedUser ifNotNil: [ html div with: [ self renderAgregarPreguntaButtonOn: html ] ].
	html space.
	preguntaViews
		ifNotNil: [ preguntaViews
				do: [ :eachPreguntaView | 
					html break.
					html render: eachPreguntaView.
					self renderConsultarPreguntaButtonOn: html preguntaView: eachPreguntaView.
					html break ] ]
