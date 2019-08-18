# TyH - Cuarta clase remota - 17/05

## Testing
* Extender la clase `TestCase`
* Implementar `setUp`
* Implementar `testMethod`
```smalltalk
self assert: (fullCollection includes: 5).
fullCollection remove: 5.
self deny: (fullCollection includes:5).
self should: [emptyCollection at: 5] raise: Error.
``` 

## Pharo Tips
* Spotter `Shift+Enter`
* Autoformat `Ctrl+Shift+F`
* Find **C**lass, **P**ackage `Ctrl+F+C/P`
* New **C**lass, **P**ackage, Pro**T**ocol `Ctrl+N+C/P/T`
* Autogenerate accessing and initialization protocols `Ctrl+H+A/I`
* Open browser, playgroud `Ctrl+O+B/W`
* Save image `Ctrl+Shift+S`

## CI & QA
* https://builds.apache.org
* Tomar la cobertura de **branch**
### Tipos de test
* Unidad
* Funcionales
* de Integración
### Maven build steps
* Validate -> Generate sources -> Compile -> Test -> Package -> Pre, Integration & Post test -> Verify -> Install
### Continuous Delivery
* Deployment automático a algún ambiente (DEV)
* Automatizado el proceso de release, apretás un botón y vas a PRD
### Tools
* PMD
* CPD (Copy Paste Detector)
* sonarcloud.io
* www.sonarqube.io // blog.sonarsource.com