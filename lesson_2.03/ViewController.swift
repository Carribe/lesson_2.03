//
//  ViewController.swift
//  lesson_2.03
//
//  Created by Артём on 30.09.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var colorPanel: UIView!
    
    @IBOutlet weak var labelRedNumbers: UILabel!
    @IBOutlet weak var labelYellowNumbers: UILabel!
    @IBOutlet weak var labelBlueNumbers: UILabel!
    
    @IBOutlet weak var sliderRedValue: UISlider!
    @IBOutlet weak var sliderYellowValue: UISlider!
    @IBOutlet weak var sliderBlueValue: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sliderRedValue.value = 0.5
        sliderYellowValue.value = 0.5
        sliderBlueValue.value = 0.5
        
        labelRedNumbers.text = String((sliderRedValue.value * 100).rounded() / 100)
        labelYellowNumbers.text = String((sliderYellowValue.value * 100).rounded() / 100)
        labelBlueNumbers.text = String((sliderBlueValue.value * 100).rounded() / 100)
        
        colorPanelChanged()
    }
    
    @IBAction func sliderRedColor() {
        labelRedNumbers.text = String((sliderRedValue.value * 100).rounded() / 100)
        colorPanelChanged()
    }
    @IBAction func sliderYellowColor() {
        labelYellowNumbers.text = String((sliderYellowValue.value * 100).rounded() / 100)
        colorPanelChanged()
    }
    @IBAction func sliderBlueColor() {
        labelBlueNumbers.text = String((sliderBlueValue.value * 100).rounded() / 100)
        colorPanelChanged()
    }
}

extension ViewController {
    private func colorPanelChanged() {
        colorPanel.backgroundColor = UIColor(red: CGFloat(sliderRedValue.value), green: CGFloat(sliderYellowValue.value), blue: CGFloat(sliderBlueValue.value), alpha: 1.0)
    }
}

