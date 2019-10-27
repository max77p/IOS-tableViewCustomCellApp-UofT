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
    
    var foods:[String]?
    var calories:[Int]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.tableView.dataSource=self
        self.tableView.delegate=self
        
        self.foods=["Apple","Banana","Orange","Burger","Fries","Pizza"]
        self.calories=[50,90,40,300,320,270]
        
        self.tableView.register(FoodTableViewCell.self, forCellReuseIdentifier: "FoodCell")
        self.tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
//        if self.foods==nil{
//            return 0
//        }
//        return self.foods!.count
        
//        return (self.foods==nil) ? 0 : self.foods!.count
        return self.foods?.count ?? 0
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }


}

