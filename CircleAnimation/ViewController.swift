//
//  ViewController.swift
//  CircleAnimation
//
//  Created by ls on 2018/5/5.
//  Copyright © 2018年 ls. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var launchBottomView: UIImageView!
    @IBOutlet weak var launchTopView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    override func viewDidAppear(_ animated: Bool) {
        startAnimation()
    }
}
//MARK: - 动画
extension ViewController {
    func startAnimation() {
       
        let centerX = launchBottomView.center.x
        let centerY = launchBottomView.center.y
        let radius = (launchBottomView.bounds.size.width - launchTopView.bounds.size.width) / 2
        
        let boundingRect = CGRect(x: centerX - radius, y: centerY - radius, width: radius * 2, height: radius * 2)
        let path = CGPath(ellipseIn: boundingRect, transform: nil)
        let animation = CAKeyframeAnimation(keyPath:"position")
        animation.duration = 3
        animation.path = path
        animation.calculationMode = kCAAnimationPaced
        animation.repeatCount = HUGE
        launchTopView.layer.add(animation, forKey:"Move")
    }
}
