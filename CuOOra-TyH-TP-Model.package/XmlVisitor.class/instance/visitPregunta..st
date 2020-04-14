api
visitPregunta: unaPregunta
	| xmlPregunta respuestas |
	xmlPregunta := XMLWriter new.
	respuestas := OrderedCollection new.
	unaPregunta conocerRespuestas
		do: [ :respuesta | respuestas add: (respuesta accept: self) ].
	xmlPregunta := String
		streamContents: [ :aStream | 
			(xmlPregunta on: aStream)
				enablePrettyPrinting;
				tag: 'pregunta'
					with: [ xmlPregunta tag: 'título' with: unaPregunta título.
					xmlPregunta tag: 'texto' with: unaPregunta texto.
					xmlPregunta
						enablePrettyPrinting;
						isEscaping: false;
						tag: 'respuestas' with: respuestas ] ].
	^ xmlPregunta