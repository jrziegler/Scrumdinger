//
//  MeetingTimerView.swift
//  Scrumdinger
//
//  Created by Joao Rodrigo Ziegler on 01.01.21.
//

import SwiftUI

struct MeetingTimerView: View {
    var body: some View {
        Circle()
            .strokeBorder(lineWidth: 24, antialiased: true)
    }
}

struct MeetingTimerView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingTimerView()
    }
}
