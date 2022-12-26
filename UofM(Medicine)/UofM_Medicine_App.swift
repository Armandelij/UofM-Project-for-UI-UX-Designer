//
//  UofM_Medicine_App.swift
//  UofM(Medicine)
//
//  Created by Elijah Armande on 12/24/22.
//

import SwiftUI

@main
struct UofM_Medicine_App: App {
    @StateObject var authentication = Authentication()
    
    var body: some Scene {
        WindowGroup {
            SplashScreenView()
        }
    }
}
