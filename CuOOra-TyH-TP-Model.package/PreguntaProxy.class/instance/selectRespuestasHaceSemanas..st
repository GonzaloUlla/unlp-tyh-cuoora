proxy
selectRespuestasHaceSemanas: nSemanas
	(nSemanas isNumber and: nSemanas >= 1)
		ifFalse: [ ^ OrderedCollection empty ]
		ifTrue: [ ^ sDAO
				select: [ :rta | 
					rta preguntaReferida = pregunta
						and: (rta fechaCreación between: DateAndTime now - nSemanas weeks and: DateAndTime now - (nSemanas - 1) weeks) ]
				forClass: Respuesta ]