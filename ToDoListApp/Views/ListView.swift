//
//  ListView.swift
//  ToDoListApp
//
//  Created by Ali Mert Güleç on 9.01.2023.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [ItemModel] = [
    ItemModel(title: "This is the first title!", isCompleted: false),
    ItemModel(title: "This is the second!", isCompleted: true),
    ItemModel(title: "Third!", isCompleted: false),
    ]
    
    var body: some View {
        List{
            ForEach(items) { item in
                ListRowView(item: item)
            }
            
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Todo list 📝")
        .navigationBarItems(leading: EditButton(), trailing: NavigationLink("Add", destination: AddView()))
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        
        NavigationView{
            ListView()
        }
        
    }
}


