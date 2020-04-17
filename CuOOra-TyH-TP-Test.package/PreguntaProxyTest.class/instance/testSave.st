testing
testSave
	| rta pregunta2 pregunta3 pregunta4 |
	self assert: proxy conocerRespuestas size equals: 2.
	proxy activar.
	"Agrego 50 respuestas a razón de 10 por semana"
	0 to: 9 do: [ :i | 
		0 to: 4 do: [ :j | 
			rta := self crearRespuestaA: proxy haceSemanas: j.
			proxy agregarRespuesta: rta ] ].
	self assert: proxy respuestasSize equals: 52.
	proxy save.
	pregunta2 := proxy.
	pregunta3 := proxy copy.
	pregunta4 := proxy copy.
	pregunta3 título: 'Otro título diferente del anterior'.
	pregunta4 texto: 'Otro texto diferente del anterior'.
	self assert: proxy equals: pregunta2.
	self deny: (proxy equals: pregunta3).
	self deny: (proxy equals: pregunta4).
	self assert: pregunta2 respuestasSize equals: 52.
	self assert: pregunta3 respuestasSize equals: 52.
	self assert: proxy equals: pregunta2.
	self deny: (proxy equals: pregunta3).
	self assert: proxy respuestasSize equals: 52.
	self assert: pregunta2 respuestasSize equals: 52.
	self assert: pregunta3 respuestasSize equals: 52.
	proxy texto: 'Nuevo texto para LA pregunta'.
	self assert: proxy equals: pregunta2.
	self assert: proxy equals: (sDAO select: [ :preg | preg equals: proxy ] forClass: Pregunta) first