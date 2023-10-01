//
//  NoticeModel.swift
//  viper-architecture
//
//  Created by Jackson Matheus on 01/10/23.
//

import Foundation
import ObjectMapper


private let ID = "id"
private let TITLE = "id"
private let BRIEF = "id"
private let FILESOURCE = "id"


class NoticeModel: Mappable {
    internal var id: String?
    internal var title: String?
    internal var brief: String?
    internal var filesource: String?
    
    required init?(map:Map) {
            mapping(map: map)
        }
    
    
    func mapping(map:Map){
            id <- map[ID]
            title <- map[TITLE]
            brief <- map[BRIEF]
            filesource <- map[FILESOURCE]
        }
}
