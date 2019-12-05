//
//  AgregaMateriaViewController.swift
//  ingchedule
//
//  Created by 2020-1 on 11/20/19.
//  Copyright © 2019 scolastic. All rights reserved.
//

import UIKit

class AgregaMateriaViewController: UIViewController, UITextFieldDelegate {
    
    var materias: Materias!
    
    @IBOutlet weak var nombreMateria: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .init(patternImage: UIImage(named: "fondo1")!)


    }
    @IBAction func agregaMateria(_ sender: Any) {
           
           let temp = Materia(nombre: nombreMateria.text!, tareas: [], recordatorio: [])
           
           materias.agregarMateria(materia: temp)
        
        dismiss(animated: true, completion: nil)
        
       }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
         
        self.view.endEditing(true)
         
        return true
     
    }
    
    @IBAction func regresa(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)

    }
    
    
    
}
