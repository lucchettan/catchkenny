//
//  KennyBtn.swift
//  CatchKenny
//
//  Created by Nicolas Lucchetta on 27/11/2019.
//  Copyright © 2019 Nicolas Lucchetta. All rights reserved.
//

import SwiftUI
import AVFoundation

struct KennyBtn: View {
    @Binding var score : Int
    @Binding var Highscore : Int

    @State var widthValue = 100
    @State var heightValue = 100
    
    @State var soundEffect: AVAudioPlayer?
    let path = Bundle.main.path(forResource: "boom.mp3", ofType: nil)!

    
    var body: some View {
        Button (action: {
            self.score += 1
            print("u got me")
            self.widthValue = 0
            self.heightValue = 0
            do {
                self.soundEffect = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: self.path))
                self.soundEffect?.play()
            } catch {
                // couldn't load file :(
            }
            
            //           to save the Highscore
            
            if self.score > self.Highscore {
                self.Highscore = self.score
                UserDefaults.standard.set(self.Highscore, forKey: "highscore")
            }

        }) {
            Image("Kenny")
                .frame(width: CGFloat(widthValue), height: CGFloat(heightValue))
        }.padding()
    }
}

