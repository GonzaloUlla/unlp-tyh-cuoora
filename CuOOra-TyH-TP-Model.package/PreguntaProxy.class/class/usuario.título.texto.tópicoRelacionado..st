instance creation
usuario: unUsuario título: unTítulo texto: unTexto tópicoRelacionado: unTópico
	"Constructor de Pregunta"

	"Constructor de PreguntaProxy"

	| nuevoProxy |
	nuevoProxy := self new.
	nuevoProxy
		pregunta:
			(Pregunta
				usuario: unUsuario
				título: unTítulo
				texto: unTexto
				tópicoRelacionado: unTópico).
	^ nuevoProxy