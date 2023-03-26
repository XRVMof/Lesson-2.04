//
//  ViewController.swift
//  Lesson 2.04
//
//  Created by 65 on 25.03.2023.
//

import UIKit
import Foundation

final class ViewController: UIViewController {
    
    @IBOutlet weak var colorPaletteView: UIView!
    
    @IBOutlet weak var redColorSlider: UISlider!
    @IBOutlet weak var greenColorSlider: UISlider!
    @IBOutlet weak var blueColorSlider: UISlider!
    
    @IBOutlet weak var redColorValueLabel: UILabel!
    @IBOutlet weak var greenColorValueLabel: UILabel!
    @IBOutlet weak var blueColorValueLabel: UILabel!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupRedSlider()
        setupGreenSlider()
        setupBlueSlider()
        setupRedLabelValue()
        setupGreenLabelValue()
        setupBlueLabelValue()
        setupRedLabel()
        setupGreenLabel()
        setupBlueLabel()
        changePaletteColor()
        
        
    }
    
    @IBAction func changePaletteBackgroung(sender: AnyObject) {
        changePaletteColor()
    }
    
    @IBAction func redColorSliderAction() {
        redColorValueLabel.text = redColorSlider.value.formatted()
    }
  
    @IBAction func greenColorSliderAction() {
        greenColorValueLabel.text = greenColorSlider.value.formatted()
    }
    
    @IBAction func blueColorSliderAction() {
        blueColorValueLabel.text = blueColorSlider.value.formatted()
    }
    
    private func setupRedSlider() {
        redColorSlider.minimumTrackTintColor = .red
        redColorSlider.value = 0.50
        redColorSlider.minimumValue = 0
        redColorSlider.maximumValue = 1
    }
    
    private func setupRedLabelValue() {
        redColorValueLabel.text = redColorSlider.value.formatted(.number.precision(.fractionLength(2)))
        redColorValueLabel.font = UIFont.systemFont(ofSize: 17)
        redColorValueLabel.textAlignment = .center
        redColorValueLabel.textColor = .white
    }
    
    private func setupRedLabel() {
        redLabel.textColor = .white
        redLabel.font = UIFont.systemFont(ofSize: 17)
    }
    
    private func setupGreenSlider() {
        greenColorSlider.minimumTrackTintColor = .green
        greenColorSlider.value = 0.50
        greenColorSlider.minimumValue = 0
        greenColorSlider.maximumValue = 1
    }
    
    private func setupGreenLabelValue() {
        greenColorValueLabel.text = greenColorSlider.value.formatted(.number.precision(.fractionLength(2)))
        greenColorValueLabel.font = UIFont.systemFont(ofSize: 17)
        greenColorValueLabel.textAlignment = .center
        greenColorValueLabel.textColor = .white
    }
    
    private func setupGreenLabel() {
        greenLabel.textColor = .white
        greenLabel.font = UIFont.systemFont(ofSize: 17)
    }
    
    private func setupBlueSlider() {
        blueColorSlider.minimumTrackTintColor = .blue
        blueColorSlider.value = 0.50
        blueColorSlider.minimumValue = 0
        blueColorSlider.maximumValue = 1
    }
    
    private func setupBlueLabelValue() {
        blueColorValueLabel.text = blueColorSlider.value.formatted(.number.precision(.fractionLength(2)))
        blueColorValueLabel.font = UIFont.systemFont(ofSize: 17)
        blueColorValueLabel.textAlignment = .center
        blueColorValueLabel.textColor = .white
    }
    
    private func setupBlueLabel() {
        blueLabel.textColor = .white
        blueLabel.font = UIFont.systemFont(ofSize: 17)
    }
    
    private func changePaletteColor () {
        colorPaletteView.backgroundColor = UIColor(
            red: CGFloat(redColorSlider.value),
            green: CGFloat(greenColorSlider.value),
            blue: CGFloat(blueColorSlider.value),
            alpha: 1
        )
    }
    
}


