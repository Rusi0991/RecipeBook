//
//  DetailsVC.swift
//  Recipe book
//
//  Created by Ruslan Ismayilov on 10/7/20.
//

import UIKit
import CoreData

class DetailsVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    @IBOutlet weak var imageView: UIImageView!

    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var recipeTextView: UITextView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Recognizers
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        self.view.addGestureRecognizer(gestureRecognizer)
        imageView.isUserInteractionEnabled = true
        let imageTapRecognizer = UITapGestureRecognizer(target: self, action: #selector(selectImage))
        self.view.addGestureRecognizer(imageTapRecognizer)
        
        
    }
    
    
    @objc func hideKeyboard(){
        self.view.endEditing(true)
    }

    @objc func selectImage(){
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = .photoLibrary
        present(picker, animated: true, completion: nil)
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        imageView.image = info[.originalImage] as? UIImage
        self.dismiss(animated: true, completion: nil)
    }
    
   @IBAction func save(_ sender: Any) {
       
  
       
   }
   
    @IBAction func cancel(_ sender: Any) {
         
    
         
     }

}
