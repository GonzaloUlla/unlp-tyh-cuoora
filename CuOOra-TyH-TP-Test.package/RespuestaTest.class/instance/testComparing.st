testing
testComparing
	| otraRespuesta otroUsuario voto1 voto2 voto3 |
	otroUsuario := Usuario nombre: 'u1' contraseña: 'u1'.
	otraRespuesta := Respuesta
		usuario: otroUsuario
		texto: 'r1'
		preguntaReferida:
			(PreguntaProxy
				usuario: otroUsuario
				título: 'p1'
				texto: 'p1'
				tópicoRelacionado: (Tópico nombre: 't1' descripción: 't1')).
	"0 votos cada respuesta"
	self assert: otraRespuesta = respuesta.
	self assert: otraRespuesta <= respuesta.
	self assert: otraRespuesta >= respuesta.
	self deny: otraRespuesta < respuesta.
	self deny: otraRespuesta > respuesta.
	"0 respuesta, +1 otraRespuesta"
	voto1 := Voto usuario: otroUsuario entrada: otraRespuesta.
	otraRespuesta agregarVotoPositivo: voto1.
	self assert: otraRespuesta > respuesta.
	self assert: otraRespuesta >= respuesta.
	self deny: otraRespuesta = respuesta.
	self deny: otraRespuesta <= respuesta.
	self deny: otraRespuesta < respuesta.
	otraRespuesta eliminarTodosVotos.
	"+1 respuesta, 0 otraRespuesta"
	voto1 := Voto usuario: otroUsuario entrada: respuesta.
	respuesta agregarVotoPositivo: voto1.
	self assert: otraRespuesta < respuesta.
	self assert: otraRespuesta <= respuesta.
	self deny: otraRespuesta = respuesta.
	self deny: otraRespuesta >= respuesta.
	self deny: otraRespuesta > respuesta.
	respuesta eliminarTodosVotos.
	"-1 respuesta, -1 otraRespuesta"
	voto1 := Voto usuario: otroUsuario entrada: respuesta.
	voto2 := Voto usuario: otroUsuario entrada: otraRespuesta.
	respuesta agregarVotoNegativo: voto1.
	otraRespuesta agregarVotoNegativo: voto2.
	self assert: otraRespuesta = respuesta.
	self assert: otraRespuesta <= respuesta.
	self assert: otraRespuesta >= respuesta.
	self deny: otraRespuesta < respuesta.
	self deny: otraRespuesta > respuesta.
	respuesta eliminarTodosVotos.
	otraRespuesta eliminarTodosVotos.
	"-2 respuesta, -1 otraRespuesta"
	voto1 := Voto usuario: otroUsuario entrada: respuesta.
	voto2 := Voto usuario: otroUsuario entrada: otraRespuesta.
	voto3 := Voto usuario: otroUsuario entrada: respuesta.
	respuesta agregarVotoNegativo: voto1.
	respuesta agregarVotoNegativo: voto3.
	otraRespuesta agregarVotoNegativo: voto2.
	self assert: otraRespuesta > respuesta.
	self assert: otraRespuesta >= respuesta.
	self deny: otraRespuesta = respuesta.
	self deny: otraRespuesta < respuesta.
	self deny: otraRespuesta <= respuesta