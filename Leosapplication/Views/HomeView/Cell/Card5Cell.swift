import SwiftUI

struct Card5Cell: View {
    var body: some View {
        VStack {
            HStack {
                HStack {
                    Image("img_iconfan")
                        .resizable()
                        .frame(width: getRelativeWidth(18.0), height: getRelativeWidth(20.0),
                               alignment: .leading)
                        .scaledToFit()
                    Text(StringConstants.kLblM)
                        .font(FontScheme.kSFProMedium(size: getRelativeHeight(14.0)))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.Gray100)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(19.0), height: getRelativeWidth(21.0),
                               alignment: .leading)
                        .padding(.leading, getRelativeWidth(10.0))
                }
                .frame(width: getRelativeWidth(49.0), height: getRelativeHeight(21.0),
                       alignment: .leading)
                Spacer()
                Image("img_icon_gray_100_2x16")
                    .resizable()
                    .frame(width: getRelativeWidth(14.0), height: getRelativeHeight(2.0),
                           alignment: .leading)
                    .scaledToFit()
                    .padding(.vertical, getRelativeHeight(11.0))
            }
            .frame(width: getRelativeWidth(152.0), height: getRelativeHeight(24.0),
                   alignment: .leading)
            .cornerRadius(12.0)
            .padding(.top, getRelativeHeight(16.0))
            .padding(.horizontal, getRelativeWidth(16.0))
            Text(StringConstants.kLblMCNh)
                .font(FontScheme.kSFProMedium(size: getRelativeHeight(16.0)))
                .fontWeight(.medium)
                .foregroundColor(ColorConstants.Gray100)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(152.0), height: getRelativeHeight(24.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(16.0))
                .padding(.horizontal, getRelativeWidth(16.0))
            Text(StringConstants.kLblMCNh)
                .font(FontScheme.kSFProRegular(size: getRelativeHeight(14.0)))
                .fontWeight(.regular)
                .foregroundColor(ColorConstants.Gray600)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(152.0), height: getRelativeHeight(20.0),
                       alignment: .leading)
                .padding(.bottom, getRelativeHeight(16.0))
                .padding(.horizontal, getRelativeWidth(16.0))
        }
        .frame(width: getRelativeWidth(188.0), alignment: .leading)
        .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                   bottomRight: 12.0)
                .fill(ColorConstants.Bluegray900))
        .hideNavigationBar()
    }
}

/* struct Card5Cell_Previews: PreviewProvider {

 static var previews: some View {
 			Card5Cell()
 }
 } */
