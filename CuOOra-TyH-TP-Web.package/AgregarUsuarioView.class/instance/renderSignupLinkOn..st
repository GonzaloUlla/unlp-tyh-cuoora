rendering
renderSignupLinkOn: html
	html anchor
		callback: [ self answer: (self call: (RegistrarUsuarioView cuooraInstance: cuooraSingleton)) ];
		with: [ html text: '¿Aún no está registrado?' ]