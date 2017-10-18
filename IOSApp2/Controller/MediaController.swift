//
//  MediaController.swift
//  IOSApp2
//
//  Created by Burr, Alan on 10/18/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

public class MediaController : UIViewController
{
    
    @IBOutlet weak var ViewImage: UIImageView!
    @IBOutlet weak var ImageButtonClick: UIButton!
    @IBOutlet weak var SoundButton: UIButton!
    @IBOutlet weak var SoundSlider: UISlider!
    
    private lazy var color: ColorTools = ColorTools()
    private var imageCounter = 1
    
    
    @IBAction func imageButtonClick() -> Void
    {
        changeImage()
        view.backgroundColor = color.createRandomColor()
    }
    private func changeImage() -> Void
    {
        if (imageCounter > 2)
        {
            imageCounter = 0
        }
        
        if (imageCounter == 0)
        {
            ViewImage.image = UIImage(named: "Leviathan")
        }
        else if (imageCounter == 1)
        {
            ViewImage.image = UIImage(named: "skull")
        }
        else
        {
            ViewImage.image = UIImage(named: "lego man")
        }
    }
    
}
