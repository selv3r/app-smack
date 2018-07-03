//
//  MessageService.swift
//  Smack
//
//  Created by Hassan Ashraf on 7/3/18.
//  Copyright © 2018 h2m. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class MessageService {
    
    static let instance = MessageService()
    
    var channels = [Channel]()
    
    func findAllChannels(completion: @escaping CompletionHandler) {
        
        Alamofire.request(URL_GET_CHANNELS, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: AUTH_HEADER).responseJSON { (response) in
            
            if response.result.error == nil {
                guard let data = response.data else {return}
                do {
                    if let json = try JSON(data: data).array {
                        for item in json {
                            let name = item["name"].stringValue
                            let channelDescription = item["description"].stringValue
                            let id = item["_id"].stringValue
                            let channel = Channel(channelTitle: name, channelDescription: channelDescription, id: id)
                            self.channels.append(channel)
                        }
                    completion(true)
                    }
                
                } catch let error as NSError{
                    print(error)
                }
            } else {
                completion(false)
            }
            
        }
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
} //Class
