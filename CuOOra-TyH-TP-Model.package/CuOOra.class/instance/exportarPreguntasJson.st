api
exportarPreguntasJson
	| preguntas json |
	preguntas := OrderedCollection new.
	self conocerUsuarios
		do: [ :usuario | usuario conocerPreguntas do: [ :pregunta | preguntas add: pregunta ] ].
	"json := String new writeStream.
	self conocerUsuarios
		do:
			[ :usuario | usuario conocerPreguntas do: [ :pregunta | json nextPutAll: (pregunta accept: visitor) ] ]."
	json := String
		streamContents: [ :aStream | 
			(NeoJSONWriter on: aStream)
				prettyPrint: true;
				for: Pregunta do: [ :mapping | mapping mapInstVars: #(título texto respuestas) ];
				for: Respuesta do: [ :mapping | mapping mapInstVar: #texto ];
				for: preguntas
					customDo: [ :mapping | mapping encoder: [ :pregunta | pregunta accept: jsonVisitor ] ];
				"nextPut: preguntas as: #ColecciónDePreguntas"
					encodeKey: 'Preguntas' value: preguntas
			"for: Pregunta do: [ :mapping | mapping mapInstVars: #(título texto respuestas) ];
				for: Respuesta do: [ :mapping | mapping mapInstVar: #texto ];"
			"prettyPrint: true;
				" ].
	^ json