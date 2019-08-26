api
existeTópico: unNombreDeTópico
	"Retorna true si existe en CuOOra un tópico con un cierto nombre y false en caso contrario"

	^ tópicos anySatisfy: [ :tópico | tópico nombre = unNombreDeTópico ]