//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

class StoryBrain {
    
    static let END_INDEX: Int = -1
    
    var currentStoryIdx = 0
    
    var stories = [
        Story(
            s: "You see a fork in the road.",
            o1: "Take a left.",
            o2: "Take a right.",
            nextStoryIdxForO1: 1,
            nextStoryIdxForO2: 2
        ),
        Story(
            s: "You see a tiger.",
            o1: "Shout for help.",
            o2: "Play dead",
            nextStoryIdxForO1: END_INDEX,
            nextStoryIdxForO2: END_INDEX
        ),
        Story(
            s: "You find a treasure chest.",
            o1: "Open it.",
            o2: "Check for traps",
            nextStoryIdxForO1: END_INDEX,
            nextStoryIdxForO2: END_INDEX
        )
    ]
    
    func nextStory(answer answerOfCurrentStory: String) -> Story? {
        if let currentStory = currentStory() {
            let nextStoryIdx: Int
            if answerOfCurrentStory == currentStory.option1 {
                nextStoryIdx = currentStory.nextStoryIdxForOption1
            } else { // it is similar with sender.titleLabel?.text == currentStory.option2
                nextStoryIdx = currentStory.nextStoryIdxForOption2
            }
            
            if 0 <= nextStoryIdx && nextStoryIdx < stories.count {
                let nextStory = stories[nextStoryIdx]
                currentStoryIdx = nextStoryIdx
                return nextStory
            }
            
        }
        
        return nil
    }
    
    func currentStory() -> Story? {
        if 0 <= currentStoryIdx && currentStoryIdx < stories.count {
            return stories[currentStoryIdx]
        }
        return nil
    }
    
}

