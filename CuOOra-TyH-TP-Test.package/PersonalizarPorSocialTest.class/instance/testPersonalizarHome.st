testing
testPersonalizarHome
	| pregunta2 voto1 voto2 voto3 |
	self assert: estrategia usuario isNil.
	estrategia usuario: (cuoora cuooraSingleton conocerUsuarioSiExiste: (Usuario nombre: 'jose@cuoora.com' contraseña: 'jose@cuoora.com')).	"Usuario 4"
	self assert: estrategia usuario isNotNil.
	self assert: (estrategia conocerPreguntasDeUsuariosSeguidosPor: estrategia usuario) isEmpty.
	self assert: (estrategia conocerPreguntasDeUsuariosSeguidosPorSemanaPor: estrategia usuario) isEmpty.
	self assert: (estrategia personalizarHome: cuoora cuooraSingleton) isEmpty.
	"Usuario 4 no sigue a nadie"
	estrategia usuario: (cuoora cuooraSingleton conocerUsuarioSiExiste: (Usuario nombre: 'pedro@cuoora.com' contraseña: 'pedro@cuoora.com')).	"Usuario 1"
	self assert: estrategia usuario isNotNil.
	self assert: (estrategia conocerPreguntasDeUsuariosSeguidosPor: estrategia usuario) isNotEmpty.
	self assert: (estrategia conocerPreguntasDeUsuariosSeguidosPorSemanaPor: estrategia usuario) size equals: 1.
	self assert: (estrategia personalizarHome: cuoora cuooraSingleton) size equals: 1.
	"Usuario 1 sigue a Usuario 3 con 1 pregunta de esta semana y 1 pregunta del pasado"
	estrategia usuario: (cuoora cuooraSingleton conocerUsuarioSiExiste: (Usuario nombre: 'juan@cuoora.com' contraseña: 'juan@cuoora.com')).	"Usuario 3"
	self assert: estrategia usuario isNotNil.
	self assert: (estrategia conocerPreguntasDeUsuariosSeguidosPor: estrategia usuario) isNotEmpty.
	self assert: (estrategia conocerPreguntasDeUsuariosSeguidosPorSemanaPor: estrategia usuario) size equals: 2.
	self assert: (estrategia personalizarHome: cuoora cuooraSingleton) size equals: 2.
	self assert: (estrategia personalizarHome: cuoora cuooraSingleton) first usuario nombre equals: 'pedro@cuoora.com'.
	self assert: (estrategia personalizarHome: cuoora cuooraSingleton) first calcularPuntaje equals: 1.
	"Registrar Like a pregunta2"
	"voto1 por usuario1 a pregunta2"
	pregunta2 := (estrategia personalizarHome: cuoora cuooraSingleton) last.
	voto1 := Voto usuario: (Usuario nombre: 'pedro@cuoora.com' contraseña: 'pedro@cuoora.com') entrada: pregunta2 fechaCreación: DateAndTime now.
	pregunta2 agregarVotoPositivo: voto1.
	"voto2 por usuario3 a pregunta2"
	voto2 := Voto usuario: (Usuario nombre: 'juan@cuoora.com' contraseña: 'juan@cuoora.com') entrada: pregunta2 fechaCreación: DateAndTime now.
	pregunta2 agregarVotoPositivo: voto2.
	"voto3 por usuario4 a pregunta2"
	voto3 := Voto usuario: (Usuario nombre: 'jose@cuoora.com' contraseña: 'jose@cuoora.com') entrada: pregunta2 fechaCreación: DateAndTime now.
	pregunta2 agregarVotoPositivo: voto3.
	self assert: pregunta2 calcularPuntaje equals: 2.
	"El orden deberia cambiar"
	self assert: (estrategia personalizarHome: cuoora cuooraSingleton) first usuario nombre equals: 'diego@cuoora.com'