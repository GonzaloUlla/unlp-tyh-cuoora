rendering
renderBodyOn: html
	self initializePreguntaViews.
	html div
		with: [ preguntaViews
				ifNotNil: [ preguntaViews
						do: [ :eachPreguntaView | 
							html render: eachPreguntaView.
							self renderConsultarPreguntaButtonOn: html preguntaView: eachPreguntaView.
							html break ] ] ]