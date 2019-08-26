rendering
renderConsultarPreguntaButtonOn: html preguntaView: unaPreguntaView
	html
		tbsForm: [ html tbsSubmitButton
				callback: [ loggedUser := self call: (ConsultarPreguntaView preguntaView: unaPreguntaView loggedUser: loggedUser).
					self initializePreguntaViews ];
				with: [ html tbsGlyphIcon iconArrowRight.
					html text: ' Ver respuestas' ] ]