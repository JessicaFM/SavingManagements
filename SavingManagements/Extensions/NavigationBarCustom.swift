//
//  NavigationBar.swift
//  SavingManagements
//
//  Created by Jessica F on 7/5/21.
//

import SwiftUI

struct NavigationBarCustom: View {
    var body: some View {
        NavigationView {
            Text("Page One")
                .navigationBarTitle("Page Oneeee")
                .toolbar {
                   ToolbarItemGroup(placement: .navigationBarTrailing) {
                       Button("Create") {
                           print("About tapped!")
                       }
                   }
               }
        }
    }
}

struct NavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarCustom()
    }
}
