//
//  ViewController.swift
//  ProjetoWebService
//
//  Created by labmacmini12 on 26/07/2018.
//  Copyright © 2018 cursoIOS. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    
    //Obtem o JSon do server e transforma em Objeto
    func parseJson(){
        Alamofire.request("http://silvanomalfattiml.000webhostapp.com/cardapio.json").responseJSON{
            response in
            
            if let json = response.result.value as? [String:Any]{
                if  let nome = json["company_name"] as? String,
                    let adress = json["address"] as? String,
                    let longitude = json["longitude"] as? NSString,
                    let latitude = json["latitude"] as? NSString,
                    let list = json["itens"] as? [[String:Any]]{
                    var company = Company(companyName: nome, address: adress, latitude: latitude.doubleValue, longitude: longitude.doubleValue)
                    
                    for item in list{
                        
                        if  let classification = item["classification"] as? NSString,
                            let image = item["image"] as? String,
                            let itemName = item["item_name"] as? String{
                            
                            company.listItens.append(Item(classification: classification.integerValue, image: image, itemName: itemName))
                        }
                        
                        
                    }
                }
                
            }
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        parseJson()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

