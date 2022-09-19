//
//  EventListView.swift
//  Work-School-Balance
//
//  Created by Raj Bobra on 8/1/22.
//

import SwiftUI

struct EventListView: View {
    @EnvironmentObject var eventModel: EventModel
    var body: some View {
            VStack(spacing: 20) {
                DateView()
                List {
                    ForEach(eventModel.eventList[eventModel.currentDate.day] ?? []) {event in
                        EventView(event: event)
                    }
                }
                .listStyle(GroupedListStyle())
            }
    }
}

struct EventListView_Previews: PreviewProvider {
    static var previews: some View {
        EventListView()
            .environmentObject(EventModel())
    }
}
