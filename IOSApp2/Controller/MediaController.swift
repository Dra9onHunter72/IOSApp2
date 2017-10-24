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
    
    @IBOutlet weak var viewImage: UIImageView!
    @IBOutlet weak var imageButton: UIButton!
    @IBOutlet weak var soundButton: UIButton!
    @IBOutlet weak var soundSlider: UISlider!
    
    private lazy var color: ColorTools = ColorTools()
    private var imageCounter: Int = 0
    private var soundPlayer : AVAudioPlayer?
    
    public override func viewDidLoad() -> Void
    {
        super.viewDidLoad()
        view.backgroundColor = color.createRandomColor()
        loadAudioFile()
    }
    
    public override func didReceiveMemoryWarning() -> Void
    {
        super.didReceiveMemoryWarning()
    }
    
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
            viewImage.image = UIImage(named: "Leviathan")
        }
        else if (imageCounter == 1)
        {
            viewImage.image = UIImage(named: "skull")
        }
        else if (imageCounter == 2)
        {
            viewImage.image = UIImage(named: "lego man")
        }
        else
        {
            
        }
      
        imageCounter += 1
    }
    
    @IBAction func soundButtonClick() -> Void
    {
        playMusicFile()
        view.backgroundColor = color.createRandomColor()
    }
    
    @IBAction func sliderMethod() -> Void
    {
        let seekTime = Double (soundSlider.value)
        soundPlayer?.currentTime = seekTime
    }
    
    private func playMusicFile() -> Void
    {
        if let isPlaying = soundPlayer?.isPlaying
        {
            if (isPlaying)
            {
                soundPlayer?.pause()
            }
            else
            {
                soundPlayer?.play()
            }
        }
    }
    private func loadAudioFile() -> Void
    {
        if let soundURL = NSDataAsset(name: "Epic")
        {
            do
            {
                try! AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
                try! AVAudioSession.sharedInstance().setActive(true)
                
                try soundPlayer = AVAudioPlayer(data: soundURL.data, fileTypeHint:AVFileType.mp3.rawValue)
                soundSlider.maximumValue = Float ((soundPlayer?.duration)!)
                Timer.scheduledTimer(timeInterval: 0.2, target: self, selector:(#selector(self.updateSlider)), userInfo: nil, repeats: true)
            }
            catch
            {
                print("Audio File Load Error")
            }
        }
    }
    
    @objc private func updateSlider () -> Void
    {
        soundSlider.value = Float ((soundPlayer?.currentTime)!)
    }
}
