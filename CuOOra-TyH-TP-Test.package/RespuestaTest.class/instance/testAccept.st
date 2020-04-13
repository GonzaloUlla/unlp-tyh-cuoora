testing
testAccept
	| unVisitor |
	unVisitor := JsonVisitor new.
	self assert: ((respuesta accept: unVisitor) isKindOf: String).
	unVisitor := XmlVisitor new.
	self assert: ((respuesta accept: unVisitor) isKindOf: String)