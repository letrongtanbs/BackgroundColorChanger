//
//  ViewController.swift
//  Background Color Changer
//
//  Created by Le Trong Tan on 11/2/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayedColour: UILabel!
    @IBOutlet weak var newColour: UITextField!
    
    var colour: String  = "test"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeColour(_ sender: UIButton) {
        displayedColour.text = colour
        switch colour {
                case "red":
                    view.backgroundColor = UIColor.red
                case "green":
                    view.backgroundColor = UIColor.green
                case "blue":
                    view.backgroundColor = UIColor.blue
                case "black":
                    view.backgroundColor = UIColor.black
                case "purple":
                    view.backgroundColor = UIColor.purple
                case "orange":
                    view.backgroundColor = UIColor.orange
                case "brown":
                    view.backgroundColor = UIColor.brown
                default:
                    view.backgroundColor = UIColor.lightGray
                    displayedColour.text = "The colour is not supported!"
                }
    }
    
    @IBAction func getText(_ sender: UITextField) {
        if newColour != nil{
            colour = newColour.text ?? "Can't get Colour"
        }
        displayedColour.text = "The Colour is ..."
    }
    
    @IBAction func getNewText(_ sender: UITextField) {
        newColour.resignFirstResponder()
    }
}

