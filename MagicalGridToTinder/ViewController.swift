//
//  ViewController.swift
//  MagicalGridToTinder
//
//  Created by JGCM on 2017/5/1.
//  Copyright © 2017年 JGCM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let numViewPerRow = 15
        let width = view.frame.width / CGFloat(numViewPerRow)
        
        for i in 0..<numViewPerRow {
            let view = UIView()
            view.backgroundColor = randomColor()
            view.frame = CGRect(x: CGFloat(i) * width, y: 0, width: width, height: width)
            self.view.addSubview(view)
        }
        
        
        
    }
    
    fileprivate func randomColor() -> UIColor {
        let red = CGFloat(drand48())
        let green = CGFloat(drand48())
        let blue = CGFloat(drand48())
        return UIColor(red: red, green: green, blue: blue, alpha: 1)
    }



}

