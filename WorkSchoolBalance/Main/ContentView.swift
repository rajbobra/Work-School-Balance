//
//  ContentView.swift
//  WorkSchoolBalance
//
//  Created by Raj Bobra on 8/3/22.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 1
    @StateObject var scheduleRouter = ScheduleRouter()
    @StateObject var assignmentRouter = AssignmentRouter()
    @StateObject var eventModel = EventModel()
    var body: some View {
        TabView(selection: $selection) {
            ScheduleMainView()
                .tabItem {
                    Label("Schedule", systemImage: "plus.app")
                }
                .tag(0)
                .environmentObject(scheduleRouter)
                .environmentObject(eventModel)
            HomeView()
                .tabItem {
                Label("Home", systemImage: "calendar")
                }
                .tag(1)
                .environmentObject(eventModel)
            AssignmentsView()
                .tabItem {
                    Label("Assignments", systemImage: "eyes.inverse")
                }
                .tag(2)
                .environmentObject(assignmentRouter)
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.crop.circle")
                }
                .tag(3)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ScheduleRouter())
            .environmentObject(EventModel())
    }
}
