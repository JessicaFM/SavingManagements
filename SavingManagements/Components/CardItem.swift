//
//  AddCardItem.swift
//  SavingManagements
//
//  Created by Jessica F on 10/6/21.
//

import Foundation
import SwiftUI

struct CardItem: Identifiable {
    let id = UUID()
    let name: String
    let category: Int
    let item_value: Float
    let created: Date
}

struct CardItemsRows: View {
    //let categoryList: Category = []
    var body: some View {
        HStack {
            TextField("Item name", text: .constant(""))
            TextField("Item import", text: .constant(""))
            Button(action: {
                print("BUT BUT")
            }) {
                Image(systemName: "trash")
            }
            .font(.title)
            .padding()
            Spacer()
        }
    }
}

struct CardItemsRows_Previews: PreviewProvider {
    static var previews: some View {
        CardItemsRows()
    }
}


