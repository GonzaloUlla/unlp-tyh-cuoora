api
exportarPreguntasXml
	| preguntas xml |
	xml := XMLWriter new.
	preguntas := OrderedCollection new.
	self conocerUsuarios
		do:
			[ :usuario | usuario conocerPreguntas do: [ :pregunta | preguntas add: (pregunta accept: xmlVisitor) ] ].
	xml := String
		streamContents: [ :aStream | 
			(xml on: aStream)
				xml;
				enablePrettyPrinting;
				isEscaping: false;
				tag: 'Preguntas' with: preguntas ].
	^ xml