//
//  JankenViewController.swift
//  Janken
//
//  Created by Hiroki Sunagawa on 06/01/2017.
//  Copyright © 2017 Hiro. All rights reserved.
//

import UIKit

class JankenViewController: UIViewController {

    // MARK: Propeties
    
    var junken: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // randomly generates a Junken Result
    func randomJankenResult() -> Int {
        // Generate a random Int32 using arc4Random
        let randomResult = 1 + arc4random() % 3
        
        // Return a more convenient Int, initialized with the random value
        return Int(randomResult)
    }
    
    // MARK: Actions



}

