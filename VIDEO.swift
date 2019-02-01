//
//  VIDEO.swift
//  LASTPROJECT
//
//  Created by Ekin Silahlioglu,Selin Yesilselve on 19.05.2018.
//  Copyright © 2018 Ekin Silahlioglu,Selin Yesilselve. All rights reserved.
//

import UIKit
import AVFoundation

class VIDEO: UITableViewController {
   
    override func viewDidLoad() {
        super.viewDidLoad()

      
    }

    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat
    {
        return 180.0
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 5
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 1
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0{
            return "Infinity War Official Trailer"
        }
        if section == 1{
            return "Guardians Of The Galaxy Mix"
        }
        if section == 2{
            return "Stan Lee documentary"
        }
        if section == 3{
            return "Black Panther - Official Trailer"
        }
    return "Captain Marvel Trailer"
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath) as! VIDEOTableViewCell
        // cell.indentationWidth = 135.0
        
        if indexPath.section == 0{
    
        let videoUrl = NSURL(string: "https://www.youtube.com/watch?v=6ZfuNTqbHE8")
        let requestObj = URLRequest(url: videoUrl! as URL)
         cell.lala.loadRequest(requestObj)
            
        }
        if indexPath.section == 1{
            let videoUrl = NSURL(string: "https://www.youtube.com/watch?v=biksiHRjfZI")
            let requestObj = URLRequest(url: videoUrl! as URL)
            cell.lala.loadRequest(requestObj)
        }
        if indexPath.section == 2{
            let videoUrl = NSURL(string: "https://www.youtube.com/watch?v=7vgapiQek7I")
            let requestObj = URLRequest(url: videoUrl! as URL)
            cell.lala.loadRequest(requestObj)
        }
        if indexPath.section == 3{
            let videoUrl = NSURL(string: "https://www.youtube.com/watch?v=xjDjIWPwcPU")
            let requestObj = URLRequest(url: videoUrl! as URL)
            cell.lala.loadRequest(requestObj)
        }
        if indexPath.section == 4 {
            let videoUrl = NSURL(string: "https://www.youtube.com/watch?v=o5j-JdOxOJw")
            let requestObj = URLRequest(url: videoUrl! as URL)
            cell.lala.loadRequest(requestObj)
        }
        
        return cell
    }
 
}
