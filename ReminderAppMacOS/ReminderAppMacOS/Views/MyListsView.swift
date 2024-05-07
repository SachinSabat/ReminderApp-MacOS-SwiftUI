//
//  MyListsView.swift
//  ReminderAppMacOS
//
//  Created by Sachin Sabat on 06/05/24.
//

import SwiftUI

struct MyListsView: View {

    @StateObject var vm: MyListsViewModel

    init(vm: MyListsViewModel) {
        _vm = StateObject(wrappedValue: vm)
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {

            List {
                Text("My Lists")
                ForEach(vm.myLists) { myList in
                    HStack {
                        Image(systemName: Constants.Icons.line3HorizontalCircleFill)
                            .font(.title)
                            .foregroundColor(myList.color)
                        Text(myList.name)
                    }.contextMenu {
                        Button {
                            // action
                            vm.delete(myList)
                        } label: {
                            Label("Delete", systemImage: "trash")
                        }

                    }
                }
            }

        }
    }
}
