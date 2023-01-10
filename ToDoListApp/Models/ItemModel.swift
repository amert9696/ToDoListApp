//
//  ItemModel.swift
//  ToDoListApp
//
//  Created by Ali Mert Güleç on 9.01.2023.
//

import Foundation
//immutable struct


struct ItemModel : Identifiable{
    
    let id: String
    var title: String
    let isCompleted: Bool

    init(id: String = UUID().uuidString, title: String, isCompleted: Bool) {
        self.title = title
        self.isCompleted = isCompleted
        self.id = id
    }
    
    func updateCompletion() -> ItemModel{
        return ItemModel(id:id,title:title,isCompleted:!isCompleted)
    }
    
}
