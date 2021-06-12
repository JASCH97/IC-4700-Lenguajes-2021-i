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

public class CrimenGeografico: Denuncia{
    
    private var latitud:Double
    private var longitud:Double
    override var description:String{
        return super.description + "\nLa latitud es:\(latitud), La longitud es:\(longitud)"
    }

    init(descripcionDenuncia:String, fechaHoraDenuncia:Date, latitud:Double, longitud:Double){
        self.latitud = latitud
        self.longitud = longitud
        super.init(descripcionDenuncia:descripcionDenuncia, fechaHoraDenuncia:fechaHoraDenuncia)
    }

    public func getLatitud() -> Double {
        return self.latitud

    }

    public func setLatitud(latitud:Double) -> Void {
        self.latitud = latitud

    }

    public func getLongitud() -> Double {
        return self.longitud

    }

    public func setLongitud(longitud:Double) -> Void {
        self.longitud = longitud

    }


}  