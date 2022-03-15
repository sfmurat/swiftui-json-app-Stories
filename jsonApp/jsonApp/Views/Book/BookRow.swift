//
//  BookRow2.swift
//  langbookApp
//
//  Created by ms on 3.03.2022.
//

import SwiftUI

struct BookRow: View {
        var book : Book
        var body: some View {
            VStack{
                if ((book.cover) != ""){
                    Image(book.cover).resizable().frame(width: 120, height: 170).cornerRadius(5)
                }else{
                    Rectangle().fill(Color.random).frame(width:120,height:170).cornerRadius(5).overlay(Text((book.name)[0]).font(.system(size: 45, weight: .bold)).foregroundColor(.black).opacity(0.2))
                }
                Text(book.name).frame(maxWidth: 120,minHeight: 50)
            }.padding(5)
        }
}



struct BookRow_Previews: PreviewProvider {
    static var landmarks = ModelData().books
    static var previews: some View {
        Group{
            BookRow(book: landmarks[0])
            BookRow(book: landmarks[1])
        }
        .previewLayout(.fixed(width:300, height: 150))
    }
}
