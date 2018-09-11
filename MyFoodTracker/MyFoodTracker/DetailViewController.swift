//
//  DetailViewController.swift
//  MyFoodTracker
//
//  Created by Son on 9/7/18.
//  Copyright © 2018 NguyenHoangSon. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var photoView: UIImageView!
    @IBOutlet weak var nameTextField: UITextField!
    var meal: Meal?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let meal = meal {
            navigationItem.title = meal.name
            nameTextField.text = meal.name
            photoView.image = meal.photo
        }
        
    }
    //MARK: UIImagePickerControllerDelegate
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        guard let selectedImage = info[UIImagePickerControllerOriginalImage] as? UIImage else {
            fatalError("Expected a dictionary containing an image, but was provided the following: \(info)")
        }
        photoView.image = selectedImage
        dismiss(animated: true, completion: nil)
    }
    
    
    
    // Mark: actions
    @IBAction func selectedPhotoView(_ sender: UITapGestureRecognizer) {
        let imagePickerController = UIImagePickerController()
        
        // Only allow photos to be picked, not taken.
        imagePickerController.sourceType = .photoLibrary
        
        // Make sure ViewController is notified when the user picks an image.
        imagePickerController.delegate = self
        present(imagePickerController, animated: true, completion: nil)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
