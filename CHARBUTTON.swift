//
//  CHARBUTTON.swift
//  LASTPROJECT
//
//  Created by Ekin Silahlioglu,Selin Yesilselve on 17.05.2018.
//  Copyright © 2018 Ekin Silahlioglu,Selin Yesilselve. All rights reserved.
//

import UIKit
import CoreData
import AVFoundation

class CHARBUTTON: UIViewController {
    
    var word = " "
    var word1 = " "
    var word2 = " "
    var word3 = " "
    var word4 = " "
    var WORD1 = " "
    var WORD2 = " "
    var WORD3 = " "
    var buttonIMAGE = UIImage(named: "Iron_Man") as! UIImage
    
    var CHS = [Character(name: "Anthony E. Stark", species: "Human", gender: "Male",age:"47", textInfo: "Tony Stark was the arrogant son of wealthy, weapon manufacturer Howard Stark.\nTony cared only about himself, but he would have a change of heart after he was kidnapped by terrorists and gravely injured.\nPressured to create a weapon of mass destruction, Stark instead created a suit of armor powerful enough for him to escape.\nTony uses his vast resources and intellect to make the world a better place as the invincible Iron Man.\nStark's super hero identity led him to become a founding member of the Avengers.", mynumber: 1 ),
               Character(name: "Thor Odinson", species: "Asgardian", gender: "Male",age:"1054", textInfo: "Thor is the Asgardian God of Thunder, and the son of the All-Father of Asgard Odin and the Elder Earth-Goddess Gaea.\nCombining the powers of Asgard and Midgard (Earth), Thor is arguably the greatest defender of both worlds.\nArmed with his enchanted Uru hammer Mjolnir, which can only be lifted by those who are worthy, Thor is the mightiest warrior in all of Asgard.\nA staunch ally for good and one of the strongest beings on Earth, Thor is also a founding member of the Avengers.", mynumber: 2),
               Character(name: "Steven G. Rogers", species: "Human", gender: "Male",age:"99 (biologically 33)", textInfo: "During World War II, Steve Rogers volunteered to receive the experimental Super-Soldier Serum.\nEnhanced to the pinnacle of human physical potential and armed with an unbreakable shield, he became Captain America.\nAfter a failed mission left him encased in ice for decades, he was found and revived by the Avengers.\nLater joining their ranks and eventually becoming the team's leader.", mynumber: 3),
               Character(name: "R. Bruce Banner", species: "Human", gender: "Male",age:"48", textInfo: "After being bombarded with a massive dose of gamma radiation while saving a young man's life during the testing of an experimental bomb,\nDr. Robert Bruce Banner was transformed into the Incredible Hulk:\na green behemoth who is the living personification of rage and pure physical strength.", mynumber: 4),
               Character(name: "Clinton F. Barton", species: "Human", gender: "Male",age:"47", textInfo: "Trained by criminals and inspired by heroes, Clint Barton has grown from a troubled youth into one of the greatest heroes on Earth.\nThe world knows him best as Hawkeye: Earth's Mightiest Marksman.\nA member of the Avengers for many years, he has left the team on occasion because of team friction.\nBut he always returns, ready to face any threat.", mynumber: 5),
               Character(name: "Natalia A. Romanoff", species: "Human", gender: "Female",age:"33", textInfo: "A former KGB agent Natasha Romanova, better known as Black Widow, is one of the best agents S.H.I.E.L.D. has ever had.\nShe's a longtime member of the Avengers as well as the leader of the short-lived Los Angeles-based superhero team called the Champions.", mynumber: 6),
               Character(name: "Peter B. Parker", species: "Human", gender: "Male",age:"17", textInfo: "Peter Parker was bitten by a radioactive spider as a teenager, granting him spider-like powers.\nAfter the death of his Uncle Ben, which he could have prevented, Peter learned that 'with great power, comes great responsibility.' \nSwearing to always protect the innocent from harm, Peter Parker became the Amazing Spider-Man!", mynumber: 7),
               Character(name: "Vision", species: "AI", gender: "Male",age:"2", textInfo: "Vision is an artificial intelligence, a 'synthezoid' created by the villain Ultron and an Avenger who possesses the power to alter his density at will.\nHaving gained a modicum of humanity, Vision is always afraid he may one day lose touch with it.", mynumber: 8),
               Character(name: "Wanda Maximoff", species: "Human", gender: "Female",age:"23", textInfo: "The world knows Wanda Maximoff as the Scarlet Witch, a mutant with probability manipulation and reality-warping abilities.\nShe is the twin sister of Quicksilver, mother to Wiccan and Speed, and the ex-wife of the Vision.\nWanda is also infamously known for causing the Decimation.", mynumber: 9),
               Character(name: "'Challa", species: "Human", gender: "Male",age:"40", textInfo: "T'Challa is the Black Panther, king of Wakanda, one of the most technologically advanced nations on Earth.\nHe is among the top intellects and martial artists of the world, a veteran Avenger, and a member of the Illuminati.\nUsing his powers and abilities, he has pledged his fortune, powers, and life to the service of all mankind.", mynumber: 10),
               Character(name: "Scott E. H. Lang", species: "Human", gender: "Male",age:"40", textInfo: "Scott Lang is an ex-convict and electronics expert hired by Stark International, which enables him to steal the Ant-Man suit from Hank Pym who had long since given up the name.\nLang steals the suit to help his sick daughter.\nWhen Pym finds out, he gives the suit to Lang, allowing him to become the second Ant-Man. ", mynumber: 11),
               Character(name: "Peter J. Quill", species: "Human/Celestial Hybrid", gender: "Male",age:"37", textInfo: "Peter Quill is the first and current Star-Lord, a human-alien hybrid and leader of the Guardians of the Galaxy.\nHe is the son of J'son of Spartax who is King of the Spartoi Empire.", mynumber: 12),
               Character(name: "Gamora", species: "Zehoberei", gender: "Female",age:"27(Zehoberei years)", textInfo: "The sole surviving member of the Zen Whoberi, Gamora, was saved as a child by Thanos.\nThrough Thanos' augmentation and training she became a highly skilled and feared galactic assassin.\nUsing her new formidable skills and abilities, she gained the reputation and title of The Deadliest Woman in the Universe.", mynumber: 13),
               Character(name: "Thanos", species: "Titan", gender: "Male",age:"Unknown", textInfo: "An Eternal with the Deviant gene, making him unique and extremely powerful, even amongst his own kind.\nAbove all else, Thanos loves and worships Mistress Death. Few can equal his intelligence, strength, and ambition for power.\nThanos has wielded the Cosmic Cube, the Infinity Gauntlet, and even the Heart of the Universe.", mynumber: 15),
               Character(name: "Loki Odinson", species: "Frost Giant", gender: "Male",age:"1053", textInfo: "Loki is Jötunn/Asgardian God of Mischief and Prince of Lies, the adopted son of Odin and typically the archenemy of his brother, Thor, as well as the adoptive brother to former Guardian of the Galaxy, Angela.\nLoki has schemed against Thor and Asgard for ages and his cosmic meddling led to the formation of the Avengers.\nRecently reincarnated as a teen, he has decided to try to reform, and is now a part of the Young Avengers.", mynumber: 14),]
    
    

    var people = [NSManagedObject]()
    var myArray = [NSManagedObject]()
    var audioPlayer :AVAudioPlayer = AVAudioPlayer()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        deleteAllRecords()
     
        let AssortedMusics = NSURL(fileURLWithPath: Bundle.main.path(forResource: "Avengers", ofType: "mp3")!)
        audioPlayer = try! AVAudioPlayer (contentsOf: AssortedMusics as URL)
        audioPlayer.setVolume(20.0, fadeDuration: 2)
        audioPlayer.prepareToPlay()
        audioPlayer.numberOfLoops = -1
        audioPlayer.play()
        
        
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        let managedContext = appDelegate.persistentContainer.viewContext// This one is created to work with Managed Object
        let entity = NSEntityDescription.entity(forEntityName: "CHC1",in: managedContext)!
        
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
        
        
        
        person0.setValue(CHS[0].species , forKeyPath: "species")
        person0.setValue(CHS[0].name , forKeyPath: "title")
        person0.setValue(CHS[0].gender, forKeyPath: "gender")
        person0.setValue(CHS[0].textInfo, forKey: "information")
        person0.setValue(CHS[0].age, forKey: "age")
        person0.setValue(CHS[0].mynumber, forKey: "number")
        
        person1.setValue(CHS[1].species , forKeyPath: "species")
        person1.setValue(CHS[1].name , forKeyPath: "title")
        person1.setValue(CHS[1].gender, forKeyPath: "gender")
        person1.setValue(CHS[1].textInfo, forKey: "information")
        person1.setValue(CHS[1].age, forKey: "age")
        person1.setValue(CHS[1].mynumber, forKey: "number")
        
        person2.setValue(CHS[2].species , forKeyPath: "species")
        person2.setValue(CHS[2].name , forKeyPath: "title")
        person2.setValue(CHS[2].gender, forKeyPath: "gender")
        person2.setValue(CHS[2].textInfo, forKey: "information")
        person2.setValue(CHS[2].age, forKey: "age")
        person2.setValue(CHS[2].mynumber, forKey: "number")
        
        person3.setValue(CHS[3].species , forKeyPath: "species")
        person3.setValue(CHS[3].name , forKeyPath: "title")
        person3.setValue(CHS[3].gender, forKeyPath: "gender")
        person3.setValue(CHS[3].textInfo, forKey: "information")
        person3.setValue(CHS[3].age, forKey: "age")
        person3.setValue(CHS[3].mynumber, forKey: "number")
        
        person4.setValue(CHS[4].species , forKeyPath: "species")
        person4.setValue(CHS[4].name , forKeyPath: "title")
        person4.setValue(CHS[4].gender, forKeyPath: "gender")
        person4.setValue(CHS[4].textInfo, forKey: "information")
        person4.setValue(CHS[4].age, forKey: "age")
        person4.setValue(CHS[4].mynumber, forKey: "number")
        
        person5.setValue(CHS[5].species , forKeyPath: "species")
        person5.setValue(CHS[5].name , forKeyPath: "title")
        person5.setValue(CHS[5].gender, forKeyPath: "gender")
        person5.setValue(CHS[5].textInfo, forKey: "information")
        person5.setValue(CHS[5].age, forKey: "age")
        person5.setValue(CHS[5].mynumber, forKey: "number")
        
        person6.setValue(CHS[6].species , forKeyPath: "species")
        person6.setValue(CHS[6].name , forKeyPath: "title")
        person6.setValue(CHS[6].gender, forKeyPath: "gender")
        person6.setValue(CHS[6].textInfo, forKey: "information")
        person6.setValue(CHS[6].age, forKey: "age")
        person6.setValue(CHS[6].mynumber, forKey: "number")
        
        person7.setValue(CHS[7].species , forKeyPath: "species")
        person7.setValue(CHS[7].name , forKeyPath: "title")
        person7.setValue(CHS[7].gender, forKeyPath: "gender")
        person7.setValue(CHS[7].textInfo, forKey: "information")
        person7.setValue(CHS[7].age, forKey: "age")
        person7.setValue(CHS[7].mynumber, forKey: "number")
        
        person8.setValue(CHS[8].species , forKeyPath: "species")
        person8.setValue(CHS[8].name , forKeyPath: "title")
        person8.setValue(CHS[8].gender, forKeyPath: "gender")
        person8.setValue(CHS[8].textInfo, forKey: "information")
        person8.setValue(CHS[8].age, forKey: "age")
        person8.setValue(CHS[8].mynumber, forKey: "number")
        
        person9.setValue(CHS[9].species , forKeyPath: "species")
        person9.setValue(CHS[9].name , forKeyPath: "title")
        person9.setValue(CHS[9].gender, forKeyPath: "gender")
        person9.setValue(CHS[9].textInfo, forKey: "information")
        person9.setValue(CHS[9].age, forKey: "age")
        person9.setValue(CHS[9].mynumber, forKey: "number")
        
        person10.setValue(CHS[10].species , forKeyPath: "species")
        person10.setValue(CHS[10].name , forKeyPath: "title")
        person10.setValue(CHS[10].gender, forKeyPath: "gender")
        person10.setValue(CHS[10].textInfo, forKey: "information")
        person10.setValue(CHS[10].age, forKey: "age")
        person10.setValue(CHS[10].mynumber, forKey: "number")
        
        person11.setValue(CHS[11].species , forKeyPath: "species")
        person11.setValue(CHS[11].name , forKeyPath: "title")
        person11.setValue(CHS[11].gender, forKeyPath: "gender")
        person11.setValue(CHS[11].textInfo, forKey: "information")
        person11.setValue(CHS[11].age, forKey: "age")
        person11.setValue(CHS[11].mynumber, forKey: "number")
        
        person12.setValue(CHS[12].species , forKeyPath: "species")
        person12.setValue(CHS[12].name , forKeyPath: "title")
        person12.setValue(CHS[12].gender, forKeyPath: "gender")
        person12.setValue(CHS[12].textInfo, forKey: "information")
        person12.setValue(CHS[12].age, forKey: "age")
        person12.setValue(CHS[12].mynumber, forKey: "number")
        
        person13.setValue(CHS[13].species , forKeyPath: "species")
        person13.setValue(CHS[13].name , forKeyPath: "title")
        person13.setValue(CHS[13].gender, forKeyPath: "gender")
        person13.setValue(CHS[13].textInfo, forKey: "information")
        person13.setValue(CHS[13].age, forKey: "age")
        person13.setValue(CHS[13].mynumber, forKey: "number")
        
        person14.setValue(CHS[14].species , forKeyPath: "species")
        person14.setValue(CHS[14].name , forKeyPath: "title")
        person14.setValue(CHS[14].gender, forKeyPath: "gender")
        person14.setValue(CHS[14].textInfo, forKey: "information")
        person14.setValue(CHS[14].age, forKey: "age")
        person14.setValue(CHS[14].mynumber, forKey: "number")
        
        
        
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
 
        } catch let error as NSError {
            print("Could not save. \(error), \(error.userInfo)")
        }
        
        
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "CHC1")
        let sortDescriptor = NSSortDescriptor(key: "number", ascending: true)
        fetchRequest.sortDescriptors = [sortDescriptor]
        do {
            let request = try managedContext.fetch(fetchRequest)
            
            for i in 0..<request.count{
                myArray.append(request[i])
            }
        
        }
            
        catch let error as NSError {
            print("Could not fetch. \(error), \(error.userInfo)")
        }
 
    }
    func deleteAllRecords() {
        let delegate = UIApplication.shared.delegate as! AppDelegate
        let context = delegate.persistentContainer.viewContext
        
        let deleteFetch = NSFetchRequest<NSFetchRequestResult>(entityName: "CHC1")
        let deleteRequest = NSBatchDeleteRequest(fetchRequest: deleteFetch)
        
        do {
            try context.execute(deleteRequest)
            try context.save()
        } catch {
            print ("There was an error")
        }
    }
    

    @IBAction func buttonGo(_ sender: UIButton) {

        if sender.titleLabel?.text == "IRON MAN"{
            word = myArray[0].value(forKey: "title") as! String
            word1 = myArray[0].value(forKey: "gender") as! String
            word2 = myArray[0].value(forKey: "species") as! String
            word3 = myArray[0].value(forKey: "age") as! String
            word4 = myArray[0].value(forKey: "information") as! String
            buttonIMAGE = UIImage(named: "Iron_Man") as! UIImage
            WORD1 = "IRON MAN"
            WORD2 = "IRON MAN 2"
            WORD3 = "IRON MAN 3"
            
            
         
            
        }
        if sender.titleLabel?.text == "THOR"{
            word = myArray[1].value(forKey: "title") as! String
            word1 = myArray[1].value(forKey: "gender") as! String
            word2 = myArray[1].value(forKey: "species") as! String
            word3 = myArray[1].value(forKey: "age") as! String
            word4 = myArray[1].value(forKey: "information") as! String
            buttonIMAGE = UIImage(named: "Thor") as! UIImage
            WORD1 = "THOR"
            WORD2 = "THOR : THE DARK WORLD"
            WORD3 = "THOR : RAGNAROK"
            
        }
        if sender.titleLabel?.text == "CAPTAIN AMERICA"{
            word = myArray[2].value(forKey: "title") as! String
            word1 = myArray[2].value(forKey: "gender") as! String
            word2 = myArray[2].value(forKey: "species") as! String
            word3 = myArray[2].value(forKey: "age") as! String
            word4 = myArray[2].value(forKey: "information") as! String
            buttonIMAGE = UIImage(named: "CAP") as! UIImage
            WORD1 = "CAPTAIN AMERICA: THE FIRST AVENGER"
            WORD2 = "CAPTAIN AMERICA: THE WINTER SOLDIER"
            WORD3 = "CAPTAIN AMERICA: CIVIL WAR"
          
        }
        if sender.titleLabel?.text == "HULK"{
            word = myArray[3].value(forKey: "title") as! String
            word1 = myArray[3].value(forKey: "gender") as! String
            word2 = myArray[3].value(forKey: "species") as! String
            word3 = myArray[3].value(forKey: "age") as! String
            word4 = myArray[3].value(forKey: "information") as! String
             buttonIMAGE = UIImage(named: "hulk") as! UIImage
            
            WORD1 = "THE INCREDIBLE HULK"
            WORD2 = ""
            WORD3 = ""

        }
        if sender.titleLabel?.text == "HAWKEYE"{
            word = myArray[4].value(forKey: "title") as! String
            word1 = myArray[4].value(forKey: "gender") as! String
            word2 = myArray[4].value(forKey: "species") as! String
            word3 = myArray[4].value(forKey: "age") as! String
            word4 = myArray[4].value(forKey: "information") as! String
            buttonIMAGE = UIImage(named: "Hawkeye") as! UIImage
            WORD1 = ""
            WORD2 = ""
            WORD3 = ""
     
        }
        if sender.titleLabel?.text == "BLACK WIDOW"{
            word = myArray[5].value(forKey: "title") as! String
            word1 = myArray[5].value(forKey: "gender") as! String
            word2 = myArray[5].value(forKey: "species") as! String
            word3 = myArray[5].value(forKey: "age") as! String
            word4 = myArray[5].value(forKey: "information") as! String
            buttonIMAGE = UIImage(named: "Natasha") as! UIImage
            WORD1 = ""
            WORD2 = ""
            WORD3 = ""
     
        }
        if sender.titleLabel?.text == "SPIDER-MAN"{
            word = myArray[6].value(forKey: "title") as! String
            word1 = myArray[6].value(forKey: "gender") as! String
            word2 = myArray[6].value(forKey: "species") as! String
            word3 = myArray[6].value(forKey: "age") as! String
            word4 = myArray[6].value(forKey: "information") as! String
            buttonIMAGE = UIImage(named: "Spider-Man") as! UIImage
            
            WORD1 = "SPIDER-MAN : HOMECOMING"
            WORD2 = ""
            WORD3 = ""
        
        }
        if sender.titleLabel?.text == "VISION"{
            word = myArray[7].value(forKey: "title") as! String
            word1 = myArray[7].value(forKey: "gender") as! String
            word2 = myArray[7].value(forKey: "species") as! String
            word3 = myArray[7].value(forKey: "age") as! String
            word4 = myArray[7].value(forKey: "information") as! String
            buttonIMAGE = UIImage(named: "Vision") as! UIImage
            WORD1 = ""
            WORD2 = ""
            WORD3 = ""
    
        }
        if sender.titleLabel?.text == "SCARLET WITCH"{
            word = myArray[8].value(forKey: "title") as! String
            word1 = myArray[8].value(forKey: "gender") as! String
            word2 = myArray[8].value(forKey: "species") as! String
            word3 = myArray[8].value(forKey: "age") as! String
            word4 = myArray[8].value(forKey: "information") as! String
             buttonIMAGE = UIImage(named: "Scarlet_Witch") as! UIImage
            WORD1 = ""
            WORD2 = ""
            WORD3 = ""
           
    
        }
        if sender.titleLabel?.text == "BLACK PANTHER"{
            word = myArray[9].value(forKey: "title") as! String
            word1 = myArray[9].value(forKey: "gender") as! String
            word2 = myArray[9].value(forKey: "species") as! String
            word3 = myArray[9].value(forKey: "age") as! String
            word4 = myArray[9].value(forKey: "information") as! String
            buttonIMAGE = UIImage(named: "BlackPanther") as! UIImage
            
            WORD1 = "BLACK PANTHER"
            WORD2 = ""
            WORD3 = ""
         
        }
        if sender.titleLabel?.text == "ANT-MAN"{
            word = myArray[10].value(forKey: "title") as! String
            word1 = myArray[10].value(forKey: "gender") as! String
            word2 = myArray[10].value(forKey: "species") as! String
            word3 = myArray[10].value(forKey: "age") as! String
            word4 = myArray[10].value(forKey: "information") as! String
            buttonIMAGE = UIImage(named: "AntMan") as! UIImage
            
            WORD1 = "ANT-MAN"
            WORD2 = ""
            WORD3 = ""
           
        }
        if sender.titleLabel?.text == "GAMORA"{
            word = myArray[12].value(forKey: "title") as! String
            word1 = myArray[12].value(forKey: "gender") as! String
            word2 = myArray[12].value(forKey: "species") as! String
            word3 = myArray[12].value(forKey: "age") as! String
            word4 = myArray[12].value(forKey: "information") as! String
            buttonIMAGE = UIImage(named: "Gamora") as! UIImage
            
            WORD1 = "GUARDIANS OF THE GALAXY"
            WORD2 = "GUARDIANS OF THE GALAXY VOL.2"
            WORD3 = ""
          
        }
        if sender.titleLabel?.text == "STAR LORD"{
            word = myArray[11].value(forKey: "title") as! String
            word1 = myArray[11].value(forKey: "gender") as! String
            word2 = myArray[11].value(forKey: "species") as! String
            word3 = myArray[11].value(forKey: "age") as! String
            word4 = myArray[11].value(forKey: "information") as! String
            buttonIMAGE = UIImage(named: "PeterQ") as! UIImage
            WORD1 = "GUARDIANS OF THE GALAXY"
            WORD2 = "GUARDIANS OF THE GALAXY VOL.2"
            WORD3 = ""
       
        }
        if sender.titleLabel?.text == "LOKI"{
            word = myArray[13].value(forKey: "title") as! String
            word1 = myArray[13].value(forKey: "gender") as! String
            word2 = myArray[13].value(forKey: "species") as! String
            word3 = myArray[13].value(forKey: "age") as! String
            word4 = myArray[13].value(forKey: "information") as! String
            buttonIMAGE = UIImage(named: "Loki") as! UIImage
            
            WORD1 = "THOR"
            WORD2 = "THOR : THE DARK WORLD"
            WORD3 = "THOR : RAGNAROK"
        
        }
        if sender.titleLabel?.text == "THANOS"{
            word = myArray[14].value(forKey: "title") as! String
            word1 = myArray[14].value(forKey: "gender") as! String
            word2 = myArray[14].value(forKey: "species") as! String
            word3 = myArray[14].value(forKey: "age") as! String
            word4 = myArray[14].value(forKey: "information") as! String
            buttonIMAGE = UIImage(named: "Thanos") as! UIImage
            WORD1 = "INFINITY WAR"
            WORD2 = ""
            WORD3 = ""
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let viewControllerB = segue.destination as? INFOCHAR{
            
            viewControllerB.text = word
            viewControllerB.text1 = word1
            viewControllerB.text2 = word2
            viewControllerB.text3 = word3
            viewControllerB.text4 = word4
            viewControllerB.TEXT1 = WORD1
            viewControllerB.TEXT2 = WORD2
            viewControllerB.TEXT3 = WORD3
            viewControllerB.myImage = buttonIMAGE
        }
    }
    

}//end of class
