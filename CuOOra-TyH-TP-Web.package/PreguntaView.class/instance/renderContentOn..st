rendering
renderContentOn: html
	html tbsPanel beDefault
		with: [ html
				tbsPanelHeading: pregunta título;
				tbsPanelBody: [ html paragraph: pregunta texto.
					html text: 'Tópicos:'.
					html space.
					pregunta conocerTópicosRelacionados do: [ :eachTopic | html text: eachTopic nombre , ', ' ].
					html break.
					html text: 'Realizada por: '.
					html text: pregunta usuario nombre.
					html text: ' | Fecha: '.
					html text: pregunta fechaCreación asStringYMDHM.
					html break.
					html text: 'Respuestas: '.
					html text: pregunta conocerRespuestas size.
					html text: ' | Likes: '.
					html text: pregunta conocerVotosPositivos size.
					html text: ' | Dislikes: '.
					html text: pregunta conocerVotosNegativos size.
					html break.
					html anchor
						callback: [ pregunta agregarVotoPositivo: (Voto usuario: loggedUser entrada: pregunta) ];
						with: [ html tbsGlyphIcon iconThumbsUp.
							html text: 'Like' ].
					html space.
					html anchor
						callback: [ pregunta agregarVotoNegativo: (Voto usuario: loggedUser entrada: pregunta) ];
						with: [ html tbsGlyphIcon iconThumbsDown.
							html text: 'Dislike' ] ] ]