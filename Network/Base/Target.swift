//
//  Target.swift
//  MoviesTask
//
//  Created by Eissa on 9/24/20.
//  Copyright © 2020 Eissa. All rights reserved.
//

import Foundation
import Alamofire

enum HTTPMethods: String {
    case get = "GET"
    case post = "POST"
}

enum Task {
    case requestPlain // without parameters
    case requestParameters(parameters: [String: Any], encoding: ParameterEncoding)
}

protocol TargetType {
    var base: String { get }
    var path: String { get }
    var method: HTTPMethod { get }
    var task: Task { get }
    var headers: [String: String]? { get }
}
