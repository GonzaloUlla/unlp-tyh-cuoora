rendering-header
renderLoggedUserOn: html
	loggedUser
		ifNil: [ html div
				class: 'pull-right';
				with: [ html text: 'Sin identificar'.
					html space.
					html anchor
						callback: [ loggedUser := self call: agregarUsuarioView.
							self initializePreguntaViews ];
						with: 'Iniciar sesión' ] ]
		ifNotNil: [ html div
				class: 'pull-right';
				with: [ html anchor
						callback: [ "self call: perfilUsuarioView" ];
						"TODO: #PerfilUsuario"
							with: loggedUser nombre ] ]