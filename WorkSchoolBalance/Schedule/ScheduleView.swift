//
//  ScheduleView.swift
//  Work-School-Balance
//
//  Created by Raj Bobra on 8/2/22.
//

import SwiftUI

struct ScheduleView: View {
    @EnvironmentObject var scheduleRouter : ScheduleRouter
    @EnvironmentObject var eventModel: EventModel
    var body: some View {
        NavigationView {
            List {
                Section("School") {
                    ForEach(eventModel.schoolEvents) {event in
                        ListElementView(title: event.name)
                    }
                    .onDelete { indexSet in
                        print("Deleted")
                    }
                }
                
                Section("Work") {
                    ForEach(eventModel.workEvents) {event in
                        ListElementView(title: event.name)
                    }
                    .onDelete { indexSet in
                        print("Deleted")
                    }
                }
            }
                .navigationBarTitle(Text("Schedule").font(.body), displayMode: .automatic)
                                .navigationBarItems(
                                    trailing:
                                        Button(action: {
                                            scheduleRouter.currentPage = .addEventPage
                                        }, label: {
                                            Label("", systemImage: "plus")
                                        })
                                )
        }
    }
}

struct ScheduleView_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleView()
    }
}
