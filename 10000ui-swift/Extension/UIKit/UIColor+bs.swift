//
//  UIColor+bs.swift
//  10000ui-swift
//
//  Created by 张亚东 on 10/10/2017.
//  Copyright © 2017 blurryssky. All rights reserved.
//

import Foundation

extension NamespaceBox where Source: UIColor {
    
    static func color(hexString: String, alpha: CGFloat = 1.0) -> UIColor? {
        var formatted = hexString.replacingOccurrences(of: "0x", with: "")
        formatted = formatted.replacingOccurrences(of: "#", with: "")
        if let hex = Int(formatted, radix: 16) {
            let red = CGFloat(CGFloat((hex & 0xFF0000) >> 16)/255.0)
            let green = CGFloat(CGFloat((hex & 0x00FF00) >> 8)/255.0)
            let blue = CGFloat(CGFloat((hex & 0x0000FF) >> 0)/255.0)
            return UIColor.init(red: red, green: green, blue: blue, alpha: alpha)
            
        } else {
            return nil
        }
    }
}
