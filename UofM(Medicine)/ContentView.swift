//
//  ContentView.swift
//  UofM(Medicine)
//
//  Created by Elijah Armande on 12/24/22.
//

import SwiftUI

struct ContentView: View {
    //    @StateObject private var loginVM = LoginViewModel()
    //    @EnvironmentObject var authentication: Authentication
    
    @StateObject var vm = ViewModel()
    
    
    var body: some View {
        if vm.authenticated {
            MainView()
        } else {
            ZStack {
                Color("background")
                
                Rectangle()
                    .frame(width: 270, height: 550)
                    .cornerRadius(20)
                    .opacity(0.7)
                
                VStack {
                    //Spacer()
                    Image("m")
                        .resizable()
                        .frame(width: 106, height: 86)
                        .padding(.top, 350)
                    
                    Text("Center for Health Communication")
                    Text("Research")
                        .padding(.bottom, 50)
                    
                    ZStack(alignment: .leading) {
                        TextField("", text: $vm.username)
                            .font(.title3)
                            .foregroundColor(.black)
                            .frame(width: 250, height: 30)
                            .background(Color(.white))
                            .cornerRadius(8)
                            .padding(.bottom, 5)
                        
                        
                        if vm.username.isEmpty {
                            Text("Username")
                                .foregroundColor(.black.opacity(0.3))
                                .font(.subheadline)
                        }
                    }
                    
                    
                    ZStack(alignment: .leading) {
                        SecureField("", text: $vm.password)
                            .font(.title3)
                            .foregroundColor(.black)
                            .frame(width: 250, height: 30)
                            .background(Color(.white))
                            .cornerRadius(8)
                        
                        if vm.password.isEmpty {
                            Text("Password")
                                .foregroundColor(.black.opacity(0.3))
                                .font(.subheadline)
                        }
                        
                    }
                    Spacer()
                        .frame(height: 50)
                    
                    
                    Button {
                        //flip this on and off !
                        vm.authenticate()
                    } label: {
                        Text("Log in")
                            .font(.title3)
                            .frame(width: 200, height: 5)
                            .padding()
                            .foregroundColor(Color(.white))
                            .background(Color("button-background"))
                            .cornerRadius(10)
                    }
                    
                    
                    HStack(alignment: .top, spacing: -20) {
                        
                        Button {
                            print("Hello")
                        } label: {
                            Text("Reset Password")
                                .font(.system(size: 12, weight: .heavy))
                                .padding()
                                .foregroundColor(Color.white)
                        }
                        
                        Button {
                            print("Hello")
                        } label: {
                            Text("Reset Username")
                                .font(.system(size: 12, weight: .heavy))
                                .padding()
                                .foregroundColor(Color.white)
                        }
                        
                    }
                    
                    Button  {
                        print("Hello")
                    } label: {
                        Text("Sign Up")
                            .font(.title3)
                            .frame(width: 75, height: 10 )
                            .padding()
                            .foregroundColor(Color(.white))
                            .background(Color("button-background"))
                            .cornerRadius(10)
                        
                    }
                    
                }
                .padding(.bottom, 350)
                
            }
            .alert("Access denied",isPresented: $vm.invalid ) {
                Button("Dismiss", action: vm.logPressed)
            }
            .autocapitalization(.none)
            
            
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
