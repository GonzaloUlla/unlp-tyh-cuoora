rendering-header
renderLoggedUserOn: html
	loggedUser
		ifNotNil: [ html div
				class: 'pull-right';
				with: [ html anchor
						callback: [ self call: (PerfilUsuarioView usuarioPerfil: loggedUser loggedUser: loggedUser cuooraSingleton: cuooraSingleton) ];
						with: loggedUser nombre.
					html space: 5.
					html anchor
						callback: [ loggedUser := nil.
							self call: (AgregarUsuarioView cuooraSingleton: self cuooraSingleton) ];
						with: 'Cerrar sesión' ] ]