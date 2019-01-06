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
    
    var animator: UIViewPropertyAnimator!

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupLayout()
        setupVisualEffect()
        
    }
    
    fileprivate func setupLayout() {
        addSubview(headerImage)
        headerImage.translatesAutoresizingMaskIntoConstraints = false
        headerImage.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        headerImage.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        headerImage.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        headerImage.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
    }
    
    fileprivate func setupVisualEffect() {
        
        animator = UIViewPropertyAnimator(duration: 3.0, curve: .linear, animations: {
            self.setupUpBlurrEffect()
        })
        
    }
    
    fileprivate func setupUpBlurrEffect() {
        let blurrEffect = UIBlurEffect(style: .regular)
        let visualEffect = UIVisualEffectView(effect: blurrEffect)
        
        self.addSubview(visualEffect)
        visualEffect.translatesAutoresizingMaskIntoConstraints = false
        visualEffect.topAnchor.constraint(equalTo: topAnchor).isActive = true
        visualEffect.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        visualEffect.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        visualEffect.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
