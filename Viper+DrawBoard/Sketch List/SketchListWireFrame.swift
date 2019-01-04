//
//  SketchListWireFrame.swift
//  Viper+DrawBoard
//
//  Created by Alberto Huerdo on 1/3/19.
//  Copyright © 2019 huerdo. All rights reserved.
//

import UIKit

class SketchListWireFrame: SketchListWireFrameProtocol {
    
    static func createSketchListModule() -> UIViewController {
        
        var presenter: SketchListPresenterProtocol & SketchListOutputInteractorProtocol = SketchListPresenter()
        var interactor: SketchListInputInteractorProtocol = SketchListInteractor()
        let wireFrame: SketchListWireFrameProtocol = SketchListWireFrame()
        let view = SketchListView()
        
        view.presenter = presenter
        presenter.view = view
        presenter.wireFrame = wireFrame
        presenter.interactor = interactor
        interactor.presenter = presenter
        
        let navigationController = UINavigationController(rootViewController: view)
        return navigationController
    }
    
    func pushToSketchDetail(_ sketch: Sketch, from view: UIViewController) {
        fatalError("pushToSketchDetail")
    }
    
    func pushToNewSketch(from view: UIViewController) {
        let sketchBoard = SketchBoardWireFrame.createSketchBoardModule()
        view.navigationController?.pushViewController(sketchBoard, animated: true)
    }
    
}
