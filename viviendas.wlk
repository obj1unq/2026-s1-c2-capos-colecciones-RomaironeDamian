import artefactos.*
object castillo {
  const artefactosGuardados = []

  method artefactosGuardados() {
    return artefactosGuardados
  }

  method volver(artefactos) {
    artefactosGuardados.addAll(artefactos)
  }

  method artefactoMasPoderoso(personaje) {
    return artefactosGuardados.max({artefacto => artefacto.poder(personaje)})
  }
}

object fortalezaDeAcero {
  
}

object palacioDeMarmol {
  
}

object torreDeMarfil {
  
}