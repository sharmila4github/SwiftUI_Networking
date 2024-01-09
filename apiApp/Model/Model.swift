//
//  Model.swift
//  apiApp
//
//  Created by Raghav Deo on 12/12/23.
//

import Foundation
struct Fruits : Decodable
{
    var name: String
       var id: Int
       var family:String
    var nutritions:Nutritions
}
struct Nutritions : Decodable
{
    var calories:Int
    var fat:Double
}
