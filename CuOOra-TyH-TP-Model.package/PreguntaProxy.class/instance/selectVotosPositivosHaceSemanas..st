proxy
selectVotosPositivosHaceSemanas: nSemanas
	(nSemanas isNumber and: nSemanas >= 1)
		ifFalse: [ ^ OrderedCollection empty ]
		ifTrue: [ ^ sDAO
				select: [ :voto | voto entrada = pregunta and: [ voto esPositivo and: [ voto fechaCreación between: DateAndTime now - nSemanas weeks and: DateAndTime now - (nSemanas - 1) weeks ] ] ]
				forClass: Voto ]