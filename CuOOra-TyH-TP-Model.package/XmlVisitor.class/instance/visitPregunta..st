api
visitPregunta: unaPregunta
	| xmlPregunta respuestas |
	"xmlPregunta := XMLWriter new.
	xmlPregunta
		enablePrettyPrinting;
		tag: 'pregunta'
			with: [ xmlPregunta tag: 'título' with: unaPregunta título.
			xmlPregunta tag: 'texto' with: unaPregunta título.
			xmlPregunta
				tag: 'respuestas'
				with: (unaPregunta conocerRespuestas do: [ :respuesta | self visitRespuesta: respuesta ]) ].
	xmlPregunta asString."
	xmlPregunta := XMLWriter new.
	respuestas := OrderedCollection new.
	unaPregunta conocerRespuestas
		do: [ :respuesta | respuestas add: (respuesta accept: self)	"self visitRespuesta: respuesta" ].
	"xmlPregunta
		activeTagWriter;
		enablePrettyPrinting;
		tag: 'Preguntas'
			with: [ xmlPregunta tag: 'título' with: unaPregunta título.
			xmlPregunta tag: 'texto' with: unaPregunta texto.
			xmlPregunta
				enablePrettyPrinting;
				isEscaping: false;
				tag: 'respuestas' with: respuestas ].
	xmlPregunta asString."
	xmlPregunta := String
		streamContents: [ :aStream | 
			(xmlPregunta on: aStream)
				enablePrettyPrinting;
				tag: 'Pregunta'
					with: [ xmlPregunta tag: 'título' with: unaPregunta título.
					xmlPregunta tag: 'texto' with: unaPregunta texto.
					xmlPregunta
						enablePrettyPrinting;
						isEscaping: false;
						tag: 'respuestas' with: respuestas ] ].
	^ xmlPregunta