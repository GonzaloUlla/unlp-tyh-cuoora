testing
testConocerVotosPositivos
	| voto |
	"LA EJECUCIÓN DE ESTE UT DEMORA 12 SEGUNDOS APROX."
	"self assert: (sDAO retrieveAllByClass: pregunta class) size equals: 5."
	"TC-01: Inicialización"
	self assert: proxy votosPositivosWeeks equals: 1.
	self assert: proxy votosPositivosSelectionSize equals: 0.
	"TC-02 Pregunta sin VotosPositivos"
	self assert: proxy conocerVotosPositivos size equals: 1.
	self assert: proxy votosPositivosWeeks equals: 1.
	self assert: proxy votosPositivosSelectionSize equals: 0.
	self assert: proxy votosPositivosSize equals: 1.
	"TC-03 Agregar una VotoPositivo haceSemanas: 0 y repetir consulta - 1 VotoPositivo"
	proxy activar.
	voto := self crearVotoPositivoA: proxy haceSemanas: 0.
	proxy agregarVotoPositivo: voto.
	self assert: proxy votosPositivosSize equals: 2.
	self assert: proxy votosPositivosWeeks equals: 1.
	self assert: proxy conocerVotosPositivos size equals: 2.
	self assert: proxy votosPositivosWeeks equals: 1.
	self assert: proxy votosPositivosSelectionSize equals: 0.
	self assert: proxy conocerVotosPositivos size equals: 2.
	self assert: proxy votosPositivosWeeks equals: 1.
	self assert: proxy votosPositivosSelectionSize equals: 0.
	"TC-04 Agregar 6 VotosPositivos haceSemanas: 0 y repetir consulta - 7 VotosPositivos"
	0 to: 5 do: [ :x | 
		voto := self crearVotoPositivoA: proxy haceSemanas: 0.
		proxy agregarVotoPositivo: voto ].
	self assert: proxy votosPositivosSize equals: 8.
	self assert: proxy votosPositivosWeeks equals: 1.
	self assert: proxy conocerVotosPositivos size equals: 8.
	self assert: proxy votosPositivosWeeks equals: 1.
	self assert: proxy votosPositivosSelectionSize equals: 0.
	self assert: proxy conocerVotosPositivos size equals: 8.
	self assert: proxy votosPositivosWeeks equals: 1.
	self assert: proxy votosPositivosSelectionSize equals: 0.
	"TC-05 Agregar 1 VotoPositivo haceSemanas: 1 y repetir consulta  - 8 VotosPositivos: (7, 1)"
	voto := self crearVotoPositivoA: proxy haceSemanas: 1.
	proxy agregarVotoPositivo: voto.
	self assert: proxy votosPositivosSize equals: 9.
	self assert: proxy votosPositivosWeeks equals: 1.
	self assert: proxy conocerVotosPositivos size equals: 8.
	self assert: proxy votosPositivosWeeks equals: 2.
	self assert: proxy votosPositivosSelectionSize equals: 8.
	self assert: proxy conocerVotosPositivos size equals: 1.
	self assert: proxy votosPositivosWeeks equals: 1.
	self assert: proxy votosPositivosSelectionSize equals: 0.
	self assert: proxy conocerVotosPositivos size equals: 8.
	self assert: proxy votosPositivosWeeks equals: 2.
	self assert: proxy votosPositivosSelectionSize equals: 8.
	"TC-06 Agregar 1 VotoPositivo haceSemanas: 2 y repetir consulta  - 9 VotosPositivos: (7, 1, 1)"
	voto := self crearVotoPositivoA: proxy haceSemanas: 2.
	proxy agregarVotoPositivo: voto.
	self assert: proxy votosPositivosSize equals: 10.
	self assert: proxy votosPositivosWeeks equals: 2.
	self assert: proxy votosPositivosSelectionSize equals: 8.
	self assert: proxy conocerVotosPositivos size equals: 2.
	self assert: proxy votosPositivosWeeks equals: 1.
	self assert: proxy votosPositivosSelectionSize equals: 0.
	self assert: proxy conocerVotosPositivos size equals: 8.
	self assert: proxy votosPositivosWeeks equals: 2.
	self assert: proxy votosPositivosSelectionSize equals: 8.
	"TC-07 Ultimo TC: Agregar 4 VotosPositivos haceSemanas: 3, 7 VotosPositivos haceSemanas: 5 y repetir consulta  - 20 VotosPositivos: (7, 1, 1, 4, 0, 7)"
	0 to: 3 do: [ :x | 
		voto := self crearVotoPositivoA: proxy haceSemanas: 3.
		proxy agregarVotoPositivo: voto ].
	0 to: 6 do: [ :x | 
		voto := self crearVotoPositivoA: proxy haceSemanas: 5.
		proxy agregarVotoPositivo: voto ].
	self assert: proxy votosPositivosSize equals: 21.
	self assert: proxy conocerVotosPositivos size equals: 6.
	self assert: proxy votosPositivosWeeks equals: 5.
	self assert: proxy votosPositivosSelectionSize equals: 14.
	self assert: proxy conocerVotosPositivos size equals: 7.
	self assert: proxy votosPositivosWeeks equals: 1.
	self assert: proxy votosPositivosSelectionSize equals: 0.
	self assert: proxy conocerVotosPositivos size equals: 8.
	self assert: proxy votosPositivosWeeks equals: 2.
	self assert: proxy votosPositivosSelectionSize equals: 8