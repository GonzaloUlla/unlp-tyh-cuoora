initialization
select:aBlock forClass: aClass
"retorna elementos que satisfacen un bloque demorando 200ms por cada objeto de la colección "
| col  selection |
col:=self initializeOrGetCollecitonFor: aClass.



selection:=col select: aBlock.
(Delay forMilliseconds: (200*selection size)) wait.
^ selection