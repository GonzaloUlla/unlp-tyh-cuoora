testing
testHash
	| otroProxy |
	otroProxy := proxy copy.
	self assert: proxy hash = otroProxy hash.
	otroProxy título: 'Otro texto diferente al anterior'.
	self deny: (proxy hash = otroProxy hash)