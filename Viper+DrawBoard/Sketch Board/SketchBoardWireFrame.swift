//
//  SketchBoardWireFrame.swift
//  Viper+DrawBoard
//
//  Created by Alberto Huerdo on 1/4/19.
//  Copyright © 2019 huerdo. All rights reserved.
//

import UIKit

class SketchBoardWireFrame: SketchBoardWireFrameProtocol {
    
    static func createSketchBoardModule() -> UIViewController {
        
        var presenter: SketchBoardPresenterProtocol & SketchBoardOutputInteractorProtocol = SketchBoardPresenter()
        var interactor: SketchBoardInputInteractorProtocol = SketchBoardInteractor()
        let wireFrame: SketchBoardWireFrameProtocol = SketchBoardWireFrame()
        let view = SketchBoardView()
        
        view.presenter = presenter
        presenter.view = view
        presenter.wireFrame = wireFrame
        presenter.interactor = interactor
        interactor.presenter = presenter
        
        return view
    }
    
    func closeSketchBoard(_ view: SketchBoardView) {
         view.navigationController?.popViewController(animated: true)
    }
}
