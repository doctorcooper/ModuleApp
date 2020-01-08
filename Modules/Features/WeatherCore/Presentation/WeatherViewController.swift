//
//  WeatherViewController.swift
//  ModuleApp
//
//  Created by Дмитрий Куприянов on 26.12.2019.
//  Copyright © 2019 Cooper. All rights reserved.
//

import UIKit
import SnapKit

class WeatherViewController: UIViewController {

    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Hello! I'm weather!"
        return label
    }()
    
    var viewModel: WeatherViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        makeConstraints()
        viewModel.getCurrentWeather()
    }
    
    private func setupUI() {
        view.addSubview(titleLabel)
        title = "Weather"
    }
    
    private func makeConstraints() {
        titleLabel.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
    }

}
