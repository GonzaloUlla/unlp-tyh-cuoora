rendering-header
renderHeaderOn: html
	html div
		class: #header;
		with: [ self renderTopHeaderOn: html ].
	html
		tbsPageHeader: [ html
				heading: [ html text: 'Bienvenido a CuOOra'.
					html space.
					html small: 'Plataforma de preguntas y respuestas' ] ]