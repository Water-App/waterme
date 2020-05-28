//
//  chartViewController.swift
//  WaterMe
//
//  Created by Jason Zavala on 5/14/20.
//  Copyright © 2020 Ultron. All rights reserved.
//

import UIKit
import CoreData

class chartViewController: UIViewController
{
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    var taskData = [String]()

    override func viewDidLoad()
    {
        super.viewDidLoad()
            }
    
    override func viewDidAppear(_ animated: Bool) {
        taskData = [String]()
        let context = appDelegate.persistentContainer.viewContext
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "WaterPoint")
        request.returnsObjectsAsFaults = false
        do
        {
            let result = try context.fetch(request)
            for data in result as! [NSManagedObject]
            {
                print(data.value(forKey: "intake") as! Int)
                print(data.value(forKey: "created"))
            }
        }
        catch
        {
            print("Failed")
        }
        
    }
    
}
