//
//  ViewController.swift
//  Zer0
//
//  Created by fathy  on 7/26/19.
//  Copyright © 2019 fathy . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var sw: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func ClickSwitch(_ sender: Any) {
        if sw .isOn{
            let home = storyboard?.instantiateViewController(withIdentifier: "switchViewController") as?switchViewController
            present(home!, animated: true, completion: nil)
        } else{
            dismiss(animated: true, completion: nil)
        }
        
    }
    
}

