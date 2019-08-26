rendering-header
renderHeaderOn: html
	html div
		class: #header;
		with: [ self renderTopHeaderOn: html ].
	html
		tbsPageHeader: [ html
				heading: [ html text: 'Nueva pregunta'.
					html space.
					html small: 'Ingrese título, desarrollo y tópicos de la pregunta a agregar' ] ]