//
//  ContentView.swift
//  SimpleAudioPlayer
//
//  Created by Bridget Peterkin on 2/10/22.
//

import SwiftUI
import AVKit
/**This is a simple audio player application */

struct ContentView: View {
    @State var myPlayer:AVAudioPlayer?

    var body: some View {
        ZStack {
            LinearGradient(colors: [.white,.blue],startPoint: .top, endPoint: .bottom)
            VStack{
                Text("Acoustic Ambiance")
                    .multilineTextAlignment(.center)
                    .font(.system(size: 60))
                Image("BlackBirdGuitar")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .border(.black,width: 3)

                Spacer()
                HStack{
                    Button(action:playSong) {
                        Image(systemName: "play.circle")
                            .foregroundColor(Color.black)
                            .font(.system(size:90))
                        
                    }
                    Button(action: pauseSong) {
                        Image(systemName: "pause.circle")
                            .foregroundColor(Color.black)
                            .font(.system(size: 90))
                    }
                    
                   
                    
                }.border(.red)
                HStack{
                    Text("Black Bird Acoustic ")
                        .font(.system(size: 30))
                        .padding()
                        .onAppear() {
                            let fileUrl = Bundle.main.url(forResource:"blackbird",withExtension:"m4a")
                            myPlayer = try! AVAudioPlayer(contentsOf: fileUrl!)
                            myPlayer?.prepareToPlay()
                        }
                   
                }
                Spacer()
            }
        }
        
    }
    func playSong() {
        myPlayer?.play()
    }
    func pauseSong() {
        myPlayer?.pause()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
