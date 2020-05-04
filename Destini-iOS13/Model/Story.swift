//
//  Sotry.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct Story {
    
    let story: String
    let option1 : String
    let nextStoryIdxForOption1: Int
    let option2 : String
    let nextStoryIdxForOption2: Int
    
    init(
        s: String,
        o1: String,
        o2: String,
        nextStoryIdxForO1: Int,
        nextStoryIdxForO2: Int
    ) {
        story = s
        option1 = o1
        nextStoryIdxForOption1 = nextStoryIdxForO1
        option2 = o2
        nextStoryIdxForOption2 = nextStoryIdxForO2
    }
    
}
