//
//  ViewController.swift
//  xylophone
//
//  Created by Lakshmi Ramesh on 16/10/23.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var audioPlayers :AVAudioPlayer!
    
    var note = ["note1","note2","note3","note4","note5","note6","note7"]

    @IBAction func btn(_ sender: UIButton) {
        playSound(tag: sender.tag)
        print(sender.tag)
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // Do any additional setup after loading the view.
    }
    
    func playSound(tag: Int){
//        print(note[tag])
        var music = Bundle.main.url(forResource: note[tag], withExtension: "wav")
        audioPlayers = try! AVAudioPlayer(contentsOf: music!)
        audioPlayers.play()
        audioPlayers.volume = 3.0
    }


}

