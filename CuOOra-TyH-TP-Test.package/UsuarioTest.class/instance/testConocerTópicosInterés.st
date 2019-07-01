testing
testConocerTópicosInterés
	| tópico1 tópico2 |
	tópico1 := Tópico nombre: 't1' descripción: 't1'.
	tópico2 := Tópico nombre: 't1' descripción: 't1'.
	usuario agregarTópicoInterés: tópico1.
	self assert: usuario conocerTópicosInterés size equals: 1.
	self assert: (usuario conocerTópicosInterés includes: tópico1).
	self deny: (usuario conocerTópicosInterés includes: tópico2).
	"try to modify tópicos"
	usuario conocerTópicosInterés add: 'otro'.
	self assert: usuario conocerTópicosInterés size equals: 1