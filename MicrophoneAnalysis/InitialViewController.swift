//
//  InitialViewController.swift
//  MicrophoneAnalysis
//
//  Created by Yoann on 22/01/2018.
//  Copyright © 2018 AudioKit. All rights reserved.
//

import UIKit
import AVKit

class InitialViewController: UIViewController {
    
    var player: AVPlayer!
    
    let playerLayer = AVPlayerLayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        player = AVPlayer(url: URL(string: "https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4")!)
        
        view.layer.insertSublayer(playerLayer, at: 0)
        
        playerLayer.player = player
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        player.play()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        playerLayer.frame = view.bounds
    }

    @IBAction func buttonTapped(_ sender: Any) {
        player.pause()
        
        performSegue(withIdentifier: "goToView", sender: sender)
    }

}
