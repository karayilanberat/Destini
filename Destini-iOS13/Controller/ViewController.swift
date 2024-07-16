//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI(index: 0)
        
    }

    @IBAction func button1Pressed(_ sender: UIButton) {
        
        updateUI(index: storyBrain.currentStory!.choice1Destination)
        
    }
    @IBAction func button2Pressed(_ sender: Any) {
        updateUI(index: storyBrain.currentStory!.choice2Destination)

    }
    
    func updateUI(index: Int){
        
        let startPoint = storyBrain.getStory(index: index)
        
        storyLabel.text = startPoint.title
        choice1Button.setTitle(startPoint.choice1, for: .normal)
        choice2Button.setTitle(startPoint.choice2, for: .normal)
        
    }
    
}

