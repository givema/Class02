//
//  ViewController.swift
//  Class02
//
//  Created by iMAC on 2019/7/10.
//  Copyright © 2019 iMACbrave. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let worker:AsyncRequestWorker = AsyncRequestWorker()
        
        worker.getResponse(from: "https://google.com", tag: 1)
        
        NotificationCenter.default.addObserver(self, selector:#selector(keyboardWillShow(notification:)) , name: NSNotification.Name(rawValue: "response.received"), object: nil)
        
       // NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(notification:)), name: UIResponder.keyboardWillShowNotification , object:nil)
        
        
    }
    // .tencent.com
    @objc func keyboardWillShow(notification: NSNotification) {
        let hope = notification.userInfo!["response"]
        print(hope)
//        let keyboardHeight = (notification.userInfo![UIResponder.keyboardFrameEndUserInfoKey] as! NSValue).cgRectValue.height
//        print("猜猜看:\(keyboardHeight)")
//        btnHiBottomConstraint.constant = keyboardHeight
    }
    
    
}

