object pepita {
  var energy = 100

  method energy() = energy

  method setEnergy(valor) {
    energy = valor
  }

  method volar(metros) {
    energy = energy - 10 - (metros / 10)
  }

  method descansar() {
    energy = energy + 10
  }

  method cansada() {
    return energy < 30
  }

  method comer(alimento) {
    energy = energy + alimento.energiaQueAporta()
  }
}

object alpiste {
  method energiaQueAporta() {
    return 25
  }
}

object manzana {
  var maduramiento = 0

  method modificarMaduramiento(valor) {
    maduramiento = valor
  }

  method madurez() {
    if (maduramiento == 3) {
      return 0
    }
    return maduramiento
  }

  method energiaQueAporta() {
    return 20 * self.madurez()
  }
}