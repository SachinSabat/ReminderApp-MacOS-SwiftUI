//
//  HomeScreen.swift
//  ReminderAppMacOS
//
//  Created by Sachin Sabat on 19/04/24.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        NavigationView {
            SideBarView()
            Text("MyListItems")
        }
    }
}

