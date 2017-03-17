//
//  MissionBriefingViewController.swift
//  Mission Briefing
//
//  Created by Ben Gohlke on 10/7/15.
//  Copyright © 2015 The Iron Yard. All rights reserved.
//

import UIKit

class MissionBriefingViewController: UIViewController, UITextFieldDelegate
{
  
  @IBOutlet weak var agentUserTextField: UITextField!
  @IBOutlet weak var passwordTextField: UITextField!
  @IBOutlet weak var greetingLabel: UILabel!
  @IBOutlet weak var briefingTextView: UITextView!
  
  override func viewDidLoad()
  {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
      
    //
    // 1. The two UI elements need to be emptied on launch
    //    Hint: there is a string literal that represents the empty string
    //
    greetingLabel.text = ""
    briefingTextView.text = <#what goes here?#>
  }
  
  override func didReceiveMemoryWarning()
  {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  // MARK: - Action Handlers
  
  @IBAction func authenticateAgent(_ sender: UIButton)
  {
    // This method is the action that runs when the button "authenticate" is tapped. As you can see below, it calls the "signInAgent" function.
    signInAgent()
  }
  
  // MARK: - UITextField Delegate
  
  func textFieldShouldReturn(_ textField: UITextField) -> Bool
  {
    // This function is called automatically when the return key on the keyboard is tapped.
    var rc = false
    
    if textField.text != ""
    {
      if textField == agentUserTextField
      {
        passwordTextField.becomeFirstResponder()
      }
      else if textField == passwordTextField
      {
        rc = true
        signInAgent()
      }
    }
    
    return rc
  }
  
  // MARK: - Private
  
  func signInAgent()
  {
    // This will cause the keyboard to dismiss when the authenticate button is tapped
    if agentUserTextField.isFirstResponder
    {
      agentUserTextField.resignFirstResponder()
    }
    if passwordTextField.isFirstResponder
    {
      passwordTextField.resignFirstResponder()
    }
    
    //
    // 2. Check whether there is text in BOTH the name and password textfields
    //
    if <#How would we check to see that the agentUserTextField is not empty?#> && <#We need to do the same thing for the passwordTextField#>
    {
      //
      // 3. The greeting label needs to be populated with the the string "Good evening, Agent #", where # is the last name of
      //    the agent logging in. The agent's full name is listed in the text field, but you need to pull out just the last
      //    name. A useful Google search might be something like "swift 3 dividing strings".
      //
      
      <#Code goes here to divide the string into two parts and then change the greetingLabel to display the following message "Good evening, Agent [last name here"#>
        
      //
      // 4. The mission briefing textview needs to be populated with the briefing from HQ, but it must also include the last
      //    name of the agent that logged in. Perhaps you could use the text in the textfield to get the agent's last name.
      //    How would you inject that last name into the paragraph of the mission briefing?
      //
        
      briefingTextView.text = "This mission will be an arduous one, fraught with peril. You will cover much strange and unfamiliar territory. Should you choose to accept this mission, Agent <#insert the agent's last name here#>, you will certainly be disavowed, but you will be doing your country a great service. This message will self destruct in 5 seconds."
        
      //
      // 5. The view's background color needs to switch to green to indicate a successful login by the agent.
      //
      //    The color's RGB value is Red: 0.585, Green: 0.78, Blue: 0.188 with an alpha of 1. There is a class method on the
      //    UIColor class that returns a color object with custom defined RGBA values. Open the documentation and look for a
      //    method on UIColor that can take red, green, blue and alpha values as arguments.
      //
      //    Once you have the color object, you should be able to set the view's background color to this object.
      //
        
      view.backgroundColor = <#What goes here?#>
    }
    else
    {
      //
      // 6. The view's background color needs to switch to red to indicate a failed login by the agent.
      //
      //    The color's RGB value is Red: 0.78, Green: 0.188, Blue: 0.188 with an alpha of 1. There is a class method on the
      //    UIColor class that returns a color object with custom defined RGBA values. Open the documentation and look for a
      //    method on UIColor that can take red, green, blue and alpha values as arguments.
      //
      //    Once you have the color object, you should be able to set the view's background color to this object.
      //
        
      <#use the previous color setting instruction as a guide for what to put here#>
    }
  }
}

