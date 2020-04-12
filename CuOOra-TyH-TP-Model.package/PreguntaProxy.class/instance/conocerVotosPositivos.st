api
conocerVotosPositivos
	| selection auxCol |
	selection := self selectVotosPositivosHaceSemanas: votosPositivosWeeks.
	votosPositivosSelectionSize  := votosPositivosSelectionSize + selection size.
	[ selection size < self sizeThreshold and: votosPositivosSelectionSize < self votosPositivosSize ]
		whileTrue: [ votosPositivosWeeks := votosPositivosWeeks + 1.
			auxCol := self selectVotosPositivosHaceSemanas: votosPositivosWeeks.
			votosPositivosSelectionSize := votosPositivosSelectionSize + auxCol size.
			selection addAll: auxCol ].
	votosPositivosSelectionSize < self votosPositivosSize
		ifTrue: [ votosPositivosWeeks := votosPositivosWeeks + 1 ]
		ifFalse: [ votosPositivosSelectionSize := 0.
			votosPositivosWeeks := 1 ].
	^ selection