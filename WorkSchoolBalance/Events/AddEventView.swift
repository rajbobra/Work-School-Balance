//
//  AddEventView.swift
//  Work-School-Balance
//
//  Created by Raj Bobra on 8/2/22.
//

import SwiftUI

struct AddEventView: View {
    @EnvironmentObject var router: ScheduleRouter
    @EnvironmentObject var eventModel: EventModel
    @State var latestEvent: Event = Event()
    @State var startTime: Date = Date.now
    @State var endTime: Date = Date.now
    @State var datePresented1: Bool = false
    @State var datePresented2: Bool = false
    let days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"]
    var body: some View {
        Form {
            Section("Event Name") {
                TextField("Name", text: $latestEvent.name)
            }
            Section("Event Interval") {
                DatePicker("Start Time", selection: $startTime, displayedComponents: [.hourAndMinute]).datePickerStyle(.graphical)
                DatePicker("End Time", selection: $endTime, displayedComponents: [.hourAndMinute]).datePickerStyle(.graphical)
            }
            Section("School or Work?") {
                Picker("School", selection: $latestEvent.type) {
                    Text("School").tag(EventType.school)
                    Text("Work").tag(EventType.work)
                }
                .pickerStyle(.segmented)
            }
            
            Section("Repeats?") {
                ForEach(0..<5) { i in
                    Toggle(days[i], isOn: $latestEvent.weekDays[i])
                }
            }
            
            Section {
                Button(
                    action: {
                        latestEvent.startTime = startTime
                        latestEvent.endTime = endTime
                        eventModel.addEvent(newEvent: latestEvent)
                        latestEvent = Event()
                        router.currentPage = .schedulePage
                    }, label: {Text("Save").foregroundColor(.blue)})
                .frame(width: 330, height: 25, alignment: .center)
                Button(action: { router.currentPage = .schedulePage },
                       label: {Text("Cancel").foregroundColor(.red)})
                .frame(width: 330, height: 25, alignment: .center)
            }
        }
    }
}

struct AddEventView_Previews: PreviewProvider {
    static var previews: some View {
        AddEventView()
    }
}
