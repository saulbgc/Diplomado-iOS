//
//  SquareView.swift
//  SimpleLines
//
//  Created by Saul G on 13/10/18.
//  Copyright © 2018 SaulG. All rights reserved.
//

import UIKit

class SquareView: UIView {

    override func draw(_ rect: CGRect) {
        // Drawing code
        let aPath = UIBezierPath()
        aPath.lineWidth = 4
        aPath.move(to: CGPoint(x: 10, y: 0))
        aPath.addLine(to: CGPoint(x: frame.width - 10, y: 0))
        aPath.addQuadCurve(to: CGPoint(x: frame.width, y: 10), controlPoint: CGPoint(x: frame.width, y: 0))
        UIColor.black.set()
        aPath.stroke()
//        context?.setLineWidth(2)
//        context?.setStrokeColor(UIColor.blue.cgColor)
//        context?.move(to: CGPoint(x: 60, y: 50))
//        context?.addLine(to: CGPoint(x: 150, y: 50))
//        context?.addQuadCurve(to: CGPoint (x: 160, y: 60), control: CGPoint (x: 160, y: 50))
//        context?.addLine(to: CGPoint(x: 160, y: 150))
//        context?.addQuadCurve(to: CGPoint (x: 150, y: 160), control: CGPoint (x: 160, y: 160))
//        context?.addLine(to: CGPoint(x: 60, y: 160))
//        context?.addQuadCurve(to: CGPoint (x: 50, y: 150), control: CGPoint (x: 50, y: 160))
//        context?.addLine(to: CGPoint(x: 50, y: 60))
//        context?.addQuadCurve(to: CGPoint (x: 60, y: 50), control: CGPoint (x: 50, y: 50))
//        //context?.addLine(to: CGPoint(x: 200, y: frame.height))
//
//        context?.strokePath()
    }

}
