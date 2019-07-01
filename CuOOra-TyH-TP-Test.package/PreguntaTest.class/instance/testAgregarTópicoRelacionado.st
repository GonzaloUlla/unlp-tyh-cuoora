tests
testAgregarTópicoRelacionado
	|tópico2|
	tópico2 := Tópico nombre: 'Color' descripción: 'Color de objetos, animales'.
	pregunta agregarTópicoRelacionado: tópico2.
	self assert: pregunta conocerTópicosRelacionados size equals: 2.