//
//  ViewController.swift
//  WaterMe
//
//  Created by Jason Zavala on 5/12/20.
//  Copyright © 2020 Ultron. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    @IBOutlet weak var intakeLabel: UITextField!
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
  
   
    @IBAction func enterWasPressed(_ sender: Any){
        //this should delete everything in our core data model
        // save this for some sort of delete button or possible reset
        // this reset all values
        
//        let fetchRequest: NSFetchRequest<NSFetchRequestResult> = NSFetchRequest(entityName: "WaterPoint")
//        let deleteRequest = NSBatchDeleteRequest(fetchRequest: fetchRequest)
//        let persistentContainer = (UIApplication.shared.delegate as! AppDelegate).persistentContainer
//
//        do {
//            try persistentContainer.viewContext.execute(deleteRequest)
//        } catch let error as NSError {
//            print(error)
//        }
    
        let context = appDelegate.persistentContainer.viewContext
        let entity = NSEntityDescription.entity(forEntityName: "WaterPoint", in: context)
        let newWater = NSManagedObject(entity: entity!, insertInto: context)

        let insert:Int! = Int(intakeLabel.text!)
        newWater.setValue(insert, forKey: "intake")
        let d = Date()
        newWater.setValue(d, forKey: "created")

        do
        {
            try context.save()
        }
        catch
        {
            print("help!")
        }
        
    }
}
