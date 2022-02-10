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
            Text("Hello, world!")
                .padding()
            Text("How is it going")
                .padding()
        }.border(Color.green)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
