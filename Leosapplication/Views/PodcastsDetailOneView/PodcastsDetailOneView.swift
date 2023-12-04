import SwiftUI

struct PodcastsDetailOneView: View {
    @StateObject var podcastsDetailOneViewModel = PodcastsDetailOneViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            ZStack(alignment: .center) {
                Image("img_blur")
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(883.0),
                           alignment: .center)
                    .scaledToFit()
                    .clipped()
                VStack(alignment: .trailing, spacing: 0) {
                    HStack {
                        HStack {
                            Image("img_vector_gray_100_15x7")
                                .resizable()
                                .frame(width: getRelativeWidth(7.0),
                                       height: getRelativeHeight(15.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                            Spacer()
                            Image("img_group427322474")
                                .resizable()
                                .frame(width: getRelativeWidth(18.0),
                                       height: getRelativeHeight(4.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical, getRelativeHeight(5.0))
                        }
                        .frame(width: getRelativeWidth(385.0), height: getRelativeHeight(15.0),
                               alignment: .leading)
                    }
                    .frame(width: getRelativeWidth(385.0), height: getRelativeHeight(15.0),
                           alignment: .leading)
                    .padding(.leading)
                    .padding(.leading)
                    ScrollView(.vertical, showsIndicators: false) {
                        ZStack(alignment: .bottomLeading) {
                            VStack {
                                Image("img_blur")
                                    .resizable()
                                    .frame(width: getRelativeWidth(216.0),
                                           height: getRelativeWidth(216.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.horizontal, getRelativeWidth(56.0))
                                Text(StringConstants.kLblEnVU)
                                    .font(FontScheme
                                        .kSFProDisplayMedium(size: getRelativeHeight(20.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.Gray100)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(73.0),
                                           height: getRelativeHeight(24.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(18.0))
                                    .padding(.horizontal, getRelativeWidth(56.0))
                                HStack {
                                    Text(StringConstants.kLblNghS)
                                        .font(FontScheme
                                            .kSFProDisplayRegular(size: getRelativeHeight(14.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Gray100)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(45.0),
                                               height: getRelativeHeight(17.0),
                                               alignment: .topLeading)
                                    ZStack {}
                                        .hideNavigationBar()
                                        .frame(width: getRelativeWidth(4.0),
                                               height: getRelativeWidth(4.0), alignment: .center)
                                        .background(RoundedCorners(topLeft: 2.0, topRight: 2.0,
                                                                   bottomLeft: 2.0,
                                                                   bottomRight: 2.0)
                                                .fill(ColorConstants.Gray100))
                                        .padding(.top, getRelativeHeight(6.0))
                                        .padding(.bottom, getRelativeHeight(7.0))
                                        .padding(.leading, getRelativeWidth(7.0))
                                    Text(StringConstants.kLbl10BIHT)
                                        .font(FontScheme
                                            .kSFProDisplayRegular(size: getRelativeHeight(14.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Gray100)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(57.0),
                                               height: getRelativeHeight(17.0),
                                               alignment: .topLeading)
                                        .padding(.leading, getRelativeWidth(8.0))
                                }
                                .frame(width: getRelativeWidth(122.0),
                                       height: getRelativeHeight(18.0), alignment: .center)
                                .padding(.top, getRelativeHeight(6.0))
                                .padding(.horizontal, getRelativeWidth(56.0))
                                HStack {
                                    Image("img_iconshare")
                                        .resizable()
                                        .frame(width: getRelativeWidth(20.0),
                                               height: getRelativeHeight(22.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.vertical, getRelativeHeight(9.0))
                                    Spacer()
                                    Button(action: {}, label: {
                                        HStack(spacing: 0) {
                                            Text(StringConstants.kLblPhTNgUNhiN)
                                                .font(FontScheme
                                                    .kSFProDisplayMedium(size: getRelativeHeight(16.0)))
                                                .fontWeight(.medium)
                                                .padding(.horizontal, getRelativeWidth(30.0))
                                                .padding(.vertical, getRelativeHeight(10.0))
                                                .foregroundColor(ColorConstants.Gray100)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.center)
                                                .frame(width: getRelativeWidth(233.0),
                                                       height: getRelativeHeight(40.0),
                                                       alignment: .center)
                                                .background(RoundedCorners(topLeft: 20.0,
                                                                           topRight: 20.0,
                                                                           bottomLeft: 20.0,
                                                                           bottomRight: 20.0)
                                                        .fill(ColorConstants.DeepOrange500))
                                        }
                                    })
                                    .frame(width: getRelativeWidth(233.0),
                                           height: getRelativeHeight(40.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 20.0, topRight: 20.0,
                                                               bottomLeft: 20.0, bottomRight: 20.0)
                                            .fill(ColorConstants.DeepOrange500))
                                    Spacer()
                                    Image("img_heart")
                                        .resizable()
                                        .frame(width: getRelativeWidth(18.0),
                                               height: getRelativeHeight(17.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.vertical, getRelativeHeight(11.0))
                                }
                                .frame(width: getRelativeWidth(326.0),
                                       height: getRelativeHeight(40.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(35.0))
                            }
                            .frame(width: getRelativeWidth(326.0), height: getRelativeHeight(359.0),
                                   alignment: .center)
                            .padding(.bottom, getRelativeHeight(816.0))
                            .padding(.horizontal, getRelativeWidth(34.0))
                            VStack(spacing: 0) {
                                ScrollView(.vertical, showsIndicators: false) {
                                    LazyVStack {
                                        ForEach(0 ... 9, id: \.self) { index in
                                            Rowicon2Cell()
                                        }
                                    }
                                }
                            }
                            .frame(width: getRelativeWidth(396.0), alignment: .bottomLeading)
                            .padding(.top, getRelativeHeight(391.0))
                        }
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(396.0), height: UIScreen.main.bounds.height,
                               alignment: .topLeading)
                    }
                }
                .frame(width: getRelativeWidth(396.0), height: UIScreen.main.bounds.height,
                       alignment: .topLeading)
                .padding(.horizontal, getRelativeWidth(16.0))
            }
            .hideNavigationBar()
            .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
            .background(ColorConstants.Gray900)
            .padding(.top, getRelativeHeight(30.0))
            .padding(.bottom, getRelativeHeight(10.0))
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(ColorConstants.Gray900)
        .ignoresSafeArea()
        .hideNavigationBar()
    }
}

struct PodcastsDetailOneView_Previews: PreviewProvider {
    static var previews: some View {
        PodcastsDetailOneView()
    }
}
