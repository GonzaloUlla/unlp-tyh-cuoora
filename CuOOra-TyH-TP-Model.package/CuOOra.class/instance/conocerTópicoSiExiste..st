api
conocerTópicoSiExiste: unNombreDeTópico
	"Retorna el tópico buscado si existe o nil en caso contrario"

	^ tópicos detect: [ :tópico | tópico nombre = unNombreDeTópico ] ifFound: [ :foundTopic | ^ foundTopic ] ifNone: [ ^ nil ]