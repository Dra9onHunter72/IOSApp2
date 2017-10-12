//
//  ViewController.swift
//  IOSApp2
//
//  Created by Burr, Alan on 10/10/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    
    @IBOutlet weak var FirstButton: UIButton!
    
    @IBAction func FirstMethod(_ sender: UIButton)
    {
        FirstButton.backgroundColor = createRandomColor()
        view.backgroundColor = createRandomColor()
        FirstButton.setTitleColor(createRandomColor(), for: .normal)
    }

    
    private func createRandomColor() -> UIColor
    {
        let newColor :UIColor
        let redValue :CGFloat = CGFloat (Double (arc4random_uniform(256)) / 255.00)
        let greenValue :CGFloat = CGFloat (Double (arc4random_uniform(256)) / 255.00)
        let blueValue :CGFloat = CGFloat (Double (arc4random_uniform(256)) / 255.00)
        newColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: CGFloat(1.0))
        
        return newColor
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var Stepper1: UIStepper!
    
    
    @IBAction func Stepper1(_ sender: Any)
    {
    let colors = [UIColor.red, UIColor.yellow, UIColor.orange, UIColor.blue, UIColor.green, UIColor.purple]
    view.backgroundColor = colors[Int (Stepper1.value)]
    }
}

