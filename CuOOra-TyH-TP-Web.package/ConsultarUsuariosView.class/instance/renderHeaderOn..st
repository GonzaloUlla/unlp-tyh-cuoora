rendering-header
renderHeaderOn: html
	html div
		class: #header;
		with: [ self renderTopHeaderOn: html ].
	html
		tbsPageHeader: [ html
				heading: [ html text: 'Usuarios registrados'.
					html space.
					html small: 'Acceda al perfil de los usuarios de CuOOra' ] ]