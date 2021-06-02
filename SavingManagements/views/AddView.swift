//
//  AddView.swift
//  SavingManagements
//
//  Created by Jessica F on 2/6/21.
//

import SwiftUI
import CoreData

struct AddView: View {
    init() {
        UITableView.appearance().tableFooterView = UIView()
        UITabBar.appearance().isTranslucent = false
    }
    
    var body: some View {
        NavigationView {
            Text("Hello, World!")
        }
        .padding(.top, -10)
        .navigationTitle("Add")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarColor(UIColor.darkGray, textColor: UIColor.white)
    }
    
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}

