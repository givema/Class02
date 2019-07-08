//
//  ViewController.swift
//  Class02
//
//  Created by njcit-11 on 2019/7/6.
//  Copyright © 2019 njcit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var lbMeg: UILabel!
    var result = 10.2
    
    
    @IBAction func btnTestClicked(_ sender: UIButton) {
        
        print("我按了啥？")
        
        lbMeg.text = "我要铜锣烧"
        lbMeg.textColor = UIColor.red 
    }
    
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

