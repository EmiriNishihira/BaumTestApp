//
//  StartView.swift
//  BaumTestApp
//
//  Created by nakamori on 2022/07/24.
//

import UIKit

class StartView: NibView {

    @IBOutlet weak var startButton: UIButton!

    override init(frame: CGRect) {
        super.init(frame: frame)
        setUp()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUp()
    }

    private func setUp() {
        startButton.layer.cornerRadius = 10
    }


}
