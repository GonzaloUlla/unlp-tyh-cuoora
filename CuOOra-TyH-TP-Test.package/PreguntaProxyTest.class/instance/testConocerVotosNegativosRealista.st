testing
testConocerVotosNegativosRealista
	| voto |
	self assert: pregunta conocerVotosNegativos isEmpty.
	pregunta activar.
	"Agrego 50 votosNegativos a razón de 10 por semana"
	0 to: 9 do: [ :i | 
		0 to: 4 do: [ :j | 
			voto := self crearVotoNegativoA: pregunta haceSemanas: j.
			pregunta agregarVotoNegativo: voto ] ].
	self assert: pregunta votosNegativosSize equals: 50.
	"Traer todas las votosNegativos demoraría 200ms * 50 = 10 segundos"
	"Una ejecución del conocerVotoNegativo demora sin embargo 200ms * 10 = 2 segundos"
	"...y va iterando en ciclo cerrado por las 50 votosNegativos..."
	self assert: pregunta conocerVotosNegativos size equals: 10