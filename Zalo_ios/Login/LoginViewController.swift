//
//  ViewController.swift
//  Zalo_ios
//
//  Created by Mac Pro on 4/8/18.
//  Copyright © 2018 Mac Pro. All rights reserved.
//

import UIKit
import SocketIO

class LoginViewController: UIViewController, LoginView {
    let loginEmbedSegue = "LoginEmbedSegue"
    var loginTableViewController: LoginTableViewController?
    var presenter: LoginPresenter?

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpLogin()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func setUpLogin() {
        presenter = LoginPresenterImpl(view: self)
    }
    
    func onLoginSuccess(account: Account) {
//        change screen
    }
    
    func onLoginFail(err: String) {
//        change screen
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == loginEmbedSegue {
            loginTableViewController = segue.destination as? LoginTableViewController
        }
    }
    
    @IBAction func LoginButtonTap(_ sender: Any) {
        let account = loginTableViewController?.getLoginData()
        guard let username = account?.username, let password = account?.password else {
            return
        }
        presenter?.checkLogin(username: username, password: password)
    }
    
}
