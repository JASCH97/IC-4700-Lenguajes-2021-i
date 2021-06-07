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


