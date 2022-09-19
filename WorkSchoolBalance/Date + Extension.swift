//
//  Date + Extension.swift
//  WorkSchoolBalance
//
//  Created by Raj Bobra on 8/20/22.
//

import Foundation

extension Date {
    
    var day: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        return dateFormatter.string(from: self)
    }

    var dateMonthYear: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "d MMM y"
        return dateFormatter.string(from: self)
    }
    
    var time: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM:HH a"
        return dateFormatter.string(from: self)
    }
}
