//
//  History.swift
//  Scrumdinger
//
//  Created by Joao Rodrigo Ziegler on 01.01.21.
//

import Foundation

struct History: Identifiable, Codable {
    let id: UUID
    let date: Date
    var attendees: [String]
    var lengthInMinutes: Int
    var transcript: String?

    init(id: UUID = UUID(), date: Date = Date(), attendees: [String], lengthInMinutes: Int,
         transcript: String? = nil) {
        self.id = id
        self.date = date
        self.attendees = attendees
        self.lengthInMinutes = lengthInMinutes
        self.transcript = transcript
    }
}
