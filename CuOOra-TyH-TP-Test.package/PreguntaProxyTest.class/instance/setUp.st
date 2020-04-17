running
setUp
	cuooraSingleton := CuOOra new cuooraSingleton.
	sDAO := SluggishDAO newSingleton.
	cuooraSingleton conocerTodasPreguntas
		do: [ :preg | 
			sDAO put: preg.
			preg conocerRespuestas do: [ :rta | sDAO put: rta ].
			preg conocerVotosPositivos do: [ :vp | sDAO put: vp ].
			preg conocerVotosNegativos do: [ :vn | sDAO put: vn ] ].
	proxy := PreguntaProxy id: 134968191