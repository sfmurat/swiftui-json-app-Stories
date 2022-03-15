//
//  SearchBook.swift
//  langbookApp
//
//  Created by ms on 3.03.2022.
//

import SwiftUI

struct DiscoverView: View {
    @EnvironmentObject var modelData: ModelData
    @State private var hideReadToggle = false
    
    var filteredBooks: [Book] {
        modelData.books.filter { book in
            (!hideReadToggle || book.read == false)
        }
    }
    
    var body: some View {
        NavigationView {
            ScrollView{
                    VStack{
                        GroupBox{
                            Toggle(isOn:$hideReadToggle){
                                Text("Hide Read Stories")
                            }
                        }
                        GroupBox(label: Text("Stories")) {
                            ScrollView(.horizontal){
                                HStack{
                                    ForEach(filteredBooks, id:\.id){book in
                                        NavigationLink{BookDetail(book: book)}label:{BookRow(book: book)}
                                    }
                                }
                            }
                        }
                    }
                }
            .padding([.leading,.trailing],5)
            .navigationTitle(Text("Stories"))
        }
    }
}

struct DiscoverView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverView()
            .environmentObject(ModelData())
    }
}
