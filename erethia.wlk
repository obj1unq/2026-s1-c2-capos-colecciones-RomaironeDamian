import capos.*

object erethia {
  const enemigos = #{}
  
  method agregarEnemigo(enemigo) {
    enemigos.add(enemigo)
  }
  
  method enemigos() {
    return enemigos
  }

  method esPoderoso(personaje) {
    return enemigos.all({enemigo => personaje.venceA(enemigo)})
  }
}
