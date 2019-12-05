//
//  TomaFotoViewController.swift
//  ingchedule
//
//  Created by Roberto Salvador Juarez on 12/1/19.
//  Copyright © 2019 scolastic. All rights reserved.
//

import UIKit

class TomaFotoViewController: UIViewController,UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    
    
    var materias: Materias!
    @IBOutlet weak var imagen : UIImageView!
    
    let imagePicker = UIImagePickerController()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .init(patternImage: UIImage(named: "fondo1")!)
        imagePicker.delegate = self
        // Do any additional setup after loading the view.
    }
    
    @IBAction func botonGaleria(){
        imagePicker.allowsEditing = false
        imagePicker.sourceType = .photoLibrary
        
        self.present(imagePicker, animated: true, completion: nil)
        
        
        }
    
    @IBAction func botonCamara(){
        
        imagePicker.allowsEditing = false
        imagePicker.sourceType = .camera
        
        self.present(imagePicker, animated: true, completion: nil)
        
        
        }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
         if let pickedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
         imagen.contentMode = .scaleAspectFit
         imagen.image = pickedImage
            
        }
       
        self.dismiss(animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "vistaGuardaFoto"{
            let vistaGuardaFoto = segue.destination as! GuardaFotoViewController
            vistaGuardaFoto.materias = materias
            
            
        }
    }
    @IBAction func guardar(_ sender: Any) {

    }
    
    func guardarImagen(imageName: String){
        let fileManager = FileManager.default
        //get the image path
        let imagePath = (NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as NSString).appendingPathComponent(imageName)
        //get the image we took with camera
        let image = imagen.image!
        //get the PNG data for this image
        let data = image.pngData()
        //store it in the document directory
        fileManager.createFile(atPath: imagePath as String, contents: data, attributes: nil)
    }
    


}
