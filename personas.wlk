import objetos.*
object rosa{
    method leGusta(unaCosa){
        return unaCosa.peso() <= 2000
    }

}


object estefania {
    method leGusta(unaCosa){
        return unaCosa.esDeColorFuerte()
    }
}


object luisa{
    method leGusta(unaCosa){
        return unaCosa.esBrillante()
    }
}


object juan {
  method leGusta(unaCosa){
    return !unaCosa.esDeColorFuerte() || unaCosa.peso().between(1200, 1800)
  }
}