//
//  IntroductionMessageRouter.swift
//  RaccoonWallet
//
//  Created by Taizo Kusuda on 2018/09/14.
//  Copyright © 2018年 T TECH, LIMITED LIABILITY CO. All rights reserved.
//

import Foundation
import UIKit

class IntroductionMessageRouter: IntroductionMessageWireframe {
    weak var viewController: UIViewController?
    
    static func assembleModule() -> UIViewController {
        let view = R.storyboard.introductionMessageStoryboard.introductionMessageView()!
        let presenter = IntroductionMessagePresenter()
        let interactor = IntroductionMessageInteractor()
        let router = IntroductionMessageRouter()
        
        view.presenter = presenter
        
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        
        interactor.output = presenter
        
        router.viewController = view
        return view
    }

    func presentCreateWallet() {
        viewController?.pushWithNavigation(WalletCreationTypeRouter.assembleModule())
    }
}

