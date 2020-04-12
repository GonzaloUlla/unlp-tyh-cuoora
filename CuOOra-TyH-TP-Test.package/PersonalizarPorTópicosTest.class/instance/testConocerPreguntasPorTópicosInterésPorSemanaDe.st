testing
testConocerPreguntasPorTópicosInterésPorSemanaDe
	"3- Usuario1: [T1, T2, T3], Usuario2: [T1, T2, T3], Usuario3: [], Usuario4: [T2]"

	self assert: estrategia usuario isNil.
	estrategia usuario: (cuoora cuooraSingleton conocerUsuarioSiExiste: (Usuario nombre: 'juan@cuoora.com' contraseña: 'juan@cuoora.com')).	"Usuario 3"
	self assert: estrategia usuario isNotNil.
	self assert: (estrategia conocerPreguntasPorTópicosInterésPorSemanaDe: estrategia usuario) isEmpty.
	"Usuario 3 no tiene tópicos de interés"
	estrategia usuario: (cuoora cuooraSingleton conocerUsuarioSiExiste: (Usuario nombre: 'diego@cuoora.com' contraseña: 'diego@cuoora.com')).	"Usuario 2"
	self assert: estrategia usuario isNotNil.
	self assert: (estrategia conocerPreguntasPorTópicosInterésPorSemanaDe: estrategia usuario) size equals: 3	"pregunta3 es del 2019, no de la última semana"
	"Usuario 2 tiene T1, T2 y T3 como tópicos de interés"