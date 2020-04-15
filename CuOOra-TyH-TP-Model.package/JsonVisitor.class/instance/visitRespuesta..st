api
visitRespuesta: unaRespuesta
	| jsonRespuesta |
	jsonRespuesta := String
		streamContents: [ :aStream | 
			(NeoJSONWriter on: aStream)
				for: Respuesta do: [ :mapping | mapping mapInstVar: #texto ];
				nextPut: unaRespuesta ].
	^ jsonRespuesta