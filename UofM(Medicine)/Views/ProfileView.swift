//
//  Profile.swift
//  UofM(Medicine)
//
//  Created by Elijah Armande on 12/24/22.
//

import SwiftUI

struct ProfileView: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var birthday = Date()
    @State private var shouldSendNewsletter = false
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Personal Information")) {
                    TextField("First Name", text: $firstName)
                    TextField("Last Name", text: $lastName)
                    DatePicker("Birthdate", selection: $birthday, displayedComponents: .date)
                }
                
                Section(header: Text("Actions")) {
                    Toggle("Send Newsletter", isOn: $shouldSendNewsletter)
                        .toggleStyle(SwitchToggleStyle(tint: .yellow))
                    Link("Rogel Cancer Center at UM", destination: URL(string: "https://www.rogelcancercenter.org/")!)
                }
                
            }
            .navigationTitle("Account")
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Button {
                        hideKeyboard()
                    } label: {
                        Image(systemName: "keyboard. chevron.compact.down")
                    }
                    
                    Button("Save", action: saveUser)
                    
                }
            }
            
        }
        .accentColor(.yellow)

    }
    func saveUser() {
        print("yooo")
    }
    
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif
