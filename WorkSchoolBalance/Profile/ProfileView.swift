//
//  ProfileView.swift
//  WorkSchoolBalance
//
//  Created by Raj Bobra on 8/9/22.
//

import SwiftUI

struct ProfileView: View {
    @State private var editingEnabled: Bool = false
    @State private var name: String = ""
    @State private var currentSemester: String = ""
    @State private var school: String = ""
    @State private var currentCompany: String = ""
    var body: some View {
        NavigationView {
            Form {
                if editingEnabled {
                    EditableView(headerName: "Name", boundTextFieldValue: $name)
                    EditableView(headerName: "School", boundTextFieldValue: $school)
                    EditableView(headerName: "Semester", boundTextFieldValue: $currentSemester)
                    EditableView(headerName: "Company", boundTextFieldValue: $currentCompany)
                    
                } else {
                    DisplayView(fieldName: "Name", fieldValue: name)
                    DisplayView(fieldName: "School", fieldValue: school)
                    DisplayView(fieldName: "Semester", fieldValue: currentSemester)
                    DisplayView(fieldName: "Company", fieldValue: currentCompany)
                }
            }
            .navigationTitle("Profile")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        editingEnabled.toggle()
                    } label: {
                        Label("", systemImage: "checkmark")
                    }
                    .disabled(!editingEnabled)
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        editingEnabled.toggle()
                    } label: {
                        Label("", systemImage: "square.and.pencil")
                    }
                }
            }
        }
    }
}

struct EditableView: View {
    var headerName: String
    @Binding var boundTextFieldValue: String
    var body: some View {
        Section(headerName) {
            TextField("", text: $boundTextFieldValue)
        }
    }
}

struct DisplayView: View {
    var fieldName: String
    var fieldValue: String
    var body: some View {
        HStack {
            Text(fieldName)
            Spacer(minLength: 50)
            Text(fieldValue)
                .foregroundColor(.gray)
        }
    }
}
struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
