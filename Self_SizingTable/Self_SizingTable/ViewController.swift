//
//  ViewController.swift
//  Self_SizingTable
//
//  Created by Son on 8/27/18.
//  Copyright © 2018 NguyenHoangSon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var thayboview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //thayboview.estimatedRowHeight = 80
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
extension ViewController: UITableViewDelegate , UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.numberOfLines = 999
        if indexPath.row == 0 {
            cell.backgroundColor = UIColor.red
        cell.textLabel?.text = "ormally, a cell’s height is determined by the table view delegate’s tableView:heightForRowAtIndexPath: method. To enable self-sizing table view cells, you must set the table view’s rowHeight property to UITableViewAutomaticDimension. You must also assign a value to the estimatedRowHeight property. As soon as both of these properties are set, the system uses Auto Layout to calculate the row’s actual height."
        }
        else {
               cell.backgroundColor = UIColor.green
             cell.textLabel?.text = "ormally, a cell’s height is determined by the table view delegate’s tableView:heightForRowAtIndexPath: method. To enable self-sizing table view cells, you must set the table view’s rowHeight property to UITableViewAutomaticDimension. You must also assign a value to the estimatedRowHeight property. As soon as both of these properties are set, the system uses Auto Layout to calculate the row’s actual height.ormally, a cell’s height is determined by the table view delegate’s tableView:heightForRowAtIndexPath: method. To enable self-sizing table view cells, you must set the table view’s rowHeight property to UITableViewAutomaticDimension. You must also assign a value to the estimatedRowHeight property. As soon as both of these properties are set, the system uses Auto Layout to calculate the row’s actual height.ormally, a cell’s height is determined by the table view delegate’s tableView:heightForRowAtIndexPath: method. To enable self-sizing table view cells, you must set the table view’s rowHeight property to UITableViewAutomaticDimension. You must also assign a value to the estimatedRowHeight property. As soon as both of these properties are set, the system uses Auto Layout to calculate the row’s actual height."
            }
        if indexPath.row == 2 {
            cell.backgroundColor = UIColor.red
            cell.textLabel?.text = "ormally, a cell’s height is determined by the table view delegate’s tableView:heightForRowAtIndexPath: method. To enable self-sizing table view cells, you must set the table view’s rowHeight property to UITableViewAutomaticDimension. You must also assign a value to the estimatedRowHeight property. As soon as both of these properties are set, the system uses Auto Layout to calculate the row’s actual height.ormally, a cell’s height is determined by the table view delegate’s tableView:heightForRowAtIndexPath: method. To enable self-sizing table view cells, you must set the table view’s rowHeight property to UITableViewAutomaticDimension. You must also assign a value to the estimatedRowHeight property. As soon as both of these properties are set, the system uses Auto Layout to calculate the row’s actual height.ormally, a cell’s height is determined by the table view delegate’s tableView:heightForRowAtIndexPath: method. To enable self-sizing table view cells, you must set the table view’s rowHeight property to UITableViewAutomaticDimension. You must also assign a value to the estimatedRowHeight property. As soon as both of these properties are set, the system uses Auto Layout to calculate the row’s actual height.ormally, a cell’s height is determined by the table view delegate’s tableView:heightForRowAtIndexPath: method. To enable self-sizing table view cells, you must set the table view’s rowHeight property to UITableViewAutomaticDimension. You must also assign a value to the estimatedRowHeight property. As soon as both of these properties are set, the system uses Auto Layout to calculate the row’s actual height.ormally, a cell’s height is determined by the table view delegate’s tableView:heightForRowAtIndexPath: method. To enable self-sizing table view cells, you must set the table view’s rowHeight property to UITableViewAutomaticDimension. You must also assign a value to the estimatedRowHeight property. As soon as both of these properties are set, the system uses Auto Layout to calculate the row’s actual height.ormally, a cell’s height is determined by the table view delegate’s tableView:heightForRowAtIndexPath: method. To enable self-sizing table view cells, you must set the table view’s rowHeight property to UITableViewAutomaticDimension. You must also assign a value to the estimatedRowHeight property. As soon as both of these properties are set, the system uses Auto Layout to calculate the row’s actual height.ormally, a cell’s height is determined by the table view delegate’s tableView:heightForRowAtIndexPath: method. To enable self-sizing table view cells, you must set the table view’s rowHeight property to UITableViewAutomaticDimension. You must also assign a value to the estimatedRowHeight property. As soon as both of these properties are set, the system uses Auto Layout to calculate the row’s actual height.ormally, a cell’s height is determined by the table view delegate’s tableView:heightForRowAtIndexPath: method. To enable self-sizing table view cells, you must set the table view’s rowHeight property to UITableViewAutomaticDimension. You must also assign a value to the estimatedRowHeight property. As soon as both of these properties are set, the system uses Auto Layout to calculate the row’s actual height.ormally, a cell’s height is determined by the table view delegate’s tableView:heightForRowAtIndexPath: method. To enable self-sizing table view cells, you must set the table view’s rowHeight property to UITableViewAutomaticDimension. You must also assign a value to the estimatedRowHeight property. As soon as both of these properties are set, the system uses Auto Layout to calculate the row’s actual height.ormally, a cell’s height is determined by the table view delegate’s tableView:heightForRowAtIndexPath: method. To enable self-sizing table view cells, you must set the table view’s rowHeight property to UITableViewAutomaticDimension. You must also assign a value to the estimatedRowHeight property. As soon as both of these properties are set, the system uses Auto Layout to calculate the row’s actual height."
        }
        return cell
    }
}
