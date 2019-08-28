rendering-header
renderLoggedUserOn: html
	loggedUser
		ifNotNil: [ html div
				class: 'pull-right';
				with: [ html anchor
						callback: [ self call: (self class usuarioPerfil: loggedUser loggedUser: loggedUser) ];
						with: loggedUser nombre.
					html space: 5.
					html anchor
						callback: [ self answer: nil ];
						with: 'Cerrar sesión' ] ]