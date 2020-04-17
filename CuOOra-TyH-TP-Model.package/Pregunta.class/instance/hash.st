comparing
hash
	^ (self usuario hash bitXor: self título hash) bitXor: self texto hash