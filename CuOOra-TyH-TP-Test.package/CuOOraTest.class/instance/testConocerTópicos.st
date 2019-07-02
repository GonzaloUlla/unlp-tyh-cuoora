testing
testConocerTópicos
	| tópico1 tópico2 tópico3 |
	"Agregar un tópico"
	self assert: cuoora conocerTópicos isEmpty.
	tópico1 := Tópico nombre: 't1' descripción: 't1'.
	cuoora agregarUsuario: tópico1.
	self deny: cuoora conocerUsuarios isEmpty.
	self assert: cuoora conocerUsuarios size equals: 1.
	self assert: (cuoora conocerUsuarios includes: tópico1).
	"Agregar otro tópico"
	tópico2 := Tópico nombre: 't2' descripción: 't2'.
	cuoora agregarUsuario: tópico2.
	self assert: cuoora conocerUsuarios size equals: 2.
	self assert: (cuoora conocerUsuarios includes: tópico2).
	"try to modify tópicos"
	tópico3 := Tópico nombre: 't3' descripción: 't3'.
	cuoora conocerUsuarios add: tópico3.
	self assert: cuoora conocerUsuarios size equals: 2.
	self deny: (cuoora conocerUsuarios includes: tópico3)