testing
testConocerRespuestas
	| rta |
	"LA EJECUCIÓN DE ESTE UT DEMORA 12 SEGUNDOS APROX."
	"self assert: (sDAO retrieveAllByClass: pregunta class) size equals: 5."
	"TC-01: Inicialización"
	self assert: pregunta respuestasWeeks equals: 1.
	self assert: pregunta respuestasSelectionSize equals: 0.
	"TC-02 Pregunta sin Respuestas"
	self assert: pregunta conocerRespuestas isEmpty.
	self assert: pregunta respuestasWeeks equals: 1.
	self assert: pregunta respuestasSelectionSize equals: 0.
	self assert: pregunta respuestasSize equals: 0.
	"TC-03 Agregar una Respuesta haceSemanas: 0 y repetir consulta - 1 Respuesta"
	pregunta activar.
	rta := self crearRespuestaA: pregunta haceSemanas: 0.
	pregunta agregarRespuesta: rta.
	self assert: pregunta respuestasSize equals: 1.
	self assert: pregunta respuestasWeeks equals: 1.
	self assert: pregunta conocerRespuestas size equals: 1.
	self assert: pregunta respuestasWeeks equals: 1.
	self assert: pregunta respuestasSelectionSize equals: 0.
	self assert: pregunta conocerRespuestas size equals: 1.
	self assert: pregunta respuestasWeeks equals: 1.
	self assert: pregunta respuestasSelectionSize equals: 0.
	"TC-04 Agregar 6 Respuestas haceSemanas: 0 y repetir consulta - 7 Respuestas"
	0 to: 5 do: [ :x | 
		rta := self crearRespuestaA: pregunta haceSemanas: 0.
		pregunta agregarRespuesta: rta ].
	self assert: pregunta respuestasSize equals: 7.
	self assert: pregunta respuestasWeeks equals: 1.
	self assert: pregunta conocerRespuestas size equals: 7.
	self assert: pregunta respuestasWeeks equals: 1.
	self assert: pregunta respuestasSelectionSize equals: 0.
	self assert: pregunta conocerRespuestas size equals: 7.
	self assert: pregunta respuestasWeeks equals: 1.
	self assert: pregunta respuestasSelectionSize equals: 0.
	"TC-05 Agregar 1 Respuesta haceSemanas: 1 y repetir consulta  - 8 Respuestas: (7, 1)"
	rta := self crearRespuestaA: pregunta haceSemanas: 1.
	pregunta agregarRespuesta: rta.
	self assert: pregunta respuestasSize equals: 8.
	self assert: pregunta respuestasWeeks equals: 1.
	self assert: pregunta conocerRespuestas size equals: 7.
	self assert: pregunta respuestasWeeks equals: 2.
	self assert: pregunta respuestasSelectionSize equals: 7.
	self assert: pregunta conocerRespuestas size equals: 1.
	self assert: pregunta respuestasWeeks equals: 1.
	self assert: pregunta respuestasSelectionSize equals: 0.
	self assert: pregunta conocerRespuestas size equals: 7.
	self assert: pregunta respuestasWeeks equals: 2.
	self assert: pregunta respuestasSelectionSize equals: 7.
	"TC-06 Agregar 1 Respuesta haceSemanas: 2 y repetir consulta  - 9 Respuestas: (7, 1, 1)"
	rta := self crearRespuestaA: pregunta haceSemanas: 2.
	pregunta agregarRespuesta: rta.
	self assert: pregunta respuestasSize equals: 9.
	self assert: pregunta respuestasWeeks equals: 2.
	self assert: pregunta respuestasSelectionSize equals: 7.
	self assert: pregunta conocerRespuestas size equals: 2.
	self assert: pregunta respuestasWeeks equals: 1.
	self assert: pregunta respuestasSelectionSize equals: 0.
	self assert: pregunta conocerRespuestas size equals: 7.
	self assert: pregunta respuestasWeeks equals: 2.
	self assert: pregunta respuestasSelectionSize equals: 7.
	"TC-07 Ultimo TC: Agregar 4 Respuestas haceSemanas: 3, 7 Respuestas haceSemanas: 5 y repetir consulta  - 20 Respuestas: (7, 1, 1, 4, 0, 7)"
	0 to: 3 do: [ :x | 
		rta := self crearRespuestaA: pregunta haceSemanas: 3.
		pregunta agregarRespuesta: rta ].
	0 to: 6 do: [ :x | 
		rta := self crearRespuestaA: pregunta haceSemanas: 5.
		pregunta agregarRespuesta: rta ].
	self assert: pregunta respuestasSize equals: 20.
	self assert: pregunta conocerRespuestas size equals: 6.
	self assert: pregunta respuestasWeeks equals: 5.
	self assert: pregunta respuestasSelectionSize equals: 13.
	self assert: pregunta conocerRespuestas size equals: 7.
	self assert: pregunta respuestasWeeks equals: 1.
	self assert: pregunta respuestasSelectionSize equals: 0.
	self assert: pregunta conocerRespuestas size equals: 7.
	self assert: pregunta respuestasWeeks equals: 2.
	self assert: pregunta respuestasSelectionSize equals: 7