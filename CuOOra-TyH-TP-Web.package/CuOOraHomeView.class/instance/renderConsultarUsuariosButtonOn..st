rendering
renderConsultarUsuariosButtonOn: html
	html tbsSubmitButton
		callback: [ loggedUser := self call: (ConsultarUsuariosView cuooraSingleton: cuooraSingleton loggedUser: loggedUser) ];
		with: [ html tbsGlyphIcon iconArrowRight.
			html text: ' Consultar usuarios' ]