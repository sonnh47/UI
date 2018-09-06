

import UIKit

class TableViewController: UITableViewController {

    var data = Array(1...100)
    var subData = Array(1...100)
    
    var numberOfCell: Int = 0 {
        didSet {
            title = "Số cell: \(numberOfCell)"
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        if cell == nil {
            cell = SubTitleCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: "Cell")
            numberOfCell += 1
        }
//        cell?.textLabel?.text = "\(data[indexPath.row])"
//        if ![10,20,30,40,50,60,70,80,90].contains(subData[indexPath.row]) {
//            cell?.detailTextLabel?.text = "\(data[indexPath.row])"
//        } else {
//            cell?.backgroundColor = UIColor.red
//        }
        cell?.textLabel?.text = String(data[indexPath.row])
        cell?.detailTextLabel?.text = String(data[indexPath.row])
        
        if indexPath.row % 2 == 0 {
            cell?.backgroundColor = UIColor.red
        }
        else {
            cell?.backgroundColor = UIColor.green
        }
        return cell!
    }
    


    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
