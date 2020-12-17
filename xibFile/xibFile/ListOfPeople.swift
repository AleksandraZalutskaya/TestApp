//
//  ListOfPeople.swift
//  xibFile
//
//  Created by Alexandra on 05.12.2020.
//

import UIKit

class ListOfPeople: UIViewController {

    let tableViewOfPeople = UITableView()

    struct CellID {
        static let identifierID = "cellForPeople"
    }

    var list: [ImageStruct] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableViewOfPeople)
        tableViewOfPeople.rowHeight = 100
        tableViewOfPeople.allScreenConstr(to: view)
        list = fetchData()
        tableViewOfPeople.register(ImageViewCell.self, forCellReuseIdentifier: CellID.identifierID)
        self.navigationItem.title = "List of Friends"
        self.navigationController?.navigationBar.prefersLargeTitles = true

        setDeleg()
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Back", style: .plain, target: self, action: #selector(dismissBut))

        tableViewOfPeople.frame = self.view.frame
        tableViewOfPeople.separatorColor = .clear
    }

    @objc func dismissBut() {
        dismiss(animated: true, completion: nil)
    }

    func setDeleg() {
        tableViewOfPeople.delegate = self
        tableViewOfPeople.dataSource = self
    }
}

extension ListOfPeople: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableViewOfPeople.dequeueReusableCell(withIdentifier: CellID.identifierID) as! ImageViewCell
        let imageData = list[indexPath.row]
        cell.set(data: imageData)

        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let cell = tableViewOfPeople.cellForRow(at: indexPath)
//        if cell?.textLabel?.text == "Matt le Blanc" {
//            let friendClass = MattLeBlancVC()
//            let newVCMatt = UINavigationController(rootViewController: friendClass)
//            newVCMatt.pushViewController(friendClass, animated: true)
//        }

        tableViewOfPeople.deselectRow(at: indexPath, animated: true)

        let newVC = MattLeBlancVC()
        let presentVC = self.list[indexPath.row]
        newVC.setProfile(data: presentVC)
        newVC.view.backgroundColor = .cyan
        newVC.modalPresentationStyle = .fullScreen
        present(newVC, animated: true)
    }
}

extension ListOfPeople {
    func fetchData() -> [ImageStruct] {
        let friend1 = ImageStruct(image: ImageData.MattLeBlanc, title: "Matt le Blanc")
        let friend2 = ImageStruct(image: ImageData.LisaKudrow, title: "Lisa Kudrow")
        let friend3 = ImageStruct(image: ImageData.JenniferAniston, title: "Jennifer Aniston")
        let friend4 = ImageStruct(image: ImageData.CourteneyCox, title: "Courteney Cox")
        let friend5 = ImageStruct(image: ImageData.MatthewPerry, title: "Matthew Perry")
        let friend6 = ImageStruct(image: ImageData.DavidSchwimmer, title: "David Schwimmer")

        return [friend1, friend2, friend3, friend4, friend5, friend6]
    }
}
