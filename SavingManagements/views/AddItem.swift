//
//  AddItem.swift
//  SavingManagements
//
//  Created by Jessica F on 27/6/21.
//

import SwiftUI

struct AddItem: View {
    var cardTitle: String
    var cardCategory: String
    @State private var showingSheet = false
//    var items: [CardItem]
    @State private var showingAddItem = false
    
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
                            showingSheet.toggle()
                        }) {
                            Image(systemName: "plus.app")
                        }
                        .sheet(isPresented: $showingAddItem) {
                            AddItem()
                        }
                    }
                }
                Spacer()
                VStack {
//                    List(items, id: \.self) { item in
//                        Text("\(item)")
//                    }
                }
            }
            .padding(20)
            Spacer()
        }
    }
}

struct AddItem_Previews: PreviewProvider {
    static var previews: some View {
        AddItem()
    }
}
