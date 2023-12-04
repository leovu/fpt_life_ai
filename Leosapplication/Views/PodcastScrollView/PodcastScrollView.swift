import SwiftUI

struct PodcastScrollView: View {
    @StateObject var podcastScrollViewModel = PodcastScrollViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack {
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        Group {
                            Image("img_vector_gray_100_15x7")
                                .resizable()
                                .frame(width: getRelativeWidth(7.0),
                                       height: getRelativeHeight(15.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.leading, getRelativeWidth(7.0))
                                .padding(.trailing, getRelativeWidth(10.0))
                            Text(StringConstants.kMsgMNhCPodca)
                                .font(FontScheme.kSFProBold(size: getRelativeHeight(28.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.Gray100)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(262.0),
                                       height: getRelativeHeight(34.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(40.0))
                                .padding(.trailing, getRelativeWidth(10.0))
                            HStack {
                                HStack {
                                    Text(StringConstants.kLblThLoI)
                                        .font(FontScheme
                                            .kSFProDisplayMedium(size: getRelativeHeight(20.0)))
                                        .fontWeight(.medium)
                                        .foregroundColor(ColorConstants.Gray100)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(68.0),
                                               height: getRelativeHeight(24.0),
                                               alignment: .topLeading)
                                    Image("img_arrowright_gray_701")
                                        .resizable()
                                        .frame(width: getRelativeWidth(7.0),
                                               height: getRelativeHeight(13.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.leading, getRelativeWidth(17.0))
                                }
                                .frame(width: getRelativeWidth(92.0),
                                       height: getRelativeHeight(24.0), alignment: .center)
                                Image("img_star")
                                    .resizable()
                                    .frame(width: getRelativeWidth(18.0),
                                           height: getRelativeHeight(17.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .background(RoundedCorners(topLeft: 0.5, topRight: 0.5,
                                                               bottomLeft: 0.5, bottomRight: 0.5))
                                    .padding(.top, getRelativeHeight(5.0))
                                    .padding(.bottom, getRelativeHeight(6.0))
                                    .padding(.leading, getRelativeWidth(281.0))
                            }
                            .frame(width: getRelativeWidth(393.0), height: getRelativeHeight(30.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(7.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                            HStack {
                                VStack(alignment: .leading, spacing: 0) {
                                    VStack(spacing: 0) {
                                        ScrollView(.vertical, showsIndicators: false) {
                                            LazyVStack {
                                                ForEach(0 ... 2, id: \.self) { index in
                                                    Rowiconone1Cell()
                                                }
                                            }
                                        }
                                    }
                                    .frame(width: getRelativeWidth(412.0), alignment: .trailing)
                                    HStack {
                                        HStack {
                                            Image("img_rectangle10069_5")
                                                .resizable()
                                                .frame(width: getRelativeWidth(64.0),
                                                       height: getRelativeWidth(64.0),
                                                       alignment: .center)
                                                .scaledToFit()
                                                .clipped()
                                                .background(RoundedCorners(topLeft: 8.0,
                                                                           topRight: 8.0,
                                                                           bottomLeft: 8.0,
                                                                           bottomRight: 8.0))
                                            Text(StringConstants.kLblNTim)
                                                .font(FontScheme
                                                    .kSFProRegular(size: getRelativeHeight(16.0)))
                                                .fontWeight(.regular)
                                                .foregroundColor(ColorConstants.Gray100)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(58.0),
                                                       height: getRelativeHeight(20.0),
                                                       alignment: .topLeading)
                                                .padding(.leading, getRelativeWidth(16.0))
                                        }
                                        .frame(width: getRelativeWidth(138.0),
                                               height: getRelativeHeight(64.0), alignment: .center)
                                        Image("img_icon_gray_100_2x16")
                                            .resizable()
                                            .frame(width: getRelativeWidth(16.0),
                                                   height: getRelativeHeight(2.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.vertical, getRelativeHeight(31.0))
                                            .padding(.leading, getRelativeWidth(181.0))
                                    }
                                    .frame(width: getRelativeWidth(336.0),
                                           height: getRelativeHeight(64.0), alignment: .leading)
                                    .padding(.top, getRelativeHeight(16.0))
                                    .padding(.trailing, getRelativeWidth(10.0))
                                }
                                .frame(width: getRelativeWidth(356.0),
                                       height: getRelativeHeight(304.0), alignment: .center)
                                ZStack {}
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(356.0),
                                           height: getRelativeHeight(224.0), alignment: .top)
                                    .padding(.bottom, getRelativeHeight(80.0))
                                    .padding(.leading, getRelativeWidth(16.0))
                            }
                            .frame(width: UIScreen.main.bounds.width,
                                   height: getRelativeHeight(304.0), alignment: .trailing)
                            .padding(.top, getRelativeHeight(16.0))
                            HStack {
                                HStack {
                                    Text(StringConstants.kLblPodcastNIBT)
                                        .font(FontScheme
                                            .kSFProDisplayMedium(size: getRelativeHeight(20.0)))
                                        .fontWeight(.medium)
                                        .foregroundColor(ColorConstants.Gray100)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(133.0),
                                               height: getRelativeHeight(24.0),
                                               alignment: .topLeading)
                                    Image("img_arrowright_gray_702")
                                        .resizable()
                                        .frame(width: getRelativeWidth(6.0),
                                               height: getRelativeHeight(12.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.leading, getRelativeWidth(17.0))
                                }
                                .frame(width: getRelativeWidth(156.0),
                                       height: getRelativeHeight(24.0), alignment: .center)
                                Image("img_star")
                                    .resizable()
                                    .frame(width: getRelativeWidth(18.0),
                                           height: getRelativeHeight(17.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .background(RoundedCorners(topLeft: 0.5, topRight: 0.5,
                                                               bottomLeft: 0.5, bottomRight: 0.5))
                                    .padding(.top, getRelativeHeight(5.0))
                                    .padding(.bottom, getRelativeHeight(6.0))
                                    .padding(.leading, getRelativeWidth(218.0))
                            }
                            .frame(width: getRelativeWidth(393.0), height: getRelativeHeight(30.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(24.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                            HStack {
                                HStack(spacing: 0) {
                                    ScrollView(.horizontal, showsIndicators: false) {
                                        LazyHStack {
                                            ForEach(0 ... 2, id: \.self) { index in
                                                Unitmusic6Cell()
                                            }
                                        }
                                    }
                                }
                                .frame(width: getRelativeWidth(412.0), alignment: .center)
                                Spacer()
                                HStack {
                                    ZStack {}
                                        .hideNavigationBar()
                                        .frame(width: getRelativeWidth(178.0),
                                               height: getRelativeHeight(49.0), alignment: .bottom)
                                    ScrollView(.horizontal, showsIndicators: false) {
                                        VStack(alignment: .trailing, spacing: 0) {
                                            HStack {
                                                ZStack {
                                                    Image("img_vector_gray_100_14x14")
                                                        .resizable()
                                                        .frame(width: getRelativeWidth(14.0),
                                                               height: getRelativeWidth(14.0),
                                                               alignment: .center)
                                                        .scaledToFit()
                                                        .clipped()
                                                        .padding(.bottom, getRelativeHeight(156.0))
                                                        .padding(.trailing, getRelativeWidth(156.0))
                                                }
                                                .hideNavigationBar()
                                                .frame(width: getRelativeWidth(178.0),
                                                       height: getRelativeWidth(178.0),
                                                       alignment: .center)
                                                .background(RoundedCorners(topLeft: 8.0,
                                                                           topRight: 8.0,
                                                                           bottomLeft: 8.0,
                                                                           bottomRight: 8.0))
                                                Spacer()
                                                ZStack {
                                                    Image("img_vector_gray_100_14x14")
                                                        .resizable()
                                                        .frame(width: getRelativeWidth(14.0),
                                                               height: getRelativeWidth(14.0),
                                                               alignment: .center)
                                                        .scaledToFit()
                                                        .clipped()
                                                        .padding(.bottom, getRelativeHeight(156.0))
                                                        .padding(.trailing, getRelativeWidth(156.0))
                                                }
                                                .hideNavigationBar()
                                                .frame(width: getRelativeWidth(178.0),
                                                       height: getRelativeWidth(178.0),
                                                       alignment: .center)
                                                .background(RoundedCorners(topLeft: 8.0,
                                                                           topRight: 8.0,
                                                                           bottomLeft: 8.0,
                                                                           bottomRight: 8.0))
                                            }
                                            .frame(width: getRelativeWidth(372.0),
                                                   height: getRelativeHeight(178.0),
                                                   alignment: .leading)
                                            VStack(alignment: .leading, spacing: 0) {
                                                HStack {
                                                    Text(StringConstants.kMsgChALNhTMH)
                                                        .font(FontScheme
                                                            .kSFProDisplayRegular(size: getRelativeHeight(16.0)))
                                                        .fontWeight(.regular)
                                                        .foregroundColor(ColorConstants.Gray100)
                                                        .minimumScaleFactor(0.5)
                                                        .multilineTextAlignment(.leading)
                                                        .frame(width: getRelativeWidth(178.0),
                                                               height: getRelativeHeight(24.0),
                                                               alignment: .topLeading)
                                                    Spacer()
                                                    Text(StringConstants.kLblNULC)
                                                        .font(FontScheme
                                                            .kSFProDisplayRegular(size: getRelativeHeight(16.0)))
                                                        .fontWeight(.regular)
                                                        .foregroundColor(ColorConstants.Gray100)
                                                        .minimumScaleFactor(0.5)
                                                        .multilineTextAlignment(.leading)
                                                        .frame(width: getRelativeWidth(178.0),
                                                               height: getRelativeHeight(24.0),
                                                               alignment: .topLeading)
                                                        .padding(.leading, getRelativeWidth(16.0))
                                                }
                                                .frame(width: getRelativeWidth(372.0),
                                                       height: getRelativeHeight(24.0),
                                                       alignment: .leading)
                                                HStack {
                                                    Text(StringConstants.kLblPodcast)
                                                        .font(FontScheme
                                                            .kSFProRegular(size: getRelativeHeight(14.0)))
                                                        .fontWeight(.regular)
                                                        .foregroundColor(ColorConstants.Gray500)
                                                        .minimumScaleFactor(0.5)
                                                        .multilineTextAlignment(.leading)
                                                        .frame(width: getRelativeWidth(178.0),
                                                               height: getRelativeHeight(21.0),
                                                               alignment: .topLeading)
                                                    Spacer()
                                                    Text(StringConstants.kMsgTlinhFt2pill)
                                                        .font(FontScheme
                                                            .kSFProDisplayRegular(size: getRelativeHeight(14.0)))
                                                        .fontWeight(.regular)
                                                        .foregroundColor(ColorConstants.Gray500)
                                                        .minimumScaleFactor(0.5)
                                                        .multilineTextAlignment(.leading)
                                                        .frame(width: getRelativeWidth(178.0),
                                                               height: getRelativeHeight(21.0),
                                                               alignment: .topLeading)
                                                        .padding(.leading, getRelativeWidth(16.0))
                                                }
                                                .frame(width: getRelativeWidth(372.0),
                                                       height: getRelativeHeight(21.0),
                                                       alignment: .leading)
                                                .padding(.top, getRelativeHeight(4.0))
                                                Text(StringConstants.kLblPodcast)
                                                    .font(FontScheme
                                                        .kSFProRegular(size: getRelativeHeight(14.0)))
                                                    .fontWeight(.regular)
                                                    .foregroundColor(ColorConstants.Gray500)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.leading)
                                                    .frame(width: getRelativeWidth(178.0),
                                                           height: getRelativeHeight(21.0),
                                                           alignment: .topLeading)
                                                    .padding(.top, getRelativeHeight(4.0))
                                            }
                                            .frame(width: getRelativeWidth(178.0),
                                                   height: getRelativeHeight(74.0),
                                                   alignment: .trailing)
                                            .padding(.top, getRelativeHeight(8.0))
                                            .padding(.leading, getRelativeWidth(10.0))
                                        }
                                        .frame(width: getRelativeWidth(372.0),
                                               alignment: .topLeading)
                                    }
                                }
                                .frame(width: getRelativeWidth(372.0),
                                       height: getRelativeHeight(260.0), alignment: .center)
                            }
                            .frame(width: getRelativeWidth(412.0), height: getRelativeHeight(260.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(16.0))
                            HStack {
                                HStack {
                                    Text(StringConstants.kLblThVPhT)
                                        .font(FontScheme
                                            .kSFProDisplayMedium(size: getRelativeHeight(20.0)))
                                        .fontWeight(.medium)
                                        .foregroundColor(ColorConstants.Gray100)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(96.0),
                                               height: getRelativeHeight(24.0),
                                               alignment: .topLeading)
                                    Image("img_arrowright_gray_702")
                                        .resizable()
                                        .frame(width: getRelativeWidth(6.0),
                                               height: getRelativeHeight(12.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.leading, getRelativeWidth(17.0))
                                }
                                .frame(width: getRelativeWidth(119.0),
                                       height: getRelativeHeight(24.0), alignment: .center)
                                Image("img_star")
                                    .resizable()
                                    .frame(width: getRelativeWidth(18.0),
                                           height: getRelativeHeight(17.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .background(RoundedCorners(topLeft: 0.5, topRight: 0.5,
                                                               bottomLeft: 0.5, bottomRight: 0.5))
                                    .padding(.top, getRelativeHeight(5.0))
                                    .padding(.bottom, getRelativeHeight(6.0))
                                    .padding(.leading, getRelativeWidth(255.0))
                            }
                            .frame(width: getRelativeWidth(393.0), height: getRelativeHeight(30.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(42.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                            HStack {
                                HStack {
                                    HStack(spacing: 0) {
                                        ScrollView(.horizontal, showsIndicators: false) {
                                            LazyHStack {
                                                ForEach(0 ... 1, id: \.self) { index in
                                                    Unitmusic7Cell()
                                                }
                                            }
                                        }
                                    }
                                    .frame(width: getRelativeWidth(372.0), alignment: .top)
                                    VStack(alignment: .leading, spacing: 0) {
                                        Text(StringConstants.kMsg35NMKiNTO)
                                            .font(FontScheme
                                                .kSFProDisplayRegular(size: getRelativeHeight(16.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Gray100)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(24.0),
                                                   height: getRelativeHeight(48.0),
                                                   alignment: .topLeading)
                                            .padding(.top, getRelativeHeight(186.0))
                                        Text(StringConstants.kLblPodcast)
                                            .font(FontScheme
                                                .kSFProRegular(size: getRelativeHeight(14.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Gray500)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(24.0),
                                                   height: getRelativeHeight(17.0),
                                                   alignment: .topLeading)
                                            .padding(.top, getRelativeHeight(5.0))
                                    }
                                    .frame(width: getRelativeWidth(24.0),
                                           height: getRelativeHeight(259.0), alignment: .center)
                                    .padding(.leading, getRelativeWidth(16.0))
                                }
                                .frame(width: getRelativeWidth(412.0),
                                       height: getRelativeHeight(259.0), alignment: .center)
                                Spacer()
                                HStack {
                                    ScrollView(.horizontal, showsIndicators: false) {
                                        VStack(alignment: .leading, spacing: 0) {
                                            ZStack {
                                                Image("img_vector_gray_100_14x14")
                                                    .resizable()
                                                    .frame(width: getRelativeWidth(14.0),
                                                           height: getRelativeWidth(14.0),
                                                           alignment: .center)
                                                    .scaledToFit()
                                                    .clipped()
                                                    .padding(.bottom, getRelativeHeight(156.0))
                                                    .padding(.trailing, getRelativeWidth(156.0))
                                            }
                                            .hideNavigationBar()
                                            .frame(width: getRelativeWidth(178.0),
                                                   height: getRelativeWidth(178.0),
                                                   alignment: .leading)
                                            .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                                       bottomLeft: 8.0,
                                                                       bottomRight: 8.0))
                                            Text(StringConstants.kLblVNDMFtu)
                                                .font(FontScheme
                                                    .kSFProDisplayRegular(size: getRelativeHeight(16.0)))
                                                .fontWeight(.regular)
                                                .foregroundColor(ColorConstants.Gray100)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(178.0),
                                                       height: getRelativeHeight(24.0),
                                                       alignment: .topLeading)
                                                .padding(.top, getRelativeHeight(8.0))
                                            Text(StringConstants.kLblPodcast)
                                                .font(FontScheme
                                                    .kSFProRegular(size: getRelativeHeight(14.0)))
                                                .fontWeight(.regular)
                                                .foregroundColor(ColorConstants.Gray500)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(178.0),
                                                       height: getRelativeHeight(21.0),
                                                       alignment: .topLeading)
                                                .padding(.top, getRelativeHeight(4.0))
                                        }
                                        .frame(width: getRelativeWidth(178.0),
                                               alignment: .topLeading)
                                    }
                                    ScrollView(.horizontal, showsIndicators: false) {
                                        ZStack(alignment: .bottomLeading) {
                                            HStack {
                                                ZStack {
                                                    Image("img_vector_gray_100_14x14")
                                                        .resizable()
                                                        .frame(width: getRelativeWidth(14.0),
                                                               height: getRelativeWidth(14.0),
                                                               alignment: .center)
                                                        .scaledToFit()
                                                        .clipped()
                                                        .padding(.bottom, getRelativeHeight(156.0))
                                                        .padding(.trailing, getRelativeWidth(156.0))
                                                }
                                                .hideNavigationBar()
                                                .frame(width: getRelativeWidth(178.0),
                                                       height: getRelativeWidth(178.0),
                                                       alignment: .center)
                                                .background(RoundedCorners(topLeft: 8.0,
                                                                           topRight: 8.0,
                                                                           bottomLeft: 8.0,
                                                                           bottomRight: 8.0))
                                                ZStack {
                                                    Image("img_vector_gray_100_14x14")
                                                        .resizable()
                                                        .frame(width: getRelativeWidth(14.0),
                                                               height: getRelativeWidth(14.0),
                                                               alignment: .center)
                                                        .scaledToFit()
                                                        .clipped()
                                                        .padding(.bottom, getRelativeHeight(156.0))
                                                        .padding(.trailing, getRelativeWidth(156.0))
                                                }
                                                .hideNavigationBar()
                                                .frame(width: getRelativeWidth(178.0),
                                                       height: getRelativeWidth(178.0),
                                                       alignment: .center)
                                                .background(RoundedCorners(topLeft: 8.0,
                                                                           topRight: 8.0,
                                                                           bottomLeft: 8.0,
                                                                           bottomRight: 8.0))
                                                .padding(.leading, getRelativeWidth(210.0))
                                            }
                                            .frame(width: getRelativeWidth(24.0),
                                                   height: getRelativeHeight(178.0),
                                                   alignment: .topLeading)
                                            .padding(.bottom, getRelativeHeight(57.0))
                                            .padding(.trailing, getRelativeWidth(542.0))
                                            VStack(alignment: .leading, spacing: 0) {
                                                Text(StringConstants.kLblLINIBMT)
                                                    .font(FontScheme
                                                        .kSFProDisplayRegular(size: getRelativeHeight(16.0)))
                                                    .fontWeight(.regular)
                                                    .foregroundColor(ColorConstants.Gray100)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.leading)
                                                    .frame(width: getRelativeWidth(178.0),
                                                           height: getRelativeHeight(24.0),
                                                           alignment: .topLeading)
                                                Text(StringConstants.kLblPodcast)
                                                    .font(FontScheme
                                                        .kSFProRegular(size: getRelativeHeight(14.0)))
                                                    .fontWeight(.regular)
                                                    .foregroundColor(ColorConstants.Gray500)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.leading)
                                                    .frame(width: getRelativeWidth(178.0),
                                                           height: getRelativeHeight(21.0),
                                                           alignment: .topLeading)
                                                    .padding(.top, getRelativeHeight(4.0))
                                            }
                                            .frame(width: getRelativeWidth(178.0),
                                                   height: getRelativeHeight(49.0),
                                                   alignment: .bottomLeading)
                                            .padding(.top, getRelativeHeight(186.0))
                                        }
                                        .hideNavigationBar()
                                        .frame(width: getRelativeWidth(178.0),
                                               height: getRelativeHeight(235.0),
                                               alignment: .leading)
                                    }
                                    .padding(.leading, getRelativeWidth(16.0))
                                }
                                .frame(width: getRelativeWidth(372.0),
                                       height: getRelativeHeight(235.0), alignment: .top)
                                .padding(.bottom, getRelativeHeight(24.0))
                            }
                            .frame(width: getRelativeWidth(412.0), height: getRelativeHeight(259.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(24.0))
                        }
                        Group {
                            HStack {
                                HStack {
                                    Text(StringConstants.kLblNTim)
                                        .font(FontScheme
                                            .kSFProDisplayMedium(size: getRelativeHeight(20.0)))
                                        .fontWeight(.medium)
                                        .foregroundColor(ColorConstants.Gray100)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(68.0),
                                               height: getRelativeHeight(24.0),
                                               alignment: .topLeading)
                                    Image("img_arrowright_gray_702")
                                        .resizable()
                                        .frame(width: getRelativeWidth(6.0),
                                               height: getRelativeHeight(12.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.leading, getRelativeWidth(17.0))
                                }
                                .frame(width: getRelativeWidth(91.0),
                                       height: getRelativeHeight(24.0), alignment: .top)
                                .padding(.bottom, getRelativeHeight(4.0))
                                Image("img_star")
                                    .resizable()
                                    .frame(width: getRelativeWidth(18.0),
                                           height: getRelativeHeight(17.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .background(RoundedCorners(topLeft: 0.5, topRight: 0.5,
                                                               bottomLeft: 0.5, bottomRight: 0.5))
                                    .padding(.top, getRelativeHeight(5.0))
                                    .padding(.bottom, getRelativeHeight(6.0))
                                    .padding(.leading, getRelativeWidth(283.0))
                            }
                            .frame(width: getRelativeWidth(393.0), height: getRelativeHeight(30.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(24.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                            HStack(spacing: 0) {
                                ScrollView(.horizontal, showsIndicators: false) {
                                    LazyHStack {
                                        ForEach(0 ... 3, id: \.self) { index in
                                            Unitmusic8Cell()
                                        }
                                    }
                                }
                            }
                            .frame(width: getRelativeWidth(412.0), alignment: .leading)
                            .padding(.top, getRelativeHeight(24.0))
                            HStack {
                                HStack {
                                    Text(StringConstants.kLblTMChiUMI)
                                        .font(FontScheme
                                            .kSFProDisplayMedium(size: getRelativeHeight(20.0)))
                                        .fontWeight(.medium)
                                        .foregroundColor(ColorConstants.Gray100)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(125.0),
                                               height: getRelativeHeight(24.0),
                                               alignment: .topLeading)
                                    Image("img_arrowright_gray_702")
                                        .resizable()
                                        .frame(width: getRelativeWidth(6.0),
                                               height: getRelativeHeight(12.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.leading, getRelativeWidth(17.0))
                                }
                                .frame(width: getRelativeWidth(148.0),
                                       height: getRelativeHeight(24.0), alignment: .top)
                                .padding(.bottom, getRelativeHeight(4.0))
                                Image("img_star")
                                    .resizable()
                                    .frame(width: getRelativeWidth(18.0),
                                           height: getRelativeHeight(17.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .background(RoundedCorners(topLeft: 0.5, topRight: 0.5,
                                                               bottomLeft: 0.5, bottomRight: 0.5))
                                    .padding(.top, getRelativeHeight(5.0))
                                    .padding(.bottom, getRelativeHeight(6.0))
                                    .padding(.leading, getRelativeWidth(226.0))
                            }
                            .frame(width: getRelativeWidth(393.0), height: getRelativeHeight(30.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(24.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                            HStack(spacing: 0) {
                                ScrollView(.horizontal, showsIndicators: false) {
                                    LazyHStack {
                                        ForEach(0 ... 4, id: \.self) { index in
                                            Unitmusic9Cell()
                                        }
                                    }
                                }
                            }
                            .frame(width: UIScreen.main.bounds.width, alignment: .trailing)
                            .padding(.top, getRelativeHeight(24.0))
                            HStack {
                                HStack {
                                    Text(StringConstants.kLblSitcom)
                                        .font(FontScheme
                                            .kSFProDisplayMedium(size: getRelativeHeight(20.0)))
                                        .fontWeight(.medium)
                                        .foregroundColor(ColorConstants.Gray100)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(61.0),
                                               height: getRelativeHeight(24.0),
                                               alignment: .topLeading)
                                    Image("img_arrowright_gray_702")
                                        .resizable()
                                        .frame(width: getRelativeWidth(6.0),
                                               height: getRelativeHeight(12.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.leading, getRelativeWidth(17.0))
                                }
                                .frame(width: getRelativeWidth(84.0),
                                       height: getRelativeHeight(24.0), alignment: .center)
                                Image("img_star")
                                    .resizable()
                                    .frame(width: getRelativeWidth(18.0),
                                           height: getRelativeHeight(17.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .background(RoundedCorners(topLeft: 0.5, topRight: 0.5,
                                                               bottomLeft: 0.5, bottomRight: 0.5))
                                    .padding(.top, getRelativeHeight(5.0))
                                    .padding(.bottom, getRelativeHeight(6.0))
                                    .padding(.leading, getRelativeWidth(290.0))
                            }
                            .frame(width: getRelativeWidth(393.0), height: getRelativeHeight(30.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(24.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                            HStack(spacing: 0) {
                                ScrollView(.horizontal, showsIndicators: false) {
                                    LazyHStack {
                                        ForEach(0 ... 4, id: \.self) { index in
                                            Unitmusic10Cell()
                                        }
                                    }
                                }
                            }
                            .frame(width: UIScreen.main.bounds.width, alignment: .trailing)
                            .padding(.top, getRelativeHeight(24.0))
                            HStack {
                                HStack {
                                    Text(StringConstants.kLblBNgHoaNh)
                                        .font(FontScheme
                                            .kSFProDisplayMedium(size: getRelativeHeight(20.0)))
                                        .fontWeight(.medium)
                                        .foregroundColor(ColorConstants.Gray100)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(119.0),
                                               height: getRelativeHeight(24.0),
                                               alignment: .topLeading)
                                    Image("img_arrowright_gray_702")
                                        .resizable()
                                        .frame(width: getRelativeWidth(6.0),
                                               height: getRelativeHeight(12.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.leading, getRelativeWidth(17.0))
                                }
                                .frame(width: getRelativeWidth(142.0),
                                       height: getRelativeHeight(24.0), alignment: .bottom)
                                .padding(.top, getRelativeHeight(4.0))
                                Image("img_star")
                                    .resizable()
                                    .frame(width: getRelativeWidth(18.0),
                                           height: getRelativeHeight(17.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .background(RoundedCorners(topLeft: 0.5, topRight: 0.5,
                                                               bottomLeft: 0.5, bottomRight: 0.5))
                                    .padding(.top, getRelativeHeight(5.0))
                                    .padding(.bottom, getRelativeHeight(6.0))
                                    .padding(.leading, getRelativeWidth(232.0))
                            }
                            .frame(width: getRelativeWidth(393.0), height: getRelativeHeight(30.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(24.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                            HStack(spacing: 0) {
                                ScrollView(.horizontal, showsIndicators: false) {
                                    LazyHStack {
                                        ForEach(0 ... 3, id: \.self) { index in
                                            Unitmusic11Cell()
                                        }
                                    }
                                }
                            }
                            .frame(width: UIScreen.main.bounds.width, alignment: .trailing)
                            .padding(.top, getRelativeHeight(24.0))
                        }
                    }
                    .frame(width: getRelativeWidth(412.0), alignment: .topLeading)
                }
            }
            .frame(width: getRelativeWidth(412.0), alignment: .topLeading)
            .background(ColorConstants.Black900)
            .padding(.top, getRelativeHeight(30.0))
            .padding(.bottom, getRelativeHeight(10.0))
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(ColorConstants.Black900)
        .ignoresSafeArea()
        .hideNavigationBar()
    }
}

struct PodcastScrollView_Previews: PreviewProvider {
    static var previews: some View {
        PodcastScrollView()
    }
}
