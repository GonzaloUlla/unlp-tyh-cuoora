initialization
initializeProxy: unProxy
	| proxyCol newProxy |
	proxyCol := sDAO select: [ :proxy | proxy = unProxy ] forClass: self class.
	newProxy := proxyCol isEmpty
		ifTrue: [ unProxy ]
		ifFalse: [ proxyCol first ].
	newProxy pregunta estado pregunta: newProxy.
	^ newProxy