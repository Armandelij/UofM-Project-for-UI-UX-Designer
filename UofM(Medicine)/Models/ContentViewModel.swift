//
//  ContentViewModel.swift
//  UofM(Medicine)
//
//  Created by Elijah Armande on 12/25/22.
//

import SwiftUI

extension ContentView {
    class ViewModel: ObservableObject {
        @AppStorage("AUTH_KEY") var authenticated = false {
            willSet {objectWillChange.send()}
        }
        @AppStorage("USER_KEY") var username = "username"
        @Published var password = "password"
        @Published var invalid: Bool = false
        
        private var sampleUser = "username"
        private var samplePassword = "password"
        
        init() {
            print("Currently Logged on: \(authenticated)")
            print("Current user: \(username)")
        }
        
        func toggleAuthentication() {
            self.password = ""
            withAnimation {
                authenticated.toggle()
            }
        }
        
        func authenticate() {
            guard self.username.lowercased() == sampleUser else {
                self.invalid = true
                return
            }
            
                guard self.password.lowercased() == samplePassword else {
                    self.invalid = true
                    return
                    
                }
                toggleAuthentication()
            }
            
            func logOut() {
                toggleAuthentication()
            }
            
            func logPressed() {
                print("Button pressed")
            }
        }
    }
    

