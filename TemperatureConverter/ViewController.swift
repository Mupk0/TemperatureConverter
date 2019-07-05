//
//  ViewController.swift
//  TemperatureConverter
//
//  Created by Dmitry Kulagin on 05.07.2019.
//  Copyright © 2019 Dmitry Kulagin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var farehneitLabel: UILabel! {
        didSet {
            farehneitLabel.text = "32ºF"
        }
    }
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.maximumValue = 100
            slider.minimumValue = 0
            slider.value = 0
        }
    }
    
    @IBAction func sliderValueChange(_ sender: UISlider) {
        let temperatureCelsuis = Int(sender.value)
        celsiusLabel.text = "\(temperatureCelsuis)ºC"
        let temperatureFarenheit = Int(sender.value * 9 / 5 + 32)
        farehneitLabel.text = "\(temperatureFarenheit)ºF"
    }


}

