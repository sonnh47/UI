import Foundation
import UIKit

class Meal {
     var name: String
     var photo: UIImage?
     var id: Int
    
    init(name: String, photo: UIImage, id: Int) {
        self.name = name
        self.photo = photo
        self.id = id
    }
}
