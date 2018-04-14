//
//  RegisterProtocol.swift
//  Zalo_ios
//
//  Created by Mac Pro on 4/14/18.
//  Copyright © 2018 Mac Pro. All rights reserved.
//

import Foundation

protocol RegsiterPresenter {
    func checkRegister(account: Account) -> Bool
}

class  RegisterPresenterImpl: RegsiterPresenter {
    
    var view: RegisterView?
    let accounts = Array<Account>()
    
    init(view: RegisterView) {
        self.view = view
    }
    
    func checkRegister(account: Account) -> Bool {
        for acc in accounts {
            if acc.username == account.username {
                view?.onRegisterSuccess(account: acc)
                return true
            }
        }
        view?.onRegisterFail(err: "Register fail")
        return false
    }
}
