import UIKit

class Dot: CAShapeLayer {
    
    let radius:CGFloat = 3
    
    init(position:CGPoint, color:UIColor) {
        super.init()
        
        let circlePath = UIBezierPath(
            arcCenter: position,
            radius: radius,
            startAngle: CGFloat(0),
            endAngle:CGFloat(Double.pi * 2),
            clockwise: true
        )
        
        path = circlePath.cgPath
        //change the fill color
        fillColor = color.cgColor
        //you can change the stroke color
        strokeColor = UIColor.clear.cgColor
        //you can change the line width
        lineWidth = 1.0
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
