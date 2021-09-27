//
//  ExperienceRow.swift
//  PortfolioGenerator
//
//  Created by Sahibuddin Ahmed on 27/09/21.
//

import SwiftUI

struct ExperienceRow: View {
    let experience : JobExperience
    var body: some View {
//        VStack(alignment: .leading)
//        {
//            Circle().frame(width: 10, height: 10, alignment:.leading)
//            HStack(alignment: .center)
//            {
//                RoundedRectangle(cornerRadius: 8).frame(width: 3)
//                    .padding(.leading,3)
//                VStack(alignment:.leading,spacing: 10)
//                {
//                    Text(experience.role).font(FontName.SemiBold.font(size: 20))
//                    Text(experience.name).font(FontName.Medium.font(size: 18))
//                    Text(experience.date).font(FontName.Medium.font(size: 15))
//                }.padding(.leading,10)
//            }.padding(.top,10)
//        }.fixedSize()
        VStack(alignment: .leading)
        {
            Text(experience.isPresent ? "Present" : experience.endDate)
                .font(FontName.SemiBold.font(size: 18))
                .foregroundColor(experience.isPresent ? .blue : .black)
            HStack(alignment: .center)
            {
                RoundedRectangle(cornerRadius: 8).foregroundColor(experience.isPresent ? Color.blue : Color.black).frame(width: 3)
                    .padding(.leading,3)
                VStack(alignment:.leading,spacing: 10)
                {
                    Text(experience.role).font(FontName.SemiBold.font(size: 20))
                    Text(experience.name).font(FontName.Medium.font(size: 18))
                    Text(experience.location).font(FontName.Medium.font(size: 18))
                }.padding(.leading,10)
            }
            Text(experience.startDate).font(FontName.SemiBold.font(size: 18))
        }.fixedSize()
    }
}

struct ExperienceRow_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader{
            reader in
            ExperienceRow(experience: JobExperience(_id: UUID(), _name: "Nexval Inc", _role: "iOS Developer", _location: "Kolkata, WB", _startDate: "2020",_endDate: "",_isPresent: true)).padding(20)
        }
    }
}
