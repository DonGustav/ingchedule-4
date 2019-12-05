//
//  ViewController.swift
//  ingchedule
//
//  Created by 2020-1 on 11/20/19.
//  Copyright © 2019 scolastic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let materias = Materias(listaDeMaterias: [])
    @IBOutlet weak var mensaje: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .init(patternImage: UIImage(named: "fondo1")!)
        
        //no se usuara, solo en el manejo de errores
       mensaje.text = ""
        
       // materias.agregarMateria(materia: temp)
        
    }
    
    //--------------------------------------------
    // alertas, no se usuara, solo en el manejo de errores
    func mostrarAlerta(title: String, message: String){
        
        let alerta = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let aceptar = UIAlertAction(title: "Aceptar", style: .default, handler: {(action) in self.mensaje.text = ""})
        
        alerta.addAction(aceptar)
        present(alerta, animated: true, completion: nil)
        }
    //--------------------------------------------
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           
           if segue.identifier == "vista2"{
               
           let siguienteVista = segue.destination as! MateriasViewController
           siguienteVista.materias = materias
            
            
                        
           }
           
           else if segue.identifier == "vistaTareas"{
           
           let vistaTareas = segue.destination as! CrearTareaViewController
            
            vistaTareas.materias = materias
            
            if materias.listaDeMaterias.count == 0{
                 mostrarAlerta(title: "No se puede agregar tarea" , message: "No hay materias agregadas")
            }
        
               
           }
           else if segue.identifier == "vistaRecordatorios"{
            let vistaRecordatorios = segue.destination as! CreaRecordatorioViewController
            
            vistaRecordatorios.materias = materias
            
            if materias.listaDeMaterias.count == 0{
                 mostrarAlerta(title: "No se puede agregar recordatorio" , message: "No hay materias agregadas")
            }
        }
    }
        
}
