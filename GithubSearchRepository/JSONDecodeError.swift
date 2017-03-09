//
//  JSONDecodeError.swift
//  GithubSearchRepository
//
//  Created by Kei on 2017/03/10.
//
//

enum JSONDecodeError : Error {
    case invalidFormat(json: Any)
    case missingValue(key: String, actualValue: Any)
}
