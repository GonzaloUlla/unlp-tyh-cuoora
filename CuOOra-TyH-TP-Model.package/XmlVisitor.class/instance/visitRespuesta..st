api
visitRespuesta: unaRespuesta
	| xmlRespuesta |
	xmlRespuesta := String
		streamContents: [ :aStream | 
			(XMLWriter on: aStream)
				enablePrettyPrinting;
				tag: 'respuesta' with: unaRespuesta texto ].
	^ xmlRespuesta