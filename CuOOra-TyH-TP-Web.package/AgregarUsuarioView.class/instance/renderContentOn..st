rendering
renderContentOn: html
	html heading with: 'Hola mundo'.
	html tbsButton
		beDefault;
		with: [ html anchor
				callback: [ self answer ];
				with: [ html tbsGlyphIcon iconArrowLeft.
					html text: 'Volver' ] ].
	html space