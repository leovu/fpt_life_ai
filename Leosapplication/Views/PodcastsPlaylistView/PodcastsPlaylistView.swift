import SwiftUI

struct PodcastsPlaylistView: View {
    @StateObject var podcastsPlaylistViewModel = PodcastsPlaylistViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            ZStack(alignment: .topLeading) {
                Image("img_frame427323255_3")
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(883.0),
                           alignment: .center)
                    .scaledToFit()
                    .clipped()
                VStack {
                    HStack {
                        HStack {
                            Image("img_vector_gray_100_15x7")
                                .resizable()
                                .frame(width: getRelativeWidth(7.0),
                                       height: getRelativeHeight(15.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical, getRelativeHeight(1.0))
                            Spacer()
                            Text(StringConstants.kLblPhNgKhCh)
                                .font(FontScheme
                                    .kSFProDisplaySemibold(size: getRelativeHeight(18.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.Gray100)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(105.0),
                                       height: getRelativeHeight(22.0), alignment: .topLeading)
                            Spacer()
                            Image("img_icon_gray_100_18x18")
                                .resizable()
                                .frame(width: getRelativeWidth(18.0),
                                       height: getRelativeWidth(18.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.bottom, getRelativeHeight(4.0))
                        }
                        .frame(width: getRelativeWidth(385.0), height: getRelativeHeight(22.0),
                               alignment: .leading)
                    }
                    .frame(width: getRelativeWidth(385.0), height: getRelativeHeight(22.0),
                           alignment: .leading)
                    .padding(.leading, getRelativeWidth(23.0))
                    .padding(.trailing, getRelativeWidth(19.0))
                    VStack {
                        ZStack(alignment: .center) {
                            Image("img_ellipse214")
                                .resizable()
                                .frame(width: UIScreen.main.bounds.width,
                                       height: getRelativeHeight(437.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .clipShape(Capsule())
                            ZStack {}
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(32.0),
                                       height: getRelativeWidth(32.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 16.0, topRight: 16.0,
                                                           bottomLeft: 16.0, bottomRight: 16.0)
                                        .fill(ColorConstants.Gray100))
                                .padding(.top, getRelativeHeight(202.56))
                                .padding(.bottom, getRelativeHeight(202.44))
                                .padding(.horizontal, getRelativeWidth(198.0))
                        }
                        .hideNavigationBar()
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(437.0),
                               alignment: .leading)
                        HStack {
                            Image("img_iconshare")
                                .resizable()
                                .frame(width: getRelativeWidth(20.0),
                                       height: getRelativeHeight(22.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical, getRelativeHeight(16.0))
                            Spacer()
                            VStack {
                                Text(StringConstants.kLblLINh2)
                                    .font(FontScheme.kSFProMedium(size: getRelativeHeight(20.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.Gray100)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(69.0),
                                           height: getRelativeHeight(24.0), alignment: .topLeading)
                                    .padding(.horizontal, getRelativeWidth(37.0))
                                Text(StringConstants.kMsgEnVUPhNg2)
                                    .font(FontScheme.kSFProRegular(size: getRelativeHeight(14.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Gray100)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(144.0),
                                           height: getRelativeHeight(17.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(9.0))
                            }
                            .frame(width: getRelativeWidth(144.0), height: getRelativeHeight(50.0),
                                   alignment: .center)
                            Spacer()
                            Image("img_heart")
                                .resizable()
                                .frame(width: getRelativeWidth(18.0),
                                       height: getRelativeHeight(17.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical, getRelativeHeight(18.0))
                        }
                        .frame(width: getRelativeWidth(375.0), height: getRelativeHeight(50.0),
                               alignment: .center)
                        .padding(.horizontal, getRelativeWidth(24.0))
                        ZStack(alignment: .leading) {
                            ZStack {}
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(380.0),
                                       height: getRelativeHeight(2.0), alignment: .leading)
                            ValueSlider(value: $podcastsPlaylistViewModel.groupnineSlider1,
                                        in: 1 ... 100)
                        }
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(12.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(63.0))
                        .padding(.horizontal, getRelativeWidth(24.0))
                        HStack {
                            Text(StringConstants.kLbl207)
                                .font(FontScheme
                                    .kSFProDisplayRegular(size: getRelativeHeight(10.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Gray100)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(20.0),
                                       height: getRelativeHeight(12.0), alignment: .topLeading)
                            Spacer()
                            Text(StringConstants.kLbl521)
                                .font(FontScheme
                                    .kSFProDisplayRegular(size: getRelativeHeight(10.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Gray100)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(18.0),
                                       height: getRelativeHeight(12.0), alignment: .topLeading)
                        }
                        .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(12.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(4.0))
                        .padding(.horizontal, getRelativeWidth(24.0))
                        HStack {
                            Image("img_repeat")
                                .resizable()
                                .frame(width: getRelativeWidth(18.0),
                                       height: getRelativeHeight(15.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.top, getRelativeHeight(16.0))
                                .padding(.bottom, getRelativeHeight(15.0))
                            Spacer()
                            HStack {
                                Image("img_backwardendfi")
                                    .resizable()
                                    .frame(width: getRelativeWidth(18.0),
                                           height: getRelativeHeight(15.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                Image("img_pausesoild")
                                    .resizable()
                                    .frame(width: getRelativeWidth(36.0),
                                           height: getRelativeHeight(46.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.leading, getRelativeWidth(37.0))
                                Image("img_forwardendfil")
                                    .resizable()
                                    .frame(width: getRelativeWidth(18.0),
                                           height: getRelativeHeight(15.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.leading, getRelativeWidth(37.0))
                                Image("img_shuffle")
                                    .resizable()
                                    .frame(width: getRelativeWidth(18.0),
                                           height: getRelativeHeight(14.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.leading, getRelativeWidth(96.0))
                            }
                            .frame(width: getRelativeWidth(260.0), height: getRelativeHeight(46.0),
                                   alignment: .center)
                        }
                        .frame(width: getRelativeWidth(374.0), height: getRelativeHeight(46.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(103.0))
                        .padding(.horizontal, getRelativeWidth(24.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(731.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(4.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(758.0),
                       alignment: .topLeading)
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

struct PodcastsPlaylistView_Previews: PreviewProvider {
    static var previews: some View {
        PodcastsPlaylistView()
    }
}
