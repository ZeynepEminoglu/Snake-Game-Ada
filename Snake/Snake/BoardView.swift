//
//  BoardView.swift
//  Snake
//
//  Created by Zeynep Eminoglu on 04/03/2024.
//

import UIKit

class BoardView: UIView {
    
    // Here I am creating the dimensions for my grid
    
    let cols: Int = 9
    let rows: Int = 7
    
    let originX: CGFloat = 53
    let originY: CGFloat = 71
    let cellSide: CGFloat = 23

    override func draw(_ rect: CGRect) {
        drawGrid()
    }
    
    func drawGrid(){
        let gridPath = UIBezierPath()
        
        for i in 0...rows{
            gridPath.move(to: CGPoint(x: originX,y: originX))
            gridPath.addLine(to: <#T##CGPoint#>)
            
        }
        
    }


}
