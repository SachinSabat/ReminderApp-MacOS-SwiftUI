//
//  AddNewListView.swift
//  ReminderAppMacOS
//
//  Created by Sachin Sabat on 24/04/24.
//

import SwiftUI

struct AddNewListView: View {

    @Environment(\.presentationMode) var presentationMode
    @ObservedObject private var vm: AddNewListViewModel

    init(vm: AddNewListViewModel) {
        self.vm = vm
    }


    var body: some View {
        Form {

            VStack(alignment: .leading) {
                Text("New List")
                    .font(.headline)
                .padding(.bottom, 20)

                HStack {
                    Text("Name:")
                    TextField("", text: $vm.name)
                }

                HStack {
                    Text("Color:")
                    ColorView(selectedColor: $vm.color)
                }
            }

            HStack {
                Spacer()
                Button("Cancel") {
                    presentationMode.wrappedValue.dismiss()
                }
                Button("Ok") {
                    vm.save()
                    presentationMode.wrappedValue.dismiss()
                }.disabled(vm.name.isEmpty)
            }


        }.frame(minWidth: 300)
            .padding()
    }
}
