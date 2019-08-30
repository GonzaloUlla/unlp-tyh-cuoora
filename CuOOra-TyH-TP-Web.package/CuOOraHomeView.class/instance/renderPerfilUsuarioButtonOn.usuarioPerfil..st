rendering
renderPerfilUsuarioButtonOn: html usuarioPerfil: unUsuario
	html tbsSubmitButton
		callback: [ loggedUser := self call: (PerfilUsuarioView usuarioPerfil: unUsuario loggedUser: loggedUser cuooraSingleton: cuooraSingleton).
			self initializePreguntaViews ];
		with: [ html tbsGlyphIcon iconArrowRight.
			html text: ' Ver perfil de ' , unUsuario nombre ]