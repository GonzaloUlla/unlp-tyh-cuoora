testing
testConocerVotosNegativosRealista
	| voto |
	self assert: proxy conocerVotosNegativos isEmpty.
	proxy activar.
	"Agrego 50 votosNegativos a razón de 10 por semana"
	0 to: 9 do: [ :i | 
		0 to: 4 do: [ :j | 
			voto := self crearVotoNegativoA: proxy haceSemanas: j.
			proxy agregarVotoNegativo: voto ] ].
	self assert: proxy votosNegativosSize equals: 50.
	"Traer todas las votosNegativos demoraría 200ms * 50 = 10 segundos"
	"Una ejecución del conocerVotoNegativo demora sin embargo 200ms * 10 = 2 segundos"
	"...y va iterando en ciclo cerrado por las 50 votosNegativos..."
	self assert: proxy conocerVotosNegativos size equals: 10