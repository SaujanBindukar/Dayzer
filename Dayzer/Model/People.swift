//
//  People.swift
//  Dayzer
//
//  Created by Saujan Bindukar on 10/11/2022.
//

import Foundation

struct People :  Identifiable, Hashable {
    var id : String?
    var image : String
    
    public static var listOfPeople: Array = [
                                People(image: "https://source.unsplash.com/user/c_v_r/100x100"),
                                People(image: "https://source.unsplash.com/user/c_v_r/100x100"),
                               People(image: "https://source.unsplash.com/user/c_v_r/100x100"),
                               People(image: "https://source.unsplash.com/user/c_v_r/100x100"),
                               People(image: "https://source.unsplash.com/user/c_v_r/100x100"),
                               People(image: "https://source.unsplash.com/user/c_v_r/100x100"),
                               People(image: "https://source.unsplash.com/user/c_v_r/100x100"),
    ]
    
    
    
}
