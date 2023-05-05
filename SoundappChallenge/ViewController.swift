//
//  ViewController.swift
//  SoundappChallenge
//
//  Created by 白川創大 on 2023/05/05.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet var drumButton: UIButton!
    
    @IBOutlet var guitarButton: UIButton!
    
    @IBOutlet var pianoButton: UIButton!
        
        
    let drumSoundPlayer = try!AVAudioPlayer(data: NSDataAsset(name: "drumSound" )!.data)
    
    let guitarSoundPlayer = try!AVAudioPlayer(data: NSDataAsset(name: "guitarSound" )!.data)
    
    let pianoSoundPlayer = try!AVAudioPlayer(data: NSDataAsset(name: "pianoSound" )!.data)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func touchdownDrumButton() {
           
           drumButton.setImage(UIImage(named: "drumPlayingImage"), for:  .normal)
           
           drumSoundPlayer.currentTime = 0
           
           drumSoundPlayer.play()
       }
       
       
       @IBAction func touchupDrumButton() {
               
           drumButton.setImage(UIImage(named: "drumImage"), for: .normal)
               
       }
    
    
    @IBAction func touchdownGuitarButton() {
           
           guitarButton.setImage(UIImage(named: "guitarPlayingImage"), for:  .normal)
           
        guitarSoundPlayer.currentTime = 0
           
        guitarSoundPlayer.play()
       }
       
       
       @IBAction func touchupGuitarButton() {
               
           guitarButton.setImage(UIImage(named: "guitarImage"), for: .normal)
               
       }
    
    
    @IBAction func touchdownPianoButton() {
           
           pianoButton.setImage(UIImage(named: "pianoPlayingImage"), for:  .normal)
           
        pianoSoundPlayer.currentTime = 0
           
        pianoSoundPlayer.play()
       }
       
       
       @IBAction func touchupPianoButton() {
               
           pianoButton.setImage(UIImage(named: "pianoImage"), for: .normal)
               
       }



}


//kansei
