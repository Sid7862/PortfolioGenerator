//
//  PortfolioView.swift
//  PortfolioGenerator
//
//  Created by Sahibuddin Ahmed on 27/09/21.
//

import SwiftUI

struct PortfolioView: View {
    let data : AppDataModel = AppDataModel()
    var body: some View {
        ZStack
        {
            ScrollView(.vertical, showsIndicators: true)
            {
                VStack(alignment:.leading,spacing: 25)
                {
                    HeaderView(portfolio: data.portfolio)
                    SkillView(skill: data.portfolio.skill)
                    ExperienceView(experiences: data.portfolio.experience)
                    
                }.padding()
            }
        }
    }
}

struct PortfolioView_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioView()
    }
}
