//
//  PasswordManager.swift
//  PasswordManager
//
//  Created by bartek on 16/11/2023.
//

import Foundation

public class PasswordManager {
    private var isAuthorized: Bool
    
    public init(key: String) {
        isAuthorized = Approved.keys.contains(key) ? true : false
    }
    public func readPassword() -> String? {
        isAuthorized ? "this is my password" : nil
    }
}

private struct Approved {
    static let keys = ["12345", "abcde"]
}
