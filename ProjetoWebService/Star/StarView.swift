//
//  StarView.swift
//  ProjetoWebService
//
//  Created by labmacmini12 on 26/07/2018.
//  Copyright © 2018 cursoIOS. All rights reserved.
//

import UIKit

@IBDesignable class StarView: UIView {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let bundle = Bundle(for: type(of:self))
        
        let view = bundle.loadNibNamed("StarView", owner: nil, options: nil)![0] as! StarView //como ele retorna um array de objetos, eu quero pegar apenas o retorno na posição ZERO
        
        view.frame = self.bounds
        
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        self.addSubview(view)
    }

}
