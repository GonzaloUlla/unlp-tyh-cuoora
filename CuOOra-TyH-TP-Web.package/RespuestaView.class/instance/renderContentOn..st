rendering
renderContentOn: html
	html tbsPanel beDefault
		with: [ html
				tbsPanelHeading: 'Respuesta de ' , respuesta usuario nombre;
				tbsPanelBody: [ html paragraph: respuesta texto.
					html text: 'Fecha: '.
					html text: respuesta fechaCreación asStringYMDHM.
					html break.
					html text: 'Likes: '.
					html text: respuesta conocerVotosPositivos size.
					html text: ' | Dislikes: '.
					html text: respuesta conocerVotosNegativos size.
					html break.
					html anchor
						callback: [ respuesta agregarVotoPositivo: (Voto usuario: loggedUser entrada: respuesta) ];
						with: [ html tbsGlyphIcon iconThumbsUp.
							html text: 'Like' ].
					html space.
					html anchor
						callback: [ respuesta agregarVotoNegativo: (Voto usuario: loggedUser entrada: respuesta) ];
						with: [ html tbsGlyphIcon iconThumbsDown.
							html text: 'Dislike' ] ] ]