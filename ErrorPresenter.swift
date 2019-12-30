//
//  ErrorPresenter.swift
//  ErrorPresenter
//
//  Created by Sisov on 14.12.2019.
//  Copyright © 2019 Sisov. All rights reserved.
//

import UIKit

struct ErrorPresenter {
    let error: Error
}

extension ErrorPresenter {
    func present(in viewController: UIViewController, animated: Bool,
                 completetion: PresenterCompletetion?) {
        let alert = allertController(error.localizedDescription)
        viewController.present(alert, animated: animated, completion: completetion)
    }
}

extension ErrorPresenter {
    typealias PresenterCompletetion = () -> Void
}

private extension ErrorPresenter {
    func allertController(_ msg: String) -> UIAlertController {
        let alert = UIAlertController(title: "Error", message: msg, preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(action)
        return alert
    }
}
