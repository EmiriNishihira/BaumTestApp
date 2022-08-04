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
        setNaviBackButton()
    }

    private func setButton() {
        menuView.generalDiagnosis.addTarget(self, action: #selector(tappedGeneralDiagnosis), for: .touchUpInside)
    }

    private func setNaviBackButton() {
        let backImage = UIImage(named: "backIcon")?.withRenderingMode(.alwaysOriginal)
        navigationItem.leftBarButtonItem = UIBarButtonItem.init(image: backImage, style: .plain, target: self, action: #selector(tappedBackButton))
    }

    @objc func tappedGeneralDiagnosis() {
        let generalVC = GeneralDiagnosisViewController()
        generalVC.modalPresentationStyle = .fullScreen
        self.present(generalVC, animated: true)
    }

    @objc func tappedBackButton() {
        self.navigationController?.popViewController(animated: true)
    }
}
