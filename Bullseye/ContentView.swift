//
//  ContentView.swift
//  Bullseye
//
//  Created by Ben Godfrey on 12/19/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("🎯🎯🎯\nPut the bullseye as close as you can to the target!".uppercased())
                .bold()
                .kerning(1.4)
                .padding()
                .multilineTextAlignment(.center)
                .lineSpacing(4.0)
                .font(.footnote)
            Text("89")
                .fontWeight(.black)
                .kerning(-1)
                .font(.title)
            HStack {
                Text("1")
                    .bold()
                Slider(
                    value: .constant(50),
                    in: 1.0 ... 100.0
                )
                Text("100")
                    .bold()
            }
            Button(action: {}) {
                Text("Hit Me")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
        ContentView()
            .previewLayout(
                .fixed(
                    width: 568,
                    height: 320
                )
            )
    }
}
