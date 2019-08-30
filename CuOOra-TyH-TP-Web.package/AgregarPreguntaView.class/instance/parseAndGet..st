controlling
parseAndGet: stringOfTopics
	"Parses a string with comma-separated topics returning CuOOra's Topics as objects"

	| topics |
	topics := OrderedCollection new.
	stringOfTopics
		splitOn: ','
		do: [ :topic | topics add: (cuooraSingleton getOrCreateTópico: topic) ].
	^ topics