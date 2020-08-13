////
////  VideoPlayer.swift
////  DiscoveryManga
////
////  Created by Lucie KOZIK on 11/08/2020.
////  Copyright © 2020 Lucie Kozik. All rights reserved.
////
//
import SwiftUI
import AVKit


struct player : UIViewControllerRepresentable {
    let url : String
    func makeUIViewController(context: UIViewControllerRepresentableContext<player>) -> AVPlayerViewController {

        
        let controller = AVPlayerViewController()
        
        let player1 = AVPlayer(url: URL(string: url)!)
        controller.player = player1
        return controller
        

    }
    func updateUIViewController(_ uiViewController: AVPlayerViewController, context: UIViewControllerRepresentableContext<player>) {

  }
}

