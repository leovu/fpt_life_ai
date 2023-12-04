import SwiftUI

struct HomeView: View {
    @StateObject var homeViewModel = HomeViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    VStack {
                        VStack {
                            HStack {
                                HStack {
                                    VStack {
                                        Text(StringConstants.kLblPhNgNg)
                                            .font(FontScheme
                                                .kSFProRegular(size: getRelativeHeight(14.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Gray800)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(70.0),
                                                   height: getRelativeHeight(9.0),
                                                   alignment: .topLeading)
                                            .padding(.bottom, getRelativeHeight(10.0))
                                            .padding(.horizontal, getRelativeWidth(16.0))
                                    }
                                    .frame(width: getRelativeWidth(190.0),
                                           height: getRelativeHeight(20.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                               bottomLeft: 10.0, bottomRight: 10.0)
                                            .fill(ColorConstants.Gray900))
                                    Spacer()
                                    VStack {
                                        Text(StringConstants.kLblPhNgNg)
                                            .font(FontScheme
                                                .kSFProRegular(size: getRelativeHeight(14.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Gray800)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(70.0),
                                                   height: getRelativeHeight(9.0),
                                                   alignment: .topLeading)
                                            .padding(.bottom, getRelativeHeight(10.0))
                                            .padding(.horizontal, getRelativeWidth(16.0))
                                    }
                                    .frame(width: getRelativeWidth(190.0),
                                           height: getRelativeHeight(20.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                               bottomLeft: 10.0, bottomRight: 10.0)
                                            .fill(ColorConstants.Gray900))
                                }
                                .frame(width: getRelativeWidth(396.0),
                                       height: getRelativeHeight(20.0), alignment: .leading)
                                .clipShape(Capsule())
                            }
                            .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(20.0),
                                   alignment: .leading)
                        }
                        .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(20.0),
                               alignment: .center)
                        .clipShape(Capsule())
                        .padding(.horizontal, getRelativeWidth(16.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(20.0),
                           alignment: .leading)
                    VStack(alignment: .leading, spacing: 0) {
                        ScrollView(.vertical, showsIndicators: false) {
                            VStack {
                                ZStack(alignment: .topLeading) {
                                    VStack(alignment: .leading, spacing: 0) {
                                        Group {
                                            HStack {
                                                Text(StringConstants.kLblCACNg02)
                                                    .font(FontScheme
                                                        .kSFProRegular(size: getRelativeHeight(16.0)))
                                                    .fontWeight(.regular)
                                                    .foregroundColor(ColorConstants.Gray100)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.leading)
                                                    .frame(width: getRelativeWidth(103.0),
                                                           height: getRelativeHeight(20.0),
                                                           alignment: .topLeading)
                                                Spacer()
                                                Text(StringConstants.kLblXemTTC)
                                                    .font(FontScheme
                                                        .kSFProRegular(size: getRelativeHeight(14.0)))
                                                    .fontWeight(.regular)
                                                    .foregroundColor(ColorConstants.Gray500)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.leading)
                                                    .frame(width: getRelativeWidth(71.0),
                                                           height: getRelativeHeight(17.0),
                                                           alignment: .topLeading)
                                            }
                                            .frame(width: getRelativeWidth(396.0),
                                                   height: getRelativeHeight(20.0),
                                                   alignment: .leading)
                                            VStack {
                                                HStack(spacing: 0) {
                                                    ScrollView(.horizontal,
                                                               showsIndicators: false) {
                                                        LazyHStack {
                                                            ForEach(0 ... 1, id: \.self) { index in
                                                                CardCell()
                                                            }
                                                        }
                                                    }
                                                }
                                                .frame(width: getRelativeWidth(396.0),
                                                       alignment: .leading)
                                                .background(RoundedCorners(topLeft: 12.0,
                                                                           topRight: 12.0,
                                                                           bottomLeft: 12.0,
                                                                           bottomRight: 12.0))
                                            }
                                            .frame(width: getRelativeWidth(396.0),
                                                   height: getRelativeHeight(116.0),
                                                   alignment: .leading)
                                            .background(RoundedCorners(topLeft: 12.0,
                                                                       topRight: 12.0,
                                                                       bottomLeft: 12.0,
                                                                       bottomRight: 12.0))
                                            .padding(.top, getRelativeHeight(17.0))
                                            HStack {
                                                Text(StringConstants.kMsgKhoThNgMinh)
                                                    .font(FontScheme
                                                        .kSFProRegular(size: getRelativeHeight(16.0)))
                                                    .fontWeight(.regular)
                                                    .foregroundColor(ColorConstants.Gray100)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.leading)
                                                    .frame(width: getRelativeWidth(159.0),
                                                           height: getRelativeHeight(20.0),
                                                           alignment: .topLeading)
                                                Spacer()
                                                Text(StringConstants.kLblXemTTC)
                                                    .font(FontScheme
                                                        .kSFProRegular(size: getRelativeHeight(14.0)))
                                                    .fontWeight(.regular)
                                                    .foregroundColor(ColorConstants.Gray500)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.leading)
                                                    .frame(width: getRelativeWidth(71.0),
                                                           height: getRelativeHeight(17.0),
                                                           alignment: .topLeading)
                                                    .padding(.bottom, getRelativeHeight(4.0))
                                            }
                                            .frame(width: getRelativeWidth(396.0),
                                                   height: getRelativeHeight(21.0),
                                                   alignment: .leading)
                                            .padding(.top, getRelativeHeight(25.0))
                                            VStack {
                                                HStack(spacing: 0) {
                                                    ScrollView(.horizontal,
                                                               showsIndicators: false) {
                                                        LazyHStack {
                                                            ForEach(0 ... 1, id: \.self) { index in
                                                                Card1Cell()
                                                            }
                                                        }
                                                    }
                                                }
                                                .frame(width: getRelativeWidth(396.0),
                                                       alignment: .leading)
                                                .background(RoundedCorners(topLeft: 12.0,
                                                                           topRight: 12.0,
                                                                           bottomLeft: 12.0,
                                                                           bottomRight: 12.0))
                                            }
                                            .frame(width: getRelativeWidth(396.0),
                                                   height: getRelativeHeight(116.0),
                                                   alignment: .leading)
                                            .background(RoundedCorners(topLeft: 12.0,
                                                                       topRight: 12.0,
                                                                       bottomLeft: 12.0,
                                                                       bottomRight: 12.0))
                                            .padding(.top, getRelativeHeight(16.0))
                                            HStack {
                                                Text(StringConstants.kLblLoa02)
                                                    .font(FontScheme
                                                        .kSFProRegular(size: getRelativeHeight(16.0)))
                                                    .fontWeight(.regular)
                                                    .foregroundColor(ColorConstants.Gray100)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.leading)
                                                    .frame(width: getRelativeWidth(58.0),
                                                           height: getRelativeHeight(20.0),
                                                           alignment: .topLeading)
                                                Spacer()
                                                Text(StringConstants.kLblXemTTC)
                                                    .font(FontScheme
                                                        .kSFProRegular(size: getRelativeHeight(14.0)))
                                                    .fontWeight(.regular)
                                                    .foregroundColor(ColorConstants.Gray500)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.leading)
                                                    .frame(width: getRelativeWidth(71.0),
                                                           height: getRelativeHeight(17.0),
                                                           alignment: .topLeading)
                                                    .padding(.bottom, getRelativeHeight(4.0))
                                            }
                                            .frame(width: getRelativeWidth(396.0),
                                                   height: getRelativeHeight(21.0),
                                                   alignment: .leading)
                                            .padding(.top, getRelativeHeight(25.0))
                                            VStack {
                                                HStack(spacing: 0) {
                                                    ScrollView(.horizontal,
                                                               showsIndicators: false) {
                                                        LazyHStack {
                                                            ForEach(0 ... 1, id: \.self) { index in
                                                                Card2Cell()
                                                            }
                                                        }
                                                    }
                                                }
                                                .frame(width: getRelativeWidth(396.0),
                                                       alignment: .leading)
                                                .background(RoundedCorners(topLeft: 12.0,
                                                                           topRight: 12.0,
                                                                           bottomLeft: 12.0,
                                                                           bottomRight: 12.0))
                                            }
                                            .frame(width: getRelativeWidth(396.0),
                                                   height: getRelativeHeight(116.0),
                                                   alignment: .leading)
                                            .background(RoundedCorners(topLeft: 12.0,
                                                                       topRight: 12.0,
                                                                       bottomLeft: 12.0,
                                                                       bottomRight: 12.0))
                                            .padding(.top, getRelativeHeight(16.0))
                                            HStack {
                                                Text(StringConstants.kLblTivi02)
                                                    .font(FontScheme
                                                        .kSFProRegular(size: getRelativeHeight(16.0)))
                                                    .fontWeight(.regular)
                                                    .foregroundColor(ColorConstants.Gray100)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.leading)
                                                    .frame(width: getRelativeWidth(58.0),
                                                           height: getRelativeHeight(20.0),
                                                           alignment: .topLeading)
                                                Spacer()
                                                Text(StringConstants.kLblXemTTC)
                                                    .font(FontScheme
                                                        .kSFProRegular(size: getRelativeHeight(14.0)))
                                                    .fontWeight(.regular)
                                                    .foregroundColor(ColorConstants.Gray500)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.leading)
                                                    .frame(width: getRelativeWidth(71.0),
                                                           height: getRelativeHeight(17.0),
                                                           alignment: .topLeading)
                                                    .padding(.bottom, getRelativeHeight(4.0))
                                            }
                                            .frame(width: getRelativeWidth(396.0),
                                                   height: getRelativeHeight(21.0),
                                                   alignment: .leading)
                                            .padding(.top, getRelativeHeight(25.0))
                                            VStack {
                                                HStack(spacing: 0) {
                                                    ScrollView(.horizontal,
                                                               showsIndicators: false) {
                                                        LazyHStack {
                                                            ForEach(0 ... 1, id: \.self) { index in
                                                                Card3Cell()
                                                            }
                                                        }
                                                    }
                                                }
                                                .frame(width: getRelativeWidth(396.0),
                                                       alignment: .leading)
                                                .background(RoundedCorners(topLeft: 12.0,
                                                                           topRight: 12.0,
                                                                           bottomLeft: 12.0,
                                                                           bottomRight: 12.0))
                                            }
                                            .frame(width: getRelativeWidth(396.0),
                                                   height: getRelativeHeight(116.0),
                                                   alignment: .leading)
                                            .background(RoundedCorners(topLeft: 12.0,
                                                                       topRight: 12.0,
                                                                       bottomLeft: 12.0,
                                                                       bottomRight: 12.0))
                                            .padding(.top, getRelativeHeight(16.0))
                                        }
                                        Group {
                                            HStack {
                                                Text(StringConstants.kLblChiUSNg05)
                                                    .font(FontScheme
                                                        .kSFProRegular(size: getRelativeHeight(16.0)))
                                                    .fontWeight(.regular)
                                                    .foregroundColor(ColorConstants.Gray100)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.leading)
                                                    .frame(width: getRelativeWidth(116.0),
                                                           height: getRelativeHeight(20.0),
                                                           alignment: .topLeading)
                                                Spacer()
                                                Text(StringConstants.kLblXemTTC)
                                                    .font(FontScheme
                                                        .kSFProRegular(size: getRelativeHeight(14.0)))
                                                    .fontWeight(.regular)
                                                    .foregroundColor(ColorConstants.Gray500)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.leading)
                                                    .frame(width: getRelativeWidth(71.0),
                                                           height: getRelativeHeight(17.0),
                                                           alignment: .topLeading)
                                            }
                                            .frame(width: getRelativeWidth(396.0),
                                                   height: getRelativeHeight(20.0),
                                                   alignment: .leading)
                                            .padding(.top, getRelativeHeight(25.0))
                                            VStack(alignment: .leading, spacing: 0) {
                                                ScrollView(.vertical, showsIndicators: false) {
                                                    VStack {
                                                        LazyVGrid(columns: [SwiftUI.GridItem(),
                                                                            SwiftUI.GridItem()],
                                                                  spacing: 16.0) {
                                                            ForEach(0 ... 3, id: \.self) { index in
                                                                Card4Cell()
                                                            }
                                                        }
                                                    }
                                                }
                                                .fixedSize(horizontal: false, vertical: false)
                                                HStack {
                                                    ZStack(alignment: .center) {
                                                        VStack {
                                                            ZStack {}
                                                                .hideNavigationBar()
                                                                .frame(width: getRelativeWidth(110.0),
                                                                       height: getRelativeHeight(116.0),
                                                                       alignment: .leading)
                                                                .background(ColorConstants.Gray900)
                                                                .padding(.trailing,
                                                                         getRelativeWidth(80.0))
                                                        }
                                                        .frame(width: getRelativeWidth(190.0),
                                                               height: getRelativeHeight(116.0),
                                                               alignment: .leading)
                                                        .background(RoundedCorners(topLeft: 12.0,
                                                                                   topRight: 12.0,
                                                                                   bottomLeft: 12.0,
                                                                                   bottomRight: 12.0)
                                                                .fill(ColorConstants.Gray900))
                                                        VStack(alignment: .leading, spacing: 0) {
                                                            HStack {
                                                                Spacer()
                                                                Image("img_icondownlight_gray_800")
                                                                    .resizable()
                                                                    .frame(width: getRelativeWidth(20.0),
                                                                           height: getRelativeHeight(12.0),
                                                                           alignment: .center)
                                                                    .scaledToFit()
                                                                    .clipped()
                                                                    .padding(.vertical,
                                                                             getRelativeHeight(6.0))
                                                                Text(StringConstants.kLblTT)
                                                                    .font(FontScheme
                                                                        .kSFProMedium(size: getRelativeHeight(14.0)))
                                                                    .fontWeight(.medium)
                                                                    .foregroundColor(ColorConstants
                                                                        .Gray800)
                                                                    .minimumScaleFactor(0.5)
                                                                    .multilineTextAlignment(.leading)
                                                                    .frame(width: getRelativeWidth(22.0),
                                                                           height: getRelativeHeight(21.0),
                                                                           alignment: .leading)
                                                                    .padding(.leading,
                                                                             getRelativeWidth(10.0))
                                                                ZStack {}
                                                                    .hideNavigationBar()
                                                                    .frame(width: getRelativeWidth(4.0),
                                                                           height: getRelativeWidth(4.0),
                                                                           alignment: .center)
                                                                    .background(RoundedCorners(topLeft: 2.0,
                                                                                               topRight: 2.0,
                                                                                               bottomLeft: 2.0,
                                                                                               bottomRight: 2.0)
                                                                            .fill(ColorConstants
                                                                                .Gray800))
                                                                    .padding(.vertical,
                                                                             getRelativeHeight(10.0))
                                                                    .padding(.leading,
                                                                             getRelativeWidth(8.0))
                                                                Text(StringConstants.kLbl60)
                                                                    .font(FontScheme
                                                                        .kSFProMedium(size: getRelativeHeight(14.0)))
                                                                    .fontWeight(.medium)
                                                                    .foregroundColor(ColorConstants
                                                                        .Gray800)
                                                                    .minimumScaleFactor(0.5)
                                                                    .multilineTextAlignment(.leading)
                                                                    .frame(width: getRelativeWidth(32.0),
                                                                           height: getRelativeHeight(21.0),
                                                                           alignment: .leading)
                                                                    .padding(.leading,
                                                                             getRelativeWidth(8.0))
                                                                Image("img_icon_gray_800_2x16")
                                                                    .resizable()
                                                                    .frame(width: getRelativeWidth(16.0),
                                                                           height: getRelativeHeight(2.0),
                                                                           alignment: .center)
                                                                    .scaledToFit()
                                                                    .clipped()
                                                                    .padding(.vertical,
                                                                             getRelativeHeight(11.0))
                                                                    .padding(.leading,
                                                                             getRelativeWidth(32.0))
                                                            }
                                                            .frame(width: getRelativeWidth(154.0),
                                                                   height: getRelativeHeight(24.0),
                                                                   alignment: .center)
                                                            .padding(.trailing)
                                                            Text(StringConstants.kLblNMTrN)
                                                                .font(FontScheme
                                                                    .kSFProMedium(size: getRelativeHeight(16.0)))
                                                                .fontWeight(.medium)
                                                                .foregroundColor(ColorConstants
                                                                    .Gray800)
                                                                .minimumScaleFactor(0.5)
                                                                .multilineTextAlignment(.leading)
                                                                .frame(width: getRelativeWidth(158.0),
                                                                       height: getRelativeHeight(24.0),
                                                                       alignment: .topLeading)
                                                                .padding(.top,
                                                                         getRelativeHeight(16.0))
                                                            Text(StringConstants.kLblPhNgNg)
                                                                .font(FontScheme
                                                                    .kSFProRegular(size: getRelativeHeight(14.0)))
                                                                .fontWeight(.regular)
                                                                .foregroundColor(ColorConstants
                                                                    .Gray800)
                                                                .minimumScaleFactor(0.5)
                                                                .multilineTextAlignment(.leading)
                                                                .frame(width: getRelativeWidth(158.0),
                                                                       height: getRelativeHeight(20.0),
                                                                       alignment: .topLeading)
                                                        }
                                                        .frame(width: getRelativeWidth(158.0),
                                                               height: getRelativeHeight(84.0),
                                                               alignment: .center)
                                                        .padding(.all, getRelativeWidth(16.0))
                                                        .padding(.vertical, getRelativeHeight(16.0))
                                                        .padding(.horizontal,
                                                                 getRelativeWidth(16.0))
                                                    }
                                                    .hideNavigationBar()
                                                    .frame(width: getRelativeWidth(190.0),
                                                           height: getRelativeHeight(116.0),
                                                           alignment: .center)
                                                    .background(RoundedCorners(topLeft: 12.0,
                                                                               topRight: 12.0,
                                                                               bottomLeft: 12.0,
                                                                               bottomRight: 12.0))
                                                    Spacer()
                                                    VStack {
                                                        Image("img_icon_gray_100")
                                                            .resizable()
                                                            .frame(width: getRelativeWidth(28.0),
                                                                   height: getRelativeWidth(28.0),
                                                                   alignment: .center)
                                                            .scaledToFit()
                                                            .clipped()
                                                            .padding(.top, getRelativeHeight(28.0))
                                                            .padding(.horizontal,
                                                                     getRelativeWidth(49.0))
                                                        Text(StringConstants.kLblThMNhM)
                                                            .font(FontScheme
                                                                .kSFProMedium(size: getRelativeHeight(16.0)))
                                                            .fontWeight(.medium)
                                                            .foregroundColor(ColorConstants.Gray100)
                                                            .minimumScaleFactor(0.5)
                                                            .multilineTextAlignment(.leading)
                                                            .frame(width: getRelativeWidth(92.0),
                                                                   height: getRelativeHeight(24.0),
                                                                   alignment: .topLeading)
                                                            .padding(.vertical,
                                                                     getRelativeHeight(10.0))
                                                            .padding(.horizontal,
                                                                     getRelativeWidth(49.0))
                                                    }
                                                    .frame(width: getRelativeWidth(190.0),
                                                           height: getRelativeHeight(116.0),
                                                           alignment: .center)
                                                    .background(RoundedCorners(topLeft: 12.0,
                                                                               topRight: 12.0,
                                                                               bottomLeft: 12.0,
                                                                               bottomRight: 12.0)
                                                            .fill(ColorConstants.Gray900))
                                                }
                                                .frame(width: getRelativeWidth(396.0),
                                                       height: getRelativeHeight(116.0),
                                                       alignment: .leading)
                                                .padding(.top, getRelativeHeight(16.0))
                                            }
                                            .frame(width: getRelativeWidth(396.0),
                                                   height: getRelativeHeight(380.0),
                                                   alignment: .leading)
                                            .background(RoundedCorners(topLeft: 12.0,
                                                                       topRight: 12.0,
                                                                       bottomLeft: 12.0,
                                                                       bottomRight: 12.0))
                                            .padding(.top, getRelativeHeight(17.0))
                                            HStack {
                                                Spacer()
                                                Text(StringConstants.kMsgThiTBKhC)
                                                    .font(FontScheme
                                                        .kSFProRegular(size: getRelativeHeight(16.0)))
                                                    .fontWeight(.regular)
                                                    .foregroundColor(ColorConstants.Gray100)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.leading)
                                                    .frame(width: getRelativeWidth(325.0),
                                                           height: getRelativeHeight(24.0),
                                                           alignment: .topLeading)
                                                Spacer()
                                                Text(StringConstants.kLblXemTTC)
                                                    .font(FontScheme
                                                        .kSFProRegular(size: getRelativeHeight(14.0)))
                                                    .fontWeight(.regular)
                                                    .foregroundColor(ColorConstants.Gray500)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.trailing)
                                                    .frame(width: getRelativeWidth(71.0),
                                                           height: getRelativeHeight(21.0),
                                                           alignment: .topTrailing)
                                                Spacer()
                                            }
                                            .frame(width: getRelativeWidth(396.0),
                                                   height: getRelativeHeight(24.0),
                                                   alignment: .leading)
                                            .padding(.top, getRelativeHeight(24.0))
                                            VStack {
                                                HStack(spacing: 0) {
                                                    ScrollView(.horizontal,
                                                               showsIndicators: false) {
                                                        LazyHStack {
                                                            ForEach(0 ... 1, id: \.self) { index in
                                                                Card5Cell()
                                                            }
                                                        }
                                                    }
                                                }
                                                .frame(width: getRelativeWidth(396.0),
                                                       alignment: .leading)
                                                .background(RoundedCorners(topLeft: 12.0,
                                                                           topRight: 12.0,
                                                                           bottomLeft: 12.0,
                                                                           bottomRight: 12.0))
                                            }
                                            .frame(width: getRelativeWidth(396.0),
                                                   height: getRelativeHeight(116.0),
                                                   alignment: .leading)
                                            .background(RoundedCorners(topLeft: 12.0,
                                                                       topRight: 12.0,
                                                                       bottomLeft: 12.0,
                                                                       bottomRight: 12.0))
                                            .padding(.top, getRelativeHeight(16.0))
                                            HStack {
                                                Image("img_icon_gray_100_14x14")
                                                    .resizable()
                                                    .frame(width: getRelativeWidth(14.0),
                                                           height: getRelativeWidth(14.0),
                                                           alignment: .center)
                                                    .scaledToFit()
                                                    .clipped()
                                                    .padding(.vertical, getRelativeHeight(13.0))
                                                    .padding(.leading, getRelativeWidth(29.0))
                                                Text(StringConstants.kLblThMThiTB)
                                                    .font(FontScheme
                                                        .kSFProDisplayMedium(size: getRelativeHeight(16.0)))
                                                    .fontWeight(.medium)
                                                    .foregroundColor(ColorConstants.Gray100)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.center)
                                                    .frame(width: getRelativeWidth(91.0),
                                                           height: getRelativeHeight(24.0),
                                                           alignment: .center)
                                                    .padding(.vertical, getRelativeHeight(8.0))
                                                    .padding(.leading, getRelativeWidth(13.0))
                                                    .padding(.trailing, getRelativeWidth(24.0))
                                            }
                                            .frame(width: getRelativeWidth(171.0),
                                                   height: getRelativeHeight(40.0),
                                                   alignment: .center)
                                            .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                                       bottomLeft: 8.0,
                                                                       bottomRight: 8.0)
                                                    .fill(ColorConstants.DeepOrange500))
                                            .padding(.top, getRelativeHeight(48.0))
                                            .padding(.horizontal, getRelativeWidth(112.0))
                                        }
                                    }
                                    .frame(width: getRelativeWidth(396.0),
                                           height: UIScreen.main.bounds.height,
                                           alignment: .topLeading)
                                    .padding(.horizontal, getRelativeWidth(16.0))
                                    ZStack(alignment: .bottomLeading) {
                                        Image("img_rectangle10144")
                                            .resizable()
                                            .frame(width: UIScreen.main.bounds.width,
                                                   height: getRelativeHeight(142.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                        VStack {
                                            HStack {
                                                Text(StringConstants.kLbl0941)
                                                    .font(FontScheme
                                                        .kSFProDisplaySemibold(size: getRelativeHeight(16.0)))
                                                    .fontWeight(.semibold)
                                                    .foregroundColor(ColorConstants.Gray100)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.leading)
                                                    .frame(width: getRelativeWidth(39.0),
                                                           height: getRelativeHeight(20.0),
                                                           alignment: .topLeading)
                                                Spacer()
                                                Image("img_group198")
                                                    .resizable()
                                                    .frame(width: getRelativeWidth(74.0),
                                                           height: getRelativeHeight(12.0),
                                                           alignment: .center)
                                                    .scaledToFit()
                                                    .clipped()
                                                    .padding(.bottom, getRelativeHeight(4.0))
                                            }
                                            .frame(width: getRelativeWidth(380.0),
                                                   height: getRelativeHeight(19.0),
                                                   alignment: .center)
                                            .padding(.horizontal, getRelativeWidth(16.0))
                                            HStack {
                                                Picker(StringConstants.kLblNhCATI,
                                                       selection: $homeViewModel
                                                           .valuewrapperPicker1) {
                                                    ForEach(homeViewModel.valuewrapperPicker1Values,
                                                            id: \.self) { value in
                                                        Text(value)
                                                    }
                                                }
                                                .foregroundColor(ColorConstants.Gray100)
                                                .font(.system(size: getRelativeHeight(18)))
                                                .pickerStyle(MenuPickerStyle())
                                                Spacer()
                                                Image("img_add")
                                                    .resizable()
                                                    .frame(width: getRelativeWidth(12.0),
                                                           height: getRelativeWidth(12.0),
                                                           alignment: .center)
                                                    .scaledToFit()
                                                    .clipped()
                                                    .padding(.top, getRelativeHeight(7.0))
                                                    .padding(.bottom, getRelativeHeight(8.0))
                                                    .padding(.trailing, getRelativeWidth(6.0))
                                            }
                                            .frame(width: getRelativeWidth(396.0),
                                                   height: getRelativeHeight(27.0),
                                                   alignment: .center)
                                            .padding(.top, getRelativeHeight(26.0))
                                            .padding(.horizontal, getRelativeWidth(16.0))
                                            ZStack(alignment: .center) {
                                                ZStack {}
                                                    .hideNavigationBar()
                                                    .frame(width: getRelativeWidth(118.0),
                                                           height: getRelativeHeight(31.0),
                                                           alignment: .bottomLeading)
                                                    .padding(.top, getRelativeHeight(10.69))
                                                    .padding(.trailing, getRelativeWidth(294.0))
                                                VStack {
                                                    HStack {
                                                        Text(StringConstants.kLblTTCThiTB)
                                                            .font(FontScheme
                                                                .kSFProMedium(size: getRelativeHeight(18.0)))
                                                            .fontWeight(.medium)
                                                            .foregroundColor(ColorConstants.Gray100)
                                                            .minimumScaleFactor(0.5)
                                                            .multilineTextAlignment(.leading)
                                                            .frame(width: getRelativeWidth(118.0),
                                                                   height: getRelativeHeight(22.0),
                                                                   alignment: .topLeading)
                                                        Spacer()
                                                        Text(StringConstants.kLblPhNgKhCh)
                                                            .font(FontScheme
                                                                .kSFProRegular(size: getRelativeHeight(18.0)))
                                                            .fontWeight(.regular)
                                                            .foregroundColor(ColorConstants.Gray700)
                                                            .minimumScaleFactor(0.5)
                                                            .multilineTextAlignment(.leading)
                                                            .frame(width: getRelativeWidth(110.0),
                                                                   height: getRelativeHeight(22.0),
                                                                   alignment: .topLeading)
                                                        Spacer()
                                                        Text(StringConstants.kLblPhNgNg)
                                                            .font(FontScheme
                                                                .kSFProRegular(size: getRelativeHeight(18.0)))
                                                            .fontWeight(.regular)
                                                            .foregroundColor(ColorConstants.Gray700)
                                                            .minimumScaleFactor(0.5)
                                                            .multilineTextAlignment(.leading)
                                                            .frame(width: getRelativeWidth(91.0),
                                                                   height: getRelativeHeight(22.0),
                                                                   alignment: .topLeading)
                                                        Spacer()
                                                        Text(StringConstants.kLblTittle)
                                                            .font(FontScheme
                                                                .kSFProRegular(size: getRelativeHeight(18.0)))
                                                            .fontWeight(.regular)
                                                            .foregroundColor(ColorConstants.Gray700)
                                                            .minimumScaleFactor(0.5)
                                                            .multilineTextAlignment(.center)
                                                            .frame(width: getRelativeWidth(1.0),
                                                                   height: getRelativeHeight(27.0),
                                                                   alignment: .center)
                                                    }
                                                    .frame(width: getRelativeWidth(412.0),
                                                           height: getRelativeHeight(27.0),
                                                           alignment: .leading)
                                                    Image("img_line24")
                                                        .resizable()
                                                        .frame(width: getRelativeWidth(20.0),
                                                               height: getRelativeHeight(1.0),
                                                               alignment: .center)
                                                        .scaledToFit()
                                                        .clipped()
                                                        .padding(.top, getRelativeHeight(6.0))
                                                        .padding(.horizontal,
                                                                 getRelativeWidth(49.0))
                                                }
                                                .frame(width: getRelativeWidth(412.0),
                                                       height: getRelativeHeight(34.0),
                                                       alignment: .center)
                                                .padding(.top, getRelativeHeight(8.0))
                                                .padding(.leading, getRelativeWidth(16.0))
                                                ZStack {
                                                    Image("img_icon_gray_100_2x16")
                                                        .resizable()
                                                        .frame(width: getRelativeWidth(16.0),
                                                               height: getRelativeHeight(2.0),
                                                               alignment: .center)
                                                        .scaledToFit()
                                                        .clipped()
                                                        .padding(.top, getRelativeHeight(19.51))
                                                        .padding(.bottom, getRelativeHeight(19.49))
                                                        .padding(.horizontal,
                                                                 getRelativeWidth(37.0))
                                                }
                                                .hideNavigationBar()
                                                .frame(width: getRelativeWidth(90.0),
                                                       height: getRelativeHeight(41.0),
                                                       alignment: .trailing)
                                                .background(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                                            .Black90000,
                                                        ColorConstants
                                                            .Black900]),
                                                    startPoint: .topLeading,
                                                    endPoint: .bottomTrailing))
                                                .padding(.leading, getRelativeWidth(338.0))
                                            }
                                            .hideNavigationBar()
                                            .frame(width: UIScreen.main.bounds.width,
                                                   height: getRelativeHeight(42.0),
                                                   alignment: .leading)
                                            .padding(.top, getRelativeHeight(14.0))
                                        }
                                        .frame(width: UIScreen.main.bounds.width,
                                               height: getRelativeHeight(129.0),
                                               alignment: .bottomLeading)
                                        .padding(.top, getRelativeHeight(13.0))
                                    }
                                    .hideNavigationBar()
                                    .frame(width: UIScreen.main.bounds.width,
                                           height: getRelativeHeight(142.0), alignment: .topLeading)
                                    .padding(.bottom, getRelativeHeight(1310.0))
                                }
                                .hideNavigationBar()
                                .frame(width: UIScreen.main.bounds.width,
                                       height: UIScreen.main.bounds.height,
                                       alignment: .topLeading)
                                Button(action: {}, label: {
                                    HStack(spacing: 0) {
                                        Text(StringConstants.kLblThMThiTB)
                                            .font(FontScheme
                                                .kSFProDisplayMedium(size: getRelativeHeight(16.0)))
                                            .fontWeight(.medium)
                                            .padding(.horizontal, getRelativeWidth(24.0))
                                            .padding(.vertical, getRelativeHeight(8.0))
                                            .foregroundColor(ColorConstants.Gray100)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.center)
                                            .frame(width: getRelativeWidth(139.0),
                                                   height: getRelativeHeight(40.0),
                                                   alignment: .center)
                                            .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                                       bottomLeft: 8.0,
                                                                       bottomRight: 8.0)
                                                    .fill(ColorConstants.DeepOrange500))
                                            .padding(.top, getRelativeHeight(448.0))
                                            .padding(.horizontal, getRelativeWidth(145.0))
                                    }
                                })
                                .frame(width: getRelativeWidth(139.0),
                                       height: getRelativeHeight(40.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                           bottomLeft: 8.0, bottomRight: 8.0)
                                        .fill(ColorConstants.DeepOrange500))
                                .padding(.top, getRelativeHeight(448.0))
                                .padding(.horizontal, getRelativeWidth(145.0))
                            }
                            .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                        }
                        Text("tabbar")
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: UIScreen.main.bounds.width - 20,
                                   height: getRelativeHeight(84.0), alignment: .leading)
                            .background(ColorConstants.Gray900)
                    }
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height,
                           alignment: .topLeading)
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.Black900)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: PodcastScrollView(),
                                   tag: "PodcastScrollView",
                                   selection: $homeViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.Black900)
            .ignoresSafeArea()
            .hideNavigationBar()
        }
        .hideNavigationBar()
        .onAppear {
            homeViewModel.nextScreen = "PodcastScrollView"
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
