//
//  ViewController.swift
//  Animaciones
//
//  Created by Diego Pais on 5/6/16.
//  Copyright © 2016 Universidad Catolica. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var animatedView: UIView!
    @IBOutlet weak var animatedView2: UIView!
    @IBOutlet weak var animatedView3: UIView!
    @IBOutlet weak var animatedViewHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var animatedViewTopMarginConstraint: NSLayoutConstraint!
    
    var changed = false
    
    let duration = 2.0
    let delay = 0.0
    let options = UIViewKeyframeAnimationOptions.CalculationModePaced
    let fullRotation = CGFloat(M_PI * 2)

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
//    MARK: Actions
    
    @IBAction func animate(sender: UIButton) {
        
        self.changed = !self.changed
        
        //self.animatedViewHeightConstraint.constant += self.changed ? 100 : -100
        //self.animatedViewTopMarginConstraint.constant += self.changed ? 50 : -50

        
        UIView.animateKeyframesWithDuration(duration, delay: delay, options: options, animations: {
            
            //cuadrado verde
            UIView.addKeyframeWithRelativeStartTime(0, relativeDuration: 0, animations: {
                self.animatedView.transform = CGAffineTransformMakeRotation(1/3 * self.fullRotation)
            })
            
            UIView.addKeyframeWithRelativeStartTime(0, relativeDuration: 0, animations: {
                self.animatedView.transform = CGAffineTransformMakeRotation(2/3 * self.fullRotation)
            })
            
            UIView.addKeyframeWithRelativeStartTime(0, relativeDuration: 0, animations: {
                self.animatedView.transform = CGAffineTransformMakeRotation(3/3 * self.fullRotation)
            })
            
            //cuadrado amarillo
            UIView.addKeyframeWithRelativeStartTime(0, relativeDuration: 0, animations: {
                self.animatedView2.transform = CGAffineTransformMakeRotation(5/5 * self.fullRotation)
            })
            
            UIView.addKeyframeWithRelativeStartTime(0, relativeDuration: 0, animations: {
                self.animatedView2.transform = CGAffineTransformMakeRotation(4/5 * self.fullRotation)
            })
            
            UIView.addKeyframeWithRelativeStartTime(0, relativeDuration: 0, animations: {
                self.animatedView2.transform = CGAffineTransformMakeRotation(3/5 * self.fullRotation)
            })
            
            UIView.addKeyframeWithRelativeStartTime(0, relativeDuration: 0, animations: {
                self.animatedView2.transform = CGAffineTransformMakeRotation(2/5 * self.fullRotation)
            })
            
            
            UIView.addKeyframeWithRelativeStartTime(0, relativeDuration: 0, animations: {
                self.animatedView2.transform = CGAffineTransformMakeRotation(1/5 * self.fullRotation)
            })

            //rosado
            UIView.addKeyframeWithRelativeStartTime(0, relativeDuration: 0, animations: {
                self.animatedView3.transform = CGAffineTransformMakeRotation(3/3 * self.fullRotation)
            })
            
            UIView.addKeyframeWithRelativeStartTime(0, relativeDuration: 0, animations: {
                self.animatedView3.transform = CGAffineTransformMakeRotation(2/3 * self.fullRotation)
            })
            
            UIView.addKeyframeWithRelativeStartTime(0, relativeDuration: 0, animations: {
                self.animatedView3.transform = CGAffineTransformMakeRotation(1/3 * self.fullRotation)
            })

            
            }, completion: nil)
        
            
        
//        Simple
//        
//        UIView.animateWithDuration(0.5, animations: {
//
//            self.animatedView.alpha = self.changed ? 0.3 : 1.0
//
//
//            self.animatedView.backgroundColor = self.changed ? UIColor.redColor() : UIColor.greenColor()
//
//
//            self.animatedView.superview?.layoutSubviews()
//
//            }) { (finished) in
//                
//        }
        
        
        
//        With Options
//
//        UIView.animateWithDuration(0.5, delay: 0.0, options: .CurveEaseOut, animations: {
//            
//            self.animatedView.superview?.layoutSubviews()
//            
//            }) { (finished) in
//                
//        }
        
        
//        With Spring
//        UIView.animateWithDuration(0.8, delay: 0.0, usingSpringWithDamping: 0.4, initialSpringVelocity: 0.0, options: .CurveEaseInOut, animations: {
//            
//            self.animatedView.superview?.layoutSubviews()
//            
//            }) { (finished) in
//                
//        }

        
    }

}

