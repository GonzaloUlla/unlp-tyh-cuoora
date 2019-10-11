rendering
renderLikeButtonsOn: html
	html anchor
		callback: [ respuesta agregarVotoPositivo: (Voto usuario: loggedUser entrada: respuesta) ];
		with: [ html tbsGlyphIcon iconThumbsUp.
			html text: 'Like' ].
	html space.
	html anchor
		callback: [ respuesta agregarVotoNegativo: (Voto usuario: loggedUser entrada: respuesta) ];
		with: [ html tbsGlyphIcon iconThumbsDown.
			html text: 'Dislike' ]