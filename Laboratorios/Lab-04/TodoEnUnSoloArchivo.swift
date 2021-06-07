import Foundation

//Punto 1
public class Cuenta{
    private var id:Int = 0
    private var balance:Double = 0
    private var tasaDeInteresAnual:Double = 0
    private var fechaDeCreacion:Date = Date()


    //constructor por defecto
    init(){
        self.id = 0
        self.balance = 0
        self.tasaDeInteresAnual = 0
        self.fechaDeCreacion = Date()
    }

    //constructor con id y balance como parametros
    init(id:Int,balance:Double){
        self.id = id
        self.balance = balance
        self.tasaDeInteresAnual = 5  //se establece una tasa de interes fija de 5%
        self.fechaDeCreacion = Date()
    }

    //metodo get id
    func getId() -> Int{
	    return self.id
	
    }

    //metodo set id
    func setId(id:Int) -> Void{
        self.id = id
        print("El nuevo id es:",id)
    }

    //metodo get balance
    func getBalance() -> Double{
	    return self.balance
	
    }

    //metodo set balance
    func setBalance(balance:Double) -> Void{
        self.balance = balance
        print("El nuevo balance es:",balance)
    }

    //metodo get tasaDeInteresAnual
    func getTasaDeInteresAnual() -> Double{
	    return self.tasaDeInteresAnual
	
    }

    //metodo set tasaDeInteresAnual
    func setTasaDeInteresAnual(tasaDeInteresAnual:Double) -> Void{
        self.tasaDeInteresAnual = tasaDeInteresAnual
        print("La nueva tasa de interes es:",tasaDeInteresAnual)
    }

    //metodo get de la fecha de creacion de la cuenta
    func getFechaDeCreacion() -> Date{
        return self.fechaDeCreacion 
    }

    //metodo para obtener la tasa de interes mensual
    func obtenerTasaDeInteresMensual() -> Double{
        return self.tasaDeInteresAnual / 12
    }

    //metodo para calcular el interes mensual en base a la formula
    func calcularInteresMensual() -> Double{
        return self.balance * self.tasaDeInteresAnual
    }

    //metodo para retirar dinero de la cuenta
    func retirarDinero(monto:Double) -> Void{
        self.balance -= monto
    }
    
    //metodo para depositar dinero en la cuenta
    func depositarDinero(monto:Double) -> Void{
        self.balance += monto
    }

    
}

//Clase ATM -> cajero automatico  
public class ATM : Cuenta{
    var lista:Array<Cuenta> = [Cuenta(id:0,balance:100000),Cuenta(id:1,balance:100000),Cuenta(id:2,balance:100000),
    Cuenta(id:3,balance:100000),Cuenta(id:4,balance:100000),Cuenta(id:5,balance:100000),Cuenta(id:6,balance:100000),
    Cuenta(id:7,balance:100000),Cuenta(id:8,balance:100000),Cuenta(id:9,balance:100000)]

    //metodo que comprueba el id de las 10 cuentas ,creadas en 'lista', antes de ir al menu del atm
    func comprobarId() -> Void{
        print("Ingrese su id:")
        let id = readLine()!
        let IntId:Int? = Int(id)
        if( IntId! >= 0 && IntId! < 10){
            menuATM(cuenta:self.lista[IntId!]) 

        }
        else{  
            print("Ha ingresado un id incorrecto. Intente nuevamente.") 
            comprobarId()  
        }
    }

    //metodo que contiene el menu recursivo del cajero automatico
    func menuATM(cuenta:Cuenta) -> Void{
        print("\nMenu Principal\n\n1.Ver balance actual\n2.Retirar Dinero\n3.Depositar Dinero\n4.Salir\n")
        print("Ingrese su selección:")
        let opcion = readLine()!
        let IntOpcion:Int? = Int(opcion)
        switch IntOpcion {
			case(1):
				print("El balance es de",cuenta.getBalance())
                menuATM(cuenta:cuenta) 
                break

			case(2):
				if(cuenta.getBalance() == 0.0){
                    print("\nNo cuenta con suficientes fondos en la cuenta!\nSaldo actual:",cuenta.getBalance())
                    menuATM(cuenta:cuenta)
                    break
                }
                else{
                    print("Ingrese una cantidad para retirar:")  
                    let cantidad = readLine()!
                    let DoubleCantidad:Double? = Double(cantidad)
                    if(DoubleCantidad! > cuenta.getBalance()){
                        print("\nIntenta sacar mas dinero del que posee la cuenta\nSaldo actual:",cuenta.getBalance())
                        menuATM(cuenta:cuenta)
                        break
                    }
                    else{
                        cuenta.retirarDinero(monto:DoubleCantidad!)
                        menuATM(cuenta:cuenta)
                        break
                    }
                }

			case(3):
				print("Ingrese una cantidad para depositar:")  
                let cantidad = readLine()!
                let DoubleCantidad:Double? = Double(cantidad)
                cuenta.depositarDinero(monto:DoubleCantidad!) 
                menuATM(cuenta:cuenta) 
                break
            case(4):
                print("\n")
                comprobarId()
                break
			default:
				print("Ingrese una opcion válida!.") 
                menuATM(cuenta:cuenta) 
                break
			
		}
    }
}

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