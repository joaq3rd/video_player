//
//  ViewController.swift
//  video_player
//
//  Created by Joaquin Lewis III on 6/12/23.
//

import Cocoa
import AVKit
import AVFoundation

class ViewController: NSViewController {
    var playerView: AVPlayerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupPlayerView()
    }
    
    override func viewDidAppear(){
        super.viewDidAppear()
        playVideo()
    }
    
    private func setupPlayerView() {
        playerView = AVPlayerView(frame: view.bounds)
        playerView.autoresizingMask = [.width, .height]
        view.addSubview(playerView)
    }
    
    private func playVideo(){
        guard let videoURL = Bundle.main.url(forResource: "video_player test ios learning", withExtension: "mp4") else {
            debugPrint("video_player test ios learning.mp4 not found")
            return
        }
        
        let player = AVPlayer(url: videoURL)
        playerView.player = player
        player.play()
    }
}
