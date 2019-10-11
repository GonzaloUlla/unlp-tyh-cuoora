rendering-header
renderTopHeaderOn: html heading: aHeadingString
	html
		tbsBreadcrumb: [ html
				tbsBreadcrumbSection: [ html anchor
						callback: [ self answer: nil ];
						with: [ html text: 'Atrás' ] ].
			html tbsBreadcrumbSection
				beActive;
				with: aHeadingString ]