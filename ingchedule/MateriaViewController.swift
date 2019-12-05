//
//  MateriaViewController.swift
//  ingchedule
//
//  Created by 2020-1 on 11/29/19.
//  Copyright © 2019 scolastic. All rights reserved.
//

import UIKit

class MateriaViewController: UIViewController {
    
    var materia: Materia!
    var materias: Materias!
    
    
    @IBOutlet weak var nombre: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .init(patternImage: UIImage(named: "fondo1")!)

         nombre.text = materia.nombre
        
        
    }
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "vistaTarea"{
            
            let vistaTarea = segue.destination as! RevisaTareaViewController
            
            vistaTarea.materia = materia
        
           
            
            
        }
        else if segue.identifier == "vistaRecordatorio"{
                   
                   let vistaRecordatorio = segue.destination as! RevisaRecordatorioViewController
            vistaRecordatorio.materia = materia
                   
                   
               }
    }
    
    @IBAction func regresa(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
        
    }
    
    
    

}
