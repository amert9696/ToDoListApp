//
//  ToDoListAppApp.swift
//  ToDoListApp
//
//  Created by Ali Mert Güleç on 9.01.2023.
//

import SwiftUI

@main
struct ToDoListAppApp: App {
   @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            
            NavigationView{
                ListView()
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .environmentObject(listViewModel)
           
        }
    }
}
