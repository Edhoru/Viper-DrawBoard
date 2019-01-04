//
//  SketchBoardInteractor.swift
//  Viper+DrawBoard
//
//  Created by Alberto Huerdo on 1/4/19.
//  Copyright © 2019 huerdo. All rights reserved.
//

import Foundation

class SketchBoardInteractor: SketchBoardInputInteractorProtocol {
    
    weak var presenter: SketchBoardOutputInteractorProtocol?
    
    func save(_ sketch: Sketch) {
        print(sketch)
    }
    
    
    
}
