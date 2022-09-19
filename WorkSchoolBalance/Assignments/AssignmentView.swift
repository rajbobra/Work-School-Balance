//
//  AssignmentView.swift
//  WorkSchoolBalance
//
//  Created by Raj Bobra on 8/21/22.
//

import SwiftUI

struct AssignmentView: View {
    var name: String
    var date: String
    var strikethrough: Bool
    var body: some View {
       ListElementView(title: name, subTitle: "Due by \(date)", strikethrough: strikethrough)
    }
}

struct AssignmentView_Previews: PreviewProvider {
    static var previews: some View {
        AssignmentView(name: "", date: "", strikethrough: false)
    }
}
