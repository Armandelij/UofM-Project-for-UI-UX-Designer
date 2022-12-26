//
//  SearchView.swift
//  UofM(Medicine)
//
//  Created by Elijah Armande on 12/24/22.
//

import SwiftUI

struct SearchView: View {
    @State private var searchTerm = ""
    
    let schools  = ["Michigan", "Texas", "Harvard", "Ohio State"]
    
    var filteredschools: [String] {
        searchTerm.isEmpty ? schools : schools.filter {
            $0.lowercased().contains(searchTerm.lowercased())
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                ForEach(filteredschools, id:\.self) {school in
                    Text(school)
                    
                }
            }
            .searchable(text: $searchTerm)
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
