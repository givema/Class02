//
//  AsyncRequestWorker.swift
//  MVCDemo
//
//  Created by 房懷安 on 2019/2/1.
//  Copyright © 2019 房懷安. All rights reserved.
//

import Foundation
import UIKit

protocol AsyncReponseDelegate {
    func receviedReponse(_ sender: AsyncRequestWorker, responseString : String, tag : Int) -> Void
}

class AsyncRequestWorker {
    
    var reponseDelegate : AsyncReponseDelegate?
    
    func getResponse(from:String, tag:Int) -> Void {
        
        //给一个网址（www）
        let url = URL(string: from)!
        //请求这个网站（百度一下）
        let request = URLRequest(url: url)
        //配置一个组态（等待时间）
        let config = URLSessionConfiguration.default
        //生成这个会话
        let session = URLSession(configuration: config)
        //让这个会话生成数据
        let task = session.dataTask(with: request, completionHandler: { (data, response, error) in
            //强制转换（resp=）
            let httpResponse = response as! HTTPURLResponse
            let statusCode = httpResponse.statusCode
            
            if( 200 == statusCode){
                
                let dataString = NSString(data: data!, encoding: String.Encoding.utf8.rawValue)
                //转换
                let responseString = String( dataString! )
                //一键转换
                NotificationCenter.default.post(name: NSNotification.Name(rawValue: "response.received"), object: self, userInfo: ["response": responseString])
                
                self.reponseDelegate?.receviedReponse(self, responseString: responseString, tag: tag)
            }
        })
        task.resume()
    }
}
