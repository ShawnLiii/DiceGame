//
//  XylophoneViewController.swift
//  DiceGame
//
//  Created by Shawn Li on 4/14/20.
//  Copyright © 2020 ShawnLi. All rights reserved.
//

import UIKit
import AVFoundation

class XylophoneViewController: UIViewController {
    var player:AVAudioPlayer!
    var soundArray = ["note1","note2","note3","note4","note5","note6","note7"]
    
    @IBAction func notePressed(_ sender: UIButton) {
        
        playSound(tag: sender.tag)
    
    }
    
    func playSound(tag: Int){
        
        let url = Bundle.main.url(forResource: soundArray[tag - 1], withExtension: "wav")
        
        do{
            player = try AVAudioPlayer(contentsOf: url!)
            player.play()
            
        }catch{
            print(error)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
