//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Ben Myers on 12/4/17.
//  Copyright © 2017 Ben Myers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var imageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func enter(_ sender: Any) {
        
        label.text = textField.text
        
        self.resignFirstResponder()
    }
    
    @IBAction func show(_ sender: Any) {
        
        imageView.isHidden = false;
        
    }
    
    @IBAction func hide(_ sender: Any) {
        
        imageView.isHidden = true;
    }
    
    
}

