//
//  GuardaFotoViewController.swift
//  ingchedule
//
//  Created by Roberto Salvador Juarez on 12/1/19.
//  Copyright © 2019 scolastic. All rights reserved.
//

import UIKit

class GuardaFotoViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    
    var indice: Int = 0
    var nombres : String = ""
    var materias: Materias!

    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var mensaje: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .init(patternImage: UIImage(named: "fondo1")!)
        self.picker.dataSource = self
        self.picker.delegate = self
        mensaje.text = ""

    }
    
    override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
        }
        func numberOfComponents(in pickerView: UIPickerView) -> Int {
            return 1
        }
        func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            return materias.listaDeMaterias.count
            //return 1
        }
    //-----------------------------------------------
        func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
           return materias.listaDeMaterias[row].nombre
            //return "hola"
        }
       func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
              
              if component == 0{
                 nombres = materias.listaDeMaterias[0].nombre
            }
        }
        
        func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
            indice = row
            print(indice)
        }
    
    //-------------------------------------------alertas
    
    func mostrarAlerta(title: String, message: String){
           
           let alerta = UIAlertController(title: title, message: message, preferredStyle: .alert)
           
           let aceptar = UIAlertAction(title: "Aceptar", style: .default, handler: {(action) in self.mensaje.text = ""})
           
           alerta.addAction(aceptar)
           present(alerta, animated: true, completion: nil)
           }
    

    @IBAction func guardarFoto(_ sender: UIButton) {
        
        mostrarAlerta(title: "¡Perfecto!", message: "Tu foto ha sido guardada")
         //dismiss(animated: true, completion: nil)
    }
    
    

}
