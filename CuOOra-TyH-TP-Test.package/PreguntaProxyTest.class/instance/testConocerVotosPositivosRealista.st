testing
testConocerVotosPositivosRealista
	| voto |
	self assert: pregunta conocerVotosPositivos isEmpty.
	pregunta activar.
	"Agrego 50 votosPositivos a razón de 10 por semana"
	0 to: 9 do: [ :i | 
		0 to: 4 do: [ :j | 
			voto := self crearVotoPositivoA: pregunta haceSemanas: j.
			pregunta agregarVotoPositivo: voto ] ].
	self assert: pregunta votosPositivosSize equals: 50.
	"Traer todas las votosPositivos demoraría 200ms * 50 = 10 segundos"
	"Una ejecución del conocerVotoPositivo demora sin embargo 200ms * 10 = 2 segundos"
	"...y va iterando en ciclo cerrado por las 50 votosPositivos..."
	self assert: pregunta conocerVotosPositivos size equals: 10