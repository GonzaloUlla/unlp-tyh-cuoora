rendering-header
renderLoggedUserOn: html
	loggedUser
		ifNotNil: [ html div
				class: 'pull-right';
				with: [ html anchor
						callback: [ "self call: perfilUsuarioView" ];
						"TODO: #PerfilUsuario"
							with: loggedUser nombre ] ]