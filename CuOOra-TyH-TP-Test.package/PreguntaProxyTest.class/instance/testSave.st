testing
testSave
	| rta pregunta2 pregunta3 pregunta4 usuario1 tópico1 |
	self assert: pregunta conocerRespuestas isEmpty.
	pregunta activar.
	"Agrego 50 respuestas a razón de 10 por semana"
	0 to: 9 do: [ :i | 
		0 to: 4 do: [ :j | 
			rta := self crearRespuestaA: pregunta haceSemanas: j.
			pregunta agregarRespuesta: rta ] ].
	self assert: pregunta respuestasSize equals: 50.
	pregunta save.
	pregunta2 := pregunta.
	pregunta3 := pregunta copy.
	pregunta4 := pregunta copy.
	pregunta3 título: 'Otro título diferente del anterior'.
	pregunta4 texto: 'Otro texto diferente del anterior'.
	self assert: pregunta equals: pregunta2.
	self deny: (pregunta equals: pregunta3).
	self deny: (pregunta equals: pregunta4).
	self assert: pregunta2 respuestasSize equals: 50.
	self assert: pregunta3 respuestasSize equals: 50.
	usuario1 := Usuario nombre: 'Julieta' contraseña: 'Julieta123'.
	tópico1 := Tópico nombre: 'Reptiles' descripción: 'Animales reptiles'.
	pregunta := PreguntaProxy
		usuario: usuario1
		fechaCreación: DateAndTime now
		título: 'Color Serpiente'
		texto: '¿De qué color es la serpiente?'
		tópicoRelacionado: tópico1.
	self assert: pregunta equals: pregunta2.
	self deny: (pregunta equals: pregunta3).
	self assert: pregunta respuestasSize equals: 50.
	self assert: pregunta2 respuestasSize equals: 50.
	self assert: pregunta3 respuestasSize equals: 50