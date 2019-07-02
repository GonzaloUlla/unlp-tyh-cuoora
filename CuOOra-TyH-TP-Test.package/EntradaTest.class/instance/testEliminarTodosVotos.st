testing
testEliminarTodosVotos
	| voto1 voto2 voto3 |
	"Pruebas en estado inicial"
	self assert: entrada conocerVotosPositivos isEmpty.
	self assert: entrada conocerVotosNegativos isEmpty.
	entrada eliminarTodosVotos.
	self assert: entrada conocerVotosPositivos isEmpty.
	self assert: entrada conocerVotosNegativos isEmpty.
	"Crear Votos y Agregarlos"
	voto1 := Voto usuario: entrada usuario entrada: entrada.
	voto2 := Voto usuario: 'otroUsuario' entrada: 'otraEntrada'.
	voto3 := Voto usuario: 'otroUsuario4' entrada: 'otraEntrada4'.
	entrada agregarVotoPositivo: voto1.
	entrada agregarVotoNegativo: voto2.
	entrada agregarVotoNegativo: voto3.
	self deny: entrada conocerVotosPositivos isEmpty.
	self deny: entrada conocerVotosNegativos isEmpty.
	self assert: (entrada conocerVotosNegativos includes: voto2).
	"Eliminar todos los votos"
	entrada eliminarTodosVotos.
	self assert: entrada conocerVotosPositivos isEmpty.
	self assert: entrada conocerVotosNegativos isEmpty.
	self deny: (entrada conocerVotosNegativos includes: voto2)