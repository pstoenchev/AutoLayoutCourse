//
//  CodeOnlyViewController.swift
//  UIKitTest
//
//  Created by Stoyan Stoyanov on 25/09/2020.
//  Copyright © 2020 Stoyan Stoyanov. All rights reserved.
//

import UIKit


// MARK: - Class Definition

final class CodeOnlyViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let red = UIView(frame: CGRect(x: 10, y: 10, width: 100, height: 100))
        red.backgroundColor = .red
             red.translatesAutoresizingMaskIntoConstraints = false
        
        // item1 = multiplier * secondItem + constant
        
        let top = NSLayoutConstraint(item: red, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1, constant: 0)
        let left = NSLayoutConstraint(item: red, attribute: .left, relatedBy: .equal, toItem: view, attribute: .left, multiplier: 1, constant: 0)
        let right = NSLayoutConstraint(item: red, attribute: .right, relatedBy: .equal, toItem: view, attribute: .right, multiplier: 1, constant: 0)
        
        let height = NSLayoutConstraint(item: red, attribute: .height, relatedBy: .equal, toItem: view, attribute: .height, multiplier: 1, constant: 0)
        
         view.addSubview(red)
         view.addConstraints([top, left, height, right])

        
        let blue = UIView(frame: CGRect(x: 10, y: 10, width: 100, height: 100))
        blue.backgroundColor = .blue
        blue.translatesAutoresizingMaskIntoConstraints = false
        
        let topBlue = NSLayoutConstraint(item: blue, attribute: .top, relatedBy: .equal, toItem: red, attribute: .top, multiplier: 1, constant: 0)
        let leftBlue = NSLayoutConstraint(item: blue, attribute: .left, relatedBy: .equal, toItem: red, attribute: .left, multiplier: 1, constant: 0)
        let rightBlue = NSLayoutConstraint(item: blue, attribute: .right, relatedBy: .equal, toItem: red, attribute: .right, multiplier: 1, constant: 0)
              
        let heightBlue = NSLayoutConstraint(item: blue, attribute: .height, relatedBy: .equal, toItem: red, attribute: .height, multiplier: 0.5, constant: 0)
               

        
        view.addSubview(blue)
        view.addConstraints([topBlue, leftBlue, rightBlue, heightBlue])
   
    }
}
