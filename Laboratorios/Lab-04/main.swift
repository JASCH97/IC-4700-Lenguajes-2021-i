//clase main para probar el codigo
class main{
    
    //constructor sin parametros para que se ejecute las pruebas correspondientes de una vez
    init(){
        //Punto 2
        //a) Cree un objeto de tipo Cuenta, con el id 1122 y un balance de 500.000CRC y un interés anual de 4.5%.
        let cuenta1 = Cuenta(id:1122,balance:500000)
        cuenta1.setTasaDeInteresAnual(tasaDeInteresAnual:4.5)

        //b) Utilice el método depositarDinero para sumar 150.000CRC al balance de la cuenta
        cuenta1.depositarDinero(monto:150000)

        //c) Utilice el método retirarDinero para restar 200.000CRC al balance de la cuenta
        cuenta1.retirarDinero(monto:200000)

        //d) Imprima en consola el balance, el interés mensual y la fecha de cuando se creó la cuenta
        print("El balance de la cuenta1 es:",cuenta1.getBalance())
        print("El interés mensual de la cuenta1 es:",cuenta1.obtenerTasaDeInteresMensual())
        print("La fecha de creación de la cuenta1 es:",cuenta1.getFechaDeCreacion())

        //e) Cree un segundo objeto de tipo Cuenta con los datos de su preferencia.
        //Mis datos serán: Balance 3.500.000CRC, ID 9999 y tasaDeInteresAnual por defecto que es 5%
        let cuenta2 = Cuenta(id:9999,balance:3500000)

        //f) Imprima en consola el balance, el interés mensual y la fecha de creación de la segunda cuenta.
        print("El balance de la cuenta2 es:",cuenta2.getBalance())
        print("El interés mensual de la cuenta2 es:",cuenta2.obtenerTasaDeInteresMensual())
        print("La tasa de interés anual de la cuenta2 es:",cuenta2.getTasaDeInteresAnual())
        print("La fecha de creación de la cuenta2 es:",cuenta2.getFechaDeCreacion())


        //Punto 3
        let atm = ATM()
        atm.comprobarId()
    }
    

}

let prueba = main()