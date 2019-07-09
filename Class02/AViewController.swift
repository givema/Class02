//
//  AViewController.swift
//  Class02
//
//  Created by njcit-11 on 2019/7/9.
//  Copyright © 2019 njcit. All rights reserved.
//

import UIKit

class AViewController: UIViewController {
    
    @IBOutlet weak var lbLMeg: UITextField!
    

    @IBOutlet weak var btnHiBottomConstraint: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    @IBAction func btnTestClicked(_ sender: UIButton) {
        
        print("我按了啥？")
        
        lbLMeg.text = "我要铜锣烧"
      lbLMeg.textColor = UIColor.red
        
        
    
    }
    
    
    @objc func keyboardWillShow(notification: NSNotification) {
        let keyboardHeight = (notification.userInfo![UIResponder.keyboardFrameEndUserInfoKey] as! NSValue).cgRectValue.height
        print("猜猜看:\(keyboardHeight)")
        btnHiBottomConstraint.constant = keyboardHeight
    }
    
//    @objc func keyboardWillHide(notification: NSNotification) {
//        let keyboardHeight = (notification.userInfo![UIResponder.keyboardFrameEndUserInfoKey] as! NSValue).cgRectValue.height
//        print(keyboardHeight)
//    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
