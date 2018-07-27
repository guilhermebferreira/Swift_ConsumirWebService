//
//  ViewController.swift
//  ProjetoWebService
//
//  Created by labmacmini12 on 26/07/2018.
//  Copyright © 2018 cursoIOS. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var vrStars: StarView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        vrStars.numStars = 2
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

