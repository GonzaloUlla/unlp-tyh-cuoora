initialization
initialize: unTítulo descripción: unaDescripción tópicoRelacionado: unTópico

	super initialize.
	
	título := unTítulo.
	texto := unaDescripción.
	tópicosRelacionados := OrderedCollection new.
	tópicosRelacionados add: unTópico.
	respuestas := SortedCollection new.