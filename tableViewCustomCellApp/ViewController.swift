//
//  ViewController.swift
//  tableViewCustomCellApp
//
//  Created by Shan Indrakumar on 2019-10-25.
//  Copyright © 2019 CS2680. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {

    

    @IBOutlet weak var tableView: UITableView!
    
//    var foods:[String]?
//    var calories:[Int]?
    var foodData: [(name: String, calories: Int)]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.tableView.dataSource=self
        self.tableView.delegate=self
        
//        self.foods=["Apple","Banana","Orange","Burger","Fries","Pizza"]
//        self.calories=[50,90,40,300,320,270]
        self.foodData=[("Apple",50),("Banana",90),("Orange",40),("Burger",300),("Fries",320),("Pizza",270)]
        
//        self.tableView.register(FoodTableViewCell.self, forCellReuseIdentifier: "FoodCell")
        let nib=UINib(nibName: "FoodNibCell", bundle: nil)
        self.tableView.register(nib,forCellReuseIdentifier:"FoodCell")
        self.tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
//        if self.foods==nil{
//            return 0
//        }
//        return self.foods!.count
        
//        return (self.foods==nil) ? 0 : self.foods!.count
//        return self.foods?.count ?? 0
        return self.foodData?.count ?? 0
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let foodName = self.foodData![indexPath.row].name
        let calories = self.foodData![indexPath.row].calories
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "FoodCell") as? FoodNibCell else{
            return UITableViewCell()
        }
        cell.setCell(name:foodName, calories:"\(calories)", image:foodName)
        
        return cell
    }


}

