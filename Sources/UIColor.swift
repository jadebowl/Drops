//
//  UIColor.swift
//  Drops
//
//  Created by Giada Ciotola on 02/08/23.
//

import UIKit

extension UIColor {
    func contrastColor() -> UIColor {
        var d = CGFloat(0)
        var r = CGFloat(0)
        var g = CGFloat(0)
        var b = CGFloat(0)
        var a = CGFloat(0)
        
        self.getRed(&r, green: &g, blue: &b, alpha: &a)
        
        let luminance = 1 - ((0.299 * r) + (0.587 * g) + (0.114 * b))
        
        if luminance < 0.5 {
            d = CGFloat(0) /// bright colors - black font
        } else {
            d = CGFloat(1) /// dark colors - white font
        }
        
        return UIColor(red: d, green: d, blue: d, alpha: 1)
    }
}
