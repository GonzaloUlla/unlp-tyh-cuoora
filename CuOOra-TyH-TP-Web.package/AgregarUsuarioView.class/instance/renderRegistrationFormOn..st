rendering
renderRegistrationFormOn: html
	html
		tbsForm: [ html
				tbsFormGroup: [ html label
						for: 'inputUser';
						with: 'Usuario'.
					html textInput tbsFormControl
						callback: [ :user | usuario nombre: user ];
						id: 'inputUser';
						placeholder: 'Ingresar email' ].
			html
				tbsFormGroup: [ html label
						for: 'inputPassword';
						with: 'Contraseña'.
					html passwordInput tbsFormControl
						callback: [ :password | usuario contraseña: password ];
						id: 'inputPassword';
						placeholder: 'Ingresar contraseña' ].
			html tbsSubmitButton
				callback: [ self answer: usuario ];
				with: 'Iniciar sesión' ]