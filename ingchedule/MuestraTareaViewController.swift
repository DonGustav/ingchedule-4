//
//  MuestraTareaViewController.swift
//  ingchedule
//
//  Created by Roberto Salvador Juarez on 12/1/19.
//  Copyright © 2019 scolastic. All rights reserved.
//

import UIKit

class MuestraTareaViewController: UIViewController {
    
    
    var tarea1: Tarea!
    
    @IBOutlet weak var etiqueta: UILabel!
    @IBOutlet weak var tarea: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .init(patternImage: UIImage(named: "fondo1")!)
        tarea.backgroundColor = .clear

        //etiqueta.text = "hola"
        etiqueta.text = tarea1.fecha
        tarea.text = tarea1.descripcion

      
    }
    
    @IBAction func aceptar(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
   

}
