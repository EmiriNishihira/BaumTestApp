//
//  MenuViewController.swift
//  BaumTestApp
//
//  Created by nakamori on 2022/07/24.
//

import UIKit

class MenuViewController: UIViewController {

    @IBOutlet weak var menuView: MenuView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
    }

    private func setUp() {
        setButton()
    }

    private func setButton() {
        menuView.generalDiagnosis.addTarget(self, action: #selector(tappedGeneralDiagnosis), for: .touchUpInside)
    }

    @objc func tappedGeneralDiagnosis() {
        let generalVC = GeneralDiagnosisViewController()
        let naviVC = UINavigationController(rootViewController: generalVC)
        self.navigationController?.pushViewController(naviVC, animated: true)
    }

    private func setUpNavigationBar() {
        self.navigationController?.navigationBar
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .fastForward, target: self, action: #selector(tappedNavi))
    }

    @objc func tappedNavi() {
        let menuVC = MenuViewController()

    }

}
