//
//  NoticePresenter.swift
//  viper-architecture
//
//  Created by Jackson Matheus on 01/10/23.
//

import Foundation
import UIKit

class NoticePresenter: ViewToPresenterProtocol {
    var view: PresenterToViewProtocol?
    var interactor: PresenterToInteractorProtocol?
    var router: PresenterToRouterProtocol?
    
    func startFetchingNotice() {
        interactor?.fetchNotice()
    }
    
    func showMovieController(navigationController: UINavigationController) {
        router?.pushToMovieScreen(navigationConroller: navigationController)
    }
}


extension NoticePresenter: InteractorToPresenterProtocol {
    func noticeFetchedSuccess(noticeModelArray: Array<NoticeModel>) {
        view?.showNotice(noticeArray: noticeModelArray)
    }
    
    func noticeFetchFailed() {
        view?.showError()
    }
}
