//
//  GlobalFuncs.swift
//  AKidAgain
//
//  Created by Cam Garrison on 10/4/19.
//  Copyright © 2019 NotChewy1324. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation

var audioPLayer: AVAudioPlayer?

//Button Sound Control
func ClickSound() {
    
    let path = Bundle.main.path(forResource: "Click_Sound.mp3", ofType:nil)!
    let url = URL(fileURLWithPath: path)

    do {
        audioPLayer = try AVAudioPlayer(contentsOf: url)
        audioPLayer?.prepareToPlay()
        audioPLayer?.play()
    } catch {
    }
    
}
