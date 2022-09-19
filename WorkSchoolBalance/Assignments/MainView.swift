//
//  MainView.swift
//  WorkSchoolBalance
//
//  Created by Raj Bobra on 8/21/22.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var assignmentModel: AssignmentModel
    @EnvironmentObject var assignmentRouter: AssignmentRouter
    var body: some View {
        NavigationView {
            List {
                ForEach(assignmentModel.assignmentList) {assign in
                    AssignmentView(name: assign.name, date: assign.dueDate.dateMonthYear, strikethrough: (assign.dueDate < Date()) ? true : false)
                }
                .onDelete { indexSet in
                    print("Deleted")
                }
            }
            .navigationTitle(Text("Assignments"))
            .navigationBarItems(
                trailing:
                    Button(action: {
                        assignmentRouter.currentPage = .addEventPage
                    }, label: {
                        Label("", systemImage: "plus")
                    })
            )
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
