

import UIKit
import os.log

class DetailMealViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    //@IBOutlet weak var mealNameLabel: UILabel!
    @IBOutlet weak var mealNameTextField: UITextField!
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var RatingControl: RatiingControl!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    var meal: Meal?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mealNameTextField.delegate = self
        if let meal = meal {
            navigationItem.title = meal.name
            mealNameTextField.text   = meal.name
            photoImageView.image = meal.photo
            RatingControl.rating = meal.rating
        }
        upDateSaveButtonStates()
    }
    
    
    @IBAction func btnCancel(_ sender: Any) {
        navigationController?.popViewController(animated: true)
        //navigationController?.dismiss(animated: true, completion: nil)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        upDateSaveButtonStates()
        navigationItem.title = textField.text
        
    }
    func textFieldDidBeginEditing(_ textField: UITextField) {
        saveButton.isEnabled = false
    }

    @IBAction func selectPhotoLibrary(_ sender: UITapGestureRecognizer) {
        mealNameTextField.resignFirstResponder()
        let imagePickerController = UIImagePickerController()
        imagePickerController.sourceType = .photoLibrary
        imagePickerController.delegate = self
        present(imagePickerController, animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        guard let selectedImage = info[UIImagePickerControllerOriginalImage] as? UIImage else {
            fatalError("Expected a dictionary containing an image, but was provided the following: \(info)")
        }
        photoImageView.image = selectedImage
        dismiss(animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        guard let button = sender as? UIBarButtonItem, button === saveButton else {
            os_log("The save button was not pressed, cancelling", log: OSLog.default, type: .debug)
            return
        }
        let name = mealNameTextField.text ?? ""
        let photo = photoImageView.image
        let rating = RatingControl.rating
        
        meal = Meal(name: name, photo: photo,rating: rating)
    }
    
    //MARK: Private Methods
    
    private func upDateSaveButtonStates(){
        let text = mealNameTextField.text ?? ""
        saveButton.isEnabled = !text.isEmpty
    }
}

