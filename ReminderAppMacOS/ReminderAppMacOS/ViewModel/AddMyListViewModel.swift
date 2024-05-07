//
//  AddMyListViewModel.swift
//  ReminderAppMacOS
//
//  Created by Sachin Sabat on 22/04/24.
//

import Foundation
import CoreData
import SwiftUI

class AddNewListViewModel: ObservableObject {

    @Published var name: String = ""
    @Published var color: Color = .blue

    var context: NSManagedObjectContext

    init(context: NSManagedObjectContext) {
        self.context = context
    }

    func save() {

        do {

            let myList = MyList(context: context)
            myList.name = name
            myList.color = NSColor(color)
            try myList.save()
        } catch {
            print(error)
        }

    }

}
