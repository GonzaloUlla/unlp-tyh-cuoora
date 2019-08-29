initialization
initialize
	(WAAdmin register: self asApplicationAt: 'CuOOra')
		addLibrary: TBSDeploymentLibrary;
		exceptionHandler: WADebugErrorHandler