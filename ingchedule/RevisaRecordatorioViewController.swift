//
//  RevisaRecordatorioViewController.swift
//  ingchedule
//
//  Created by Roberto Salvador Juarez on 11/30/19.
//  Copyright © 2019 scolastic. All rights reserved.
//

import UIKit

class RevisaRecordatorioViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
     var materia: Materia!
    @IBOutlet weak var tablita: UITableView!
   

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .init(patternImage: UIImage(named: "fondo1")!)
        tablita.backgroundColor = .clear
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return materia.recordatorio.count

       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           
           let cell = tableView.dequeueReusableCell(withIdentifier: "celdita", for: indexPath) as! RevisaRecordatorioTableViewCell
           
        cell.backgroundColor = .clear
           
        cell.recordatorio.text = materia.recordatorio[indexPath.row].descripcion
        cell.fecha.text = materia.recordatorio[indexPath.row].fecha
           
           return cell
       }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
           return 100.0
       }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "vistaRecordatorio"{
            let vistaRecordatorio = segue.destination as! MuestraRecordatorioViewController
            let myIndexPath = tablita.indexPathForSelectedRow
            vistaRecordatorio.tarea = materia.recordatorio[(myIndexPath?.row)!]
        }
        
        
        
    }
    @IBAction func cerrar(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

    

}
