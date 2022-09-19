//
//  CategoryView.swift
//  Work-School-Balance
//
//  Created by Raj Bobra on 8/1/22.
//

import SwiftUI

struct CategoryView: View {
    var category: EventType
    var body: some View {
        HStack {
            Circle()
                .fill((category == .work) ? .blue : .red)
                .frame(width: 10, height: 10)
            CapsuleView(capsuleText: (category == .work) ? "work" : "school")
        }
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(category: .school)
    }
}
