api
exportarPreguntasJson
	| json |
	json := String new writeStream.
	json nextPutAll: '{"Preguntas":['.
	self conocerUsuarios
		do: [ :usuario | 
			usuario conocerPreguntas
				do: [ :pregunta | 
					json nextPutAll: (pregunta accept: jsonVisitor).
					json nextPutAll: ',' ] ].
	json
		cr;
		nextPutAll: ']}'.
	^ json