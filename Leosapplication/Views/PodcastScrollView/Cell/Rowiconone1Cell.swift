import SwiftUI

struct Rowiconone1Cell: View {
    var body: some View {
        HStack {
            HStack {
                Image("img_rectangle10069")
                    .resizable()
                    .frame(width: getRelativeWidth(62.0), height: getRelativeWidth(64.0),
                           alignment: .leading)
                    .scaledToFit()
                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                               bottomRight: 8.0))
                Text(StringConstants.kLblNgheSCh)
                    .font(FontScheme.kSFProRegular(size: getRelativeHeight(16.0)))
                    .fontWeight(.regular)
                    .foregroundColor(ColorConstants.Gray100)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(79.0), height: getRelativeHeight(20.0),
                           alignment: .leading)
                    .padding(.leading, getRelativeWidth(16.0))
                Image("img_icon_gray_100_2x16")
                    .resizable()
                    .frame(width: getRelativeWidth(14.0), height: getRelativeHeight(2.0),
                           alignment: .leading)
                    .scaledToFit()
                    .padding(.leading, getRelativeWidth(159.0))
                Image("img_rectangle10069_6")
                    .resizable()
                    .frame(width: getRelativeWidth(62.0), height: getRelativeWidth(64.0),
                           alignment: .leading)
                    .scaledToFit()
                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                               bottomRight: 8.0))
                    .padding(.leading, getRelativeWidth(36.0))
                Text(StringConstants.kLblSitcom)
                    .font(FontScheme.kSFProRegular(size: getRelativeHeight(16.0)))
                    .fontWeight(.regular)
                    .foregroundColor(ColorConstants.Gray100)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(51.0), height: getRelativeHeight(24.0),
                           alignment: .leading)
                    .padding(.leading, getRelativeWidth(16.0))
            }
            .frame(width: getRelativeWidth(410.0), height: getRelativeHeight(64.0),
                   alignment: .leading)
            Image("img_icon_gray_100_2x16")
                .resizable()
                .frame(width: getRelativeWidth(14.0), height: getRelativeHeight(2.0),
                       alignment: .leading)
                .scaledToFit()
                .padding(.leading, getRelativeWidth(280.0))
        }
        .frame(width: getRelativeWidth(410.0), alignment: .leading)
        .hideNavigationBar()
    }
}

/* struct Rowiconone1Cell_Previews: PreviewProvider {

 static var previews: some View {
 			Rowiconone1Cell()
 }
 } */
