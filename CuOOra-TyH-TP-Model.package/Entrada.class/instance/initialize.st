initialization
initialize

	super initialize.

	fechaCreación := DateAndTime now.
	texto := ''.
	usuario := ''.
	votosNegativos := OrderedCollection new.
	votosPositivos := OrderedCollection new.