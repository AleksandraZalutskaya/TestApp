//
//  ListOfTwenty.swift
//  xibFile
//
//  Created by Alexandra on 29.11.2020.
//

import UIKit

class ListOfTwenty: UIViewController {

    let tableView = UITableView()

    var listToDisplay = [
        "1. TikToc",
        "2. Viber",
        "3. Youtube",
        "4. Telegram",
        "5. Shortcut Run",
        "6. Instagram",
        "7. VK",
        "8. Yandex Go",
        "9. Roof Rails",
        "10. Rush Hour",
        "11. Among Us",
        "12. Wildberries",
        "13. Zoom",
        "14. WhatsApp",
        "15. CoinKeeper",
        "16. Pinterest",
        "17. Zenly",
        "18. AliExpress",
        "19. Kufar",
        "20. Кошелек ЮMoney"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemIndigo
        self.navigationItem.title = "Top Free Games"

        setUpTable()
        view.addSubview(addTextField)

        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Back", style: .plain, target: self, action: #selector(dismissBut))
    }

    func setUpTable() {
        view.addSubview(tableView)

        setTableViewDeleg()
        tableView.rowHeight = 100
        tableView.allScreenConstr(to: view)

        tableView.register(ArrayToUSe.self, forCellReuseIdentifier: "cell")
    }

    func setTableViewDeleg() {
        tableView.delegate = self
        tableView.dataSource = self
    }

    let addTextField: UITextField = {
       let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.placeholder = "Edit cell"
        return tf
    }()

    @objc func dismissBut() {
        dismiss(animated: true, completion: nil)
    }

}

extension ListOfTwenty: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listToDisplay.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = listToDisplay [indexPath.row]

        return cell
    }

}
