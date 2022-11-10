//
//  HomePageView.swift
//  Dayzer
//
//  Created by Saujan Bindukar on 08/11/2022.
//

import SwiftUI



struct HomePageView: View {

    var body: some View {
   
            TabView{
                DashboardView()
                    .tabItem {
                        Image(systemName: "house.fill")
                    }
                DashboardView()
                    .tabItem {
                        Image(systemName: "folder.fill")
                    }
                DashboardView()
                    .tabItem {
                        Image(systemName: "doc.richtext.fill")
                    }
                DashboardView()
                
                    .tabItem {
                        Image(systemName: "calendar")
                    }
                
            }.background(.white)
            
        

            
            
        
        
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}

