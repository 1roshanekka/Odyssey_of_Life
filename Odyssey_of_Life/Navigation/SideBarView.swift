//
//  SideBarView.swift
//  Odyssey_of_Life
//
//  Created by Roshan Ekka on 29/02/24.
//

import SwiftUI

struct SideBarView: View {
    var body: some View {
        NavigationStack{
            Text("Your Life Today")
            Text("Aspects")
            
            List{
                Section("Tags"){
                   TagColorView()
                }
                Section("Extras"){
                    ExclusiveView()
                }
            }
        }
        .padding(.top, 20)
    }
}

#Preview {
    SideBarView()
}
