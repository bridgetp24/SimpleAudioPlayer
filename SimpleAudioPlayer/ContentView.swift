//
//  ContentView.swift
//  SimpleAudioPlayer
//
//  Created by Bridget Peterkin on 2/10/22.
//

import SwiftUI
/**This is a simple audio player application */

struct ContentView: View {
    var body: some View {
        VStack{
            HStack{
                Text("Hello, world!")
                    .padding()
                Text("How is it going")
                    .padding()
            }.border(.red)
            Spacer()
        }.border(Color.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
