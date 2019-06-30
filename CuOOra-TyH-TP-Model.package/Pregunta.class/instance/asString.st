converting
asString
	"Retorna una Pregunta como un String"

	| tópicos |
	tópicos := ''.
	tópicosRelacionados do: [ :x | tópicos := tópicos , x nombre , ' ' ].
	^ String cr , 'Título: ' , título , ' - Tópicos Relacionados: ' , tópicos , super asString