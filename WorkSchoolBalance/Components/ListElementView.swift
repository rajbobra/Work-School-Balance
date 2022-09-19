//
//  ListElementView.swift
//  WorkSchoolBalance
//
//  Created by Raj Bobra on 8/21/22.
//

import SwiftUI

struct ListElementView: View {
    var title: String
    var subTitle: String = ""
    var strikethrough: Bool = false
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            if strikethrough {
                Text(title)
                    .fontWeight(.bold)
                    .strikethrough()
            } else {
                Text(title)
                    .fontWeight(.bold)
            }
            Text(subTitle)
                .foregroundColor(.gray)
        }
    }
}

struct ListElementView_Previews: PreviewProvider {
    static var previews: some View {
        ListElementView(title: "", subTitle: "")
    }
}
