rendering
renderRegistrationFormOn: html
	html
		tbsForm: [ html
				tbsFormGroup: [ html label
						for: 'inputUser';
						with: 'Usuario'.
					html textInput tbsFormControl
						callback: [ :user | usuarioLogin nombre: user ];
						id: 'inputUser';
						placeholder: 'Ingresar email' ].
			html
				tbsFormGroup: [ html label
						for: 'inputPassword';
						with: 'Contraseña'.
					html passwordInput tbsFormControl
						callback: [ :password | usuarioLogin contraseña: password ];
						id: 'inputPassword';
						placeholder: 'Ingresar contraseña' ].
			self renderSubmitButtonOn: html.
			html space.
			html tbsSubmitButton
				callback: [ self answer: nil ];
				with: 'Cancelar' ]