api
visitRespuesta: unaRespuesta
	| xmlRespuesta |
	xmlRespuesta := XMLWriter new.
	xmlRespuesta := String
		streamContents: [ :aStream | 
			(xmlRespuesta on: aStream)
				enablePrettyPrinting;
				tag: 'respuesta'
					with: [ xmlRespuesta tag: 'texto' with: unaRespuesta texto.
					xmlRespuesta
						enablePrettyPrinting;
						isEscaping: false ] ].
	^ xmlRespuesta