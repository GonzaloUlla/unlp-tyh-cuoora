api
conocerRespuestas
	| selection auxCol |
	selection := self selectRespuestasHaceSemanas: lastNWeeks.
	returnedSelectionSize := returnedSelectionSize + selection size.
	[ selection size < self sizeThreshold and: returnedSelectionSize < self respuestasSize ]
		whileTrue: [ lastNWeeks := lastNWeeks + 1.
			auxCol := self selectRespuestasHaceSemanas: lastNWeeks.
			returnedSelectionSize := returnedSelectionSize + auxCol size.
			selection addAll: auxCol ].
	returnedSelectionSize < self respuestasSize
		ifTrue: [ lastNWeeks := lastNWeeks + 1 ]
		ifFalse: [ returnedSelectionSize := 0.
			lastNWeeks := 1 ].
	^ selection