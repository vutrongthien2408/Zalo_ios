//
//  LoginProtocol.swift
//  Zalo_ios
//
//  Created by Mac Pro on 4/13/18.
//  Copyright © 2018 Mac Pro. All rights reserved.
//

import Foundation

protocol LoginPresenter {
    func checkLogin(username: String, password: String) -> Bool
}

class LoginPresenterImpl: LoginPresenter {
    var loginView: LoginView?
    var accounts = Array<Account>()
    
    init(view: LoginView) {
        loginView = view
    }
    
    func checkLogin(username: String, password: String) -> Bool {
        for account in accounts {
            if let name = account.username,
                let pass = account.password,
                name == username, pass == password {
                loginView?.onLoginSuccess(account: account)
                return true
            }
        }
        loginView?.onLoginFail(err: "Login fail")
        return false
    }
}
