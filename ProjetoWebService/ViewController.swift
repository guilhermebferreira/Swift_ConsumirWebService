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
            
            if let json = response.result.value{
                
            }
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

