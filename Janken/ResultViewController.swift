//
//  ResultViewController.swift
//  Janken
//
//  Created by Hiroki Sunagawa on 06/01/2017.
//  Copyright © 2017 Hiro. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    // MARK: properies
    var userValue: Int?
    var appValue: Int?
    
    //MARK: Outlets
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var resultImage: UIImageView!
    
    
    // MARK: Life Cycle
    
    override func viewWillAppear(_ animated: Bool) {
        
        // The Picture will only appear only if user and app value have been set
        if let userReceivedValue = userValue {
            if let appReceivedValue = appValue {
                
                print("userValue= \(userValue), appValue= \(appValue)")
                if userReceivedValue == 1 {
                    if appReceivedValue == 2 {
                        resultImage.image = UIImage(named: "PaperCoversRock")
                        resultLabel.text = "You Win"
                    } else if appReceivedValue == 3 {
                        resultImage.image = UIImage(named: "ScissorsCutPaper")
                        resultLabel.text = "You Lose"
                    } else {
                        resultImage.image = UIImage(named: "itsATie")
                        resultLabel.text = "Tie"
                    }
                }
                
                if userReceivedValue == 2 {
                    if appReceivedValue == 1 {
                        resultImage.image = UIImage(named: "PaperCoversRock")
                        resultLabel.text = "You Lose"
                    } else if appReceivedValue == 3 {
                        resultImage.image = UIImage(named: "RockCrushesScissors")
                        resultLabel.text = "You Win"
                    } else {
                        resultImage.image = UIImage(named: "itsATie")
                        resultLabel.text = "Tie"
                    }
                }
                
                if userReceivedValue == 3 {
                    if appReceivedValue == 1 {
                        resultImage.image = UIImage(named: "ScissorsCutPaper")
                        resultLabel.text = "You Win"
                    } else if appReceivedValue == 2 {
                        resultImage.image = UIImage(named: "RockCrushesScissors")
                        resultLabel.text = "You Lose"
                    } else {
                        resultImage.image = UIImage(named: "itsATie")
                        resultLabel.text = "Tie"
                    }
                }
                
            } else {
                print("appValue is wrong")
                resultLabel.text = "Something wrong happened"
                resultImage.image = nil
            }
            
        } else {
            print("appValue is wrong")
            resultLabel.text = "Something wrong happened"
            resultImage.image = nil
        }
 
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    //MARK: Functions
    
    @IBAction func ReturnBtnPressed(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }
    

}
