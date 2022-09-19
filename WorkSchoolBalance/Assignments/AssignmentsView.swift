//
//  AssignmentsView.swift
//  WorkSchoolBalance
//
//  Created by Raj Bobra on 8/21/22.
//

import SwiftUI

struct AssignmentsView: View {
    @EnvironmentObject var assignmentRouter: AssignmentRouter
    @StateObject var assignmentModel = AssignmentModel()
    var body: some View {
        switch assignmentRouter.currentPage {
        case .assignmentsView:
            MainView()
                .environmentObject(assignmentModel)
        case .addEventPage:
            AddView()
                .environmentObject(assignmentModel)
        default:
            MainView()
                .environmentObject(assignmentModel)
        }
    }
}

struct AssignmentsView_Previews: PreviewProvider {
    static var previews: some View {
        AssignmentsView()
    }
}
