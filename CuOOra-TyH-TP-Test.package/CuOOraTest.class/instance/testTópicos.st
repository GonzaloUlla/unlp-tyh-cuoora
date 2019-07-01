tests
testTópicos
	|tópico1|
	tópico1 := Tópico nombre: 'Reptiles' descripción: 'Animales reptiles'. 
	cuoora agregarTópico: tópico1.
	self deny: cuoora conocerTópicos isEmpty.
