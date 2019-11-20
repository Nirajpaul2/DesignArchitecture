//
//  objectHandeler.swift
//  WeatherApp
//
//  Created by administrator on 19/11/19.
//  Copyright © 2019 administrator. All rights reserved.
//

import Foundation
class ObjecCreation {
    static func getdata(dicRes:NSDictionary) -> weatherModel  {
        
          let weatherObj = weatherModel()
        let houreDic = dicRes["hourly"] as! NSDictionary  // ["summary"]
        let summary = houreDic["summary"] as! String
        weatherObj.name = summary
           return weatherObj
    }
}
