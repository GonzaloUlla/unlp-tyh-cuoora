rendering-header
renderLoggedUserOn: html
	loggedUser
		ifNil: [ html div
				class: 'pull-right';
				with: [ html text: 'Sin identificar'.
					html space: 5.
					html anchor
						callback: [ loggedUser := self call: agregarUsuarioView.
							self initializePreguntaViews ];
						with: 'Iniciar sesión' ] ]
		ifNotNil: [ html div
				class: 'pull-right';
				with: [ html anchor
						callback: [ self call: (PerfilUsuarioView usuarioPerfil: loggedUser loggedUser: loggedUser) ];
						with: loggedUser nombre.
					html space: 5.
					html anchor
						callback: [ loggedUser := nil.
							self initializePreguntaViews ];
						with: 'Cerrar sesión' ] ]
