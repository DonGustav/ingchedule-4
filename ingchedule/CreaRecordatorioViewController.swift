//
//  CreaRecordatorioViewController.swift
//  ingchedule
//
//  Created by Roberto Salvador Juarez on 12/1/19.
//  Copyright © 2019 scolastic. All rights reserved.
//

import UIKit

class CreaRecordatorioViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    var materias: Materias!
    var indice: Int = 0
     var nombres : String = ""
    
    @IBOutlet weak var pickerRecordatorio: UIPickerView!
    
    @IBOutlet weak var descripcionRecordatorio: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
         view.backgroundColor = .init(patternImage: UIImage(named: "fondo1")!)
        descripcionRecordatorio.backgroundColor = .clear
        
        self.pickerRecordatorio.dataSource = self
        self.pickerRecordatorio.delegate = self
         //print(materias.listaDeMaterias[0].recordatorio)
       
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
    //----------------------------------------
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
         return materias.listaDeMaterias[row].nombre
     }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
           
           if component == 0{
               nombres = materias.listaDeMaterias[row].nombre
         }
     }
     
     func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
         indice = row
        print(indice)
     }
    
    
    @IBAction func agregarRecordatorio(_ sender: Any){
        
        let fecha = Date()
               let format = DateFormatter()
               format.dateFormat = "yyyy-MM-dd"
               let formattedDate = format.string(from: fecha)
               
               let temp = Tarea(descripcion: descripcionRecordatorio.text, fecha: formattedDate)
               //materias.agregarTarea(tarea: temp, indice: 0)
                
        materias.agregarRecordatorio(tarea: temp, indice: pickerRecordatorio.selectedRow(inComponent: 0))
        
               
               dismiss(animated: true, completion: nil)

        
    }

    @IBAction func cerrar(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

}
