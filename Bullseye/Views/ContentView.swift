//
//  ContentView.swift
//  Bullseye
//
//  Created by Ben Godfrey on 12/19/20.
//

import SwiftUI

struct ContentView: View {
    @State private var alertIsVisible: Bool = false
    @State private var sliderValue: Double = 50.0
    @State private var game: Game = Game()
    
    var body: some View {
        VStack {
            Text("🎯🎯🎯\nPut the bullseye as close as you can to the target!".uppercased())
                .bold()
                .kerning(1.4)
                .padding()
                .multilineTextAlignment(.center)
                .lineSpacing(4.0)
                .font(.footnote)
            Text(String(game.target))
                .fontWeight(.black)
                .kerning(-0.7)
                .font(.title)
            HStack {
                Text("1")
                    .bold()
                Slider(
                    value: $sliderValue,
                    in: 1.0 ... 100.0
                )
                Text("100")
                    .bold()
            }
            Button(action: {
                print("Hello world!")
                self.alertIsVisible = true
            }) {
                Text("Hit Me")
            }
            .alert(
                isPresented: $alertIsVisible,
                content: {
                    let roundedValue: Int = Int(self.sliderValue.rounded())
                    let points: Int = game.points(sliderValue: roundedValue)
                    return Alert(
                        title: Text("Hello, there"),
                        message: Text(
                            "The slider's value is \(self.sliderValue).\n" +
                                "The rounded value is \(roundedValue).\n" +
                                "You won \(points) points."
                        ),
                        dismissButton: .default(Text("Awesome!"))
                    )
                }
            )
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
