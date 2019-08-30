rendering
renderPreguntaButtonsOn: html preguntaView: unaPreguntaView usuarioPerfil: unUsuarioPerfil
	html
		tbsForm: [ self renderConsultarPreguntaButtonOn: html preguntaView: unaPreguntaView.
			html space.
			self renderPerfilUsuarioButtonOn: html usuarioPerfil: unUsuarioPerfil ]