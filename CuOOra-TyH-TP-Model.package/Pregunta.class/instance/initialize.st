initialization
initialize
	"Inicialización de una Pregunta"

	super initialize.
	título := ''.
	tópicosRelacionados := OrderedCollection new.
	respuestas := SortedCollection
		sortBlock: [ :respuesta1 :respuesta2 | respuesta1 calcularPuntaje > respuesta2 calcularPuntaje ].
	estado := Creada pregunta: self.
	respuestasSize := 0