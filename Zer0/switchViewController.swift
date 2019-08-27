//
//  switchViewController.swift
//  Zer0
//
//  Created by fathy  on 7/26/19.
//  Copyright © 2019 fathy . All rights reserved.
//

import UIKit

class switchViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet weak var TextField: UITextField!
    
    @IBOutlet weak var stepper: UIStepper!
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        
        return true
        
    }
    
    
    
    @IBOutlet weak var labelSegment: UILabel!
    @IBOutlet weak var imag: UIImageView!
    @IBOutlet weak var segment: UISegmentedControl!
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
    
    @IBAction func sliderClick(_ sender: Any) {
        label.font = UIFont.systemFont(ofSize:CGFloat (slider!.value))
    }
    
    @IBAction func segmentClick(_ sender: Any) {
        if segment.selectedSegmentIndex == 0 {
            labelSegment.text = "fathy"
        }
        if segment.selectedSegmentIndex == 1 {
            labelSegment.text = "ahmed"
        }
        if segment.selectedSegmentIndex == 2 {
            labelSegment.text = "hassan"
        }
    }
    
    @IBAction func sliper(_ sender: Any) {
        imag.alpha = CGFloat(stepper.value)
    }
    
}
