//
//  ViewController.swift
//  tabelsections
//
//  Created by qimichael on 2015-07-31.
//  Copyright (c) 2015 biaoshijituan. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    
    struct Objects {
        var sectionName: String!
        var sectionObjects: [String]!
    }
    
    var objectsArray = [Objects]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        objectsArray = [Objects(sectionName: "Combos", sectionObjects: ["Combo1  11.05", "Combo2  11.05", "Combo3  11.05", "Combo4  11.05", "Combo5  11.05", "Combo6  11.05", "Combo7  11.60", "Combo8  11.60", "Combo9  11.60"]),Objects(sectionName: "Soups", sectionObjects: ["Won Ton Soup  4.60", "Mushroom Egg Drop Soup  4.60", "Chicken Noodle Soup  4.60", "Chinese Vegetable Soup  4.60", "Chicken Rice Soup  4.60", "Hot & Sour Soup  4.60"]), Objects(sectionName: "FriedRice", sectionObjects: ["Chicken Fried Rice 7.85", "Beef Fried Rice 7.85", "BBQ Pork Fried Rice 7.85", "Bacon Fried Rice 7.85", "Vegetable Fried Rice 7.85", "Mushroom Fried Rice 7.85", "Plain Fried Rice 6.95", "Shrimp Fried Rice 9.10", "Young Chow Fried Rice » BBQ Pork 9.45", "Young Chow Fried Rice » Shrimp & beans 9.45", "House Special Fried Rice » BBQ Pork 9.70", "House Special Fried Rice » Shrimp 9.70", "House Special Fried Rice » Bacon & beans 9.70"]),Objects(sectionName: "eggFooYoung", sectionObjects: ["Chicken Egg Foo Young  10.00", "Beef Egg Foo Young  10.00", "Pork Egg Foo Young  10.00", "Bacon Egg Foo Young  10.00", "Mushroom Egg Foo Young  10.00", "Vegetables Egg Foo Young  10.00", "Shrimp Egg Foo Young  10.55", "House Special » BBQ Pork  11.00", "House Special » Shrimp  11.00", "House Special » Bacon  11.00"]),Objects(sectionName: "beef", sectionObjects: ["Beef Chop Suey  10.25", "Beef Chow Mein  10.25", "Beef with Broccoli in Oyster Sauce  11.05", "Beef with Green Peppers  11.05", "Beef with Chinese Greens(Bok Choy)  11.05", "Beef with Mushrooms in Oyster Sauce  11.60", "Beef with Baby Corn & Snow Peas  11.60", "Beef with Mixed Vegetables  11.05", "Beef with Black Bean Sauce  11.05", "Mo-She Beef(With 5 pancakes)  11.60", "Ginger Beef  11.60", "Beef with Curry Sauce  11.60", "Crispy Beef » Spicy  11.80", "Crispy Beef » Mild  11.80", "Beef Szechuan Style  11.80", "Beef Hunan Style  11.80", "Beef in Spicy Garlic Sauce  11.80"]),Objects(sectionName: "chicken", sectionObjects: ["Chicken Balls » Sweet & Sour  10.75", "Chicken Balls » Garlic  10.75", "Chicken Balls » Lemon  10.75", "Crispy Chicken Wings  10.25", "Crispy Chicken Wings » Honey Garlic  10.75", "Crisby Chicken Wings » Spicy  10.75", "Chicken Soo Guy » Almond  10.75", "Chicken Soo Guy » Lemon  10.75", "Chicken Chop Suey  9.70", "Chicken Chow Mein  9.70", "Chicken with Baby Corn & Snow Peas  11.35", "Chicken with Broccoli  10.75", "Chicken with Mixed Vegetables  10.75", "Chicken with Black Bean Sauce  10.75", "Almond Chicken Guy Ding  10.75", "Mo-She Chicken(With 5 pancakes)  11.60", "Lemon Chicken  11.60", "Sesame Chicken  11.60", "General Tao’s Chicken  11.80", "Chicken with Curry Sauce  11.60", "Chicken Szechuan Style  11.80", "Chicken Hunan Style  11.80", "Chicken in Spicy Garlic Sauce  11.80", "Chicken in Spicy Lemon Sauce  11.80", "Imperial Chicken with Sweet & Sour Sauce  11.80", "House Special Spicy Chicken Wings  11.35"]),Objects(sectionName: "pork", sectionObjects: ["Honey Garlic Spare Ribs  11.80", "Sweet & Sour Spare Ribs  10.75", "Sliced BBQ Pork  10.55", "Cantonese Style Sweet & Sour Pork  11.60", "Pork Chop Suey  10.25", "Pork Chow Mein  10.25", "Mo-She Pork(With 5 pancakes)  11.60", "Szechuan Style Pork  11.80", "Kung Po Pork  11.80", "Pork in Spicy Garlic Sauce  11.80"]),Objects(sectionName: "tofu", sectionObjects: ["Tofu with Shrimps in Oyster Sauce  12.70", "Tofu with Mixed Vegetables  10.55", "Fried Tofu with Chicken & Shrimp Peking Style  12.15", "Tofu with Pork & Chillies in Black Bean Sauce  11.60", "Kung Po Fried Tofu  10.55", "Ma Po Tofu  10.25"])]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell") as UITableViewCell!
        
        cell.textLabel?.text = objectsArray[indexPath.section].sectionObjects[indexPath.row]
        cell.textLabel?.numberOfLines = 0
        return cell
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return objectsArray[section].sectionObjects.count
    }

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return objectsArray.count
    }
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
       
        
        return objectsArray[section].sectionName
    }
    
    override func tableView(tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int)
    {
        let header = view as! UITableViewHeaderFooterView
        header.textLabel?.font = UIFont(name: "Futura", size: 30)!
        header.textLabel?.textColor = UIColor.lightGrayColor()
    }
    
  

}













