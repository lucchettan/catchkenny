//
//  ContentView.swift
//  CatchKenny
//
//  Created by Nicolas Lucchetta on 26/11/2019.
//  Copyright © 2019 Nicolas Lucchetta. All rights reserved.
//


import SwiftUI

struct ContentView: View {
    
    let blank = BlankView()
    @State var kennys: [Kenny] = Kenny.all()

    @State var time = 0
    @State var score = 0
    @State var highscore = 6
    let storedHighScore = 6
    
    @State var kenny0: Bool = false
    @State var kenny1: Bool = false
    @State var kenny2: Bool = false
    @State var kenny3: Bool = false
    @State var kenny4: Bool = false
    @State var kenny5: Bool = false
    @State var kenny6: Bool = false
    @State var kenny7: Bool = false
    @State var kenny8: Bool = false
        
    func hideKenny() {
        kenny0 = false
        kenny1 = false
        kenny2 = false
        kenny3 = false
        kenny4 = false
        kenny5 = false
        kenny6 = false
        kenny7 = false
        kenny8 = false
    }
    
    func moveKenny(toShow: Int) {
        if toShow == 0 {
            print("case \(toShow) and its bool value is")
            self.kenny0 = true
            print("\(kenny0)")
            } else if toShow == 1 {
                print("case \(toShow) and its bool value is" )
            self.kenny1 = true
                print("\(kenny1)")

            }  else if toShow == 2 {
                print("case \(toShow) and its bool value is" )
            self.kenny2 = true
                print("\(kenny2)")
            }  else if toShow == 3 {
                print("case \(toShow) and its bool value is" )
            self.kenny3 = true
                print("\(kenny3)")
            }  else if toShow == 4 {
                print("case \(toShow) and its bool value is" )
            self.kenny4 = true
                print("\(kenny4)")
            }  else if toShow == 5 {
                print("case \(toShow) and its bool value is" )
            self.kenny5 = true
                print("\(kenny5)")
            }  else if toShow == 6 {
                print("case \(toShow) and its bool value is" )
            self.kenny6 = true
                print("\(kenny6)")
            }  else if toShow == 7 {
                print("case \(toShow) and its bool value is" )
                self.kenny7 = true
            print("\(kenny7)")
            }  else if toShow == 8 {
                print("case \(toShow) and its bool value is" )
                self.kenny8 = true
                print("\(kenny8)")
            }
        }
    
    func start() {
        self.time = 10
        self.score = 0
        Timer.scheduledTimer(withTimeInterval: 0.55, repeats: true) { timer in
            let random = Int.random(in: 0..<(self.kennys.count - 1))
            self.hideKenny()
            self.moveKenny(toShow: random)
            self.time -= 1
            print("i'm out : time \(self.time)")
            if self.time < 1 {
                timer.invalidate()
                self.hideKenny()
            }
        }
    }
    
    var body: some View {
        VStack {
            HStack {
                Image("clock")
                    .resizable()
                    .frame(width: 50, height: 50)
                Text("\(time)")
                    .font(.system(size: 30))
            }.offset(y: 19)
            VStack {
                HStack {
                    ZStack {
                        if kenny0 {
                            KennyBtn(score: $score, Highscore: $highscore)
                        } else { BlankView() }
                    }
                    ZStack {
                        if kenny1 {
                            KennyBtn(score: $score, Highscore: $highscore)
                        } else { BlankView() }
                    }
                    ZStack {
                        if kenny2 {
                            KennyBtn(score: $score, Highscore: $highscore)
                        } else { BlankView() }
                    }
                }
                HStack {
                    ZStack {
                        if kenny3 {
                            KennyBtn(score: $score, Highscore: $highscore)
                        } else { BlankView() }
                    }
                    ZStack {
                        if kenny4 {
                            KennyBtn(score: $score, Highscore: $highscore)
                        } else { BlankView() }
                        
                        if self.time == 0 {
                            Button(action: start){
                                Text("Catch us!")
                                    .bold()
                                    .foregroundColor(Color.red)
                            }
                            .padding(15)
                            .background(Color.white)
                            .cornerRadius(30)
                        }
        
                    }
                    ZStack {
                        if kenny5 {
                            KennyBtn(score: $score, Highscore: $highscore)
                        } else { BlankView() }
                    }
                }
                HStack {
                    ZStack {
                        if kenny6 {
                            KennyBtn(score: $score, Highscore: $highscore)
                        } else { BlankView()}
                    }
                    ZStack {
                        if kenny7 {
                            KennyBtn(score: $score, Highscore: $highscore)
                        } else { BlankView()}
                    }
                    ZStack {
                        if kenny8 {
                            KennyBtn(score: $score, Highscore: $highscore)
                        } else { BlankView()}
                    }
                }
            }
            
            ZStack (alignment: .center){
                Image("score")
                    .resizable()
                    .frame(width: 300, height: 160)
                HStack {
                    Text("\(highscore)")
                        .font(.system(size: 30, weight: .bold))
                        .foregroundColor(.red)
                    Spacer()
                    Text("\(score)")
                        .font(.system(size: 30, weight: .bold))
                        .foregroundColor(.black)
                }
                .frame(width: 130)
                .offset(y: 15)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
