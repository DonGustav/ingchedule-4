//
//  Materias.swift
//  ingchedule
//
//  Created by 2020-1 on 11/20/19.
//  Copyright © 2019 scolastic. All rights reserved.
//

import UIKit

struct Tarea{
    let descripcion: String
    let fecha: String
}

struct Materia{
    let nombre: String
    var tareas: [Tarea] = []
    var recordatorio: [Tarea] = []
    var imagen: [UIImage] = []
}

class Materias{
    var listaDeMaterias: [Materia] = []
    
    
    init(listaDeMaterias: [Materia]){
           self.listaDeMaterias = listaDeMaterias
       }
    
    func agregarTarea(tarea: Tarea, indice: Int){
        listaDeMaterias[indice].tareas.append(tarea)
    }
    
    func agregarRecordatorio(tarea: Tarea, indice: Int){
        print(indice)
        listaDeMaterias[indice].recordatorio.append(tarea)
    }
    
    func agregarMateria(materia: Materia){
        
        listaDeMaterias.append(materia)
       
    }
    
    func getNombres() -> [[String]]{
        var nom: [[String]] = []
        var ret: [String] = []
        for x in 0..<self.listaDeMaterias.count{
            ret.append(self.listaDeMaterias[x].nombre)
        }
        nom.append(ret)
        return nom
    }
    
}
