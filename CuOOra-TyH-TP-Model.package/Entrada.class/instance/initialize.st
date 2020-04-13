initialization
initialize

	super initialize.

	fechaCreación := DateAndTime now.
	texto := nil.
	usuario := nil.
	votosNegativos := OrderedCollection new.
	votosPositivos := OrderedCollection new.