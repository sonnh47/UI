//
//  FoodsTableViewController.swift
//  MyFoodTracker
//
//  Created by Son on 9/7/18.
//  Copyright © 2018 NguyenHoangSon. All rights reserved.
//

import UIKit

class FoodsTableViewController: UITableViewController {
    
    var arrMeal = [Meal]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        arrMeal.append(Meal(name: "Salad", photo: UIImage(named: "food1")!, id: 1))
        navigationItem.title = "Meals"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrMeal.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! FoodTableViewCell
        
        let food = arrMeal[indexPath.row]
        cell.idView.text = String(food.id)
        cell.nameView.text = food.name
        cell.photoView.image = food.photo
        return cell
    }
    
    //MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailViewController = segue.destination as? DetailViewController
        if let selectIndexPath = tableView.indexPathForSelectedRow {
            detailViewController?.meal = arrMeal[selectIndexPath.row]
        }
    }
    //MARK: - Action

}
