//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Daniel Moi on 6/12/17.
//  Copyright © 2017 Daniel Moi. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    var emoji = "NO EMOJI"
    
    @IBOutlet weak var emojiLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emojiLabel.text = emoji // AHHHH!!!!!
        if emoji == "😎" {
            descriptionLabel.text = "Sun Man!"
        }
        if emoji == "😡" {
            descriptionLabel.text = "Grrr"
        }
        if emoji == "🤮" {
            descriptionLabel.text = "Vom vom"
        }
        if emoji == "👻" {
            descriptionLabel.text = "Zombie"
        }
        if emoji == "💩" {
            descriptionLabel.text = "Poopie"
        }
        if emoji == "😈" {
            descriptionLabel.text = "Purples"
        }
        if emoji == "😆" {
            descriptionLabel.text = "LOLOL"
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
