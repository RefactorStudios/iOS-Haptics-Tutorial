//
//  ViewController.swift
//  HapticsTutorial
//
//  Created by Stephen Feuerstein on 9/20/18.
//  Copyright © 2018 Refactor Studios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var feedbackGenerator: UINotificationFeedbackGenerator = UINotificationFeedbackGenerator()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Button Actions

    @IBAction func successAction(_ sender: Any) {
        print("✅ Success!")
        feedbackGenerator.prepare()
        feedbackGenerator.notificationOccurred(.success)
    }
    
    @IBAction func failureAction(_ sender: Any) {
        print("🛑 Failure")
        feedbackGenerator.prepare()
        feedbackGenerator.notificationOccurred(.error)
    }
    
    @IBAction func otherAction(_ sender: Any) {
        print("🔶 Other")
        let impactGenerator = UIImpactFeedbackGenerator(style: .medium)
        impactGenerator.prepare()
        impactGenerator.impactOccurred()
    }
}

