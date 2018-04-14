//
//  RegisterViewController.swift
//  Zalo_ios
//
//  Created by Mac Pro on 4/14/18.
//  Copyright © 2018 Mac Pro. All rights reserved.
//

import UIKit

protocol RegisterView {

    func onRegisterSuccess(account: Account)
    func onRegisterFail(err: String)
}

class RegisterViewController: UIViewController, RegisterView {

    let registerEmbedSegue = "RegisterEmbedSegue"
    var presenter: RegsiterPresenter?
    var registerTable: RegisterTableViewController?

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpRegister()
        // Do any additional setup after loading the view.
    }

    func onRegisterSuccess(account: Account) {

    }

    func onRegisterFail(err: String) {

    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == registerEmbedSegue {
            registerTable = segue.destination as? RegisterTableViewController
        }
    }

    func setUpRegister() {
        presenter = RegisterPresenterImpl(view: self)
    }

}
