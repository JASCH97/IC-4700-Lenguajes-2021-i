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

