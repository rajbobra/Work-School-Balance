//
//  HomeView.swift
//  Work-School-Balance
//
//  Created by Raj Bobra on 8/1/22.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var eventModel: EventModel
    var body: some View {
        AgendaView()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct AgendaView: View {
    @EnvironmentObject var eventModel: EventModel
    @State var isP = false
    var body: some View {
        NavigationView {
            EventListView()
                .navigationBarTitle(Text("Agenda").font(.body), displayMode: .automatic)
        }
    }
}
