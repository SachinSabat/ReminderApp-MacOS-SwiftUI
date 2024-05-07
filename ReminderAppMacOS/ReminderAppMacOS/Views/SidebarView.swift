//
//  SidebarView.swift
//  ReminderAppMacOS
//
//  Created by Sachin Sabat on 22/04/24.
//

import SwiftUI

struct SideBarView: View {

    @Environment(\.managedObjectContext) var context: NSManagedObjectContext
    @State private var isPresented: Bool = false

    var body: some View {
        VStack(alignment: .leading) {
            Text("All Items Count 10")

            MyListsView(vm: MyListsViewModel(context: context))

            Spacer()

            Button {
                // action
                isPresented = true
            } label: {
                HStack {
                    Image(systemName: Constants.Icons.plusCircle)
                    Text("Add List")
                }
            }.buttonStyle(.plain)
                .padding()

        }.sheet(isPresented: $isPresented) {
            // dismiss
        } content: {
            AddNewListView(vm: AddNewListViewModel(context: context))
        }

    }
}
