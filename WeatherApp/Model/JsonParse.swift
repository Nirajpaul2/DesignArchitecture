//
//  JsonParse.swift
//  WeatherApp
//
//  Created by administrator on 19/11/19.
//  Copyright © 2019 administrator. All rights reserved.
//

import Foundation

class Jsonparse{
   static let singleton = Jsonparse()

    //Login
    func loginApiCall(completion: @escaping(weatherModel) -> Void){
        
        ApiParser.singleton.getdatapi(url: constant.urlString) { (response) in
            
           let weatherObject = ObjecCreation.getdata(dicRes: response)
            completion(weatherObject)
        }
    }
    
    //Registration
    func registrationApiCall(){
        
        ApiParser.singleton.getPost(url: constant.urlString, parameter: [:]) { (response) in
            
            
        }
       
    }
    
    //ForgetPassword
    
}
