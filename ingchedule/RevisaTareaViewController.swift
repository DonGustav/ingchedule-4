//
//  RevisaTareaViewController.swift
//  ingchedule
//
//  Created by Roberto Salvador Juarez on 11/30/19.
//  Copyright © 2019 scolastic. All rights reserved.
//

import UIKit

class RevisaTareaViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    
    
    var materia: Materia!
    var tareas: String = ""
    
    @IBOutlet weak var tablita: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .init(patternImage: UIImage(named: "fondo1")!)
        tablita.backgroundColor = .clear

        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        //return 1
        return materia.tareas.count
    
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "celdita", for: indexPath) as! RevisaTareaTableViewCell
        
        cell.backgroundColor = .clear

        
        cell.tarea.text = materia.tareas[indexPath.row].descripcion
       
        cell.fecha.text = materia.tareas[indexPath.row].fecha
        
        

        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "vistaTarea"{
            let vistaTarea = segue.destination as! MuestraTareaViewController
            let myIndexPath = tablita.indexPathForSelectedRow
            vistaTarea.tarea1 = materia.tareas[(myIndexPath?.row)!]
        }
    }

    @IBAction func cerrar(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    


}
