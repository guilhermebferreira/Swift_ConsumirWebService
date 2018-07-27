//
//  Item.swift
//  ProjetoWebService
//
//  Created by labmacmini12 on 27/07/2018.
//  Copyright © 2018 cursoIOS. All rights reserved.
//

import UIKit

class Item: NSObject {
    var classification:Int
    var image:String
    var itemName:String
    
    init(classification:Int, image:String, itemName:String){
        self.classification = classification
        self.image = image
        self.itemName = itemName
    }
    
    
}
