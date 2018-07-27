//
//  StarCellTableViewCell.swift
//  ProjetoWebService
//
//  Created by labmacmini12 on 27/07/2018.
//  Copyright © 2018 cursoIOS. All rights reserved.
//

import UIKit

class StarCell: UITableViewCell {

    @IBOutlet weak var vrStars: StarView!
    @IBOutlet weak var vrLabel: UILabel!
    @IBOutlet weak var vrImagem: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
