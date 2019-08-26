rendering
renderPreguntaFormOn: html
	html
		tbsForm: [ html
				tbsFormGroup: [ html label
						for: 'inputTítulo';
						with: 'Título'.
					html textInput tbsFormControl
						callback: [ :title | pregunta título: title ];
						id: 'inputTítulo';
						placeholder: 'Escriba aquí el título de su pregunta' ].
			html
				tbsFormGroup: [ html label
						for: 'inputDesarrollo';
						with: 'Desarrollo'.
					html textInput tbsFormControl
						callback: [ :text | pregunta texto: text ];
						id: 'inputDesarrollo';
						placeholder: 'Escriba aquí el desarrollo de su pregunta' ].
			html
				tbsFormGroup: [ html label
						for: 'inputTópicos';
						with: 'Tópicos'.
					html textInput tbsFormControl
						callback: [ :topics | self addTopics: topics ];
						id: 'inputTópicos';
						placeholder: 'Ingrese los tópicos de su pregunta separados por coma: tópico1,tópico2,otro tópico 3,tópico4' ].
			html tbsSubmitButton
				callback: [ self agregarPregunta ];
				with: 'Guardar'.
			html space.
			html tbsSubmitButton
				callback: [ self answer ];
				with: 'Cancelar' ]