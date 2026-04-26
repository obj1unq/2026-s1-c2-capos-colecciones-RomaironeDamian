import artefactos.*
import viviendas.*



object rolando {
  var tamañoMochila = 2
  const artefactos = #{}
  var vivienda = castillo
  const historiaDeEncuentros = []
  var poderBase = 0

  method tieneArtefactoFatalPara(enemigo) {
    return artefactos.any({artefacto => artefacto.poder(self) > enemigo.poder()})
  }

  method artefactoFatalPara(enemigo) {
    return artefactos.find({artefacto => artefacto.poder(self) > enemigo.poder()})
  }

  // lo cree para testear devolver a todos los enemigos a los que le gana
  method puedeVencerA(enemigos) {
    return enemigos.filter({enemigo => self.venceA(enemigo)})
  }

  method puedeConquistarMoradaDe(enemigo) {
    // no se si seria de otra forma preguntando por la morada y que la morada tenga
    // un dueño pero el enunciado dice "las moradas que Rolando podría conquistar son las moradas
    // de los enemigos a los cuales puede vencer." entonces seria a partir de un enemigo para saber si
    // puedo conquistar una morada?
    return self.venceA(enemigo)
  }

  method venceA(enemigo) {
    return enemigo.poder() < self.poderPelea()
  }

  method artefactoMasPoderoso() {
    return (vivienda.artefactoMasPoderoso(self))
  }

  method lucharBatalla() {
    artefactos.forEach({artefacto => artefacto.aumentarUso()})
    poderBase = poderBase + 1
  }

  method poderPelea() {
    return (poderBase + artefactos.sum({artefacto => artefacto.poder(self)}))
  }

  method poderBase(_poderBase) {
    poderBase = _poderBase
  }

  method poderBase() {
    return poderBase
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

  method vivienda() {
    return vivienda
  }

  method recolectarArtefacto(artefacto) {
    artefactos.add(artefacto)
  }

  method artefactosObtenidos() {
    return vivienda.artefactosGuardados() + artefactos.asList() 
  }

  method tieneArtefacto(artefacto) {
    return self.artefactosObtenidos().contains(artefacto)
  }
}