testing
testConocerVotosPositivosRealista
	| voto |
	proxy activar.
	"Agrego 50 votosPositivos a razón de 10 por semana"
	0 to: 9 do: [ :i | 
		0 to: 4 do: [ :j | 
			voto := self crearVotoPositivoA: proxy haceSemanas: j.
			proxy agregarVotoPositivo: voto ] ].
	self assert: proxy votosPositivosSize equals: 51.
	"Traer todas las votosPositivos demoraría 200ms * 50 = 10 segundos"
	"Una ejecución del conocerVotoPositivo demora sin embargo 200ms * 10 = 2 segundos"
	"...y va iterando en ciclo cerrado por las 50 votosPositivos..."
	self assert: proxy conocerVotosPositivos size equals: 11