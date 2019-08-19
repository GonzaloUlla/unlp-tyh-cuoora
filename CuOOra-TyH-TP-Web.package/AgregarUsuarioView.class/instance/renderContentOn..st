rendering
renderContentOn: html
	self renderHeaderOn: html.
	html tbsButton
		beDefault;
		with: [ html anchor
				callback: [ self answer ];
				with: [ html tbsGlyphIcon iconArrowLeft.
					html text: 'Volver' ] ].
	html space