comparing
hash
	^ (self usuario hash bitXor: self preguntaReferida hash) bitXor: self texto hash