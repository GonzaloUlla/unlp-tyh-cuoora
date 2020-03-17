api
conocerPreguntasPorTópicosInterésDe: unUsuario
	| preguntasPorTópicosInterés |
	preguntasPorTópicosInterés := Set new.
	unUsuario conocerTópicosInterés
		do: [ :tópico | preguntasPorTópicosInterés addAll: tópico conocerPreguntas ].
	^ preguntasPorTópicosInterés