instance creation
usuario: unUsuario fechaCreación: unaFecha título: unTítulo texto: unTexto tópicoRelacionado: unTópico
	"Constructor de Pregunta"

	| nuevaPregunta |
	nuevaPregunta := self new.
	nuevaPregunta usuario: unUsuario.
	nuevaPregunta fechaCreación: unaFecha.
	nuevaPregunta título: unTítulo.
	nuevaPregunta texto: unTexto.
	nuevaPregunta agregarTópicoRelacionado: unTópico.	
	^ nuevaPregunta