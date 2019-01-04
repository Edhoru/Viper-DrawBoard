//
//  SketchListProtocols.swift
//  Viper+DrawBoard
//
//  Created by Alberto Huerdo on 1/3/19.
//  Copyright © 2019 huerdo. All rights reserved.
//

import UIKit

// Presenter -> View
protocol SketchListViewProtocol: class {
    func showSketchs(with sketchs: [SketchViewModel])
}

//View -> Presenter
protocol SketchListPresenterProtocol {
    var interactor: SketchListInputInteractorProtocol? {get set}
    var view: SketchListViewProtocol? {get set}
    var wireFrame: SketchListWireFrameProtocol? {get set}
    
    func viewDidLoad()
    func showSketchSelection(_ sketch: Sketch, from view: UIViewController)
    func showNewSketchView(from view: UIViewController)
}

//Presenter -> Interactor
protocol SketchListInputInteractorProtocol {
    var presenter: SketchListOutputInteractorProtocol? {get set}
    
    func getSketchList()
}

//Interactor -> Presenter
protocol SketchListOutputInteractorProtocol: class {
    func sketchListDidFetch(sketchList: [Sketch])
}

//Presenter -> WireFrame
protocol SketchListWireFrameProtocol {
    static func createSketchListModule() -> UIViewController
    func pushToSketchDetail(_ sketch: Sketch, from view: UIViewController)
    func pushToNewSketch(from view: UIViewController)
}
