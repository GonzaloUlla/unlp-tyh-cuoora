testing
testConocerPreguntasDelDía
	self assert: (estrategia conocerTodasPreguntas: cuoora cuooraSingleton) size equals: 4.
	self assert: (estrategia conocerPreguntasDelDía: cuoora cuooraSingleton) size equals: 2