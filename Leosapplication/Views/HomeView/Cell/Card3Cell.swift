import SwiftUI

struct Card3Cell: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack {
                HStack {
                    Image("img_vector_gray_800_16x20")
                        .resizable()
                        .frame(width: getRelativeWidth(18.0), height: getRelativeHeight(16.0),
                               alignment: .leading)
                        .scaledToFit()
                    Text(StringConstants.kLblTT)
                        .font(FontScheme.kSFProMedium(size: getRelativeHeight(14.0)))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.Gray800)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(20.0), height: getRelativeHeight(17.0),
                               alignment: .leading)
                        .padding(.leading, getRelativeWidth(10.0))
                }
                .frame(width: getRelativeWidth(50.0), height: getRelativeHeight(18.0),
                       alignment: .leading)
                .padding(.bottom, getRelativeHeight(4.0))
                Spacer()
                Image("img_icon_gray_800_2x16")
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
            Text(StringConstants.kLblTv)
                .font(FontScheme.kSFProDisplayMedium(size: getRelativeHeight(16.0)))
                .fontWeight(.medium)
                .foregroundColor(ColorConstants.Gray800)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(18.0), height: getRelativeWidth(20.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(18.0))
                .padding(.horizontal, getRelativeWidth(16.0))
            Text(StringConstants.kLblPhNgKhCh)
                .font(FontScheme.kSFProRegular(size: getRelativeHeight(14.0)))
                .fontWeight(.regular)
                .foregroundColor(ColorConstants.Gray800)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(83.0), height: getRelativeHeight(17.0),
                       alignment: .leading)
                .padding(.vertical, getRelativeHeight(4.0))
                .padding(.horizontal, getRelativeWidth(16.0))
        }
        .frame(width: getRelativeWidth(188.0), alignment: .leading)
        .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                   bottomRight: 12.0)
                .fill(ColorConstants.Gray900))
        .hideNavigationBar()
    }
}

/* struct Card3Cell_Previews: PreviewProvider {

 static var previews: some View {
 			Card3Cell()
 }
 } */
