//
//  SketchBoardPresenter.swift
//  Viper+DrawBoard
//
//  Created by Alberto Huerdo on 1/4/19.
//  Copyright © 2019 huerdo. All rights reserved.
//

import Foundation

class SketchBoardPresenter {
    weak var view: SketchBoardViewProtocol?
    var interactor: SketchBoardInputInteractorProtocol?
    var wireFrame: SketchBoardWireFrameProtocol?
}


extension SketchBoardPresenter: SketchBoardPresenterProtocol {
    
    func viewDidLoad() {
        view?.displaySketchBoard(with: nil)
    }
    
    func saveTapped(for sketch: Sketch) {
        print("save tapped")
    }
    
}


extension SketchBoardPresenter: SketchBoardOutputInteractorProtocol {
    
    func didSave(sketch: Sketch) {
        wireFrame?.closeSketchBoard(view as! SketchBoardView)
    }
    
    
}
