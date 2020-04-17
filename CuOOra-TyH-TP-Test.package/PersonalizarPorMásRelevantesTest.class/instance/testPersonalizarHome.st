testing
testPersonalizarHome
	| usuario4 |
	usuario4 := cuoora cuooraSingleton
		conocerUsuarioSiExiste: (Usuario nombre: 'jose@cuoora.com' contraseña: 'jose@cuoora.com').	"Usuario 4"
	usuario4 setHomeMásRelevantes.
	self assert: (usuario4 personalizarHome: cuoora cuooraSingleton) size equals: 2.
	self
		assert: (usuario4 personalizarHome: cuoora cuooraSingleton) first conocerRespuestas isNotEmpty.
	self
		assert: (usuario4 personalizarHome: cuoora cuooraSingleton) last conocerRespuestas isEmpty