//
//  SocketManager.swift
//  Zalo_ios
//
//  Created by Mac Pro on 4/8/18.
//  Copyright © 2018 Mac Pro. All rights reserved.
//

import Foundation
import SocketIO

class SocketCore {

    static let localHost = "http://localhost:2018"
    static var socketManager: SocketManager?
    static var socketClient: SocketIOClient?

    init() {
        SocketCore.socketManager = SocketManager(socketURL: URL.init(string: SocketCore.localHost)!,
                                      config: [.log(true), .compress])
        SocketCore.socketClient = SocketCore.socketManager?.defaultSocket
        SocketCore.socketClient?.connect()
    }

}
