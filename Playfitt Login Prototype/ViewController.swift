//
//  ViewController.swift
//  Playfitt Login Prototype
//
//  Created by Ryan David Forsyth on 2019-10-23.
//  Copyright © 2019 Ryan F. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var emailButton: UIButton!
    @IBOutlet var fbButton: UIButton!
    
    @IBOutlet var pinkSquareView: UIView!
    @IBOutlet var yellowTriangleImageView: UIImageView!
    @IBOutlet var blueCircleView: UIView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews();
        
        animatePinkSquare()
        
        animateYellowTriangle()
    }
     
    func setupViews() {
        
        self.emailButton.layer.cornerRadius = 35
        self.fbButton.layer.cornerRadius = 35
        
        self.pinkSquareView.layer.cornerRadius = 20
        self.pinkSquareView.transform = .init(rotationAngle: -35)
        self.view.sendSubviewToBack(pinkSquareView)
        
        self.blueCircleView.layer.cornerRadius = self.blueCircleView.frame.size.height/2
        
        
        self.view.sendSubviewToBack(yellowTriangleImageView)
    }
    
    func animateYellowTriangle() {
        
        UIView.animate(withDuration: 20,
                       delay: 0,
                       options: [.repeat],
                       animations: { () -> Void in
            self.yellowTriangleImageView.transform = self.yellowTriangleImageView.transform.rotated(by: .pi * 2)
        }) { (finished) -> Void in
            return;
        }
        
        UIView.animate(withDuration: 20,
                       delay: 0,
                       options: [.curveEaseInOut, .autoreverse, .repeat],
                       animations: { () -> Void in
            self.yellowTriangleImageView.transform = .init(translationX: 50, y: 50);
        }) { (finished) -> Void in
            return;
        }
        
    }
    
    func animatePinkSquare() {
        
        UIView.animate(withDuration: 20,
                       delay: 0,
                       options: [.repeat],
                       animations: { () -> Void in
            self.pinkSquareView.transform = self.pinkSquareView.transform.rotated(by: .pi * 2)
        }) { (finished) -> Void in
            return;
        }
        
        UIView.animate(withDuration: 20,
                       delay: 0,
                       options: [.curveEaseInOut, .autoreverse, .repeat],
                       animations: { () -> Void in
            self.pinkSquareView.transform = .init(translationX: 50, y: 50);
        }) { (finished) -> Void in
            return;
        }
        
    }

}

