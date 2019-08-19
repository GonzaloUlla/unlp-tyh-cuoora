accessing
cuooraSingleton
	"Return a CuOOra instance with sample data"

	| usuario1 usuario2 usuario3 tópico1 tópico2 tópico3 |
	cuooraSingleton
		ifNil: [ cuooraSingleton := self class new.
			usuario1 := Usuario nombre: 'pedro@cuoora.com' contraseña: 'pedro@cuoora.com' fechaCreación: DateAndTime now.
			usuario2 := Usuario nombre: 'diego@cuoora.com' contraseña: 'diego@cuoora.com' fechaCreación: DateAndTime now.
			usuario3 := Usuario nombre: 'juan@cuoora.com' contraseña: 'juan@cuoora.com' fechaCreación: DateAndTime now.
			cuooraSingleton agregarUsuario: usuario1.
			cuooraSingleton agregarUsuario: usuario2.
			cuooraSingleton agregarUsuario: usuario3.
			tópico1 := Tópico nombre: 'OO1' descripción: 'Orientación a Objetos I'.
			tópico2 := Tópico nombre: 'Smalltalk' descripción: 'Lenguaje Smalltalk'.
			tópico3 := Tópico nombre: 'Test de unidad' descripción: 'Test de unidad'.
			cuooraSingleton agregarTópico: tópico1.
			cuooraSingleton agregarTópico: tópico2.
			cuooraSingleton agregarTópico: tópico3 ].
	^ cuooraSingleton