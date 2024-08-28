import objetos.*
import personas.*

object bolichito {
  var objetoEnMostrador = pelota
  var objetoEnVidriera = munieco

  method objetoEnVidriera(unObjetoEnVidriera) {objetoEnVidriera = unObjetoEnVidriera}
  method objetoEnMostrador(unObjetoEnMostrador) {objetoEnMostrador = unObjetoEnMostrador} //setter
  method objetoEnVidriera() = objetoEnVidriera
  method objetoEnMostrador() = objetoEnMostrador //getter

  method esBrillante() {
    return objetoEnMostrador.esBrillante() && objetoEnVidriera.esBrillante()
  }

  method esMonocromatico() {
    return objetoEnMostrador.color() == objetoEnVidriera.color()
  }
  method estaEquilibrado() {
    return objetoEnMostrador.peso() > objetoEnVidriera.peso()
  }

  method tieneObjetoDeColor(unColor) {
    return objetoEnMostrador.color() == unColor || objetoEnVidriera.color() == unColor
  }

  method puedeMejorar() {
    return not self.estaEquilibrado() || self.esMonocromatico()
  }

  method puedeOfrecerAlgoA(unaPersona) {
    return unaPersona.leGusta(objetoEnMostrador) || unaPersona.leGusta(objetoEnVidriera)
  }


}
