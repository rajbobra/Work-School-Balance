//
//  DateView.swift
//  Work-School-Balance
//
//  Created by Raj Bobra on 8/1/22.
//

import SwiftUI

struct DateView: View {
    @EnvironmentObject var eventModel: EventModel
    @State var showDate = false
    var body: some View {
            HStack(alignment: .center, spacing: 180){
//                CapsuleView(capsuleText: eventModel.currentDate.day)
//                    .onTapGesture {
//                        showDate.toggle()
//                    }
//                CapsuleView(capsuleText: eventModel.currentDate.dateMonthYear)
//                    .onTapGesture {
//                        showDate.toggle()
//                    }
                DatePicker("Today's Date:", selection: $eventModel.currentDate, displayedComponents: [.date]).labelsHidden()
            }
            /*.popover(isPresented: $showDate, attachmentAnchor: .point(.center), content: {
               VStack(spacing: 20) {
                    DatePicker("", selection: $eventModel.currentDate, displayedComponents: [.date]).datePickerStyle(.graphical).labelsHidden()
                    Button("Done") {
                        showDate.toggle()
                    }
                }
            })*/
            .padding()
    }
}

struct DateView_Previews: PreviewProvider {
    static var previews: some View {
        DateView()
    }
}
