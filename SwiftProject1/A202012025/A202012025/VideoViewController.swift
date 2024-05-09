//
//  VideoViewController.swift
//  A202012025
//
//  Created by 소프트웨어컴퓨터 on 2023/12/05.
//

import UIKit
import AVKit

class VideoViewController: UIViewController {
    @IBAction func playVideo(_ sender: UIButton) {
        let file:String? = Bundle.main.path(forResource:"bmi", ofType: "mp4")
        //Bundle.main.path(forResource: "bmi", ofType: "mp4")
        let url = NSURL(fileURLWithPath: file!)
        //NSURL(fileURLWithPath: file!)
        let playerController = AVPlayerViewController()
        let player = AVPlayer(url: url as URL)
        playerController.player = player
        self.present(playerController, animated: true)
        player.play()        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
