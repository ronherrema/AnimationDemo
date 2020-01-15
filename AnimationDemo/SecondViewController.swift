//
//  SecondViewController.swift
//  AnimationDemo
//
//  Created by Ron Herrema on 15/01/2020.
//  Copyright © 2020 Ron Herrema. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        middleConstraint.constant -= view.bounds.width
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
//        UIView.animate(withDuration: 1.0,
//                        delay: 0,
//                        options: .curveEaseOut,
//                        animations: { self.middleConstraint.constant += self.view.bounds.width
//                                    self.view.layoutIfNeeded()},
//                        completion: nil)
        
        UIView.animate(withDuration: 1.0, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 5.5, options: .curveEaseInOut, animations: { self.middleConstraint.constant += self.view.bounds.width
            self.view.layoutIfNeeded()}, completion: nil)

    }
    
    @IBOutlet weak var middleConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var topConstraint: NSLayoutConstraint!
    

}
