controlling
addTopics: stringOfTopics
	"Add topics to pregunta"

	(self parseAndGet: stringOfTopics) do: [ :topic | pregunta agregarTópicoRelacionado: topic ]