//
//  AssignmentModel.swift
//  WorkSchoolBalance
//
//  Created by Raj Bobra on 8/21/22.
//

import Foundation

class AssignmentModel: ObservableObject {
    @Published var assignmentList: [Assignment]
    
    init() {
        self.assignmentList = []
    }
    
    func addAssignment(newAssignment: Assignment) {
        self.assignmentList.append(newAssignment)
    }
}


class Assignment: Identifiable {
    var id: UUID
    var name: String
    var dueDate: Date
    
    init(id: UUID = UUID(), name: String = "", dueDate: Date = Date()) {
        self.id = id
        self.name = name
        self.dueDate = dueDate
    }
    
    init() {
        self.id = UUID()
        self.name = ""
        self.dueDate = Date()
    }
}
