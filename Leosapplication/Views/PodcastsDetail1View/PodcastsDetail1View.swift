import SwiftUI

struct PodcastsDetail1View: View {
    @StateObject var podcastsDetail1ViewModel = PodcastsDetail1ViewModel()
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
                VStack {
                    HStack {
                        HStack {
                            Image("img_vector_gray_100_15x7")
                                .resizable()
                                .frame(width: getRelativeWidth(7.0),
                                       height: getRelativeHeight(15.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                            Spacer()
                            Text(StringConstants.kLblEnVU3)
                                .font(FontScheme
                                    .kSFProDisplaySemibold(size: getRelativeHeight(18.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.Gray100)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(67.0),
                                       height: getRelativeHeight(22.0), alignment: .topLeading)
                            Spacer()
                            Image("img_group427322474")
                                .resizable()
                                .frame(width: getRelativeWidth(18.0),
                                       height: getRelativeHeight(4.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.top, getRelativeHeight(8.0))
                                .padding(.bottom, getRelativeHeight(9.0))
                        }
                        .frame(width: getRelativeWidth(385.0), height: getRelativeHeight(22.0),
                               alignment: .leading)
                    }
                    .frame(width: getRelativeWidth(385.0), height: getRelativeHeight(22.0),
                           alignment: .leading)
                    .padding(.leading, getRelativeWidth(7.0))
                    VStack(spacing: 0) {
                        ScrollView(.vertical, showsIndicators: false) {
                            LazyVStack {
                                ForEach(0 ... 9, id: \.self) { index in
                                    Rowicon3Cell()
                                }
                            }
                        }
                    }
                    .frame(width: getRelativeWidth(392.0), alignment: .center)
                    .padding(.top, getRelativeHeight(32.0))
                }
                .frame(width: getRelativeWidth(393.0), height: getRelativeHeight(838.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(17.47))
                .padding(.leading, getRelativeWidth(16.0))
                .padding(.trailing, getRelativeWidth(19.0))
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

struct PodcastsDetail1View_Previews: PreviewProvider {
    static var previews: some View {
        PodcastsDetail1View()
    }
}
