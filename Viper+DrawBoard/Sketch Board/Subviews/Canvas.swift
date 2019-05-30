//
//  Canvas.swift
//  Viper+DrawBoard
//
//  Created by Alberto Huerdo on 1/4/19.
//  Copyright © 2019 huerdo. All rights reserved.
//

import UIKit

class Canvas: UIView {

    var lines = [[CGPoint]]()
    var color: CGColor = UIColor.blue.cgColor
    
    
    override func draw(_ rect: CGRect) {
        //custom drawing
        super.draw(rect)
        
        print(rect)
        print(self.frame)
        print(self.bounds)
        
        guard let context = UIGraphicsGetCurrentContext() else { return }
        
        context.setStrokeColor(color)
        context.setLineWidth(10)
        context.setLineCap(.round)
        
        lines.forEach { (line) in
            for (i, p) in line.enumerated() {
                
                let _p = CGPoint(x: p.x, y: p.y - self.frame.origin.y)
                
                if i == 0 {
                    context.move(to: _p)
                } else {
                    context.addLine(to: _p)
                }
            }
        }
        
        
        context.strokePath()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        lines.append([CGPoint]())
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let point = touches.first?.location(in: nil) else { return }
        
        guard var lastLine = lines.popLast() else { return }
        
        lastLine.append(point)
        
        lines.append(lastLine)
        
        setNeedsDisplay()
    }

}
