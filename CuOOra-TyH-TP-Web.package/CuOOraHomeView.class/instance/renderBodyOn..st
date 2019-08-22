rendering
renderBodyOn: html
	preguntaViews
		ifNotNil: [ preguntaViews
				do: [ :eachPreguntaView | 
					html break.
					html render: eachPreguntaView.
					self renderConsultarPreguntaButtonOn: html preguntaView: eachPreguntaView.
					html break ] ]