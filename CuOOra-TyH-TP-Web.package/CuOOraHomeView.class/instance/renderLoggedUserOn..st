rendering-header
renderLoggedUserOn: html
	usuario
		ifNil: [ html div
				class: 'pull-right';
				with: [ html text: 'Sin identificar'.
					html space.
					html anchor
						callback: [ usuario := self showViewCalled: '#AgregarUsuario' ];
						with: 'Iniciar sesión' ] ]
		ifNotNil: [ html div
				class: 'pull-right';
				with: [ html anchor
						callback: [ self showViewCalled: '#PerfilUsuario' ];
						"TODO"
							with: usuario nombre ] ]