testing
testAgregarVotoNegativo
	| voto1 voto2 voto3 voto4 |
	"Crear Voto y Agregarlo"
	voto1 := Voto usuario: entrada usuario entrada: entrada.
	voto2 := Voto usuario: 'otroUsuario' entrada: 'otraEntrada'.
	voto3 := Voto usuario: 'otroUsuario3' entrada: 'otraEntrada3'.
	voto4 := Voto usuario: 'otroUsuario4' entrada: 'otraEntrada4'.
	entrada agregarVotoPositivo: voto1.
	entrada agregarVotoNegativo: voto2.
	entrada agregarVotoNegativo: voto4.
	self assert: entrada conocerVotosNegativos size equals: 2.
	self deny: (entrada conocerVotosNegativos includes: voto1).
	self assert: (entrada conocerVotosNegativos includes: voto2).
	self deny: (entrada conocerVotosNegativos includes: voto3).
	self assert: (entrada conocerVotosNegativos includes: voto4)