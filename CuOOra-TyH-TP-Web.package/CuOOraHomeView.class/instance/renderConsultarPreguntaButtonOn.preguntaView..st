rendering
renderConsultarPreguntaButtonOn: html preguntaView: unaPreguntaView
	html
		tbsForm: [ html tbsSubmitButton
				callback: [ self call: (ConsultarPreguntaView preguntaView: unaPreguntaView loggedUser: loggedUser) ];
				with: [ html tbsGlyphIcon iconArrowRight.
					html text: ' Ver respuestas' ] ]