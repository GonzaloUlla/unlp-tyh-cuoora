rendering
renderAgregarPreguntaButtonOn: html
	html
		tbsForm: [ html tbsSubmitButton
				callback: [ loggedUser := self call: (AgregarPreguntaView cuooraSingleton: cuooraSingleton loggedUser: loggedUser)];
				with: [ html tbsGlyphIcon iconPlus.
					html text: ' Hacer una nueva pregunta' ] ]