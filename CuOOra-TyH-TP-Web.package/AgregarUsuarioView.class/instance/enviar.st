controlling
enviar
	self datosVálidos
		ifTrue: [ self
				registrarUsuario;
				limpiarUsuario.
			self session navigateTo: CreaciónExitosaView new ]
		ifFalse: [ self registroRechazado ]