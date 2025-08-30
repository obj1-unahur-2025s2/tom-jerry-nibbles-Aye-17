object tom {
    var energia = 50
    method energia() = energia
    method velocidadMaxima() = 5 + energia / 10
    method energiaConsumida(metros) = metros / 2
    method correr(metros) {
        energia -= self.energiaConsumida(metros)
    }
    method comer(raton){
        energia += 12 + raton.peso()
    }
    method puedeCazar(distancia){
        return (energia >= self.energiaConsumida(distancia))
    }
    method cazar(raton, distancia) {
        if (self.puedeCazar(distancia)){
            self.correr(distancia)
            self.comer(raton)
        }
    }
}


object jerry {
    var edad = 2
    method edad() = edad
    method peso() {
        return edad * 20
    }
    method cumplirAños() {
        edad += 1
    }
}


object nibbles {
    method peso() = 35
}




object chise {
  method peso() = 10
}