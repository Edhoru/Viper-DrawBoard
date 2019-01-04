//
//  SketchBoardViewController.swift
//  Viper+DrawBoard
//
//  Created by Alberto Huerdo on 1/3/19.
//  Copyright © 2019 huerdo. All rights reserved.
//

import UIKit

class SketchBoardView: UIViewController {
    
    var presenter: SketchBoardPresenterProtocol?
    var sketch: SketchViewModel?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter?.viewDidLoad()
    }
    
}


extension SketchBoardView: SketchBoardViewProtocol {
    
    func displaySketchBoard(with sketch: SketchViewModel?) {
        view.backgroundColor = .white
    }
    
}

