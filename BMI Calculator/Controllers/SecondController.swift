//
//  SecondController.swift
//  BMI Calculator
//
//  Created by Odinachi David on 01/09/2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit


class SecondController : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        let button = UILabel()
        
        button.text = "I got it" as String
        button.font = UIFont(name: "", size: 30  )
        
        button.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        view.addSubview(button)
        
        
    
        
    }
    
}
