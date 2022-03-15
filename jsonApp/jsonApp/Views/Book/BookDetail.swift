//
//  BookDetail.swift
//  langbookApp
//
//  Created by ms on 3.03.2022.
//

import SwiftUI


struct BookDetail: View {
    @EnvironmentObject var modelData: ModelData
    var book: Book
    
    var landmarkIndex: Int {
        modelData.books.firstIndex(where: { $0.id == book.id })!
    }
    
    var body: some View {
        VStack{
            VStack(){
                ScrollView{                Text(book.name).bold().font(.largeTitle).frame(maxWidth:.infinity,alignment: .leading).padding(.bottom,4)
                    Text(book.content).frame(maxWidth:.infinity,alignment: .leading)
                }.padding(15)
                HStack{
                    readButton(isSet: $modelData.books[landmarkIndex].read)
                }
            }.padding()
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct BookDetail_Previews: PreviewProvider {
    static let modelData = ModelData()
    static var previews: some View {
        BookDetail(book: modelData.books[0])
            .environmentObject(modelData)
    }
}
