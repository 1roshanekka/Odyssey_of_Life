//
//  SearchMenuView.swift
//  Odyssey_of_Life
//
//  Created by Roshan Ekka on 01/03/24.
//

import SwiftUI

struct SearchMenuView: View {
    
    @State private var searchItem : String = ""
    
    var body: some View {
        HStack{
            Form{
                TextField("", text: $searchItem)
                    .overlay()
                {
                    HStack(){
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                            .foregroundColor(.gray)
                    }
                }
            }
        }
    }
}

#Preview {
    SearchMenuView()
}
