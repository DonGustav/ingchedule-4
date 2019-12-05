//
//  MuestraRecordatorioViewController.swift
//  ingchedule
//
//  Created by Roberto Salvador Juarez on 12/1/19.
//  Copyright © 2019 scolastic. All rights reserved.
//

import UIKit

class MuestraRecordatorioViewController: UIViewController {
    
    @IBOutlet weak var fecha: UILabel!
    @IBOutlet weak var descripcion: UITextView!
    
    var tarea: Tarea!

    override func viewDidLoad() {
        super.viewDidLoad()

    view.backgroundColor = .init(patternImage: UIImage(named: "fondo1")!)
        
        descripcion.backgroundColor = .clear
        
        fecha.text = tarea.fecha
        descripcion.text = tarea.descripcion
        
        
        // Do any additional setup after loading the view.
    }
    

    @IBAction func aceptar(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

}
