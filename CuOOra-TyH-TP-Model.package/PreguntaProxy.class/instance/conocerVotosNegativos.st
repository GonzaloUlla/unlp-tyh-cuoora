api
conocerVotosNegativos
	| selection auxCol |
	selection := self selectVotosNegativosHaceSemanas: votosNegativosWeeks.
	votosNegativosSelectionSize  := votosNegativosSelectionSize + selection size.
	[ selection size < self sizeThreshold and: votosNegativosSelectionSize < self votosNegativosSize ]
		whileTrue: [ votosNegativosWeeks := votosNegativosWeeks + 1.
			auxCol := self selectVotosNegativosHaceSemanas: votosNegativosWeeks.
			votosNegativosSelectionSize := votosNegativosSelectionSize + auxCol size.
			selection addAll: auxCol ].
	votosNegativosSelectionSize < self votosNegativosSize
		ifTrue: [ votosNegativosWeeks := votosNegativosWeeks + 1 ]
		ifFalse: [ votosNegativosSelectionSize := 0.
			votosNegativosWeeks := 1 ].
	^ selection