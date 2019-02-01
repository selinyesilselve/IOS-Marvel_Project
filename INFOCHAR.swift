//
//  INFOCHAR.swift
//  LASTPROJECT
//
//  Created by Ekin Silahlioglu,Selin Yesilselve on 17.05.2018.
//  Copyright © 2018 Ekin Silahlioglu,Selin Yesilselve. All rights reserved.
//

import UIKit
import CoreData

class INFOCHAR: UIViewController {
    
    var movieArray = [MOVIE(namemovie: "IRON MAN", movieDirector: "Jon Favreau", movieYear: "April 30, 2008", movieInfo: "A billionaire industrialist and genius inventor, Tony Stark, is conducting weapons tests overseas, but terrorists kidnap him to force him to build a devastating weapon.\nInstead, he builds an armored suit and upends his captors.\nReturning to America, Stark refines the suit and uses it to combat crime and terrorism", numb: 1),
                      MOVIE(namemovie: "IRON MAN 2", movieDirector: "Jon Favreau", movieYear: "April 28, 2010", movieInfo: "With the world now aware that he is Iron Man, billionaire inventor Tony Stark  faces pressure from all sides to share his technology with the military.\nHe is reluctant to divulge the secrets of his armored suit, fearing the information will fall into the wrong hands.\nWith Pepper Potts  and 'Rhodey' Rhodes  by his side, Tony must forge new alliances and confront a powerful new enemy.", numb: 2),
                      MOVIE(namemovie: "IRON MAN 3", movieDirector: "Shane Black", movieYear: "April 24, 2013", movieInfo: " Tony Stark finds himself facing his most powerful enemy yet when he embarks on a harrowing quest to find those responsible for destroying his private world.\nAlong the way, he discovers the answer to the question that has secretly haunted him: 'Does the man make the suit or does the suit make the man?'", numb: 3),
                      MOVIE(namemovie: "Thor", movieDirector: "Kenneth Branagh", movieYear: "April 27, 2011", movieInfo: "  As the son of Odin, king of the Norse gods, Thor will soon inherit the throne of Asgard from his aging father.\nHowever, on the day that he is to be crowned, Thor reacts with brutality when the gods' enemies, the Frost Giants, enter the palace in violation of their treaty.\nAs punishment, Odin banishes Thor to Earth.\nWhile Loki , Thor's brother, plots mischief in Asgard, Thor, now stripped of his powers, faces his greatest threat.", numb: 4),
                      MOVIE(namemovie: "Thor: The Dark World", movieDirector: "Alan Taylor", movieYear: "October 30, 2013", movieInfo: "Exploring Thor's relationship with the Asgardian All-Father Odin, as well as Earthbound companion Jane Foster, Thor: The Dark World follows the God of Thunder to The Nine Realms beyond Asgard and Earth.\nAnd as his evil adoptive brother, Loki, returns for Asgardian justice, a new threat rises.\nAlso rejoining Thor are his fellow Asgardians, Lady Sif, gatekeeper Heimdall, and Warriors Three, as they encounter mythical Norse creatures among the evildoers.", numb: 5),
                      MOVIE(namemovie: "Thor: Ragnarok", movieDirector: "Taika Waititi", movieYear: "October 24, 2017", movieInfo: "Thor's world is about to explode in Marvel's Thor: Ragnarok.\nHis devious brother, Loki, has taken over Asgard, the powerful Hela has emerged to steal the throne for herself and Thor is imprisoned on the other side of the universe.\nTo escape captivity and save his home from imminent destruction, Thor must first win a deadly alien contest by defeating his former ally and fellow Avenger... The Incredible Hulk!", numb: 6),
                      MOVIE(namemovie: "The First Avenger", movieDirector: "Joe Johnston", movieYear: "July 22, 2011", movieInfo: " In Marvel's Captain America: The First Avenger, Steve Rogers wants to do his part and join America's armed forces, but the military rejects him because of his small stature.\nFinally, Steve gets his chance when he is accepted into an experimental program that turns him into a supersoldier called Captain America.\nJoining forces with Bucky Barnes and Peggy Carter, Captain America leads the fight against the Nazi organization, HYDRA.", numb: 7),
                      MOVIE(namemovie: "The Winter Soldier", movieDirector: "Russo Brothers", movieYear: "March 26, 2014", movieInfo: "Two years after the Battle of New York, Captain America lives quietly in Washington, D.C., still struggling to adapt to the modern society.\nIn hopes of fitting in, Captain America becomes an agent of S.H.I.E.L.D., as well as a close friend of Black Widow and a new hero, Falcon.\nHowever, when a shadowy enemy from within the chief offices of S.H.I.E.L.D. (with whom Nick Fury initially agrees) starts creating countless weapons of mass destruction to seemingly protect the world - but really wants to destroy it and rebuild it, Captain America and his colleagues must team up to stop him.\nBut things get more complicated when Steve's thought deceased best friend Bucky is revealed to be alive and a villain like no other - the Winter Soldier.", numb: 8),
                      MOVIE(namemovie: "Captain America: Civil War", movieDirector: "Russo Brothers", movieYear: "April 27, 2016", movieInfo: "Marvel’s Captain America: Civil War finds Steve Rogers leading the newly formed team of Avengers in their continued efforts to safeguard humanity.\nBut after another incident involving the Avengers results in collateral damage, political pressure mounts to install a system of accountability, headed by a governing body to oversee and direct the team.\nThe new status quo fractures the Avengers, resulting in two camps—one led by Steve Rogers and his desire for the Avengers to remain free to defend humanity without government interference, and the other following Tony Stark’s surprising decision to support government oversight and accountability.", numb: 9),
                      MOVIE(namemovie: "The Incredible Hulk", movieDirector: "Louis Leterrier", movieYear: "April 13, 2008", movieInfo: " Scientist Bruce Banner desperately seeks a cure for the gamma radiation that contaminated his cells and turned him into The Hulk.\nCut off from his true love Betty Ross  and forced to hide from his nemesis, Gen.\nThunderbolt Ross , Banner soon comes face-to-face with a new threat: a supremely powerful enemy known as The Abomination.", numb: 10),
                      MOVIE(namemovie: "Spider-Man: Homecoming", movieDirector: "Jon Watts", movieYear: "July 5, 2017", movieInfo: "A young Peter Parker/Spider-Man, who made his sensational debut in Captain America: Civil War, begins to navigate his newfound identity as the web-slinging superhero in Spider-Man: Homecoming.\nThrilled by his experience with the Avengers, Peter returns home, where he lives with his Aunt May, under the watchful eye of his new mentor Tony Stark.\nPeter tries to fall back into his normal daily routine – distracted by thoughts of proving himself to be more than just your friendly neighborhood Spider-Man – but when the Vulture emerges as a new villain, everything that Peter holds most important will be threatened.", numb: 11),
                      MOVIE(namemovie: "Black Panther", movieDirector: "Ryan Coogler", movieYear: "February 16, 2018", movieInfo: " After the events of Captain America: Civil War, King T'Challa returns home to the reclusive, technologically advanced African nation of Wakanda to serve as his country's new leader.\nHowever, T'Challa soon finds that he is challenged for the throne from factions within his own country.\nWhen two foes conspire to destroy Wakanda, the hero known as Black Panther must team up with C.I.A. agent Everett K. Ross and members of the Dora Milaje, Wakandan special forces, to prevent Wakanda from being dragged into a world war.", numb: 12),
                      MOVIE(namemovie: "Ant-Man", movieDirector: "Peyton Reed", movieYear: "July 14, 2015", movieInfo: "Armed with the astonishing ability to shrink in scale but increase in strength, master thief Scott Lang must embrace his inner-hero and help his mentor, Dr. Hank Pym, protect the secret behind his spectacular Ant-Man Suit from a new generation of towering threats.\nAgainst seemingly insurmountable obstacles, Pym and Lang must plan and pull off a heist that will save the world.", numb: 13),
                      MOVIE(namemovie: "Guardians of the Galaxy", movieDirector: "James Gunn", movieYear: "July 31, 2014", movieInfo: "Marvel’s Guardians of the Galaxy expands the Marvel Cinematic Universe into the cosmos, where brash adventurer Peter Quill finds himself the object of an unrelenting bounty hunt after stealing a mysterious orb coveted by Ronan, a powerful villain with ambitions that threaten the entire universe.\nTo evade the ever-persistent Ronan, Quill is forced into an uneasy truce with a quartet of disparate misfits — Rocket, a gun-toting raccoon; Groot, a humanoid tree; the deadly and enigmatic Gamora; and the rage/revenge-driven Drax the Destroyer.\nBut when Peter discovers the true power of the orb and the menace it poses to the cosmos, he must do his best to rally his ragtag rivals for a last, desperate stand — with the galaxy’s fate in the balance.", numb: 14),
                      MOVIE(namemovie: "Guardians of the Galaxy Vol.2", movieDirector: "James Gunn", movieYear: "April 25, 2017", movieInfo: " Set to the backdrop of 'Awesome Mixtape #2', Marvel's Guardians of the Galaxy Vol. 2 continues the team's adventures as they traverse the outer reaches of the cosmos.\nThe Guardians must fight to keep their newfound family together as they unravel the mysteries of Peter Quill's true parentage.\nOld foes become new allies and fan-favorite characters from the classic comics will come to our heroes' aid as the Marvel Cinematic Universe continues to expand.", numb: 15),
                       MOVIE(namemovie: "Avengers: Infinity War", movieDirector: "Russo Brothers", movieYear: "April 27, 2018", movieInfo: "An unprecedented cinematic journey ten years in the making and spanning the entire Marvel Cinematic Universe, Marvel Studios' Avengers: Infinity War brings to the screen the ultimate, deadliest showdown of all time.", numb: 16),]
    
    
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelGender: UILabel!
    @IBOutlet weak var labelSpecies: UILabel!
    @IBOutlet weak var labelAge: UILabel!
    @IBOutlet weak var charText: UITextView!
    @IBOutlet weak var pageImage: UIImageView!
    
    
    
    @IBOutlet weak var movie1: UIButton!
    @IBOutlet weak var movie2: UIButton!
    @IBOutlet weak var movie3: UIButton!
    
    
    var text: String? = nil
    var text1: String? = nil
    var text2: String? = nil
    var text3: String? = nil
    var text4: String? = nil
    var TEXT1: String? = nil
    var TEXT2: String? = nil
    var TEXT3: String? = nil
    var myImage : UIImage? = nil
    
    
    var people = [NSManagedObject]()
    var arrayim = [NSManagedObject]()

    var word5 = " "
    var word6 = " "
    var word7 = " "
    var word8 = " "
    var buttonIMG = UIImage(named: "Ant") as! UIImage
    

    override func viewDidLoad() {
        super.viewDidLoad()
        charText.isEditable = false
        labelName.text = text
        labelGender.text = text1
        labelSpecies.text = text2
        labelAge.text = text3
        charText.text = text4
        movie1.setTitle(TEXT1, for: .normal)
        movie2.setTitle(TEXT2, for: .normal)
        movie3.setTitle(TEXT3, for: .normal)
        pageImage.image = myImage
        
        
        deleteAllRecords()
        
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        let managedContext = appDelegate.persistentContainer.viewContext// This one is created to work with Managed Object
        let entity = NSEntityDescription.entity(forEntityName: "FILM",in: managedContext)!
        
        let person0 = NSManagedObject(entity: entity,insertInto: managedContext)
        let person1 = NSManagedObject(entity: entity,insertInto: managedContext)
        let person2 = NSManagedObject(entity: entity,insertInto: managedContext)
        let person3 = NSManagedObject(entity: entity,insertInto: managedContext)
        let person4 = NSManagedObject(entity: entity,insertInto: managedContext)
        let person5 = NSManagedObject(entity: entity,insertInto: managedContext)
        let person6 = NSManagedObject(entity: entity,insertInto: managedContext)
        let person7 = NSManagedObject(entity: entity,insertInto: managedContext)
        let person8 = NSManagedObject(entity: entity,insertInto: managedContext)
        let person9 = NSManagedObject(entity: entity,insertInto: managedContext)
        let person10 = NSManagedObject(entity: entity,insertInto: managedContext)
        let person11 = NSManagedObject(entity: entity,insertInto: managedContext)
        let person12 = NSManagedObject(entity: entity,insertInto: managedContext)
        let person13 = NSManagedObject(entity: entity,insertInto: managedContext)
        let person14 = NSManagedObject(entity: entity,insertInto: managedContext)
        let person15 = NSManagedObject(entity: entity,insertInto: managedContext)
        
 
        person0.setValue(movieArray[0].namemovie , forKeyPath: "moviename")
        person0.setValue(movieArray[0].movieDirector , forKeyPath: "director")
        person0.setValue(movieArray[0].movieYear, forKeyPath: "year")
        person0.setValue(movieArray[0].movieInfo, forKey: "subject")
        person0.setValue(movieArray[0].numb, forKey: "numb")
       
        person1.setValue(movieArray[1].namemovie , forKeyPath: "moviename")
        person1.setValue(movieArray[1].movieDirector , forKeyPath: "director")
        person1.setValue(movieArray[1].movieYear, forKeyPath: "year")
        person1.setValue(movieArray[1].movieInfo, forKey: "subject")
        person1.setValue(movieArray[1].numb, forKey: "numb")
        
        person2.setValue(movieArray[2].namemovie , forKeyPath: "moviename")
        person2.setValue(movieArray[2].movieDirector , forKeyPath: "director")
        person2.setValue(movieArray[2].movieYear, forKeyPath: "year")
        person2.setValue(movieArray[2].movieInfo, forKey: "subject")
        person2.setValue(movieArray[2].numb, forKey: "numb")
        
        person3.setValue(movieArray[3].namemovie , forKeyPath: "moviename")
        person3.setValue(movieArray[3].movieDirector , forKeyPath: "director")
        person3.setValue(movieArray[3].movieYear, forKeyPath: "year")
        person3.setValue(movieArray[3].movieInfo, forKey: "subject")
        person3.setValue(movieArray[3].numb, forKey: "numb")
    
        person4.setValue(movieArray[4].namemovie , forKeyPath: "moviename")
        person4.setValue(movieArray[4].movieDirector , forKeyPath: "director")
        person4.setValue(movieArray[4].movieYear, forKeyPath: "year")
        person4.setValue(movieArray[4].movieInfo, forKey: "subject")
        person4.setValue(movieArray[4].numb, forKey: "numb")
        
        person5.setValue(movieArray[5].namemovie , forKeyPath: "moviename")
        person5.setValue(movieArray[5].movieDirector , forKeyPath: "director")
        person5.setValue(movieArray[5].movieYear, forKeyPath: "year")
        person5.setValue(movieArray[5].movieInfo, forKey: "subject")
        person5.setValue(movieArray[5].numb, forKey: "numb")
        
        person6.setValue(movieArray[6].namemovie , forKeyPath: "moviename")
        person6.setValue(movieArray[6].movieDirector , forKeyPath: "director")
        person6.setValue(movieArray[6].movieYear, forKeyPath: "year")
        person6.setValue(movieArray[6].movieInfo, forKey: "subject")
        person6.setValue(movieArray[6].numb, forKey: "numb")
        
        person7.setValue(movieArray[7].namemovie , forKeyPath: "moviename")
        person7.setValue(movieArray[7].movieDirector , forKeyPath: "director")
        person7.setValue(movieArray[7].movieYear, forKeyPath: "year")
        person7.setValue(movieArray[7].movieInfo, forKey: "subject")
        person7.setValue(movieArray[7].numb, forKey: "numb")
        
        person8.setValue(movieArray[8].namemovie , forKeyPath: "moviename")
        person8.setValue(movieArray[8].movieDirector , forKeyPath: "director")
        person8.setValue(movieArray[8].movieYear, forKeyPath: "year")
        person8.setValue(movieArray[8].movieInfo, forKey: "subject")
        person8.setValue(movieArray[8].numb, forKey: "numb")
        
        person9.setValue(movieArray[9].namemovie , forKeyPath: "moviename")
        person9.setValue(movieArray[9].movieDirector , forKeyPath: "director")
        person9.setValue(movieArray[9].movieYear, forKeyPath: "year")
        person9.setValue(movieArray[9].movieInfo, forKey: "subject")
        person9.setValue(movieArray[9].numb, forKey: "numb")
        
        person10.setValue(movieArray[10].namemovie , forKeyPath: "moviename")
        person10.setValue(movieArray[10].movieDirector , forKeyPath: "director")
        person10.setValue(movieArray[10].movieYear, forKeyPath: "year")
        person10.setValue(movieArray[10].movieInfo, forKey: "subject")
        person10.setValue(movieArray[10].numb, forKey: "numb")
        
        person11.setValue(movieArray[11].namemovie , forKeyPath: "moviename")
        person11.setValue(movieArray[11].movieDirector , forKeyPath: "director")
        person11.setValue(movieArray[11].movieYear, forKeyPath: "year")
        person11.setValue(movieArray[11].movieInfo, forKey: "subject")
        person11.setValue(movieArray[11].numb, forKey: "numb")
        
        person12.setValue(movieArray[12].namemovie , forKeyPath: "moviename")
        person12.setValue(movieArray[12].movieDirector , forKeyPath: "director")
        person12.setValue(movieArray[12].movieYear, forKeyPath: "year")
        person12.setValue(movieArray[12].movieInfo, forKey: "subject")
        person12.setValue(movieArray[12].numb, forKey: "numb")
        
        person13.setValue(movieArray[13].namemovie , forKeyPath: "moviename")
        person13.setValue(movieArray[13].movieDirector , forKeyPath: "director")
        person13.setValue(movieArray[13].movieYear, forKeyPath: "year")
        person13.setValue(movieArray[13].movieInfo, forKey: "subject")
        person13.setValue(movieArray[13].numb, forKey: "numb")
        
        person14.setValue(movieArray[14].namemovie , forKeyPath: "moviename")
        person14.setValue(movieArray[14].movieDirector , forKeyPath: "director")
        person14.setValue(movieArray[14].movieYear, forKeyPath: "year")
        person14.setValue(movieArray[14].movieInfo, forKey: "subject")
        person14.setValue(movieArray[14].numb, forKey: "numb")
        
        person15.setValue(movieArray[15].namemovie , forKeyPath: "moviename")
        person15.setValue(movieArray[15].movieDirector , forKeyPath: "director")
        person15.setValue(movieArray[15].movieYear, forKeyPath: "year")
        person15.setValue(movieArray[15].movieInfo, forKey: "subject")
        person15.setValue(movieArray[15].numb, forKey: "numb")
        
        
        do {// Save into our app's dedicated disk area
            try managedContext.save()
            
            
            people.append(person0)
            people.append(person1)
            people.append(person2)
            people.append(person3)
            people.append(person4)
            people.append(person5)
            people.append(person6)
            people.append(person7)
            people.append(person8)
            people.append(person9)
            people.append(person10)
            people.append(person11)
            people.append(person12)
            people.append(person13)
            people.append(person14)
            people.append(person15)
 
        } catch let error as NSError {
            print("Could not save. \(error), \(error.userInfo)")
        }
        
        
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "FILM")
        let sortDescriptor = NSSortDescriptor(key: "numb", ascending: true)
        fetchRequest.sortDescriptors = [sortDescriptor]
        do {
            let request = try managedContext.fetch(fetchRequest)

            for i in 0..<request.count{
                arrayim.append(request[i])
            }
 

        }
            
        catch let error as NSError {
            print("Could not fetch. \(error), \(error.userInfo)")
        }

    }
    
    
    
    func deleteAllRecords() {
        let delegate = UIApplication.shared.delegate as! AppDelegate
        let context = delegate.persistentContainer.viewContext
        
        let deleteFetch = NSFetchRequest<NSFetchRequestResult>(entityName: "FILM")
        let deleteRequest = NSBatchDeleteRequest(fetchRequest: deleteFetch)
        
        do {
            try context.execute(deleteRequest)
            try context.save()
        } catch {
            print ("There was an error")
        }
    }
    
 
    //accessing movie part

    @IBAction func changeMovie(_ sender: UIButton) {
      
        
        if sender.titleLabel?.text == "IRON MAN"{
            word5 = arrayim[0].value(forKey: "moviename") as! String
            word6 = arrayim[0].value(forKey: "director") as! String
            word7 = arrayim[0].value(forKey: "year") as! String
            word8 = arrayim[0].value(forKey: "subject") as! String
            buttonIMG = UIImage(named: "IronManMovie1") as! UIImage
            
        }
        if sender.titleLabel?.text == "IRON MAN 2"{
            word5 = arrayim[1].value(forKey: "moviename") as! String
            word6 = arrayim[1].value(forKey: "director") as! String
            word7 = arrayim[1].value(forKey: "year") as! String
            word8 = arrayim[1].value(forKey: "subject") as! String
             buttonIMG = UIImage(named: "IronMan Movie 2") as! UIImage
            
        }
        if sender.titleLabel?.text == "IRON MAN 3"{
            word5 = arrayim[2].value(forKey: "moviename") as! String
            word6 = arrayim[2].value(forKey: "director") as! String
            word7 = arrayim[2].value(forKey: "year") as! String
            word8 = arrayim[2].value(forKey: "subject") as! String
             buttonIMG = UIImage(named: "Iron Man Movie 3") as! UIImage
            
        }
        if sender.titleLabel?.text == "THOR"{
            word5 = arrayim[3].value(forKey: "moviename") as! String
            word6 = arrayim[3].value(forKey: "director") as! String
            word7 = arrayim[3].value(forKey: "year") as! String
            word8 = arrayim[3].value(forKey: "subject") as! String
             buttonIMG = UIImage(named: "Thor1") as! UIImage
            
        }
        if sender.titleLabel?.text == "THOR : THE DARK WORLD"{
            word5 = arrayim[4].value(forKey: "moviename") as! String
            word6 = arrayim[4].value(forKey: "director") as! String
            word7 = arrayim[4].value(forKey: "year") as! String
            word8 = arrayim[4].value(forKey: "subject") as! String
             buttonIMG = UIImage(named: "thor2") as! UIImage
            
        }
        if sender.titleLabel?.text == "THOR : RAGNAROK"{
            word5 = arrayim[5].value(forKey: "moviename") as! String
            word6 = arrayim[5].value(forKey: "director") as! String
            word7 = arrayim[5].value(forKey: "year") as! String
            word8 = arrayim[5].value(forKey: "subject") as! String
            buttonIMG = UIImage(named: "thor 3") as! UIImage
            
        }
        
        if sender.titleLabel?.text == "CAPTAIN AMERICA: THE FIRST AVENGER"{
            word5 = arrayim[6].value(forKey: "moviename") as! String
            word6 = arrayim[6].value(forKey: "director") as! String
            word7 = arrayim[6].value(forKey: "year") as! String
            word8 = arrayim[6].value(forKey: "subject") as! String
             buttonIMG = UIImage(named: "CP1") as! UIImage
            
        }
        if sender.titleLabel?.text == "CAPTAIN AMERICA: THE WINTER SOLDIER"{
            word5 = arrayim[7].value(forKey: "moviename") as! String
            word6 = arrayim[7].value(forKey: "director") as! String
            word7 = arrayim[7].value(forKey: "year") as! String
            word8 = arrayim[7].value(forKey: "subject") as! String
             buttonIMG = UIImage(named: "CP2") as! UIImage
            
        }
        if sender.titleLabel?.text == "CAPTAIN AMERICA: CIVIL WAR"{
            word5 = arrayim[8].value(forKey: "moviename") as! String
            word6 = arrayim[8].value(forKey: "director") as! String
            word7 = arrayim[8].value(forKey: "year") as! String
            word8 = arrayim[8].value(forKey: "subject") as! String
             buttonIMG = UIImage(named: "CP3") as! UIImage
            
        }
        if sender.titleLabel?.text == "THE INCREDIBLE HULK"{
            word5 = arrayim[9].value(forKey: "moviename") as! String
            word6 = arrayim[9].value(forKey: "director") as! String
            word7 = arrayim[9].value(forKey: "year") as! String
            word8 = arrayim[9].value(forKey: "subject") as! String
             buttonIMG = UIImage(named: "Hulk") as! UIImage
            
        }
        if sender.titleLabel?.text == "SPIDER-MAN : HOMECOMING"{
            word5 = arrayim[10].value(forKey: "moviename") as! String
            word6 = arrayim[10].value(forKey: "director") as! String
            word7 = arrayim[10].value(forKey: "year") as! String
            word8 = arrayim[10].value(forKey: "subject") as! String
             buttonIMG = UIImage(named: "SP") as! UIImage
            
        }
        if sender.titleLabel?.text == "BLACK PANTHER"{
            word5 = arrayim[11].value(forKey: "moviename") as! String
            word6 = arrayim[11].value(forKey: "director") as! String
            word7 = arrayim[11].value(forKey: "year") as! String
            word8 = arrayim[11].value(forKey: "subject") as! String
             buttonIMG = UIImage(named: "blackP") as! UIImage
            
        }
        
        if sender.titleLabel?.text == "ANT-MAN"{
            word5 = arrayim[12].value(forKey: "moviename") as! String
            word6 = arrayim[12].value(forKey: "director") as! String
            word7 = arrayim[12].value(forKey: "year") as! String
            word8 = arrayim[12].value(forKey: "subject") as! String
             buttonIMG = UIImage(named: "Ant") as! UIImage
            
        }
        if sender.titleLabel?.text == "GUARDIANS OF THE GALAXY"{
            word5 = arrayim[13].value(forKey: "moviename") as! String
            word6 = arrayim[13].value(forKey: "director") as! String
            word7 = arrayim[13].value(forKey: "year") as! String
            word8 = arrayim[13].value(forKey: "subject") as! String
             buttonIMG = UIImage(named: "G1") as! UIImage
            
        }
        if sender.titleLabel?.text == "GUARDIANS OF THE GALAXY VOL.2"{
            word5 = arrayim[14].value(forKey: "moviename") as! String
            word6 = arrayim[14].value(forKey: "director") as! String
            word7 = arrayim[14].value(forKey: "year") as! String
            word8 = arrayim[14].value(forKey: "subject") as! String
             buttonIMG = UIImage(named: "GG2") as! UIImage
            
        }
        if sender.titleLabel?.text == "INFINITY WAR"{
            word5 = arrayim[15].value(forKey: "moviename") as! String
            word6 = arrayim[15].value(forKey: "director") as! String
            word7 = arrayim[15].value(forKey: "year") as! String
            word8 = arrayim[15].value(forKey: "subject") as! String
             buttonIMG = UIImage(named: "IW") as! UIImage
        }
        if sender.titleLabel?.text == ""{
           print("do nothing...")
            sender.isHidden = true
            
        }

    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let viewControllerA = segue.destination as? INFOMOVIE{
            
            viewControllerA.text = word5
            viewControllerA.text1 = word6
            viewControllerA.text2 = word7
            viewControllerA.text3 = word8
            viewControllerA.myImage = buttonIMG
        }
    }


}
