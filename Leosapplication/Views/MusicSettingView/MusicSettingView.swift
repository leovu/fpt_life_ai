import SwiftUI

struct MusicSettingView: View {
    @StateObject var musicSettingViewModel = MusicSettingViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack {
                VStack(alignment: .leading, spacing: 0) {
                    HStack {
                        HStack {
                            Image("img_vector_gray_100_15x7")
                                .resizable()
                                .frame(width: getRelativeWidth(7.0),
                                       height: getRelativeHeight(15.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical, getRelativeHeight(20.0))
                                .padding(.leading, getRelativeWidth(23.0))
                            Text(StringConstants.kLblNguNPhTNhC)
                                .font(FontScheme
                                    .kSFProDisplaySemibold(size: getRelativeHeight(18.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.Gray100)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(137.0),
                                       height: getRelativeHeight(22.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(17.0))
                                .padding(.bottom, getRelativeHeight(16.0))
                                .padding(.leading, getRelativeWidth(115.0))
                        }
                        .frame(width: UIScreen.main.bounds.width - 20,
                               height: getRelativeHeight(56.0), alignment: .leading)
                        .background(ColorConstants.Black900)
                    }
                    .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(56.0),
                           alignment: .leading)
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(56.0),
                       alignment: .leading)
                VStack {
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack {
                            VStack(alignment: .leading, spacing: 0) {
                                HStack {
                                    HStack {
                                        Button(action: {}, label: {
                                            Image("img_frame427323255")
                                        })
                                        .frame(width: getRelativeWidth(32.0),
                                               height: getRelativeWidth(32.0), alignment: .center)
                                        .background(RoundedCorners(topLeft: 16.0, topRight: 16.0,
                                                                   bottomLeft: 16.0,
                                                                   bottomRight: 16.0)
                                                .fill(ColorConstants.Blue500))
                                        Text(StringConstants.kLblUsb)
                                            .font(FontScheme
                                                .kSFProDisplayRegular(size: getRelativeHeight(16.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Gray100)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(30.0),
                                                   height: getRelativeHeight(20.0),
                                                   alignment: .topLeading)
                                            .padding(.leading, getRelativeWidth(16.0))
                                    }
                                    .frame(width: getRelativeWidth(78.0),
                                           height: getRelativeHeight(32.0), alignment: .center)
                                    Spacer()
                                    Image("img_arrowright")
                                        .resizable()
                                        .frame(width: getRelativeWidth(6.0),
                                               height: getRelativeHeight(12.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.vertical, getRelativeHeight(10.0))
                                        .padding(.trailing, getRelativeWidth(9.0))
                                }
                                .frame(width: getRelativeWidth(364.0),
                                       height: getRelativeHeight(32.0), alignment: .center)
                                .padding(.top, getRelativeHeight(16.0))
                                .padding(.horizontal, getRelativeWidth(16.0))
                                Divider()
                                    .frame(width: getRelativeWidth(332.0),
                                           height: getRelativeHeight(1.0), alignment: .trailing)
                                    .background(ColorConstants.Bluegray900)
                                    .padding(.top, getRelativeHeight(16.0))
                                    .padding(.leading, getRelativeWidth(10.0))
                                HStack {
                                    HStack {
                                        Image("img_frame427323255_32x32")
                                            .resizable()
                                            .frame(width: getRelativeWidth(32.0),
                                                   height: getRelativeWidth(32.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipShape(Circle())
                                            .clipShape(Circle())
                                        Text(StringConstants.kMsgSportifyPremiu)
                                            .font(FontScheme
                                                .kSFProDisplayRegular(size: getRelativeHeight(16.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Gray100)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(158.0),
                                                   height: getRelativeHeight(20.0),
                                                   alignment: .topLeading)
                                            .padding(.leading, getRelativeWidth(16.0))
                                    }
                                    .frame(width: getRelativeWidth(206.0),
                                           height: getRelativeHeight(32.0), alignment: .center)
                                    Spacer()
                                    Image("img_arrowright")
                                        .resizable()
                                        .frame(width: getRelativeWidth(6.0),
                                               height: getRelativeHeight(12.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.vertical, getRelativeHeight(10.0))
                                        .padding(.trailing, getRelativeWidth(9.0))
                                }
                                .frame(width: getRelativeWidth(364.0),
                                       height: getRelativeHeight(32.0), alignment: .center)
                                .padding(.top, getRelativeHeight(15.0))
                                .padding(.horizontal, getRelativeWidth(10.0))
                                Divider()
                                    .frame(width: getRelativeWidth(332.0),
                                           height: getRelativeHeight(1.0), alignment: .trailing)
                                    .background(ColorConstants.Bluegray900)
                                    .padding(.top, getRelativeHeight(16.0))
                                    .padding(.leading, getRelativeWidth(10.0))
                                HStack {
                                    HStack {
                                        Image("img_frame427323255_1")
                                            .resizable()
                                            .frame(width: getRelativeWidth(32.0),
                                                   height: getRelativeWidth(32.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipShape(Circle())
                                            .clipShape(Circle())
                                        Text(StringConstants.kMsgMNhCPodca)
                                            .font(FontScheme
                                                .kSFProDisplayRegular(size: getRelativeHeight(16.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Gray100)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(139.0),
                                                   height: getRelativeHeight(20.0),
                                                   alignment: .topLeading)
                                            .padding(.leading, getRelativeWidth(16.0))
                                    }
                                    .frame(width: getRelativeWidth(187.0),
                                           height: getRelativeHeight(32.0), alignment: .center)
                                    Spacer()
                                    Image("img_arrowright")
                                        .resizable()
                                        .frame(width: getRelativeWidth(6.0),
                                               height: getRelativeHeight(12.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.vertical, getRelativeHeight(10.0))
                                        .padding(.trailing, getRelativeWidth(9.0))
                                }
                                .frame(width: getRelativeWidth(364.0),
                                       height: getRelativeHeight(32.0), alignment: .center)
                                .padding(.top, getRelativeHeight(15.0))
                                .padding(.bottom, getRelativeHeight(16.0))
                                .padding(.horizontal, getRelativeWidth(10.0))
                            }
                            .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(192.0),
                                   alignment: .leading)
                            .background(RoundedCorners(topLeft: 16.0, topRight: 16.0,
                                                       bottomLeft: 16.0, bottomRight: 16.0)
                                    .fill(ColorConstants.Gray900))
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
                                               height: getRelativeHeight(40.0), alignment: .center)
                                        .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                                   bottomLeft: 8.0,
                                                                   bottomRight: 8.0)
                                                .fill(ColorConstants.DeepOrange500))
                                        .padding(.top, getRelativeHeight(1690.0))
                                        .padding(.horizontal, getRelativeWidth(129.0))
                                }
                            })
                            .frame(width: getRelativeWidth(139.0), height: getRelativeHeight(40.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                       bottomRight: 8.0)
                                    .fill(ColorConstants.DeepOrange500))
                            .padding(.top, getRelativeHeight(1690.0))
                            .padding(.horizontal, getRelativeWidth(129.0))
                        }
                        .frame(width: getRelativeWidth(396.0), alignment: .topLeading)
                    }
                    .padding(.horizontal, getRelativeWidth(16.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height,
                       alignment: .topLeading)
            }
            .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
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

struct MusicSettingView_Previews: PreviewProvider {
    static var previews: some View {
        MusicSettingView()
    }
}
