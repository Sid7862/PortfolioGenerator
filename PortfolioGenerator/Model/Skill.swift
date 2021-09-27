//
//  Skill.swift
//  PortfolioGenerator
//
//  Created by Sahibuddin Ahmed on 27/09/21.
//

import Foundation

struct Skill:Identifiable
{
   let id : UUID
   let name : String
   let rate : Int
    init(_id : UUID,_name:String,_rate:Int)
    {
        id = _id
        name  = _name
        rate = _rate
    }
}
