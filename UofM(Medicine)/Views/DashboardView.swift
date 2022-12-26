//
//  DashboardView.swift
//  UofM(Medicine)
//
//  Created by Elijah Armande on 12/24/22.
//

import SwiftUI

struct DashboardView: View {
    
    var body: some View {
        ScrollView {
            VStack {
                welcomeText()
                lastDay()
                Text("Today")
                    .font(.system(size: 15, weight: .semibold, design: .rounded))
                    .padding(.trailing, 320)
                fitnessInfo(fitData: fitnessData)
                    .tag(0).overlay(addWidgets())
                Spacer()
            }
        }
    }
}


struct welcomeText : View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Hello")
                .font(.system(size: 42, weight: .bold, design: .rounded))
            Text("Elijah.")
                .font(.system(size: 40, weight: .bold, design: .rounded))
        }
        .padding(.top, 25)
        .padding(.trailing, 200)
    }
}

struct lastDay : View {
    var body: some View {
        HStack(spacing: 5) {
            Image(systemName: "info.circle")
                .resizable()
                .font(.system(size: 20, weight: .bold, design: .rounded))
                .frame(width: 20, height: 20, alignment: .leading)
                .foregroundColor(.black)
                .padding()
            
            Text("You haven't recorded a workout for five days.")
                .font(.system(size: 12, weight: .semibold, design: .rounded))
                .foregroundColor(.black)
                .layoutPriority(1)
                .lineLimit(1)
                .padding()
        }
        .background(Color.white)
        .clipShape(Rectangle())
        .cornerRadius(20)
        .padding()
    }
}


struct fitnessInfo: View {
    
    var fitData : [Fitness]
    var columns = Array(repeating: GridItem(.flexible(), spacing: 5), count: 2)
    
    var body: some View {
        LazyVGrid(columns: columns, spacing: 30) {
            ForEach(fitData) {fitness in
                ZStack(alignment: Alignment(horizontal: .trailing, vertical: .top)) {
                    VStack(alignment: .leading, spacing: 25) {
                        Text(fitness.title)
                            .foregroundColor(.white)
                        Text(fitness.data)
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding(.top, 10)
                        Text(fitness.suggest)
                            .foregroundColor(.white)
                    }
                    .padding()
                    .background(Color(fitness.image))
                    .cornerRadius(10)
                    .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 5)
                }
            }
        }
        .frame(width: 300, height: 300)
        .padding(.horizontal, 10)
        .padding(.top, 5)
    }
}

struct Fitness : Identifiable {
    var id: Int
    var title: String
    var image: String
    var data: String
    var suggest: String
}

var fitnessData = [

    Fitness(id: 0, title: "Heart Rate", image: "heart", data: "110 bpm", suggest: "70-130\nHeathly"),
    Fitness(id: 1, title: "Running", image: "running", data: "4.5 km", suggest: "Daily Goal\n10 km"),
    Fitness(id: 2, title: "Cycling", image: "cycle", data: "17.2 km", suggest: "Daily Goal\n20 km"),

]

struct addWidgets : View {
    var body: some View {
        HStack(spacing: 5) {
            Text("+ Add Widgets")
                .font(.system(size: 12, weight: .semibold, design: .rounded))
                .foregroundColor(.black)
                .layoutPriority(1)
                .lineLimit(2)
                .padding()
        }
        .background(Color.white)
        .clipShape(Rectangle())
        .cornerRadius(10)
        .padding()
        .padding(.leading, 170)
        .padding(.top, 130)
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
