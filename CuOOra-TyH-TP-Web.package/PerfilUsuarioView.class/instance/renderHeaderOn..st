rendering-header
renderHeaderOn: html
	html div
		class: #header;
		with: [ self renderTopHeaderOn: html ].
	html
		tbsPageHeader: [ html
				heading: [ html text: 'Preguntas de '.
					html text: usuarioPerfil nombre.
					html space.
					(usuarioPerfil = loggedUser)
					ifFalse: [ html small: [html anchor
						callback: [ loggedUser seguirA: usuarioPerfil. ];
						with: 'Seguir' ] ]
					 ] ]