//
//  ViewController.swift
//  WeatherApp
//
//  Created by administrator on 19/11/19.
//  Copyright © 2019 administrator. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Lbl2: UILabel!
    @IBOutlet weak var Lbl1: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        getWeatherReport()
    }
    func getWeatherReport() {
        Jsonparse.singleton.loginApiCall { (weatherObject) in
            DispatchQueue.main.async {
                self.Lbl1.text = weatherObject.name
            }
        }
    }

}

