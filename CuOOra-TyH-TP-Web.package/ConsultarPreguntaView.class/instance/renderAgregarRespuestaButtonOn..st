rendering
renderAgregarRespuestaButtonOn: html
	html
		tbsForm: [ html tbsSubmitButton
				callback: [ loggedUser := self call: (AgregarRespuestaView preguntaView: preguntaView  cuooraSingleton: cuooraSingleton loggedUser: loggedUser). ];
				with: [ html tbsGlyphIcon iconPlus.
					html text: ' Agregar respuesta' ] ]