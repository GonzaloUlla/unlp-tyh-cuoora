tests
testVisitRespuesta
	| writer usuario1 pregunta1 respuesta1 |
	usuario1 := Usuario new.
	pregunta1 := Pregunta new.
	respuesta1 := Respuesta
		usuario: usuario1
		fechaCreación: DateAndTime now
		texto: 'Es de color verde'
		preguntaReferida: pregunta1.
	writer := [ :object | 
	String
		streamContents: [ :stream | 
			(NeoJSONWriter on: stream)
				for: Respuesta do: [ :mapping | mapping mapInstVar: #texto ];
				nextPut: object ] ].
	self assert: (writer value: Respuesta new) equals: '{}'.
	self assert: (writer value: respuesta1) equals: '{"texto":"Es de color verde"}'