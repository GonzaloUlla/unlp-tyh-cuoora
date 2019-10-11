rendering
renderContentOn: html
	self renderHeaderOn: html.
	html
		tbsListGroup: [ self cuooraSingleton conocerUsuarios
				do: [ :usuario | 
					html
						tbsLinkifyListGroupItem: [ html
								tbsForm: [ self renderPerfilUsuarioButtonOn: html usuarioPerfil: usuario.
									html space: 5.
									html text: usuario nombre ] ] ] ].
	self renderBackButtonOn: html