api
exportarPreguntasJson
	| json totalPreguntas índice |
	totalPreguntas := 0.
	índice := 1.
	self conocerUsuarios
		do: [ :usuario | totalPreguntas := totalPreguntas + usuario conocerPreguntas size ].
	json := String new writeStream.
	json nextPutAll: '{"preguntas":['.
	self conocerUsuarios
		do: [ :usuario | 
			usuario conocerPreguntas
				do: [ :pregunta | 
					json nextPutAll: (pregunta accept: jsonVisitor).
					índice < totalPreguntas
						ifTrue: [ json nextPutAll: ',' ].
					índice := índice + 1 ] ].
	json
		nextPutAll: ']}'.
	^ json contents