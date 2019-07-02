api
eliminarUsuario
	"Elimina el Usuario de la Respuesta y la Respuesta del Usuario"

	(usuario conocerRespuestas includes: self)
		ifTrue: [ usuario eliminarRespuesta: self ].
	super eliminarUsuario