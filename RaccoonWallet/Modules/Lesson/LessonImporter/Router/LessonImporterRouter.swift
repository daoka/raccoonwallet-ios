//
//  LessonImporterRouter.swift
//  RaccoonWallet
//
//  Created by Taizo Kusuda on 2018/08/23.
//  Copyright © 2018年 T TECH, LIMITED LIABILITY CO. All rights reserved.
//

import Foundation
import UIKit

class LessonImporterRouter: LessonImporterWireframe {
    weak var viewController: UIViewController?
    
    static func assembleModule() -> UIViewController {
        let view = R.storyboard.lessonImporterStoryboard.lessonImporterView()!
        let presenter = LessonImporterPresenter()
        let interactor = LessonImporterInteractor()
        let router = LessonImporterRouter()
        
        view.presenter = presenter
        
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        
        interactor.output = presenter
        
        router.viewController = view
        return view
    }

    func presentPinEnd() {
        viewController?.navigationController?.pushViewController(LessonPinEndRouter.assembleModule(.importer), animated: true)
    }

    func presentImporterEnd() {
        viewController?.navigationController?.pushViewController(LessonEndRouter.assembleModule(.importer), animated: true)
    }

}

