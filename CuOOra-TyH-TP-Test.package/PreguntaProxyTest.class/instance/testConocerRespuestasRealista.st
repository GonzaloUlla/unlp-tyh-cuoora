testing
testConocerRespuestasRealista
	| rta |
	self assert: pregunta conocerRespuestas isEmpty.
	pregunta activar.
	"Agrego 50 respuestas a razón de 10 por semana"
	0 to: 9 do: [ :i | 
		0 to: 4 do: [ :j | 
			rta := self crearRespuestaA: pregunta haceSemanas: j.
			pregunta agregarRespuesta: rta ] ].
	self assert: pregunta respuestasSize equals: 50.
	"Traer todas las respuestas demoraría 200ms * 50 = 10 segundos"
	"Una ejecución del conocerRespuesta demora sin embargo 200ms * 10 = 2 segundos"
	"...y va iterando en ciclo cerrado por las 50 respuestas..."
	self assert: pregunta conocerRespuestas size equals: 10