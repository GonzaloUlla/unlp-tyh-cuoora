selecting
select: aBlock forClass: aClass
	"Retorna elementos que satisfacen un bloque demorando 200ms por cada objeto de la colección"

	| newCollection |
	newCollection := Set new.
	(self retrieveAllByClass: aClass)
		do: [ :each | 
			(aBlock value: each)
				ifTrue: [ newCollection add: each ] ].
	^ newCollection