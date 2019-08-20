rendering
renderRegistrationFormOn: html
	html heading level3 with: 'Por favor, complete sus datos'.
	html
		form: [ self
				renderFormField: #nombre thatFailsIf: (self esRequeridoVacío: #nombre) on: html;
				renderFormField: #contraseña thatFailsIf: (self esRequeridoVacío: #contraseña) on: html.
			html submitButton
				callback: [ self enviar ];
				with: 'Crear' ]