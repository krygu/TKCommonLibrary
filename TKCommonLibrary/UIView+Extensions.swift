//
//  UIView+Extensions.swift
//  TKCommonLibrary
//
//  Created by Kryg Tomasz on 06.02.2018.
//  Copyright © 2018 Kryg Tomasz. All rights reserved.
//

import UIKit

extension UIView {
    
    func addShadow() {
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOffset = CGSize(width: 0, height: 10)
        self.layer.shadowRadius = 5
        self.layer.shouldRasterize = false
        self.layer.shadowOpacity = 0.4
        self.layer.masksToBounds = false
    }
    
    func addParallaxEffect(_ amount: Int) {
        let horizontal = UIInterpolatingMotionEffect(keyPath: "center.x", type: .tiltAlongHorizontalAxis)
        horizontal.minimumRelativeValue = -amount
        horizontal.maximumRelativeValue = amount
        
        let vertical = UIInterpolatingMotionEffect(keyPath: "center.y", type: .tiltAlongVerticalAxis)
        vertical.minimumRelativeValue = -amount
        vertical.maximumRelativeValue = amount
        
        let group = UIMotionEffectGroup()
        group.motionEffects = [horizontal, vertical]
        self.addMotionEffect(group)
    }
    
}
