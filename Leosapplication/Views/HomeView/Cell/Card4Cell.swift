import SwiftUI

struct Card4Cell: View {
    var body: some View {
        ZStack(alignment: .center) {
            VStack {
                ZStack {}
                    .hideNavigationBar()
                    .frame(width: getRelativeWidth(151.0), height: getRelativeHeight(116.0),
                           alignment: .leading)
                    .background(ColorConstants.Bluegray900)
                    .padding(.trailing, getRelativeWidth(37.0))
            }
            .frame(width: getRelativeWidth(188.0), height: getRelativeHeight(116.0),
                   alignment: .leading)
            .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                       bottomRight: 12.0)
                    .fill(ColorConstants.Gray900))
            VStack(alignment: .leading, spacing: 0) {
                HStack {
                    Spacer()
                    Image("img_icondownlight")
                        .resizable()
                        .frame(width: getRelativeWidth(18.0), height: getRelativeHeight(12.0),
                               alignment: .leading)
                        .scaledToFit()
                        .padding(.vertical, getRelativeHeight(6.0))
                    Text(StringConstants.kLblM)
                        .font(FontScheme.kSFProMedium(size: getRelativeHeight(14.0)))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.Gray100)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(19.0), height: getRelativeHeight(17.0),
                               alignment: .leading)
                        .padding(.bottom, getRelativeHeight(4.0))
                        .padding(.leading, getRelativeWidth(10.0))
                    ZStack {}
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(2.0), height: getRelativeWidth(4.0),
                               alignment: .leading)
                        .background(RoundedCorners(topLeft: 2.0, topRight: 2.0, bottomLeft: 2.0,
                                                   bottomRight: 2.0)
                                .fill(ColorConstants.Gray100))
                        .padding(.vertical, getRelativeHeight(10.0))
                        .padding(.leading, getRelativeWidth(8.0))
                    Text(StringConstants.kLbl60)
                        .font(FontScheme.kSFProMedium(size: getRelativeHeight(14.0)))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.Gray100)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(30.0), height: getRelativeHeight(17.0),
                               alignment: .leading)
                        .padding(.leading, getRelativeWidth(8.0))
                    Image("img_icon_gray_100_2x16")
                        .resizable()
                        .frame(width: getRelativeWidth(14.0), height: getRelativeHeight(2.0),
                               alignment: .leading)
                        .scaledToFit()
                        .padding(.vertical, getRelativeHeight(11.0))
                        .padding(.leading, getRelativeWidth(33.0))
                }
                .frame(width: getRelativeWidth(152.0), height: getRelativeHeight(24.0),
                       alignment: .leading)
                .padding(.trailing)
                Text(StringConstants.kLblNPTrN)
                    .font(FontScheme.kSFProMedium(size: getRelativeHeight(16.0)))
                    .fontWeight(.medium)
                    .foregroundColor(ColorConstants.Gray100)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(88.0), height: getRelativeHeight(20.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(18.0))
                    .padding(.trailing, getRelativeWidth(10.0))
                Text(StringConstants.kLblPhNgKhCh)
                    .font(FontScheme.kSFProRegular(size: getRelativeHeight(14.0)))
                    .fontWeight(.regular)
                    .foregroundColor(ColorConstants.Gray600)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(83.0), height: getRelativeHeight(17.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(4.0))
                    .padding(.trailing, getRelativeWidth(10.0))
            }
            .frame(width: getRelativeWidth(156.0), height: getRelativeHeight(84.0),
                   alignment: .leading)
            .padding(.all, getRelativeWidth(16.0))
            .padding(.vertical, getRelativeHeight(16.0))
            .padding(.horizontal, getRelativeWidth(16.0))
        }
        .hideNavigationBar()
        .frame(width: getRelativeWidth(188.0), alignment: .leading)
        .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                   bottomRight: 12.0))
    }
}

/* struct Card4Cell_Previews: PreviewProvider {

 static var previews: some View {
 			Card4Cell()
 }
 } */
