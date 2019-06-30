instance creation
usuario: unUsuario título: unTítulo texto: unTexto tópicoRelacionado: unTópico
	"Constructor de Pregunta"

	| nuevaPregunta |
	nuevaPregunta := self new.
	nuevaPregunta usuario: unUsuario.
	nuevaPregunta fechaCreación: DateAndTime now.
	nuevaPregunta título: unTítulo.
	nuevaPregunta texto: unTexto.
	nuevaPregunta agregarTópicoRelacionado: unTópico.	
	^ nuevaPregunta