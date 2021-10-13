//
//  Constants.swift
//  wyretrade
//
//  Created by maxus on 3/8/21.
//

import Foundation
import UIKit
import DeviceKit

class Constants {
    struct  URL {
        
         static  let base = "https://www.joiintapp.com/";
             
         static  let REDIRECT_URL = base + "api/caronz/";

         static  let login = REDIRECT_URL + "oauth/token";
         static  let register = REDIRECT_URL + "signup";

         static  let CHECK_MAIL_ALREADY_REGISTERED = REDIRECT_URL+"verify";
         static  let RESET_PASSWORD = REDIRECT_URL + "reset";
         static  let CHANGE_PASSWORD = REDIRECT_URL + "profile/reset_pass";
         static  let FORGOT_PASSWORD = REDIRECT_URL + "forgot";
         static  let LOGOUT = REDIRECT_URL + "logout";
         static  let HELP = REDIRECT_URL + "help";

         static  let UserProfile = REDIRECT_URL+"profile";
         static  let UseProfileImage = REDIRECT_URL+"profile/image";

         static  let POST_CAR = REDIRECT_URL + "car";
         static  let POST_CAR_IMAGE = REDIRECT_URL + "car/image";
         static  let DELETE_CAR_IMAGE = REDIRECT_URL + "car/image/delete";
         static  let DELETE_CAR = REDIRECT_URL + "car/delete";
         static  let UPDATE_CAR = REDIRECT_URL + "car/update";
         static  let ACTIVATE_CAR = REDIRECT_URL + "car/activate";
    
         static  let PAYMENT_INVOICE = REDIRECT_URL + "payment/invoice";
    
         static  let REQUEST_BUY = REDIRECT_URL + "buy";
         static  let CONFIRM_BUY = REDIRECT_URL + "buy/confirm";
         static  let COMPLETE_BUY = REDIRECT_URL + "buy/complete";
         static  let CANCEL_BUY = REDIRECT_URL + "buy/cancel";
        
         static  let REQUEST_BOOKING = REDIRECT_URL + "booking";
         static  let GET_BOOKING_LIST = REDIRECT_URL + "booking/list";
         static  let CONFIRM_BOOKING = REDIRECT_URL + "booking/confirm";
         static  let UPDATE_BOOKING = REDIRECT_URL + "booking/update";
         static  let DECLINE_BOOKING = REDIRECT_URL + "booking/decline";
         static  let GET_CANCEL_BOOKING_INFO = REDIRECT_URL + "booking/cancel/info";
         static  let COMPLETE_BOOKING = REDIRECT_URL + "booking/complete";
         static  let CANCEL_BOOKING = REDIRECT_URL + "booking/cancel";
        
         static  let REQUEST_BOOKING = REDIRECT_URL + "hire";
         static  let GET_BOOKING_LIST = REDIRECT_URL + "hire/list";
         static  let CONFIRM_BOOKING = REDIRECT_URL + "hire/confirm";
         static  let UPDATE_BOOKING = REDIRECT_URL + "hire/update";
         static  let DECLINE_BOOKING = REDIRECT_URL + "hire/decline";
         static  let DELETE_BOOKING = REDIRECT_URL + "hire/delete";
         static  let GET_CANCEL_BOOKING_INFO = REDIRECT_URL + "hire/cancel/info";
         static  let COMPLETE_BOOKING = REDIRECT_URL + "hire/complete";
         static  let CANCEL_BOOKING = REDIRECT_URL + "hire/cancel";
        
         static  let GET_SELLER_CAR_LIST = REDIRECT_URL + "seller/car/list";
         static  let GET_SELLER_ACCOUNT = REDIRECT_URL + "seller/account";
        static  let REQUEST_CASHOUT = REDIRECT_URL + "cashout";
        static  let GET_CASHOUT_HISTORY = REDIRECT_URL + "cashout/history";
        
        static  let GET_CHAT_TOKEN = REDIRECT_URL + "chat/token";
        
        static  let REQUEST_CHAT = REDIRECT_URL + "message/chat/request";
        static  let SEND_MESSAGE = REDIRECT_URL + "message/chat";
        static  let CLOSE_CHAT = REDIRECT_URL + "message/chat/close";
        static  let GET_MESSAGE_INBOX = REDIRECT_URL + "message/inbox";
        static  let DELETE_MESSAGE_INBOX = REDIRECT_URL + "message/inbox/delete";
             
        
        static let REQUEST_CARD = REDIRECT_URL + "card";
    
        static let REQUEST_STRIPE_CONNECT = REDIRECT_URL + "stripe/connect";

        static let GET_PLAID_LINK_TOKEN = REDIRECT_URL + "plaid/linktoken";
        static let SEND_PLAID_CONNECT_BANK = REDIRECT_URL + "plaid/bank/create";
        
        static let GET_COINS = REDIRECT_URL + "coins";
        static let REQUEST_COIN_DEPOSIT = REDIRECT_URL + "coin/deposit";
        static let GET_COIN_DEPOSIT_HISTORY = REDIRECT_URL + "coin/deposit";
        static let DELETE_COIN_DEPOSIT = REDIRECT_URL + "coin/delete";
        
        static let REQUEST_AVIS_RESERVATION = REDIRECT_URL + "avis/create";
        
        // unauthenticate request
        static let GET_CATEGORIES = REDIRECT_URL + "categories";
        static let SEARCH_CARS = REDIRECT_URL + "car/search";
        static let SEARCH_DRIVERS = REDIRECT_URL + "driver/search";
        static let GET_CAR_DETAIL = REDIRECT_URL + "car/detail";
        static let GET_CAR_FEEDBACK = REDIRECT_URL + "car/feedback";
        
        static let GET_SELLER_PROFILE = REDIRECT_URL + "seller/profile";
        static let NOTIFICATION = REDIRECT_URL + "notification";
        
        static let REQUEST_AVIS_RESERVATION = REDIRECT_URL + "avis/locatins";
        static let SEARCH_AVIS_CARS = REDIRECT_URL + "avis/cars";
        static let GET_AVIS_RATE = REDIRECT_URL + "avis/rate";
        static let GET_AVIS_RESERVATION = REDIRECT_URL + "avis/reservation";
        
    }
    
    
    struct customCodes {

        static let purchaseCode = "Purchase Code"
        static let securityCode = "Secret Code"
    }
    
    struct googlePlacesAPIKey {
        static let placesKey =  "Places Key"
        
    }
    
    struct AppColor {
        static let greenColor = "#24a740"
        static let redColor = "#F25E5E"
        static let ratingColor = "#ffcc00"
        static let orangeColor = "#f58936"
        static let messageCellColor = "fffcf6"
        static let brownColor = "#90000000"
        static let expired = "#d9534f"
        static let active = "#4caf50"
        static let sold = "#3498db"
        static let featureAdd = "#d9534f"
        static let phoneVerified = "#8ac249"
        static let phoneNotVerified = "#F25E5E"
    }
    
    
    struct NotificationName {
        static let updateUserProfile = "updateProfile"
        static let updateAddDetails = "updateAds"
        static let updateBidsStats = "bidsStats"
        static let adPostImageDelete = "updateMainData"
        static let searchDynamicData = "UpdateDynamicData"
        static let updateAdPostDynamicData = "UpdateAdPostDynamicData"
    }
    
    struct NetworkError {
        static let timeOutInterval: TimeInterval = 20
        
        static let error = "Error"
        static let internetNotAvailable = "Internet Not Available"
        static let pleaseTryAgain = "Please Try Again"
        
        static let generic = 4000
        static let genericError = "Please Try Again."
        
        static let serverErrorCode = 5000
        static let serverNotAvailable = "Server Not Available"
        static let serverError = "Server Not Availabe, Please Try Later."
        
        static let timout = 4001
        static let timoutError = "Network Time Out, Please Try Again."
        
        static let login = 4003
        static let loginMessage = "Unable To Login"
        static let loginError = "Please Try Again."
        
        static let internet = 4004
        static let internetError = "Internet Not Available"
    }
    
    struct NetworkSuccess {
        static let statusOK = 200
    }
    
    struct activitySize {
        static let size = CGSize(width: 40, height: 40)
    }
    
    enum loaderMessages : String {
        case loadingMessage = ""
    }
    
    //Convert data to json string
    static func json(from object:Any) -> String? {
        guard let data = try? JSONSerialization.data(withJSONObject: object, options: []) else {
            return nil
        }
        return String(data: data, encoding: String.Encoding.utf8)
    }
    
    
    static func dateFormatter(date: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        dateFormatter.timeZone = NSTimeZone(name: "UTC")! as TimeZone
        let date = dateFormatter.date(from: date)
        // change to a readable time format and change to local time zone
        dateFormatter.dateFormat = "yyyy-MM-dd"
        dateFormatter.timeZone = NSTimeZone.local
        let timeStamp = dateFormatter.string(from: date!)
        return timeStamp
    }
    
    static func hexStringToUIColor (hex:String) -> UIColor {
        var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if (cString.hasPrefix("#")) {
            cString.remove(at: cString.startIndex)
        }
        
        if ((cString.count) != 6) {
            return UIColor.gray
        }
        var rgbValue:UInt32 = 0
        Scanner(string: cString).scanHexInt32(&rgbValue)
        
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
    
    static func crossString (titleStr : String) -> NSMutableAttributedString {
        let attributeString: NSMutableAttributedString = NSMutableAttributedString(string: titleStr)
        attributeString.addAttribute(NSAttributedString.Key.baselineOffset, value: 1, range: NSMakeRange(0, attributeString.length ))
        attributeString.addAttribute(NSAttributedString.Key.strikethroughStyle, value: 1, range: NSMakeRange(0, attributeString.length  ))
        attributeString.addAttribute(NSAttributedString.Key.strikethroughColor, value: UIColor.black, range:  NSMakeRange(0, attributeString.length))
        return attributeString
    }
    
    static func attributedString(from string: String, nonBoldRange: NSRange?) -> NSAttributedString {
        let fontSize = UIFont.systemFontSize
        let attrs = [
            NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: fontSize),
            NSAttributedString.Key.foregroundColor: UIColor.black
        ]
        let nonBoldAttribute = [
            NSAttributedString.Key.font: UIFont.systemFont(ofSize: fontSize),
        ]
        let attrStr = NSMutableAttributedString(string: string, attributes: attrs)
        if let range = nonBoldRange {
            attrStr.setAttributes(nonBoldAttribute, range: range)
        }
        return attrStr
    }
    
    static func labelString(from string: String, nonBoldRange: NSRange?) -> NSAttributedString {
        let fontSize = UIFont.systemFontSize
        let attrs = [
            NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: fontSize),
            NSAttributedString.Key.foregroundColor: UIColor.black
        ]
        let nonBoldAttribute = [
            NSAttributedString.Key.font: UIFont.systemFont(ofSize: fontSize),
        ]
        let attrStr = NSMutableAttributedString(string: string, attributes: attrs)
        if let range = nonBoldRange {
            attrStr.setAttributes(nonBoldAttribute, range: range)
        }
        return attrStr
    }
    
    public static var isiPadDevice: Bool {
        
        let device = Device.current
        
        if device.isPad {
            return true
        }
        switch device {
        case .simulator(.iPad2), .simulator(.iPad3), .simulator(.iPad4), .simulator(.iPad5), .simulator(.iPadAir), .simulator(.iPadAir2), .simulator(.iPadMini), .simulator(.iPadMini2), .simulator(.iPadMini3), .simulator(.iPadMini4), .simulator(.iPadPro9Inch), .simulator(.iPadPro10Inch), .simulator(.iPadPro12Inch), .simulator(.iPadPro12Inch2), .iPadAir, .iPad5, .iPad4, .iPad3, .iPad2, .iPadAir, .iPadAir2, .iPadMini, .iPadMini2, .iPadMini3, .iPadMini4:
            return true
            
        default:
            return false
        }
    }
    
    public static var isiPhone5 : Bool {
        
        let device = Device.current
        
        switch device {
            
        case .simulator(.iPhone4), .simulator(.iPhone4s), .simulator(.iPhone5), .simulator(.iPhone5s), . simulator(.iPhone5c), .simulator(.iPhoneSE):
            return true
            
        case .iPhone4, .iPhone4s, .iPhone5, .iPhone5s, .iPhone5c, .iPhoneSE:
            return true
            
        default:
            return false
        }
    }
    
    public static var isIphone6 : Bool {
        let device = Device.current
        switch device {
        case .iPhone6 , .simulator(.iPhone6), .iPhone6s , .simulator(.iPhone6s) , .iPhone7, .simulator(.iPhone7), .iPhone8, .simulator(.iPhone8):
            return true
        default:
            return false
        }
    }
    
    public static var isIphonePlus : Bool {
        let device = Device.current
        switch device {
        case .iPhone6Plus, .simulator(.iPhone6Plus)  ,.iPhone7Plus, .simulator(.iPhone7Plus),.iPhone8Plus, .simulator(.iPhone8Plus):
            return true
        default:
            return false
        }
    }
    
    public static var isIphoneX : Bool {
        
        let device = Device.current
        
        switch device {
        case .iPhoneX, .simulator(.iPhoneX) :
            return true
        default:
            return false
        }
    }
    
    public static var isIphoneXR : Bool {
        
        let device = Device.current
        
        switch device {
        case .iPhoneX, .simulator(.iPhoneX) :
            return true
        default:
            return false
        }
    }
    
    public static var isSimulator: Bool {
        
        let device = Device.current
        
        if device.isSimulator {
            return true
        }
        else {
            return false
        }
    }
    
    
    static func setFontSize (size : Int) -> UIFont {
        let device = Device.current
        
        switch device {
        case .iPad2, .iPad3, .iPad4 , .iPad5 , .iPadAir, .iPadAir2, .iPadMini, .iPadMini2, .iPadMini3, .iPadMini4, .iPadPro9Inch, .iPadPro10Inch, .iPadPro12Inch, .iPadPro12Inch2:
            return UIFont(name: "System-Thin", size: CGFloat(size + 2))!
        case .iPhone4, .iPhone4s , .iPhone5, .iPhone5c, .iPhone5s:
            return UIFont (name: "System-Thin", size: CGFloat(size - 2))!
        default:
            return UIFont (name: "System-Thin", size: CGFloat(size))!
        }
    }
}
