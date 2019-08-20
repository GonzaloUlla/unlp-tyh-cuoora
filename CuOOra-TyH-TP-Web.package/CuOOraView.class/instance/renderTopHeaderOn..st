rendering-header
renderTopHeaderOn: html
	html div
		class: 'top-header';
		with: [ html div
				class: 'container';
				with: [ html div
						class: 'register-info';
						with: [ html
								listItem: [ html anchor
										callback: [ self showViewCalled: '#AgregarUsuario' ];
										with: 'Registrar' ];
								clearfix ] ].
			html clearfix ]