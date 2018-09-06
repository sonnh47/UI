
import Foundation
import UIKit

class SubTitleCell: UITableViewCell {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    // reset data in cell before reuse
    override func prepareForReuse() {
        textLabel?.text = ""
        detailTextLabel?.text = ""
    }
}
