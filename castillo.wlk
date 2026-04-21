import artefactos.*
object castillo {
  const artefactosGuardados = []

  method artefactosGuardados() {
    return artefactosGuardados
  }

  method volver(artefactos) {
    artefactosGuardados.addAll(artefactos)
    //artefactos.forEach({artefactosGuardados.add(artefactos)}) 
  }
}