api
getOrCreateTópico: unNombreDeTópico
	"Retorna un tópico si existe y si no, lo crea y lo retorna"

	| topic |
	topic := self conocerTópicoSiExiste: unNombreDeTópico.
	topic
		ifNil: [ topic := Tópico nombre: unNombreDeTópico descripción: unNombreDeTópico.
			self agregarTópico: topic ].
	^ topic