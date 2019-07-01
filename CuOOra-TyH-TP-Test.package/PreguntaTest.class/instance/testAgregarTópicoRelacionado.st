tests
testAgregarTópicoRelacionado
	| tópico2 |
	"Iniciliazo tópico2"
	tópico2 := Tópico
		nombre: 'Color'
		descripción: 'Color de objetos, animales'.

	"Agrego tópico2 a los tópicos de la pregunta"
	pregunta agregarTópicoRelacionado: tópico2.

	"Valido que la pregunta tiene dos tópicos"
	self
		assert: pregunta conocerTópicosRelacionados size
		equals: 2