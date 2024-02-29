//
//  EntryView.swift
//  Odyssey_of_Life
//
//  Created by Roshan Ekka on 29/02/24.
//

import SwiftUI

struct EntryView: View {
    var body: some View {
            InputForm()
    }
}

#Preview {
    EntryView()
}

struct InputForm: View {
    
    @State private var text_entry : String = ""
    @State private var date_entry : Date = .now
    
    var body: some View {
        NavigationStack{
            Form{
//                TextField("Start typing your day today...", text: $text_entry)
                DatePicker("", selection: $date_entry, displayedComponents: .date)
                TextField(text: $text_entry, prompt: Text("Start typing about your day today...")) {
//                        Text("Username")
                    }
                .padding()
            }
            .navigationTitle("Journal")
        }
    }
}
