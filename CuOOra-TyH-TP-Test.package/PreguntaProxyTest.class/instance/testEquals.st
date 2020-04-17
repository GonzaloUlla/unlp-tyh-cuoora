testing
testEquals
	| otroProxy |
	otroProxy := proxy copy.
	self assert: proxy equals: otroProxy.
	otroProxy título: 'Otro texto diferente al anterior'.
	self deny: (proxy equals: otroProxy)