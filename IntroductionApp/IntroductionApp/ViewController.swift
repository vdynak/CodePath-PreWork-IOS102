//
//  ViewController.swift
//  IntroductionApp
//
//  Created by Victoria Dynak on 1/9/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var DarkModeSwitch: UISwitch!
    @IBOutlet weak var MorePetsSwitch: UISwitch!
    @IBOutlet weak var NOMStepper: UIStepper!
    @IBOutlet weak var NOMLabel: UILabel!
    @IBOutlet weak var YearSegmentedControl: UISegmentedControl!
    @IBOutlet weak var SchoolTF: UITextField!
    @IBOutlet weak var LastNameTF: UITextField!
    @IBOutlet weak var FirstNameTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func NOMStepperAction(_ sender: UIStepper) {
              
              NOMLabel.text = "\(Int(sender.value))"
          }
    
    @IBAction func DarkModeSwitchAction(_ sender: UISwitch) {
        if DarkModeSwitch.isOn{
            view.backgroundColor = .darkGray
        }
        else{
            view.backgroundColor = .white
        }
    }
    @IBAction func IntroductionButton(_ sender: UIButton) {
                
                // Let's us chose the title we have selected from the segmented control
                let year = YearSegmentedControl.titleForSegment(at: YearSegmentedControl.selectedSegmentIndex)
                
                // Creating a variable of type string, that holds an introduction. The introduction interpolates the values from the text fields provided.
                // Currently we can only present the information in a print statement. However, this lets us verify that our app is printing out what is intended!
                let introduction = "My name is \(FirstNameTF.text!) \(LastNameTF.text!) and I attend \(SchoolTF.text!) I am currently in my \(year!) year and I own \(NOMLabel.text!) dogs. It is \(MorePetsSwitch.isOn) that I want more pets."
                
                
                // Creates the alert where we pass in our message, which our introduction.
                let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
                
                // A way to dismiss the box once it pops up
                let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
                
                // Passing this action to the alert controller so it can be dismissed
                alertController.addAction(action)
                
                present(alertController, animated: true, completion: nil)
            }
    
}

