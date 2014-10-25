//
//  ViewController.swift
//  Storm
//
//  Created by Michael Bardwell-Scott on 10/24/14.
//  Copyright (c) 2014 BardwellTech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let apiKey = "bf28c6dd1744dae0174e81e060b43ac4"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let baseURL = NSURL(string: "https://api.forecast.io/forecast/\(apiKey)/")
        
        let forecaseURL = NSURL(string: "37.8267,-122.423", relativeToURL: baseURL)
        
        let weatherData = NSData.dataWithContentsOfURL(forecaseURL, options: nil, error: nil)
        println(weatherData)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

