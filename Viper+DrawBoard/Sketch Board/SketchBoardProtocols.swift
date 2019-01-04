//
//  SketchBoardProtocols.swift
//  Viper+DrawBoard
//
//  Created by Alberto Huerdo on 1/4/19.
//  Copyright © 2019 huerdo. All rights reserved.
//

import UIKit

// Presenter -> View
protocol SketchBoardViewProtocol: class {
    func displaySketchBoard(with sketch: SketchViewModel?)
}

//View -> Presenter
protocol SketchBoardPresenterProtocol {
    var interactor: SketchBoardInputInteractorProtocol? {get set}
    var view: SketchBoardViewProtocol? {get set}
    var wireFrame: SketchBoardWireFrameProtocol? {get set}
    
    func viewDidLoad()
    func saveTapped(for sketch: Sketch)
}

//Presenter -> Interactor
protocol SketchBoardInputInteractorProtocol {
    var presenter: SketchBoardOutputInteractorProtocol? {get set}
    
    func save(_ sketch: Sketch)
}

//Interactor -> Presenter
protocol SketchBoardOutputInteractorProtocol: class {
    func didSave(sketch: Sketch)
}

//Presenter -> WireFrame
protocol SketchBoardWireFrameProtocol {
    static func createSketchBoardModule() -> UIViewController
    func closeSketchBoard(_ view: SketchBoardView)
}
