//
//  RequestHandler.swift
//  Caronz
//
//  Created by maxus on 3/8/21.
//

import Foundation
import Alamofire

class RequestHandler {
    static let sharedInstance = RequestHandler()
    
    class func loginUser(parameter: NSDictionary, success: @escaping(Any?)-> Void, failure: @escaping(NetworkError)-> Void) {
        let url = Constants.URL.login
        
        NetworkHandler.postRequest(url: url, parameters: parameter as? Parameters, isAuth: false, success: { (successResponse) in
            let dictionary = successResponse as! [String: Any]
            if let userData = dictionary["user"] as? [String:Any] {
                let accessToken = userData["access_token"] as! String
                UserDefaults.standard.set(accessToken, forKey: "access_token")
                let data = NSKeyedArchiver.archivedData(withRootObject: userData)
                UserDefaults.standard.set(data, forKey: "userAuthData")
                UserDefaults.standard.synchronize()
            }
            
            success(successResponse)
        }) { (error) in
                        
            failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
        }
    }

    class func registerUser(parameter: NSDictionary, success: @escaping(Any?)-> Void, failure: @escaping(NetworkError)-> Void) {
        let url = Constants.URL.register
        
        NetworkHandler.postRequest(url: url, parameters: parameter as? Parameters, isAuth:false, success: { (successResponse) in
            let dictionary = successResponse as! [String: Any]
            if let userData = dictionary["data"] as? [String:Any] {
                let accessToken = userData["access_token"] as! String
                UserDefaults.standard.set(accessToken, forKey: "access_token")
                let data = NSKeyedArchiver.archivedData(withRootObject: userData)
                UserDefaults.standard.set(data, forKey: "userAuthData")
                UserDefaults.standard.synchronize()
            }
            success(successResponse)
        }) { (error) in
                        
            failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
        }
    }

    class func forgotPassword(parameter: NSDictionary, success: @escaping(Any?)-> Void, failure: @escaping(NetworkError)-> Void) {
        let url = Constants.URL.FORGOT_PASSWORD
        
        NetworkHandler.postRequest(url: url, parameters: parameter as? Parameters, isAuth:false, success: { (successResponse) in
            
            success(successResponse)
        }) { (error) in
                        
            failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
        }
    }

    class func resetPassword(parameter: NSDictionary, success: @escaping(Any?)-> Void, failure: @escaping(NetworkError)-> Void) {
        let url = Constants.URL.RESET_PASSWORD
        
        NetworkHandler.postRequest(url: url, parameters: parameter as? Parameters, isAuth:false, success: { (successResponse) in
            
            success(successResponse)
        }) { (error) in
                        
            failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
        }
    }

    class func changePassword(parameter: NSDictionary, success: @escaping(Any?)-> Void, failure: @escaping(NetworkError)-> Void) {
        let url = Constants.URL.CHANGE_PASSWORD
        
        NetworkHandler.postRequest(url: url, parameters: parameter as? Parameters, isAuth:true, success: { (successResponse) in
            
            success(successResponse)
        }) { (error) in
                        
            failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
        }
    }

    class func getProfile(parameter: NSDictionary, success: @escaping(Any?)-> Void, failure: @escaping(NetworkError)-> Void) {
        let url = Constants.URL.UserProfile
        
        NetworkHandler.getRequest(url: url, parameters: parameter as? Parameters, isAuth:true, success: { (successResponse) in
            
            success(successResponse)
        }) { (error) in
                        
            failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
        }
    }

    class func profileUpdate(parameter: NSDictionary, success: @escaping(Any?)-> Void, failure: @escaping(NetworkError)-> Void) {
        let url = Constants.URL.UseProfileUpdate
        
        NetworkHandler.postRequest(url: url, parameters: parameter as? Parameters, isAuth:true, success: { (successResponse) in
            let dictionary = successResponse as! [String: Any]
            if let userData = dictionary["user"] as? [String:Any] {
                
                let data = NSKeyedArchiver.archivedData(withRootObject: userData)
                UserDefaults.standard.set(data, forKey: "userAuthData")
                UserDefaults.standard.synchronize()
            }
            
            success(successResponse)
        }) { (error) in
                        
            failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
        }
    }
    
    class func uploadProfileImage(parameter: NSDictionary, success: @escaping(Any?)-> Void, failure: @escaping(NetworkError)-> Void) {
        let url = Constants.URL.UserProfileImage
        
        NetworkHandler.postRequest(url: url, parameters: parameter as? Parameters, isAuth:true, success: { (successResponse) in
            
            success(successResponse)
        }) { (error) in
                        
            failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
        }
    }

    class func getCategories(parameter: NSDictionary, success: @escaping(Any?)-> Void, failure: @escaping(NetworkError)-> Void) {
        let url = Constants.URL.GET_CATEGORIES
        
        NetworkHandler.getRequest(url: url, parameters: parameter as? Parameters, isAuth:false, success: { (successResponse) in
            success(successResponse)
        }) { (error) in
                        
            failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
        }
    }

    class func searchCars(parameter: NSDictionary, success: @escaping(Any?)-> Void, failure: @escaping(NetworkError)-> Void) {
        let url = Constants.URL.SEARCH_CARS
        
        NetworkHandler.getRequest(url: url, parameters: parameter as? Parameters, isAuth:false, success: { (successResponse) in
            success(successResponse)
        }) { (error) in
                        
            failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
        }
    }

    class func searchDrivers(parameter: NSDictionary, success: @escaping(Any?)-> Void, failure: @escaping(NetworkError)-> Void) {
        let url = Constants.URL.SEARCH_DRIVERS
        
        NetworkHandler.getRequest(url: url, parameters: parameter as? Parameters, isAuth:false, success: { (successResponse) in
            
            success(successResponse)
        }) { (error) in
                        
            failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
        }
    }
    
    class func getCarDetail(parameter: NSDictionary, success: @escaping(Any?)-> Void, failure: @escaping(NetworkError)-> Void) {
        let url = Constants.URL.GET_CAR_DETAIL
        
        NetworkHandler.getRequest(url: url, parameters: parameter as? Parameters, isAuth:false, success: { (successResponse) in
            success(successResponse)
        }) { (error) in
                        
            failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
        }
    }

    class func postCar(parameter: NSDictionary, success: @escaping(Any?)-> Void, failure: @escaping(NetworkError)-> Void) {
        let url = Constants.URL.POST_CAR
        
        NetworkHandler.postRequest(url: url, parameters: parameter as? Parameters, isAuth:true, success: { (successResponse) in
            
            success(successResponse)
        }) { (error) in
                        
            failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
        }
    }
    
    class func postCarImage(parameter: NSDictionary, success: @escaping(Any?)-> Void, failure: @escaping(NetworkError)-> Void) {
        let url = Constants.URL.POST_CAR_IMAGE
        
        NetworkHandler.postRequest(url: url, parameters: parameter as? Parameters, isAuth:true, success: { (successResponse) in
            
            success(successResponse)
        }) { (error) in
                    
            failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
        }
    }

    class func deleteCarImage(parameter: NSDictionary, success: @escaping(Any?)-> Void, failure: @escaping(NetworkError)-> Void) {
        let url = Constants.URL.DELETE_CAR_IMAGE
        
        NetworkHandler.postRequest(url: url, parameters: parameter as? Parameters, isAuth:true, success: { (successResponse) in
           
            success(successResponse)
        }) { (error) in
                        
            failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
        }
    }
    
    class func deleteCar(parameter: NSDictionary, success: @escaping(Any?)-> Void, failure: @escaping(NetworkError)-> Void) {
        let url = Constants.URL.DELETE_CAR
        
        NetworkHandler.postRequest(url: url, parameters: parameter as? Parameters, isAuth:true, success: { (successResponse) in
           
            success(successResponse)
        }) { (error) in
                        
            failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
        }
    }

    class func updateCar(parameter: NSDictionary, success: @escaping(Any?)-> Void, failure: @escaping(NetworkError)-> Void) {
        let url = Constants.URL.UPDATE_CAR
        
        NetworkHandler.postRequest(url: url, parameters: parameter as? Parameters, isAuth:true, success: { (successResponse) in
            
            success(successResponse)
        }) { (error) in
                        
            failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
        }
    }

    class func activateCar(parameter: NSDictionary, success: @escaping(Any?)-> Void, failure: @escaping(NetworkError)-> Void) {
        let url = Constants.URL.ACTIVATE_CAR
        
        NetworkHandler.postRequest(url: url, parameters: parameter as? Parameters, isAuth:true, success: { (successResponse) in
           
            success(successResponse)
        }) { (error) in
                        
            failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
        }
    }

    class func paymentInvoice(parameter: NSDictionary, success: @escaping(Any?)-> Void, failure: @escaping(NetworkError)-> Void) {
        let url = Constants.URL.ACTIVATE_CAR
        
        NetworkHandler.postRequest(url: url, parameters: parameter as? Parameters, isAuth:true, success: { (successResponse) in
            
            success(successResponse)
        }) { (error) in
                        
            failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
        }
    }

    class func requestBuy(parameter: NSDictionary, success: @escaping(Any?)-> Void, failure: @escaping(NetworkError)-> Void) {
        let url = Constants.URL.REQUEST_BUY
        
        NetworkHandler.postRequest(url: url, parameters: parameter as? Parameters, isAuth:true, success: { (successResponse) in
            
            success(successResponse)
        }) { (error) in
                        
            failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
        }
    }

    class func confirmBuy(parameter: NSDictionary, success: @escaping(Any?)-> Void, failure: @escaping(NetworkError)-> Void) {
        let url = Constants.URL.CONFIRM_BUY
        
        NetworkHandler.postRequest(url: url, parameters: parameter as? Parameters, isAuth:true, success: { (successResponse) in
            
            success(successResponse)
        }) { (error) in
                        
            failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
        }
    }

    class func completeBuy(parameter: NSDictionary, success: @escaping(Any?)-> Void, failure: @escaping(NetworkError)-> Void) {
        let url = Constants.URL.COMPLETE_BUY
        
        NetworkHandler.postRequest(url: url, parameters: parameter as? Parameters, isAuth:true, success: { (successResponse) in
            
            success(successResponse)
        }) { (error) in
                        
            failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
        }
    }

    class func cancelBuy(parameter: NSDictionary, success: @escaping(Any?)-> Void, failure: @escaping(NetworkError)-> Void) {
        let url = Constants.URL.CANCEL_BUY
        
        NetworkHandler.postRequest(url: url, parameters: parameter as? Parameters, isAuth:true, success: { (successResponse) in
            
            success(successResponse)
        }) { (error) in
                        
            failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
        }
    }
    
    class func requestBooking(parameter: NSDictionary, success: @escaping(Any?)-> Void, failure: @escaping(NetworkError)-> Void) {
        let url = Constants.URL.REQUEST_BOOKING
        
        NetworkHandler.postRequest(url: url, parameters: parameter as? Parameters, isAuth:true, success: { (successResponse) in
            
            success(successResponse)
        }) { (error) in
                        
            failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
        }
    }
    
    class func getBookingList(parameter: NSDictionary, success: @escaping(Any?)-> Void, failure: @escaping(NetworkError)-> Void) {
        let url = Constants.URL.GET_BOOKING_LIST
        
        NetworkHandler.getRequest(url: url, parameters: parameter as? Parameters, isAuth:true, success: { (successResponse) in
            
            success(successResponse)
        }) { (error) in
                        
            failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
        }
    }

    class func confirmBooking(parameter: NSDictionary, success: @escaping(Any?)-> Void, failure: @escaping(NetworkError)-> Void) {
        let url = Constants.URL.CONFIRM_BOOKING
        
        NetworkHandler.postRequest(url: url, parameters: parameter as? Parameters, isAuth:true, success: { (successResponse) in
            
            success(successResponse)
        }) { (error) in
                        
            failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
        }
    }
    
    class func updateBooking(parameter: NSDictionary, success: @escaping(Any?)-> Void, failure: @escaping(NetworkError)-> Void) {
        let url = Constants.URL.UPDATE_BOOKING
        
        NetworkHandler.postRequest(url: url, parameters: parameter as? Parameters, isAuth:true, success: { (successResponse) in
            
            success(successResponse)
        }) { (error) in
                        
            failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
        }
    }
    
    class func declineBooking(parameter: NSDictionary, success: @escaping(Any?)-> Void, failure: @escaping(NetworkError)-> Void) {
        let url = Constants.URL.DECLINE_BOOKING
        
        NetworkHandler.postRequest(url: url, parameters: parameter as? Parameters, isAuth:true, success: { (successResponse) in
            
            success(successResponse)
        }) { (error) in
                        
            failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
        }
    }

    class func completeBooking(parameter: NSDictionary, success: @escaping(Any?)-> Void, failure: @escaping(NetworkError)-> Void) {
        let url = Constants.URL.COMPLETE_BOOKING
        
        NetworkHandler.postRequest(url: url, parameters: parameter as? Parameters, isAuth:true, success: { (successResponse) in
            
            success(successResponse)
        }) { (error) in
                        
            failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
        }
    }
    
    class func cancelBookingInfo(parameter: NSDictionary, success: @escaping(Any?)-> Void, failure: @escaping(NetworkError)-> Void) {
        let url = Constants.URL.GET_CANCEL_BOOKING_INFO
        
        NetworkHandler.postRequest(url: url, parameters: parameter as? Parameters, isAuth:true, success: { (successResponse) in
            
            success(successResponse)
        }) { (error) in
                        
            failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
        }
    }

    class func cancelBooking(parameter: NSDictionary, success: @escaping(Any?)-> Void, failure: @escaping(NetworkError)-> Void) {
        let url = Constants.URL.CANCEL_BOOKING
        
        NetworkHandler.postRequest(url: url, parameters: parameter as? Parameters, isAuth:true, success: { (successResponse) in
            
            success(successResponse)
        }) { (error) in
                        
            failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
        }
    }
    
    class func requestHire(parameter: NSDictionary, success: @escaping(Any?)-> Void, failure: @escaping(NetworkError)-> Void) {
        let url = Constants.URL.REQUEST_HIRE
        
        NetworkHandler.postRequest(url: url, parameters: parameter as? Parameters, isAuth:true, success: { (successResponse) in
            
            success(successResponse)
        }) { (error) in
                        
            failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
        }
    }
    
    class func getHireList(parameter: NSDictionary, success: @escaping(Any?)-> Void, failure: @escaping(NetworkError)-> Void) {
        let url = Constants.URL.GET_HIRE_LIST
        
        NetworkHandler.getRequest(url: url, parameters: parameter as? Parameters, isAuth:true, success: { (successResponse) in
            
            success(successResponse)
        }) { (error) in
                        
            failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
        }
    }

    class func confirmHire(parameter: NSDictionary, success: @escaping(Any?)-> Void, failure: @escaping(NetworkError)-> Void) {
        let url = Constants.URL.CONFIRM_HIRE
        
        NetworkHandler.postRequest(url: url, parameters: parameter as? Parameters, isAuth:true, success: { (successResponse) in
            
            success(successResponse)
        }) { (error) in
                        
            failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
        }
    }
    
    class func updateHire(parameter: NSDictionary, success: @escaping(Any?)-> Void, failure: @escaping(NetworkError)-> Void) {
        let url = Constants.URL.UPDATE_HIRE
        
        NetworkHandler.postRequest(url: url, parameters: parameter as? Parameters, isAuth:true, success: { (successResponse) in
            
            success(successResponse)
        }) { (error) in
                        
            failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
        }
    }
    
    class func declineHire(parameter: NSDictionary, success: @escaping(Any?)-> Void, failure: @escaping(NetworkError)-> Void) {
        let url = Constants.URL.DECLINE_HIRE
        
        NetworkHandler.postRequest(url: url, parameters: parameter as? Parameters, isAuth:true, success: { (successResponse) in
            
            success(successResponse)
        }) { (error) in
                        
            failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
        }
    }
    
    class func deleteHire(parameter: NSDictionary, success: @escaping(Any?)-> Void, failure: @escaping(NetworkError)-> Void) {
        let url = Constants.URL.DELETE_HIRE
        
        NetworkHandler.postRequest(url: url, parameters: parameter as? Parameters, isAuth:true, success: { (successResponse) in
            
            success(successResponse)
        }) { (error) in
                        
            failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
        }
    }

    class func completeHire(parameter: NSDictionary, success: @escaping(Any?)-> Void, failure: @escaping(NetworkError)-> Void) {
        let url = Constants.URL.COMPLETE_HIRE
        
        NetworkHandler.postRequest(url: url, parameters: parameter as? Parameters, isAuth:true, success: { (successResponse) in
            
            success(successResponse)
        }) { (error) in
                        
            failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
        }
    }
    
    class func cancelHireInfo(parameter: NSDictionary, success: @escaping(Any?)-> Void, failure: @escaping(NetworkError)-> Void) {
        let url = Constants.URL.GET_CANCEL_HIRE_INFO
        
        NetworkHandler.postRequest(url: url, parameters: parameter as? Parameters, isAuth:true, success: { (successResponse) in
            
            success(successResponse)
        }) { (error) in
                        
            failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
        }
    }

    class func cancelHire(parameter: NSDictionary, success: @escaping(Any?)-> Void, failure: @escaping(NetworkError)-> Void) {
        let url = Constants.URL.CANCEL_HIRE
        
        NetworkHandler.postRequest(url: url, parameters: parameter as? Parameters, isAuth:true, success: { (successResponse) in
            
            success(successResponse)
        }) { (error) in
                        
            failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
        }
    }

    class func getSellerCarList(parameter: NSDictionary, success: @escaping(Any?)-> Void, failure: @escaping(NetworkError)-> Void) {
        let url = Constants.URL.GET_SELLER_CAR_LIST
        
        NetworkHandler.getRequest(url: url, parameters: parameter as? Parameters, isAuth:true, success: { (successResponse) in
            
            success(successResponse)
        }) { (error) in
                        
            failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
        }
    }

    class func getSellerAccount(parameter: NSDictionary, success: @escaping(Any?)-> Void, failure: @escaping(NetworkError)-> Void) {
        let url = Constants.URL.GET_SELLER_ACCOUNT
        
        NetworkHandler.getRequest(url: url, parameters: parameter as? Parameters, isAuth:true, success: { (successResponse) in
            
            success(successResponse)
        }) { (error) in
                        
            failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
        }
    }

    class func cashout(parameter: NSDictionary, success: @escaping(Any?)-> Void, failure: @escaping(NetworkError)-> Void) {
        let url = Constants.URL.REQUEST_CASHOUT
        
        NetworkHandler.postRequest(url: url, parameters: parameter as? Parameters, isAuth:true, success: { (successResponse) in
            
            success(successResponse)
        }) { (error) in
                        
            failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
        }
    }

    class func getCashoutHistory(parameter: NSDictionary, success: @escaping(Any?)-> Void, failure: @escaping(NetworkError)-> Void) {
        let url = Constants.URL.GET_CASHOUT_HISTORY
        
        NetworkHandler.getRequest(url: url, parameters: parameter as? Parameters, isAuth:true, success: { (successResponse) in
            
            success(successResponse)
        }) { (error) in
                        
            failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
        }
    }

    class func requestChat(parameter: NSDictionary, success: @escaping(Any?)-> Void, failure: @escaping(NetworkError)-> Void) {
        let url = Constants.URL.REQUEST_CHAT
        
        NetworkHandler.postRequest(url: url, parameters: parameter as? Parameters, isAuth:true, success: { (successResponse) in
            
            success(successResponse)
        }) { (error) in
                        
            failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
        }
    }

    class func sendMessage(parameter: NSDictionary, success: @escaping(Any?)-> Void, failure: @escaping(NetworkError)-> Void) {
        let url = Constants.URL.SEND_MESSAGE
        
        NetworkHandler.postRequest(url: url, parameters: parameter as? Parameters, isAuth:true, success: { (successResponse) in
            success(successResponse)
        }) { (error) in
                        
            failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
        }
    }

    class func closeChat(parameter: NSDictionary, success: @escaping(Any?)-> Void, failure: @escaping(NetworkError)-> Void) {
        let url = Constants.URL.CLOSE_CHAT
        
        NetworkHandler.postRequest(url: url, parameters: parameter as? Parameters, isAuth:true, success: { (successResponse) in
            success(successResponse)
        }) { (error) in
                        
            failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
        }
    }

    class func getMsgInbox(parameter: NSDictionary, success: @escaping(Any?)-> Void, failure: @escaping(NetworkError)-> Void) {
        let url = Constants.URL.GET_MESSAGE_INBOX
        
        NetworkHandler.getRequest(url: url, parameters: parameter as? Parameters, isAuth:true, success: { (successResponse) in
            success(successResponse)
        }) { (error) in
                        
            failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
        }
    }

    class func deleteMsgInbox(parameter: NSDictionary, success: @escaping(Any?)-> Void, failure: @escaping(NetworkError)-> Void) {
        let url = Constants.URL.DELETE_MESSAGE_INBOX
        
        NetworkHandler.postRequest(url: url, parameters: parameter as? Parameters, isAuth:true, success: { (successResponse) in
            
            success(successResponse)
        }) { (error) in
                        
            failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
        }
    }

    class func handleCard(method: HTTPMethod, parameter: NSDictionary, success: @escaping(Any?)-> Void, failure: @escaping(NetworkError)-> Void) {
        let url = Constants.URL.REQUEST_CARD
        
        if method == .get {
            NetworkHandler.getRequest(url: url, parameters: parameter as? Parameters, isAuth:true, success: { (successResponse) in
                
                success(successResponse)
            }) { (error) in
                            
                failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
            }
        }
        if method == .post {
            NetworkHandler.postRequest(url: url, parameters: parameter as? Parameters, isAuth:true, success: { (successResponse) in
                
                success(successResponse)
            }) { (error) in
                            
                failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
            }
        }
        if method == .delete {
            
            NetworkHandler.deleteRequest(url: url + "/\(parameter["id"]!)", parameters: parameter as? Parameters, isAuth:true, success: { (successResponse) in
                
                success(successResponse)
            }) { (error) in
                            
                failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
            }
        }
    }
    
    class func stripeConnect(parameter: NSDictionary, success: @escaping(Any?)-> Void, failure: @escaping(NetworkError)-> Void) {
        let url = Constants.URL.REQUEST_STRIPE_CONNECT
        
        NetworkHandler.getRequest(url: url, parameters: parameter as? Parameters, isAuth:true, success: { (successResponse) in
            
            success(successResponse)
        }) { (error) in
                        
            failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
        }
    }
    
    class func getPlaidToken(parameter: NSDictionary, success: @escaping(Any?)-> Void, failure: @escaping(NetworkError)-> Void) {
        let url = Constants.URL.GET_PLAID_LINK_TOKEN
        
        NetworkHandler.getRequest(url: url, parameters: parameter as? Parameters, isAuth:true, success: { (successResponse) in
            
            success(successResponse)
        }) { (error) in
                        
            failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
        }
    }
    
    class func connectPlaidBank(parameter: NSDictionary, success: @escaping(Any?)-> Void, failure: @escaping(NetworkError)-> Void) {
        let url = Constants.URL.SEND_PLAID_CONNECT_BANK
        
        NetworkHandler.postRequest(url: url, parameters: parameter as? Parameters, isAuth:true, success: { (successResponse) in
            
            success(successResponse)
        }) { (error) in
                        
            failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
        }
    }
    
    class func getCoinList(parameter: NSDictionary, success: @escaping(Any?)-> Void, failure: @escaping(NetworkError)-> Void) {
        let url = Constants.URL.GET_COINS
        
        NetworkHandler.getRequest(url: url, parameters: parameter as? Parameters, isAuth:true, success: { (successResponse) in
            
            success(successResponse)
        }) { (error) in
                        
            failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
        }
    }
    

    class func coinDeposit(parameter: NSDictionary, success: @escaping(Any?)-> Void, failure: @escaping(NetworkError)-> Void) {
        let url = Constants.URL.COIN_DEPOSIT
        
        NetworkHandler.postRequest(url: url, parameters: parameter as? Parameters, isAuth:true, success: { (successResponse) in
            
            success(successResponse)
        }) { (error) in
                        
            failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
        }
    }
    

    class func getCoinDepositList(parameter: NSDictionary, success: @escaping(Any?)-> Void, failure: @escaping(NetworkError)-> Void) {
        let url = Constants.URL.COIN_DEPOSIT
        
        NetworkHandler.getRequest(url: url, parameters: parameter as? Parameters, isAuth:true, success: { (successResponse) in
            
            success(successResponse)
        }) { (error) in
                        
            failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
        }
    }
    
    class func deleteCoinDeposit(parameter: NSDictionary, success: @escaping(Any?)-> Void, failure: @escaping(NetworkError)-> Void) {
        let url = Constants.URL.DELETE_COIN_DEPOSIT
        
        NetworkHandler.postRequest(url: url, parameters: parameter as? Parameters, isAuth:true, success: { (successResponse) in
            
            success(successResponse)
        }) { (error) in
                        
            failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
        }
    }
    
    class func requestAvisReservation(parameter: NSDictionary, success: @escaping(Any?)-> Void, failure: @escaping(NetworkError)-> Void) {
        let url = Constants.URL.REQUEST_AVIS_RESERVATION
        
        NetworkHandler.postRequest(url: url, parameters: parameter as? Parameters, isAuth:true, success: { (successResponse) in
            
            success(successResponse)
        }) { (error) in
                        
            failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
        }
    }
    
    class func requestAvisLocations(parameter: NSDictionary, success: @escaping(Any?)-> Void, failure: @escaping(NetworkError)-> Void) {
        let url = Constants.URL.REQUEST_AVIS_LOCATIONS
        
        NetworkHandler.postRequest(url: url, parameters: parameter as? Parameters, isAuth:false, success: { (successResponse) in
            
            success(successResponse)
        }) { (error) in
                        
            failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
        }
    }
    
    class func searchAvisCars(parameter: NSDictionary, success: @escaping(Any?)-> Void, failure: @escaping(NetworkError)-> Void) {
        let url = Constants.URL.SEARCH_AVIS_CARS
        
        NetworkHandler.postRequest(url: url, parameters: parameter as? Parameters, isAuth:false, success: { (successResponse) in
            
            success(successResponse)
        }) { (error) in
                        
            failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
        }
    }
    
    class func requestAvisRate(parameter: NSDictionary, success: @escaping(Any?)-> Void, failure: @escaping(NetworkError)-> Void) {
        let url = Constants.URL.REQUEST_AVIS_RATE
        
        NetworkHandler.postRequest(url: url, parameters: parameter as? Parameters, isAuth:false, success: { (successResponse) in
            
            success(successResponse)
        }) { (error) in
                        
            failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
        }
    }
    
    class func getAvisReservations(parameter: NSDictionary, success: @escaping(Any?)-> Void, failure: @escaping(NetworkError)-> Void) {
        let url = Constants.URL.GET_AVIS_RESERVATIONS
        
        NetworkHandler.postRequest(url: url, parameters: parameter as? Parameters, isAuth:false, success: { (successResponse) in
            
            success(successResponse)
        }) { (error) in
                        
            failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
        }
    }
    
    class func getSupport(parameter: NSDictionary, success: @escaping(Any?)-> Void, failure: @escaping(NetworkError)-> Void) {
        let url = Constants.URL.HELP
        
        NetworkHandler.getRequest(url: url, parameters: parameter as? Parameters, isAuth:false, success: { (successResponse) in
            
            success(successResponse)
        }) { (error) in
                        
            failure(NetworkError(status: Constants.NetworkError.generic, message: error.message))
        }
    }
        
}
