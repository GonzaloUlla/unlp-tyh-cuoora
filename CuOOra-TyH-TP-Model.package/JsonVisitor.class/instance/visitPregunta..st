api
visitPregunta: unaPregunta
	| jsonPregunta |
	jsonPregunta := String
		streamContents: [ :aStream | 
			(NeoJSONWriter on: aStream)
				for: Pregunta do: [ :mapping | mapping mapInstVars: #(título texto respuestas) ];
				for: Respuesta do: [ :mapping | mapping mapInstVar: #texto ];
				for: unaPregunta conocerRespuestas
					customDo: [ :mapping | mapping encoder: [ :respuesta | respuesta accept: self ] ];
				nextPut: unaPregunta ].
	^ jsonPregunta