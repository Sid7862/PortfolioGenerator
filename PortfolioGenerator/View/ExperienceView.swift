//
//  ExperienceView.swift
//  PortfolioGenerator
//
//  Created by Sahibuddin Ahmed on 27/09/21.
//

import SwiftUI

struct ExperienceView: View {
    let experiences : [JobExperience]
    var body: some View {
        VStack(alignment:.leading)
        {
            Text("Experience")
            .font(FontName.Bold.font(size: 22))
            Divider()
            VStack(alignment:.leading)
            {
                ForEach(experiences)
                {
                    value in
                    ExperienceRow(experience: value).padding(.bottom,15)
                    Divider()
                    
                }
            }
        }
    }
}

struct ExperienceView_Previews: PreviewProvider {
    static var previews: some View {
        ExperienceView(experiences: AppDataModel.init().portfolio.experience)
    }
}
