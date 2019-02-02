//
//  SimpleView.swift
//  SimpleLines
//
//  Created by Miguel Vicario on 13/10/18.
//  Copyright © 2018 Miguel Vicario. All rights reserved.
//

import UIKit

class SimpleView: UIView {
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()
        context?.setStrokeColor(UIColor.orange.cgColor)
        context?.setLineWidth(5)
        context?.move(to: CGPoint(x: 50, y: 50))
        context?.addLine(to: CGPoint(x: 150, y: 50))
        context?.addQuadCurve(to: CGPoint(x: 160, y: 60), control: CGPoint(x: 160, y: 50))
        context?.addLine(to: CGPoint(x: 160, y: 160))
        context?.addQuadCurve(to: CGPoint(x: 150, y: 170), control: CGPoint(x: 160, y: 170))
        context?.addLine(to: CGPoint(x: 50, y: 170))
        context?.addQuadCurve(to: CGPoint(x: 40, y: 160), control: CGPoint(x: 40, y: 170))
        context?.addLine(to: CGPoint(x: 40, y: 60))
        context?.addQuadCurve(to: CGPoint(x: 50, y: 50), control: CGPoint(x: 40, y: 50))
        context?.strokePath()
    }
}
