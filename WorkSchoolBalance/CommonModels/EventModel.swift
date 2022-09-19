//
//  EventModel.swift
//  Work-School-Balance
//
//  Created by Raj Bobra on 8/2/22.
//

import Foundation

class EventModel: ObservableObject {
    @Published var eventList: [String: [Event]]
    @Published var schoolEvents: [Event]
    @Published var workEvents: [Event]
    @Published var currentDate : Date

    init() {
        self.eventList = ["Monday":[], "Tuesday": [], "Wednesday": [], "Thursday": [], "Friday": [], "Saturday": [], "Sunday": []]
        self.workEvents = []
        self.schoolEvents = []
        self.currentDate = Date()
    }

    func addEvent(newEvent: Event) {
        var i = 0
        let days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"]
        for each in newEvent.weekDays {
            if each {
                self.eventList[days[i]]?.append(newEvent)
            }
            i = i + 1
        }
        (newEvent.type == .school) ? self.schoolEvents.append(newEvent) : self.workEvents.append(newEvent)
    }
}


class Event: Identifiable {
    var name: String
    var startTime: Date
    var endTime: Date
    var date: Date
    var weekDays: [Bool]
    var type: EventType
    var id: UUID


    init() {
        self.name = ""
        self.startTime = Date()
        self.endTime = Date()
        self.date = Date()
        self.weekDays = [false, false, false, false, false]
        self.type = .work
        self.id = UUID()
    }
}


enum EventType: CaseIterable {
    case work
    case school
}

enum EventSource: CaseIterable {
    case home
    case schedule
}


