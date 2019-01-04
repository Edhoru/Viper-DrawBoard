//
//  SketchListProtocols.swift
//  Viper+DrawBoard
//
//  Created by Alberto Huerdo on 1/3/19.
//  Copyright © 2019 huerdo. All rights reserved.
//

import UIKit

protocol SketchListViewProtocol: class {
    // Presenter -> View
    func showSketchs(with sketchs: [SketchViewModel])
}

protocol SketchListPresenterProtocol {
    //View -> Presenter
    var interactor: SketchListInputInteractorProtocol? {get set}
    var view: SketchListViewProtocol? {get set}
    var wireFrame: SketchListWireFrameProtocol? {get set}
    
    func viewDidLoad()
    func showSketchSelection(_ sketch: Sketch, from view: UIViewController)
}

protocol SketchListInputInteractorProtocol {
    //Presenter -> Interactor
    var presenter: SketchListOutputInteractorProtocol? {get set}
    
    func getSketchList()
}

protocol SketchListOutputInteractorProtocol: class {
    //Interactor -> Presenter
    func sketchListDidFetch(sketchList: [Sketch])
}

protocol SketchListWireFrameProtocol {
    //Presenter -> WireFrame
    func pushToSketchDetail(_ sketch: Sketch, from view: UIViewController)
    func pushToNewSketch(from view: UIViewController)
    static func createSketchListModule() -> UIViewController
}
