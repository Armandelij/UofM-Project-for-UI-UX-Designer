//
//  LogInView.swift
//  UofM(Medicine)
//
//  Created by Elijah Armande on 12/24/22.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        
        
        TabView {
            DashboardView()
                .tabItem {
                    Label("Home", systemImage: "homekit")
                    
                }
                .tag(2)
            
            SearchView()
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                    
                }
                .tag(2)
            
            ProfileView()
                .tabItem {
                    Label("Account", systemImage: "person")
                    
                }
                .tag(2)
            
            NotificationView()
                .tabItem {
                    Label("Notification", systemImage: "bell.fill")
                    
                    
                }
                .tag(2)
        }
        
    }
}

struct LogInView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
