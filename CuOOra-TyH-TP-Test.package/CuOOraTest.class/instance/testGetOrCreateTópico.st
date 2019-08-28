testing
testGetOrCreateTópico
	| tópico1 |
	tópico1 := Tópico nombre: 'Reptiles' descripción: 'Animales reptiles'.
	cuoora agregarTópico: tópico1.
	self assert: (cuoora getOrCreateTópico: 'Reptiles') equals: tópico1.
	self assert: (cuoora getOrCreateTópico: 'Reptiles') nombre equals: 'Reptiles'.
	self assert: cuoora conocerTópicos size equals: 1.
	self assert: (cuoora getOrCreateTópico: 'Anfibios') isNotNil.
	self assert: (cuoora getOrCreateTópico: 'Anfibios') nombre equals: 'Anfibios'.
	self assert: cuoora conocerTópicos size equals: 2