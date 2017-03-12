//
//  ViewController.swift
//  Menu Desplegable in iOS
//
//  Created by Jorge Luis Limo Arispe on 12/03/17.
//  Copyright © 2017 Jorge Luis Limo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var Open: UIBarButtonItem!
    @IBOutlet weak var label: UILabel!
    
    var varView = Int()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Open.target = self.revealViewController()
        Open.action = Selector("revealToggle:")
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

