api
exportarPreguntasXml
	| xml |
	xml := String new writeStream.
	xml nextPutAll: '<preguntas>'.
	self conocerUsuarios
		do:
			[ :usuario | usuario conocerPreguntas do: [ :pregunta | xml nextPutAll: (pregunta accept: xmlVisitor) ] ].
	xml
		cr;
		nextPutAll: '</preguntas>'.
	^ xml