rendering
renderErrorLoginOn: html
	errorLogin
		ifTrue: [ html text: 'Error: los datos ingresados no corresponden a un usuario registrado' ]