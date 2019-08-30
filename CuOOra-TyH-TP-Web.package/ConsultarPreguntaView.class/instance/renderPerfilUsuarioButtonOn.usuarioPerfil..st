rendering
renderPerfilUsuarioButtonOn: html usuarioPerfil: unUsuario
	html
		tbsForm: [ html tbsSubmitButton
				callback: [ (self call: (PerfilUsuarioView usuarioPerfil: unUsuario loggedUser: loggedUser cuooraSingleton: cuooraSingleton)) ifNil: [ self answer: nil ] ];
				with: [ html tbsGlyphIcon iconArrowRight.
					html text: ' Ver perfil de ' , unUsuario nombre ] ]