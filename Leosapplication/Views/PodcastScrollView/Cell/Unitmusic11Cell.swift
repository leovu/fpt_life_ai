import SwiftUI

struct Unitmusic11Cell: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            ZStack {
                Image("img_vector_gray_100_14x14")
                    .resizable()
                    .frame(width: getRelativeWidth(12.0), height: getRelativeWidth(14.0),
                           alignment: .leading)
                    .scaledToFit()
                    .padding(.bottom, getRelativeHeight(156.0))
                    .padding(.trailing, getRelativeWidth(156.0))
            }
            .hideNavigationBar()
            .frame(width: getRelativeWidth(176.0), height: getRelativeWidth(178.0),
                   alignment: .leading)
            .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                       bottomRight: 8.0))
            Text(StringConstants.kMsgIUGSXY)
                .font(FontScheme.kSFProDisplayRegular(size: getRelativeHeight(16.0)))
                .fontWeight(.regular)
                .foregroundColor(ColorConstants.Gray100)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(125.0), height: getRelativeHeight(20.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(10.0))
                .padding(.trailing, getRelativeWidth(10.0))
            Text(StringConstants.kLblPodcast)
                .font(FontScheme.kSFProRegular(size: getRelativeHeight(14.0)))
                .fontWeight(.regular)
                .foregroundColor(ColorConstants.Gray500)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(51.0), height: getRelativeHeight(17.0),
                       alignment: .leading)
                .padding(.vertical, getRelativeHeight(6.0))
                .padding(.trailing, getRelativeWidth(10.0))
        }
        .frame(width: getRelativeWidth(176.0), alignment: .leading)
        .hideNavigationBar()
    }
}

/* struct Unitmusic11Cell_Previews: PreviewProvider {

 static var previews: some View {
 			Unitmusic11Cell()
 }
 } */
