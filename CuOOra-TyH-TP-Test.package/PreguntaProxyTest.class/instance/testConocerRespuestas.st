testing
testConocerRespuestas
	| rta |
	"LA EJECUCIÓN DE ESTE UT DEMORA 12 SEGUNDOS APROX."
	"self assert: (sDAO retrieveAllByClass: pregunta class) size equals: 5."
	"TC-01: Inicialización"
	proxy eliminarTodasRespuestas.
	sDAO deleteAllByClass: Respuesta.
	self assert: proxy respuestasWeeks equals: 1.
	self assert: proxy respuestasSelectionSize equals: 0.
	"TC-02 Pregunta sin Respuestas"
	self assert: proxy conocerRespuestas isEmpty.
	self assert: proxy respuestasWeeks equals: 1.
	self assert: proxy respuestasSelectionSize equals: 0.
	self assert: proxy respuestasSize equals: 0.
	"TC-03 Agregar una Respuesta haceSemanas: 0 y repetir consulta - 1 Respuesta"
	proxy activar.
	rta := self crearRespuestaA: proxy haceSemanas: 0.
	proxy agregarRespuesta: rta.
	self assert: proxy respuestasSize equals: 1.
	self assert: proxy respuestasWeeks equals: 1.
	self assert: proxy conocerRespuestas size equals: 1.
	self assert: proxy respuestasWeeks equals: 1.
	self assert: proxy respuestasSelectionSize equals: 0.
	self assert: proxy conocerRespuestas size equals: 1.
	self assert: proxy respuestasWeeks equals: 1.
	self assert: proxy respuestasSelectionSize equals: 0.
	"TC-04 Agregar 6 Respuestas haceSemanas: 0 y repetir consulta - 7 Respuestas"
	0 to: 5 do: [ :x | 
		rta := self crearRespuestaA: proxy haceSemanas: 0.
		proxy agregarRespuesta: rta ].
	self assert: proxy respuestasSize equals: 7.
	self assert: proxy respuestasWeeks equals: 1.
	self assert: proxy conocerRespuestas size equals: 7.
	self assert: proxy respuestasWeeks equals: 1.
	self assert: proxy respuestasSelectionSize equals: 0.
	self assert: proxy conocerRespuestas size equals: 7.
	self assert: proxy respuestasWeeks equals: 1.
	self assert: proxy respuestasSelectionSize equals: 0.
	"TC-05 Agregar 1 Respuesta haceSemanas: 1 y repetir consulta  - 8 Respuestas: (7, 1)"
	rta := self crearRespuestaA: proxy haceSemanas: 1.
	proxy agregarRespuesta: rta.
	self assert: proxy respuestasSize equals: 8.
	self assert: proxy respuestasWeeks equals: 1.
	self assert: proxy conocerRespuestas size equals: 7.
	self assert: proxy respuestasWeeks equals: 2.
	self assert: proxy respuestasSelectionSize equals: 7.
	self assert: proxy conocerRespuestas size equals: 1.
	self assert: proxy respuestasWeeks equals: 1.
	self assert: proxy respuestasSelectionSize equals: 0.
	self assert: proxy conocerRespuestas size equals: 7.
	self assert: proxy respuestasWeeks equals: 2.
	self assert: proxy respuestasSelectionSize equals: 7.
	"TC-06 Agregar 1 Respuesta haceSemanas: 2 y repetir consulta  - 9 Respuestas: (7, 1, 1)"
	rta := self crearRespuestaA: proxy haceSemanas: 2.
	proxy agregarRespuesta: rta.
	self assert: proxy respuestasSize equals: 9.
	self assert: proxy respuestasWeeks equals: 2.
	self assert: proxy respuestasSelectionSize equals: 7.
	self assert: proxy conocerRespuestas size equals: 2.
	self assert: proxy respuestasWeeks equals: 1.
	self assert: proxy respuestasSelectionSize equals: 0.
	self assert: proxy conocerRespuestas size equals: 7.
	self assert: proxy respuestasWeeks equals: 2.
	self assert: proxy respuestasSelectionSize equals: 7.
	"TC-07 Ultimo TC: Agregar 4 Respuestas haceSemanas: 3, 7 Respuestas haceSemanas: 5 y repetir consulta  - 20 Respuestas: (7, 1, 1, 4, 0, 7)"
	0 to: 3 do: [ :x | 
		rta := self crearRespuestaA: proxy haceSemanas: 3.
		proxy agregarRespuesta: rta ].
	0 to: 6 do: [ :x | 
		rta := self crearRespuestaA: proxy haceSemanas: 5.
		proxy agregarRespuesta: rta ].
	self assert: proxy respuestasSize equals: 20.
	self assert: proxy conocerRespuestas size equals: 6.
	self assert: proxy respuestasWeeks equals: 5.
	self assert: proxy respuestasSelectionSize equals: 13.
	self assert: proxy conocerRespuestas size equals: 7.
	self assert: proxy respuestasWeeks equals: 1.
	self assert: proxy respuestasSelectionSize equals: 0.
	self assert: proxy conocerRespuestas size equals: 7.
	self assert: proxy respuestasWeeks equals: 2.
	self assert: proxy respuestasSelectionSize equals: 7