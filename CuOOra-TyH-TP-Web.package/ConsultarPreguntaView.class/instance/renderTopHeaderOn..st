rendering-header
renderTopHeaderOn: html
	html
		tbsBreadcrumb: [ html
				tbsBreadcrumbSection: [ html anchor
						callback: [ self answer: loggedUser ];
						with: [ html text: 'Home' ] ].
			html tbsBreadcrumbSection
				beActive;
				with: 'Consultar pregunta'.
			self renderLoggedUserOn: html ]