//
//  ApiManager.swift
//  WeatherApp
//
//  Created by administrator on 19/11/19.
//  Copyright © 2019 administrator. All rights reserved.
//

import Foundation
class ApiParser {
    
   static let singleton = ApiParser()
    
    func getdatapi(url : String , completion: @escaping(NSDictionary) -> Void ) {

        let url = NSURLComponents(string: url)!
        
        var urlRequest = URLRequest(url: url.url!) //NSMutableURLRequest(url: url!)
        
        urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
        urlRequest.httpMethod = "GET"
        //       urlRequest.encodeParameters(parameters:parameter)
        let session = URLSession.shared
        
        let task = session.dataTask(with: urlRequest as URLRequest){ data,response,error in
            
            let httpResponse = response as? HTTPURLResponse
            if (httpResponse != nil) {
                print("statusCode: \(httpResponse?.statusCode ?? 200)")
            }
            // print("\(String(describing: data))")
            
            if error != nil {
                return
            } else if (httpResponse != nil) && httpResponse?.statusCode == 401 {
                // print("statusCode: \(httpResponse?.statusCode ?? 200)")
            } else {
                let jsonResponse = try? JSONSerialization.jsonObject(with: data!, options: []) as! NSDictionary
                //  print(jsonResponse!)
                if (jsonResponse != nil) {
                    
                    if let response = response as? HTTPURLResponse, 200...299 ~= response.statusCode {
                        completion(jsonResponse!)
                    } else {
                        
                    }
                } else {
                    return
                }
            }
            
        }
        task.resume()
        
        //        }
        //        else
        //        {
        //            Common.showAlert(message: "Please check internet connection.", title:"Alert!", viewController: (APP_DELEGATE.window?.currentViewController())!)
        //
        //        }
    }
    
    
    func getPost(url : String , parameter : [String:String] , completion: @escaping(NSDictionary) -> Void ) {
        
        let url = NSURLComponents(string: url)!
        
        var urlRequest = URLRequest(url: url.url!) //NSMutableURLRequest(url: url!)
        
        urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
        urlRequest.httpMethod = "POST"
        //       urlRequest.encodeParameters(parameters:parameter)
        let session = URLSession.shared
        
        let task = session.dataTask(with: urlRequest as URLRequest){ data,response,error in
            
            let httpResponse = response as? HTTPURLResponse
            if (httpResponse != nil) {
                print("statusCode: \(httpResponse?.statusCode ?? 200)")
            }
            // print("\(String(describing: data))")
            
            if error != nil {
                return
            } else if (httpResponse != nil) && httpResponse?.statusCode == 401 {
                // print("statusCode: \(httpResponse?.statusCode ?? 200)")
            } else {
                let jsonResponse = try? JSONSerialization.jsonObject(with: data!, options: []) as! NSDictionary
                //  print(jsonResponse!)
                if (jsonResponse != nil) {
                    
                    if let response = response as? HTTPURLResponse, 200...299 ~= response.statusCode {
                        completion(jsonResponse!)
                    } else {
                        
                    }
                } else {
                    return
                }
            }
            
        }
        task.resume()
        
        //        }
        //        else
        //        {
        //            Common.showAlert(message: "Please check internet connection.", title:"Alert!", viewController: (APP_DELEGATE.window?.currentViewController())!)
        //
        //        }
    }
}
