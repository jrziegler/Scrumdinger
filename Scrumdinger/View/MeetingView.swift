//
//  ContentView.swift
//  Scrumdinger
//
//  Created by Joao Rodrigo Ziegler on 31.12.20.
//

import SwiftUI

struct MeetingView: View {
    @Binding var scrum: DailyScrum
    @StateObject var scrumTimer = ScrumTimer()

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16.0)
                .fill(scrum.color)
            VStack {
                MeetingHeaderView(secondsElapsed: $scrumTimer.secondsElapsed,
                                  secondsRemaining: $scrumTimer.secondsRemaining,
                                  scrumColor: scrum.color)
                Circle()
                    .strokeBorder(lineWidth: 24, antialiased: true)

                HStack {
                    Text("Speaker 1 of 3.")
                        .font(.title3)

                    Spacer()

                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Image(systemName: "forward.fill")
                    }
                    .accessibilityLabel(Text("Next speaker"))
                }
            }
        }
        .padding()
        .foregroundColor(scrum.color.accessibleFontColor)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingView(scrum: .constant(DailyScrum.data[0]))
    }
}
