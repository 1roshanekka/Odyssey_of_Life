//
//  SideBarView.swift
//  Odyssey_of_Life
//
//  Created by Roshan Ekka on 29/02/24.
//

import SwiftUI

struct SideBarView: View {
//    @Binding var menuSelection : SideBarMenu.ID?
    
    var body: some View {
        NavigationStack{
            SearchMenuView()
       
            List{
                Section(header: Text("Odyssey of Life").fontWeight(.bold))
                {
                    MainMenuView()
                }
                .listRowInsets(EdgeInsets())
                
                Section(header: Text("Tags").fontWeight(.bold)){
                   TagColorView()
                }
                Section(header: Text("Extras").fontWeight(.bold)){
                    ExclusiveView()
                }
            }
        }
    }
}

#Preview {
    SideBarView()
}
