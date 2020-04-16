//
//  MagicBallViewController.swift
//  DiceGame
//
//  Created by Shawn Li on 4/14/20.
//  Copyright © 2020 ShawnLi. All rights reserved.
//

import UIKit

class MagicBallViewController: UIViewController {
    var ballImageArray = ["ball1","ball2","ball3","ball4","ball5"]
    var index:Int = 0
    @IBOutlet weak var ballImageView: UIImageView!
    @IBAction func AskButton(_ sender: Any) {
        changeImage()
    }
    
    func changeImage()
    {
        index = Int.random(in: 0...4)
        ballImageView.image = UIImage(named: ballImageArray[index])
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
