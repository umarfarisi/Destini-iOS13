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
        if let currentStory = storyBrain.currentStory() {
            updateUI(story: currentStory)
        }
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        if let answer = sender.titleLabel?.text, let nextStory = storyBrain.nextStory(answer: answer) {
            updateUI(story: nextStory)
        }
    }
    
    private func updateUI(story: Story) {
        storyLabel.text = story.story
        choice1Button.setTitle(story.option1, for: .normal)
        choice2Button.setTitle(story.option2, for: .normal)
    }
    
    
    
}

