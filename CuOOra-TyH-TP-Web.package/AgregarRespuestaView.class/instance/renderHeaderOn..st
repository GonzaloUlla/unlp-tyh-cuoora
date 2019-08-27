rendering-header
renderHeaderOn: html
	html div
		class: #header;
		with: [ self renderTopHeaderOn: html ].
	html
		tbsPageHeader: [ html
				heading: [ html text: 'Nueva respuesta'.
					html space.
					html small: 'Ingrese el texto de la respuesta a agregar' ] ]