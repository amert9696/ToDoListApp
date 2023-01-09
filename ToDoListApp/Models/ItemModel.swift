//
//  ItemModel.swift
//  ToDoListApp
//
//  Created by Ali Mert Güleç on 9.01.2023.
//

import Foundation

struct ItemModel : Identifiable{
    
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
    
    
}
