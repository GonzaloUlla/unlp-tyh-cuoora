testing
testAccept
	| unVisitor |
	unVisitor := JsonVisitor new.
	self assert: ((pregunta accept: unVisitor) isKindOf: String).
	unVisitor := XmlVisitor new.
	self assert: ((pregunta accept: unVisitor) isKindOf: String)