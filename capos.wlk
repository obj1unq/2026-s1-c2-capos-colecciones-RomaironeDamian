import castillo.*
import artefactos.*


object rolando {
  var tamañoMochila = 2
  const artefactos = #{}
  var vivienda = castillo
  const historiaDeEncuentros = []
  var poderBase = 0
  var poderDePelea = 0

  method poderPelea() {
    return poderDePelea
  }

  method calcularPoderDePelea() {
    poderDePelea = poderBase
  }

  method poderBase(_poderBase) {
    poderBase = _poderBase
  }

  method tamañoMochila(_tamañoMochila) {
    tamañoMochila = _tamañoMochila
  }

  method tamañoMochila() {
    return tamañoMochila
  }

  method artefactos() {
    return artefactos
  }

  method historiaDeEncuentros() {
    return historiaDeEncuentros
  }

  method encontrarArtefacto(artefacto) {
    historiaDeEncuentros.add(artefacto)
    if (tamañoMochila > artefactos.size()) {
        self.recolectarArtefacto(artefacto)
    }
  }

  method volverA() {
    vivienda.volver(artefactos.asList())
    artefactos.clear() //revisar esto
  }

  method vivienda(_vivienda) {
    vivienda = _vivienda
  }

  method recolectarArtefacto(artefacto) {
    artefactos.add(artefacto)
  }

  method artefactosObtenidos() {
    return castillo.artefactosGuardados() + artefactos.asList() 
  }

  method tieneArtefacto(artefacto) {
    return self.artefactosObtenidos().contains(artefacto)
  }
}