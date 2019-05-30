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
    let canvas: Canvas = {
        let canvas = Canvas()
        canvas.translatesAutoresizingMaskIntoConstraints = false
        canvas.backgroundColor = .white
        return canvas
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter?.viewDidLoad()
        
        navigationController?.interactivePopGestureRecognizer?.isEnabled = false
    }
    
}


extension SketchBoardView: SketchBoardViewProtocol {
    
    func displaySketchBoard(with sketch: SketchViewModel?) {
        view.backgroundColor = .black
        
        setupSubviews()
    }
    
    private func setupSubviews() {
        view.addSubview(canvas)
        
        canvas.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor).isActive = true
        canvas.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        canvas.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        canvas.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor).isActive = true
    }
    
}


