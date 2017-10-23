//
//  MediaController.swift
//  IOSApp2
//
//  Created by Burr, Alan on 10/18/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit
import AVFoundation

public class MediaController : UIViewController
{
    
    @IBOutlet weak var ViewImage: UIImageView!
    @IBOutlet weak var ImageButtonClick: UIButton!
    @IBOutlet weak var SoundButton: UIButton!
    @IBOutlet weak var SoundSlider: UISlider!
    
    private lazy var color: ColorTools = ColorTools()
    private var imageCounter: Int = 0
    private var SoundPlayer : AVAudioPlayer?
    
   // public override func viewDidLoad() -> Void
   // {
    //super.viewDidLoad()
   // view.backgroundColor
   // }
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
        else if (imageCounter == 2)
        {
            ViewImage.image = UIImage(named: "lego man")
        }
        else
        {
            
        }
      
        imageCounter += 1
    }
    private func loadAudioFile() -> Void
    {
        if let soundURL = NSDataAsser(name: "Epic")
        {
            do
            {
                try! AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
                try! AVAudioSession.sharedInstance().setActive(true)
                
                try soundPlayer = AVAudioPlayer(data: soundURL.data, fileTypeHint: AVFileType.mp3.rawValue)
                soundSlider.maximumValue = Float ((soundPlayer?.duration)!)
                Timer.scheduledTimaer(timeInterval: 0.2, target: self, selector:)
            }
        }
    }
}
