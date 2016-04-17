//
//  RegisterPageViewController.swift
//  What's Your Secret?
//
//  Created by Fhict on 17/04/16.
//  Copyright © 2016 Fontys. All rights reserved.
//

import UIKit

class RegisterPageViewController: UIViewController {
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var userPasswordTextField: UITextField!
    @IBOutlet weak var repeatPasswordTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func SignUpButton(sender: AnyObject) {
        
        let username = usernameTextField.text
        let password = userPasswordTextField.text
        let repeatPassword = repeatPasswordTextField.text
        
        //check empty field 
        if(username!.isEmpty || password!.isEmpty || repeatPassword!.isEmpty)
        {
            
            //display alert massage
            DisplayMyAlertMassage("All fields are requiered!")
            return
            
        }
        
        // check password match 
        if(password != repeatPassword)
        {
            //display alert massage 
            DisplayMyAlertMassage("Passwords do not match.")
            return
        }
        
        
        //Store Data
        NSUserDefaults.standardUserDefaults().setObject(username, forKey: "username")
        NSUserDefaults.standardUserDefaults().setObject(password, forKey: "password")
        NSUserDefaults.standardUserDefaults().synchronize()
        
        //Confirm action with alert
        let myAlert = UIAlertController(title: "Alert", message: "Registration succesfull!", preferredStyle: UIAlertControllerStyle.Alert)
        let okAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default){action in self.dismissViewControllerAnimated(true, completion:nil)}
        
        myAlert.addAction(okAction)
        self.presentViewController(myAlert, animated:true, completion:nil)

        
    }
    
    
    
    
    func DisplayMyAlertMassage(userMassage: String)
    {
        let myAlert = UIAlertController(title: "Alert", message: userMassage, preferredStyle: UIAlertControllerStyle.Alert)
        
        let okAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil)
        
        myAlert.addAction(okAction)
        
        self.presentViewController(myAlert, animated: true, completion: nil)
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
