//
//  WalletCreationTypeRouter.swift
//  RaccoonWallet
//
//  Created by Taizo Kusuda on 2018/08/19.
//  Copyright © 2018年 T TECH, LIMITED LIABILITY CO. All rights reserved.
//

import Foundation
import UIKit

class WalletCreationTypeRouter: WalletCreationTypeWireframe {
    weak var viewController: UIViewController?

    static func assembleModule() -> UIViewController {
        let view = R.storyboard.walletCreationTypeStoryboard.walletCreationTypeView()!
        let presenter = WalletCreationTypePresenter()
        let interactor = WalletCreationTypeInteractor()
        let router = WalletCreationTypeRouter()

        view.presenter = presenter

        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router

        interactor.output = presenter

        router.viewController = view
        return view
    }

    func presentCreationNew() {
        viewController?.pushWithNavigation(WalletNewNameRouter.assembleModule())
    }

    func presentCreationImport() {
        viewController?.pushWithNavigation(WalletImportKeyRouter.assembleModule())
    }

}
