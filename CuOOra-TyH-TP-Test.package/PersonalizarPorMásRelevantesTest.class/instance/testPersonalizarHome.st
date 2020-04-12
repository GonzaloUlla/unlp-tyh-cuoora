testing
testPersonalizarHome
	self assert: (estrategia conocerTodasPreguntas: cuoora cuooraSingleton) size equals: 4.
	self assert: (estrategia conocerPreguntasDelDía: cuoora cuooraSingleton) size equals: 2.
	self assert: (estrategia personalizarHome: cuoora cuooraSingleton) size equals: 2.
	self assert: (estrategia personalizarHome: cuoora cuooraSingleton) first conocerRespuestas isNotEmpty.
	self assert: (estrategia personalizarHome: cuoora cuooraSingleton) last conocerRespuestas isEmpty