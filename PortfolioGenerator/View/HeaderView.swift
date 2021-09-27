//
//  HeaderView.swift
//  PortfolioGenerator
//
//  Created by Sahibuddin Ahmed on 27/09/21.
//

import SwiftUI

struct HeaderView: View {
    let portfolio : UserPortfolio
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            
            Image("sahib", bundle: Bundle.main)
                .resizable()
                .frame(width: 120.0, height: 120.0, alignment: .center)
                .clipShape(Circle())
                .padding(5)
                .background(
                    Circle()
                        .foregroundColor(.blue)
                        .shadow(color: .blue.opacity(0.5), radius: 2, x: 1, y: 1)
                )
            Text(portfolio.name).font(FontName.Bold.font(size: 24))
            Text(portfolio.designation).font(FontName.Medium.font(size: 20))
            HStack(spacing: 5) {
                Image(systemName: "location.fill").resizable().frame(width: 24, height: 24, alignment: .leading).foregroundColor(.blue)
                Text(portfolio.location).font(FontName.Thin.font(size: 20)).lineLimit(2)
            }
            Text("iOS Developer with 5.5 years of software development experience in a broad range of applications, including B2B, B2C, Fin-tech, Attendance Based System, Multimedia. Dedicated to continuously developing, implementing, and adopting new technologies to maximise development efficiency and produce innovative applications.")
                .font(FontName.Light.font(size: 18))
                .padding(.top,10)
                .lineSpacing(10)
                .lineLimit(100)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(portfolio: AppDataModel.init().portfolio)
    }
}
