import SwiftUI

struct Rowicon2Cell: View {
    var body: some View {
        HStack {
            HStack {
                Image("img_frame427323255_64x64")
                    .resizable()
                    .frame(width: getRelativeWidth(62.0), height: getRelativeWidth(64.0),
                           alignment: .leading)
                    .scaledToFit()
                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                               bottomRight: 8.0))
                VStack(alignment: .leading, spacing: 0) {
                    Text(StringConstants.kLblMINM)
                        .font(FontScheme.kSFProDisplayMedium(size: getRelativeHeight(16.0)))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.Gray100)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(70.0), height: getRelativeHeight(20.0),
                               alignment: .leading)
                        .padding(.trailing)
                    Text(StringConstants.kMsgEnVUNgCL)
                        .font(FontScheme.kSFProDisplayRegular(size: getRelativeHeight(14.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.Gray500)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(113.0), height: getRelativeHeight(17.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(4.0))
                }
                .frame(width: getRelativeWidth(113.0), height: getRelativeHeight(41.0),
                       alignment: .leading)
                .padding(.leading, getRelativeWidth(16.0))
            }
            .frame(width: getRelativeWidth(193.0), height: getRelativeHeight(64.0),
                   alignment: .leading)
            Image("img_icon_gray_100_2x16")
                .resizable()
                .frame(width: getRelativeWidth(14.0), height: getRelativeHeight(2.0),
                       alignment: .leading)
                .scaledToFit()
                .padding(.leading, getRelativeWidth(181.0))
        }
        .frame(width: getRelativeWidth(390.0), alignment: .leading)
        .hideNavigationBar()
    }
}

/* struct Rowicon2Cell_Previews: PreviewProvider {

 static var previews: some View {
 			Rowicon2Cell()
 }
 } */
