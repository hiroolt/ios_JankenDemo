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
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var resultImage: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    // MARK: Actions
    
    @IBAction func backToDefault(_ sender: UIButton) {
    }
    

}
