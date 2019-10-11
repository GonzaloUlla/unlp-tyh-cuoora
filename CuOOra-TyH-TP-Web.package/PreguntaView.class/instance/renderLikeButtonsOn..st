rendering
renderLikeButtonsOn: html
	html anchor
		callback: [ pregunta agregarVotoPositivo: (Voto usuario: loggedUser entrada: pregunta) ];
		with: [ html tbsGlyphIcon iconThumbsUp.
			html text: 'Like' ].
	html space.
	html anchor
		callback: [ pregunta agregarVotoNegativo: (Voto usuario: loggedUser entrada: pregunta) ];
		with: [ html tbsGlyphIcon iconThumbsDown.
			html text: 'Dislike' ]