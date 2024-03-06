//
//  BoardView.swift
//  Snake
//
//  Created by Zeynep Eminoglu on 04/03/2024.
//

import UIKit

class BoardView: UIView {
    
    // Here I am creating the dimensions for my grid
    
    let cols: Int = 19
    let rows: Int = 17
    
    let originX: CGFloat = 53 
    let originY: CGFloat = 71
    let cellSide: CGFloat = 23
    
    override func draw(_ rect: CGRect) {
        drawGrid()
    }
    
    func drawGrid(){
        let gridPath = UIBezierPath()
        
        for i in 0...rows{
            gridPath.move(to: CGPoint(x: originX,y: originY + CGFloat(i) * cellSide))
            gridPath.addLine(to: CGPoint(x: originX + CGFloat(cols) * cellSide, y: originY + CGFloat(i) * cellSide))
            
        }
        
        for i in 0...cols {
            gridPath.move(to: CGPoint(x: originX + CGFloat(i) * cellSide, y: originY))
            gridPath.addLine(to: CGPoint(x: originX + CGFloat(i) * cellSide, y: originY + CGFloat(rows) * cellSide))
            
        }
        UIColor.lightGray.setStroke()
        gridPath.stroke()
        
    }


}
