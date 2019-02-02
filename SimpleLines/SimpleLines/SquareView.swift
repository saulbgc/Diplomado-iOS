//
//  SquareView.swift
//  SimpleLines
//
//  Created by Miguel Vicario on 13/10/18.
//  Copyright © 2018 Miguel Vicario. All rights reserved.
//

import UIKit

class SquareView: UIView {

    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        let aPath = UIBezierPath()
        aPath.move(to: CGPoint(x: 5, y: 5))
        aPath.addLine(to: CGPoint(x: frame.width - 5, y: 5))
        aPath.addQuadCurve(to: CGPoint(x: frame.width, y: 10), controlPoint: CGPoint(x: frame.width, y: 5))
        UIColor.black.set()
        aPath.stroke()
//        let context = UIGraphicsGetCurrentContext()
//        context?.setStrokeColor(UIColor.black.cgColor)
//        context?.setLineWidth(5)
//        context?.move(to: CGPoint(x: 10, y: 0))
//        context?.addLine(to: CGPoint(x: frame.width - 10, y: 0))
//        context?.addQuadCurve(to: CGPoint(x: frame.width, y: 10), control: CGPoint(x: frame.width, y: 0))
//        print(context?.currentPointOfPath)
//        context?.strokePath()
    }

}
