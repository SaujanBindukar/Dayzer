//
//  HeaderView.swift
//  Dayzer
//
//  Created by Saujan Bindukar on 08/11/2022.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack{
            Image(systemName: "bolt.horizontal.circle.fill").font(.largeTitle)
            
            Text("Dayzer").bold()
                .font(.title)
            
            Spacer()
            Image(systemName: "star.fill").font(.largeTitle).foregroundColor(Color.white)
            
        }.padding(.horizontal, 20).padding(.top,50)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
