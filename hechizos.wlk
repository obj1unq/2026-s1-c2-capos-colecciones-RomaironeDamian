object bendicion {
  method utilizar(personaje) {
    return 4
  }
}

object invisibilidad {
  method utilizar(personaje) {
    return personaje.poderBase()
  }
}

object invocacion {
  method utilizar(personaje) {
    return personaje.artefactoMasPoderoso().poder(personaje)
  }
}