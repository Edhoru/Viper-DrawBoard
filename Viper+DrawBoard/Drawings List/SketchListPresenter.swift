//
//  SketchListPresenter.swift
//  Viper+DrawBoard
//
//  Created by Alberto Huerdo on 1/3/19.
//  Copyright © 2019 huerdo. All rights reserved.
//

import UIKit

class SketchListPresenter {
    weak var view: SketchListViewProtocol?
    var interactor: SketchListInputInteractorProtocol?
    var wireFrame: SketchListWireFrameProtocol?    
}


extension SketchListPresenter: SketchListPresenterProtocol {
    
    func viewDidLoad() {
        interactor?.getSketchList()
    }
    
    func showSketchSelection(_ sketch: Sketch, from view: UIViewController) {
        
    }
    
    
}


extension SketchListPresenter: SketchListOutputInteractorProtocol {
    
    func sketchListDidFetch(sketchList: [Sketch]) {
        let sketchViewModelList: [SketchViewModel] = sketchList.map({ SketchViewModel(id: $0.id) })
        view?.showSketchs(with: sketchViewModelList)
    }    
    
}
