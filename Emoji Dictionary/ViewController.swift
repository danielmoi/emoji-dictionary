//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Daniel Moi on 5/12/17.
//  Copyright © 2017 Daniel Moi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var magicTableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        magicTableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

