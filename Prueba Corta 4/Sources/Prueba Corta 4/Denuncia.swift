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

public class Denuncia{

    private var descripcionDenuncia:String          
    private var fechaHoraDenuncia:Date
    var description:String{
        return "La descripcion de la denuncia es:\(getDescripcionDenuncia()), La fecha y hora de la denuncia es:\(getFechaHoraDenuncia())"
    }


    init(descripcionDenuncia:String, fechaHoraDenuncia:Date) {
        self.descripcionDenuncia = descripcionDenuncia
        self.fechaHoraDenuncia = fechaHoraDenuncia
        

    }

    public func getDescripcionDenuncia() -> String {
        return self.descripcionDenuncia

    }

    public func setDescripcionDenuncia(descripcionDenuncia:String) -> Void {
        self.descripcionDenuncia = descripcionDenuncia

    }

    public func getFechaHoraDenuncia() -> Date {
        return self.fechaHoraDenuncia

    }

    public func setFechaHoraDenuncia(fechaHoraDenuncia:Date) -> Void {
        self.fechaHoraDenuncia = fechaHoraDenuncia

    }


}