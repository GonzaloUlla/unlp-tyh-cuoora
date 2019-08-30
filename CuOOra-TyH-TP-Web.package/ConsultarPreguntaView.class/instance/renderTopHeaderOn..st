rendering-header
renderTopHeaderOn: html
	html
		tbsBreadcrumb: [ html
				tbsBreadcrumbSection: [ html anchor
						callback: [ self answer: loggedUser ];
						with: [ html text: 'Atrás' ] ].
			html tbsBreadcrumbSection
				beActive;
				with: 'Consultar pregunta'.
			self renderLoggedUserOn: html ]