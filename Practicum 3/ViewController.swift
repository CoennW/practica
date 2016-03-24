//
//  ViewController.swift
//  Practicum 3
//
//  Created by Fhict on 10/03/16.
//  Copyright © 2016 Fontys. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var selectPirate: Pirate?
    @IBOutlet weak var Name: UILabel!
    @IBOutlet weak var Life: UILabel!
    @IBOutlet weak var activeYears: UILabel!
    @IBOutlet weak var countryOfBird: UILabel!
    @IBOutlet weak var commentText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.Name.text = self.selectPirate?.name
        self.Life.text = self.selectPirate?.life
        self.activeYears.text = self.selectPirate?.yearsActive
        self.countryOfBird.text = self.selectPirate?.countryOrigin
        self.commentText.text = self.selectPirate?.commentes
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
