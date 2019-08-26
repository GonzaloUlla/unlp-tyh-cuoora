rendering
renderErrorSignupOn: html
	errorLogin
		ifTrue: [ html text: 'Error: datos faltantes o usuario ya registrado' ]