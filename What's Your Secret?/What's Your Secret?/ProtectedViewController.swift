//
//  ProtectedViewController.swift
//  What's Your Secret?
//
//  Created by Fhict on 17/04/16.
//  Copyright © 2016 Fontys. All rights reserved.
//

import UIKit

class ProtectedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    override func viewDidAppear(animated: Bool) {
        
        let userLoggedIn = NSUserDefaults.standardUserDefaults().boolForKey("UserLoggedIn")
        if(userLoggedIn == false)
        {
            self.performSegueWithIdentifier("toLogin", sender: self)
        }
        
        
        
        
       
    }
    
    @IBAction func LogoutButton(sender: AnyObject) {
        
        NSUserDefaults.standardUserDefaults().setBool(false, forKey: "UserLoggedIn")
        NSUserDefaults.standardUserDefaults().synchronize()
        self.performSegueWithIdentifier("toLogin", sender: self)
        
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
