api
conocerRespuestas
	| selection auxCol |
	selection := self selectRespuestasHaceSemanas: respuestasWeeks.
	respuestasSelectionSize := respuestasSelectionSize + selection size.
	[ selection size < self sizeThreshold and: respuestasSelectionSize < self respuestasSize ]
		whileTrue: [ respuestasWeeks := respuestasWeeks + 1.
			auxCol := self selectRespuestasHaceSemanas: respuestasWeeks.
			respuestasSelectionSize := respuestasSelectionSize + auxCol size.
			selection addAll: auxCol ].
	respuestasSelectionSize < self respuestasSize
		ifTrue: [ respuestasWeeks := respuestasWeeks + 1 ]
		ifFalse: [ respuestasSelectionSize := 0.
			respuestasWeeks := 1 ].
	^ selection