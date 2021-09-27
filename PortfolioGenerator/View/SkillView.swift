//
//  SkillView.swift
//  PortfolioGenerator
//
//  Created by Sahibuddin Ahmed on 27/09/21.
//

import SwiftUI

struct SkillView: View {
    let skill : [Skill]
    var body: some View {
        VStack(alignment:.leading)
        {
            Text("Skills")
            .font(FontName.Bold.font(size: 22))
            Divider()
            VStack(alignment:.leading)
            {
                ForEach(skill)
                {
                    value in
                    SkillRow(skill: value)
                    
                }
            }
        }
    }
}

struct SkillView_Previews: PreviewProvider {
    static var previews: some View {
        SkillView(skill: AppDataModel.init().portfolio.skill)
    }
}
