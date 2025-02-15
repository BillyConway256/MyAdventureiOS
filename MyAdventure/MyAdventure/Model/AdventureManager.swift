//
//  AdventureManager.swift
//  MyAdventure
//
//  Created by Billy Conway on 2/15/25.
//

import Foundation
class AdventureManager {
    
    // Array of steps in the adventure
    private var steps: [AdventureStep] = [
        // Step 0
        AdventureStep(
            description: "You found an ancient treasure map in your attic! Do you follow it into the forest or discard it?",
            choiceA: "Follow the map",
            choiceADestination: 1,
            choiceB: "Discard the map",
            choiceBDestination: 2
        ),
        
        // Step 1 (A) - followed the map
        AdventureStep(
            description: "You enter the forest and reach a fork in the path. Do you go left or right?",
            choiceA: "Left path",
            choiceADestination: 3,
            choiceB: "Right path",
            choiceBDestination: 4
        ),
        
        // Step 1 (B) - discarded the map
        AdventureStep(
            description: "You decide not to follow the map and toss it away. Life goes on, but the treasure remains lost...",
            choiceA: nil,  // no further choices if you want an abrupt end
            choiceADestination: nil,
            choiceB: nil,
            choiceBDestination: nil
        ),
        
        // Step 2 (A) - left path
        AdventureStep(
            description: "A small abandoned cabin stands quietly. Inside, you see a chest. Do you open it or leave?",
            choiceA: "Open the chest",
            choiceADestination: 5, // next step (maybe success)
            choiceB: "Leave the cabin",
            choiceBDestination: 6  // maybe an alternate path
        ),
        
        // Step 2 (B) - right path
        AdventureStep(
            description: "You come to a rickety old bridge over a deep ravine. Do you cross it or turn back?",
            choiceA: "Cross the bridge",
            choiceADestination: 7, // next step
            choiceB: "Turn back",
            choiceBDestination: 8  // maybe an end or another path
        ),
        
        // Add more steps as needed (indices 5,6,7,8...) for success/failure outcomes.
        AdventureStep(
            description: "Inside the chest you find glittering gold and ancient relics. You've struck it rich! Adventure ends in success.",
            choiceA: nil,
            choiceADestination: nil,
            choiceB: nil,
            choiceBDestination: nil
        ),
        
        // etc...
        AdventureStep(
            description: "You leave the cabin and wander the forest, never finding the treasure...",
            choiceA: nil,
            choiceADestination: nil,
            choiceB: nil,
            choiceBDestination: nil
        ),
        
        AdventureStep(
            description: "You bravely cross the bridge and discover a hidden temple on the other side. Another quest begins...",
            choiceA: nil,
            choiceADestination: nil,
            choiceB: nil,
            choiceBDestination: nil
        ),
        
        AdventureStep(
            description: "You turn back, deciding the risk is too great. The treasure remains lost to time...",
            choiceA: nil,
            choiceADestination: nil,
            choiceB: nil,
            choiceBDestination: nil
        )
    ]
    
    private(set) var currentStepIndex: Int = 0
    
    // Retrieve the current step
    func getCurrentStep() -> AdventureStep {
        return steps[currentStepIndex]
    }
    
    // Move to the next step based on which choice was selected (A or B)
    func advance(choice: String) {
        let currentStep = steps[currentStepIndex]
        
        switch choice {
        case "A":
            if let destination = currentStep.choiceADestination {
                currentStepIndex = destination
            }
        case "B":
            if let destination = currentStep.choiceBDestination {
                currentStepIndex = destination
            }
        default:
            break
        }
    }
    
    // Reset adventure to the start
    func resetAdventure() {
        currentStepIndex = 0
    }
}
