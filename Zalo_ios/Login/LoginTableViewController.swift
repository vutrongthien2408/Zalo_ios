//
//  LoginTableViewController.swift
//  Zalo_ios
//
//  Created by Mac Pro on 4/8/18.
//  Copyright © 2018 Mac Pro. All rights reserved.
//

import UIKit

class LoginTableViewController: UITableViewController {

    @IBOutlet weak var tfUserName: HoshiTextField!
    @IBOutlet weak var tfPassword: HoshiTextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func getLoginData() -> Account? {
        if let name = tfPassword.text, let pass = tfPassword.text,
            !name.isEmpty, !pass.isEmpty {
            let account = Account()
            account.username = name
            account.password = pass
            return account
        }
        return nil
    }

}
