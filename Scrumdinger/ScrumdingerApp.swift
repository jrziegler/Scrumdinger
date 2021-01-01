//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Joao Rodrigo Ziegler on 31.12.20.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: .constant(DailyScrum.data))
            }
        }
    }
}
