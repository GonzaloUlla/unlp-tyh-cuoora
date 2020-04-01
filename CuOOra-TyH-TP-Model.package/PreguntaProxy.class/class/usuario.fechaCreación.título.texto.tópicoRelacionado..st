instance creation
usuario: unUsuario fechaCreación: unaFecha título: unTítulo texto: unTexto tópicoRelacionado: unTópico
	"Constructor de PreguntaProxy"

	| nuevoProxy |
	nuevoProxy := self new.
	nuevoProxy
		pregunta:
			(Pregunta
				usuario: unUsuario
				fechaCreación: unaFecha
				título: unTítulo
				texto: unTexto
				tópicoRelacionado: unTópico).
	^ nuevoProxy initializeProxy: nuevoProxy