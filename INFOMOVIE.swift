//
//  INFOMOVIE.swift
//  LASTPROJECT
//
//  Created by Ekin Silahlioglu,Selin Yesilselve on 18.05.2018.
//  Copyright © 2018 Ekin Silahlioglu,Selin Yesilselve. All rights reserved.
//

import UIKit
import CoreData


class INFOMOVIE: UIViewController {

    @IBOutlet weak var labelname: UILabel!
    @IBOutlet weak var labelYear: UILabel!
    @IBOutlet weak var labelDirector: UILabel!
    @IBOutlet weak var labelInfo: UITextView!
    @IBOutlet weak var labelImage: UIImageView!
    
 
    var text: String? = nil
    var text1: String? = nil
    var text2: String? = nil
    var text3: String? = nil
    var myImage : UIImage? = nil
    

    override func viewDidLoad() {
        super.viewDidLoad()
        labelInfo.isEditable = false
        labelname.text = text
        labelYear.text = text1
        labelDirector.text = text2
        labelInfo.text = text3
        labelImage.image = myImage
        
    }


}
