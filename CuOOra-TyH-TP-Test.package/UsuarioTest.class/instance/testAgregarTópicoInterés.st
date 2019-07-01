testing
testAgregarTópicoInterés
	|tópico1|
	tópico1 := Tópico nombre: 'Reptiles' descripción: 'Animales reptiles'. 
	usuario agregarTópicoInterés: tópico1.
	self deny: usuario conocerTópicosInterés isEmpty.