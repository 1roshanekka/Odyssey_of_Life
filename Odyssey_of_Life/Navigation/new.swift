//
//  new.swift
//  Odyssey_of_Life
//
//  Created by Roshan Ekka on 29/02/24.
//

import SwiftUI


struct new: View {

    @State private var selectedTag: String? = "Select Tag"
    @State private var selectedDate: Date?

    let tags: [String] = ["Work", "Personal", "Important"]

    var body: some View {
        NavigationSplitView {
            // Tag Picker Column
            List {
                ForEach(tags, id: \.self) { tag in
                    Button(tag) {
                        selectedTag = tag
                    }
                    .foregroundColor(selectedTag == tag ? .blue : .black) // Highlight selection
                }
            }
            .navigationTitle("Tags")

            // Calendar Column
            DatePicker("Select Date", selection: $selectedDate, displayedMode: .date)
                .padding()
                .navigationTitle(selectedTag == nil ? "Calendar" : "\(selectedTag!) Calendar") // Dynamic title

            // Content Column (Placeholder for now)
            Text("Select a tag and date to see content.")
                .padding()
                .navigationTitle("Content")
        }
    }
}

#Preview {
    new()
}
