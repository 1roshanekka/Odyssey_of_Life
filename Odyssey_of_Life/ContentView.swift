//
//  ContentView.swift
//  Odyssey_of_Life
//
//  Created by Roshan Ekka on 29/02/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]
    
    @State private var selectedDate = Date()
    
        var body: some View {
            NavigationSplitView {
                ZStack{
                    SideBarView()
                }
            } detail: {
                EntryView()
            }
//            .navigationTitle("Odyssey of Life")
//            .navigationSplitViewColumnWidth(min: 480, ideal: 200)
            .toolbar {
                ToolbarItem {
                    Button(action: addItem) {
                        Label("Add Item", systemImage: "plus")
                    }
                    Button(action: searchText) {
                        Label("Search", systemImage: "magnifyingglass")
                    }
                }
            }
            
        }
    
        private func addItem() {
            withAnimation {
                let newItem = Item(timestamp: Date())
                modelContext.insert(newItem)
            }
        }
        private func searchText() {
            withAnimation {
                let newItem = Item(timestamp: Date())
                modelContext.insert(newItem)
            }
        }
    
        private func deleteItems(offsets: IndexSet) {
            withAnimation {
                for index in offsets {
                    modelContext.delete(items[index])
                }
            }
        }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
