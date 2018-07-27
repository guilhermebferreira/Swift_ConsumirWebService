//
//  Company.swift
//  ProjetoWebService
//
//  Created by labmacmini12 on 27/07/2018.
//  Copyright © 2018 cursoIOS. All rights reserved.
//

import UIKit

class Company: NSObject {
    var companyName:String
    var address:String
    var latitude:Double
    var longitude:Double
    var listItens:[Item] = []
    
    init(companyName:String, address:String, latitude:Double, longitude:Double){
        self.companyName = companyName
        self.address = address
        self.latitude = latitude
        self.longitude = longitude
    }

}
