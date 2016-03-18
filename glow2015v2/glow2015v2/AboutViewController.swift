//
//  AboutViewController.swift
//  glow2015v2
//
//  Created by Fhict on 07/03/16.
//  Copyright © 2016 Fontys. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {
    
    @IBOutlet weak var textToBeShown: UITextField!
    
    @IBAction func buttonShowText(sender: UIButton) {
        
        let alertView =
            UIAlertView(
                title: "Titel van popup(alertview)",
                message: textToBeShown.text,
                delegate: nil,
                cancelButtonTitle: "Text van de close button")
            alertView.show()
        
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        

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
