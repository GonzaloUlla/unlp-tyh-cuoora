instance creation
new: aCollection
	| sluggishDao |
	sluggishDao := self new.
	sluggishDao elements: aCollection.
	^ sluggishDao