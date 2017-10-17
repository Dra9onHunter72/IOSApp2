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
    
    private lazy var colorTool : ColorTools = ColorTools()
    @IBOutlet weak var FirstButton: UIButton!
    
    @IBAction func FirstMethod(_ sender: UIButton)
    {
        FirstButton.backgroundColor = colorTool.createRandomColor()
        view.backgroundColor = colorTool.createRandomColor()
        FirstButton.setTitleColor(colorTool.createRandomColor(), for: .normal)
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

