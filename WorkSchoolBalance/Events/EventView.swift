//
//  EventView.swift
//  Work-School-Balance
//
//  Created by Raj Bobra on 8/1/22.
//

import SwiftUI

struct EventView: View {
    var event: Event
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(event.name).font(.footnote).fontWeight(.bold)
            
            HStack(spacing: 190) {
                CategoryView(category: event.type)
                VStack {
                    CapsuleView(capsuleText: event.startTime.time)
                    CapsuleView(capsuleText: event.endTime.time)
                }
            }
        }
        .padding()
        
    }
}

struct EventView_Previews: PreviewProvider {
    static var previews: some View {
        EventView(event: Event())
    }
}
