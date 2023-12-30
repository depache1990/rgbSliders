//
//  ViewController.swift
//  rgbSliders
//
//  Created by Anton Duplin on 30/12/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var viewLabel: UIView!
    
    @IBOutlet weak var redSliderOutlet: UISlider!
    @IBOutlet weak var greenSliderOutlet: UISlider!
    @IBOutlet weak var blueSliderOutlet: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redSliderOutlet.minimumTrackTintColor = .red
        greenSliderOutlet.minimumTrackTintColor = .green
        viewLabel.layer.cornerRadius = 20
        GetSlidersAction()
      
    }
    
    @IBAction func redAction() {
        redLabel.text = String(format:"%.2f",redSliderOutlet.value)
        GetSlidersAction()
    }
    
    @IBAction func greenAction() {
        greenLabel.text = String(format:"%.2f",greenSliderOutlet.value)
        GetSlidersAction()
    }
    
    @IBAction func blueAction() {
        blueLabel.text = String(format:"%.2f",blueSliderOutlet.value)
        GetSlidersAction()
    }
    
    
    private func GetSlidersAction() {
        redLabel.text = String(format:"%.2f",redSliderOutlet.value)
        greenLabel.text = String(format:"%.2f",greenSliderOutlet.value)
        blueLabel.text = String(format:"%.2f",blueSliderOutlet.value)
        
        viewLabel.backgroundColor = UIColor(
            red: CGFloat(redSliderOutlet.value),
            green: CGFloat(greenSliderOutlet.value),
            blue: CGFloat(blueSliderOutlet.value),
            alpha: 1)
    }


    
    
}

