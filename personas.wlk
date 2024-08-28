import objetos.*

object rosa {
  method leGusta(unObjeto) = unObjeto.peso() <= 2000
}

object estefania {
  method leGusta(unObjeto) = unObjeto.esDeColorFuerte()
}

object luisa {
  method leGusta(unObjeto) = unObjeto.esDeMaterialQueBrilla()
  
}

object juan {
  method leGusta(unObjeto) = not unObjeto.esDeColorFuerte() || unObjeto.peso().between(1200, 1800) 
  
}