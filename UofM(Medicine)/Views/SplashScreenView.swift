//
//  SplashScreenView.swift
//  UofM(Medicine)
//
//  Created by Elijah Armande on 12/24/22.
//

import SwiftUI

struct SplashScreenView: View {
    @StateObject var authentication = Authentication()
    @State var isActive: Bool = false
    var body: some View {

        if isActive {
            ContentView()
                .environmentObject(authentication)
        } else {
            ZStack {
                Color("background")
                
                
                HStack(alignment: .top, spacing: 20) {
                    Image("m")
                        .resizable()
                        .frame(width: 80, height: 63)
                    
                    VStack {
                        Text("Michigan Medicine")
                            .font(.system(size: 25, weight: .bold))
                        Text("University of Michigan")
                            .font(.system(size: 20, weight: .light))
                    }
                }
                
                .padding(.bottom, 25)
            }
            .ignoresSafeArea()
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
