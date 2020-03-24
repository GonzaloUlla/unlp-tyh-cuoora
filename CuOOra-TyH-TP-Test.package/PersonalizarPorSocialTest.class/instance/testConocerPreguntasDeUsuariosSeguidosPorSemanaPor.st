testing
testConocerPreguntasDeUsuariosSeguidosPorSemanaPor
	self assert: estrategia usuario isNil.
	estrategia usuario: (cuoora cuooraSingleton conocerUsuarioSiExiste: (Usuario nombre: 'jose@cuoora.com' contraseña: 'jose@cuoora.com')).	"Usuario 4"
	self assert: estrategia usuario isNotNil.
	self assert: (estrategia conocerPreguntasDeUsuariosSeguidosPor: estrategia usuario) isEmpty.
	self assert: (estrategia conocerPreguntasDeUsuariosSeguidosPorSemanaPor: estrategia usuario) isEmpty.
	"Usuario 4 no sigue a nadie"
	estrategia usuario: (cuoora cuooraSingleton conocerUsuarioSiExiste: (Usuario nombre: 'pedro@cuoora.com' contraseña: 'pedro@cuoora.com')).	"Usuario 1"
	self assert: estrategia usuario isNotNil.
	self assert: (estrategia conocerPreguntasDeUsuariosSeguidosPor: estrategia usuario) isNotEmpty.
	self assert: (estrategia conocerPreguntasDeUsuariosSeguidosPorSemanaPor: estrategia usuario) size equals: 1
	"Usuario 1 sigue a Usuario 3 con 1 pregunta de esta semana y 1 pregunta del pasado"