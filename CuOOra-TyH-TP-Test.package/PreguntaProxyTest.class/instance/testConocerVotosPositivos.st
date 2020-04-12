testing
testConocerVotosPositivos
	| voto |
	"LA EJECUCIÓN DE ESTE UT DEMORA 12 SEGUNDOS APROX."
	"self assert: (sDAO retrieveAllByClass: pregunta class) size equals: 5."
	"TC-01: Inicialización"
	self assert: pregunta votosPositivosWeeks equals: 1.
	self assert: pregunta votosPositivosSelectionSize equals: 0.
	"TC-02 Pregunta sin VotosPositivos"
	self assert: pregunta conocerVotosPositivos isEmpty.
	self assert: pregunta votosPositivosWeeks equals: 1.
	self assert: pregunta votosPositivosSelectionSize equals: 0.
	self assert: pregunta votosPositivosSize equals: 0.
	"TC-03 Agregar una VotoPositivo haceSemanas: 0 y repetir consulta - 1 VotoPositivo"
	pregunta activar.
	voto := self crearVotoPositivoA: pregunta haceSemanas: 0.
	pregunta agregarVotoPositivo: voto.
	self assert: pregunta votosPositivosSize equals: 1.
	self assert: pregunta votosPositivosWeeks equals: 1.
	self assert: pregunta conocerVotosPositivos size equals: 1.
	self assert: pregunta votosPositivosWeeks equals: 1.
	self assert: pregunta votosPositivosSelectionSize equals: 0.
	self assert: pregunta conocerVotosPositivos size equals: 1.
	self assert: pregunta votosPositivosWeeks equals: 1.
	self assert: pregunta votosPositivosSelectionSize equals: 0.
	"TC-04 Agregar 6 VotosPositivos haceSemanas: 0 y repetir consulta - 7 VotosPositivos"
	0 to: 5 do: [ :x | 
		voto := self crearVotoPositivoA: pregunta haceSemanas: 0.
		pregunta agregarVotoPositivo: voto ].
	self assert: pregunta votosPositivosSize equals: 7.
	self assert: pregunta votosPositivosWeeks equals: 1.
	self assert: pregunta conocerVotosPositivos size equals: 7.
	self assert: pregunta votosPositivosWeeks equals: 1.
	self assert: pregunta votosPositivosSelectionSize equals: 0.
	self assert: pregunta conocerVotosPositivos size equals: 7.
	self assert: pregunta votosPositivosWeeks equals: 1.
	self assert: pregunta votosPositivosSelectionSize equals: 0.
	"TC-05 Agregar 1 VotoPositivo haceSemanas: 1 y repetir consulta  - 8 VotosPositivos: (7, 1)"
	voto := self crearVotoPositivoA: pregunta haceSemanas: 1.
	pregunta agregarVotoPositivo: voto.
	self assert: pregunta votosPositivosSize equals: 8.
	self assert: pregunta votosPositivosWeeks equals: 1.
	self assert: pregunta conocerVotosPositivos size equals: 7.
	self assert: pregunta votosPositivosWeeks equals: 2.
	self assert: pregunta votosPositivosSelectionSize equals: 7.
	self assert: pregunta conocerVotosPositivos size equals: 1.
	self assert: pregunta votosPositivosWeeks equals: 1.
	self assert: pregunta votosPositivosSelectionSize equals: 0.
	self assert: pregunta conocerVotosPositivos size equals: 7.
	self assert: pregunta votosPositivosWeeks equals: 2.
	self assert: pregunta votosPositivosSelectionSize equals: 7.
	"TC-06 Agregar 1 VotoPositivo haceSemanas: 2 y repetir consulta  - 9 VotosPositivos: (7, 1, 1)"
	voto := self crearVotoPositivoA: pregunta haceSemanas: 2.
	pregunta agregarVotoPositivo: voto.
	self assert: pregunta votosPositivosSize equals: 9.
	self assert: pregunta votosPositivosWeeks equals: 2.
	self assert: pregunta votosPositivosSelectionSize equals: 7.
	self assert: pregunta conocerVotosPositivos size equals: 2.
	self assert: pregunta votosPositivosWeeks equals: 1.
	self assert: pregunta votosPositivosSelectionSize equals: 0.
	self assert: pregunta conocerVotosPositivos size equals: 7.
	self assert: pregunta votosPositivosWeeks equals: 2.
	self assert: pregunta votosPositivosSelectionSize equals: 7.
	"TC-07 Ultimo TC: Agregar 4 VotosPositivos haceSemanas: 3, 7 VotosPositivos haceSemanas: 5 y repetir consulta  - 20 VotosPositivos: (7, 1, 1, 4, 0, 7)"
	0 to: 3 do: [ :x | 
		voto := self crearVotoPositivoA: pregunta haceSemanas: 3.
		pregunta agregarVotoPositivo: voto ].
	0 to: 6 do: [ :x | 
		voto := self crearVotoPositivoA: pregunta haceSemanas: 5.
		pregunta agregarVotoPositivo: voto ].
	self assert: pregunta votosPositivosSize equals: 20.
	self assert: pregunta conocerVotosPositivos size equals: 6.
	self assert: pregunta votosPositivosWeeks equals: 5.
	self assert: pregunta votosPositivosSelectionSize equals: 13.
	self assert: pregunta conocerVotosPositivos size equals: 7.
	self assert: pregunta votosPositivosWeeks equals: 1.
	self assert: pregunta votosPositivosSelectionSize equals: 0.
	self assert: pregunta conocerVotosPositivos size equals: 7.
	self assert: pregunta votosPositivosWeeks equals: 2.
	self assert: pregunta votosPositivosSelectionSize equals: 7