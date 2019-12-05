//
//  CrearTareaViewController.swift
//  ingchedule
//
//  Created by 2020-1 on 11/20/19.
//  Copyright © 2019 scolastic. All rights reserved.
//

import UIKit

class CrearTareaViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    var materias: Materias!
    var indice: Int = 0
    var nombres : String = ""

    @IBOutlet weak var desctipcionTarea: UITextView!
    @IBOutlet weak var picker: UIPickerView!

    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .init(patternImage: UIImage(named: "fondo1")!)
        desctipcionTarea.backgroundColor = .clear
        
        self.picker.dataSource = self
        self.picker.delegate = self
        
    }
    
    
    
   override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
     
        return materias.listaDeMaterias.count
        
    }
//-----------------------------------------------
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return materias.listaDeMaterias[row].nombre
    }
   func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
          
          if component == 0{
              nombres = materias.listaDeMaterias[0].nombre
        }
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        indice = row

    }
//-------------------------------------------
    
    @IBAction func botonAgregaTarea(_ sender: Any) {
        let fecha = Date()
        let format = DateFormatter()
        format.dateFormat = "yyyy-MM-dd"
        let formattedDate = format.string(from: fecha)
        
        let temp = Tarea(descripcion: desctipcionTarea.text, fecha: formattedDate)
        materias.agregarTarea(tarea: temp, indice: picker.selectedRow(inComponent: 0))
        
        dismiss(animated: true, completion: nil)

        
        
    }
    
    @IBAction func cerrar(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    
}
