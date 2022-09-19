//
//  DayView.swift
//  Work-School-Balance
//
//  Created by Raj Bobra on 8/1/22.
//

import SwiftUI

struct CapsuleView: View {
    var capsuleText: String
    var body: some View {
        Text("\(capsuleText)")
            .padding(7)
            .font(.footnote)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.gray, lineWidth: 1)
            )
            .fixedSize(horizontal: true, vertical: false)
    }
}

struct CapsuleView_Previews: PreviewProvider {
    static var previews: some View {
        CapsuleView(capsuleText: "Mon")
    }
}
