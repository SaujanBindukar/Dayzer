//
//  DashboardView.swift
//  Dayzer
//
//  Created by Saujan Bindukar on 10/11/2022.
//

import SwiftUI

struct DashboardView: View {
@State var searchText: String = ""
    
    var body: some View {
        
        NavigationView{
        ZStack {
            Color.pinkBackground.ignoresSafeArea()
            ScrollView {
                VStack(alignment: .leading){
                    Spacer().frame(height: 40)
                    Text("Task for today:").bold().font(.title).padding()
                    Spacer().frame(height: 4)
                    
                    HStack{
                        Image(systemName: "star")
                        Text("5 Available")
                    }.padding(.bottom, 20).padding(.horizontal, 20)
                    
                    HStack {
                        TextField("Search",text: $searchText)
                        Spacer()
                        Image(systemName: "magnifyingglass")
                    } .frame(height: 50).padding(.horizontal, 10).background(RoundedRectangle(cornerRadius: 4).stroke(.gray)).padding()
                    
                    
                    
                    HStack{
                        Text("Last Connection").bold().font(.title)
                        Spacer()
                        Text("See All").font(.caption).foregroundColor(.gray)
                    }.padding()
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack{
                            
                            
                            ForEach(People.listOfPeople,id: \.self) { item in
                                
                                AsyncImage(url: URL(string:
                                                        item.image)).frame(width: 60, height: 60).cornerRadius(50).fixedSize()
                            }
                            
                        }
                        
                    }.padding(.leading, 10)
                    
                    
                    VStack{
                        
                        HStack{
                            Text("Active Projects")
                            Spacer()
                            Text("See All")
                        }.padding()
                        
                        
                        ForEach(0 ..< 2) { item in
                            ZStack {
                                VStack(alignment: .leading){
                                    HStack{
                                        Text(
                                            "Numero 10")
                                        Spacer()
                                        Text(
                                            "Numero 10")
                                    }.padding(.horizontal, 20).padding(.vertical, 10)
                                    Text("Blog and Social Post").bold().font(.title).padding(.horizontal, 20)
                                    
                                    HStack{
                                        Image(systemName: "exclamationmark.circle")
                                        Text("Deadline is today")
                                    }.padding(.horizontal, 20).padding(.vertical, 10)
                                    
                                }.background(RoundedRectangle(cornerRadius: 10).stroke(.gray))
                            }.padding()
                        }
                        
                    }.background(RoundedRectangle(cornerRadius: 20).fill(Color.white)).padding(.top, 40)
                    
                    
                    Spacer()
                    
                    
                    
                    
                }} .toolbar{
                    ToolbarItem(placement: .navigationBarLeading) {
                        AsyncImage(url: URL(string:
                                                "https://source.unsplash.com/user/c_v_r/100x100")).frame(width: 50, height: 50).cornerRadius(50).fixedSize()
                    }
                    
                    ToolbarItem(placement: .navigationBarLeading) {
                        Text("Hi, Kira!").font(.body).foregroundColor(.gray)
                    }
                    
                    ToolbarItem {
                        Image(systemName: "bell.badge.fill")
                        
                    }
                    
                }
                    
                    
                    
                
            }
        }
    }
}


struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
