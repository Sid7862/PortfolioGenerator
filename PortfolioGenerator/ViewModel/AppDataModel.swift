//
//  AppDataModel.swift
//  PortfolioGenerator
//
//  Created by Sahibuddin Ahmed on 27/09/21.
//

import Foundation

struct AppDataModel
{
    let portfolio = UserPortfolio(
        name: "Sahibuddin Ahmed"
        , designation: "iOS Developer", location: "Kolkata, WB"
        ,experience: [
            JobExperience(_id: UUID(), _name: "Nexval Inc", _role: "iOS Developer", _location: "Kolkata, WB", _startDate: "2020",_endDate: "",_isPresent: true)
            ,JobExperience(_id: UUID(), _name: "Jeno Creatives", _role: "iOS Developer", _location: "Kolkata, WB", _startDate: "2019",_endDate: "2019",_isPresent: false)
            ,JobExperience(_id: UUID(), _name: "RTSTL", _role: "iOS Developer", _location: "Kolkata, WB", _startDate: "2018",_endDate: "2018",_isPresent: false)
            ,JobExperience(_id: UUID(), _name: "IntersoftKK", _role: "iOS Developer", _location: "Kolkata, WB", _startDate: "2016",_endDate: "2018",_isPresent: false)
            ,JobExperience(_id: UUID(), _name: "Supertron Infotech", _role: "iOS Developer", _location: "Kolkata, WB", _startDate: "2015",_endDate: "2016",_isPresent: false)]
        ,skill:[Skill(_id: UUID(), _name: "Swift", _rate: 8),
                Skill(_id: UUID(), _name: "iOS", _rate: 9),
                Skill(_id: UUID(), _name: "Swift UI", _rate: 7),
                Skill(_id: UUID(), _name: "UIKIT", _rate: 8)])
}
