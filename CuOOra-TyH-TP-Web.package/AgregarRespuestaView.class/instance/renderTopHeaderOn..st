rendering-header
renderTopHeaderOn: html
	html
		tbsBreadcrumb: [ html
				tbsBreadcrumbSection: [ html anchor
						callback: [ self answer: loggedUser ];
						with: [ html text: 'Consultar pregunta' ] ].
			html tbsBreadcrumbSection
				beActive;
				with: 'Agregar respuesta'.
			self renderLoggedUserOn: html ]