initialization
initialize
	"Inicialización de una Pregunta"

	super initialize.
	título := nil.
	tópicosRelacionados := OrderedCollection new.
	respuestas := SortedCollection new.
	estado := Creada new.
