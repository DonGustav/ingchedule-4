//
//  MateriasViewController.swift
//  ingchedule
//
//  Created by 2020-1 on 11/20/19.
//  Copyright © 2019 scolastic. All rights reserved.
//
import UIKit

class MateriasViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    var materias: Materias!
    
    @IBOutlet weak var tablita: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    
        view.backgroundColor = .init(patternImage: UIImage(named: "fondo1")!)
        tablita.backgroundColor = .clear
        

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //print(materias.listaDeMaterias.count)
        return materias.listaDeMaterias.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath) as! MateriasTableViewCell
    
        cell.etiqueta.text = materias.listaDeMaterias[indexPath.row].nombre
        cell.backgroundColor = .clear
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50.0
    }

    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "vista3"{
            
            let terceraVista = segue.destination as! AgregaMateriaViewController
            terceraVista.materias = materias
            
            
        }else if segue.identifier == "vistaMateria"{
            
            let vistaMateria = segue.destination as! MateriaViewController
            let myIndexPath = tablita.indexPathForSelectedRow
            vistaMateria.materia = materias.listaDeMaterias[(myIndexPath?.row)!]
            vistaMateria.materias = materias
        }
        
            
    }
    
    
    @IBAction func regresa(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
    }
    
   

}

