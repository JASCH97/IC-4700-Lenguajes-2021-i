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

public class Usuario{

    private var id:Int
    private var nombre:String
    private var cedula:Int
    private var contrasena:String

    private var arrayDenuncias:Array<Denuncia>

    //String con todos los atributos
    var description:String {
        return "\(id), \(nombre), \(cedula), \(contrasena)"
    }

    //Constructor con todos los atributos
    init(id:Int,nombre:String,cedula:Int,contrasena:String){
		self.id = id
        self.nombre = nombre
        self.cedula = cedula
        self.contrasena = contrasena
        self.arrayDenuncias = Array<Denuncia>()
	}

    //Get y set id
    public func getId() -> Int{
        return id
    }

    public func setId(id:Int) -> Void{
        self.id = id
    }

    //Get y set nombre
    public func getNombre() -> String{
        return nombre
    }

    public func setNombre(nombre:String) -> Void{
        self.nombre = nombre
    }

     //Get y set cedula
    public func getCedula() -> Int{
        return cedula
    }

    public func setCedula(cedula:Int) -> Void{
        self.cedula = cedula
    }

     //Get y set contrasena
    public func getContrasena() -> String{
        return contrasena
    }

    public func setContrasena(contrasena:String) -> Void{
        self.contrasena = contrasena
    }

    public func getArrayDenuncias() -> Array<Denuncia>{
        return self.arrayDenuncias
    }

    public func agregarDenuncia(descripcionDenuncia:String, fechaHoraDenuncia:String) -> Void {
        let fecha:Date = darFormatoFecha(fechaYHora:fechaHoraDenuncia)

        let nuevaDenuncia = Denuncia(descripcionDenuncia:descripcionDenuncia, fechaHoraDenuncia:fecha)
        arrayDenuncias.append(nuevaDenuncia)

    }
    
    public func agregarCrimenGeografico(descripcionDenuncia:String, fechaHoraDenuncia:String, latitud:Double, longitud:Double) -> Void {
        let fecha:Date = darFormatoFecha(fechaYHora:fechaHoraDenuncia)

        let nuevoCrimenGeografico = CrimenGeografico(descripcionDenuncia:descripcionDenuncia, fechaHoraDenuncia:fecha, latitud:latitud, longitud:longitud)
        arrayDenuncias.append(nuevoCrimenGeografico)

    }

    public func darFormatoFecha(fechaYHora:String) -> Date {
        let dateFormatter = DateFormatter()

        dateFormatter.dateFormat = "YY-MM-d, hh:mm"
        return dateFormatter.date(from:fechaYHora)!

    }

    //Metodo para probar los atributos
    func imprimirInfo() -> Void{
        print("\nEl id es: \(getId())\n")
        print("El nombre es: \(getNombre())\n")
        print("La cedula es: \(getCedula())\n")
        print("Description es: \(description)\n")

    }

    public func imprimirDenuncias() -> Void{
        for denuncia in arrayDenuncias{

            print(denuncia.description + "\n")
        }
    }

}