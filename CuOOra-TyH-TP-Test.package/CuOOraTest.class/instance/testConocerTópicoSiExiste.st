testing
testConocerTópicoSiExiste
	| tópico1 |
	tópico1 := Tópico nombre: 'Reptiles' descripción: 'Animales reptiles'.
	cuoora agregarTópico: tópico1.
	self assert: (cuoora conocerTópicoSiExiste: 'Reptiles') isNotNil.
	self assert: (cuoora conocerTópicoSiExiste: 'Anfibios') isNil