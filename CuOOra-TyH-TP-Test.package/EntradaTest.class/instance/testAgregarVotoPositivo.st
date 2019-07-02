testing
testAgregarVotoPositivo
	| voto1 voto2 voto3 |
	"Crear Voto y Agregarlo"
	voto1 := Voto usuario: entrada usuario entrada: entrada.
	voto2 := Voto usuario: 'otroUsuario' entrada: 'otraEntrada'.
	voto3 := Voto usuario: 'otroUsuario3' entrada: 'otraEntrada3'.
	entrada agregarVotoPositivo: voto1.
	entrada agregarVotoNegativo: voto2.
	self assert: entrada conocerVotosPositivos size equals: 1.
	self assert: (entrada conocerVotosPositivos includes: voto1).
	self deny: (entrada conocerVotosPositivos includes: voto2).
	self deny: (entrada conocerVotosPositivos includes: voto3)