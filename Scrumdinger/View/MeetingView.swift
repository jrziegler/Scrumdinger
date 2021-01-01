//
//  ContentView.swift
//  Scrumdinger
//
//  Created by Joao Rodrigo Ziegler on 31.12.20.
//

import SwiftUI

struct MeetingView: View {
    @Binding var scrum: DailyScrum

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16.0)
                .fill(scrum.color)
            VStack {
                ProgressView(value: 5, total: 15)

                HStack {
                    VStack(alignment: .leading) {
                        Text("Seconds Elapsed")
                            .font(.caption)
                        Label("300", systemImage: "hourglass.bottomhalf.fill")
                    }

                    Spacer()

                    VStack(alignment: .trailing) {
                        Text("Seconds Remaining")
                            .font(.caption)

                        Label("600", systemImage: "hourglass.tophalf.fill")
                    }
                }
                .accessibilityElement(children: .ignore)
                .accessibilityLabel(Text("Time remaining"))
                .accessibilityValue(Text("10 minutes"))

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
