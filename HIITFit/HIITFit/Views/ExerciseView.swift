//
//  ExerciseView.swift
//  HIITFit
//
//  Created by Kai on 09/08/2023.
//

import SwiftUI
import AVKit

struct ExerciseView: View {
    let index: Int
    let videos = [
        "squat",
        "step-up",
        "burpee",
        "sun-salute"
    ]
    
    let exerciseNames = [
        "Squat",
        "Step up",
        "Burpee",
        "Sun Salute"
    ]
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                HeaderView(exerciseName: exerciseNames[index])
                    .padding(.bottom)
                if let url = Bundle.main.url(
                    forResource: videos[index],
                    withExtension: "mp4"
                ) {
                    VideoPlayer(player: AVPlayer(url: url))
                } else {
                    Text("Couldn’t find \(videos[index]).mp4")
                        .foregroundColor(.red)
                }
              Text("Timer")
              Text("Start/Done button")
              Text("Rating")
              Text("History button")
            }
            .frame(height: geometry.size.height * 0.45)
        }
    }
}

struct ExerciseView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseView(index: 0)
    }
}
