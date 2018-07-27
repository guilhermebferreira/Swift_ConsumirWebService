//
//  ViewController.swift
//  ProjetoWebService
//
//  Created by labmacmini12 on 26/07/2018.
//  Copyright © 2018 cursoIOS. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireImage

class ViewController: UIViewController, UITableViewDataSource {
    
    
    var company:Company?

    @IBOutlet weak var vrTableView: UITableView!
    
    /******************DEFININDO METODOS DO DATASOURCE**************/
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let company = self.company{
            //verifica se o company já foi validado
            return company.listItens.count
        }else{
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = vrTableView.dequeueReusableCell(withIdentifier: "cell") as! StarCell
        
        let item = company?.listItens[indexPath.row]
        
        cell.vrLabel.text = item?.itemName
        cell.vrStars.numStars = (item?.classification)!
        
        
        
        
        // The image to dowload
        let remoteImageURL = URL(string: item!.image)!
        
        // Use Alamofire to download the image
        Alamofire.request(remoteImageURL).responseData { (response) in
            if response.error == nil {
                //   print(response.result)
                
                // Show the downloaded image:
                if let data = response.data {
                    //self.downloadImage.image = UIImage(data: data)
                    cell.vrImagem.image = UIImage(data: data)
                }
            }
        }
        
        return cell
        
    }
    
    
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
                    let company = Company(companyName: nome, address: adress, latitude: latitude.doubleValue, longitude: longitude.doubleValue)
                    
                    for item in list{
                        
                        if  let classification = item["classification"] as? NSString,
                            let image = item["image"] as? String,
                            let itemName = item["item_name"] as? String{
                            
                            company.listItens.append(Item(classification: classification.integerValue, image: image, itemName: itemName))
                        }
                    }
                    self.company = company
                    self.vrTableView.reloadData()
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

