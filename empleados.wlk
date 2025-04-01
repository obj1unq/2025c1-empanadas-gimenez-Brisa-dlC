//Escribir aqui los objetos
object galvan {
  var saldo = 0
  var property sueldo = 15000
  var deuda = 0
  
  method cobrar() {
    saldo += self.sueldo()
    self.pagarDeuda()
  }
  
  method deuda() = saldo.min(0).abs()//if(saldo < 0) saldo.abs() else 0
  
  method pagarDeuda() {
    saldo -= self.deuda()
  }
  
  method gastar(cantidad) {
    if (saldo < cantidad){
        deuda += (saldo - cantidad).abs()
    }
    else {
    saldo -= cantidad
    }

    saldo -= cantidad
  }
  
  method sueldo(_sueldo) {
    sueldo = _sueldo
  }

  method saldo() = saldo //innecesario
}

object baigorria {
  var saldo = 0
  var empanadasVendidas = 0
  var total = 0
  var precioEmpanada = 15
  
  method precioEmpanada(_precio) {
    precioEmpanada = _precio
  }
  
  method vender(cantidad) {
    empanadasVendidas += cantidad
  }
  
  method sueldo() = empanadasVendidas * precioEmpanada
  
  method cobrar() {
    saldo += self.sueldo()
    empanadasVendidas = 0
  }
  
  method totalCobrado() {
    total += self.sueldo()
  }
}

object gimenez {
  var fondoSueldos = 300000
  
  method pagar(empleado) {
    fondoSueldos -= empleado.sueldo()
    empleado.cobrar()
  }
  
  method fondo() = fondoSueldos
}