testing
testConocerVotosNegativos
	| voto |
	"LA EJECUCIÓN DE ESTE UT DEMORA 12 SEGUNDOS APROX."
	"self assert: (sDAO retrieveAllByClass: pregunta class) size equals: 5."
	"TC-01: Inicialización"
	self assert: proxy votosNegativosWeeks equals: 1.
	self assert: proxy votosNegativosSelectionSize equals: 0.
	"TC-02 Pregunta sin VotosNegativos"
	self assert: proxy conocerVotosNegativos isEmpty.
	self assert: proxy votosNegativosWeeks equals: 1.
	self assert: proxy votosNegativosSelectionSize equals: 0.
	self assert: proxy votosNegativosSize equals: 0.
	"TC-03 Agregar una VotoNegativo haceSemanas: 0 y repetir consulta - 1 VotoNegativo"
	proxy activar.
	voto := self crearVotoNegativoA: proxy haceSemanas: 0.
	proxy agregarVotoNegativo: voto.
	self assert: proxy votosNegativosSize equals: 1.
	self assert: proxy votosNegativosWeeks equals: 1.
	self assert: proxy conocerVotosNegativos size equals: 1.
	self assert: proxy votosNegativosWeeks equals: 1.
	self assert: proxy votosNegativosSelectionSize equals: 0.
	self assert: proxy conocerVotosNegativos size equals: 1.
	self assert: proxy votosNegativosWeeks equals: 1.
	self assert: proxy votosNegativosSelectionSize equals: 0.
	"TC-04 Agregar 6 VotosNegativos haceSemanas: 0 y repetir consulta - 7 VotosNegativos"
	0 to: 5 do: [ :x | 
		voto := self crearVotoNegativoA: proxy haceSemanas: 0.
		proxy agregarVotoNegativo: voto ].
	self assert: proxy votosNegativosSize equals: 7.
	self assert: proxy votosNegativosWeeks equals: 1.
	self assert: proxy conocerVotosNegativos size equals: 7.
	self assert: proxy votosNegativosWeeks equals: 1.
	self assert: proxy votosNegativosSelectionSize equals: 0.
	self assert: proxy conocerVotosNegativos size equals: 7.
	self assert: proxy votosNegativosWeeks equals: 1.
	self assert: proxy votosNegativosSelectionSize equals: 0.
	"TC-05 Agregar 1 VotoNegativo haceSemanas: 1 y repetir consulta  - 8 VotosNegativos: (7, 1)"
	voto := self crearVotoNegativoA: proxy haceSemanas: 1.
	proxy agregarVotoNegativo: voto.
	self assert: proxy votosNegativosSize equals: 8.
	self assert: proxy votosNegativosWeeks equals: 1.
	self assert: proxy conocerVotosNegativos size equals: 7.
	self assert: proxy votosNegativosWeeks equals: 2.
	self assert: proxy votosNegativosSelectionSize equals: 7.
	self assert: proxy conocerVotosNegativos size equals: 1.
	self assert: proxy votosNegativosWeeks equals: 1.
	self assert: proxy votosNegativosSelectionSize equals: 0.
	self assert: proxy conocerVotosNegativos size equals: 7.
	self assert: proxy votosNegativosWeeks equals: 2.
	self assert: proxy votosNegativosSelectionSize equals: 7.
	"TC-06 Agregar 1 VotoNegativo haceSemanas: 2 y repetir consulta  - 9 VotosNegativos: (7, 1, 1)"
	voto := self crearVotoNegativoA: proxy haceSemanas: 2.
	proxy agregarVotoNegativo: voto.
	self assert: proxy votosNegativosSize equals: 9.
	self assert: proxy votosNegativosWeeks equals: 2.
	self assert: proxy votosNegativosSelectionSize equals: 7.
	self assert: proxy conocerVotosNegativos size equals: 2.
	self assert: proxy votosNegativosWeeks equals: 1.
	self assert: proxy votosNegativosSelectionSize equals: 0.
	self assert: proxy conocerVotosNegativos size equals: 7.
	self assert: proxy votosNegativosWeeks equals: 2.
	self assert: proxy votosNegativosSelectionSize equals: 7.
	"TC-07 Ultimo TC: Agregar 4 VotosNegativos haceSemanas: 3, 7 VotosNegativos haceSemanas: 5 y repetir consulta  - 20 VotosNegativos: (7, 1, 1, 4, 0, 7)"
	0 to: 3 do: [ :x | 
		voto := self crearVotoNegativoA: proxy haceSemanas: 3.
		proxy agregarVotoNegativo: voto ].
	0 to: 6 do: [ :x | 
		voto := self crearVotoNegativoA: proxy haceSemanas: 5.
		proxy agregarVotoNegativo: voto ].
	self assert: proxy votosNegativosSize equals: 20.
	self assert: proxy conocerVotosNegativos size equals: 6.
	self assert: proxy votosNegativosWeeks equals: 5.
	self assert: proxy votosNegativosSelectionSize equals: 13.
	self assert: proxy conocerVotosNegativos size equals: 7.
	self assert: proxy votosNegativosWeeks equals: 1.
	self assert: proxy votosNegativosSelectionSize equals: 0.
	self assert: proxy conocerVotosNegativos size equals: 7.
	self assert: proxy votosNegativosWeeks equals: 2.
	self assert: proxy votosNegativosSelectionSize equals: 7