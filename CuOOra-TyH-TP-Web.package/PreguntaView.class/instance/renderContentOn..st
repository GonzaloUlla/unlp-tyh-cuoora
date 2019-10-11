rendering
renderContentOn: html
	html tbsPanel beDefault
		with: [ html
				tbsPanelHeading: pregunta título;
				tbsPanelBody: [ self renderPanelBodyOn: html ] ]