import Foundation
import SwiftUI

class FontScheme: NSObject {
    static func kSFProRegular(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kSFProRegular, size: size)
    }

    static func kSFProMedium(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kSFProMedium, size: size)
    }

    static func kSFProBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kSFProBold, size: size)
    }

    static func kSFProDisplayMedium(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kSFProDisplayMedium, size: size)
    }

    static func kSFProDisplaySemibold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kSFProDisplaySemibold, size: size)
    }

    static func kSFProDisplayRegular(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kSFProDisplayRegular, size: size)
    }

    static func fontFromConstant(fontName: String, size: CGFloat) -> Font {
        var result = Font.system(size: size)

        switch fontName {
        case "kSFProRegular":
            result = self.kSFProRegular(size: size)
        case "kSFProMedium":
            result = self.kSFProMedium(size: size)
        case "kSFProBold":
            result = self.kSFProBold(size: size)
        case "kSFProDisplayMedium":
            result = self.kSFProDisplayMedium(size: size)
        case "kSFProDisplaySemibold":
            result = self.kSFProDisplaySemibold(size: size)
        case "kSFProDisplayRegular":
            result = self.kSFProDisplayRegular(size: size)
        default:
            result = self.kSFProRegular(size: size)
        }
        return result
    }

    enum FontConstant {
        /**
         * Please Add this fonts Manually
         */
        static let kSFProRegular: String = "SFPro-Regular"
        /**
         * Please Add this fonts Manually
         */
        static let kSFProMedium: String = "SFPro-Medium"
        /**
         * Please Add this fonts Manually
         */
        static let kSFProBold: String = "SFPro-Bold"
        /**
         * Please Add this fonts Manually
         */
        static let kSFProDisplayMedium: String = "SFProDisplay-Medium"
        /**
         * Please Add this fonts Manually
         */
        static let kSFProDisplaySemibold: String = "SFProDisplay-Semibold"
        /**
         * Please Add this fonts Manually
         */
        static let kSFProDisplayRegular: String = "SFProDisplay-Regular"
    }
}
