//
//  ScheduleRouter.swift
//  WorkSchoolBalance
//
//  Created by Raj Bobra on 8/21/22.
//

import Foundation

class ScheduleRouter: ObservableObject {
    
    @Published var currentPage: Page = .schedulePage
    
}

enum Page {
    case schedulePage
    case addEventPage
    case assignmentsView
}
