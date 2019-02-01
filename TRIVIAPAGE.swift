//
//  TRIVIAPAGE.swift
//  LASTPROJECT
//
//  Created by Ekin Silahlioglu,Selin Yesilselve on 18.05.2018.
//  Copyright © 2018 Ekin Silahlioglu,Selin Yesilselve. All rights reserved.
//

import UIKit
import CoreData


class TRIVIAPAGE: UIViewController {
    
    @IBOutlet weak var question: UITextView!
    @IBOutlet weak var btnoutlet: UIButton!
    @IBOutlet weak var btnoutlet1: UIButton!

    var array = [NSManagedObject]()
    var people = [NSManagedObject]()
    
    var T = [Trivia(testQ: "Where did Thanos find the soul stone?", answerQ1: "Vormir", answerQ2: "Knowhere", quenumber: 1),
             Trivia(testQ: "What is the name of AI in Spider-Man's suit?", answerQ1: "Friday", answerQ2: "Karen", quenumber: 2),
             Trivia(testQ: "What's Captain America's shield made of?", answerQ1: "Vibranium", answerQ2: "Titanium", quenumber: 3),
             Trivia(testQ: "Captain America was frozen in which war?", answerQ1: "World War 1", answerQ2: "Cold War", quenumber: 4),
             Trivia(testQ: "What’s the name of the character behind War Machine’s mask?", answerQ1: "Dave", answerQ2: "Rhodey", quenumber: 5),
             Trivia(testQ: "What is the name of alien speicies that came to Earth from a portal in Avengers movie?", answerQ1: "Chitauri", answerQ2: "Andorians", quenumber: 6),
             Trivia(testQ: "What is Bucky Barnes real first name?", answerQ1: "James", answerQ2: "Buchanan", quenumber: 7)]
    
    let appDelegate = UIApplication.shared.delegate as? AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        question.isEditable = false
        
        deleteAllRecords()
        
        question.text = "Where is Gamora's origin ?"
        btnoutlet.setTitle("Zehoberei", for: .normal)
        btnoutlet1.setTitle("Titan", for: .normal)
        
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        let managedContext = appDelegate.persistentContainer.viewContext// This one is created to work with Managed Object
        let entity = NSEntityDescription.entity(forEntityName: "TRIVIA",in: managedContext)!
        
        let person0 = NSManagedObject(entity: entity,insertInto: managedContext)
        let person1 = NSManagedObject(entity: entity,insertInto: managedContext)
        let person2 = NSManagedObject(entity: entity,insertInto: managedContext)
        let person3 = NSManagedObject(entity: entity,insertInto: managedContext)
        let person4 = NSManagedObject(entity: entity,insertInto: managedContext)
        let person5 = NSManagedObject(entity: entity,insertInto: managedContext)
        let person6 = NSManagedObject(entity: entity,insertInto: managedContext)
        
        
        
        person0.setValue(T[0].testQ, forKey: "que")
        person0.setValue(T[0].answerQ1, forKey: "anw1")
        person0.setValue(T[0].answerQ2, forKey: "anw2")
        person0.setValue(T[0].quenumber, forKey: "number")
        
        person1.setValue(T[1].testQ, forKey: "que")
        person1.setValue(T[1].answerQ1, forKey: "anw1")
        person1.setValue(T[1].answerQ2, forKey: "anw2")
        person1.setValue(T[1].quenumber, forKey: "number")
        
        person2.setValue(T[2].testQ, forKey: "que")
        person2.setValue(T[2].answerQ1, forKey: "anw1")
        person2.setValue(T[2].answerQ2, forKey: "anw2")
        person2.setValue(T[2].quenumber, forKey: "number")
        
        person3.setValue(T[3].testQ, forKey: "que")
        person3.setValue(T[3].answerQ1, forKey: "anw1")
        person3.setValue(T[3].answerQ2, forKey: "anw2")
        person3.setValue(T[3].quenumber, forKey: "number")
        
        
        person4.setValue(T[4].testQ, forKey: "que")
        person4.setValue(T[4].answerQ1, forKey: "anw1")
        person4.setValue(T[4].answerQ2, forKey: "anw2")
        person4.setValue(T[4].quenumber, forKey: "number")
        
        person5.setValue(T[5].testQ, forKey: "que")
        person5.setValue(T[5].answerQ1, forKey: "anw1")
        person5.setValue(T[5].answerQ2, forKey: "anw2")
        person5.setValue(T[5].quenumber, forKey: "number")
        
        person6.setValue(T[6].testQ, forKey: "que")
        person6.setValue(T[6].answerQ1, forKey: "anw1")
        person6.setValue(T[6].answerQ2, forKey: "anw2")
        person6.setValue(T[6].quenumber, forKey: "number")
        
        
        
        do {// Save into our app's dedicated disk area
            try managedContext.save()
            
           
            people.append(person0)
            people.append(person1)
            people.append(person2)
            people.append(person3)
            people.append(person4)
            people.append(person5)
            people.append(person6)
            
     
            
            
        } catch let error as NSError {
            print("Could not save. \(error), \(error.userInfo)")
        }
        
        
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "TRIVIA")
        let sortDescriptor = NSSortDescriptor(key: "number", ascending: true)
        fetchRequest.sortDescriptors = [sortDescriptor]
        do {
            let request = try managedContext.fetch(fetchRequest)
            
            for i in 0..<request.count{
                array.append(request[i])
              
            }
     
            
            
        }
            
        catch let error as NSError {
            print("Could not fetch. \(error), \(error.userInfo)")
        }
        

    }
    
    
    
    @IBAction func button1(_ sender: UIButton) {
        if sender.titleLabel?.text == "Zehoberei"{
            question.text = array[0].value(forKey: "que") as? String
            
            btnoutlet.setTitle(array[0].value(forKey: "anw1") as? String, for: UIControlState.normal)
            btnoutlet1.setTitle(array[0].value(forKey: "anw2") as? String, for: UIControlState.normal)
            
        }
        
        if sender.titleLabel?.text == "Vormir"{
            question.text = array[1].value(forKey: "que") as? String
            
            btnoutlet.setTitle(array[1].value(forKey: "anw1") as? String, for: UIControlState.normal)
            btnoutlet1.setTitle(array[1].value(forKey: "anw2") as? String, for: UIControlState.normal)
            
        }
        if sender.titleLabel?.text == "Karen"{
            question.text = array[2].value(forKey: "que") as? String
            
            btnoutlet.setTitle(array[2].value(forKey: "anw1") as? String, for: UIControlState.normal)
            btnoutlet1.setTitle(array[2].value(forKey: "anw2") as? String, for: UIControlState.normal)
            
        }
        if sender.titleLabel?.text == "Vibranium"{
            question.text = array[3].value(forKey: "que") as? String
            
            btnoutlet.setTitle(array[3].value(forKey: "anw1") as? String, for: UIControlState.normal)
            btnoutlet1.setTitle(array[3].value(forKey: "anw2") as? String, for: UIControlState.normal)
            
        }
        if sender.titleLabel?.text == "World War 1"{
            question.text = array[4].value(forKey: "que") as? String
            
            btnoutlet.setTitle(array[4].value(forKey: "anw1") as? String, for: UIControlState.normal)
            btnoutlet1.setTitle(array[4].value(forKey: "anw2") as? String, for: UIControlState.normal)
            
        }
        if sender.titleLabel?.text == "Rhodey"{
            question.text = array[5].value(forKey: "que") as? String
            
            btnoutlet.setTitle(array[5].value(forKey: "anw1") as? String, for: UIControlState.normal)
            btnoutlet1.setTitle(array[5].value(forKey: "anw2") as? String, for: UIControlState.normal)
            
        }
        if sender.titleLabel?.text == "Chitauri"{
            question.text = array[6].value(forKey: "que") as? String
            
            btnoutlet.setTitle(array[6].value(forKey: "anw1") as? String, for: UIControlState.normal)
            btnoutlet1.setTitle(array[6].value(forKey: "anw2") as? String, for: UIControlState.normal)
            
        }
        
        if sender.titleLabel?.text == "James"{
            
            btnoutlet.isEnabled = false
            btnoutlet1.isEnabled = false
            question.text = "Congratulations \n\nIntelligence is a privilege, and it needs to be used for the greater good of people.\n– Dr. Octopus"
            
            btnoutlet.setTitle("",for: UIControlState.normal)
            btnoutlet1.setTitle("",for: UIControlState.normal)
            
            
        }
    }
    

    func deleteAllRecords() {
        let delegate = UIApplication.shared.delegate as! AppDelegate
        let context = delegate.persistentContainer.viewContext
        
        let deleteFetch = NSFetchRequest<NSFetchRequestResult>(entityName: "TRIVIA")
        let deleteRequest = NSBatchDeleteRequest(fetchRequest: deleteFetch)
        
        do {
            try context.execute(deleteRequest)
            try context.save()
        } catch {
            print ("There was an error")
        }
    }


} //end of the class
