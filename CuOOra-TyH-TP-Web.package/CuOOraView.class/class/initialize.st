initialization
initialize
	(WAAdmin register: self asApplicationAt: 'CuOOra')
		addLibrary: TBSDeploymentLibrary;
		addLibrary: BlogLibrary;
		exceptionHandler: WADebugErrorHandler