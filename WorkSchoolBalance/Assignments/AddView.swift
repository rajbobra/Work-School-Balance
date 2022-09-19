//
//  AddView.swift
//  WorkSchoolBalance
//
//  Created by Raj Bobra on 8/21/22.
//

import SwiftUI

struct AddView: View {
    @EnvironmentObject var assignmentRouter: AssignmentRouter
    @EnvironmentObject var assignmentModel: AssignmentModel
    @State var latestAssignment: Assignment = Assignment()
    @State var showDate: Bool = false
    @State var dueDate: Date = Date()
    var body: some View {
        Form {
            Section("Assignment or Project Name") {
                TextField("Name", text: $latestAssignment.name)
            }
            Section("Due Date") {
                HStack {
                    Text("Due Date")
                    Spacer()
                    CapsuleView(capsuleText: dueDate.dateMonthYear)
                        .onTapGesture {
                            showDate.toggle()
                        }
                    .popover(isPresented: $showDate, attachmentAnchor: .point(.center), content: {
                        VStack(spacing: 20) {
                            DatePicker("", selection: $dueDate, displayedComponents: [.date]).datePickerStyle(.graphical).labelsHidden()
                            Button("Done") {
                                latestAssignment.dueDate = dueDate
                                showDate.toggle()
                            }
                        }
                    })
                    .padding()
                }
                
            }
            Section("Save your changes?") {
                Button(
                    action: {
                        assignmentModel.addAssignment(newAssignment: latestAssignment)
                        latestAssignment = Assignment()
                        assignmentRouter.currentPage = .assignmentsView
                    }, label: {Text("Save").foregroundColor(.blue)})
                .frame(width: 330, height: 25, alignment: .center)
                Button(action: { assignmentRouter.currentPage = .assignmentsView },
                       label: {Text("Cancel").foregroundColor(.red)})
                .frame(width: 330, height: 25, alignment: .center)
            }
        }
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView()
    }
}
