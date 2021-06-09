//
//  AddView.swift
//  SavingManagements
//
//  Created by Jessica F on 2/6/21.
//

import SwiftUI
import CoreData

struct AddView: View {
    var cardTitle: String
    var cardCategory: String
    var cardItems: [String] = []
    @State private var showingSheet = false
    
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
                        Button("Show Sheet") {
                            showingSheet.toggle()
                        }
                        .sheet(isPresented: $showingSheet) {
                            SheetView()
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

struct SheetView: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack {
            Text("Adding item view")
            Button("Press to dismiss") {
                presentationMode.wrappedValue.dismiss()
            }
            .font(.title)
            .padding()
            .background(Color.black)
        }
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}

