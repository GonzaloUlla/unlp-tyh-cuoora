initialization
initializeOrGetCollectionFor: aClass
	"inicialización lazy de las coleccion de un objeto"

	^ bag at: aClass ifAbsentPut: OrderedCollection new