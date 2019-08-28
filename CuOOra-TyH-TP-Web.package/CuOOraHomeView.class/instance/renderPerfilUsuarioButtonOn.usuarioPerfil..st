rendering
renderPerfilUsuarioButtonOn: html usuarioPerfil: unUsuario
	html
		tbsForm: [ html tbsSubmitButton
				callback: [ loggedUser := self call: (PerfilUsuarioView usuarioPerfil: unUsuario loggedUser: loggedUser).
					self initializePreguntaViews ];
				with: [ html tbsGlyphIcon iconArrowRight.
					html text: ' Ver perfil de ' , unUsuario nombre ] ]