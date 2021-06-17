//
//  AddView.swift
//  SavingManagements
//
//  Created by Jessica F on 2/6/21.
//

import SwiftUI
import CoreData

struct AddCard: View {
    var cardTitle: String
    var cardCategory: String
    var cardItems: [String] = []
    @State private var showingSheet = false
    let items: [CardItem] = []
    
    init() {
        // TODO
        self.cardTitle = ""
        self.cardCategory = ""
    }
    
    var body: some View {
        HStack() {
            VStack(alignment: .leading) {
                VStack {
                    Text("Title")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    TextField("Your title", text: .constant(""))
                }
                .padding(.bottom, 30)
                VStack {
                    Text("Categories")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    TextField("Placeholder", text: .constant(""))
                }
                .padding(.bottom, 30)
                VStack {
                    HStack {
                        Text("Items")
                        Button(action: {
                            print("BUT BUT")
                        }) {
                            Image(systemName: "plus.app")
                        }
                    }
                }
                Spacer()
            }
            .padding(20)
            Spacer()
        }
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddCard()
    }
}

