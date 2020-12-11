//
//  CollectionView.swift
//  xibFile
//
//  Created by Alexandra on 10.12.2020.
//

import UIKit

class CollectionView: UIViewController {
    
    var collectionView: UICollectionView?
     var layoutOne: UICollectionViewFlowLayout = {    //уже есть запрограммированные проперти по layout
         let layoutOne = UICollectionViewFlowLayout()
         layoutOne.itemSize = CGSize(width: 50, height: 100)
         layoutOne.scrollDirection = .horizontal
         return layoutOne
     }()
     
     var layoutTwo: UICollectionViewFlowLayout = {
         let layoutTwo = UICollectionViewFlowLayout()
         layoutTwo.itemSize = CGSize(width: 100, height: 50)
         layoutTwo.scrollDirection = .vertical
         return layoutTwo
     }()
     
     let useID = "cell"
     
     override func loadView() {
         super.loadView()
         let collection = UICollectionView(frame: .zero, collectionViewLayout: layoutOne)  //чтобы вместо развертывания опционала выше
         collectionView = collection
         
        view.backgroundColor = .systemPink
        self.navigationController?.title = "Collection View Example"
         
         view.addSubview(collection)
         
         collection.register(UICollectionViewCell.self, forCellWithReuseIdentifier: useID)
         
         collection.dataSource = self
         collection.delegate = self
         collection.allScreenConstr(to: view)
         navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Back", style: .plain, target: self, action: #selector(dismissBut))
     }
     
     @objc func dismissBut() {
         dismiss(animated: true, completion: nil)
     }
     
     override func viewDidLoad() {
         super.viewDidLoad()
     }
 }

 extension CollectionView: UICollectionViewDataSource {
     func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
         50
     }
     
     func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
         let cell = collectionView.dequeueReusableCell(withReuseIdentifier: useID, for: indexPath)
         cell.backgroundColor = .systemGray
         
         return cell
     }
 }

 extension CollectionView: UICollectionViewDelegate {
     func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
         if indexPath.row % 2 == 0 {
             collectionView.setCollectionViewLayout(layoutOne, animated: true)
         }else {
             collectionView.setCollectionViewLayout(layoutTwo, animated: true)
         }
     }
 }

 extension CollectionView: UICollectionViewDelegateFlowLayout {
     func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
         if indexPath.row % 10 == 0{
             return CGSize(width: 70, height: 200)
         }
         return CGSize(width: 100, height: 100)
     }
 }

        
