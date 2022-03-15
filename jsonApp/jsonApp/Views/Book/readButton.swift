//
//  readButton.swift
//  langbookApp
//
//  Created by ms on 15.03.2022.
//

import SwiftUI

struct readButton: View {
    @Binding var isSet: Bool

    var body: some View {
        Button(action:{isSet.toggle()}) {
           if isSet == true{
               Image(systemName: "checkmark") .foregroundColor(.green)
               Text("readed").bold() .foregroundColor(.green)
           }else{
               Text("mark as read").bold() .foregroundColor(.white)
           }
       }.foregroundColor(.gray).padding(2).buttonStyle(.bordered)
            .background(RoundedRectangle(cornerRadius: 5.0)
                            .fill(isSet ?  Color.clear : Color.green))
    }
}

struct readButton_Previews: PreviewProvider {
    static var previews: some View {
        readButton(isSet: .constant(true))
    }
}
