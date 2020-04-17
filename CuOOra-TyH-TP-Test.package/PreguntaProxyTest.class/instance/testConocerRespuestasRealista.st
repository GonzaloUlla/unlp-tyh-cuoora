testing
testConocerRespuestasRealista
	| rta |
	self assert: proxy conocerRespuestas size equals: 2.
	proxy activar.
	"Agrego 50 respuestas a razón de 10 por semana"
	0 to: 9 do: [ :i | 
		0 to: 4 do: [ :j | 
			rta := self crearRespuestaA: proxy haceSemanas: j.
			proxy agregarRespuesta: rta ] ].
	self assert: proxy respuestasSize equals: 52.
	"Traer todas las respuestas demoraría 200ms * 50 = 10 segundos"
	"Una ejecución del conocerRespuesta demora sin embargo 200ms * 10 = 2 segundos"
	"...y va iterando en ciclo cerrado por las 50 respuestas..."
	self assert: proxy conocerRespuestas size equals: 12