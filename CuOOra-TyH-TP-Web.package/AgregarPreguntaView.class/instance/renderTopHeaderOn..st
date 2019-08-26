rendering-header
renderTopHeaderOn: html
	html
		tbsBreadcrumb: [ html
				tbsBreadcrumbSection: [ html anchor
						callback: [ self answer ];
						with: [ html text: 'Home' ] ].
			html tbsBreadcrumbSection
				beActive;
				with: 'Agregar pregunta'.
			self renderLoggedUserOn: html ]