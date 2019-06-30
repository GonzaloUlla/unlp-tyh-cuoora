initialization
initialize
	"Inicialización de una Pregunta"

	super initialize.
	título := ''.
	tópicosRelacionados := OrderedCollection new.
	respuestas := SortedCollection new