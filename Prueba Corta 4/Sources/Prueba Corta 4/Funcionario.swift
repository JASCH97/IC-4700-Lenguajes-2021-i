/*
	Tecnologico de Costa Rica
	Sede Interuniversitaria de Alajuela
	Profesora MSc. Samanta Ramijan Carmiol
	I Semestre 2021 - Modalidad Virtual

	Prueba corta 4

    Estudiantes:
    Alexander Artavia
    Joan Sanchez

*/

import Foundation

public class Funcionario: Usuario{

    private var carnet:Int
    private var puesto:String

    override var description:String {
        return super.description + ",\(carnet),\(puesto)"
    }

    init(id:Int, nombre:String, cedula:Int, contrasena:String, carnet:Int, puesto:String) {
        self.carnet = carnet
        self.puesto = puesto
        super.init(id:id, nombre:nombre, cedula:cedula, contrasena:contrasena)

    }

    public func getPuesto() -> String {
        return self.puesto

    }

    public func setPuesto(puesto:String) -> Void {
        self.puesto = puesto

    }

    public func getCarnet() -> Int {
        return self.carnet

    }

    public func setCarnet(carnet:Int) -> Void {
        self.carnet = carnet

    }

    override public func imprimirInfo() -> Void{
        print("\nEl id es: \(getId())\n")
        print("El nombre es: \(getNombre())\n")
        print("La cedula es: \(getCedula())\n")
        print("El carnet es: \(getCarnet())\n")
        print("El puesto es: \(getPuesto())\n")
        print("Description es: \(description)\n")

    }
}