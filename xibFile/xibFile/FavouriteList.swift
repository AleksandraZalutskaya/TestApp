//
//  EmptyList.swift
//  xibFile
//
//  Created by Alexandra on 29.11.2020.
//

import UIKit

class FavouriteList: UIViewController {

    let viewTableNew = UITableView(frame: .zero, style: .insetGrouped)
    var dimentionalArray = [
        ["1", "2", "3", "4", "5"], ["6", "7", "8", "9", "10"]
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = "List of Favourites"
        addNewTable()

        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Back", style: .plain, target: self, action: #selector(dismissBut))
    }

    func addNewTable() {
        view.addSubview(viewTableNew)

        viewTableNew.allScreenConstr(to: view)
        viewTableNew.register(ArrayToUSe.self, forCellReuseIdentifier: "cellFav")
        viewTableDeleg()
    }

    func viewTableDeleg() {
        viewTableNew.delegate = self
        viewTableNew.dataSource = self
    }
    @objc func dismissBut() {
        dismiss(animated: true, completion: nil)
    }

}

extension FavouriteList: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dimentionalArray[section].count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellFav = tableView.dequeueReusableCell(withIdentifier: "cellFav", for: indexPath)
        let addTwoArrays = dimentionalArray [indexPath.section][indexPath.row]

        cellFav.backgroundColor = {
            if indexPath.section % 2 == 1 {
                return .systemPink
            } else {
                return .systemOrange
            }
        }()

        cellFav.textLabel?.text = addTwoArrays

        let selectedColor = UIView()
        selectedColor.backgroundColor = .systemBlue
        cellFav.selectedBackgroundView = selectedColor

        return cellFav
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return dimentionalArray.count
    }

    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let lableHeader = UILabel()
        lableHeader.text = "Separator"
        lableHeader.backgroundColor = .systemGray5
        lableHeader.layer.cornerRadius = 20

        return lableHeader
    }

}
