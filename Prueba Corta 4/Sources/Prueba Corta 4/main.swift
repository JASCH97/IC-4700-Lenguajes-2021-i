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

let usuario1:Usuario = Usuario(id:1,nombre:"Alex",cedula:207560773,contrasena:"12345")
usuario1.imprimirInfo()

usuario1.agregarDenuncia(descripcionDenuncia:"Me robaron las ganas de vivir",fechaHoraDenuncia:"2021-07-07, 03:40")
usuario1.agregarCrimenGeografico(descripcionDenuncia:"El brayan me navajeo en el mall",fechaHoraDenuncia:"2020-01-01, 06:06",latitud:-34.58,longitud:-58.48)
usuario1.imprimirDenuncias()

let funcionario1:Funcionario = Funcionario(id:2,nombre:"Joan",cedula:204580334,contrasena:"hola",carnet:12345,puesto:"Investigador")
funcionario1.imprimirInfo()
funcionario1.agregarDenuncia(descripcionDenuncia:"Atropellaron a mi perro y huyeron en el acto",fechaHoraDenuncia:"2020-01-01, 08:08")
funcionario1.imprimirDenuncias()

let externo1:Externo = Externo(id:3,nombre:"Samanta",cedula:701170854,contrasena:"poio")
externo1.imprimirInfo()
externo1.agregarCrimenGeografico(descripcionDenuncia:"Me robaron el carro afuera de mi casa",fechaHoraDenuncia:"1997-04-07, 04:05",latitud:60.54,longitud:-90.87)
externo1.imprimirDenuncias()


