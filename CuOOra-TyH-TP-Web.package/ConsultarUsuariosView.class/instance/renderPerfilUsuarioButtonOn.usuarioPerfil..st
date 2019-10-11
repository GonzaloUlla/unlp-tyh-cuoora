rendering
renderPerfilUsuarioButtonOn: html usuarioPerfil: unUsuario
	html tbsSubmitButton
		callback: [ loggedUser := self call: (PerfilUsuarioView usuarioPerfil: unUsuario loggedUser: loggedUser cuooraSingleton: cuooraSingleton) ];
		with: [ html tbsGlyphIcon iconArrowRight.
			html text: ' Perfil' ]