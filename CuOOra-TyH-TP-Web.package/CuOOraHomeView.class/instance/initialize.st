initialization
initialize
	| preguntas |
	super initialize.
	agregarUsuarioView := AgregarUsuarioView new.
	cuooraViews := OrderedCollection new.
	cuooraViews add: agregarUsuarioView.
	cuooraSingleton := CuOOra new cuooraSingleton.
	preguntaViews := OrderedCollection new.
	preguntas := Set new.
	cuooraSingleton conocerUsuarios do: [ :eachUsuario | eachUsuario conocerPreguntasRelevantes do: [ :eachPregunta | preguntas add: eachPregunta ] ].
	preguntas do: [ :eachPregunta | preguntaViews add: (PreguntaView new pregunta: eachPregunta) ].
	usuario := nil
	"usuario := cuooraSingleton conocerUsuarios any"