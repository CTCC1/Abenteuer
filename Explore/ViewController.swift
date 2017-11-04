//
//  ViewController.swift
//  Explore
//
//  Created by Hao Mou on 04/11/2017.
//  Copyright © 2017 Icosahedron. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var locationInfo: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    var i = 0
    
    @IBAction func pressButton(_ sender: UIButton) {
        if i == 0 {
            locationInfo.text = "(still nothing)"
            i += 1
        } else {
            locationInfo.text = "(Nothing yet)"
        }
        
    }
    
}

