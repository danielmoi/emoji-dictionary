//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Daniel Moi on 5/12/17.
//  Copyright © 2017 Daniel Moi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var magicTableView: UITableView!
    
    // var emojis = ["😎", "😡", "🤮", "👻", "💩", "😈", "😆"]
    
    var emojis: [Emoji] = []
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let definitionVC = segue.destination as! DefinitionViewController
        definitionVC.emoji = sender as! Emoji
    }

    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        magicTableView.dataSource = self
        magicTableView.delegate = self
        emojis = makeEmojiArray()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😎"
        emoji1.birthYear = 2010
        emoji1.category = "Smiley"
        emoji1.definition = "A smiley face with sunglasses"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "😡"
        emoji2.birthYear = 2017
        emoji2.category = "Smiley"
        emoji2.definition = "An angry smiley face"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "🤮"
        emoji3.birthYear = 2012
        emoji3.category = "Smiley"
        emoji3.definition = "A vom vom smiley face"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "👻"
        emoji4.birthYear = 2000
        emoji4.category = "Creature"
        emoji4.definition = "A ghost"
        
        return [emoji1, emoji2, emoji3, emoji4]
    }


}

