testing
testConocerPreguntasDeUsuariosSeguidosPor
	self assert: estrategia usuario isNil.
	estrategia usuario: (cuoora cuooraSingleton conocerUsuarioSiExiste: (Usuario nombre: 'jose@cuoora.com' contraseña: 'jose@cuoora.com')).	"Usuario 4"
	self assert: estrategia usuario isNotNil.
	self assert: (estrategia conocerPreguntasDeUsuariosSeguidosPor: estrategia usuario) isEmpty.
	"Usuario 4 no sigue a nadie"
	estrategia usuario: (cuoora cuooraSingleton conocerUsuarioSiExiste: (Usuario nombre: 'diego@cuoora.com' contraseña: 'diego@cuoora.com')).	"Usuario 2"
	self assert: estrategia usuario isNotNil.
	self assert: (estrategia conocerPreguntasDeUsuariosSeguidosPor: estrategia usuario) isEmpty.
	"Usuario 2 sigue a Usuario 4 que no tiene preguntas"
	estrategia usuario: (cuoora cuooraSingleton conocerUsuarioSiExiste: (Usuario nombre: 'juan@cuoora.com' contraseña: 'juan@cuoora.com')).	"Usuario 3"
	self assert: estrategia usuario isNotNil.
	self assert: (estrategia conocerPreguntasDeUsuariosSeguidosPor: estrategia usuario) isNotEmpty
	"Usuario 3 sigue a Usuario 1 y a Usuario 2 con preguntas"