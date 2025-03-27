//Escribir aqui los objetos
object galvan {
    var saldo = 0
    var property sueldo = 15000

    method cobrar() {
        saldo += self.sueldo()
        self.pagarDeuda()
    }

    method deuda() {
        return()
    }

    method pagarDeuda(){
        saldo -= deuda
    }

    method gastar(cantidad){
        saldo -= cantidad
    }
}

object baigorria{
    var saldo = 0
    var empanadasVendidas = 0
    var total = 0

    method vendeEmpanada(cantidad){
        empanadasVendidas += cantidad
    }
    
    method sueldo() {
        return empanadasVendidas * 15
    }

    method cobrar(){
        saldo += self.sueldo()
        empanadasVendidas = 0
    }

    method totalCobrado() {
        total += self.sueldo()
    }
}

object gimenez{
    var fondoSueldos = 300000

    method pagar(empleado) {
        fondoSueldos -= empleado.sueldo()
        empleado.cobrar()
    }
}