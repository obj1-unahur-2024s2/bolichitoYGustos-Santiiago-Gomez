object rojo {
  method esFuerte() = true
  
}

object verde {
  method esFuerte() = true
}

object celeste {
  method esFuerte() = false
}

object pardo {
  method esFuerte() = false
}

object cobre {
  method esBrillante() = true
}

object vidrio {
  method esBrillante() = true
  
}

object lino {
  method esBrillante() = false
  
}

object madera {
  method esBrillante() = false
  
}

object cuero {
  method esBrillante() = false
  
}
// objetos
object remera {
  method color() = rojo
  method material() = lino
  method peso() = 800
  method esDeColorFuerte() = self.color().esFuerte()
  method esDeMaterialQueBrilla() = self.material().esBrillante()
}

object pelota {
  method color() = pardo
  method material() = cuero
  method peso() = 1300
  method esDeColorFuerte() = self.color().esFuerte()
  method esDeMaterialQueBrilla() = self.material().esBrillante()
}

object biblioteca {
  method color() = verde
  method material() = madera
  method peso() = 8000
  method esDeColorFuerte() = self.color().esFuerte()
  method esDeMaterialQueBrilla() = self.material().esBrillante()
}

object munieco {
  var peso = 0
  method color() = celeste
  method material() = vidrio
  method peso() = peso

  method peso(unPeso) {
    peso = unPeso
  }
  method esDeColorFuerte() = self.color().esFuerte()
  method esDeMaterialQueBrilla() = self.material().esBrillante()
}

object placa {
  var peso = 0
  var color = rojo
  method material() = cobre
  method peso() = peso
  method peso(unPeso) {
    peso = unPeso
  }
  method color() = color
  method color(unColor) {
    color = unColor
  }
  method esDeColorFuerte() = self.color().esFuerte()
  method esDeMaterialQueBrilla() = self.material().esBrillante()

}

object cajita {
  var objetoAdentro = placa

  method objetoAdentro(unObjeto) {
    objetoAdentro = unObjeto
  } //setter

  method objetoAdentro() = objetoAdentro //getter para modificar el valor de la variable
  
  method peso() = 400 + objetoAdentro.peso()
  method material() = cobre
  method color() = rojo

}