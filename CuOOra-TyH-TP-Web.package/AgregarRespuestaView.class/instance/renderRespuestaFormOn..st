rendering
renderRespuestaFormOn: html
	html
		tbsForm: [ html
				tbsFormGroup: [ html label
						for: 'inputRespuesta';
						with: 'Respuesta'.
					html textInput tbsFormControl
						callback: [ :text | respuesta texto: text ];
						id: 'inputRespuesta';
						placeholder: 'Escriba aquí el texto de su respuesta' ].
			html tbsSubmitButton
				callback: [ self agregarRespuesta ];
				with: 'Guardar'.
			html space.
			html tbsSubmitButton
				callback: [ self answer: loggedUser ];
				with: 'Cancelar' ]