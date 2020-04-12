testing
testEquals
	| otraRespuesta otroUsuario voto1 voto2 |
	otroUsuario := Usuario nombre: 'u1' contraseña: 'u1'.
	otraRespuesta := Respuesta
		usuario: otroUsuario
		texto: 'r1'
		preguntaReferida:
			(Pregunta
				usuario: otroUsuario
				título: 'p1'
				texto: 'p1'
				tópicoRelacionado: (Tópico nombre: 't1' descripción: 't1')).
	"0 votos cada respuesta"
	self assert: otraRespuesta equals: respuesta.
	voto1 := Voto usuario: otroUsuario entrada: otraRespuesta.
	otraRespuesta agregarVotoPositivo: voto1.
	self deny: (otraRespuesta equals: respuesta).
	otraRespuesta eliminarTodosVotos.
	"-1 respuesta, -1 otraRespuesta"
	voto1 := Voto usuario: otroUsuario entrada: respuesta.
	voto2 := Voto usuario: otroUsuario entrada: otraRespuesta.
	respuesta agregarVotoNegativo: voto1.
	otraRespuesta agregarVotoNegativo: voto2.
	self assert: otraRespuesta equals: respuesta