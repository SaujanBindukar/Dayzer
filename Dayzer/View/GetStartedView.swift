//
//  GetStartedView.swift
//  Dayzer
//
//  Created by Saujan Bindukar on 10/11/2022.
//

import SwiftUI

struct GetStartedView: View {
    var body: some View {
        ZStack{
            Color.greenBackground
            
            VStack{
                HeaderView()
                
                Text("To Simplify\n the way you\n work").bold().font(.largeTitle).padding().multilineTextAlignment(.center)
                Spacer()
                Image( "background").resizable()
                    .scaledToFit()
                
                Text("Controlling deliveries \n in reliable and no hassle way.").font(.body).padding().multilineTextAlignment(.center)
                
                NavigationLink(destination: HomePageView().navigationBarBackButtonHidden(true)){
                    Text("Get Free trial").frame(
                        width: UIScreen.main.bounds.width-40, height: 50 ) .bold().font(.title2).foregroundColor(Color.white).background(RoundedRectangle(cornerRadius: 10).fill(.black)).padding()
                    
                }
                
                
                Spacer()
            }
        }.ignoresSafeArea()
    }
}


struct GetStartedView_Previews: PreviewProvider {
    static var previews: some View {
        GetStartedView()
    }
}
