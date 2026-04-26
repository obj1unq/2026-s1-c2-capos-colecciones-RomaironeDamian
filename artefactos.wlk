
object espadaDelDestino {
  var usos = 0

  method poder(personaje) {
    if (usos == 0) {
      return personaje.poderBase()
    }
    else {
      return (personaje.poderBase() / 2)
    }
  }

  method aumentarUso() {
    usos = usos + 1
  }
}

object collarDivino {
  var usos = 0
  const poder = 3

  method aumentarUso() {
    usos = usos + 1
  }

  method poder(personaje) {
    if (personaje.poderBase() > 6) {
        return (poder + usos)
    }
    else {
        return poder
    }
  }
}

object libroDeHechizos {

  const hechizosDisponibles = []
  
  method poder(personaje) {
    return hechizosDisponibles.first().utilizar(personaje)
  } 

  method hechizosDisponibles(_hechizosDisponibles) {
    hechizosDisponibles.addAll(_hechizosDisponibles)
  }

  method aumentarUso() {
    hechizosDisponibles.remove(hechizosDisponibles.first())
  }
}

object armaduraDeAceroValyrio {
  const poder = 6

  method poder(personaje) {
    return poder
  }

  method aumentarUso() {
  }
}