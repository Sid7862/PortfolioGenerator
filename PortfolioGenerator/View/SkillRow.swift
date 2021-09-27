//
//  SkillRow.swift
//  PortfolioGenerator
//
//  Created by Sahibuddin Ahmed on 27/09/21.
//

import SwiftUI

struct SkillRow: View {
    let skill : Skill
    var body: some View {
        HStack
        {
            Text(skill.name)
                .font(FontName.Medium.font(size: 21))
                .padding(.trailing,5)
            Spacer()
            VStack
            {
                HStack
                {
                    ForEach(1...10,id:\.self)
                    {
                        i in
                        if (i<=self.skill.rate)
                        {
                            Circle().fill(Color.blue).frame(width: 15, height: 15)
                            
                        }
                        else{
                            Circle()
                                .strokeBorder(Color.black, lineWidth: 1)
                                .background(Circle().fill(Color.clear))
                                .frame(width: 15, height: 15)
                        }
                    }
                }
            }
        }
    }
}

struct SkillRow_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader
        {
            reader in
            VStack(alignment:.leading)
            {
            SkillRow(skill: Skill(_id: UUID(), _name: "iOS", _rate: 9))
            SkillRow(skill: Skill(_id: UUID(), _name: "Swift", _rate: 9))
            }
        }
    }
}
