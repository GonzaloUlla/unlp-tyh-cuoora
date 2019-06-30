api
conocerPreguntasRelevantes
	"Retorna las Preguntas de los tópicos de interés del Usuario o realizada por alguno de los usuarios a quienes sigue"

	| preguntasRelevantes |
	preguntasRelevantes := Set new.
	tópicosInterés do: [ :tópico | preguntasRelevantes addAll: tópico conocerPreguntas ].
	sigueA do: [ :usuario | preguntasRelevantes addAll: usuario conocerPreguntas ].
	^ preguntasRelevantes 