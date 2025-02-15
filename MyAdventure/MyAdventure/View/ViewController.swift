//
//  ViewController.swift
//  MyAdventure
//
//  Created by Billy Conway on 2/15/25.
//

import UIKit

class ViewController: UIViewController {
    
    // IBOutlets
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var choiceAButton: UIButton!
    @IBOutlet weak var choiceBButton: UIButton!
    @IBOutlet weak var resetButton:
        UIButton!
        
    
    // Properties
    private let adventureManager = AdventureManager()
    
    // Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    // UI Update
    func updateUI() {
        let currentStep = adventureManager.getCurrentStep()
        
        descriptionLabel.text = currentStep.description
        
        // If a choice is nil, hide the button (or disable it).
        if let choiceA = currentStep.choiceA {
            choiceAButton.setTitle(choiceA, for: .normal)
            choiceAButton.isHidden = false
        } else {
            choiceAButton.isHidden = true
        }
        
        if let choiceB = currentStep.choiceB {
            choiceBButton.setTitle(choiceB, for: .normal)
            choiceBButton.isHidden = false
        } else {
            choiceBButton.isHidden = true
        }
        if currentStep.choiceA == nil && currentStep.choiceB == nil {
            resetButton.isHidden = false}
        else {
            resetButton.isHidden = true
        }
    }
    
    //  Actions
    @IBAction func choiceAButtonTapped(_ sender: UIButton) {
        adventureManager.advance(choice: "A")
        updateUI()
    }
    
    @IBAction func choiceBButtonTapped(_ sender: UIButton) {
        adventureManager.advance(choice: "B")
        updateUI()
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        adventureManager.resetAdventure()
        updateUI()
    }
}


