//
//  Experience.swift
//  PortfolioGenerator
//
//  Created by Sahibuddin Ahmed on 27/09/21.
//

import Foundation

struct JobExperience:Identifiable
{
    let id : UUID
    let name : String
    let role : String
    let location : String
    let startDate : String
    let endDate : String
    let isPresent :Bool
    init(_id : UUID,_name:String,_role: String,_location:String,_startDate:String,_endDate:String,_isPresent:Bool)
    {
        id = _id
        name  = _name
        role  = _role
        location  = _location
        startDate  = _startDate
        endDate  = _endDate
        isPresent  = _isPresent
    }
}
