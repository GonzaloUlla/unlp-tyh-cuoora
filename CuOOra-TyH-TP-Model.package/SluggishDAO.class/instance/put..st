api
put: anObject
	"almacena un objeto en memoria"

	| col |
	col := self initializeOrGetCollecitonFor: anObject class.
	col add: anObject