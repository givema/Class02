//
//  ViewController.swift
//  Class02
//
//  Created by njcit-11 on 2019/7/6.
//  Copyright © 2019 njcit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var result = 10.2
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //我去超市买🍉
        let iGoToSupermarket = true
        
        //有🍊
        let iSeeOrange = true
        
        if iGoToSupermarket {
            
            var 🍉 = 1
            
            if iSeeOrange{
                🍉 = 10
            }
            
            print("我要买：\(🍉)个🍉")
    
            
        }
        
    }
    func add(a:Int,b:Int) -> Int {
        return a + b
    }
    
}

