//
//  SketchListInteractor.swift
//  Viper+DrawBoard
//
//  Created by Alberto Huerdo on 1/3/19.
//  Copyright © 2019 huerdo. All rights reserved.
//

import Foundation

class SketchListInteractor: SketchListInputInteractorProtocol {
    
    weak var presenter: SketchListOutputInteractorProtocol?
    
    func getSketchList() {
        let sketches = [
            Sketch(id: "1", color: "a"),
            Sketch(id: "2", color: "b"),
            Sketch(id: "3", color: "c"),
            Sketch(id: "4", color: "d")
        ]
        presenter?.sketchListDidFetch(sketchList: sketches)
    }
    
    
    
    
}
