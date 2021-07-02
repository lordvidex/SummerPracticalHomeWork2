//
//  TextCircle.swift
//  Assignment2
//
//  Created by Evans Owamoyo on 02.07.2021.
//

import UIKit

class TextCircle: UIView {
    let gradientLayer = CAGradientLayer()
    
    @IBInspectable private var startColor: UIColor? {
        didSet {
            setUpGradients()
        }
    }
    
    @IBInspectable private var endColor: UIColor? {
        didSet {
            setUpGradients()
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        addCircleLayer()
        setUpGradients()
        
        
    }
    private func setUpGradientColors() {
        if let startColor = startColor, let endColor = endColor {
            gradientLayer.colors = [endColor.cgColor,startColor.cgColor, endColor.cgColor]
        }
    }
    private func addCircleLayer() {
        // create circular path
        let circlePath = UIBezierPath(
            arcCenter: CGPoint(x: (bounds.minX+bounds.maxX)/2,y: (bounds.minY+bounds.maxY)/2),
            radius: min(frame.height,frame.width) / 2,
            startAngle: 0,
            endAngle: CGFloat(Double.pi) * 2,
            clockwise: false
            )
        // create mask layer
        let mask = CAShapeLayer()
        mask.path = circlePath.cgPath
        gradientLayer.mask = mask
        
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        gradientLayer.frame = bounds

    }
    
    private func setUpGradients() {
        layer.addSublayer(gradientLayer)
        setUpGradientColors()
        addCircleLayer()
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 0.5,y: 1.0)
    }
}
