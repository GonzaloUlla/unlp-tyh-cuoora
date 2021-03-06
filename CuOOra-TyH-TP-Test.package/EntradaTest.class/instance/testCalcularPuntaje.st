testing
testCalcularPuntaje
	| voto1 voto2 voto3 |
	self assert: entrada calcularPuntaje equals: 0.
	"Crear Voto y Agregarlo"
	voto1 := Voto usuario: entrada usuario entrada: entrada.
	voto2 := Voto usuario: 'otroUsuario' entrada: 'otraEntrada'.
	voto3 := Voto usuario: 'otroUsuario3' entrada: 'otraEntrada3'.
	entrada agregarVotoPositivo: voto1.
	self assert: entrada calcularPuntaje equals: 1.
	entrada agregarVotoNegativo: voto2.
	self assert: entrada calcularPuntaje equals: 0.
	entrada agregarVotoNegativo: voto3.
	"2 votos negativos, 1 positivo, puntaje = -1"
	self assert: entrada calcularPuntaje equals: -1