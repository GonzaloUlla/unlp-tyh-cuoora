proxy
selectVotosNegativosHaceSemanas: nSemanas
	(nSemanas isNumber and: nSemanas >= 1)
		ifFalse: [ ^ OrderedCollection empty ].
	pregunta ifNil: [ self initializePregunta ].
	^ sDAO
		select: [ :voto | voto entrada = pregunta and: [ voto esPositivo not and: [ voto fechaCreación between: DateAndTime now - nSemanas weeks and: DateAndTime now - (nSemanas - 1) weeks ] ] ]
		forClass: Voto