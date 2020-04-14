testing
testConocerPreguntasRelevantes
	| pregunta1 pregunta2 pregunta3 pregunta4 tópico1 tópico2 usuarioSeguido usuarioNoSeguido |
	"initialization - tópicos"
	tópico1 := Tópico nombre: 't1' descripción: 't1'.
	tópico2 := Tópico nombre: 't2' descripción: 't2'.
	usuario agregarTópicoInterés: tópico1.
	"initialization - usuarios"
	usuarioSeguido := Usuario nombre: 'seguido' contraseña: 'seguido'.
	usuarioNoSeguido := Usuario nombre: 'no' contraseña: 'no'.
	usuario seguirA: usuarioSeguido.

	"initialization - preguntas"
	pregunta1 := PreguntaProxy
		usuario: usuarioSeguido
		título: 'p1'
		texto: 'p1'
		tópicoRelacionado: tópico1.	"usuarioSeguido, tópico de interés, debe estar 1 vez"
	pregunta2 := PreguntaProxy
		usuario: usuarioNoSeguido
		título: 'p2'
		texto: 'p2'
		tópicoRelacionado: tópico2.	"usuarioNoSeguido, NO tópico de interés, NO debe estar"
	pregunta3 := PreguntaProxy
		usuario: usuarioNoSeguido
		título: 'p3'
		texto: 'p3'
		tópicoRelacionado: tópico1.	"usuarioNoSeguido, tópico de interés, debe estar 1 vez"
	pregunta4 := PreguntaProxy
		usuario: usuarioSeguido
		título: 'p4'
		texto: 'p4'
		tópicoRelacionado: tópico2.	"usuarioSeguido, NO tópico de interés, debe estar 1 vez"
	usuarioSeguido agregarPregunta: pregunta1.
	usuarioNoSeguido agregarPregunta: pregunta2.
	usuarioNoSeguido agregarPregunta: pregunta3.
	usuarioSeguido agregarPregunta: pregunta4.
	tópico1 agregarPregunta: pregunta1.
	tópico1 agregarPregunta: pregunta3.
	tópico2 agregarPregunta: pregunta1.
	tópico2 agregarPregunta: pregunta4.

	"TEST"
	self assert: (usuario conocerPreguntasRelevantes includes: pregunta1).
	self deny: (usuario conocerPreguntasRelevantes includes: pregunta2).
	self assert: (usuario conocerPreguntasRelevantes includes: pregunta3).
	self assert: (usuario conocerPreguntasRelevantes includes: pregunta4).
	self assert: usuario conocerPreguntasRelevantes size equals: 3