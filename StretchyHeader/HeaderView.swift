//
//  HeaderView.swift
//  StretchyHeader
//
//  Created by Raghu Sairam on 06/01/19.
//  Copyright © 2019 Raghu Sairam. All rights reserved.
//

import UIKit

class HeaderView: UICollectionReusableView {
    
    
    let headerImage: UIImageView = {
        let iv = UIImageView()
        iv.image = #imageLiteral(resourceName: "stretchy_header")
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        return iv
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .red
        addSubview(headerImage)
        headerImage.translatesAutoresizingMaskIntoConstraints = false
        headerImage.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        headerImage.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        headerImage.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        headerImage.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
