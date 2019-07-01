tests
testAgregarTópico
	|tópico1|
	tópico1 := Tópico nombre: 'Reptiles' descripción: 'Animales reptiles'. 
	cuoora agregarTópico: tópico1.
	self assert: cuoora conocerTópicos size equals: 1.
