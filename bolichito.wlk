import objetos.*
import personas.*

object bolichito{
    var objetoEnVidriera = pelota
    var objetoEnMostrador = remera
    method objetoEnMostrador(unObjetoEnMostrador){
        objetoEnMostrador = unObjetoEnMostrador
    }

    method objetoEnVidriera(unObjetoEnVidriera){
        objetoEnVidriera = unObjetoEnVidriera
    }
    method objetoEnVidriera() {return objetoEnVidriera}
    method objetoEnMostrador() {return objetoEnMostrador}
    method esBrillante() {
        return objetoEnMostrador.esBrillante() && objetoEnVidriera.esBrillante()
    }
    method esMonocromatico(){
        return objetoEnMostrador.color() == objetoEnVidriera.color()
    }
    method estaEquilibrado(){
        return objetoEnMostrador.peso() > objetoEnVidriera.peso()
    }
    method hayObjetoDeColor(unColor){
        return objetoEnMostrador.color() == unColor || objetoEnVidriera.color() == unColor
    }
    method puedeMejorar(){
        return !self.estaEquilibrado() || self.esMonocromatico()
    }
    method puedeOfrecerAlgoA(unaPersona){
        return unaPersona.leGusta(objetoEnMostrador) || unaPersona.leGusta(objetoEnVidriera)
    }
}
