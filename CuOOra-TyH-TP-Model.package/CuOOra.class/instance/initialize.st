initialization
initialize
	super initialize.
	tópicos := OrderedCollection new.
	usuarios := OrderedCollection new.
	cuooraSingleton := nil.
	jsonVisitor := JsonVisitor new.
	xmlVisitor := XmlVisitor new