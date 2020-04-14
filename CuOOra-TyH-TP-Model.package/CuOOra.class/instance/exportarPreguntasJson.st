api
exportarPreguntasJson
	| preguntas json |
	preguntas := OrderedCollection new.
	self conocerUsuarios
		do: [ :usuario | 
			usuario conocerPreguntas
				do: [ :pregunta | preguntas add: (pregunta accept: jsonVisitor) ] ].
	json := String
		streamContents:
			[ :aStream | (NeoJSONWriter on: aStream) encodeKey: 'Preguntas' value: preguntas ].
	^ json