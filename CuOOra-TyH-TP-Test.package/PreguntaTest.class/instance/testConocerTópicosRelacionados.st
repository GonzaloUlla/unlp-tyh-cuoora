tests
testConocerTópicosRelacionados
	|tópico1|
	self deny: pregunta conocerTópicosRelacionados isEmpty.
	
	tópico1 := Tópico nombre: 'Color' descripción: 'Color objetos, animales'.
	pregunta agregarTópicoRelacionado: tópico1.
	
	self assert: 
		(pregunta conocerTópicosRelacionados anySatisfy: [ :x | x nombre = 'Reptiles' ]).
	self assert: 
		(pregunta conocerTópicosRelacionados anySatisfy: [ :x | x nombre = 'Color' ]).
	self deny: 
		(pregunta conocerTópicosRelacionados anySatisfy: [ :x | x nombre = 'Naturaleza' ]).		

