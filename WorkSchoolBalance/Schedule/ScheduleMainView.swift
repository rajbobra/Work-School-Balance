//
//  ScheduleMainView.swift
//  WorkSchoolBalance
//
//  Created by Raj Bobra on 8/21/22.
//

import SwiftUI

struct ScheduleMainView: View {
    @EnvironmentObject var scheduleRouter : ScheduleRouter
    var body: some View {
        switch scheduleRouter.currentPage {
        case .schedulePage:
            ScheduleView()
        case .addEventPage:
            AddEventView()
        default:
            ScheduleView()
        }
    }
}

struct ScheduleMainView_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleMainView()
    }
}
