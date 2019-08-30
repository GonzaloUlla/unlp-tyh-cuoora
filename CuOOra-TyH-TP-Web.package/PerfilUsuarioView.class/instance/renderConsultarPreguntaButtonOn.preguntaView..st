rendering
renderConsultarPreguntaButtonOn: html preguntaView: unaPreguntaView
	html
		tbsForm: [ html tbsSubmitButton
				callback: [ loggedUser := self call: (ConsultarPreguntaView preguntaView: unaPreguntaView cuooraSingleton: cuooraSingleton loggedUser: loggedUser).
					loggedUser ifNil: [ self answer: nil ] ifNotNil: [ self initializePreguntaViews ] ];
				with: [ html tbsGlyphIcon iconArrowRight.
					html text: ' Ver respuestas' ] ]